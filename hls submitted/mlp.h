#ifndef MLP_H_
#define MLP_H_

#include "stdint.h"

#define INPUT_NODE 13
#define HIDDEN_NODE 10
#define OUTPUT_NODE 1

#define NUM_OF_TEST_DATA 28

void mlp(int input[], int output[]);

int sigmoid(int data);

#endif