//#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
#include <fcntl.h>
#include <unistd.h>

/*
Reference website: http://www.cs.bham.ac.uk/~jxb/INC/nn.html
===========================================================
						README
===========================================================
Change training file and test file path to correct path
for smooth running of code
NUMPAT:     number of training data
NUMIN:      number of features
NUMHID:     number of hidden node
NUMOUT:     number of output node
NUMTEST:    number of testing data
*/


const char* trainPath = "./training_data.txt";
const char* testPath = "./test_data.txt";

#define NUMPAT 150
#define NUMIN  13
#define NUMHID 10
#define NUMOUT 1
#define NUMTEST 28
#define MAX_INPUT 256
#define NUM_OUTPUT 3

#define rando() ((double)rand()/((double)RAND_MAX+1))

/*declare function*/
double read_training(double input[NUMPAT + 1][NUMIN + 1], double target[NUMPAT + 1][NUMOUT + 1]);
double test(double test_input[NUMTEST + 1][NUMIN + 1], double test_target[NUMTEST + 1][NUMOUT + 1],
	double SumH[NUMPAT + 1][NUMHID + 1], double WeightIH[NUMIN + 1][NUMHID + 1], double Hidden[NUMPAT + 1][NUMHID + 1],
	double SumO[NUMPAT + 1][NUMOUT + 1], double WeightHO[NUMHID + 1][NUMOUT + 1], double Output[NUMPAT + 1][NUMOUT + 1]);
int training(void);
int send_function();
int standardize();
void writeToFile();
// int XAxiDma_SimplePollExample(u16 DeviceId);
// static int CheckData(unsigned cur_indx);

/*declare variable*/
int    i, j, k, p, np, op, ranpat[NUMPAT + 1], epoch;
double SumH[NUMPAT + 1][NUMHID + 1], WeightIH[NUMIN + 1][NUMHID + 1], Hidden[NUMPAT + 1][NUMHID + 1];
double SumO[NUMPAT + 1][NUMOUT + 1], WeightHO[NUMHID + 1][NUMOUT + 1], Output[NUMPAT + 1][NUMOUT + 1];
int WeightIH1[NUMIN + 1][NUMHID + 1], WeightHO1[NUMHID + 1][NUMOUT + 1],Test_input1[NUMPAT + 1][NUMIN + 1];
double Input[NUMPAT + 1][NUMIN + 1];
double Target[NUMPAT + 1][NUMOUT + 1];
double Test_input[NUMPAT + 1][NUMIN + 1];
double Test_target[NUMPAT + 1][NUMOUT + 1];
double DeltaO[NUMOUT + 1], SumDOW[NUMHID + 1], DeltaH[NUMHID + 1];
double DeltaWeightIH[NUMIN + 1][NUMHID + 1], DeltaWeightHO[NUMHID + 1][NUMOUT + 1];
double Error, eta = 0.5, alpha = 0.9, smallwt = 0.5;



int main()
{
	//init_platform();
	printf("Beginning\n\n\r");
	read_training(Input, Target);
	training();
	test(Test_input, Test_target, SumH, WeightIH, Hidden, SumO, WeightHO, Output);
	standardize();
	writeToFile();
	//send_function();
	//cleanup_platform();
}


