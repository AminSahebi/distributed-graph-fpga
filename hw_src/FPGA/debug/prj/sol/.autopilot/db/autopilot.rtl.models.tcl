set SynModuleInfo {
  {SRCNAME sssp_kernel_0_Pipeline_VITIS_LOOP_54_1 MODELNAME sssp_kernel_0_Pipeline_VITIS_LOOP_54_1 RTLNAME sssp_kernel_0_sssp_kernel_0_Pipeline_VITIS_LOOP_54_1
    SUBMODULES {
      {MODELNAME sssp_kernel_0_flow_control_loop_pipe_sequential_init RTLNAME sssp_kernel_0_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME sssp_kernel_0_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME PE_kernel.1_Pipeline_init_distances MODELNAME PE_kernel_1_Pipeline_init_distances RTLNAME sssp_kernel_0_PE_kernel_1_Pipeline_init_distances}
  {SRCNAME PE_kernel.1_Pipeline_sssp_computation_VITIS_LOOP_33_1 MODELNAME PE_kernel_1_Pipeline_sssp_computation_VITIS_LOOP_33_1 RTLNAME sssp_kernel_0_PE_kernel_1_Pipeline_sssp_computation_VITIS_LOOP_33_1
    SUBMODULES {
      {MODELNAME sssp_kernel_0_mux_325_32_1_1 RTLNAME sssp_kernel_0_mux_325_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME PE_kernel.1_Pipeline_write_distances MODELNAME PE_kernel_1_Pipeline_write_distances RTLNAME sssp_kernel_0_PE_kernel_1_Pipeline_write_distances}
  {SRCNAME PE_kernel.1 MODELNAME PE_kernel_1 RTLNAME sssp_kernel_0_PE_kernel_1}
  {SRCNAME buffer_compute.1 MODELNAME buffer_compute_1 RTLNAME sssp_kernel_0_buffer_compute_1}
  {SRCNAME sssp_kernel_0_Pipeline_VITIS_LOOP_70_1 MODELNAME sssp_kernel_0_Pipeline_VITIS_LOOP_70_1 RTLNAME sssp_kernel_0_sssp_kernel_0_Pipeline_VITIS_LOOP_70_1}
  {SRCNAME sssp_kernel_0_Pipeline_VITIS_LOOP_54_15 MODELNAME sssp_kernel_0_Pipeline_VITIS_LOOP_54_15 RTLNAME sssp_kernel_0_sssp_kernel_0_Pipeline_VITIS_LOOP_54_15}
  {SRCNAME PE_kernel_Pipeline_init_distances MODELNAME PE_kernel_Pipeline_init_distances RTLNAME sssp_kernel_0_PE_kernel_Pipeline_init_distances}
  {SRCNAME PE_kernel_Pipeline_sssp_computation_VITIS_LOOP_33_1 MODELNAME PE_kernel_Pipeline_sssp_computation_VITIS_LOOP_33_1 RTLNAME sssp_kernel_0_PE_kernel_Pipeline_sssp_computation_VITIS_LOOP_33_1}
  {SRCNAME PE_kernel_Pipeline_write_distances MODELNAME PE_kernel_Pipeline_write_distances RTLNAME sssp_kernel_0_PE_kernel_Pipeline_write_distances}
  {SRCNAME PE_kernel MODELNAME PE_kernel RTLNAME sssp_kernel_0_PE_kernel}
  {SRCNAME buffer_compute MODELNAME buffer_compute RTLNAME sssp_kernel_0_buffer_compute}
  {SRCNAME sssp_kernel_0_Pipeline_VITIS_LOOP_70_16 MODELNAME sssp_kernel_0_Pipeline_VITIS_LOOP_70_16 RTLNAME sssp_kernel_0_sssp_kernel_0_Pipeline_VITIS_LOOP_70_16
    SUBMODULES {
      {MODELNAME sssp_kernel_0_mux_1287_32_1_1 RTLNAME sssp_kernel_0_mux_1287_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME sssp_kernel_0 MODELNAME sssp_kernel_0 RTLNAME sssp_kernel_0 IS_TOP 1
    SUBMODULES {
      {MODELNAME sssp_kernel_0_e_src_buffer_a RTLNAME sssp_kernel_0_e_src_buffer_a BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME sssp_kernel_0_e_dst_buffer_a RTLNAME sssp_kernel_0_e_dst_buffer_a BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME sssp_kernel_0_output_buffer_a RTLNAME sssp_kernel_0_output_buffer_a BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME sssp_kernel_0_output_buffer_b_0 RTLNAME sssp_kernel_0_output_buffer_b_0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME sssp_kernel_0_control_s_axi RTLNAME sssp_kernel_0_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME sssp_kernel_0_gmem_m_axi RTLNAME sssp_kernel_0_gmem_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
