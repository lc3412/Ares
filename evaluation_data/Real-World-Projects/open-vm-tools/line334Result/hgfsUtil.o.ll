; ModuleID = './hgfsUtil.o.i'
source_filename = "./hgfsUtil.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }

; Function Attrs: nounwind uwtable
define i64 @HgfsConvertToNtTime(i64, i64) #0 !dbg !35 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !45, metadata !46), !dbg !47
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !48, metadata !46), !dbg !49
  %5 = load i64, i64* %3, align 8, !dbg !50
  %6 = mul i64 %5, 10000000, !dbg !51
  %7 = load i64, i64* %4, align 8, !dbg !52
  %8 = sdiv i64 %7, 100, !dbg !53
  %9 = add i64 %6, %8, !dbg !54
  %10 = add i64 %9, 116444736000000000, !dbg !55
  ret i64 %10, !dbg !56
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @HgfsConvertFromNtTimeNsec(%struct.timespec*, i64) #0 !dbg !57 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca i64, align 8
  store %struct.timespec* %0, %struct.timespec** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec** %4, metadata !67, metadata !46), !dbg !68
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !69, metadata !46), !dbg !70
  %6 = load i64, i64* %5, align 8, !dbg !71
  %7 = icmp ult i64 %6, 116444736000000000, !dbg !73
  br i1 %7, label %8, label %13, !dbg !74

; <label>:8:                                      ; preds = %2
  %9 = load %struct.timespec*, %struct.timespec** %4, align 8, !dbg !75
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0, !dbg !77
  store i64 0, i64* %10, align 8, !dbg !78
  %11 = load %struct.timespec*, %struct.timespec** %4, align 8, !dbg !79
  %12 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 1, !dbg !80
  store i64 0, i64* %12, align 8, !dbg !81
  store i32 -1, i32* %3, align 4, !dbg !82
  br label %25, !dbg !82

; <label>:13:                                     ; preds = %2
  %14 = load i64, i64* %5, align 8, !dbg !83
  %15 = sub i64 %14, 116444736000000000, !dbg !84
  %16 = udiv i64 %15, 10000000, !dbg !85
  %17 = load %struct.timespec*, %struct.timespec** %4, align 8, !dbg !86
  %18 = getelementptr inbounds %struct.timespec, %struct.timespec* %17, i32 0, i32 0, !dbg !87
  store i64 %16, i64* %18, align 8, !dbg !88
  %19 = load i64, i64* %5, align 8, !dbg !89
  %20 = sub i64 %19, 116444736000000000, !dbg !90
  %21 = urem i64 %20, 10000000, !dbg !91
  %22 = mul i64 %21, 100, !dbg !92
  %23 = load %struct.timespec*, %struct.timespec** %4, align 8, !dbg !93
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %23, i32 0, i32 1, !dbg !94
  store i64 %22, i64* %24, align 8, !dbg !95
  store i32 0, i32* %3, align 4, !dbg !96
  br label %25, !dbg !96

; <label>:25:                                     ; preds = %13, %8
  %26 = load i32, i32* %3, align 4, !dbg !97
  ret i32 %26, !dbg !97
}

; Function Attrs: nounwind uwtable
define i32 @HgfsConvertFromNtTime(i64*, i64) #0 !dbg !98 {
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.timespec, align 8
  %6 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  call void @llvm.dbg.declare(metadata i64** %3, metadata !102, metadata !46), !dbg !103
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !104, metadata !46), !dbg !105
  call void @llvm.dbg.declare(metadata %struct.timespec* %5, metadata !106, metadata !46), !dbg !107
  call void @llvm.dbg.declare(metadata i32* %6, metadata !108, metadata !46), !dbg !109
  %7 = load i64, i64* %4, align 8, !dbg !110
  %8 = call i32 @HgfsConvertFromNtTimeNsec(%struct.timespec* %5, i64 %7), !dbg !111
  store i32 %8, i32* %6, align 4, !dbg !112
  %9 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0, !dbg !113
  %10 = load i64, i64* %9, align 8, !dbg !113
  %11 = load i64*, i64** %3, align 8, !dbg !114
  store i64 %10, i64* %11, align 8, !dbg !115
  %12 = load i32, i32* %6, align 4, !dbg !116
  ret i32 %12, !dbg !117
}

