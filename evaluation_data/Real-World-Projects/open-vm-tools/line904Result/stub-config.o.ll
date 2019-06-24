; ModuleID = './stub-config.o.i'
source_filename = "./stub-config.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define signext i8 @Config_GetBool(i8 signext, i8*, ...) #0 !dbg !8 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !17, metadata !18), !dbg !19
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !20, metadata !18), !dbg !21
  %5 = load i8, i8* %3, align 1, !dbg !22
  ret i8 %5, !dbg !23
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @Config_GetLong(i32, i8*, ...) #0 !dbg !24 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !31, metadata !18), !dbg !32
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !33, metadata !18), !dbg !34
  %5 = load i32, i32* %3, align 4, !dbg !35
  ret i32 %5, !dbg !36
}

; Function Attrs: nounwind uwtable
define double @Config_GetDouble(double, i8*, ...) #0 !dbg !37 {
  %3 = alloca double, align 8
  %4 = alloca i8*, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !41, metadata !18), !dbg !42
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !43, metadata !18), !dbg !44
  %5 = load double, double* %3, align 8, !dbg !45
  ret double %5, !dbg !46
}

; Function Attrs: nounwind uwtable
define i8* @Config_GetString(i8*, i8*, ...) #0 !dbg !47 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !51, metadata !18), !dbg !52
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !53, metadata !18), !dbg !54
  %5 = load i8*, i8** %3, align 8, !dbg !55
  %6 = icmp eq i8* %5, null, !dbg !56
  br i1 %6, label %7, label %8, !dbg !57

; <label>:7:                                      ; preds = %2
  br label %11, !dbg !58

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %3, align 8, !dbg !60
  %10 = call noalias i8* @strdup(i8* %9) #3, !dbg !62
  br label %11, !dbg !63

; <label>:11:                                     ; preds = %8, %7
  %12 = phi i8* [ null, %7 ], [ %10, %8 ], !dbg !64
  ret i8* %12, !dbg !66
}

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #2

; Function Attrs: nounwind uwtable
define signext i8 @Preference_Init() #0 !dbg !67 {
  ret i8 1, !dbg !70
}

; Function Attrs: nounwind uwtable
define signext i8 @Preference_GetBool(i8 signext, i8*) #0 !dbg !71 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !74, metadata !18), !dbg !75
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !76, metadata !18), !dbg !77
  %5 = load i8, i8* %3, align 1, !dbg !78
  ret i8 %5, !dbg !79
}

; Function Attrs: nounwind uwtable
define i8* @Preference_GetString(i8*, i8*) #0 !dbg !80 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !83, metadata !18), !dbg !84
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !85, metadata !18), !dbg !86
  %5 = load i8*, i8** %3, align 8, !dbg !87
  %6 = icmp eq i8* %5, null, !dbg !88
  br i1 %6, label %7, label %8, !dbg !89

; <label>:7:                                      ; preds = %2
  br label %11, !dbg !90

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %3, align 8, !dbg !92
  %10 = call noalias i8* @strdup(i8* %9) #3, !dbg !94
  br label %11, !dbg !95

; <label>:11:                                     ; preds = %8, %7
  %12 = phi i8* [ null, %7 ], [ %10, %8 ], !dbg !96
  ret i8* %12, !dbg !98
}

; Function Attrs: nounwind uwtable
define i8* @Preference_GetPathName(i8*, i8*) #0 !dbg !99 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !100, metadata !18), !dbg !101
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !102, metadata !18), !dbg !103
  %5 = load i8*, i8** %3, align 8, !dbg !104
  %6 = icmp eq i8* %5, null, !dbg !105
  br i1 %6, label %7, label %8, !dbg !106

; <label>:7:                                      ; preds = %2
  br label %11, !dbg !107

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %3, align 8, !dbg !109
  %10 = call noalias i8* @strdup(i8* %9) #3, !dbg !111
  br label %11, !dbg !112

; <label>:11:                                     ; preds = %8, %7
  %12 = phi i8* [ null, %7 ], [ %10, %8 ], !dbg !113
  ret i8* %12, !dbg !115
}

; Function Attrs: nounwind uwtable
define i32 @Config_GetTriState(i32, i8*, ...) #0 !dbg !116 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !117, metadata !18), !dbg !118
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !119, metadata !18), !dbg !120
  %5 = load i32, i32* %3, align 4, !dbg !121
  ret i32 %5, !dbg !122
}

; Function Attrs: nounwind uwtable
define i8* @Config_GetPathName(i8*, i8*, ...) #0 !dbg !123 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !124, metadata !18), !dbg !125
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !126, metadata !18), !dbg !127
  %5 = load i8*, i8** %3, align 8, !dbg !128
  %6 = icmp ne i8* %5, null, !dbg !128
  br i1 %6, label %7, label %10, !dbg !128

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !129
  %9 = call noalias i8* @strdup(i8* %8) #3, !dbg !131
  br label %11, !dbg !132

; <label>:10:                                     ; preds = %2
  br label %11, !dbg !133

; <label>:11:                                     ; preds = %10, %7
  %12 = phi i8* [ %9, %7 ], [ null, %10 ], !dbg !135
  ret i8* %12, !dbg !137
}

