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
NUMTEST:    number of testing data
NUMIN:      number of features
NUMHID:     number of hidden node
NUMOUT:     number of output node

*/


const char* trainPath = "/Users/G552/Desktop/4218 proj/training_data.txt";
const char* testPath = "/Users/G552/Desktop/4218 proj/test_data.txt";

#define NUMPAT 150
#define NUMTEST 28
#define NUMIN  13
#define NUMHID 10
#define NUMOUT 1
#define MAX_INPUT 256
#define NUM_OUTPUT 3

#define rando() ((double)rand()/((double)RAND_MAX+1))

/*declare function*/
double readinput(double input[NUMPAT+1][NUMIN+1],double target[NUMPAT+1][NUMOUT+1]);
double test(double test_input[NUMTEST+1][NUMIN+1],double test_target[NUMTEST+1][NUMOUT+1],
            double SumH[NUMPAT+1][NUMHID+1],double WeightIH[NUMIN+1][NUMHID+1],double Hidden[NUMPAT+1][NUMHID+1],
            double SumO[NUMPAT+1][NUMOUT+1],double WeightHO[NUMHID+1][NUMOUT+1],double Output[NUMPAT+1][NUMOUT+1]);
int training(void);

/*declare variable*/
int    i, j, k, p, np, op, ranpat[NUMPAT+1], epoch;
double SumH[NUMPAT+1][NUMHID+1], WeightIH[NUMIN+1][NUMHID+1], Hidden[NUMPAT+1][NUMHID+1];
double SumO[NUMPAT+1][NUMOUT+1], WeightHO[NUMHID+1][NUMOUT+1], Output[NUMPAT+1][NUMOUT+1];
double Input[NUMPAT+1][NUMIN+1];
double Target[NUMPAT+1][NUMOUT+1];
double Test_input[NUMPAT+1][NUMIN+1];
double Test_target[NUMPAT+1][NUMOUT+1];
double DeltaO[NUMOUT+1], SumDOW[NUMHID+1], DeltaH[NUMHID+1];
double DeltaWeightIH[NUMIN+1][NUMHID+1], DeltaWeightHO[NUMHID+1][NUMOUT+1];
double Error, eta = 0.5, alpha = 0.9, smallwt = 0.5;

int main()
{
    readinput(Input,Target);
    training();
    fprintf(stdout,"\nTest\n");
    test(Test_input,Test_target,SumH,WeightIH,Hidden,SumO,WeightHO,Output);
}