; Function Attrs: nounwind uwtable
define i32 @HgfsConvertFromInternalStatus(i32) #0 !dbg !118 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !124, metadata !46), !dbg !125
  %4 = load i32, i32* %3, align 4, !dbg !126
  switch i32 %4, label %23 [
    i32 0, label %5
    i32 2, label %6
    i32 9, label %7
    i32 1, label %8
    i32 21, label %9
    i32 17, label %9
    i32 20, label %10
    i32 39, label %11
    i32 71, label %12
    i32 13, label %13
    i32 22, label %14
    i32 28, label %15
    i32 95, label %16
    i32 36, label %17
    i32 2147483646, label %18
    i32 18, label %19
    i32 102, label %20
    i32 111, label %21
    i32 1001, label %22
    i32 -1, label %22
  ], !dbg !127

; <label>:5:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !128
  br label %24, !dbg !128

; <label>:6:                                      ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !130
  br label %24, !dbg !130

; <label>:7:                                      ; preds = %1
  store i32 2, i32* %2, align 4, !dbg !131
  br label %24, !dbg !131

; <label>:8:                                      ; preds = %1
  store i32 3, i32* %2, align 4, !dbg !132
  br label %24, !dbg !132

; <label>:9:                                      ; preds = %1, %1
  store i32 4, i32* %2, align 4, !dbg !133
  br label %24, !dbg !133

; <label>:10:                                     ; preds = %1
  store i32 5, i32* %2, align 4, !dbg !134
  br label %24, !dbg !134

; <label>:11:                                     ; preds = %1
  store i32 6, i32* %2, align 4, !dbg !135
  br label %24, !dbg !135

; <label>:12:                                     ; preds = %1
  store i32 7, i32* %2, align 4, !dbg !136
  br label %24, !dbg !136

; <label>:13:                                     ; preds = %1
  store i32 8, i32* %2, align 4, !dbg !137
  br label %24, !dbg !137

; <label>:14:                                     ; preds = %1
  store i32 9, i32* %2, align 4, !dbg !138
  br label %24, !dbg !138

; <label>:15:                                     ; preds = %1
  store i32 12, i32* %2, align 4, !dbg !139
  br label %24, !dbg !139

; <label>:16:                                     ; preds = %1
  store i32 13, i32* %2, align 4, !dbg !140
  br label %24, !dbg !140

; <label>:17:                                     ; preds = %1
  store i32 14, i32* %2, align 4, !dbg !141
  br label %24, !dbg !141

; <label>:18:                                     ; preds = %1
  store i32 15, i32* %2, align 4, !dbg !142
  br label %24, !dbg !142

; <label>:19:                                     ; preds = %1
  store i32 16, i32* %2, align 4, !dbg !143
  br label %24, !dbg !143

; <label>:20:                                     ; preds = %1
  store i32 17, i32* %2, align 4, !dbg !144
  br label %24, !dbg !144

; <label>:21:                                     ; preds = %1
  store i32 18, i32* %2, align 4, !dbg !145
  br label %24, !dbg !145

; <label>:22:                                     ; preds = %1, %1
  br label %23, !dbg !146

; <label>:23:                                     ; preds = %1, %22
  store i32 10, i32* %2, align 4, !dbg !148
  br label %24, !dbg !148

