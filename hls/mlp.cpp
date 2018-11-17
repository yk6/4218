#include "mlp.h"

using namespace std;

void mlp(int input[], int output[]) {
 // #pragma HLS INTERFACE axis port = input
 // #pragma HLS INTERFACE axis port = output
 // #pragma HLS INTERFACE ap_ctrl_none port = return

	int test_data[NUM_OF_TEST_DATA][INPUT_NODE];

	int weightIH[INPUT_NODE+1][HIDDEN_NODE];
	int weightHO[INPUT_NODE+1][HIDDEN_NODE+1];

	int SumH[HIDDEN_NODE];

	int result[NUM_OF_TEST_DATA];

	int i = 0, j = 0, k = 0;

	//Receive data

	for (i = 0; i < NUM_OF_TEST_DATA; i++) {
		for (j = 0; j < INPUT_NODE; j++) {
			test_data[i][j] = output[k];
			k++;
		}
	}

	for (i = 0; i <= INPUT_NODE; i++) {
		for (j = 1; j <= HIDDEN_NODE; j++) {
			weightIH[i][j] = output[k];
			k++;
		}
	}

	for (i = 0; i <= HIDDEN_NODE; i++) {
		for (j = 1; j <= INPUT_NODE; j++) {
			weightHO[j][i] = output[k];
			k++;
		}
	}

	//	Compute data
	for (k = 1; k < NUM_OF_TEST_DATA; k++) {
		for (i = 0; i < HIDDEN_NODE; i++) {
			SumH[i] = weightIH[0][i];
			for (j = 1; j <= INPUT_NODE; j++) {
				SumH[i] += test_data[k][j-1] * weightIH[j][i];
			}
			SumH[i] = sigmoid(SumH[i]);
		}
		for (i = 0; i < NUM_OF_TEST_DATA; i++) {
			result[k] = weightHO[0][i];
			for (j = 1; j <= INPUT_NODE; j++) {
				result[k] += SumH[j-1] * weightHO[j][i];
			}
			result[k] = sigmoid(result[k]);
		}
	}

	//	Output data
	for (i = 0; i < NUM_OF_TEST_DATA; i++) {
		output[i] = result[i];
	}
}

int sigmoid(int data) {
	if (data > 1280) {
		return 256;
	} else if (data > 608) {
		return (data / 32 + 216);
	} else if (data > 256) {
		return (data / 8 + 160);
	} else if (data > -256) {
		return (data / 4 + 128);
	} else if (data > -608) {
		return (data / 8 + 96);
	} else if (data > -1280) {
		return (data / 32 + 40);
	} else {
		return 0;
	}
}
