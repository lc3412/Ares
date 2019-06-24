; ModuleID = './[inter]src--mock_libnet.o.i'
source_filename = "./[inter]src--mock_libnet.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.libnet_context = type { i32, i32, %struct.libnet_protocol_block*, %struct.libnet_protocol_block*, i32, i32, i32, i32, i8*, %struct.libnet_stats, i32, [64 x i8], [256 x i8], i32 }
%struct.libnet_protocol_block = type { i8*, i32, i16, i32, i8, i8, i32, %struct.libnet_protocol_block*, %struct.libnet_protocol_block* }
%struct.libnet_stats = type { i64, i64, i64 }

@mock_libnet_null_ok = global i32 1, align 4
@mock_libnet_lo_ok = global i32 1, align 4
@.str = private unnamed_addr constant [4 x i8] c"bad\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"good\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"lo\00", align 1

; Function Attrs: nounwind uwtable
define void @libnet_destroy(%struct.libnet_context*) #0 !dbg !13 {
  %2 = alloca %struct.libnet_context*, align 8
  store %struct.libnet_context* %0, %struct.libnet_context** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.libnet_context** %2, metadata !75, metadata !76), !dbg !77
  %3 = load %struct.libnet_context*, %struct.libnet_context** %2, align 8, !dbg !78
  %4 = bitcast %struct.libnet_context* %3 to i8*, !dbg !78
  call void @free(i8* %4) #4, !dbg !79
  ret void, !dbg !80
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.libnet_context* @libnet_init(i32, i8*, i8*) #0 !dbg !81 {
  %4 = alloca %struct.libnet_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !86, metadata !76), !dbg !87
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !88, metadata !76), !dbg !89
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !90, metadata !76), !dbg !91
  %8 = load i32, i32* %5, align 4, !dbg !92
  %9 = load i8*, i8** %7, align 8, !dbg !93
  %10 = load i8*, i8** %6, align 8, !dbg !94
  %11 = icmp eq i8* %10, null, !dbg !96
  br i1 %11, label %12, label %19, !dbg !97

; <label>:12:                                     ; preds = %3
  %13 = load i32, i32* @mock_libnet_null_ok, align 4, !dbg !98
  %14 = icmp ne i32 %13, 0, !dbg !98
  br i1 %14, label %15, label %18, !dbg !101

; <label>:15:                                     ; preds = %12
  %16 = call noalias i8* @malloc(i64 1) #4, !dbg !102
  %17 = bitcast i8* %16 to %struct.libnet_context*, !dbg !102
  store %struct.libnet_context* %17, %struct.libnet_context** %4, align 8, !dbg !104
  br label %42, !dbg !104

; <label>:18:                                     ; preds = %12
  store %struct.libnet_context* null, %struct.libnet_context** %4, align 8, !dbg !105
  br label %42, !dbg !105

; <label>:19:                                     ; preds = %3
  %20 = load i8*, i8** %6, align 8, !dbg !106
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #5, !dbg !108
  %22 = icmp ne i32 %21, 0, !dbg !108
  br i1 %22, label %24, label %23, !dbg !109

; <label>:23:                                     ; preds = %19
  store %struct.libnet_context* null, %struct.libnet_context** %4, align 8, !dbg !110
  br label %42, !dbg !110

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %6, align 8, !dbg !112
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #5, !dbg !114
  %27 = icmp ne i32 %26, 0, !dbg !114
  br i1 %27, label %31, label %28, !dbg !115

; <label>:28:                                     ; preds = %24
  %29 = call noalias i8* @malloc(i64 1) #4, !dbg !116
  %30 = bitcast i8* %29 to %struct.libnet_context*, !dbg !116
  store %struct.libnet_context* %30, %struct.libnet_context** %4, align 8, !dbg !118
  br label %42, !dbg !118

; <label>:31:                                     ; preds = %24
  %32 = load i32, i32* @mock_libnet_lo_ok, align 4, !dbg !119
  %33 = icmp ne i32 %32, 0, !dbg !119
  br i1 %33, label %34, label %41, !dbg !121

; <label>:34:                                     ; preds = %31
  %35 = load i8*, i8** %6, align 8, !dbg !122
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)) #5, !dbg !124
  %37 = icmp ne i32 %36, 0, !dbg !124
  br i1 %37, label %41, label %38, !dbg !125

; <label>:38:                                     ; preds = %34
  %39 = call noalias i8* @malloc(i64 1) #4, !dbg !126
  %40 = bitcast i8* %39 to %struct.libnet_context*, !dbg !126
  store %struct.libnet_context* %40, %struct.libnet_context** %4, align 8, !dbg !128
  br label %42, !dbg !128

