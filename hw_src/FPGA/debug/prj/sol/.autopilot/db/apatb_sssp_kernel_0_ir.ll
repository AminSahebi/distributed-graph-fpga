; ModuleID = '/home/u250/temp/distributed-graph-fpga/hw_src/FPGA/debug/prj/sol/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.ap_uint = type { %struct.ap_int_base }
%struct.ap_int_base = type { %struct.ssdm_int }
%struct.ssdm_int = type { i512 }

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #0

; Function Attrs: noinline
define void @apatb_sssp_kernel_0_ir(%struct.ap_uint* %e_src, %struct.ap_uint* %e_dst, %struct.ap_uint* %out_degree, %struct.ap_uint* %out_r, i32 %size, i32 %vertices) local_unnamed_addr #1 {
entry:
  %e_src_copy1 = alloca %struct.ap_uint, align 512
  %e_dst_copy2 = alloca %struct.ap_uint, align 512
  %out_degree_copy3 = alloca %struct.ap_uint, align 512
  %out_r_copy4 = alloca %struct.ap_uint, align 512
  call fastcc void @copy_in(%struct.ap_uint* %e_src, %struct.ap_uint* nonnull align 512 %e_src_copy1, %struct.ap_uint* %e_dst, %struct.ap_uint* nonnull align 512 %e_dst_copy2, %struct.ap_uint* %out_degree, %struct.ap_uint* nonnull align 512 %out_degree_copy3, %struct.ap_uint* %out_r, %struct.ap_uint* nonnull align 512 %out_r_copy4)
  call void @apatb_sssp_kernel_0_hw(%struct.ap_uint* %e_src_copy1, %struct.ap_uint* %e_dst_copy2, %struct.ap_uint* %out_degree_copy3, %struct.ap_uint* %out_r_copy4, i32 %size, i32 %vertices)
  call fastcc void @copy_out(%struct.ap_uint* %e_src, %struct.ap_uint* nonnull align 512 %e_src_copy1, %struct.ap_uint* %e_dst, %struct.ap_uint* nonnull align 512 %e_dst_copy2, %struct.ap_uint* %out_degree, %struct.ap_uint* nonnull align 512 %out_degree_copy3, %struct.ap_uint* %out_r, %struct.ap_uint* nonnull align 512 %out_r_copy4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%struct.ap_uint* readonly, %struct.ap_uint* noalias align 512, %struct.ap_uint* readonly, %struct.ap_uint* noalias align 512, %struct.ap_uint* readonly, %struct.ap_uint* noalias align 512, %struct.ap_uint* readonly, %struct.ap_uint* noalias align 512) unnamed_addr #2 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint(%struct.ap_uint* align 512 %1, %struct.ap_uint* %0)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint(%struct.ap_uint* align 512 %3, %struct.ap_uint* %2)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint(%struct.ap_uint* align 512 %5, %struct.ap_uint* %4)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint(%struct.ap_uint* align 512 %7, %struct.ap_uint* %6)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0struct.ap_uint(%struct.ap_uint* noalias align 512, %struct.ap_uint* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq %struct.ap_uint* %0, null
  %3 = icmp eq %struct.ap_uint* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %struct.ap_uint* %0 to i8*
  %6 = bitcast %struct.ap_uint* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 64, i1 false)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%struct.ap_uint*, %struct.ap_uint* noalias readonly align 512, %struct.ap_uint*, %struct.ap_uint* noalias readonly align 512, %struct.ap_uint*, %struct.ap_uint* noalias readonly align 512, %struct.ap_uint*, %struct.ap_uint* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint(%struct.ap_uint* %0, %struct.ap_uint* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint(%struct.ap_uint* %2, %struct.ap_uint* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint(%struct.ap_uint* %4, %struct.ap_uint* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint(%struct.ap_uint* %6, %struct.ap_uint* align 512 %7)
  ret void
}

declare void @apatb_sssp_kernel_0_hw(%struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, i32, i32)

define void @sssp_kernel_0_hw_stub_wrapper(%struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, i32, i32) #5 {
entry:
  call void @copy_out(%struct.ap_uint* null, %struct.ap_uint* %0, %struct.ap_uint* null, %struct.ap_uint* %1, %struct.ap_uint* null, %struct.ap_uint* %2, %struct.ap_uint* null, %struct.ap_uint* %3)
  call void @sssp_kernel_0_hw_stub(%struct.ap_uint* %0, %struct.ap_uint* %1, %struct.ap_uint* %2, %struct.ap_uint* %3, i32 %4, i32 %5)
  call void @copy_in(%struct.ap_uint* null, %struct.ap_uint* %0, %struct.ap_uint* null, %struct.ap_uint* %1, %struct.ap_uint* null, %struct.ap_uint* %2, %struct.ap_uint* null, %struct.ap_uint* %3)
  ret void
}

declare void @sssp_kernel_0_hw_stub(%struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, i32, i32)

attributes #0 = { argmemonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
