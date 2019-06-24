; ModuleID = './[inter]error.o.i'
source_filename = "./[inter]error.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pcap_pkthdr = type { %struct.timeval, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.pcap = type opaque
%struct.pcap_dumper = type opaque
%struct.pcap_stat = type { i32, i32, i32 }
%struct.bpf_program = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i16, i8, i8, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@graph = common global i16 0, align 2
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [6 x i8] c"\0A%s\0A\0A\00", align 1
@logd = common global %struct._IO_FILE* null, align 8
@offset = common global i16 0, align 2
@npkt = common global i32 0, align 4
@packet = common global i8* null, align 8
@buf = common global i8* null, align 8
@hdr = common global %struct.pcap_pkthdr zeroinitializer, align 8
@descr = common global %struct.pcap* null, align 8
@dumper = common global %struct.pcap_dumper* null, align 8
@statistic = common global %struct.pcap_stat zeroinitializer, align 4
@maskp = common global i32 0, align 4
@netp = common global i32 0, align 4
@datalink = common global i32 0, align 4
@fp = common global %struct.bpf_program zeroinitializer, align 8
@logname = common global i8* null, align 8
@tcpdl = common global i8* null, align 8
@tr = common global i16 0, align 2
@tl = common global i16 0, align 2
@cont = common global i16 0, align 2
@stream_glob = common global i32 0, align 4
@bc_glob = common global i32 0, align 4
@sniff_glob = common global i32 0, align 4
@rst_glob = common global i32 0, align 4
@arp_glob = common global i32 0, align 4
@pt = common global [2 x i64] zeroinitializer, align 16
@lg = common global i32 0, align 4
@tm = common global i64 0, align 8
@timed = common global [60 x i8] zeroinitializer, align 16
@demonize = common global i16 0, align 2
@line_s = common global i32 0, align 4
@row_s = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @w_error(i32, i8*, ...) #0 !dbg !160 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [100 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !164, metadata !165), !dbg !166
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !167, metadata !165), !dbg !168
  call void @llvm.dbg.declare(metadata [100 x i8]* %5, metadata !169, metadata !165), !dbg !173
  call void @llvm.dbg.declare(metadata i32* %6, metadata !174, metadata !165), !dbg !175
  call void @llvm.dbg.declare(metadata i32* %7, metadata !176, metadata !165), !dbg !177
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !178, metadata !165), !dbg !190
  store i32 0, i32* %7, align 4, !dbg !191
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !192
  %10 = bitcast %struct.__va_list_tag* %9 to i8*, !dbg !192
  call void @llvm.va_start(i8* %10), !dbg !192
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i32 0, i32 0, !dbg !193
  %12 = load i8*, i8** %4, align 8, !dbg !194
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !195
  %14 = call i32 @vsnprintf(i8* %11, i64 100, i8* %12, %struct.__va_list_tag* %13) #2, !dbg !196
  store i32 %14, i32* %6, align 4, !dbg !197
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !198
  %16 = bitcast %struct.__va_list_tag* %15 to i8*, !dbg !198
  call void @llvm.va_end(i8* %16), !dbg !198
  %17 = load i16, i16* @graph, align 2, !dbg !199
  %18 = icmp ne i16 %17, 0, !dbg !199
  br i1 %18, label %19, label %23, !dbg !201

; <label>:19:                                     ; preds = %2
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i32 0, i32 0, !dbg !202
  %21 = load i32, i32* %3, align 4, !dbg !204
  %22 = call i32 @n_error(i8* %20, i32 %21), !dbg !205
  ret i32 -1, !dbg !206

; <label>:23:                                     ; preds = %2
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !207
  %25 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i32 0, i32 0, !dbg !208
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* %25), !dbg !209
  call void @exit(i32 -1) #6, !dbg !210
  unreachable, !dbg !210
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

