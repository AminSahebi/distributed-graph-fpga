/*
   Copyright (c) 2020-2021 Amin Sahebi, 
   University of Siena, University of Florence.

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

#ifndef __LIBFPGA_H__
#define __LIBFPGA_H__

#include <ap_int.h>
#include <hls_stream.h>

#define DEBUG_PRINTF(fmt,...)   ;

/** Global definitions based on Performance Model 
 *
 * @param PE_NUM , fixed number of PEs in our design
 * @param EDGE_SIZE, Storage size of an Edge in (byte)
 * @param P2_EDGE_SIZE, useful power of two number of the storage.
 * @DATA_WIDTH, the buffer width of transfering data
 * */

#define PE_NUM 16

#define EDGE_SIZE 8

#define P2_EDGE_SIZE 4

#define BUFFER_SIZE 1024*1024 //1MB 

#define DATAWIDTH 512
#define DATATYPE 32
#define VECTOR_SIZE  (DATAWIDTH / DATATYPE) // vector size is 16 (512/32 = 16)

typedef ap_uint<DATAWIDTH> uint512_dt;


/** Define arbitrary datatypes 
 * based on the design needs
 * A Arbitrary bit AXI4 memory 
 * mapped interface will be generated.
 */
typedef ap_uint<1> 	uint1_dt;
typedef ap_uint<2> 	uint2_dt;
typedef ap_uint<3> 	uint3_dt;
typedef ap_uint<4> 	uint4_dt;
typedef ap_uint<8> 	uint8_dt;
typedef ap_uint<16> 	uint16_dt;
typedef ap_uint<32> 	uint32_dt;
typedef ap_uint<48> 	uint48_dt;
typedef ap_uint<64> 	uint64_dt;
typedef ap_uint<96> 	uint96_dt;
typedef ap_uint<256> 	uint256_dt;
typedef ap_uint<512> 	uint512_dt;
typedef ap_uint<1024> 	uint1024_dt;

/**
 * The data in the hls::stream class can only be accessed sequentially;
 *  the data is stored and retrieved using the First In First Out method
 */
	template <typename T>
inline int stream_write (hls::stream<T> &stream, T const& value)
{
#pragma HLS INLINE
	//int count = 0; //[debug] to count writes
	stream << value; /** << operator is equal to "stream.write(T&)" method */
	return 0;
}


	template <typename T>
inline int stream_read (hls::stream<T> &stream, T & value)
{
#pragma HLS INLINE
	value = stream.read();
	return 0;
}


	template <typename T>
inline int nb_stream_read (hls::stream<T> &stream, T & value)
{
#pragma HLS INLINE
	if (stream.read_nb(value))
	{
		return 0;
	}
	else
	{
		return -1;
	}
}


	template <typename T>
inline int nb_stream_write (hls::stream<T> &stream, T & value)
{
#pragma HLS INLINE
	if (stream.write_nb(value))
	{
		return 0;
	}
	else
	{
		return -1;
	}
}

#endif
