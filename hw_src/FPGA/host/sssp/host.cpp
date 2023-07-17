#include <stdio.h>
#include <stdlib.h>
#include <time.h>
//#include "sssp_kernel_0.h" // Include the generated header file

#define DATA_SIZE 128 // Modify this based on your kernel's input size
// Function to test your kernel
//void sssp_kernel_0(int *input1, int *input2, int *output, int size, int vertices);

int main() {

    int *input1 = (int*)malloc(DATA_SIZE * sizeof(int));
    int *input2 = (int*)malloc(DATA_SIZE * sizeof(int));
    int *output = (int*)malloc(DATA_SIZE * sizeof(int));
    int vertices = 100;
    // Generate random input data
    srand(time(NULL));
    for (int i = 0; i < DATA_SIZE; i++) {
        input1[i] = rand() % 100; // Modify this based on your input range
        input2[i] = rand() % 100; // Modify this based on your input range
    }

    // Call your kernel function
    sssp_kernel_0(input1, input2, output, DATA_SIZE, vertices);

    // Verify the results
    bool success = true;
    for (int i = 0; i < DATA_SIZE; i++) {
        // Perform your verification logic here
        // Compare output[i] with expected output
        // Set 'success' flag to false if the verification fails
    }

    // Print the results
    if (success) {
        printf("Verification successful!\n");
    } else {
        printf("Verification failed!\n");
    }

    // Clean up allocated memory
    free(input1);
    free(input2);

    free(output);

    return 0;
}
