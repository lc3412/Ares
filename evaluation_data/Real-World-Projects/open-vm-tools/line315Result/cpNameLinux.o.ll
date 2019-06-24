; ModuleID = './cpNameLinux.o.i'
source_filename = "./cpNameLinux.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"%s: get first component failed\0A\00", align 1
@__FUNCTION__.CPName_ConvertFromRoot = private unnamed_addr constant [23 x i8] c"CPName_ConvertFromRoot\00", align 1

; Function Attrs: nounwind uwtable
define i32 @CPName_ConvertFrom(i8**, i64*, i64*, i8**) #0 !dbg !22 {
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8**, align 8
  store i8** %0, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !38, metadata !39), !dbg !40
  store i64* %1, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !41, metadata !39), !dbg !42
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !43, metadata !39), !dbg !44
  store i8** %3, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !45, metadata !39), !dbg !46
  %9 = load i8**, i8*** %5, align 8, !dbg !47
  %10 = load i64*, i64** %6, align 8, !dbg !48
  %11 = load i64*, i64** %7, align 8, !dbg !49
  %12 = load i8**, i8*** %8, align 8, !dbg !50
  %13 = call i32 @CPNameEscapeAndConvertFrom(i8** %9, i64* %10, i64* %11, i8** %12, i8 signext 47), !dbg !51
  ret i32 %13, !dbg !52
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @CPNameEscapeAndConvertFrom(i8**, i64*, i64*, i8**, i8 signext) #2

; Function Attrs: nounwind uwtable
define i32 @CPName_ConvertFromRoot(i8**, i64*, i64*, i8**) #0 !dbg !53 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !57, metadata !39), !dbg !58
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !59, metadata !39), !dbg !60
  store i64* %2, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !61, metadata !39), !dbg !62
  store i8** %3, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !63, metadata !39), !dbg !64
  call void @llvm.dbg.declare(metadata i8** %10, metadata !65, metadata !39), !dbg !66
  call void @llvm.dbg.declare(metadata i8** %11, metadata !67, metadata !39), !dbg !68
  call void @llvm.dbg.declare(metadata i32* %12, metadata !69, metadata !39), !dbg !70
  %13 = load i8**, i8*** %9, align 8, !dbg !71
  %14 = load i8*, i8** %13, align 8, !dbg !72
  store i8* %14, i8** %11, align 8, !dbg !73
  %15 = load i8**, i8*** %6, align 8, !dbg !74
  %16 = load i8*, i8** %15, align 8, !dbg !75
  %17 = load i8**, i8*** %6, align 8, !dbg !76
  %18 = load i8*, i8** %17, align 8, !dbg !77
  %19 = load i64*, i64** %7, align 8, !dbg !78
  %20 = load i64, i64* %19, align 8, !dbg !79
  %21 = getelementptr inbounds i8, i8* %18, i64 %20, !dbg !80
  %22 = call i32 @CPName_GetComponent(i8* %16, i8* %21, i8** %10), !dbg !81
  store i32 %22, i32* %12, align 4, !dbg !82
  %23 = load i32, i32* %12, align 4, !dbg !83
  %24 = icmp slt i32 %23, 0, !dbg !85
  br i1 %24, label %25, label %26, !dbg !86

; <label>:25:                                     ; preds = %4
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.CPName_ConvertFromRoot, i32 0, i32 0)), !dbg !87
  store i32 1, i32* %5, align 4, !dbg !89
  br label %69, !dbg !89

; <label>:26:                                     ; preds = %4
  %27 = load i64*, i64** %8, align 8, !dbg !90
  %28 = load i64, i64* %27, align 8, !dbg !92
  %29 = load i32, i32* %12, align 4, !dbg !93
  %30 = add nsw i32 %29, 2, !dbg !94
  %31 = sext i32 %30 to i64, !dbg !93
  %32 = icmp ult i64 %28, %31, !dbg !95
  br i1 %32, label %33, label %34, !dbg !96

; <label>:33:                                     ; preds = %26
  store i32 1, i32* %5, align 4, !dbg !97
  br label %69, !dbg !97