; <label>:24:                                     ; preds = %23, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %25 = load i32, i32* %2, align 4, !dbg !149
  ret i32 %25, !dbg !149
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!32, !33}
!llvm.ident = !{!34}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !26)
!1 = !DIFile(filename: "hgfsUtil.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line334")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 177, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfs.h", directory: "/home/lichi/Desktop/open-vm-tools/line334")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!6 = !DIEnumerator(name: "HGFS_STATUS_SUCCESS", value: 0)
!7 = !DIEnumerator(name: "HGFS_STATUS_NO_SUCH_FILE_OR_DIR", value: 1)
!8 = !DIEnumerator(name: "HGFS_STATUS_INVALID_HANDLE", value: 2)
!9 = !DIEnumerator(name: "HGFS_STATUS_OPERATION_NOT_PERMITTED", value: 3)
!10 = !DIEnumerator(name: "HGFS_STATUS_FILE_EXISTS", value: 4)
!11 = !DIEnumerator(name: "HGFS_STATUS_NOT_DIRECTORY", value: 5)
!12 = !DIEnumerator(name: "HGFS_STATUS_DIR_NOT_EMPTY", value: 6)
!13 = !DIEnumerator(name: "HGFS_STATUS_PROTOCOL_ERROR", value: 7)
!14 = !DIEnumerator(name: "HGFS_STATUS_ACCESS_DENIED", value: 8)
!15 = !DIEnumerator(name: "HGFS_STATUS_INVALID_NAME", value: 9)
!16 = !DIEnumerator(name: "HGFS_STATUS_GENERIC_ERROR", value: 10)
!17 = !DIEnumerator(name: "HGFS_STATUS_SHARING_VIOLATION", value: 11)
!18 = !DIEnumerator(name: "HGFS_STATUS_NO_SPACE", value: 12)
!19 = !DIEnumerator(name: "HGFS_STATUS_OPERATION_NOT_SUPPORTED", value: 13)
!20 = !DIEnumerator(name: "HGFS_STATUS_NAME_TOO_LONG", value: 14)
!21 = !DIEnumerator(name: "HGFS_STATUS_INVALID_PARAMETER", value: 15)
!22 = !DIEnumerator(name: "HGFS_STATUS_NOT_SAME_DEVICE", value: 16)
!23 = !DIEnumerator(name: "HGFS_STATUS_STALE_SESSION", value: 17)
!24 = !DIEnumerator(name: "HGFS_STATUS_TOO_MANY_SESSIONS", value: 18)
!25 = !DIEnumerator(name: "HGFS_STATUS_TRANSPORT_ERROR", value: 19)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !28, line: 171, baseType: !29)
!28 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line334")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !30, line: 55, baseType: !31)
!30 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line334")
!31 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!32 = !{i32 2, !"Dwarf Version", i32 4}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!35 = distinct !DISubprogram(name: "HgfsConvertToNtTime", scope: !36, file: !36, line: 82, type: !37, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !44)
!36 = !DIFile(filename: "hgfsUtil.c", directory: "/home/lichi/Desktop/open-vm-tools/line334")
!37 = !DISubroutineType(types: !38)
!38 = !{!27, !39, !43}
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !40, line: 75, baseType: !41)
!40 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line334")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !42, line: 139, baseType: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line334")
!43 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!44 = !{}
!45 = !DILocalVariable(name: "unixTime", arg: 1, scope: !35, file: !36, line: 82, type: !39)
!46 = !DIExpression()
!47 = !DILocation(line: 82, column: 28, scope: !35)
!48 = !DILocalVariable(name: "nsec", arg: 2, scope: !35, file: !36, line: 83, type: !43)
!49 = !DILocation(line: 83, column: 12, scope: !35)
!50 = !DILocation(line: 85, column: 19, scope: !35)
!51 = !DILocation(line: 85, column: 28, scope: !35)
!52 = !DILocation(line: 85, column: 41, scope: !35)
!53 = !DILocation(line: 85, column: 46, scope: !35)
!54 = !DILocation(line: 85, column: 39, scope: !35)
!55 = !DILocation(line: 85, column: 52, scope: !35)
!56 = !DILocation(line: 85, column: 4, scope: !35)
!57 = distinct !DISubprogram(name: "HgfsConvertFromNtTimeNsec", scope: !36, file: !36, line: 109, type: !58, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !44)
!58 = !DISubroutineType(types: !59)
!59 = !{!60, !61, !27}
!60 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !40, line: 120, size: 128, align: 64, elements: !63)
!63 = !{!64, !65}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !62, file: !40, line: 122, baseType: !41, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !62, file: !40, line: 123, baseType: !66, size: 64, align: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !42, line: 175, baseType: !43)
!67 = !DILocalVariable(name: "unixTime", arg: 1, scope: !57, file: !36, line: 109, type: !61)
!68 = !DILocation(line: 109, column: 44, scope: !57)
!69 = !DILocalVariable(name: "ntTime", arg: 2, scope: !57, file: !36, line: 110, type: !27)
!70 = !DILocation(line: 110, column: 13, scope: !57)
!71 = !DILocation(line: 131, column: 8, scope: !72)
!72 = distinct !DILexicalBlock(scope: !57, file: !36, line: 131, column: 8)
!73 = !DILocation(line: 131, column: 15, scope: !72)
!74 = !DILocation(line: 131, column: 8, scope: !57)
!75 = !DILocation(line: 132, column: 7, scope: !76)
!76 = distinct !DILexicalBlock(scope: !72, file: !36, line: 131, column: 70)
!77 = !DILocation(line: 132, column: 17, scope: !76)
!78 = !DILocation(line: 132, column: 24, scope: !76)
!79 = !DILocation(line: 133, column: 7, scope: !76)
!80 = !DILocation(line: 133, column: 17, scope: !76)
!81 = !DILocation(line: 133, column: 25, scope: !76)
!82 = !DILocation(line: 134, column: 7, scope: !76)
!83 = !DILocation(line: 142, column: 24, scope: !57)
!84 = !DILocation(line: 142, column: 31, scope: !57)
!85 = !DILocation(line: 142, column: 86, scope: !57)
!86 = !DILocation(line: 142, column: 4, scope: !57)
!87 = !DILocation(line: 142, column: 14, scope: !57)
!88 = !DILocation(line: 142, column: 21, scope: !57)
!89 = !DILocation(line: 143, column: 26, scope: !57)
!90 = !DILocation(line: 143, column: 33, scope: !57)
!91 = !DILocation(line: 143, column: 88, scope: !57)
!92 = !DILocation(line: 143, column: 100, scope: !57)
!93 = !DILocation(line: 143, column: 4, scope: !57)
!94 = !DILocation(line: 143, column: 14, scope: !57)
!95 = !DILocation(line: 143, column: 22, scope: !57)
!96 = !DILocation(line: 146, column: 4, scope: !57)
!97 = !DILocation(line: 147, column: 1, scope: !57)
!98 = distinct !DISubprogram(name: "HgfsConvertFromNtTime", scope: !36, file: !36, line: 168, type: !99, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !44)
!99 = !DISubroutineType(types: !100)
!100 = !{!60, !101, !27}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!102 = !DILocalVariable(name: "unixTime", arg: 1, scope: !98, file: !36, line: 168, type: !101)
!103 = !DILocation(line: 168, column: 31, scope: !98)
!104 = !DILocalVariable(name: "ntTime", arg: 2, scope: !98, file: !36, line: 169, type: !27)
!105 = !DILocation(line: 169, column: 16, scope: !98)
!106 = !DILocalVariable(name: "tm", scope: !98, file: !36, line: 171, type: !62)
!107 = !DILocation(line: 171, column: 20, scope: !98)
!108 = !DILocalVariable(name: "ret", scope: !98, file: !36, line: 172, type: !60)
!109 = !DILocation(line: 172, column: 8, scope: !98)
!110 = !DILocation(line: 174, column: 41, scope: !98)
!111 = !DILocation(line: 174, column: 10, scope: !98)
!112 = !DILocation(line: 174, column: 8, scope: !98)
!113 = !DILocation(line: 175, column: 19, scope: !98)
!114 = !DILocation(line: 175, column: 5, scope: !98)
!115 = !DILocation(line: 175, column: 14, scope: !98)
!116 = !DILocation(line: 176, column: 11, scope: !98)
!117 = !DILocation(line: 176, column: 4, scope: !98)
!118 = distinct !DISubprogram(name: "HgfsConvertFromInternalStatus", scope: !36, file: !36, line: 252, type: !119, isLocal: false, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !44)
!119 = !DISubroutineType(types: !120)
!120 = !{!121, !122}
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsStatus", file: !4, line: 203, baseType: !3)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsInternalStatus", file: !123, line: 82, baseType: !60)
!123 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfsUtil.h", directory: "/home/lichi/Desktop/open-vm-tools/line334")
!124 = !DILocalVariable(name: "status", arg: 1, scope: !118, file: !36, line: 252, type: !122)
!125 = !DILocation(line: 252, column: 50, scope: !118)
!126 = !DILocation(line: 254, column: 11, scope: !118)
!127 = !DILocation(line: 254, column: 4, scope: !118)
!128 = !DILocation(line: 256, column: 7, scope: !129)
!129 = distinct !DILexicalBlock(scope: !118, file: !36, line: 254, column: 19)
!130 = !DILocation(line: 258, column: 7, scope: !129)
!131 = !DILocation(line: 260, column: 7, scope: !129)
!132 = !DILocation(line: 262, column: 7, scope: !129)
!133 = !DILocation(line: 265, column: 7, scope: !129)
!134 = !DILocation(line: 267, column: 7, scope: !129)
!135 = !DILocation(line: 269, column: 7, scope: !129)
!136 = !DILocation(line: 271, column: 7, scope: !129)
!137 = !DILocation(line: 273, column: 7, scope: !129)
!138 = !DILocation(line: 275, column: 7, scope: !129)
!139 = !DILocation(line: 277, column: 7, scope: !129)
!140 = !DILocation(line: 279, column: 7, scope: !129)
!141 = !DILocation(line: 281, column: 7, scope: !129)
!142 = !DILocation(line: 283, column: 7, scope: !129)
!143 = !DILocation(line: 285, column: 7, scope: !129)
!144 = !DILocation(line: 287, column: 7, scope: !129)
!145 = !DILocation(line: 289, column: 7, scope: !129)
!146 = !DILocation(line: 289, column: 7, scope: !147)
!147 = !DILexicalBlockFile(scope: !129, file: !36, discriminator: 1)
!148 = !DILocation(line: 293, column: 7, scope: !129)
!149 = !DILocation(line: 295, column: 1, scope: !118)