declare i32 @n_error(i8*, i32) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!157, !158}
!llvm.ident = !{!159}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "[inter]error.o.i", directory: "/home/lichi/Desktop/nast/[task]nast")
!2 = !{}
!3 = !{!4, !69, !71, !72, !78, !79, !98, !102, !106, !112, !113, !114, !115, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !146, !147, !150, !154, !155, !156}
!4 = distinct !DIGlobalVariable(name: "logd", scope: !0, file: !5, line: 98, type: !6, isLocal: false, isDefinition: true, variable: %struct._IO_FILE** @logd)
!5 = !DIFile(filename: "include/nast.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !8, line: 48, baseType: !9)
!8 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !10, line: 241, size: 1728, align: 64, elements: !11)
!10 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!11 = !{!12, !14, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !35, !36, !37, !38, !42, !44, !46, !50, !53, !55, !57, !58, !59, !60, !64, !65}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !9, file: !10, line: 242, baseType: !13, size: 32, align: 32)
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !9, file: !10, line: 247, baseType: !15, size: 64, align: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !9, file: !10, line: 248, baseType: !15, size: 64, align: 64, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !9, file: !10, line: 249, baseType: !15, size: 64, align: 64, offset: 192)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !9, file: !10, line: 250, baseType: !15, size: 64, align: 64, offset: 256)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !9, file: !10, line: 251, baseType: !15, size: 64, align: 64, offset: 320)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !9, file: !10, line: 252, baseType: !15, size: 64, align: 64, offset: 384)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !9, file: !10, line: 253, baseType: !15, size: 64, align: 64, offset: 448)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !9, file: !10, line: 254, baseType: !15, size: 64, align: 64, offset: 512)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !9, file: !10, line: 256, baseType: !15, size: 64, align: 64, offset: 576)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !9, file: !10, line: 257, baseType: !15, size: 64, align: 64, offset: 640)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !9, file: !10, line: 258, baseType: !15, size: 64, align: 64, offset: 704)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !9, file: !10, line: 260, baseType: !28, size: 64, align: 64, offset: 768)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !10, line: 156, size: 192, align: 64, elements: !30)
!30 = !{!31, !32, !34}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !29, file: !10, line: 157, baseType: !28, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !29, file: !10, line: 158, baseType: !33, size: 64, align: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !29, file: !10, line: 162, baseType: !13, size: 32, align: 32, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !9, file: !10, line: 262, baseType: !33, size: 64, align: 64, offset: 832)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !9, file: !10, line: 264, baseType: !13, size: 32, align: 32, offset: 896)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !9, file: !10, line: 268, baseType: !13, size: 32, align: 32, offset: 928)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !9, file: !10, line: 270, baseType: !39, size: 64, align: 64, offset: 960)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !40, line: 131, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!41 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !9, file: !10, line: 274, baseType: !43, size: 16, align: 16, offset: 1024)
!43 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !9, file: !10, line: 275, baseType: !45, size: 8, align: 8, offset: 1040)
!45 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !9, file: !10, line: 276, baseType: !47, size: 8, align: 8, offset: 1048)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 8, align: 8, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 1)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !9, file: !10, line: 280, baseType: !51, size: 64, align: 64, offset: 1088)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !10, line: 150, baseType: null)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !9, file: !10, line: 289, baseType: !54, size: 64, align: 64, offset: 1152)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !40, line: 132, baseType: !41)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !9, file: !10, line: 297, baseType: !56, size: 64, align: 64, offset: 1216)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !9, file: !10, line: 298, baseType: !56, size: 64, align: 64, offset: 1280)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !9, file: !10, line: 299, baseType: !56, size: 64, align: 64, offset: 1344)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !9, file: !10, line: 300, baseType: !56, size: 64, align: 64, offset: 1408)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !9, file: !10, line: 302, baseType: !61, size: 64, align: 64, offset: 1472)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !62, line: 216, baseType: !63)
!62 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!63 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !9, file: !10, line: 303, baseType: !13, size: 32, align: 32, offset: 1536)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !9, file: !10, line: 305, baseType: !66, size: 160, align: 8, offset: 1568)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 160, align: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 20)
!69 = distinct !DIGlobalVariable(name: "offset", scope: !0, file: !5, line: 99, type: !70, isLocal: false, isDefinition: true, variable: i16* @offset)
!70 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!71 = distinct !DIGlobalVariable(name: "npkt", scope: !0, file: !5, line: 100, type: !13, isLocal: false, isDefinition: true, variable: i32* @npkt)
!72 = distinct !DIGlobalVariable(name: "packet", scope: !0, file: !5, line: 101, type: !73, isLocal: false, isDefinition: true, variable: i8** @packet)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !75, line: 33, baseType: !76)
!75 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !40, line: 30, baseType: !77)
!77 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!78 = distinct !DIGlobalVariable(name: "buf", scope: !0, file: !5, line: 102, type: !73, isLocal: false, isDefinition: true, variable: i8** @buf)
!79 = distinct !DIGlobalVariable(name: "hdr", scope: !0, file: !5, line: 103, type: !80, isLocal: false, isDefinition: true, variable: %struct.pcap_pkthdr* @hdr)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_pkthdr", file: !81, line: 199, size: 192, align: 64, elements: !82)
!81 = !DIFile(filename: "/usr/local/include/pcap/pcap.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!82 = !{!83, !91, !97}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !80, file: !81, line: 200, baseType: !84, size: 128, align: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !85, line: 30, size: 128, align: 64, elements: !86)
!85 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!86 = !{!87, !89}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !84, file: !85, line: 32, baseType: !88, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !40, line: 139, baseType: !41)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !84, file: !85, line: 33, baseType: !90, size: 64, align: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !40, line: 141, baseType: !41)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "caplen", scope: !80, file: !81, line: 201, baseType: !92, size: 32, align: 32, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "bpf_u_int32", file: !93, line: 85, baseType: !94)
!93 = !DIFile(filename: "/usr/local/include/pcap/bpf.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !75, line: 35, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !40, line: 32, baseType: !96)
!96 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !80, file: !81, line: 202, baseType: !92, size: 32, align: 32, offset: 160)
!98 = distinct !DIGlobalVariable(name: "descr", scope: !0, file: !5, line: 104, type: !99, isLocal: false, isDefinition: true, variable: %struct.pcap** @descr)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_t", file: !81, line: 118, baseType: !101)
!101 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap", file: !81, line: 118, flags: DIFlagFwdDecl)
!102 = distinct !DIGlobalVariable(name: "dumper", scope: !0, file: !5, line: 105, type: !103, isLocal: false, isDefinition: true, variable: %struct.pcap_dumper** @dumper)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_dumper_t", file: !81, line: 119, baseType: !105)
!105 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_dumper", file: !81, line: 119, flags: DIFlagFwdDecl)
!106 = distinct !DIGlobalVariable(name: "statistic", scope: !0, file: !5, line: 106, type: !107, isLocal: false, isDefinition: true, variable: %struct.pcap_stat* @statistic)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_stat", file: !81, line: 208, size: 96, align: 32, elements: !108)
!108 = !{!109, !110, !111}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "ps_recv", scope: !107, file: !81, line: 209, baseType: !94, size: 32, align: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "ps_drop", scope: !107, file: !81, line: 210, baseType: !94, size: 32, align: 32, offset: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ps_ifdrop", scope: !107, file: !81, line: 211, baseType: !94, size: 32, align: 32, offset: 64)
!112 = distinct !DIGlobalVariable(name: "maskp", scope: !0, file: !5, line: 107, type: !92, isLocal: false, isDefinition: true, variable: i32* @maskp)
!113 = distinct !DIGlobalVariable(name: "netp", scope: !0, file: !5, line: 108, type: !92, isLocal: false, isDefinition: true, variable: i32* @netp)
!114 = distinct !DIGlobalVariable(name: "datalink", scope: !0, file: !5, line: 109, type: !13, isLocal: false, isDefinition: true, variable: i32* @datalink)
!115 = distinct !DIGlobalVariable(name: "fp", scope: !0, file: !5, line: 110, type: !116, isLocal: false, isDefinition: true, variable: %struct.bpf_program* @fp)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_program", file: !93, line: 104, size: 128, align: 64, elements: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "bf_len", scope: !116, file: !93, line: 105, baseType: !94, size: 32, align: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "bf_insns", scope: !116, file: !93, line: 106, baseType: !120, size: 64, align: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_insn", file: !93, line: 234, size: 64, align: 32, elements: !122)
!122 = !{!123, !126, !127, !128}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !121, file: !93, line: 235, baseType: !124, size: 16, align: 16)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !75, line: 34, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !40, line: 31, baseType: !43)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "jt", scope: !121, file: !93, line: 236, baseType: !74, size: 8, align: 8, offset: 16)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "jf", scope: !121, file: !93, line: 237, baseType: !74, size: 8, align: 8, offset: 24)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !121, file: !93, line: 238, baseType: !92, size: 32, align: 32, offset: 32)
!129 = distinct !DIGlobalVariable(name: "logname", scope: !0, file: !5, line: 111, type: !15, isLocal: false, isDefinition: true, variable: i8** @logname)
!130 = distinct !DIGlobalVariable(name: "tcpdl", scope: !0, file: !5, line: 112, type: !15, isLocal: false, isDefinition: true, variable: i8** @tcpdl)
!131 = distinct !DIGlobalVariable(name: "tr", scope: !0, file: !5, line: 113, type: !124, isLocal: false, isDefinition: true, variable: i16* @tr)
!132 = distinct !DIGlobalVariable(name: "tl", scope: !0, file: !5, line: 113, type: !124, isLocal: false, isDefinition: true, variable: i16* @tl)
!133 = distinct !DIGlobalVariable(name: "graph", scope: !0, file: !5, line: 114, type: !124, isLocal: false, isDefinition: true, variable: i16* @graph)
!134 = distinct !DIGlobalVariable(name: "cont", scope: !0, file: !5, line: 115, type: !124, isLocal: false, isDefinition: true, variable: i16* @cont)
!135 = distinct !DIGlobalVariable(name: "stream_glob", scope: !0, file: !5, line: 117, type: !13, isLocal: false, isDefinition: true, variable: i32* @stream_glob)
!136 = distinct !DIGlobalVariable(name: "bc_glob", scope: !0, file: !5, line: 118, type: !13, isLocal: false, isDefinition: true, variable: i32* @bc_glob)
!137 = distinct !DIGlobalVariable(name: "sniff_glob", scope: !0, file: !5, line: 119, type: !13, isLocal: false, isDefinition: true, variable: i32* @sniff_glob)
!138 = distinct !DIGlobalVariable(name: "rst_glob", scope: !0, file: !5, line: 120, type: !13, isLocal: false, isDefinition: true, variable: i32* @rst_glob)
!139 = distinct !DIGlobalVariable(name: "arp_glob", scope: !0, file: !5, line: 121, type: !13, isLocal: false, isDefinition: true, variable: i32* @arp_glob)
!140 = distinct !DIGlobalVariable(name: "pt", scope: !0, file: !5, line: 122, type: !141, isLocal: false, isDefinition: true, variable: [2 x i64]* @pt)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 128, align: 64, elements: !144)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !143, line: 60, baseType: !63)
!143 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!144 = !{!145}
!145 = !DISubrange(count: 2)
!146 = distinct !DIGlobalVariable(name: "lg", scope: !0, file: !5, line: 123, type: !13, isLocal: false, isDefinition: true, variable: i32* @lg)
!147 = distinct !DIGlobalVariable(name: "tm", scope: !0, file: !5, line: 132, type: !148, isLocal: false, isDefinition: true, variable: i64* @tm)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !149, line: 75, baseType: !88)
!149 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!150 = distinct !DIGlobalVariable(name: "timed", scope: !0, file: !5, line: 133, type: !151, isLocal: false, isDefinition: true, variable: [60 x i8]* @timed)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 480, align: 8, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 60)
!154 = distinct !DIGlobalVariable(name: "demonize", scope: !0, file: !5, line: 136, type: !124, isLocal: false, isDefinition: true, variable: i16* @demonize)
!155 = distinct !DIGlobalVariable(name: "line_s", scope: !0, file: !5, line: 138, type: !13, isLocal: false, isDefinition: true, variable: i32* @line_s)
!156 = distinct !DIGlobalVariable(name: "row_s", scope: !0, file: !5, line: 139, type: !13, isLocal: false, isDefinition: true, variable: i32* @row_s)
!157 = !{i32 2, !"Dwarf Version", i32 4}
!158 = !{i32 2, !"Debug Info Version", i32 3}
!159 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!160 = distinct !DISubprogram(name: "w_error", scope: !161, file: !161, line: 29, type: !162, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!161 = !DIFile(filename: "error.c", directory: "/home/lichi/Desktop/nast/[task]nast")
!162 = !DISubroutineType(types: !163)
!163 = !{!13, !13, !15, null}
!164 = !DILocalVariable(name: "fatal", arg: 1, scope: !160, file: !161, line: 29, type: !13)
!165 = !DIExpression()
!166 = !DILocation(line: 29, column: 17, scope: !160)
!167 = !DILocalVariable(name: "err", arg: 2, scope: !160, file: !161, line: 29, type: !15)
!168 = !DILocation(line: 29, column: 30, scope: !160)
!169 = !DILocalVariable(name: "error", scope: !160, file: !161, line: 31, type: !170)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 800, align: 8, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 100)
!173 = !DILocation(line: 31, column: 9, scope: !160)
!174 = !DILocalVariable(name: "n", scope: !160, file: !161, line: 32, type: !13)
!175 = !DILocation(line: 32, column: 8, scope: !160)
!176 = !DILocalVariable(name: "ris", scope: !160, file: !161, line: 32, type: !13)
!177 = !DILocation(line: 32, column: 10, scope: !160)
!178 = !DILocalVariable(name: "ap", scope: !160, file: !161, line: 33, type: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !8, line: 79, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !181, line: 40, baseType: !182)
!181 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 33, baseType: !183)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 192, align: 64, elements: !48)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 33, size: 192, align: 64, elements: !185)
!185 = !{!186, !187, !188, !189}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !184, file: !1, line: 33, baseType: !96, size: 32, align: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !184, file: !1, line: 33, baseType: !96, size: 32, align: 32, offset: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !184, file: !1, line: 33, baseType: !56, size: 64, align: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !184, file: !1, line: 33, baseType: !56, size: 64, align: 64, offset: 128)
!190 = !DILocation(line: 33, column: 12, scope: !160)
!191 = !DILocation(line: 34, column: 8, scope: !160)
!192 = !DILocation(line: 36, column: 3, scope: !160)
!193 = !DILocation(line: 37, column: 18, scope: !160)
!194 = !DILocation(line: 37, column: 30, scope: !160)
!195 = !DILocation(line: 37, column: 35, scope: !160)
!196 = !DILocation(line: 37, column: 8, scope: !160)
!197 = !DILocation(line: 37, column: 6, scope: !160)
!198 = !DILocation(line: 38, column: 3, scope: !160)
!199 = !DILocation(line: 41, column: 7, scope: !200)
!200 = distinct !DILexicalBlock(scope: !160, file: !161, line: 41, column: 7)
!201 = !DILocation(line: 41, column: 7, scope: !160)
!202 = !DILocation(line: 42, column: 14, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !161, line: 41, column: 13)
!204 = !DILocation(line: 42, column: 21, scope: !203)
!205 = !DILocation(line: 42, column: 6, scope: !203)
!206 = !DILocation(line: 43, column: 6, scope: !203)
!207 = !DILocation(line: 47, column: 11, scope: !160)
!208 = !DILocation(line: 47, column: 31, scope: !160)
!209 = !DILocation(line: 47, column: 4, scope: !160)
!210 = !DILocation(line: 48, column: 4, scope: !160)
