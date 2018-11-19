#include "mlp.h"

void mlp(int input[], int output[]) {
	 #pragma HLS INTERFACE axis port = input
	 #pragma HLS INTERFACE axis port = output
	 #pragma HLS INTERFACE ap_ctrl_none port = return

	int test_data[NUM_OF_TEST_DATA + 1][INPUT_NODE + 1];

	int weightIH[INPUT_NODE + 1][HIDDEN_NODE + 1];
	int weightHO[INPUT_NODE + 1];

	int SumH[HIDDEN_NODE + 1];

	int result[NUM_OF_TEST_DATA];

	int i = 0, j = 0, k = 0;

	//Receive data
	mlp_label12:for (i = 1; i <= NUM_OF_TEST_DATA; i++) {
		test_data[i][1] = input[k];
		test_data[i][2] = input[k+1];
		test_data[i][3] = input[k+2];
		test_data[i][4] = input[k+3];
		test_data[i][5] = input[k+4];
		test_data[i][6] = input[k+5];
		test_data[i][7] = input[k+6];
		test_data[i][8] = input[k+7];
		test_data[i][9] = input[k+8];
		test_data[i][10] = input[k+9];
		test_data[i][11] = input[k+10];
		test_data[i][12] = input[k+11];
		test_data[i][13] = input[k+12];
		k = k + 13;
	}


	mlp_label13:for (j = 1; j <= HIDDEN_NODE; j++) {
		weightIH[0][j] = input[k] << 8;
		k++;
	}

	mlp_label14:for (j = 1; j <= HIDDEN_NODE; j++) {
		mlp_label15:for (i = 1; i <= INPUT_NODE; i++) {
			weightIH[i][j] = input[k];
			k++;
		}
	}

	weightHO[0] = input[k] << 8;
	k++;
	mlp_label16:for (i = 1; i <= HIDDEN_NODE; i++) {
		weightHO[i] = input[k];
		k++;
	}

	// Compute data
	mlp_label18:for (k = 1; k <= NUM_OF_TEST_DATA; k++) {
		mlp_label19:for (i = 1; i <= HIDDEN_NODE; i++) {
			SumH[i] = weightIH[0][i];
			mlp_label20:for (j = 1; j <= INPUT_NODE; j++) {
				SumH[i] += test_data[k][j] * weightIH[j][i];
			}
			SumH[i] = sigmoid(SumH[i] >> 8);
		}

			result[k] = weightHO[0];
			mlp_label21:for (j = 1; j <= HIDDEN_NODE; j++) {
				result[k] += SumH[j] * weightHO[j];
			}
			result[k] = sigmoid(result[k] >> 8);
	}


	// Output data
	mlp_label22:for (i = 1; i <= NUM_OF_TEST_DATA; i++) {
		output[i-1] = result[i];
	}

}

int sigmoid(int data) {
	if (data > 1280) {
		return 256;
	}
	else if (data > 608) {
		return (data / 32 + 216);
	}
	else if (data > 256) {
		return (data / 8 + 160);
	}
	else if (data > -256) {
		return (data / 4 + 128);
	}
	else if (data > -608) {
		return (data / 8 + 96);
	}
	else if (data > -1280) {
		return (data / 32 + 40);
	}
	else {
		return 0;
	}
}
