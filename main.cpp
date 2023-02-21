//#include "_public.h"
#include "data.hpp"
typedef batch_normalization bn;


const size_t OneSymbol_size = 64;


int main() {
	
	// 从h5文件中读取模型的参数
	unordered_map<string, vector<param_t>> model_params;
	vector<string> layers_name = { "batch_normalization","batch_normalization_1","batch_normalization_2","batch_normalization_3","batch_normalization_4","batch_normalization_5","batch_normalization_6"};
	GetLayerWeights("./model/BPSK_iciv1_snr12_model1.h5", layers_name, model_params);
	
	// 读取信号
	string input_data_path = "./input_data/input_data.txt";
	vector<data_t> input_data;
	read_data_from_file<data_t>(input_data_path, input_data);
	
	// 读入信道
	string input_channelA_path = "./input_data/input_channelA.txt";
	vector<data_t> input_channelA;
	read_data_from_file<data_t>(input_channelA_path, input_channelA);

	string input_channelB_path = "./input_data/input_channelB.txt";
	vector<data_t> input_channelB;
	read_data_from_file<data_t>(input_channelB_path, input_channelB);




	/**********************************************  实例化模型的各层，预载各层的参数  *****************************************************************/

	/**********************************************  实例化BN0  *****************************************************************/
	//获取bn层的权重参数
	vector<param_t> bn0_weights(std::move(model_params["batch_normalization"]));
	assert(bn0_weights.size() % 4 == 0);
	auto n0_params = bn0_weights.size() / 4;

	// 使用emplace构造对象，减少一次拷贝
	vector<param_t> beta; beta.reserve(n0_params);
	vector<param_t> gamma; gamma.reserve(n0_params);
	vector<param_t> moving_mean; moving_mean.reserve(n0_params);
	vector<param_t> moving_variance; moving_variance.reserve(n0_params);

	for (size_t i = 0; i < n0_params; i++) {
		beta.emplace_back(std::forward<param_t>(bn0_weights[i]));
		gamma.emplace_back(std::forward<param_t>(bn0_weights[i + n0_params]));
		moving_mean.emplace_back(std::forward<param_t>(bn0_weights[i + n0_params * 2]));
		moving_variance.emplace_back(std::forward<param_t>(bn0_weights[i + n0_params * 3]));
	}

	// 实例化对象
	unique_ptr<BN> bn0(new BN());
	bn0->init(std::move(beta), std::move(gamma), std::move(moving_mean), std::move(moving_variance));



	/**********************************************  实例化BN1  *****************************************************************/
	//获取bn层的权重参数
	vector<param_t> bn1_weights(std::move(model_params["batch_normalization_1"]));
	assert(bn1_weights.size() % 4 == 0);
	auto n1_params = bn1_weights.size() / 4;


	beta.clear();
	gamma.clear();
	moving_mean.clear();
	moving_variance.clear();

	// 前文使用了右值引用进行了传递，因此这里可以接着赋值
	for (size_t i = 0; i < n1_params; i++) {
		beta.emplace_back(std::forward<param_t>(bn1_weights[i]));
		gamma.emplace_back(std::forward<param_t>(bn1_weights[i + n1_params]));
		moving_mean.emplace_back(std::forward<param_t>(bn1_weights[i + n1_params * 2]));
		moving_variance.emplace_back(std::forward<param_t>(bn1_weights[i + n1_params * 3]));
	}

	// 实例化对象
	unique_ptr<BN> bn1(new BN());
	bn1->init(std::move(beta), std::move(gamma), std::move(moving_mean), std::move(moving_variance));



	/**********************************************  实例化BN2  *****************************************************************/
	//获取bn层的权重参数
	vector<param_t> bn2_weights(std::move(model_params["batch_normalization_2"]));
	assert(bn2_weights.size() % 4 == 0);
	auto n2_params = bn2_weights.size() / 4;

	beta.clear();
	gamma.clear();
	moving_mean.clear();
	moving_variance.clear();

	// 前文使用了右值引用进行了传递，因此这里可以接着赋值
	for (size_t i = 0; i < n2_params; i++) {
		beta.emplace_back(std::forward<param_t>(bn2_weights[i]));
		gamma.emplace_back(std::forward<param_t>(bn2_weights[i + n2_params]));
		moving_mean.emplace_back(std::forward<param_t>(bn2_weights[i + n2_params * 2]));
		moving_variance.emplace_back(std::forward<param_t>(bn2_weights[i + n2_params * 3]));
	}

	// 实例化对象
	unique_ptr<BN> bn2(new BN());
	bn2->init(std::move(beta), std::move(gamma), std::move(moving_mean), std::move(moving_variance));
















	/**********************************************  前向推理  *****************************************************************/
	
	size_t SymbolNum = input_data.size() / (OneSymbol_size * 2);
	vector<data_t> OneSymbol_input_data; OneSymbol_input_data.resize(OneSymbol_size * 2);					// 存储单个符号的叠加信号数据
	vector<data_t> OneSymbol_input_channelA; OneSymbol_input_channelA.resize(OneSymbol_size * 2);			// 存储单个符号对应的信道A
	vector<data_t> OneSymbol_input_channelB; OneSymbol_input_channelB.resize(OneSymbol_size * 2);			// 处理单个符号对应的信道B

	

	for (size_t i = 0; i < SymbolNum; i++) {
		// 每次取出一个符号（包含64个子载波，由于数据是复数，将实部和虚部进行拆分后就变为128个数据）
		cout << i << endl;
		vec_copy(input_data, input_data.begin() + i * (OneSymbol_size * 2), (OneSymbol_size * 2), OneSymbol_input_data);
		vec_copy(input_channelA, input_channelA.begin() + i * (OneSymbol_size * 2), (OneSymbol_size * 2), OneSymbol_input_channelA);
		vec_copy(input_channelB, input_channelB.begin() + i * (OneSymbol_size * 2), (OneSymbol_size * 2), OneSymbol_input_channelB);


		// BN0层的前向推理
		vector<data_t> bn0_output;
		bn0->bn_forward(OneSymbol_input_data, bn0_output);

		// BN1层的前向推理
		vector<data_t> bn1_output;
		bn1->bn_forward(OneSymbol_input_channelA, bn1_output);

		// BN2层的前向推理
		vector<data_t> bn2_output;
		bn2->bn_forward(OneSymbol_input_channelB, bn2_output);


	}


	return 0;

	

}


