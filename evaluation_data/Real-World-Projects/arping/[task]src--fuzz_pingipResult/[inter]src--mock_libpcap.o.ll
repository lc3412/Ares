; ModuleID = './[inter]src--mock_libpcap.o.i'
source_filename = "./[inter]src--mock_libpcap.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pcap = type opaque
%struct.bpf_program = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i16, i8, i8, i32 }
%struct.pcap_pkthdr = type { %struct.timeval, i32, i32 }
%struct.timeval = type { i64, i64 }

; Function Attrs: nounwind uwtable
define i32 @pcap_setfilter(%struct.pcap*, %struct.bpf_program*) #0 !dbg !6 {
  %3 = alloca %struct.pcap*, align 8
  %4 = alloca %struct.bpf_program*, align 8
  store %struct.pcap* %0, %struct.pcap** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.pcap** %3, metadata !40, metadata !41), !dbg !42
  store %struct.bpf_program* %1, %struct.bpf_program** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.bpf_program** %4, metadata !43, metadata !41), !dbg !44
  %5 = load %struct.pcap*, %struct.pcap** %3, align 8, !dbg !45
  %6 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8, !dbg !46
  ret i32 0, !dbg !47
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @pcap_dispatch(%struct.pcap*, i32, void (i8*, %struct.pcap_pkthdr*, i8*)*, i8*) #0 !dbg !48 {
  %5 = alloca %struct.pcap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca void (i8*, %struct.pcap_pkthdr*, i8*)*, align 8
  %8 = alloca i8*, align 8
  store %struct.pcap* %0, %struct.pcap** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pcap** %5, metadata !73, metadata !41), !dbg !74
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !75, metadata !41), !dbg !76
  store void (i8*, %struct.pcap_pkthdr*, i8*)* %2, void (i8*, %struct.pcap_pkthdr*, i8*)** %7, align 8
  call void @llvm.dbg.declare(metadata void (i8*, %struct.pcap_pkthdr*, i8*)** %7, metadata !77, metadata !41), !dbg !78
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !79, metadata !41), !dbg !80
  %9 = load %struct.pcap*, %struct.pcap** %5, align 8, !dbg !81
  %10 = load i32, i32* %6, align 4, !dbg !82
  %11 = load void (i8*, %struct.pcap_pkthdr*, i8*)*, void (i8*, %struct.pcap_pkthdr*, i8*)** %7, align 8, !dbg !83
  %12 = load i8*, i8** %8, align 8, !dbg !84
  ret i32 0, !dbg !85
}

; Function Attrs: nounwind uwtable
define i32 @pcap_compile(%struct.pcap*, %struct.bpf_program*, i8*, i32, i32) #0 !dbg !86 {
  %6 = alloca %struct.pcap*, align 8
  %7 = alloca %struct.bpf_program*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pcap* %0, %struct.pcap** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.pcap** %6, metadata !92, metadata !41), !dbg !93
  store %struct.bpf_program* %1, %struct.bpf_program** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.bpf_program** %7, metadata !94, metadata !41), !dbg !95
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !96, metadata !41), !dbg !97
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !98, metadata !41), !dbg !99
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !100, metadata !41), !dbg !101
  %11 = load %struct.pcap*, %struct.pcap** %6, align 8, !dbg !102
  %12 = load %struct.bpf_program*, %struct.bpf_program** %7, align 8, !dbg !103
  %13 = load i8*, i8** %8, align 8, !dbg !104
  %14 = load i32, i32* %9, align 4, !dbg !105
  %15 = load i32, i32* %10, align 4, !dbg !106
  ret i32 0, !dbg !107
}

