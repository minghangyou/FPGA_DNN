#include "bn.h"

data_t beta[128]={
0.000418304, 0.00864165, -0.00792485, -0.000366899, -0.00779868, -0.0122215, 0.0193436, -0.00853976, -0.00930084, 0.0203213, -0.0187189, -0.0167061, -0.00104797, 0.0121353, -0.0355842, 0.00457339, -0.0186696, 0.00840839, -0.0072474, -0.0040996, -0.00125457, -0.0192099, -0.00680598, 0.00673443, 0.0117199, 0.0255286, 0.00894539, -0.0251387, -0.0105054, 0.023324, 0.0221412, 0.00125504, 0.0048046, -0.0217025, -0.00829506, 0.0288578, -0.0223561, 0.00443858, 0.0120575, -0.016875, 0.00571797, 0.00382861, -0.0244253, -0.00788765, 0.0109696, 0.0143503, 0.00522012, -0.0150024, 0.0357236, -0.0257252, 0.0157093, -0.00771401, 0.0196747, 0.0214562, -0.00149553, 0.00537787, 0.0127388, -0.01243, 0.00153042, 0.000553681, 0.00693801, -0.0141336, -0.019576, -0.0033683, 0.0155728, 0.0155405, 0.0009213, -0.00924268, 0.00564752, 0.0208948, 0.0140185, 0.0225315, 0.0162614, 0.0216876, 0.000595889, 0.0102473, 0.00573988, -0.00168141, -0.000456526, -0.0222992, 0.0101302, 0.00854341, -0.0110837, 0.0257807, -0.0200624, -0.0152001, -0.00108851, 0.0100458, -0.00751313, 0.0161341, 0.00236971, 0.00615821, -0.00401671, 0.0165233, -0.0132829, 0.00837332, 0.0107007, 0.0303119, -0.0248166, 0.00936925, -0.0216851, 0.00672322, 0.0164426, -0.0119812, -0.0225855, -0.0277152, -0.0046294, -0.0265862, -0.0137704, -0.0114542, -0.0245857, -0.0122294, -0.00853631, -0.00261641, -0.0147603, 0.0381969, 0.00890226, 0.013874, 0.0110062, -0.00877466, 0.00225024, -0.0275625, 0.0169007, -0.014407, -0.00273999, 5.80033e-05, -0.00682204, -0.0145936
};

data_t gamma[128]={
0.788273, 0.926078, 0.955814, 1.01148, 1.01774, 1.0469, 1.05325, 1.04946, 1.02877, 1.03497, 1.05811, 1.05302, 1.05837, 1.05682, 1.06032, 1.0363, 1.06255, 1.04789, 1.04404, 1.06223, 1.05207, 1.0533, 1.06417, 1.04982, 1.06754, 1.06135, 1.05126, 1.06844, 1.05002, 1.04026, 1.03884, 1.04723, 1.03777, 1.06896, 1.07148, 1.0746, 1.07681, 1.03898, 1.06315, 1.05942, 1.03098, 1.07966, 1.08437, 1.05082, 1.08168, 1.05955, 1.07231, 1.05602, 1.05174, 1.06974, 1.06674, 1.05293, 1.05696, 1.03697, 1.04715, 1.05235, 1.04508, 1.04245, 1.05115, 1.02993, 0.974108, 0.921147, 0.890872, 0.770287, 0.776322, 0.937111, 0.934644, 0.988184, 1.00466, 1.03691, 1.06354, 1.04793, 1.0402, 1.06966, 1.05046, 1.05246, 1.07087, 1.07066, 1.04171, 1.05827, 1.05061, 1.04446, 1.06486, 1.07335, 1.08549, 1.04565, 1.05377, 1.04154, 1.0707, 1.04445, 1.09224, 1.06118, 1.06005, 1.06553, 1.06351, 1.05994, 1.05993, 1.03929, 1.08289, 1.06236, 1.07359, 1.0646, 1.08091, 1.06282, 1.0648, 1.07169, 1.06068, 1.06555, 1.02682, 1.05911, 1.03771, 1.04187, 1.06764, 1.02947, 1.05688, 1.05085, 1.074, 1.05841, 1.04106, 1.06578, 1.06093, 1.03383, 1.026, 1.03042, 0.997699, 0.932567, 0.905265, 0.764096
};

