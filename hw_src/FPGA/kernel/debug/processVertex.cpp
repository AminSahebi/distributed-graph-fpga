#include <ap_axi_sdata.h>
#include <ap_int.h>
#include <hls_stream.h>

extern "C" {
	void processVertex(hls::stream<ap_axiu<32, 0, 0, 0> >& input, hls::stream<ap_axiu<32, 0, 0, 0> >& output) {
		// For free running kernel, user needs to specify ap_ctrl_none for return port.
		// This will create the kernel without AXI lite interface. Kernel will always be
		// in running states.
#pragma HLS interface ap_ctrl_none port = return

increment:
		while (1) {
			ap_axiu<32, 0, 0, 0> v = input.read();
			v.data = v.data + 1;
			output.write(v);
			if (v.last) {
				break;
			}
		}
	}
}
