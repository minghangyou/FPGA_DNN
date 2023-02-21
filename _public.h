#ifndef _PUBLIC_H
#define _PUBLIC_H
#include <stdint.h>
#include <hdf5.h>
#include <H5Cpp.h>
#include <iostream>
#include <memory>
#include <vector>
#include <string>
#include <unordered_map>
#include <queue>
#include <fstream>
#include <sstream>
#include <assert.h>
using namespace H5;
using namespace std;

#ifdef _DEBUG
#pragma comment(lib, "hdf5_D.lib")
#pragma comment(lib, "hdf5_cpp_D.lib")
#else
#pragma comment(lib, "hdf5.lib")
#pragma comment(lib, "hdf5_cpp.lib")
#endif


typedef float d_type;
typedef int   d_size;

typedef float data_t; // 数据类型
typedef float param_t; // 参数类型











/////////////////////////////////////////////////////////////////////////////
/*
	功能：将字符串转变为数组
*/
template <typename T>
T String2Num(const string& str)
{
	istringstream iss(str);
	T num;
	iss >> num;
	return num;
}


/*
	功能：从txt文件中读取数据
*/
template <typename T>
void read_data_from_file(string path, vector<T>& data) {
	ifstream infile;
	infile.open(path, ifstream::in);
	string line;
	if (!infile.is_open()) {
		cout << "Can not find" << path << endl;
		system("pause");
	}
	while (getline(infile, line)) {
		stringstream ss(line);
		string tmp;
		while (getline(ss, tmp, ' ')) {
			if (tmp != " ") {
				T data_tmp = String2Num<T>(tmp);
				data.push_back(data_tmp);
				
			}

		}
	}
}


/*
	功能：检查两组数据结果是否一致
*/
int check_error_num(vector<int> a, vector<int> b);

/*
	功能：获取指定层的权重参数
	参数：
		filename			读取的hdf5文件
		layers_name			指定的layer名称
		model_data			读取的layer权重参数
*/
bool GetLayerWeights(const string& filename, vector<string>& layers_name, unordered_map<string, vector<float>>& model_data);



/*
	功能：从一个容器中拷贝部分数据到另外一个容器
*/
void vec_copy(const vector<data_t>& data1, const vector<data_t>::iterator begin, size_t n, vector<data_t>& data2);






/////////////////////////////////////////////////////////////////////////////
/*
	layer类的封装
	作为后续所有layer的基类
	包含的共有的基类对象：
		in_data			层输入数据
		in_weights		输入权重
		out_data		层输出数据
		layer_name		层名称
*/
class layer {
public:
	layer() {};
	layer(const vector<d_type>& in_data_, const vector<d_type>& in_weights_, const string& layer_name_) : in_data(in_data_), in_weights(in_weights_), layer_name(layer_name_) {};
	virtual ~layer() = default;
	virtual void forward_run() = 0;  //纯虚函数，后续都必须调用这个类，表示前向传播过程
	virtual void ShowWeights() = 0;

protected:
	vector<d_type> in_data;
	vector<d_type> in_weights;
	vector<d_type> out_data;
	string layer_name;

};

/*
	BN层的封装
	包括前向传播函数、初始化权重参数、权重展示函数
*/

class batch_normalization : public layer {
public:	
	void Init_BnWeights();
	batch_normalization(const vector<d_type>& in_data_, const vector<d_type>& in_weights_, const string& layer_name_) :layer(in_data_, in_weights_, layer_name_) {
		Init_BnWeights();
		epsilon_ = 0.001;
	};

	void forward_run();
	void ShowWeights();

private:
	vector<d_type> beta;
	vector<d_type> gamma;
	vector<d_type> moving_mean;
	vector<d_type> moving_variance;
	d_type epsilon_ = 0.001;
};

/////////////////////////////////////////////////////////////////////////////







/////////////////////////////////////////////////////////////////////////////
/*
	定义BN层的类
*/
struct bn_params {
	param_t epsilon = 0.001;
	vector<param_t>	beta;
	vector<param_t>	gamma;
	vector<param_t>	moving_mean;
	vector<param_t> moving_variance;
} ;
class BN {
public:
	explicit BN(): params(make_shared<bn_params>()) {};

	template<class F, std::enable_if_t<std::is_same_v<std::decay_t<F>, vector<param_t>>, int> = 0>
	void init(F&& beta, F&& gamma, F&& moving_mean, F&& moving_variance) {
		params->beta = std::forward<F>(beta);
		params->gamma = std::forward<F>(gamma);
		params->moving_mean = std::forward<F>(moving_mean);
		params->moving_variance = std::forward<F>(moving_variance);
	}


	void bn_forward(const vector<data_t>& input_data, vector<data_t>& output_data);
	void ShowWeights();			// 展示权重参数，一般用于debug检查
private:
	std::shared_ptr<bn_params> params;

};




#endif