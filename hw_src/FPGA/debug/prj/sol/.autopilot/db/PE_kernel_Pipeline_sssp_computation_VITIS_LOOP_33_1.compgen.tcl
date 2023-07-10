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
    id 501 \
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
    id 503 \
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
    id 505 \
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
    id 467 \
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
    id 468 \
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
    id 469 \
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
    id 470 \
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
    id 471 \
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
    id 472 \
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
    id 473 \
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
    id 474 \
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
    id 475 \
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
    id 476 \
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
    id 477 \
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
    id 478 \
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
    id 479 \
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
    id 480 \
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
    id 481 \
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
    id 482 \
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
    id 483 \
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
    id 484 \
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
    id 485 \
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
    id 486 \
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
    id 487 \
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
    id 488 \
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
    id 489 \
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
    id 490 \
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
    id 491 \
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
    id 492 \
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
    id 493 \
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
    id 494 \
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
    id 495 \
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
    id 496 \
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
    id 497 \
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
    id 498 \
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
    id 499 \
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
    id 500 \
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
    id 502 \
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
    id 504 \
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
    id 506 \
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
    id 507 \
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
    id 508 \
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
    id 509 \
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
    id 510 \
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
    id 511 \
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
    id 512 \
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
    id 513 \
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
    id 514 \
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
    id 515 \
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
    id 516 \
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
    id 517 \
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
    id 518 \
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
    id 519 \
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
    id 520 \
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
    id 521 \
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
    id 522 \
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
    id 523 \
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
    id 524 \
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
    id 525 \
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
    id 526 \
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
    id 527 \
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
    id 528 \
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
    id 529 \
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
    id 530 \
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
    id 531 \
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
    id 532 \
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
    id 533 \
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
    id 534 \
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
    id 535 \
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
    id 536 \
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
    id 537 \
    name distance_buffer_0_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_distance_buffer_0_3_out \
    op interface \
    ports { distance_buffer_0_3_out { O 32 vector } distance_buffer_0_3_out_ap_vld { O 1 bit } } \
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


