# FPGA_DNN

在ZYNQ上部署神经网络，在FPGA上实现神经网络IP核，在ARM端实现控制。IP核利用Xilinx HLS工具进行开发，通过vivado综合成电路并上板，在SDK端编写测试程序用于验证算法。

## 环境

C++ 11

Xilinx Vivado设计套件

Linux/Windows

## 完成度记录

- **2023.3.2**：实现BN层的FPGA端IP并完成测试，BN层采用16bit量化，其中10位为小数位。ARM端通过将输入数据、权重传递给FPGA端的IP实现运算加速。