int training() {
	for (j = 1; j <= NUMHID; j++) {    // initialize WeightIH and DeltaWeightIH
		for (i = 0; i <= NUMIN; i++) {
			DeltaWeightIH[i][j] = 0.0;
			WeightIH[i][j] = 2.0 * (rando() - 0.5) * smallwt;
		}
	}

	for (k = 1; k <= NUMOUT; k++) {    // initialize WeightHO and DeltaWeightHO
		for (j = 0; j <= NUMHID; j++) {
			DeltaWeightHO[j][k] = 0.0;
			WeightHO[j][k] = 2.0 * (rando() - 0.5) * smallwt;
		}
	}

	for (epoch = 0; epoch < 100000; epoch++) {    // iterate weight updates
		for (p = 1; p <= NUMPAT; p++) {    // randomize order of training patterns
			ranpat[p] = p;
		}
		for (p = 1; p <= NUMPAT; p++) {
			np = p + rando() * (NUMPAT + 1 - p);
			op = ranpat[p]; ranpat[p] = ranpat[np]; ranpat[np] = op;
		}
		Error = 0.0;
		for (np = 1; np <= NUMPAT; np++) {    // repeat for all the training patterns
			p = ranpat[np];
			for (j = 1; j <= NUMHID; j++) {    // compute hidden unit activations
				SumH[p][j] = WeightIH[0][j];
				for (i = 1; i <= NUMIN; i++) {
					SumH[p][j] += Input[p][i] * WeightIH[i][j];
				}
				Hidden[p][j] = 1.0 / (1.0 + exp(-SumH[p][j]));
			}
			for (k = 1; k <= NUMOUT; k++) {    // compute output unit activations and errors
				SumO[p][k] = WeightHO[0][k];
				for (j = 1; j <= NUMHID; j++) {
					SumO[p][k] += Hidden[p][j] * WeightHO[j][k];
				}
				Output[p][k] = 1.0 / (1.0 + exp(-SumO[p][k]));   // Sigmoidal Outputs
				//             Output[p][k] = SumO[p][k];      Linear Outputs
				Error += 0.5 * (Target[p][k] - Output[p][k]) * (Target[p][k] - Output[p][k]);   // SSE
				//              Error -= ( Target[p][k] * log( Output[p][k] ) + ( 1.0 - Target[p][k] ) * log( 1.0 - Output[p][k] ) ) ;    Cross-Entropy Error
				DeltaO[k] = (Target[p][k] - Output[p][k]) * Output[p][k] * (1.0 - Output[p][k]);   // Sigmoidal Outputs, SSE
				//              DeltaO[k] = Target[p][k] - Output[p][k];     Sigmoidal Outputs, Cross-Entropy Error
				//              DeltaO[k] = Target[p][k] - Output[p][k];     Linear Outputs, SSE
			}
			for (j = 1; j <= NUMHID; j++) {    // 'back-propagate' errors to hidden layer
				SumDOW[j] = 0.0;
				for (k = 1; k <= NUMOUT; k++) {
					SumDOW[j] += WeightHO[j][k] * DeltaO[k];
				}
				DeltaH[j] = SumDOW[j] * Hidden[p][j] * (1.0 - Hidden[p][j]);
			}
			for (j = 1; j <= NUMHID; j++) {     // update weights WeightIH
				DeltaWeightIH[0][j] = eta * DeltaH[j] + alpha * DeltaWeightIH[0][j];
				WeightIH[0][j] += DeltaWeightIH[0][j];
				for (i = 1; i <= NUMIN; i++) {
					DeltaWeightIH[i][j] = eta * Input[p][i] * DeltaH[j] + alpha * DeltaWeightIH[i][j];
					WeightIH[i][j] += DeltaWeightIH[i][j];
				}
			}
			for (k = 1; k <= NUMOUT; k++) {    // update weights WeightHO
				DeltaWeightHO[0][k] = eta * DeltaO[k] + alpha * DeltaWeightHO[0][k];
				WeightHO[0][k] += DeltaWeightHO[0][k];
				for (j = 1; j <= NUMHID; j++) {
					DeltaWeightHO[j][k] = eta * Hidden[p][j] * DeltaO[k] + alpha * DeltaWeightHO[j][k];
					WeightHO[j][k] += DeltaWeightHO[j][k];
				}
			}
		}
		//if( epoch%1000 == 0 ) fprintf(stdout, "\nEpoch %-5d :   Error = %f", epoch, Error) ;
		if (Error < 0.01) break;  // stop learning when 'near enough'
	}

	printf("EPOCH = %d\n", epoch);   // print network outputs
	printf("Error = %f\n", Error);
	printf("training completed\n\n");
	return 0;
}


double read_training(double input[NUMPAT + 1][NUMIN + 1], double target[NUMPAT + 1][NUMOUT + 1])
{
	int i, j;
	FILE *fw=fopen(trainPath,"r");	
	for (i = 1; i < NUMPAT + 1; i++)
	{
		for (j = 1; j < NUMOUT + 1; j++)
		{	
			fscanf(fw, "%lf", &target[i][j]);
			target[i][j] = target[i][j] / NUM_OUTPUT;
		}
		for (j = 1; j < NUMIN + 1; j++)
		{
			fscanf(fw, "%lf", &input[i][j]);
			input[i][j] = input[i][j] / MAX_INPUT;
		}
	}
	printf("read training data successfully\n\n");
	return 0;
}


