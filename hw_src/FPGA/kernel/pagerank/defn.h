
/*TODO
 * receive Dumping Factor from the user
 **/

#include "stdio.h"

#define DEBUG_PRINTF(fmt,...)   printf(fmt,##__VA_ARGS__); //fflush(stdout);


#define DAMPING_FACTOR 0.85

#define DATA_SIZE 64


typedef ap_uint<64> u_512;
typedef unsigned int u32;
//typedef unsigned int u16;
