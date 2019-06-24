; ModuleID = './[inter]dev.o.i'
source_filename = "./[inter]dev.o.i"
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

@datalink = common global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Error: pcap_datalink: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Error: Unknown Datalink Type: (%d)\0A\00", align 1
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
@fp = common global %struct.bpf_program zeroinitializer, align 8
@logname = common global i8* null, align 8
@tcpdl = common global i8* null, align 8
@tr = common global i16 0, align 2
@tl = common global i16 0, align 2
@graph = common global i16 0, align 2
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
define i32 @device(i8*, %struct.pcap*) #0 !dbg !160 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pcap*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i16, align 2
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !164, metadata !165), !dbg !166
  store %struct.pcap* %1, %struct.pcap** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pcap** %4, metadata !167, metadata !165), !dbg !168
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !169, metadata !165), !dbg !173
  call void @llvm.dbg.declare(metadata i16* %6, metadata !174, metadata !165), !dbg !175
  store i16 0, i16* %6, align 2, !dbg !176
  %7 = load %struct.pcap*, %struct.pcap** %4, align 8, !dbg !177
  %8 = call i32 @pcap_datalink(%struct.pcap* %7), !dbg !179
  store i32 %8, i32* @datalink, align 4, !dbg !180
  %9 = icmp slt i32 %8, 0, !dbg !181
  br i1 %9, label %10, label %13, !dbg !182

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !183
  %12 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i8* %11), !dbg !185
  br label %13, !dbg !186

; <label>:13:                                     ; preds = %10, %2
  %14 = load i32, i32* @datalink, align 4, !dbg !187
  switch i32 %14, label %23 [
    i32 1, label %15
    i32 0, label %16
    i32 9, label %16
    i32 108, label %17
    i32 8, label %18
    i32 12, label %19
    i32 15, label %20
    i32 16, label %20
    i32 10, label %21
    i32 113, label %22
  ], !dbg !188

; <label>:15:                                     ; preds = %13
  store i16 14, i16* %6, align 2, !dbg !189
  br label %26, !dbg !191

; <label>:16:                                     ; preds = %13, %13
  store i16 4, i16* %6, align 2, !dbg !192
  br label %26, !dbg !193

; <label>:17:                                     ; preds = %13
  store i16 12, i16* %6, align 2, !dbg !194
  br label %26, !dbg !195

; <label>:18:                                     ; preds = %13
  store i16 16, i16* %6, align 2, !dbg !196
  br label %26, !dbg !197

; <label>:19:                                     ; preds = %13
  store i16 0, i16* %6, align 2, !dbg !198
  br label %26, !dbg !199

; <label>:20:                                     ; preds = %13, %13
  store i16 24, i16* %6, align 2, !dbg !200
  br label %26, !dbg !201

; <label>:21:                                     ; preds = %13
  store i16 21, i16* %6, align 2, !dbg !202
  br label %26, !dbg !203

; <label>:22:                                     ; preds = %13
  store i16 16, i16* %6, align 2, !dbg !204
  br label %26, !dbg !205

; <label>:23:                                     ; preds = %13
  %24 = load i32, i32* @datalink, align 4, !dbg !206
  %25 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i32 %24), !dbg !207
  br label %26, !dbg !208

; <label>:26:                                     ; preds = %23, %22, %21, %20, %19, %18, %17, %16, %15
  %27 = load i16, i16* %6, align 2, !dbg !209
  %28 = zext i16 %27 to i32, !dbg !210
  ret i32 %28, !dbg !211
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @pcap_datalink(%struct.pcap*) #2

declare i32 @w_error(i32, i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!157, !158}
!llvm.ident = !{!159}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "[inter]dev.o.i", directory: "/home/lichi/Desktop/nast/[task]nast")
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
!160 = distinct !DISubprogram(name: "device", scope: !161, file: !161, line: 24, type: !162, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!161 = !DIFile(filename: "dev.c", directory: "/home/lichi/Desktop/nast/[task]nast")
!162 = !DISubroutineType(types: !163)
!163 = !{!13, !15, !99}
!164 = !DILocalVariable(name: "dev", arg: 1, scope: !160, file: !161, line: 24, type: !15)
!165 = !DIExpression()
!166 = !DILocation(line: 24, column: 19, scope: !160)
!167 = !DILocalVariable(name: "descr", arg: 2, scope: !160, file: !161, line: 24, type: !99)
!168 = !DILocation(line: 24, column: 32, scope: !160)
!169 = !DILocalVariable(name: "errbuf", scope: !160, file: !161, line: 26, type: !170)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 2048, align: 8, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 256)
!173 = !DILocation(line: 26, column: 9, scope: !160)
!174 = !DILocalVariable(name: "off", scope: !160, file: !161, line: 27, type: !124)
!175 = !DILocation(line: 27, column: 12, scope: !160)
!176 = !DILocation(line: 29, column: 8, scope: !160)
!177 = !DILocation(line: 31, column: 34, scope: !178)
!178 = distinct !DILexicalBlock(scope: !160, file: !161, line: 31, column: 8)
!179 = !DILocation(line: 31, column: 20, scope: !178)
!180 = !DILocation(line: 31, column: 18, scope: !178)
!181 = !DILocation(line: 31, column: 42, scope: !178)
!182 = !DILocation(line: 31, column: 8, scope: !160)
!183 = !DILocation(line: 33, column: 43, scope: !184)
!184 = distinct !DILexicalBlock(scope: !178, file: !161, line: 32, column: 6)
!185 = !DILocation(line: 33, column: 2, scope: !184)
!186 = !DILocation(line: 34, column: 6, scope: !184)
!187 = !DILocation(line: 35, column: 12, scope: !160)
!188 = !DILocation(line: 35, column: 4, scope: !160)
!189 = !DILocation(line: 38, column: 6, scope: !190)
!190 = distinct !DILexicalBlock(scope: !160, file: !161, line: 36, column: 6)
!191 = !DILocation(line: 39, column: 2, scope: !190)
!192 = !DILocation(line: 42, column: 6, scope: !190)
!193 = !DILocation(line: 43, column: 2, scope: !190)
!194 = !DILocation(line: 46, column: 12, scope: !190)
!195 = !DILocation(line: 47, column: 2, scope: !190)
!196 = !DILocation(line: 49, column: 6, scope: !190)
!197 = !DILocation(line: 50, column: 2, scope: !190)
!198 = !DILocation(line: 52, column: 6, scope: !190)
!199 = !DILocation(line: 53, column: 2, scope: !190)
!200 = !DILocation(line: 56, column: 6, scope: !190)
!201 = !DILocation(line: 57, column: 2, scope: !190)
!202 = !DILocation(line: 59, column: 6, scope: !190)
!203 = !DILocation(line: 60, column: 2, scope: !190)
!204 = !DILocation(line: 62, column: 13, scope: !190)
!205 = !DILocation(line: 63, column: 2, scope: !190)
!206 = !DILocation(line: 65, column: 53, scope: !190)
!207 = !DILocation(line: 65, column: 2, scope: !190)
!208 = !DILocation(line: 66, column: 6, scope: !190)
!209 = !DILocation(line: 67, column: 11, scope: !160)
!210 = !DILocation(line: 67, column: 10, scope: !160)
!211 = !DILocation(line: 67, column: 4, scope: !160)
