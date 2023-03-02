#include "bn.h"
#define SOLUTION6




#ifdef SOLUTION1

typedef ap_fixed<16, 6> fixed_sqrt;
typedef ap_fixed<16,6,AP_RND,AP_SAT> data_t;
const int params_size = 128;
const data_t epsilon = 0.001;
inline void sqrt_fixed(data_t& in, data_t& out) {
	fixed_sqrt x;
	x.range(15,0) = in.range(15,0);
	fixed_sqrt x_sqrt = hls::sqrt(x);
	out.range(15,0) = x_sqrt.range(15,0);
}
void bn(ap_uint<64> *in,ap_uint<64>* beta,ap_uint<64>* gamma,ap_uint<64>* moving_mean,ap_uint<64> *moving_variance,ap_uint<64> *out){
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL

#pragma HLS INTERFACE m_axi depth=99999 port=in offset=slave bundle=IN
#pragma HLS INTERFACE m_axi depth=99999 port=beta offset=slave bundle=BETA
#pragma HLS INTERFACE m_axi depth=99999 port=gamma offset=slave bundle=GAMMA
#pragma HLS INTERFACE m_axi depth=99999 port=moving_mean offset=slave bundle=M_M
#pragma HLS INTERFACE m_axi depth=99999 port=moving_variance offset=slave bundle=M_V
#pragma HLS INTERFACE m_axi depth=99999 port=out offset=slave bundle=OUT
	data_t in_m[4];
	data_t beta_m[4];
	data_t gamma_m[4];
	data_t moving_mean_m[4];
	data_t moving_variance_m[4];
	for (int i = 0; i < params_size/4; i++){

		ap_uint<64> in_pack=*(in+i);
		ap_uint<64> beta_pack = *(beta+i);
		ap_uint<64> gamma_pack = *(gamma+i);
		ap_uint<64> moving_mean_pack = *(moving_mean+i);
		ap_uint<64> moving_variance_pack = *(moving_variance+i);
		ap_uint<64> result;
		for(int k=0;k<4;k++){
#pragma HLS UNROLL
			in_m[k].range(15,0)=in_pack.range(k*16+15,k*16);
			beta_m[k].range(15,0)=beta_pack.range(k*16+15,k*16);
			gamma_m[k].range(15,0)=gamma_pack.range(k*16+15,k*16);
			moving_mean_m[k].range(15,0)=moving_mean_pack.range(k*16+15,k*16);
			moving_variance_m[k].range(15,0)=moving_variance_pack.range(k*16+15,k*16);
			data_t tmp_num = moving_variance_m[k] + epsilon;
			data_t sqrt_num;
			sqrt_fixed(tmp_num, sqrt_num);
			data_t tmp = (gamma_m[k]*(in_m[k]-moving_mean_m[k]) + beta_m[k])/sqrt_num;
			result.range(k*16+15,k*16) = tmp.range(15,0);

		}
		*(out+i) = result;
	}

}
#endif


#ifdef SOLUTION2