int training() {
    
    for( j = 1 ; j <= NUMHID ; j++ ) {    /* initialize WeightIH and DeltaWeightIH */
        for( i = 0 ; i <= NUMIN ; i++ ) {
            DeltaWeightIH[i][j] = 0.0 ;
            WeightIH[i][j] = 2.0 * ( rando() - 0.5 ) * smallwt ;
        }
    }
    for( k = 1 ; k <= NUMOUT ; k ++ ) {    /* initialize WeightHO and DeltaWeightHO */
        for( j = 0 ; j <= NUMHID ; j++ ) {
            DeltaWeightHO[j][k] = 0.0 ;
            WeightHO[j][k] = 2.0 * ( rando() - 0.5 ) * smallwt ;
        }
    }
    
    for( epoch = 0 ; epoch < 100000 ; epoch++) {    /* iterate weight updates */
        for( p = 1 ; p <= NUMPAT ; p++ ) {    /* randomize order of training patterns */
            ranpat[p] = p ;
        }
        for( p = 1 ; p <= NUMPAT ; p++) {
            np = p + rando() * ( NUMPAT + 1 - p ) ;
            op = ranpat[p] ; ranpat[p] = ranpat[np] ; ranpat[np] = op ;
        }
        Error = 0.0 ;
        for( np = 1 ; np <= NUMPAT ; np++ ) {    /* repeat for all the training patterns */
            p = ranpat[np];
            for( j = 1 ; j <= NUMHID ; j++ ) {    /* compute hidden unit activations */
                SumH[p][j] = WeightIH[0][j] ;
                for( i = 1 ; i <= NUMIN ; i++ ) {
                    SumH[p][j] += Input[p][i] * WeightIH[i][j] ;
                }
                Hidden[p][j] = 1.0/(1.0 + exp(-SumH[p][j])) ;
            }
            for( k = 1 ; k <= NUMOUT ; k++ ) {    /* compute output unit activations and errors */
                SumO[p][k] = WeightHO[0][k] ;
                for( j = 1 ; j <= NUMHID ; j++ ) {
                    SumO[p][k] += Hidden[p][j] * WeightHO[j][k] ;
                }
                Output[p][k] = 1.0/(1.0 + exp(-SumO[p][k])) ;   /* Sigmoidal Outputs */
                /*              Output[p][k] = SumO[p][k];      Linear Outputs */
                Error += 0.5 * (Target[p][k] - Output[p][k]) * (Target[p][k] - Output[p][k]) ;   /* SSE */
                /*              Error -= ( Target[p][k] * log( Output[p][k] ) + ( 1.0 - Target[p][k] ) * log( 1.0 - Output[p][k] ) ) ;    Cross-Entropy Error */
                DeltaO[k] = (Target[p][k] - Output[p][k]) * Output[p][k] * (1.0 - Output[p][k]) ;   /* Sigmoidal Outputs, SSE */
                /*              DeltaO[k] = Target[p][k] - Output[p][k];     Sigmoidal Outputs, Cross-Entropy Error */
                /*              DeltaO[k] = Target[p][k] - Output[p][k];     Linear Outputs, SSE */
            }
            for( j = 1 ; j <= NUMHID ; j++ ) {    /* 'back-propagate' errors to hidden layer */
                SumDOW[j] = 0.0 ;
                for( k = 1 ; k <= NUMOUT ; k++ ) {
                    SumDOW[j] += WeightHO[j][k] * DeltaO[k] ;
                }
                DeltaH[j] = SumDOW[j] * Hidden[p][j] * (1.0 - Hidden[p][j]) ;
            }
            for( j = 1 ; j <= NUMHID ; j++ ) {     /* update weights WeightIH */
                DeltaWeightIH[0][j] = eta * DeltaH[j] + alpha * DeltaWeightIH[0][j] ;
                WeightIH[0][j] += DeltaWeightIH[0][j] ;
                for( i = 1 ; i <= NUMIN ; i++ ) {
                    DeltaWeightIH[i][j] = eta * Input[p][i] * DeltaH[j] + alpha * DeltaWeightIH[i][j];
                    WeightIH[i][j] += DeltaWeightIH[i][j] ;
                }
            }
            for( k = 1 ; k <= NUMOUT ; k ++ ) {    /* update weights WeightHO */
                DeltaWeightHO[0][k] = eta * DeltaO[k] + alpha * DeltaWeightHO[0][k] ;
                WeightHO[0][k] += DeltaWeightHO[0][k] ;
                for( j = 1 ; j <= NUMHID ; j++ ) {
                    DeltaWeightHO[j][k] = eta * Hidden[p][j] * DeltaO[k] + alpha * DeltaWeightHO[j][k] ;
                    WeightHO[j][k] += DeltaWeightHO[j][k] ;
                }
            }
        }
        /*if( epoch%1000 == 0 ) fprintf(stdout, "\nEpoch %-5d :   Error = %f", epoch, Error) ;*/
        if( Error < 0.9 ) break ;  /* stop learning when 'near enough' */
    }
    
    fprintf(stdout, "\n\nNETWORK DATA - EPOCH %d\n", epoch) ;   /* print network outputs */
    fprintf(stdout, "Error -  %f\n", Error) ;
    /*  
        print all input data 
        print actual and predicted
    */
    /*
    fprintf(stdout, "Pat\t"); 
    for( i = 1 ; i <= NUMIN ; i++ ) {
        fprintf(stdout, "Input%-4d\t", i) ;
    }
    for( k = 1 ; k <= NUMOUT ; k++ ) {
        fprintf(stdout, "Target%-4d\tOutput%-4d\t", k, k) ;
    }
    for( p = 1 ; p <= NUMPAT ; p++ ) {
        fprintf(stdout, "\n%d\t", p) ;
        for( i = 1 ; i <= NUMIN ; i++ ) {
            fprintf(stdout, "%g\t", MAX_INPUT * Input[p][i]) ;
        }
        for( k = 1 ; k <= NUMOUT ; k++ ) {
            fprintf(stdout, "%g\t%g\t", NUM_OUTPUT * Target[p][k], NUM_OUTPUT * Output[p][k]) ;
        }
    }
    */
    return 0 ;
}