; <label>:41:                                     ; preds = %34, %31
  store %struct.libnet_context* null, %struct.libnet_context** %4, align 8, !dbg !129
  br label %42, !dbg !129

; <label>:42:                                     ; preds = %41, %38, %28, %23, %18, %15
  %43 = load %struct.libnet_context*, %struct.libnet_context** %4, align 8, !dbg !130
  ret %struct.libnet_context* %43, !dbg !130
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "[inter]src--mock_libnet.o.i", directory: "/home/lichi/Desktop/arping/[task]src--fuzz_pingip")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !9}
!6 = distinct !DIGlobalVariable(name: "mock_libnet_null_ok", scope: !0, file: !7, line: 5, type: !8, isLocal: false, isDefinition: true, variable: i32* @mock_libnet_null_ok)
!7 = !DIFile(filename: "mock_libnet.c", directory: "/home/lichi/Desktop/arping/[task]src--fuzz_pingip")
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = distinct !DIGlobalVariable(name: "mock_libnet_lo_ok", scope: !0, file: !7, line: 6, type: !8, isLocal: false, isDefinition: true, variable: i32* @mock_libnet_lo_ok)
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!13 = distinct !DISubprogram(name: "libnet_destroy", scope: !7, file: !7, line: 9, type: !14, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_t", file: !18, line: 235, baseType: !19)
!18 = !DIFile(filename: "/usr/include/libnet/libnet-structures.h", directory: "/home/lichi/Desktop/arping/[task]src--fuzz_pingip")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_context", file: !18, line: 186, size: 3200, align: 64, elements: !20)
!20 = !{!21, !22, !23, !49, !50, !51, !52, !53, !54, !57, !65, !66, !70, !74}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !19, file: !18, line: 192, baseType: !8, size: 32, align: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "injection_type", scope: !19, file: !18, line: 194, baseType: !8, size: 32, align: 32, offset: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_blocks", scope: !19, file: !18, line: 206, baseType: !24, size: 64, align: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_pblock_t", file: !18, line: 178, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_protocol_block", file: !18, line: 77, size: 384, align: 64, elements: !27)
!27 = !{!28, !33, !36, !39, !40, !41, !42, !46, !48}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !26, file: !18, line: 79, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !31, line: 48, baseType: !32)
!31 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/arping/[task]src--fuzz_pingip")
!32 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "b_len", scope: !26, file: !18, line: 80, baseType: !34, size: 32, align: 32, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !31, line: 51, baseType: !35)
!35 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "h_len", scope: !26, file: !18, line: 81, baseType: !37, size: 16, align: 16, offset: 96)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !31, line: 49, baseType: !38)
!38 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "copied", scope: !26, file: !18, line: 92, baseType: !34, size: 32, align: 32, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !26, file: !18, line: 94, baseType: !30, size: 8, align: 8, offset: 160)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !26, file: !18, line: 168, baseType: !30, size: 8, align: 8, offset: 168)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "ptag", scope: !26, file: !18, line: 170, baseType: !43, size: 32, align: 32, offset: 192)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_ptag_t", file: !18, line: 70, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !45, line: 196, baseType: !8)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/arping/[task]src--fuzz_pingip")
!46 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !26, file: !18, line: 175, baseType: !47, size: 64, align: 64, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !26, file: !18, line: 176, baseType: !47, size: 64, align: 64, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "pblock_end", scope: !19, file: !18, line: 207, baseType: !24, size: 64, align: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "n_pblocks", scope: !19, file: !18, line: 208, baseType: !34, size: 32, align: 32, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "link_type", scope: !19, file: !18, line: 210, baseType: !8, size: 32, align: 32, offset: 224)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "link_offset", scope: !19, file: !18, line: 224, baseType: !8, size: 32, align: 32, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "aligner", scope: !19, file: !18, line: 225, baseType: !8, size: 32, align: 32, offset: 288)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !19, file: !18, line: 226, baseType: !55, size: 64, align: 64, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !19, file: !18, line: 228, baseType: !58, size: 192, align: 64, offset: 384)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_stats", file: !18, line: 52, size: 192, align: 64, elements: !59)
!59 = !{!60, !63, !64}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "packets_sent", scope: !58, file: !18, line: 55, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !31, line: 55, baseType: !62)
!62 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "packet_errors", scope: !58, file: !18, line: 56, baseType: !61, size: 64, align: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_written", scope: !58, file: !18, line: 57, baseType: !61, size: 64, align: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "ptag_state", scope: !19, file: !18, line: 229, baseType: !43, size: 32, align: 32, offset: 576)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !19, file: !18, line: 230, baseType: !67, size: 512, align: 8, offset: 608)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 512, align: 8, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "err_buf", scope: !19, file: !18, line: 232, baseType: !71, size: 2048, align: 8, offset: 1120)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 2048, align: 8, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 256)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !19, file: !18, line: 233, baseType: !34, size: 32, align: 32, offset: 3168)
!75 = !DILocalVariable(name: "l", arg: 1, scope: !13, file: !7, line: 9, type: !16)
!76 = !DIExpression()
!77 = !DILocation(line: 9, column: 26, scope: !13)
!78 = !DILocation(line: 11, column: 14, scope: !13)
!79 = !DILocation(line: 11, column: 9, scope: !13)
!80 = !DILocation(line: 12, column: 1, scope: !13)
!81 = distinct !DISubprogram(name: "libnet_init", scope: !7, file: !7, line: 21, type: !82, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!82 = !DISubroutineType(types: !83)
!83 = !{!16, !8, !84, !55}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!86 = !DILocalVariable(name: "injection_type", arg: 1, scope: !81, file: !7, line: 21, type: !8)
!87 = !DILocation(line: 21, column: 17, scope: !81)
!88 = !DILocalVariable(name: "device", arg: 2, scope: !81, file: !7, line: 21, type: !84)
!89 = !DILocation(line: 21, column: 45, scope: !81)
!90 = !DILocalVariable(name: "err_buf", arg: 3, scope: !81, file: !7, line: 21, type: !55)
!91 = !DILocation(line: 21, column: 59, scope: !81)
!92 = !DILocation(line: 23, column: 16, scope: !81)
!93 = !DILocation(line: 24, column: 16, scope: !81)
!94 = !DILocation(line: 25, column: 13, scope: !95)
!95 = distinct !DILexicalBlock(scope: !81, file: !7, line: 25, column: 13)
!96 = !DILocation(line: 25, column: 20, scope: !95)
!97 = !DILocation(line: 25, column: 13, scope: !81)
!98 = !DILocation(line: 26, column: 21, scope: !99)
!99 = distinct !DILexicalBlock(scope: !100, file: !7, line: 26, column: 21)
!100 = distinct !DILexicalBlock(scope: !95, file: !7, line: 25, column: 28)
!101 = !DILocation(line: 26, column: 21, scope: !100)
!102 = !DILocation(line: 27, column: 32, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !7, line: 26, column: 42)
!104 = !DILocation(line: 27, column: 25, scope: !103)
!105 = !DILocation(line: 29, column: 17, scope: !100)
!106 = !DILocation(line: 31, column: 21, scope: !107)
!107 = distinct !DILexicalBlock(scope: !81, file: !7, line: 31, column: 13)
!108 = !DILocation(line: 31, column: 14, scope: !107)
!109 = !DILocation(line: 31, column: 13, scope: !81)
!110 = !DILocation(line: 32, column: 17, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !7, line: 31, column: 37)
!112 = !DILocation(line: 34, column: 21, scope: !113)
!113 = distinct !DILexicalBlock(scope: !81, file: !7, line: 34, column: 13)
!114 = !DILocation(line: 34, column: 14, scope: !113)
!115 = !DILocation(line: 34, column: 13, scope: !81)
!116 = !DILocation(line: 35, column: 24, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !7, line: 34, column: 38)
!118 = !DILocation(line: 35, column: 17, scope: !117)
!119 = !DILocation(line: 37, column: 13, scope: !120)
!120 = distinct !DILexicalBlock(scope: !81, file: !7, line: 37, column: 13)
!121 = !DILocation(line: 37, column: 31, scope: !120)
!122 = !DILocation(line: 37, column: 42, scope: !123)
!123 = !DILexicalBlockFile(scope: !120, file: !7, discriminator: 1)
!124 = !DILocation(line: 37, column: 35, scope: !123)
!125 = !DILocation(line: 37, column: 13, scope: !123)
!126 = !DILocation(line: 38, column: 24, scope: !127)
!127 = distinct !DILexicalBlock(scope: !120, file: !7, line: 37, column: 57)
!128 = !DILocation(line: 38, column: 17, scope: !127)
!129 = !DILocation(line: 40, column: 9, scope: !81)
!130 = !DILocation(line: 41, column: 1, scope: !81)
