// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of e_src
//        bit 31~0 - e_src[31:0] (Read/Write)
// 0x14 : Data signal of e_src
//        bit 31~0 - e_src[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of e_dst
//        bit 31~0 - e_dst[31:0] (Read/Write)
// 0x20 : Data signal of e_dst
//        bit 31~0 - e_dst[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of out_degree
//        bit 31~0 - out_degree[31:0] (Read/Write)
// 0x2c : Data signal of out_degree
//        bit 31~0 - out_degree[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of out_r
//        bit 31~0 - out_r[31:0] (Read/Write)
// 0x38 : Data signal of out_r
//        bit 31~0 - out_r[63:32] (Read/Write)
// 0x3c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_E_SRC_DATA      0x10
#define CONTROL_BITS_E_SRC_DATA      64
#define CONTROL_ADDR_E_DST_DATA      0x1c
#define CONTROL_BITS_E_DST_DATA      64
#define CONTROL_ADDR_OUT_DEGREE_DATA 0x28
#define CONTROL_BITS_OUT_DEGREE_DATA 64
#define CONTROL_ADDR_OUT_R_DATA      0x34
#define CONTROL_BITS_OUT_R_DATA      64