; Function Attrs: nounwind uwtable
define %struct.pcap* @pcap_open_live(i8*, i32, i32, i32, i8*) #0 !dbg !108 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !112, metadata !41), !dbg !113
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !114, metadata !41), !dbg !115
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !116, metadata !41), !dbg !117
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !118, metadata !41), !dbg !119
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !120, metadata !41), !dbg !121
  %11 = load i8*, i8** %6, align 8, !dbg !122
  %12 = load i32, i32* %7, align 4, !dbg !123
  %13 = load i32, i32* %8, align 4, !dbg !124
  %14 = load i32, i32* %9, align 4, !dbg !125
  %15 = load i8*, i8** %10, align 8, !dbg !126
  ret %struct.pcap* null, !dbg !127
}

; Function Attrs: nounwind uwtable
define i32 @pcap_setnonblock(%struct.pcap*, i32, i8*) #0 !dbg !128 {
  %4 = alloca %struct.pcap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.pcap* %0, %struct.pcap** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.pcap** %4, metadata !131, metadata !41), !dbg !132
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !133, metadata !41), !dbg !134
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !135, metadata !41), !dbg !136
  %7 = load %struct.pcap*, %struct.pcap** %4, align 8, !dbg !137
  %8 = load i32, i32* %5, align 4, !dbg !138
  %9 = load i8*, i8** %6, align 8, !dbg !139
  ret i32 0, !dbg !140
}

; Function Attrs: nounwind uwtable
define i32 @pcap_get_selectable_fd(%struct.pcap*) #0 !dbg !141 {
  %2 = alloca %struct.pcap*, align 8
  store %struct.pcap* %0, %struct.pcap** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.pcap** %2, metadata !144, metadata !41), !dbg !145
  %3 = load %struct.pcap*, %struct.pcap** %2, align 8, !dbg !146
  ret i32 0, !dbg !147
}