; <label>:34:                                     ; preds = %26
  %35 = load i8*, i8** %11, align 8, !dbg !99
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !99
  store i8* %36, i8** %11, align 8, !dbg !99
  store i8 47, i8* %35, align 1, !dbg !100
  %37 = load i8*, i8** %11, align 8, !dbg !101
  %38 = load i8**, i8*** %6, align 8, !dbg !102
  %39 = load i8*, i8** %38, align 8, !dbg !103
  %40 = load i32, i32* %12, align 4, !dbg !104
  %41 = sext i32 %40 to i64, !dbg !104
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %39, i64 %41, i32 1, i1 false), !dbg !105
  %42 = load i32, i32* %12, align 4, !dbg !106
  %43 = load i8*, i8** %11, align 8, !dbg !107
  %44 = sext i32 %42 to i64, !dbg !107
  %45 = getelementptr inbounds i8, i8* %43, i64 %44, !dbg !107
  store i8* %45, i8** %11, align 8, !dbg !107
  %46 = load i8*, i8** %11, align 8, !dbg !108
  store i8 0, i8* %46, align 1, !dbg !109
  %47 = load i8*, i8** %10, align 8, !dbg !110
  %48 = load i8**, i8*** %6, align 8, !dbg !111
  %49 = load i8*, i8** %48, align 8, !dbg !112
  %50 = ptrtoint i8* %47 to i64, !dbg !113
  %51 = ptrtoint i8* %49 to i64, !dbg !113
  %52 = sub i64 %50, %51, !dbg !113
  %53 = load i64*, i64** %7, align 8, !dbg !114
  %54 = load i64, i64* %53, align 8, !dbg !115
  %55 = sub i64 %54, %52, !dbg !115
  store i64 %55, i64* %53, align 8, !dbg !115
  %56 = load i8*, i8** %11, align 8, !dbg !116
  %57 = load i8**, i8*** %9, align 8, !dbg !117
  %58 = load i8*, i8** %57, align 8, !dbg !118
  %59 = ptrtoint i8* %56 to i64, !dbg !119
  %60 = ptrtoint i8* %58 to i64, !dbg !119
  %61 = sub i64 %59, %60, !dbg !119
  %62 = load i64*, i64** %8, align 8, !dbg !120
  %63 = load i64, i64* %62, align 8, !dbg !121
  %64 = sub i64 %63, %61, !dbg !121
  store i64 %64, i64* %62, align 8, !dbg !121
  %65 = load i8*, i8** %10, align 8, !dbg !122
  %66 = load i8**, i8*** %6, align 8, !dbg !123
  store i8* %65, i8** %66, align 8, !dbg !124
  %67 = load i8*, i8** %11, align 8, !dbg !125
  %68 = load i8**, i8*** %9, align 8, !dbg !126
  store i8* %67, i8** %68, align 8, !dbg !127
  store i32 0, i32* %5, align 4, !dbg !128
  br label %69, !dbg !128

; <label>:69:                                     ; preds = %34, %33, %25
  %70 = load i32, i32* %5, align 4, !dbg !129
  ret i32 %70, !dbg !129
}

declare i32 @CPName_GetComponent(i8*, i8*, i8**) #2

declare void @Log(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i32 @CPName_ConvertTo(i8*, i64, i8*) #0 !dbg !130 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !133, metadata !39), !dbg !134
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !135, metadata !39), !dbg !136
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !137, metadata !39), !dbg !138
  call void @llvm.dbg.declare(metadata i32* %7, metadata !139, metadata !39), !dbg !140
  %8 = load i8*, i8** %4, align 8, !dbg !141
  %9 = load i64, i64* %5, align 8, !dbg !142
  %10 = load i8*, i8** %6, align 8, !dbg !143
  %11 = call i32 @CPName_LinuxConvertTo(i8* %8, i64 %9, i8* %10), !dbg !144
  store i32 %11, i32* %7, align 4, !dbg !145
  %12 = load i32, i32* %7, align 4, !dbg !146
  ret i32 %12, !dbg !147
}