; Function Attrs: nounwind uwtable
define signext i8 @Config_NotSet(i8*, ...) #0 !dbg !138 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !141, metadata !18), !dbg !142
  ret i8 0, !dbg !143
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "stub-config.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line904")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!8 = distinct !DISubprogram(name: "Config_GetBool", scope: !9, file: !9, line: 34, type: !10, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!9 = !DIFile(filename: "stub-config.c", directory: "/home/lichi/Desktop/open-vm-tools/line904")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !15, null}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !13, line: 230, baseType: !14)
!13 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line904")
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!17 = !DILocalVariable(name: "defaultValue", arg: 1, scope: !8, file: !9, line: 34, type: !12)
!18 = !DIExpression()
!19 = !DILocation(line: 34, column: 21, scope: !8)
!20 = !DILocalVariable(name: "fmt", arg: 2, scope: !8, file: !9, line: 35, type: !15)
!21 = !DILocation(line: 35, column: 28, scope: !8)
!22 = !DILocation(line: 38, column: 11, scope: !8)
!23 = !DILocation(line: 38, column: 4, scope: !8)
!24 = distinct !DISubprogram(name: "Config_GetLong", scope: !9, file: !9, line: 43, type: !25, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!25 = !DISubroutineType(types: !26)
!26 = !{!27, !27, !15, null}
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !13, line: 174, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !29, line: 38, baseType: !30)
!29 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line904")
!30 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!31 = !DILocalVariable(name: "defaultValue", arg: 1, scope: !24, file: !9, line: 43, type: !27)
!32 = !DILocation(line: 43, column: 22, scope: !24)
!33 = !DILocalVariable(name: "fmt", arg: 2, scope: !24, file: !9, line: 44, type: !15)
!34 = !DILocation(line: 44, column: 28, scope: !24)
!35 = !DILocation(line: 47, column: 11, scope: !24)
!36 = !DILocation(line: 47, column: 4, scope: !24)
!37 = distinct !DISubprogram(name: "Config_GetDouble", scope: !9, file: !9, line: 52, type: !38, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !40, !15, null}
!40 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!41 = !DILocalVariable(name: "defaultValue", arg: 1, scope: !37, file: !9, line: 52, type: !40)
!42 = !DILocation(line: 52, column: 25, scope: !37)
!43 = !DILocalVariable(name: "fmt", arg: 2, scope: !37, file: !9, line: 53, type: !15)
!44 = !DILocation(line: 53, column: 30, scope: !37)
!45 = !DILocation(line: 56, column: 11, scope: !37)
!46 = !DILocation(line: 56, column: 4, scope: !37)
!47 = distinct !DISubprogram(name: "Config_GetString", scope: !9, file: !9, line: 61, type: !48, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !15, !15, null}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!51 = !DILocalVariable(name: "defaultValue", arg: 1, scope: !47, file: !9, line: 61, type: !15)
!52 = !DILocation(line: 61, column: 30, scope: !47)
!53 = !DILocalVariable(name: "fmt", arg: 2, scope: !47, file: !9, line: 62, type: !15)
!54 = !DILocation(line: 62, column: 30, scope: !47)
!55 = !DILocation(line: 64, column: 12, scope: !47)
!56 = !DILocation(line: 64, column: 25, scope: !47)
!57 = !DILocation(line: 64, column: 11, scope: !47)
!58 = !DILocation(line: 64, column: 11, scope: !59)
!59 = !DILexicalBlockFile(scope: !47, file: !9, discriminator: 1)
!60 = !DILocation(line: 64, column: 49, scope: !61)
!61 = !DILexicalBlockFile(scope: !47, file: !9, discriminator: 2)
!62 = !DILocation(line: 64, column: 42, scope: !61)
!63 = !DILocation(line: 64, column: 11, scope: !61)
!64 = !DILocation(line: 64, column: 11, scope: !65)
!65 = !DILexicalBlockFile(scope: !47, file: !9, discriminator: 3)
!66 = !DILocation(line: 64, column: 4, scope: !65)
!67 = distinct !DISubprogram(name: "Preference_Init", scope: !9, file: !9, line: 68, type: !68, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!68 = !DISubroutineType(types: !69)
!69 = !{!12}
!70 = !DILocation(line: 70, column: 4, scope: !67)
!71 = distinct !DISubprogram(name: "Preference_GetBool", scope: !9, file: !9, line: 74, type: !72, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!72 = !DISubroutineType(types: !73)
!73 = !{!12, !12, !15}
!74 = !DILocalVariable(name: "defaultValue", arg: 1, scope: !71, file: !9, line: 74, type: !12)
!75 = !DILocation(line: 74, column: 25, scope: !71)
!76 = !DILocalVariable(name: "name", arg: 2, scope: !71, file: !9, line: 75, type: !15)
!77 = !DILocation(line: 75, column: 32, scope: !71)
!78 = !DILocation(line: 77, column: 11, scope: !71)
!79 = !DILocation(line: 77, column: 4, scope: !71)
!80 = distinct !DISubprogram(name: "Preference_GetString", scope: !9, file: !9, line: 82, type: !81, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!81 = !DISubroutineType(types: !82)
!82 = !{!50, !15, !15}
!83 = !DILocalVariable(name: "defaultValue", arg: 1, scope: !80, file: !9, line: 82, type: !15)
!84 = !DILocation(line: 82, column: 34, scope: !80)
!85 = !DILocalVariable(name: "name", arg: 2, scope: !80, file: !9, line: 83, type: !15)
!86 = !DILocation(line: 83, column: 34, scope: !80)
!87 = !DILocation(line: 85, column: 12, scope: !80)
!88 = !DILocation(line: 85, column: 25, scope: !80)
!89 = !DILocation(line: 85, column: 11, scope: !80)
!90 = !DILocation(line: 85, column: 11, scope: !91)
!91 = !DILexicalBlockFile(scope: !80, file: !9, discriminator: 1)
!92 = !DILocation(line: 85, column: 49, scope: !93)
!93 = !DILexicalBlockFile(scope: !80, file: !9, discriminator: 2)
!94 = !DILocation(line: 85, column: 42, scope: !93)
!95 = !DILocation(line: 85, column: 11, scope: !93)
!96 = !DILocation(line: 85, column: 11, scope: !97)
!97 = !DILexicalBlockFile(scope: !80, file: !9, discriminator: 3)
!98 = !DILocation(line: 85, column: 4, scope: !97)
!99 = distinct !DISubprogram(name: "Preference_GetPathName", scope: !9, file: !9, line: 90, type: !81, isLocal: false, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!100 = !DILocalVariable(name: "defaultValue", arg: 1, scope: !99, file: !9, line: 90, type: !15)
!101 = !DILocation(line: 90, column: 36, scope: !99)
!102 = !DILocalVariable(name: "fmt", arg: 2, scope: !99, file: !9, line: 91, type: !15)
!103 = !DILocation(line: 91, column: 36, scope: !99)
!104 = !DILocation(line: 93, column: 12, scope: !99)
!105 = !DILocation(line: 93, column: 25, scope: !99)
!106 = !DILocation(line: 93, column: 11, scope: !99)
!107 = !DILocation(line: 93, column: 11, scope: !108)
!108 = !DILexicalBlockFile(scope: !99, file: !9, discriminator: 1)
!109 = !DILocation(line: 93, column: 49, scope: !110)
!110 = !DILexicalBlockFile(scope: !99, file: !9, discriminator: 2)
!111 = !DILocation(line: 93, column: 42, scope: !110)
!112 = !DILocation(line: 93, column: 11, scope: !110)
!113 = !DILocation(line: 93, column: 11, scope: !114)
!114 = !DILexicalBlockFile(scope: !99, file: !9, discriminator: 3)
!115 = !DILocation(line: 93, column: 4, scope: !114)
!116 = distinct !DISubprogram(name: "Config_GetTriState", scope: !9, file: !9, line: 97, type: !25, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!117 = !DILocalVariable(name: "defaultValue", arg: 1, scope: !116, file: !9, line: 97, type: !27)
!118 = !DILocation(line: 97, column: 26, scope: !116)
!119 = !DILocalVariable(name: "fmt", arg: 2, scope: !116, file: !9, line: 98, type: !15)
!120 = !DILocation(line: 98, column: 32, scope: !116)
!121 = !DILocation(line: 100, column: 11, scope: !116)
!122 = !DILocation(line: 100, column: 4, scope: !116)
!123 = distinct !DISubprogram(name: "Config_GetPathName", scope: !9, file: !9, line: 104, type: !48, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!124 = !DILocalVariable(name: "defaultValue", arg: 1, scope: !123, file: !9, line: 104, type: !15)
!125 = !DILocation(line: 104, column: 32, scope: !123)
!126 = !DILocalVariable(name: "format", arg: 2, scope: !123, file: !9, line: 105, type: !15)
!127 = !DILocation(line: 105, column: 32, scope: !123)
!128 = !DILocation(line: 107, column: 11, scope: !123)
!129 = !DILocation(line: 107, column: 33, scope: !130)
!130 = !DILexicalBlockFile(scope: !123, file: !9, discriminator: 1)
!131 = !DILocation(line: 107, column: 26, scope: !130)
!132 = !DILocation(line: 107, column: 11, scope: !130)
!133 = !DILocation(line: 107, column: 11, scope: !134)
!134 = !DILexicalBlockFile(scope: !123, file: !9, discriminator: 2)
!135 = !DILocation(line: 107, column: 11, scope: !136)
!136 = !DILexicalBlockFile(scope: !123, file: !9, discriminator: 3)
!137 = !DILocation(line: 107, column: 4, scope: !136)
!138 = distinct !DISubprogram(name: "Config_NotSet", scope: !9, file: !9, line: 111, type: !139, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!139 = !DISubroutineType(types: !140)
!140 = !{!12, !15, null}
!141 = !DILocalVariable(name: "fmt", arg: 1, scope: !138, file: !9, line: 111, type: !15)
!142 = !DILocation(line: 111, column: 27, scope: !138)
!143 = !DILocation(line: 113, column: 4, scope: !138)