double test(double test_input[NUMTEST + 1][NUMIN + 1], double test_target[NUMTEST + 1][NUMOUT + 1],
	double SumH[NUMPAT + 1][NUMHID + 1], double WeightIH[NUMIN + 1][NUMHID + 1], double Hidden[NUMPAT + 1][NUMHID + 1],
	double SumO[NUMPAT + 1][NUMOUT + 1], double WeightHO[NUMHID + 1][NUMOUT + 1], double Output[NUMPAT + 1][NUMOUT + 1])
{
	int i, j, p, k = 0;
	double accuracy = 0.0;
	FILE *fw=fopen(testPath,"r");
	for (i = 1; i < NUMTEST + 1; i++)
	{
		for (j = 1; j < NUMOUT + 1; j++)
		{
			fscanf(fw, "%lf", &test_target[i][j]);
			test_target[i][j] = test_target[i][j] / NUM_OUTPUT;
		}
		for (j = 1; j < NUMIN + 1; j++)
		{
			fscanf(fw, "%lf", &test_input[i][j]);
			test_input[i][j] = test_input[i][j] / MAX_INPUT;
		}
	}

	for (p = 1; p <= NUMTEST; p++) {
		for (j = 1; j <= NUMHID; j++) {    // compute hidden unit activations
			SumH[p][j] = WeightIH[0][j];
			for (i = 1; i <= NUMIN; i++) {
				SumH[p][j] += test_input[p][i] * WeightIH[i][j];
			}
			Hidden[p][j] = 1.0 / (1.0 + exp(-SumH[p][j]));
		}
		for (k = 1; k <= NUMOUT; k++) {    // compute output unit activations and errors
			SumO[p][k] = WeightHO[0][k];
			for (j = 1; j <= NUMHID; j++) {
				SumO[p][k] += Hidden[p][j] * WeightHO[j][k];
			}
			Output[p][k] = 1.0 / (1.0 + exp(-SumO[p][k]));
		}
	}

	// print full test data and prediction

	// printf("\ntest data  ");
	// for( k = 1 ; k <= NUMOUT ; k++ ) {
	// 	printf("Target%d  Output%d\t", k, k) ;
	// }
	// for( p = 1 ; p <= NUMTEST ; p++ ) {
	// 	printf("\n   %d\t", p) ;
	// 	for( k = 1 ; k <= NUMOUT ; k++ ) {
	// 		printf("      %g\t      %.0f\t", NUM_OUTPUT * test_target[p][k], NUM_OUTPUT * Output[p][k]) ;
	// 	}
	// }


	// print accuracy only
	for (p = 1; p <= NUMTEST; p++) {
		for (k = 1; k <= NUMOUT; k++) {
			if (NUM_OUTPUT * test_target[p][k] == round(NUM_OUTPUT * Output[p][k])) {
				accuracy += 1.0;
			}
		}
	}
	printf("\nAccuracy: %.2f %%\n", 100 * accuracy / NUMTEST);

	return 0;
}



// int XAxiDma_SimplePollExample(u16 DeviceId)
// {
//   XAxiDma_Config *CfgPtr;
//   int Status;
//   unsigned Index;
//   unsigned *TxBufferPtr;
//   unsigned *RxBufferPtr;


//   TxBufferPtr = (unsigned *)TX_BUFFER_BASE ;
//   RxBufferPtr = (unsigned *)RX_BUFFER_BASE;

//   /* Initialize the XAxiDma device.
//    */
//   CfgPtr = XAxiDma_LookupConfig(DeviceId);
//   if (!CfgPtr) {
//     xil_printf("No config found for %d\r\n", DeviceId);
//     return XST_FAILURE;
//   }
//   xil_printf("\nFound config for AXI DMA\n\r");

//   Status = XAxiDma_CfgInitialize(&AxiDma, CfgPtr);
//   if (Status != XST_SUCCESS) {
//     xil_printf("Initialization failed %d\r\n", Status);
//     return XST_FAILURE;
//   }
//   xil_printf("\nFinish initializing configurations for AXI DMA\n\r");

//   if(XAxiDma_HasSg(&AxiDma)){
//     xil_printf("Device configured as SG mode \r\n");
//     return XST_FAILURE;
//   }
//   xil_printf("\nAXI DMA is configured as Simple Transfer mode\r\n");

//   /* Disable interrupts, we use polling mode
//    */
//   XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
//       XAXIDMA_DEVICE_TO_DMA);
//   XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
//       XAXIDMA_DMA_TO_DEVICE);


// 	Index = 0;