declare i32 @CPName_LinuxConvertTo(i8*, i64, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "cpNameLinux.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line315")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 65, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/cpName.h", directory: "/home/lichi/Desktop/open-vm-tools/line315")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!6 = !DIEnumerator(name: "HGFS_NAME_STATUS_COMPLETE", value: 0)
!7 = !DIEnumerator(name: "HGFS_NAME_STATUS_FAILURE", value: 1)
!8 = !DIEnumerator(name: "HGFS_NAME_STATUS_INCOMPLETE_BASE", value: 2)
!9 = !DIEnumerator(name: "HGFS_NAME_STATUS_INCOMPLETE_ROOT", value: 3)
!10 = !DIEnumerator(name: "HGFS_NAME_STATUS_INCOMPLETE_DRIVE", value: 4)
!11 = !DIEnumerator(name: "HGFS_NAME_STATUS_INCOMPLETE_UNC", value: 5)
!12 = !DIEnumerator(name: "HGFS_NAME_STATUS_INCOMPLETE_UNC_MACH", value: 6)
!13 = !DIEnumerator(name: "HGFS_NAME_STATUS_DOES_NOT_EXIST", value: 7)
!14 = !DIEnumerator(name: "HGFS_NAME_STATUS_ACCESS_DENIED", value: 8)
!15 = !DIEnumerator(name: "HGFS_NAME_STATUS_SYMBOLIC_LINK", value: 9)
!16 = !DIEnumerator(name: "HGFS_NAME_STATUS_OUT_OF_MEMORY", value: 10)
!17 = !DIEnumerator(name: "HGFS_NAME_STATUS_TOO_LONG", value: 11)
!18 = !DIEnumerator(name: "HGFS_NAME_STATUS_NOT_A_DIRECTORY", value: 12)
!19 = !{i32 2, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!22 = distinct !DISubprogram(name: "CPName_ConvertFrom", scope: !23, file: !23, line: 72, type: !24, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!23 = !DIFile(filename: "cpNameLinux.c", directory: "/home/lichi/Desktop/open-vm-tools/line315")
!24 = !DISubroutineType(types: !25)
!25 = !{!26, !27, !31, !31, !35}
!26 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 216, baseType: !34)
!33 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line315")
!34 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!37 = !{}
!38 = !DILocalVariable(name: "bufIn", arg: 1, scope: !22, file: !23, line: 72, type: !27)
!39 = !DIExpression()
!40 = !DILocation(line: 72, column: 33, scope: !22)
!41 = !DILocalVariable(name: "inSize", arg: 2, scope: !22, file: !23, line: 73, type: !31)
!42 = !DILocation(line: 73, column: 28, scope: !22)
!43 = !DILocalVariable(name: "outSize", arg: 3, scope: !22, file: !23, line: 74, type: !31)
!44 = !DILocation(line: 74, column: 28, scope: !22)
!45 = !DILocalVariable(name: "bufOut", arg: 4, scope: !22, file: !23, line: 75, type: !35)
!46 = !DILocation(line: 75, column: 27, scope: !22)
!47 = !DILocation(line: 82, column: 38, scope: !22)
!48 = !DILocation(line: 82, column: 45, scope: !22)
!49 = !DILocation(line: 82, column: 53, scope: !22)
!50 = !DILocation(line: 82, column: 62, scope: !22)
!51 = !DILocation(line: 82, column: 11, scope: !22)
!52 = !DILocation(line: 82, column: 4, scope: !22)
!53 = distinct !DISubprogram(name: "CPName_ConvertFromRoot", scope: !23, file: !23, line: 109, type: !54, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !27, !31, !31, !35}
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsNameStatus", file: !4, line: 79, baseType: !3)
!57 = !DILocalVariable(name: "bufIn", arg: 1, scope: !53, file: !23, line: 109, type: !27)
!58 = !DILocation(line: 109, column: 37, scope: !53)
!59 = !DILocalVariable(name: "inSize", arg: 2, scope: !53, file: !23, line: 110, type: !31)
!60 = !DILocation(line: 110, column: 32, scope: !53)
!61 = !DILocalVariable(name: "outSize", arg: 3, scope: !53, file: !23, line: 111, type: !31)
!62 = !DILocation(line: 111, column: 32, scope: !53)
!63 = !DILocalVariable(name: "bufOut", arg: 4, scope: !53, file: !23, line: 112, type: !35)
!64 = !DILocation(line: 112, column: 31, scope: !53)
!65 = !DILocalVariable(name: "next", scope: !53, file: !23, line: 114, type: !28)
!66 = !DILocation(line: 114, column: 16, scope: !53)
!67 = !DILocalVariable(name: "out", scope: !53, file: !23, line: 115, type: !36)
!68 = !DILocation(line: 115, column: 10, scope: !53)
!69 = !DILocalVariable(name: "len", scope: !53, file: !23, line: 116, type: !26)
!70 = !DILocation(line: 116, column: 8, scope: !53)
!71 = !DILocation(line: 123, column: 11, scope: !53)
!72 = !DILocation(line: 123, column: 10, scope: !53)
!73 = !DILocation(line: 123, column: 8, scope: !53)
!74 = !DILocation(line: 128, column: 31, scope: !53)
!75 = !DILocation(line: 128, column: 30, scope: !53)
!76 = !DILocation(line: 128, column: 39, scope: !53)
!77 = !DILocation(line: 128, column: 38, scope: !53)
!78 = !DILocation(line: 128, column: 48, scope: !53)
!79 = !DILocation(line: 128, column: 47, scope: !53)
!80 = !DILocation(line: 128, column: 45, scope: !53)
!81 = !DILocation(line: 128, column: 10, scope: !53)
!82 = !DILocation(line: 128, column: 8, scope: !53)
!83 = !DILocation(line: 129, column: 8, scope: !84)
!84 = distinct !DILexicalBlock(scope: !53, file: !23, line: 129, column: 8)
!85 = !DILocation(line: 129, column: 12, scope: !84)
!86 = !DILocation(line: 129, column: 8, scope: !53)
!87 = !DILocation(line: 130, column: 7, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !23, line: 129, column: 17)
!89 = !DILocation(line: 131, column: 7, scope: !88)
!90 = !DILocation(line: 135, column: 9, scope: !91)
!91 = distinct !DILexicalBlock(scope: !53, file: !23, line: 135, column: 8)
!92 = !DILocation(line: 135, column: 8, scope: !91)
!93 = !DILocation(line: 135, column: 19, scope: !91)
!94 = !DILocation(line: 135, column: 23, scope: !91)
!95 = !DILocation(line: 135, column: 17, scope: !91)
!96 = !DILocation(line: 135, column: 8, scope: !53)
!97 = !DILocation(line: 136, column: 7, scope: !98)
!98 = distinct !DILexicalBlock(scope: !91, file: !23, line: 135, column: 28)
!99 = !DILocation(line: 140, column: 8, scope: !53)
!100 = !DILocation(line: 140, column: 11, scope: !53)
!101 = !DILocation(line: 142, column: 11, scope: !53)
!102 = !DILocation(line: 142, column: 17, scope: !53)
!103 = !DILocation(line: 142, column: 16, scope: !53)
!104 = !DILocation(line: 142, column: 24, scope: !53)
!105 = !DILocation(line: 142, column: 4, scope: !53)
!106 = !DILocation(line: 143, column: 11, scope: !53)
!107 = !DILocation(line: 143, column: 8, scope: !53)
!108 = !DILocation(line: 146, column: 5, scope: !53)
!109 = !DILocation(line: 146, column: 9, scope: !53)
!110 = !DILocation(line: 148, column: 15, scope: !53)
!111 = !DILocation(line: 148, column: 23, scope: !53)
!112 = !DILocation(line: 148, column: 22, scope: !53)
!113 = !DILocation(line: 148, column: 20, scope: !53)
!114 = !DILocation(line: 148, column: 5, scope: !53)
!115 = !DILocation(line: 148, column: 12, scope: !53)
!116 = !DILocation(line: 149, column: 16, scope: !53)
!117 = !DILocation(line: 149, column: 23, scope: !53)
!118 = !DILocation(line: 149, column: 22, scope: !53)
!119 = !DILocation(line: 149, column: 20, scope: !53)
!120 = !DILocation(line: 149, column: 5, scope: !53)
!121 = !DILocation(line: 149, column: 13, scope: !53)
!122 = !DILocation(line: 150, column: 13, scope: !53)
!123 = !DILocation(line: 150, column: 5, scope: !53)
!124 = !DILocation(line: 150, column: 11, scope: !53)
!125 = !DILocation(line: 151, column: 14, scope: !53)
!126 = !DILocation(line: 151, column: 5, scope: !53)
!127 = !DILocation(line: 151, column: 12, scope: !53)
!128 = !DILocation(line: 153, column: 4, scope: !53)
!129 = !DILocation(line: 154, column: 1, scope: !53)
!130 = distinct !DISubprogram(name: "CPName_ConvertTo", scope: !23, file: !23, line: 183, type: !131, isLocal: false, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !37)
!131 = !DISubroutineType(types: !132)
!132 = !{!26, !28, !32, !36}
!133 = !DILocalVariable(name: "nameIn", arg: 1, scope: !130, file: !23, line: 183, type: !28)
!134 = !DILocation(line: 183, column: 30, scope: !130)
!135 = !DILocalVariable(name: "bufOutSize", arg: 2, scope: !130, file: !23, line: 184, type: !32)
!136 = !DILocation(line: 184, column: 25, scope: !130)
!137 = !DILocalVariable(name: "bufOut", arg: 3, scope: !130, file: !23, line: 185, type: !36)
!138 = !DILocation(line: 185, column: 24, scope: !130)
!139 = !DILocalVariable(name: "result", scope: !130, file: !23, line: 187, type: !26)
!140 = !DILocation(line: 187, column: 8, scope: !130)
!141 = !DILocation(line: 188, column: 35, scope: !130)
!142 = !DILocation(line: 188, column: 43, scope: !130)
!143 = !DILocation(line: 188, column: 55, scope: !130)
!144 = !DILocation(line: 188, column: 13, scope: !130)
!145 = !DILocation(line: 188, column: 11, scope: !130)
!146 = !DILocation(line: 189, column: 11, scope: !130)
!147 = !DILocation(line: 189, column: 4, scope: !130)
