#include <ap_axi_sdata.h>
#include <ap_int.h>
#include <hls_stream.h>

extern "C" {
	void row_read(int* row, hls::stream<ap_axiu<32, 0, 0, 0> >& stream, int size) {
mem_read:
		for (int i = 0; i < size; i++) {
			int a = row[i];
			ap_axiu<32, 0, 0, 0> v;
			v.data = a;
			stream.write(v);
		}
	}
}
