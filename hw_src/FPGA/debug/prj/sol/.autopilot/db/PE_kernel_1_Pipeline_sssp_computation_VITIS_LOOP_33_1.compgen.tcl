# This script segment is generated automatically by AutoPilot

set id 91
set name sssp_kernel_0_mux_325_32_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 32
set din0_signed 0
set din1_width 32
set din1_signed 0
set din2_width 32
set din2_signed 0
set din3_width 32
set din3_signed 0
set din4_width 32
set din4_signed 0
set din5_width 32
set din5_signed 0
set din6_width 32
set din6_signed 0
set din7_width 32
set din7_signed 0
set din8_width 32
set din8_signed 0
set din9_width 32
set din9_signed 0
set din10_width 32
set din10_signed 0
set din11_width 32
set din11_signed 0
set din12_width 32
set din12_signed 0
set din13_width 32
set din13_signed 0
set din14_width 32
set din14_signed 0
set din15_width 32
set din15_signed 0
set din16_width 32
set din16_signed 0
set din17_width 32
set din17_signed 0
set din18_width 32
set din18_signed 0
set din19_width 32
set din19_signed 0
set din20_width 32
set din20_signed 0
set din21_width 32
set din21_signed 0
set din22_width 32
set din22_signed 0
set din23_width 32
set din23_signed 0
set din24_width 32
set din24_signed 0
set din25_width 32
set din25_signed 0
set din26_width 32
set din26_signed 0
set din27_width 32
set din27_signed 0
set din28_width 32
set din28_signed 0
set din29_width 32
set din29_signed 0
set din30_width 32
set din30_signed 0
set din31_width 32
set din31_signed 0
set din32_width 5
set din32_signed 0
set dout_width 32
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    din17_width ${din17_width} \
    din17_signed ${din17_signed} \
    din18_width ${din18_width} \
    din18_signed ${din18_signed} \
    din19_width ${din19_width} \
    din19_signed ${din19_signed} \
    din20_width ${din20_width} \
    din20_signed ${din20_signed} \
    din21_width ${din21_width} \
    din21_signed ${din21_signed} \
    din22_width ${din22_width} \
    din22_signed ${din22_signed} \
    din23_width ${din23_width} \
    din23_signed ${din23_signed} \
    din24_width ${din24_width} \
    din24_signed ${din24_signed} \
    din25_width ${din25_width} \
    din25_signed ${din25_signed} \
    din26_width ${din26_width} \
    din26_signed ${din26_signed} \
    din27_width ${din27_width} \
    din27_signed ${din27_signed} \
    din28_width ${din28_width} \
    din28_signed ${din28_signed} \
    din29_width ${din29_width} \
    din29_signed ${din29_signed} \
    din30_width ${din30_width} \
    din30_signed ${din30_signed} \
    din31_width ${din31_width} \
    din31_signed ${din31_signed} \
    din32_width ${din32_width} \
    din32_signed ${din32_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 128 \
    name local_in_a \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_in_a \
    op interface \
    ports { local_in_a_address0 { O 12 vector } local_in_a_ce0 { O 1 bit } local_in_a_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_in_a'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 130 \
    name local_in_b \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_in_b \
    op interface \
    ports { local_in_b_address0 { O 12 vector } local_in_b_ce0 { O 1 bit } local_in_b_q0 { I 5 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_in_b'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 132 \
    name local_in_c \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_in_c \
    op interface \
    ports { local_in_c_address0 { O 12 vector } local_in_c_ce0 { O 1 bit } local_in_c_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_in_c'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name distance_buffer_31_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_31_0_reload \
    op interface \
    ports { distance_buffer_31_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name distance_buffer_30_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_30_0_reload \
    op interface \
    ports { distance_buffer_30_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name distance_buffer_29_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_29_0_reload \
    op interface \
    ports { distance_buffer_29_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name distance_buffer_28_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_28_0_reload \
    op interface \
    ports { distance_buffer_28_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name distance_buffer_27_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_27_0_reload \
    op interface \
    ports { distance_buffer_27_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name distance_buffer_26_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_26_0_reload \
    op interface \
    ports { distance_buffer_26_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name distance_buffer_25_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_25_0_reload \
    op interface \
    ports { distance_buffer_25_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name distance_buffer_24_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_24_0_reload \
    op interface \
    ports { distance_buffer_24_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name distance_buffer_23_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_23_0_reload \
    op interface \
    ports { distance_buffer_23_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name distance_buffer_22_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_22_0_reload \
    op interface \
    ports { distance_buffer_22_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name distance_buffer_21_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_21_0_reload \
    op interface \
    ports { distance_buffer_21_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name distance_buffer_20_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_20_0_reload \
    op interface \
    ports { distance_buffer_20_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name distance_buffer_19_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_19_0_reload \
    op interface \
    ports { distance_buffer_19_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name distance_buffer_18_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_18_0_reload \
    op interface \
    ports { distance_buffer_18_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name distance_buffer_17_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_17_0_reload \
    op interface \
    ports { distance_buffer_17_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name distance_buffer_16_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_16_0_reload \
    op interface \
    ports { distance_buffer_16_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name distance_buffer_15_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_15_0_reload \
    op interface \
    ports { distance_buffer_15_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name distance_buffer_14_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_14_0_reload \
    op interface \
    ports { distance_buffer_14_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name distance_buffer_13_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_13_0_reload \
    op interface \
    ports { distance_buffer_13_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name distance_buffer_12_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_12_0_reload \
    op interface \
    ports { distance_buffer_12_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name distance_buffer_11_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_11_0_reload \
    op interface \
    ports { distance_buffer_11_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name distance_buffer_10_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_10_0_reload \
    op interface \
    ports { distance_buffer_10_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name distance_buffer_9_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_9_0_reload \
    op interface \
    ports { distance_buffer_9_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name distance_buffer_8_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_8_0_reload \
    op interface \
    ports { distance_buffer_8_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name distance_buffer_7_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_7_0_reload \
    op interface \
    ports { distance_buffer_7_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name distance_buffer_6_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_6_0_reload \
    op interface \
    ports { distance_buffer_6_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name distance_buffer_5_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_5_0_reload \
    op interface \
    ports { distance_buffer_5_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name distance_buffer_4_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_4_0_reload \
    op interface \
    ports { distance_buffer_4_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name distance_buffer_3_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_3_0_reload \
    op interface \
    ports { distance_buffer_3_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name distance_buffer_2_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_2_0_reload \
    op interface \
    ports { distance_buffer_2_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name distance_buffer_1_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_1_0_reload \
    op interface \
    ports { distance_buffer_1_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name distance_buffer_0_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_0_0_reload \
    op interface \
    ports { distance_buffer_0_0_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name bound \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bound \
    op interface \
    ports { bound { I 37 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name zext_ln27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln27 \
    op interface \
    ports { zext_ln27 { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name zext_ln36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36 \
    op interface \
    ports { zext_ln36 { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name zext_ln37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln37 \
    op interface \
    ports { zext_ln37 { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name distance_buffer_31_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_31_3_out \
    op interface \
    ports { distance_buffer_31_3_out { O 32 vector } distance_buffer_31_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name distance_buffer_30_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_30_3_out \
    op interface \
    ports { distance_buffer_30_3_out { O 32 vector } distance_buffer_30_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name distance_buffer_29_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_29_3_out \
    op interface \
    ports { distance_buffer_29_3_out { O 32 vector } distance_buffer_29_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name distance_buffer_28_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_28_3_out \
    op interface \
    ports { distance_buffer_28_3_out { O 32 vector } distance_buffer_28_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name distance_buffer_27_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_27_3_out \
    op interface \
    ports { distance_buffer_27_3_out { O 32 vector } distance_buffer_27_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name distance_buffer_26_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_26_3_out \
    op interface \
    ports { distance_buffer_26_3_out { O 32 vector } distance_buffer_26_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name distance_buffer_25_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_25_3_out \
    op interface \
    ports { distance_buffer_25_3_out { O 32 vector } distance_buffer_25_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name distance_buffer_24_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_24_3_out \
    op interface \
    ports { distance_buffer_24_3_out { O 32 vector } distance_buffer_24_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name distance_buffer_23_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_23_3_out \
    op interface \
    ports { distance_buffer_23_3_out { O 32 vector } distance_buffer_23_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name distance_buffer_22_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_22_3_out \
    op interface \
    ports { distance_buffer_22_3_out { O 32 vector } distance_buffer_22_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name distance_buffer_21_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_21_3_out \
    op interface \
    ports { distance_buffer_21_3_out { O 32 vector } distance_buffer_21_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name distance_buffer_20_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_20_3_out \
    op interface \
    ports { distance_buffer_20_3_out { O 32 vector } distance_buffer_20_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name distance_buffer_19_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_19_3_out \
    op interface \
    ports { distance_buffer_19_3_out { O 32 vector } distance_buffer_19_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name distance_buffer_18_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_18_3_out \
    op interface \
    ports { distance_buffer_18_3_out { O 32 vector } distance_buffer_18_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name distance_buffer_17_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_17_3_out \
    op interface \
    ports { distance_buffer_17_3_out { O 32 vector } distance_buffer_17_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name distance_buffer_16_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_16_3_out \
    op interface \
    ports { distance_buffer_16_3_out { O 32 vector } distance_buffer_16_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name distance_buffer_15_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_15_3_out \
    op interface \
    ports { distance_buffer_15_3_out { O 32 vector } distance_buffer_15_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name distance_buffer_14_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_14_3_out \
    op interface \
    ports { distance_buffer_14_3_out { O 32 vector } distance_buffer_14_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name distance_buffer_13_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_13_3_out \
    op interface \
    ports { distance_buffer_13_3_out { O 32 vector } distance_buffer_13_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name distance_buffer_12_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_12_3_out \
    op interface \
    ports { distance_buffer_12_3_out { O 32 vector } distance_buffer_12_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name distance_buffer_11_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_11_3_out \
    op interface \
    ports { distance_buffer_11_3_out { O 32 vector } distance_buffer_11_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name distance_buffer_10_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_10_3_out \
    op interface \
    ports { distance_buffer_10_3_out { O 32 vector } distance_buffer_10_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name distance_buffer_9_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_9_3_out \
    op interface \
    ports { distance_buffer_9_3_out { O 32 vector } distance_buffer_9_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name distance_buffer_8_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_8_3_out \
    op interface \
    ports { distance_buffer_8_3_out { O 32 vector } distance_buffer_8_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name distance_buffer_7_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_7_3_out \
    op interface \
    ports { distance_buffer_7_3_out { O 32 vector } distance_buffer_7_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name distance_buffer_6_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_6_3_out \
    op interface \
    ports { distance_buffer_6_3_out { O 32 vector } distance_buffer_6_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name distance_buffer_5_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_5_3_out \
    op interface \
    ports { distance_buffer_5_3_out { O 32 vector } distance_buffer_5_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name distance_buffer_4_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_4_3_out \
    op interface \
    ports { distance_buffer_4_3_out { O 32 vector } distance_buffer_4_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name distance_buffer_3_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_3_3_out \
    op interface \
    ports { distance_buffer_3_3_out { O 32 vector } distance_buffer_3_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name distance_buffer_2_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_2_3_out \
    op interface \
    ports { distance_buffer_2_3_out { O 32 vector } distance_buffer_2_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name distance_buffer_1_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_1_3_out \
    op interface \
    ports { distance_buffer_1_3_out { O 32 vector } distance_buffer_1_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name distance_buffer_0_31_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_0_31_out \
    op interface \
    ports { distance_buffer_0_31_out { O 32 vector } distance_buffer_0_31_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName sssp_kernel_0_flow_control_loop_pipe_sequential_init_U
set CompName sssp_kernel_0_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix sssp_kernel_0_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


