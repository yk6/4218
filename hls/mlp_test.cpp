#define _CRT_SECURE_NO_WARNINGS
// #include "mlp.h"
#include <stdio.h>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <math.h>

#define _TEST_

#ifdef _TEST_
#include "stdint.h"

#define INPUT_NODE 13
#define HIDDEN_NODE 10
#define OUTPUT_NODE 1
#define NUMPAT 150

#define NUM_OF_TEST_DATA 28

void mlp(int input[], int output[]);

int sigmoid(int data);
#endif

using namespace std;

int main(void) {

	int i = 0, j = 0, retval = 0;

	int output_data[28];
	int input_data[515] = { 132,93,52,0,93,171,207,29,255,187,174,155,210,
		193,89,182,84,102,144,190,55,206,143,207,196,233,193,94,140,23,178,
		255,238,106,159,183,143,186,218,189,103,201,82,196,200,177,142,138,
		162,176,157,255,186,90,101,69,210,159,184,50,131,150,118,181,192,172,
		93,150,147,201,196,176,45,224,161,134,166,204,224,92,112,67,210,221,
		190,76,177,164,123,191,173,151,107,201,76,138,200,205,101,136,154,160,
		149,234,185,76,159,74,165,241,233,40,178,176,109,151,237,49,191,42,
		119,71,98,103,132,159,24,120,168,91,6,132,140,138,111,190,177,106,155,
		78,84,198,103,14,112,255,255,214,218,255,184,159,154,120,225,71,82,248,
		213,255,138,118,134,163,141,46,118,174,50,132,255,73,166,66,161,168,96,
		175,60,64,172,53,39,241,133,157,48,186,192,50,255,66,70,221,53,55,118,
		82,157,62,159,168,132,101,65,101,188,53,83,82,110,166,66,173,200,142,
		148,97,53,149,48,33,116,224,255,93,111,142,240,147,71,132,113,71,78,88,
		112,224,75,120,155,148,163,47,109,143,46,52,240,131,176,40,108,110,158,
		101,60,81,124,94,65,168,117,119,111,21,29,148,32,140,45,58,80,110,131,
		108,128,66,35,31,189,22,255,20,40,72,219,138,154,138,89,65,43,168,89,
		255,34,47,110,184,255,147,147,107,65,37,209,69,201,39,49,127,159,218,
		154,195,138,77,46,163,108,190,56,33,129,149,239,103,138,219,56,42,163,
		101,255,25,33,146,141,143,129,138,219,62,42,214,113,245,28,39,147,217,
		229,215,224,111,103,47,230,101,242,31,37,90,
		-1570, -153, -182, -150, -216, -264, -177, -366, -152, -184, 1918, 352,
		1123, -1192, 397, -260, 689, 225, -475, 559, -1669, 28, 2016, -218, -151,
		-129, -98, -161, 186, -93, -202, -36, -131, 8, -51, -116, -69, -133, -68,
		-119, -142, -229, -47, -17, -84, -117, -146, -17, -1, 230, -380, -99, -137,
		52, 60, -124, -309, 272, 111, -82, -159, 0, -101, -34, -175, -107, -150, 46,
		-146, -245, 150, -112, -67, 8, -2, 1272, 149, 1050, 314, 6, -220, -1932, 44,
		-977, 515, -1600, -1341, 418, -154, -173, -277, -226, -68, 33, 37, -7, -71,
		-135, 61, -124, -209, 222, 64, 472, -48, -162, -123, -662, -106, -351, 306,
		-691, -416, -6, -35, 12, -10, 340, 135, -80, -490, -24, 139, 54, -40, -216,
		-349, -117, -214, -174, -65, -297, 137, 22, -237, 64, 34, 148, 32, -190,
		272, -440, -89, 53, 119, -60, 2232, -143, 567, -267, -161
		};


	//FILE *fp;

	// for (i = 0, j = 0; i < 515; i++) {
	// 	if ( i < 364) {
	// 		input_data[i] = arr[i];
	// 	} else {
	// 		input_data[i] = arr2[j];
	// 		j++;
	// 	}
	// }

	//read 364 values first
	//read 140 weights

	mlp(input_data, output_data);

	//fp = fopen("result.dat", "w");
	//for (i = 0; i < 28; i++) {
	//	printf("%lf ", (output_data[i] * 3 / 256.0));
	//}
	//fclose(fp);

	retval = system("diff --brief -w result.dat result.golden.dat");
	if (retval != 0) {
		printf("Test failed  !!!\n");
		retval = 1;
	}
	else {
		printf("Test passed !\n");
	}

	return 0;
}

#ifdef _TEST_
#include "mlp.h"

using namespace std;

void mlp(int input[], int output[]) {
	// #pragma HLS INTERFACE axis port = input
	// #pragma HLS INTERFACE axis port = output
	// #pragma HLS INTERFACE ap_ctrl_none port = return

	int test_data[NUM_OF_TEST_DATA + 1][INPUT_NODE + 1];

	int weightIH[INPUT_NODE + 1][HIDDEN_NODE + 1];
	int weightHO[INPUT_NODE + 1][OUTPUT_NODE + 1];

	int SumH[HIDDEN_NODE + 1];

	int result[NUM_OF_TEST_DATA];

	int i = 0, j = 0, k = 0, p = 0, z = 0;
	//================================
	// int SumH[NUMPAT + 1][HIDDEN_NODE + 1];
	// int WeightIH[INPUT_NODE + 1][HIDDEN_NODE + 1];
	// int Hidden[NUMPAT + 1][HIDDEN_NODE + 1];
	// int SumO[NUMPAT + 1][OUTPUT_NODE + 1];
	// int WeightHO[HIDDEN_NODE + 1][OUTPUT_NODE + 1];
	// int Output[NUMPAT + 1][OUTPUT_NODE + 1];

	//================================

	//Receive data




	for (i = 1; i <= NUM_OF_TEST_DATA; i++) {
		for (j = 1; j <= INPUT_NODE; j++) {
			test_data[i][j] = input[k];
			k++;
		}
	}


	for (j = 1; j <= HIDDEN_NODE; j++) {
		weightIH[0][j] = input[k];
		k++;
	}
	
	for (j = 1; j <= HIDDEN_NODE; j++) {
		for (i = 1; i <= INPUT_NODE; i++) {
			weightIH[i][j] = input[k];
			k++;
		}
	}

	
	for (i = 0; i <= HIDDEN_NODE; i++) {
		for (j = 1; j <= OUTPUT_NODE; j++) {
			weightHO[i][j] = input[k];
			k++;
		}
	}
		
	// Compute data
	for (k = 1; k <= NUM_OF_TEST_DATA; k++) {
		for (i = 1; i <= HIDDEN_NODE; i++) {
			SumH[i] = 256 * weightIH[0][i];

			for (j = 1; j <= INPUT_NODE; j++) {
				SumH[i] += test_data[k][j] * weightIH[j][i];
			}
			SumH[i] = sigmoid(SumH[i]/256);
			//printf("%6d\n", SumH[i]);
		}

			result[k] = 256 * weightHO[0][1];
			for (j = 1; j <= HIDDEN_NODE; j++) {
				result[k] += SumH[j] * weightHO[j][1];
			}
			result[k] = sigmoid(result[k]/256);
			printf("%6d\n", result[k]);
	}


	// Output data
	//for (i = 0; i < NUM_OF_TEST_DATA; i++) {
	//	output[i] = result[i-1];
	//}

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
#endif
