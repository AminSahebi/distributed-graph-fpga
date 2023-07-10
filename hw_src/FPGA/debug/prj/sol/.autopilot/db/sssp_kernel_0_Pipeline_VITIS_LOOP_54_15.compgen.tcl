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
    id 375 \
    name e_src_buffer_b \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename e_src_buffer_b \
    op interface \
    ports { e_src_buffer_b_address0 { O 12 vector } e_src_buffer_b_ce0 { O 1 bit } e_src_buffer_b_we0 { O 1 bit } e_src_buffer_b_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'e_src_buffer_b'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 376 \
    name e_dst_buffer_b \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename e_dst_buffer_b \
    op interface \
    ports { e_dst_buffer_b_address0 { O 12 vector } e_dst_buffer_b_ce0 { O 1 bit } e_dst_buffer_b_we0 { O 1 bit } e_dst_buffer_b_d0 { O 5 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'e_dst_buffer_b'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 377 \
    name out_deg_buffer_b \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_deg_buffer_b \
    op interface \
    ports { out_deg_buffer_b_address0 { O 12 vector } out_deg_buffer_b_ce0 { O 1 bit } out_deg_buffer_b_we0 { O 1 bit } out_deg_buffer_b_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_deg_buffer_b'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 378 \
    name zext_ln54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln54 \
    op interface \
    ports { zext_ln54 { I 37 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 379 \
    name e_src \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_e_src \
    op interface \
    ports { e_src { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 380 \
    name gmem \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem \
    op interface \
    ports { m_axi_gmem_AWVALID { O 1 bit } m_axi_gmem_AWREADY { I 1 bit } m_axi_gmem_AWADDR { O 64 vector } m_axi_gmem_AWID { O 1 vector } m_axi_gmem_AWLEN { O 32 vector } m_axi_gmem_AWSIZE { O 3 vector } m_axi_gmem_AWBURST { O 2 vector } m_axi_gmem_AWLOCK { O 2 vector } m_axi_gmem_AWCACHE { O 4 vector } m_axi_gmem_AWPROT { O 3 vector } m_axi_gmem_AWQOS { O 4 vector } m_axi_gmem_AWREGION { O 4 vector } m_axi_gmem_AWUSER { O 1 vector } m_axi_gmem_WVALID { O 1 bit } m_axi_gmem_WREADY { I 1 bit } m_axi_gmem_WDATA { O 512 vector } m_axi_gmem_WSTRB { O 64 vector } m_axi_gmem_WLAST { O 1 bit } m_axi_gmem_WID { O 1 vector } m_axi_gmem_WUSER { O 1 vector } m_axi_gmem_ARVALID { O 1 bit } m_axi_gmem_ARREADY { I 1 bit } m_axi_gmem_ARADDR { O 64 vector } m_axi_gmem_ARID { O 1 vector } m_axi_gmem_ARLEN { O 32 vector } m_axi_gmem_ARSIZE { O 3 vector } m_axi_gmem_ARBURST { O 2 vector } m_axi_gmem_ARLOCK { O 2 vector } m_axi_gmem_ARCACHE { O 4 vector } m_axi_gmem_ARPROT { O 3 vector } m_axi_gmem_ARQOS { O 4 vector } m_axi_gmem_ARREGION { O 4 vector } m_axi_gmem_ARUSER { O 1 vector } m_axi_gmem_RVALID { I 1 bit } m_axi_gmem_RREADY { O 1 bit } m_axi_gmem_RDATA { I 512 vector } m_axi_gmem_RLAST { I 1 bit } m_axi_gmem_RID { I 1 vector } m_axi_gmem_RUSER { I 1 vector } m_axi_gmem_RRESP { I 2 vector } m_axi_gmem_BVALID { I 1 bit } m_axi_gmem_BREADY { O 1 bit } m_axi_gmem_BRESP { I 2 vector } m_axi_gmem_BID { I 1 vector } m_axi_gmem_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 381 \
    name p_cast509 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast509 \
    op interface \
    ports { p_cast509 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 382 \
    name p_cast510 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast510 \
    op interface \
    ports { p_cast510 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 383 \
    name p_cast511 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast511 \
    op interface \
    ports { p_cast511 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 384 \
    name p_cast512 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast512 \
    op interface \
    ports { p_cast512 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 385 \
    name p_cast513 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast513 \
    op interface \
    ports { p_cast513 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 386 \
    name p_cast514 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast514 \
    op interface \
    ports { p_cast514 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 387 \
    name p_cast515 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast515 \
    op interface \
    ports { p_cast515 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 388 \
    name p_cast516 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast516 \
    op interface \
    ports { p_cast516 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 389 \
    name p_cast517 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast517 \
    op interface \
    ports { p_cast517 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 390 \
    name p_cast518 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast518 \
    op interface \
    ports { p_cast518 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 391 \
    name p_cast519 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast519 \
    op interface \
    ports { p_cast519 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 392 \
    name p_cast520 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast520 \
    op interface \
    ports { p_cast520 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 393 \
    name p_cast521 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast521 \
    op interface \
    ports { p_cast521 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 394 \
    name p_cast522 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast522 \
    op interface \
    ports { p_cast522 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 395 \
    name p_cast523 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast523 \
    op interface \
    ports { p_cast523 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 396 \
    name zext_ln56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln56 \
    op interface \
    ports { zext_ln56 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 397 \
    name e_dst \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_e_dst \
    op interface \
    ports { e_dst { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 398 \
    name p_cast525 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast525 \
    op interface \
    ports { p_cast525 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 399 \
    name p_cast526 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast526 \
    op interface \
    ports { p_cast526 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 400 \
    name p_cast527 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast527 \
    op interface \
    ports { p_cast527 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 401 \
    name p_cast528 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast528 \
    op interface \
    ports { p_cast528 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 402 \
    name p_cast529 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast529 \
    op interface \
    ports { p_cast529 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 403 \
    name p_cast530 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast530 \
    op interface \
    ports { p_cast530 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 404 \
    name p_cast531 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast531 \
    op interface \
    ports { p_cast531 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 405 \
    name p_cast532 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast532 \
    op interface \
    ports { p_cast532 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 406 \
    name p_cast533 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast533 \
    op interface \
    ports { p_cast533 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 407 \
    name p_cast534 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast534 \
    op interface \
    ports { p_cast534 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 408 \
    name p_cast535 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast535 \
    op interface \
    ports { p_cast535 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 409 \
    name p_cast536 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast536 \
    op interface \
    ports { p_cast536 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 410 \
    name p_cast537 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast537 \
    op interface \
    ports { p_cast537 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 411 \
    name p_cast538 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast538 \
    op interface \
    ports { p_cast538 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 412 \
    name p_cast539 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast539 \
    op interface \
    ports { p_cast539 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 413 \
    name zext_ln56_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln56_1 \
    op interface \
    ports { zext_ln56_1 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 414 \
    name out_degree \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_degree \
    op interface \
    ports { out_degree { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 415 \
    name p_cast541 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast541 \
    op interface \
    ports { p_cast541 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 416 \
    name p_cast542 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast542 \
    op interface \
    ports { p_cast542 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 417 \
    name p_cast543 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast543 \
    op interface \
    ports { p_cast543 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 418 \
    name p_cast544 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast544 \
    op interface \
    ports { p_cast544 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 419 \
    name p_cast545 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast545 \
    op interface \
    ports { p_cast545 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 420 \
    name p_cast546 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast546 \
    op interface \
    ports { p_cast546 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 421 \
    name p_cast547 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast547 \
    op interface \
    ports { p_cast547 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 422 \
    name p_cast548 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast548 \
    op interface \
    ports { p_cast548 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 423 \
    name p_cast549 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast549 \
    op interface \
    ports { p_cast549 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 424 \
    name p_cast550 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast550 \
    op interface \
    ports { p_cast550 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 425 \
    name p_cast551 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast551 \
    op interface \
    ports { p_cast551 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 426 \
    name p_cast552 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast552 \
    op interface \
    ports { p_cast552 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 427 \
    name p_cast553 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast553 \
    op interface \
    ports { p_cast553 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 428 \
    name p_cast554 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast554 \
    op interface \
    ports { p_cast554 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 429 \
    name p_cast555 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast555 \
    op interface \
    ports { p_cast555 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 430 \
    name zext_ln72 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln72 \
    op interface \
    ports { zext_ln72 { I 9 vector } } \
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