typedef ap_fixed<16, 6> fixed_sqrt;
typedef ap_fixed<16,6,AP_RND,AP_SAT> data_t;
const int params_size = 128;
const data_t epsilon = 0.001;
inline void sqrt_fixed(data_t& in, data_t& out) {
	fixed_sqrt x;
	x.range(15,0) = in.range(15,0);
	fixed_sqrt x_sqrt = hls::sqrt(x);
	out.range(15,0) = x_sqrt.range(15,0);
}
void bn(ap_uint<64> *in, ap_uint<64> *beta, ap_uint<64> *gamma, ap_uint<64> *moving_mean, ap_uint<64> *moving_variance, ap_uint<64> *out) {
    #pragma HLS INTERFACE s_axilite port=return bundle=CTRL
    #pragma HLS INTERFACE m_axi depth=99999 port=in offset=slave bundle=IN
    #pragma HLS INTERFACE m_axi depth=99999 port=beta offset=slave bundle=BETA
    #pragma HLS INTERFACE m_axi depth=99999 port=gamma offset=slave bundle=GAMMA
    #pragma HLS INTERFACE m_axi depth=99999 port=moving_mean offset=slave bundle=M_M
    #pragma HLS INTERFACE m_axi depth=99999 port=moving_variance offset=slave bundle=M_V
    #pragma HLS INTERFACE m_axi depth=99999 port=out offset=slave bundle=OUT

    data_t in_m[4], beta_m[4], gamma_m[4], moving_mean_m[4], moving_variance_m[4], result[4];
    #pragma HLS ARRAY_PARTITION variable=in_m complete dim=1
    #pragma HLS ARRAY_PARTITION variable=beta_m complete dim=1
    #pragma HLS ARRAY_PARTITION variable=gamma_m complete dim=1
    #pragma HLS ARRAY_PARTITION variable=moving_mean_m complete dim=1
    #pragma HLS ARRAY_PARTITION variable=moving_variance_m complete dim=1
    #pragma HLS ARRAY_PARTITION variable=result complete dim=1

    for (int i = 0; i < params_size / 4; i += 4) {
        ap_uint<64> in_pack[4], beta_pack[4], gamma_pack[4], moving_mean_pack[4], moving_variance_pack[4];
        #pragma HLS PIPELINE
        for (int j = 0; j < 4; j++) {
            in_pack[j] = *(in + i + j);
            beta_pack[j] = *(beta + i + j);
            gamma_pack[j] = *(gamma + i + j);
            moving_mean_pack[j] = *(moving_mean + i + j);
            moving_variance_pack[j] = *(moving_variance + i + j);
            in_m[j].range(15, 0) = in_pack[j].range(15, 0);
            beta_m[j].range(15, 0) = beta_pack[j].range(15, 0);
            gamma_m[j].range(15, 0) = gamma_pack[j].range(15, 0);
            moving_mean_m[j].range(15, 0) = moving_mean_pack[j].range(15, 0);
            moving_variance_m[j].range(15, 0) = moving_variance_pack[j].range(15, 0);
        }
        for (int j = 0; j < 4; j++) {
			data_t x_norm, x_centered;
			data_t tmp_num = moving_variance_m[j] + epsilon;
			x_centered = in_m[j] - moving_mean_m[j];
			fixed_sqrt x = tmp_num;
			fixed_sqrt x_sqrt = hls::sqrt(x);
			x_norm = x_sqrt;
			result[j] = gamma_m[j] * x_norm * x_centered + beta_m[j];
        }
        ap_uint<64> result_pack[4];
        #pragma HLS PIPELINE
        for (int j = 0; j < 4; j++) {
			result_pack[j].range(15, 0) = result[j].range(15, 0);
			*(out + i + j) = result_pack[j];
        }
    }
}

#endif
#ifdef SOLUTION3
typedef ap_fixed<16, 6> fixed_sqrt;
typedef ap_fixed<16,6,AP_RND,AP_SAT> data_t;
const int params_size = 128;
const data_t epsilon = 0.001;

void bn(ap_uint<32> *in, ap_uint<32> *beta, ap_uint<32> *gamma, ap_uint<32> *moving_mean, ap_uint<32> *moving_variance, ap_uint<32> *out) {
    #pragma HLS INTERFACE s_axilite port=return bundle=CTRL
    #pragma HLS INTERFACE m_axi depth=99999 port=in offset=slave bundle=IN
    #pragma HLS INTERFACE m_axi depth=99999 port=beta offset=slave bundle=BETA
    #pragma HLS INTERFACE m_axi depth=99999 port=gamma offset=slave bundle=GAMMA
    #pragma HLS INTERFACE m_axi depth=99999 port=moving_mean offset=slave bundle=M_M
    #pragma HLS INTERFACE m_axi depth=99999 port=moving_variance offset=slave bundle=M_V
    #pragma HLS INTERFACE m_axi depth=99999 port=out offset=slave bundle=OUT

    data_t in_m[4], beta_m[4], gamma_m[4], moving_mean_m[4], moving_variance_m[4], result[4];
    #pragma HLS ARRAY_PARTITION variable=in_m complete dim=1
    #pragma HLS ARRAY_PARTITION variable=beta_m complete dim=1
    #pragma HLS ARRAY_PARTITION variable=gamma_m complete dim=1
    #pragma HLS ARRAY_PARTITION variable=moving_mean_m complete dim=1
    #pragma HLS ARRAY_PARTITION variable=moving_variance_m complete dim=1
    #pragma HLS ARRAY_PARTITION variable=result complete dim=1

    for (int i = 0; i < params_size / 2; i += 2) {
        ap_uint<32> in_pack[2], beta_pack[2], gamma_pack[2], moving_mean_pack[2], moving_variance_pack[2];
        #pragma HLS PIPELINE II
        for (int j = 0; j < 2; j++) {
            in_pack[j] = *(in + i + j);
            beta_pack[j] = *(beta + i + j);
            gamma_pack[j] = *(gamma + i + j);
            moving_mean_pack[j] = *(moving_mean + i + j);
            moving_variance_pack[j] = *(moving_variance + i + j);
            in_m[j].range(15, 0) = in_pack[j].range(15, 0);
            beta_m[j].range(15, 0) = beta_pack[j].range(15, 0);
            gamma_m[j].range(15, 0) = gamma_pack[j].range(15, 0);
            moving_mean_m[j].range(15, 0) = moving_mean_pack[j].range(15, 0);
            moving_variance_m[j].range(15, 0) = moving_variance_pack[j].range(15, 0);
        }
        for (int j = 0; j < 2; j++) {
			data_t x_norm, x_centered;
			data_t tmp_num = moving_variance_m[j] + epsilon;
			x_centered = in_m[j] - moving_mean_m[j];
			fixed_sqrt x = tmp_num;
			fixed_sqrt x_sqrt = hls::sqrt(x);
			x_norm = x_sqrt;
			result[j] = gamma_m[j] * x_norm * x_centered + beta_m[j];
        }
        ap_uint<32> result_pack[2];
        #pragma HLS PIPELINE II=4
        for (int j = 0; j < 2; j++) {
			result_pack[j].range(15, 0) = result[j].range(15, 0);
			*(out + i + j) = result_pack[j];
		}
	}
}

