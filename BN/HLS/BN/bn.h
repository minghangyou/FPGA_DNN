#ifndef BN_H
#define BN_H

#include <ap_fixed.h>
#include"ap_int.h"
#include <hls_math.h>
#include <hls_stream.h>
#include <ap_axi_sdata.h>



// 这里假设输入固定，输入长度为128
//void bn(ap_uint<64> *in,ap_uint<64>* beta,ap_uint<64>* gamma,ap_uint<64>* moving_mean,ap_uint<64> *moving_variance,ap_uint<64> *out);
//void bn(ap_uint<32> *in, ap_uint<32> *beta, ap_uint<32> *gamma, ap_uint<32> *moving_mean, ap_uint<32> *moving_variance, ap_uint<32> *out);
void bn(ap_uint<16> *in, ap_uint<16> *beta, ap_uint<16> *gamma, ap_uint<16> *moving_mean, ap_uint<16> *moving_variance, ap_uint<16> *out);

#endif