// 	for(i = 1; i < NUMTEST + 1; i++)
// 		for(j = 1; j < NUMIN + 1; j++)
// 		{
// 			TxBufferPtr[Index] = Test_input1[i][j];
// 			Index ++;
// 		}

// 	for(i = 0; i < NUMIN + 1; i++)
// 		for(j = 1; j < NUMHID + 1; j++)
// 		{
// 			TxBufferPtr[Index] = WeightIH1[i][j];
// 			Index ++;
// 		}

// 	for(i = 0; i < NUMHID + 1; i++)
// 		for(j = 1; j < NUMOUT + 1; j++)
// 		{
// 			TxBufferPtr[Index] = WeightHO1[i][j];
// 			Index ++;
// 		}

//   /* Flush the SrcBuffer before the DMA transfer, in case the Data Cache
//    * is enabled
//    */
//   Xil_DCacheFlushRange((unsigned)TxBufferPtr, NUMBER_OF_BYTES);

//   for(Index = 0; Index < NUMBER_OF_TRANSFERS; Index ++) {

//     Status = XAxiDma_SimpleTransfer(&AxiDma,(unsigned) (RxBufferPtr + Index * 4),
//     		30 * 4, XAXIDMA_DEVICE_TO_DMA);

//     if (Status != XST_SUCCESS) {
//       return XST_FAILURE;
//     }


//     Status = XAxiDma_SimpleTransfer(&AxiDma,(unsigned) (TxBufferPtr + Index * 4),
//     		515 * 4, XAXIDMA_DMA_TO_DEVICE);

//     if (Status != XST_SUCCESS) {
//       return XST_FAILURE;
//     }

//     xil_printf("\nWaiting for AXI DMA \n\r");

//     while (XAxiDma_Busy(&AxiDma,XAXIDMA_DMA_TO_DEVICE)) {
//     	//wait
//     }
//     xil_printf("\nDMA_TO_DEVICE finishes \n\r");

//     while (XAxiDma_Busy(&AxiDma,XAXIDMA_DEVICE_TO_DMA)) {
//       //wait
//     }
//     xil_printf("\nDEVICE_TO_DMA finishes \n\r");

//     Status = CheckData(Index);
//     if (Status != XST_SUCCESS) {
//       return XST_FAILURE;
//     }

//   }

//   return XST_SUCCESS;
// }

// static int CheckData(unsigned cur_indx)
// {
//   unsigned *RxPacket;
//   int Index = 0;

//   RxPacket = (unsigned *) (RX_BUFFER_BASE + cur_indx * 4 * 4);

//   Xil_DCacheInvalidateRange((unsigned)RxPacket, NUMBER_OF_BYTES);

//   for(Index = 0; Index < 28; Index++) {

//       printf("\noutput %d: %d\r", Index + 1, rrr((unsigned int)RxPacket[Index]));
//   }
//   xil_printf("\nfirst compute used clock cycle : %d\r\n", (unsigned int)RxPacket[Index]);
//   xil_printf("\nsecond compute used clock cycle : %d\r\n", (unsigned int)RxPacket[Index+1]);

//   return XST_SUCCESS;
// }


int standardize()
{
	for(i = 1; i <= NUMTEST; i++)
		for(j = 1; j <= NUMIN; j++)
		{
			Test_input1[i][j] = Test_input[i][j] * 256;
		}

	for (i = 0; i <= NUMIN; i++)
		for (j = 1; j <= NUMHID; j++)
		{
			WeightIH1[i][j] = WeightIH[i][j] * 256;
		}
	for (k = 1; k <= NUMOUT; k++)
		for (j = 0; j <= NUMHID; j++)
		{
			WeightHO1[j][k] = WeightHO[j][k] * 256;
		}
}

void writeToFile() {
	FILE *fp;
	fp = fopen("to_send.txt", "w");
	for(i = 1; i < NUMTEST + 1; i++) {
		for(j = 1; j < NUMIN + 1; j++)
		{
			fprintf(fp, "%d ", Test_input1[i][j]);
		}
	}
	fprintf(fp, "\n\n\n");
	for(i = 0; i < NUMIN + 1; i++){
		for(j = 1; j < NUMHID + 1; j++)
		{
			fprintf(fp, "%d ", WeightIH1[i][j]);
		}
	}
	fprintf(fp, "\n\n\n");
	for(i = 0; i < NUMHID + 1; i++) {
		for(j = 1; j < NUMOUT + 1; j++)
		{
			fprintf(fp, "%d ", WeightHO1[i][j]);
		}	
	}
}