data_t moving_mean[128]={
0.0170729, 0.00115877, -0.0152145, -0.00915024, -0.00283658, -0.0242482, 0.0209059, -0.0190169, -0.00208735, 0.0173483, -0.0178591, -0.00105924, -0.00307014, 0.0263649, -0.0316091, -0.00252091, -0.0139867, 0.0151018, -0.00273632, 0.0162894, -0.000869339, -0.0204263, 0.00105288, -0.00496881, 0.0136978, 0.0205063, 0.00855051, -0.0317628, -0.008859, 0.0281798, 0.0273405, 0.00835557, 0.0074393, -0.00620449, 0.00376284, 0.0348989, -0.0173178, -0.00111585, 0.0184282, -0.0393182, 0.0113649, 0.000432916, -0.0347147, -0.0130117, 0.00781185, 0.00403497, 0.0125539, -0.00893809, 0.0163954, -0.0237312, 0.00457403, -0.00846378, 0.00536836, 0.0126063, -0.00919835, -0.0138939, 0.0129658, -0.0231192, 0.0196092, -0.000165391, -0.00864216, -0.0157501, -0.0297946, 0.000373412, 0.00430911, 0.00320674, 0.00858708, -0.00343519, -0.0106672, 0.008532, 0.0183298, 0.00380873, 0.00743645, 0.0257323, -0.00665375, 0.00681588, -0.00365331, 0.00844476, 0.00195075, -0.000480358, 0.00632642, -0.0106446, -0.00923336, 0.0258903, -0.0287727, -0.0138644, -0.00473787, 0.00666824, -0.0103329, 0.013123, -9.94923e-05, -0.00580167, 0.000421894, 0.0304123, -0.00847656, 0.00276932, 0.00379867, 0.0249131, -0.0224662, 0.00280069, -0.00567428, -0.00882502, 0.002741, -0.00947814, -0.0293182, -0.0222585, -0.012137, -0.023263, -0.0242906, -0.00167876, -0.0177494, -0.00694264, -0.0177198, -0.00475006, -0.0105623, 0.0174334, -0.00283503, 0.0347262, 0.0138175, -0.0116007, -0.0101496, -0.0243686, 0.00267068, -0.0270352, 0.0130575, 0.0165691, 0.00688518, 0.0157403,
};
data_t moving_variance[128]={
1.00995, 0.981432, 0.990192, 1.02478, 0.98353, 1.02377, 1.05182, 1.00587, 1.01277, 1.01572, 1.03747, 1.01595, 1.02453, 1.02264, 1.01671, 1.05106, 1.04926, 1.01768, 0.995259, 0.990794, 0.981591, 1.03254, 1.01779, 1.00719, 0.990628, 0.966525, 0.996144, 0.962431, 0.999456, 0.994698, 0.991997, 0.987283, 0.95976, 1.00063, 1.00622, 0.998406, 1.02657, 0.981423, 0.991116, 0.991454, 0.964229, 1.0095, 1.03322, 0.979359, 1.04691, 0.991051, 1.03781, 1.03576, 1.00024, 1.0128, 1.01542, 0.979435, 1.01436, 1.01618, 0.994369, 1.00895, 1.00117, 0.996234, 1.02669, 1.003, 1.00651, 1.00202, 0.97172, 1.01078, 0.998584, 1.03408, 0.995397, 1.04825, 1.0089, 0.990111, 1.02735, 0.997486, 1.00665, 1.00343, 1.02723, 1.01805, 1.00618, 1.08209, 1.03698, 0.98455, 0.99842, 0.993628, 1.01203, 1.03006, 1.01367, 0.972565, 0.975605, 0.982845, 1.00699, 0.987141, 1.03764, 1.0058, 0.972496, 1.01632, 0.994066, 1.00788, 1.02683, 1.03671, 1.01467, 0.993453, 1.02268, 0.996994, 1.02828, 0.989435, 1.00782, 0.995759, 1.02304, 1.00794, 0.953188, 1.00974, 0.986321, 0.994827, 1.00328, 0.979734, 0.997352, 0.992956, 1.00237, 1.01651, 1.02045, 1.04314, 1.02955, 1.02757, 1.03226, 1.00431, 0.979916, 0.995717, 0.994859, 1.01469,
};
data_t input_data[128]={
		0.742367, 0.237309, 0.236724, -0.309606, -0.179315, 0.259207, -0.579443, -1.01334, -0.589449, -1.00588, -1.05443, 1.43633, -1.57146, 1.99214, -1.06776, -0.349495, 0.615971, -0.661309, -0.924636, -0.963133, 0.553216, 1.70849, -0.611959, -0.812463, -0.453944, -0.0532302, 0.869923, 1.01286, 1.74424, 1.03497, -1.11623, -0.539988, 0.313792, -0.665559, -0.944646, -0.872388, -0.993927, 0.955467, -0.472689, 0.821572, -0.335475, 0.629577, -0.18199, 1.33399, 2.06041, 1.81891, 0.690645, -0.0551413, 0.293235, 0.0380984, -0.620111, 1.26239, -1.79217, -1.80626, 1.93666, 0.946006, -0.270292, -0.270756, 0.145686, 0.717028, -0.265198, 1.63135, 1.17476, -1.36502, 1.67034, 1.27048, 0.968616, 0.158008, 0.0802053, 0.120965, 0.470381, 0.237072, 0.0899767, 0.429498, 0.298195, -0.963703, -0.496597, -1.0348, -2.07935, -1.45035, 0.239807, 0.850354, 0.316512, -0.322717, 0.231722, 0.909836, -0.147525, -2.11152, -1.54945, -1.961, -1.06385, -1.38944, -0.593083, -0.235253, -0.903043, -0.295363, 0.63897, 0.438569, 0.638104, -0.0302595, -0.48567, 0.720536, -0.507999, 1.11122, -0.387981, 1.90714, 1.19982, -1.84747, -1.10684, 0.295574, 0.834073, 0.322693, 0.549127, -1.38951, 0.525774, -0.554446, -0.469838, -0.504717, 1.65254, 1.77214, -0.238973, -0.285046, 0.000510733, -1.51684, 0.0949406, -0.578544, -0.607639, -1.02668,
};
data_t epsilon = 0.001;
