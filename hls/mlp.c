#include "mlp.h"
#include "hls_math.h"

void mlp(uint32_t input, uint32_t output) {
#pragma HLS INTERFACE axis port = input
#pragma HLS INTERFACE axis port = output
#pragma HLS INTERFACE ap_ctrl_none port = return

	uint32_t temp = 0;

	float test_data[NUM_OF_TEST_DATA][INPUT_NODE] = 0.0;

	float weightIH[INPUT_NODE+1][HIDDEN_NODE] = 0.0;
	float weightHO[HIDDEN_NODE+1] = 0.0;

	float SumH[HIDDEN_NODE] = 0.0;

	float result[NUM_OF_TEST_DATA] = 0.0;

	uint8_t i = 0, j = 0, k = 0;

	// Receive data
	for (i = 0; i <= INPUT_NODE; i++) {
		for (j = 1; j <= HIDDEN_NODE; j++) {
			temp = input;
			weightIH[i][j] = (float)(decode(temp));
		}
	}

	for (i = 0; i <= HIDDEN_NODE; i++) {
		temp = input;
		weightHO[i] = (float)(decode(temp));
	}

	for (i = 0; i < NUM_OF_TEST_DATA; i++) {
		for (j = 0; j < INPUT_NODE; j++) {
			temp = input;
			test_data[i][j] = (float)(decode(temp));
		}
	}

	//	Compute data
	for (k = 1; k < NUM_OF_TEST_DATA; k++) {
		for (i = 0; i < HIDDEN_NODE; i++) {
			SumH[k][i] = weightIH[0][i];
			for (j = 1; j <= INPUT_NODE; j++) {
				SumH[k][i] += test_data[k][j-1] * weightIH[j][i];
			}
			SumH[k][i] = sigmoid(SumH[k][i]);
		}
		for (i = 0; i < NUM_OF_TEST_DATA; i++) {
			result[k] = weightHO[0][i];
			for (j = 1; j <= INPUT_NODE; j++) {
				result[k] += SumH[k][j-1] * weightHO[j][i];
			}
			result[k] = sigmoid(result[k])
		}
	}

	//	Output data
	for (i = 0; i < NUM_OF_TEST_DATA; i++) {
		output = encode((uint32_t)result[i]);
	}
}

float decode(uint32_t data) {
	return (float)(data / 1024);
}

uint32_t encode(float data) {
	return (uint32_t)(data * 1024);
}

float sigmoid(float data) {
	return (1.0 / (1.0 + exp(data)));
}