; Function Attrs: nounwind uwtable
define i8* @pcap_lookupdev(i8*) #0 !dbg !148 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !151, metadata !41), !dbg !152
  %3 = load i8*, i8** %2, align 8, !dbg !153
  ret i8* null, !dbg !154
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]src--mock_libpcap.o.i", directory: "/home/lichi/Desktop/arping/[task]src--fuzz_pingip")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "pcap_setfilter", scope: !7, file: !7, line: 6, type: !8, isLocal: false, isDefinition: true, scopeLine: 7, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "mock_libpcap.c", directory: "/home/lichi/Desktop/arping/[task]src--fuzz_pingip")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !15}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_t", file: !13, line: 79, baseType: !14)
!13 = !DIFile(filename: "/usr/include/pcap/pcap.h", directory: "/home/lichi/Desktop/arping/[task]src--fuzz_pingip")
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap", file: !13, line: 79, flags: DIFlagFwdDecl)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_program", file: !17, line: 106, size: 128, align: 64, elements: !18)
!17 = !DIFile(filename: "/usr/include/pcap/bpf.h", directory: "/home/lichi/Desktop/arping/[task]src--fuzz_pingip")
!18 = !{!19, !25}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "bf_len", scope: !16, file: !17, line: 107, baseType: !20, size: 32, align: 32)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !21, line: 35, baseType: !22)
!21 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/arping/[task]src--fuzz_pingip")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !23, line: 32, baseType: !24)
!23 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/arping/[task]src--fuzz_pingip")
!24 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "bf_insns", scope: !16, file: !17, line: 108, baseType: !26, size: 64, align: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_insn", file: !17, line: 1472, size: 64, align: 32, elements: !28)
!28 = !{!29, !33, !37, !38}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !27, file: !17, line: 1473, baseType: !30, size: 16, align: 16)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !21, line: 34, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !23, line: 31, baseType: !32)
!32 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "jt", scope: !27, file: !17, line: 1474, baseType: !34, size: 8, align: 8, offset: 16)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !21, line: 33, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !23, line: 30, baseType: !36)
!36 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "jf", scope: !27, file: !17, line: 1475, baseType: !34, size: 8, align: 8, offset: 24)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !27, file: !17, line: 1476, baseType: !39, size: 32, align: 32, offset: 32)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "bpf_u_int32", file: !17, line: 87, baseType: !20)
!40 = !DILocalVariable(name: "pcap", arg: 1, scope: !6, file: !7, line: 6, type: !11)
!41 = !DIExpression()
!42 = !DILocation(line: 6, column: 24, scope: !6)
!43 = !DILocalVariable(name: "prog", arg: 2, scope: !6, file: !7, line: 6, type: !15)
!44 = !DILocation(line: 6, column: 50, scope: !6)
!45 = !DILocation(line: 8, column: 16, scope: !6)
!46 = !DILocation(line: 9, column: 16, scope: !6)
!47 = !DILocation(line: 10, column: 9, scope: !6)
!48 = distinct !DISubprogram(name: "pcap_dispatch", scope: !7, file: !7, line: 14, type: !49, isLocal: false, isDefinition: true, scopeLine: 15, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!49 = !DISubroutineType(types: !50)
!50 = !{!10, !11, !10, !51, !55}
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_handler", file: !13, line: 237, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !55, !56, !71}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_pkthdr", file: !13, line: 160, size: 192, align: 64, elements: !59)
!59 = !{!60, !69, !70}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !58, file: !13, line: 161, baseType: !61, size: 128, align: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !62, line: 30, size: 128, align: 64, elements: !63)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/arping/[task]src--fuzz_pingip")
!63 = !{!64, !67}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !61, file: !62, line: 32, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !23, line: 139, baseType: !66)
!66 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !61, file: !62, line: 33, baseType: !68, size: 64, align: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !23, line: 141, baseType: !66)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "caplen", scope: !58, file: !13, line: 162, baseType: !39, size: 32, align: 32, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !58, file: !13, line: 163, baseType: !39, size: 32, align: 32, offset: 160)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!73 = !DILocalVariable(name: "pcap", arg: 1, scope: !48, file: !7, line: 14, type: !11)
!74 = !DILocation(line: 14, column: 23, scope: !48)
!75 = !DILocalVariable(name: "num", arg: 2, scope: !48, file: !7, line: 14, type: !10)
!76 = !DILocation(line: 14, column: 33, scope: !48)
!77 = !DILocalVariable(name: "handler", arg: 3, scope: !48, file: !7, line: 14, type: !51)
!78 = !DILocation(line: 14, column: 51, scope: !48)
!79 = !DILocalVariable(name: "packet", arg: 4, scope: !48, file: !7, line: 14, type: !55)
!80 = !DILocation(line: 14, column: 68, scope: !48)
!81 = !DILocation(line: 16, column: 16, scope: !48)
!82 = !DILocation(line: 17, column: 16, scope: !48)
!83 = !DILocation(line: 18, column: 16, scope: !48)
!84 = !DILocation(line: 19, column: 16, scope: !48)
!85 = !DILocation(line: 20, column: 9, scope: !48)
!86 = distinct !DISubprogram(name: "pcap_compile", scope: !7, file: !7, line: 24, type: !87, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!87 = !DISubroutineType(types: !88)
!88 = !{!10, !11, !15, !89, !10, !39}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!91 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!92 = !DILocalVariable(name: "pcap", arg: 1, scope: !86, file: !7, line: 24, type: !11)
!93 = !DILocation(line: 24, column: 22, scope: !86)
!94 = !DILocalVariable(name: "prog", arg: 2, scope: !86, file: !7, line: 24, type: !15)
!95 = !DILocation(line: 24, column: 48, scope: !86)
!96 = !DILocalVariable(name: "x", arg: 3, scope: !86, file: !7, line: 24, type: !89)
!97 = !DILocation(line: 24, column: 66, scope: !86)
!98 = !DILocalVariable(name: "y", arg: 4, scope: !86, file: !7, line: 24, type: !10)
!99 = !DILocation(line: 24, column: 73, scope: !86)
!100 = !DILocalVariable(name: "z", arg: 5, scope: !86, file: !7, line: 25, type: !39)
!101 = !DILocation(line: 25, column: 26, scope: !86)
!102 = !DILocation(line: 27, column: 16, scope: !86)
!103 = !DILocation(line: 28, column: 16, scope: !86)
!104 = !DILocation(line: 29, column: 16, scope: !86)
!105 = !DILocation(line: 30, column: 16, scope: !86)
!106 = !DILocation(line: 31, column: 16, scope: !86)
!107 = !DILocation(line: 32, column: 9, scope: !86)
!108 = distinct !DISubprogram(name: "pcap_open_live", scope: !7, file: !7, line: 36, type: !109, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!109 = !DISubroutineType(types: !110)
!110 = !{!11, !89, !10, !10, !10, !111}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!112 = !DILocalVariable(name: "ifname", arg: 1, scope: !108, file: !7, line: 36, type: !89)
!113 = !DILocation(line: 36, column: 28, scope: !108)
!114 = !DILocalVariable(name: "a", arg: 2, scope: !108, file: !7, line: 36, type: !10)
!115 = !DILocation(line: 36, column: 40, scope: !108)
!116 = !DILocalVariable(name: "b", arg: 3, scope: !108, file: !7, line: 36, type: !10)
!117 = !DILocation(line: 36, column: 47, scope: !108)
!118 = !DILocalVariable(name: "c", arg: 4, scope: !108, file: !7, line: 36, type: !10)
!119 = !DILocation(line: 36, column: 54, scope: !108)
!120 = !DILocalVariable(name: "d", arg: 5, scope: !108, file: !7, line: 36, type: !111)
!121 = !DILocation(line: 36, column: 63, scope: !108)
!122 = !DILocation(line: 38, column: 16, scope: !108)
!123 = !DILocation(line: 39, column: 16, scope: !108)
!124 = !DILocation(line: 40, column: 16, scope: !108)
!125 = !DILocation(line: 41, column: 16, scope: !108)
!126 = !DILocation(line: 42, column: 16, scope: !108)
!127 = !DILocation(line: 43, column: 9, scope: !108)
!128 = distinct !DISubprogram(name: "pcap_setnonblock", scope: !7, file: !7, line: 47, type: !129, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!129 = !DISubroutineType(types: !130)
!130 = !{!10, !11, !10, !111}
!131 = !DILocalVariable(name: "pcap", arg: 1, scope: !128, file: !7, line: 47, type: !11)
!132 = !DILocation(line: 47, column: 26, scope: !128)
!133 = !DILocalVariable(name: "a", arg: 2, scope: !128, file: !7, line: 47, type: !10)
!134 = !DILocation(line: 47, column: 36, scope: !128)
!135 = !DILocalVariable(name: "b", arg: 3, scope: !128, file: !7, line: 47, type: !111)
!136 = !DILocation(line: 47, column: 45, scope: !128)
!137 = !DILocation(line: 49, column: 16, scope: !128)
!138 = !DILocation(line: 50, column: 16, scope: !128)
!139 = !DILocation(line: 51, column: 16, scope: !128)
!140 = !DILocation(line: 52, column: 9, scope: !128)
!141 = distinct !DISubprogram(name: "pcap_get_selectable_fd", scope: !7, file: !7, line: 56, type: !142, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!142 = !DISubroutineType(types: !143)
!143 = !{!10, !11}
!144 = !DILocalVariable(name: "pcap", arg: 1, scope: !141, file: !7, line: 56, type: !11)
!145 = !DILocation(line: 56, column: 32, scope: !141)
!146 = !DILocation(line: 58, column: 16, scope: !141)
!147 = !DILocation(line: 59, column: 9, scope: !141)
!148 = distinct !DISubprogram(name: "pcap_lookupdev", scope: !7, file: !7, line: 63, type: !149, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!149 = !DISubroutineType(types: !150)
!150 = !{!111, !111}
!151 = !DILocalVariable(name: "ifname", arg: 1, scope: !148, file: !7, line: 63, type: !111)
!152 = !DILocation(line: 63, column: 22, scope: !148)
!153 = !DILocation(line: 65, column: 16, scope: !148)
!154 = !DILocation(line: 66, column: 9, scope: !148)