double readinput(double input[NUMPAT+1][NUMIN+1],double target[NUMPAT+1][NUMOUT+1])
{
    int i,j;
    FILE *fw=fopen(trainPath,"r");
    for(i=1;i<NUMPAT+1;i++)
    {
        for(j=1;j<NUMOUT+1;j++)
        {
            fscanf(fw,"%lf",&target[i][j]);
            target[i][j] = target[i][j] / NUM_OUTPUT;
        }
        for(j=1;j<NUMIN+1;j++)
        {
            fscanf(fw,"%lf",&input[i][j]);
            input[i][j] = input[i][j] / MAX_INPUT;
        }
    }
    fclose(fw);
    return 0;
}


double test(double test_input[NUMTEST+1][NUMIN+1],double test_target[NUMTEST+1][NUMOUT+1],
            double SumH[NUMPAT+1][NUMHID+1],double WeightIH[NUMIN+1][NUMHID+1],double Hidden[NUMPAT+1][NUMHID+1],
            double SumO[NUMPAT+1][NUMOUT+1],double WeightHO[NUMHID+1][NUMOUT+1],double Output[NUMPAT+1][NUMOUT+1])
{
    int i,j,p,k = 0;
    double accuracy = 0.0;
    FILE *fw=fopen(testPath,"r");
    for(i=1;i<NUMTEST+1;i++)
    {
        for(j=1;j<NUMOUT+1;j++)
        {
            fscanf(fw,"%lf",&test_target[i][j]);
            test_target[i][j] = test_target[i][j] / NUM_OUTPUT;
        }
        for(j=1;j<NUMIN+1;j++)
        {
            fscanf(fw,"%lf",&test_input[i][j]);
            test_input[i][j] = test_input[i][j] / MAX_INPUT;
        }
    }
    fclose(fw);
    for( p = 1 ; p <= NUMTEST ; p++ ) {
        for( j = 1 ; j <= NUMHID ; j++ ) {    /* compute hidden unit activations */
            SumH[p][j] = WeightIH[0][j] ;
            for( i = 1 ; i <= NUMIN ; i++ ) {
                SumH[p][j] += test_input[p][i] * WeightIH[i][j] ;
            }
            Hidden[p][j] = 1.0/(1.0 + exp(-SumH[p][j])) ;
        }
        for( k = 1 ; k <= NUMOUT ; k++ ) {    /* compute output unit activations and errors */
            SumO[p][k] = WeightHO[0][k] ;
            for( j = 1 ; j <= NUMHID ; j++ ) {
                SumO[p][k] += Hidden[p][j] * WeightHO[j][k] ;
            }
            Output[p][k] = 1.0/(1.0 + exp(-SumO[p][k])) ;
        }
    }
    /* print full testdata and prediction */
    /*
    fprintf(stdout, "\ntestdata\t") ;
    for( k = 1 ; k <= NUMOUT ; k++ ) {
        fprintf(stdout,"Target%d\t   Output%d\t", k, k) ;
    }
    for( p = 1 ; p <= NUMTEST ; p++ ) {
        fprintf(stdout, "\n   %d\t", p) ;
        for( k = 1 ; k <= NUMOUT ; k++ ) {
            fprintf(stdout, "       %g\t   %g\t", NUM_OUTPUT * test_target[p][k], NUM_OUTPUT * Output[p][k]) ;
        }
    }
    */

    /* print accuracy only */
    for( p = 1 ; p <= NUMTEST ; p++ ) {
        for( k = 1 ; k <= NUMOUT ; k++ ) {
            if(NUM_OUTPUT * test_target[p][k] == round(NUM_OUTPUT * Output[p][k])) {
                accuracy += 1.0;
            }
        }
    }
    fprintf(stdout, "Accuracy: %.2f%\n", accuracy/NUMTEST);

    return 0;
}