/*
int main() {



	// 用只读方式打开文件, 用完后记得要调用 file.close() 关闭释放资源
	H5File file("pool_model1_10carrier_tf2_channel1.h5", H5F_ACC_RDONLY);
	// 打开 Root Grout, 用完后记得要调用 rg.close() 关闭释放资源
	Group rg(file.getObjId("/batch_normalization/batch_normalization"));
	// 取得 Group 中 Object 的数量
	const hsize_t objs = rg.getNumObjs();
	for (hsize_t i = 0; i < objs; i++)
	{
		// 用 Index 为参数获取 Object 名字
		const H5std_string name = rg.getObjnameByIdx(i);
		cout << "Obj_name_" << i + 1 << ": " << name.c_str() << endl;
	}

	//读取model各层的权重
	// 用完之后也要调用 dset.close() 关闭
	DataSet dset(rg.getObjId("/conv1d/conv1d/kernel:0")); // 绝对路径
	//DataSet dset(rg.getObjId("/conv1d/conv1d/bias:0")); // 绝对路径
	// 如果使用相对路径的话, 变成
	// DataSet dset(rg.getObjId("conv_1/conv_1/kernel:0"));
	// 还可以这样
	// DataSet dset = file.openDataSet("/conv_1/conv_1/kernel:0");
	DataSpace dsp = dset.getSpace();
	// rank 描述的是有几个维, 就是有 rank 个描述维度大小的变量
	const int rank = dsp.getSimpleExtentNdims();
	// 创建一个数组存储每一个维度的大小
	hsize_t* dims = new hsize_t[rank];
	//shared_ptr<hsize_t> dims(new hsize_t(rank));
	// 这里的 ndims 和 rank 是一样的
	const int ndims = dsp.getSimpleExtentDims(dims);

	// 输出各维度的大小
	for (int i = 0; i < rank; i++)
	{
		cout << "Dimension_" << i + 1 << " = " << dims[i] << endl;
	}
	delete[]dims;
	dims = nullptr;

	// Dataset中数据的数据类型
	DataType dt = dset.getDataType();
	const H5T_class_t t = dt.getClass();
	cout << "kernel:0 type is " << t << endl;

	// 数据在内存中的字节数除以数据类型得到 buf 的大小
	const hsize_t data_size = dset.getInMemDataSize() / sizeof(float);

	float* buf = new float[data_size];

	// 读出数据到 buf 中
	dset.read(buf, dt);

	for (int i = 0; i < data_size; i++)
	{
		cout << buf[i] << endl;
	}

	delete[]buf;
	buf = nullptr;



	dt.close();
	dsp.close();
	dset.close();
	rg.close();
	file.close();
	cout << endl << endl;
	system("pause");

	return 0;
}*/