#endif
#ifdef SOLUTION4
typedef ap_fixed<16, 6> fixed_sqrt;
typedef ap_fixed<16,6,AP_RND,AP_SAT> data_t;
const int params_size = 128;
const data_t epsilon = 0.001;
inline void sqrt_fixed(data_t& in, data_t& out) {
	fixed_sqrt x;
	x.range(15,0) = in.range(15,0);
	fixed_sqrt x_sqrt = hls::sqrt(x);
	out.range(15,0) = x_sqrt.range(15,0);
}
void bn(ap_uint<64> *in,ap_uint<64>* beta,ap_uint<64>* gamma,ap_uint<64>* moving_mean,ap_uint<64> *moving_variance,ap_uint<64> *out){
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL

#pragma HLS INTERFACE m_axi depth=99999 port=in offset=slave bundle=IN
#pragma HLS INTERFACE m_axi depth=99999 port=beta offset=slave bundle=BETA
#pragma HLS INTERFACE m_axi depth=99999 port=gamma offset=slave bundle=GAMMA
#pragma HLS INTERFACE m_axi depth=99999 port=moving_mean offset=slave bundle=M_M
#pragma HLS INTERFACE m_axi depth=99999 port=moving_variance offset=slave bundle=M_V
#pragma HLS INTERFACE m_axi depth=99999 port=out offset=slave bundle=OUT
	data_t in_m[4];
	data_t beta_m[4];
	data_t gamma_m[4];
	data_t moving_mean_m[4];
	data_t moving_variance_m[4];
	for (int i = 0; i < params_size/4; i++){
		ap_uint<64> in_pack=*(in+i);
		ap_uint<64> beta_pack = *(beta+i);
		ap_uint<64> gamma_pack = *(gamma+i);
		ap_uint<64> moving_mean_pack = *(moving_mean+i);
		ap_uint<64> moving_variance_pack = *(moving_variance+i);
		ap_uint<64> result;
		for(int k=0;k<4;k++){
			int index1 = k*16+15;
			int index2 = k*16;
			in_m[k].range(15,0)=in_pack.range(index1,index2);
			beta_m[k].range(15,0)=beta_pack.range(index1,index2);
			gamma_m[k].range(15,0)=gamma_pack.range(index1,index2);
			moving_mean_m[k].range(15,0)=moving_mean_pack.range(index1,index2);
			moving_variance_m[k].range(15,0)=moving_variance_pack.range(index1,index2);
			data_t tmp_num = moving_variance_m[k] + epsilon;
			data_t sqrt_num;
			sqrt_fixed(tmp_num, sqrt_num);
			data_t tmp = (gamma_m[k]*(in_m[k]-moving_mean_m[k]) + beta_m[k])/sqrt_num;
			result.range(k*16+15,k*16) = tmp.range(15,0);

		}
		*(out+i) = result;
	}

}

#endif


