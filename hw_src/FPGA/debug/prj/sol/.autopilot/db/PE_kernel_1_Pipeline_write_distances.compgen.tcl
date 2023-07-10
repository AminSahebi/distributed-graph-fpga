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
    id 198 \
    name local_out \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_out \
    op interface \
    ports { local_out_address0 { O 5 vector } local_out_ce0 { O 1 bit } local_out_we0 { O 1 bit } local_out_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_out'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name distance_buffer_0_31_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_0_31_reload \
    op interface \
    ports { distance_buffer_0_31_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name distance_buffer_1_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_1_3_reload \
    op interface \
    ports { distance_buffer_1_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name distance_buffer_2_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_2_3_reload \
    op interface \
    ports { distance_buffer_2_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name distance_buffer_3_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_3_3_reload \
    op interface \
    ports { distance_buffer_3_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name distance_buffer_4_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_4_3_reload \
    op interface \
    ports { distance_buffer_4_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name distance_buffer_5_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_5_3_reload \
    op interface \
    ports { distance_buffer_5_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name distance_buffer_6_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_6_3_reload \
    op interface \
    ports { distance_buffer_6_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name distance_buffer_7_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_7_3_reload \
    op interface \
    ports { distance_buffer_7_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name distance_buffer_8_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_8_3_reload \
    op interface \
    ports { distance_buffer_8_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name distance_buffer_9_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_9_3_reload \
    op interface \
    ports { distance_buffer_9_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name distance_buffer_10_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_10_3_reload \
    op interface \
    ports { distance_buffer_10_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name distance_buffer_11_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_11_3_reload \
    op interface \
    ports { distance_buffer_11_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name distance_buffer_12_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_12_3_reload \
    op interface \
    ports { distance_buffer_12_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name distance_buffer_13_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_13_3_reload \
    op interface \
    ports { distance_buffer_13_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name distance_buffer_14_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_14_3_reload \
    op interface \
    ports { distance_buffer_14_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name distance_buffer_15_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_15_3_reload \
    op interface \
    ports { distance_buffer_15_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name distance_buffer_16_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_16_3_reload \
    op interface \
    ports { distance_buffer_16_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name distance_buffer_17_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_17_3_reload \
    op interface \
    ports { distance_buffer_17_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name distance_buffer_18_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_18_3_reload \
    op interface \
    ports { distance_buffer_18_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name distance_buffer_19_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_19_3_reload \
    op interface \
    ports { distance_buffer_19_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name distance_buffer_20_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_20_3_reload \
    op interface \
    ports { distance_buffer_20_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name distance_buffer_21_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_21_3_reload \
    op interface \
    ports { distance_buffer_21_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name distance_buffer_22_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_22_3_reload \
    op interface \
    ports { distance_buffer_22_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name distance_buffer_23_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_23_3_reload \
    op interface \
    ports { distance_buffer_23_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name distance_buffer_24_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_24_3_reload \
    op interface \
    ports { distance_buffer_24_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name distance_buffer_25_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_25_3_reload \
    op interface \
    ports { distance_buffer_25_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name distance_buffer_26_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_26_3_reload \
    op interface \
    ports { distance_buffer_26_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name distance_buffer_27_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_27_3_reload \
    op interface \
    ports { distance_buffer_27_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name distance_buffer_28_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_28_3_reload \
    op interface \
    ports { distance_buffer_28_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name distance_buffer_29_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_29_3_reload \
    op interface \
    ports { distance_buffer_29_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name distance_buffer_30_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_30_3_reload \
    op interface \
    ports { distance_buffer_30_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name distance_buffer_31_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_31_3_reload \
    op interface \
    ports { distance_buffer_31_3_reload { I 32 vector } } \
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


