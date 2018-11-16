#ifndef MLP_H_
#define MLP_H_

#include "stdint.h"
#include "hls_math.h"

#define INPUT_NODE 13
#define HIDDEN_NODE 10
#define OUTPUT_NODE 1

#define NUM_OF_TEST_DATA 28

void mlp(uint32_t input, uint32_t output);

float decode(uint32_t data);
uint32_t encode(float data);
float sigmoid(float data);

#endif