/*

//为了方便函数的调用，对这个函数进行了封装
bool GetHdfDataset(const string& filename, vector<string>& layers_name, unordered_map<string, vector<float>>& model_data) {
	// 用只读方式打开文件, 用完后记得要调用 file.close() 关闭释放资源
	H5File file("pool_model1_10carrier_tf2_channel1.h5", H5F_ACC_RDONLY);

	//遍历所有的layer
	for (int i = 0; i < layers_name.size(); i++) {
		//拼接指定的object路径
		string group_string = "";
		group_string = "/" + layers_name[i];

		//判断当前为group还是dataset
		hid_t pre_id = file.getObjId(group_string);
		hid_t cur_id = file.getObjId(group_string);
		H5I_type_t obj_type = H5Iget_type(pre_id);
		// 打开Group获取其下的datasets
		Group rg(file.getObjId(group_string));
		// 取得Group下obj的数量
		const hsize_t objs = rg.getNumObjs();


		//H5I_type_t obj_type = H5Iget_type(file.getObjId(group_string));
		//H5I_GROUP
		string group_tmp = group_string + "/beta:0";
		//DataSet dataset = file.openDataSet(group_tmp);
		//hid_t dataset_id = H5Dopen2(file.getId(), group_string.c_str(),H5P_DEFAULT);
		// If the dataset's opening failed, throw an exception
		//if (dataset_id < 0) {}
		H5I_type_t obj_type2 = H5Iget_type(file.getObjId(group_tmp));
		if (obj_type2 == H5I_DATASET) cout << "11" << endl;
		Group rg2(file.getObjId(group_tmp));
		// 取得Group下datasets的数量
		//const hsize_t objs2 = rg2.getNumObjs();
		//const hsize_t objs2 = rg2.getNumObjs();

		//这里考虑到不同的layer其包含的参数名称也不一样，例如bn层有beta、gamma、moving_mean、moving_variance这些参数，dense含有bias、kernel这些参数
		//因此采用unordered_map<string, vector<float>>的形式，不管是什么层，统一存放在vector<float>中，后续根据层的名称再对参数进行划分取用
		for (hsize_t j = 0; j < objs; j++) {
			// 获取每一个datasets的名字
			const H5std_string name = rg.getObjnameByIdx(j);
			cout << "Obj_name_" << j + 1 << ": " << name.c_str() << endl;
			//打开对应的dataset并获取权重
			string dataset_name = group_string + "/" + name;
			DataSet dset = file.openDataSet(dataset_name);
			// Dataset中数据的数据类型
			DataType dt = dset.getDataType();
			const H5T_class_t t = dt.getClass();
			//判定读取的数据类型为float
			if (t == H5T_FLOAT) {
				// 数据在内存中的字节数除以数据类型得到 buf 的大小
				const hsize_t data_size = dset.getInMemDataSize() / sizeof(float);
				float* buf = new float[data_size];
				// 读出数据到 buf 中
				dset.read(buf, dt);
				for (int k = 0; k < data_size; k++)
				{
					cout << buf[k] << endl;
					model_data[layers_name[i]].push_back(buf[k]);
				}
				delete[]buf;
				buf = nullptr;
			}
			dt.close();
			dset.close();
			cout << endl << endl;
		}
		rg.close();
	}
	file.close();
	return true;
}
*/