#ifdef SOLUTION5
typedef ap_fixed<16, 6> fixed_sqrt;
typedef ap_fixed<16,6,AP_RND,AP_SAT> data_t;
const int params_size = 128;
const data_t epsilon = 0.001;
inline void sqrt_fixed(data_t& in, data_t& out) {
	fixed_sqrt x;
	x.range(15,0) = in.range(15,0);
	fixed_sqrt x_sqrt = hls::sqrt(x);
	out.range(15,0) = x_sqrt.range(15,0);
}
void bn(ap_uint<32> *in,ap_uint<32>* beta,ap_uint<32>* gamma,ap_uint<32>* moving_mean,ap_uint<32> *moving_variance,ap_uint<32> *out){
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL

#pragma HLS INTERFACE m_axi depth=99999 port=in offset=slave bundle=IN
#pragma HLS INTERFACE m_axi depth=99999 port=beta offset=slave bundle=BETA
#pragma HLS INTERFACE m_axi depth=99999 port=gamma offset=slave bundle=GAMMA
#pragma HLS INTERFACE m_axi depth=99999 port=moving_mean offset=slave bundle=M_M
#pragma HLS INTERFACE m_axi depth=99999 port=moving_variance offset=slave bundle=M_V
#pragma HLS INTERFACE m_axi depth=99999 port=out offset=slave bundle=OUT

    data_t in_m[2], beta_m[2], gamma_m[2], moving_mean_m[2], moving_variance_m[2], sqrt_num[2], norm[2];
    #pragma HLS ARRAY_PARTITION variable=in_m complete dim=1
    #pragma HLS ARRAY_PARTITION variable=beta_m complete dim=1
    #pragma HLS ARRAY_PARTITION variable=gamma_m complete dim=1
    #pragma HLS ARRAY_PARTITION variable=moving_mean_m complete dim=1
    #pragma HLS ARRAY_PARTITION variable=moving_variance_m complete dim=1
    #pragma HLS ARRAY_PARTITION variable=sqrt_num complete dim=1
    #pragma HLS ARRAY_PARTITION variable=norm complete dim=1

    data_t tmp_num[2], tmp[2];
    #pragma HLS ARRAY_PARTITION variable=tmp_num complete dim=1
    #pragma HLS ARRAY_PARTITION variable=tmp complete dim=1
    ap_uint<64> result = 0;

	for (int i = 0; i < params_size/2; i++){
#pragma HLS PIPELINE II=1
		ap_uint<64> in_pack=*(in+i);
		ap_uint<64> beta_pack = *(beta+i);
		ap_uint<64> gamma_pack = *(gamma+i);
		ap_uint<64> moving_mean_pack = *(moving_mean+i);
		ap_uint<64> moving_variance_pack = *(moving_variance+i);


		for(int k=0;k<2;k++){
			int index1 = k*16+15;
			int index2 = k*16;
			in_m[k].range(15,0)=in_pack.range(index1,index2);
			beta_m[k].range(15,0)=beta_pack.range(index1,index2);
			gamma_m[k].range(15,0)=gamma_pack.range(index1,index2);
			moving_mean_m[k].range(15,0)=moving_mean_pack.range(index1,index2);
			moving_variance_m[k].range(15,0)=moving_variance_pack.range(index1,index2);

			tmp_num[k] = moving_variance_m[k] + epsilon;
			sqrt_fixed(tmp_num[k], sqrt_num[k]);
			norm[k] = (in_m[k]-moving_mean_m[k])*gamma_m[k];
			tmp[k] = (norm[k] + beta_m[k])/sqrt_num[k];
			result.range(k*16+15,k*16) = tmp[k].range(15,0);
		}
		*(out+i) = result;
	}

}
#endif

#ifdef SOLUTION6
typedef ap_fixed<16, 6> fixed_sqrt;
typedef ap_fixed<16,6,AP_RND,AP_SAT> data_t;
const int params_size = 128;
const data_t epsilon = 0.001;
inline void sqrt_fixed(data_t& in, data_t& out) {
	fixed_sqrt x;
	x.range(15,0) = in.range(15,0);
	fixed_sqrt x_sqrt = hls::sqrt(x);
	out.range(15,0) = x_sqrt.range(15,0);
}
void bn(ap_uint<16> *in,ap_uint<16>* beta,ap_uint<16>* gamma,ap_uint<16>* moving_mean,ap_uint<16> *moving_variance,ap_uint<16> *out){
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL

#pragma HLS INTERFACE m_axi depth=99999 port=in offset=slave bundle=IN
#pragma HLS INTERFACE m_axi depth=99999 port=beta offset=slave bundle=BETA
#pragma HLS INTERFACE m_axi depth=99999 port=gamma offset=slave bundle=GAMMA
#pragma HLS INTERFACE m_axi depth=99999 port=moving_mean offset=slave bundle=M_M
#pragma HLS INTERFACE m_axi depth=99999 port=moving_variance offset=slave bundle=M_V
#pragma HLS INTERFACE m_axi depth=99999 port=out offset=slave bundle=OUT

    data_t in_m, beta_m, gamma_m, moving_mean_m, moving_variance_m, sqrt_num, norm;


    data_t tmp_num, tmp;

    ap_uint<16> result = 0;

	for (int i = 0; i < params_size; i++){
#pragma HLS PIPELINE II=1
		in_m.range(15,0)=(*(in+i)).range(15,0);
		beta_m.range(15,0)=(*(beta+i)).range(15,0);
		gamma_m.range(15,0)=(*(gamma+i)).range(15,0);
		moving_mean_m.range(15,0)=(*(moving_mean+i)).range(15,0);
		moving_variance_m.range(15,0)=(*(moving_variance+i)).range(15,0);
		tmp_num = moving_variance_m + epsilon;
		sqrt_fixed(tmp_num, sqrt_num);
		norm = (in_m-moving_mean_m)*gamma_m;
		tmp = (norm + beta_m)/sqrt_num;
		(*(out+i)).range(15,0) = tmp.range(15,0);
	}

}
#endif
