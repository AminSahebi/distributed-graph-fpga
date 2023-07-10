# This script segment is generated automatically by AutoPilot

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
    id 58 \
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


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
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
    id 59 \
    name distance_buffer_31_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_31_0_out \
    op interface \
    ports { distance_buffer_31_0_out { O 32 vector } distance_buffer_31_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name distance_buffer_30_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_30_0_out \
    op interface \
    ports { distance_buffer_30_0_out { O 32 vector } distance_buffer_30_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name distance_buffer_29_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_29_0_out \
    op interface \
    ports { distance_buffer_29_0_out { O 32 vector } distance_buffer_29_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name distance_buffer_28_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_28_0_out \
    op interface \
    ports { distance_buffer_28_0_out { O 32 vector } distance_buffer_28_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name distance_buffer_27_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_27_0_out \
    op interface \
    ports { distance_buffer_27_0_out { O 32 vector } distance_buffer_27_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name distance_buffer_26_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_26_0_out \
    op interface \
    ports { distance_buffer_26_0_out { O 32 vector } distance_buffer_26_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name distance_buffer_25_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_25_0_out \
    op interface \
    ports { distance_buffer_25_0_out { O 32 vector } distance_buffer_25_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name distance_buffer_24_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_24_0_out \
    op interface \
    ports { distance_buffer_24_0_out { O 32 vector } distance_buffer_24_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name distance_buffer_23_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_23_0_out \
    op interface \
    ports { distance_buffer_23_0_out { O 32 vector } distance_buffer_23_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name distance_buffer_22_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_22_0_out \
    op interface \
    ports { distance_buffer_22_0_out { O 32 vector } distance_buffer_22_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name distance_buffer_21_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_21_0_out \
    op interface \
    ports { distance_buffer_21_0_out { O 32 vector } distance_buffer_21_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name distance_buffer_20_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_20_0_out \
    op interface \
    ports { distance_buffer_20_0_out { O 32 vector } distance_buffer_20_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name distance_buffer_19_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_19_0_out \
    op interface \
    ports { distance_buffer_19_0_out { O 32 vector } distance_buffer_19_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name distance_buffer_18_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_18_0_out \
    op interface \
    ports { distance_buffer_18_0_out { O 32 vector } distance_buffer_18_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name distance_buffer_17_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_17_0_out \
    op interface \
    ports { distance_buffer_17_0_out { O 32 vector } distance_buffer_17_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name distance_buffer_16_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_16_0_out \
    op interface \
    ports { distance_buffer_16_0_out { O 32 vector } distance_buffer_16_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name distance_buffer_15_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_15_0_out \
    op interface \
    ports { distance_buffer_15_0_out { O 32 vector } distance_buffer_15_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name distance_buffer_14_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_14_0_out \
    op interface \
    ports { distance_buffer_14_0_out { O 32 vector } distance_buffer_14_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name distance_buffer_13_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_13_0_out \
    op interface \
    ports { distance_buffer_13_0_out { O 32 vector } distance_buffer_13_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name distance_buffer_12_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_12_0_out \
    op interface \
    ports { distance_buffer_12_0_out { O 32 vector } distance_buffer_12_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name distance_buffer_11_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_11_0_out \
    op interface \
    ports { distance_buffer_11_0_out { O 32 vector } distance_buffer_11_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name distance_buffer_10_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_10_0_out \
    op interface \
    ports { distance_buffer_10_0_out { O 32 vector } distance_buffer_10_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name distance_buffer_9_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_9_0_out \
    op interface \
    ports { distance_buffer_9_0_out { O 32 vector } distance_buffer_9_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name distance_buffer_8_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_8_0_out \
    op interface \
    ports { distance_buffer_8_0_out { O 32 vector } distance_buffer_8_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name distance_buffer_7_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_7_0_out \
    op interface \
    ports { distance_buffer_7_0_out { O 32 vector } distance_buffer_7_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name distance_buffer_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_6_0_out \
    op interface \
    ports { distance_buffer_6_0_out { O 32 vector } distance_buffer_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name distance_buffer_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_5_0_out \
    op interface \
    ports { distance_buffer_5_0_out { O 32 vector } distance_buffer_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name distance_buffer_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_4_0_out \
    op interface \
    ports { distance_buffer_4_0_out { O 32 vector } distance_buffer_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name distance_buffer_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_3_0_out \
    op interface \
    ports { distance_buffer_3_0_out { O 32 vector } distance_buffer_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name distance_buffer_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_2_0_out \
    op interface \
    ports { distance_buffer_2_0_out { O 32 vector } distance_buffer_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name distance_buffer_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_1_0_out \
    op interface \
    ports { distance_buffer_1_0_out { O 32 vector } distance_buffer_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name distance_buffer_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_0_0_out \
    op interface \
    ports { distance_buffer_0_0_out { O 32 vector } distance_buffer_0_0_out_ap_vld { O 1 bit } } \
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


