; ModuleID = './line95-wcwidth-wrapper.o.i'
source_filename = "./line95-wcwidth-wrapper.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@wcwidth_impl_func = global i32 (i32)* @mk_wcwidth, align 8
@.str = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"wcwidth_implementation\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"old;system\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@read_settings.choice = internal global i32 -1, align 4

declare i32 @mk_wcwidth(i32) #0

; Function Attrs: nounwind uwtable
define i32 @i_wcwidth(i32) #1 !dbg !39 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !40, metadata !41), !dbg !42
  %3 = load i32 (i32)*, i32 (i32)** @wcwidth_impl_func, align 8, !dbg !43
  %4 = load i32, i32* %2, align 4, !dbg !44
  %5 = call i32 %3(i32 %4), !dbg !45
  ret i32 %5, !dbg !46
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind uwtable
define void @wcwidth_wrapper_init() #1 !dbg !47 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !48, metadata !41), !dbg !49
  store i32 0, i32* %1, align 4, !dbg !49
  %2 = call i32 @system_wcwidth(i32 127488), !dbg !50
  %3 = icmp eq i32 %2, 2, !dbg !52
  br i1 %3, label %7, label %4, !dbg !53

; <label>:4:                                      ; preds = %0
  %5 = call i32 @system_wcwidth(i32 128293), !dbg !54
  %6 = icmp eq i32 %5, 2, !dbg !55
  br i1 %6, label %7, label %8, !dbg !56

; <label>:7:                                      ; preds = %4, %0
  store i32 1, i32* %1, align 4, !dbg !58
  br label %9, !dbg !60

; <label>:8:                                      ; preds = %4
  store i32 0, i32* %1, align 4, !dbg !61
  br label %9

; <label>:9:                                      ; preds = %8, %7
  %10 = load i32, i32* %1, align 4, !dbg !63
  call void @settings_add_choice_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)), !dbg !64
  call void @read_settings(), !dbg !65
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !66
  ret void, !dbg !67
}

; Function Attrs: nounwind uwtable
define internal i32 @system_wcwidth(i32) #1 !dbg !68 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !69, metadata !41), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %4, metadata !71, metadata !41), !dbg !72
  %5 = load i32, i32* %3, align 4, !dbg !73
  %6 = call i32 @wcwidth(i32 %5) #4, !dbg !74
  store i32 %6, i32* %4, align 4, !dbg !72
  %7 = load i32, i32* %4, align 4, !dbg !75
  %8 = icmp slt i32 %7, 0, !dbg !77
  br i1 %8, label %9, label %10, !dbg !78

; <label>:9:                                      ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !79
  br label %12, !dbg !79

; <label>:10:                                     ; preds = %1
  %11 = load i32, i32* %4, align 4, !dbg !81
  store i32 %11, i32* %2, align 4, !dbg !82
  br label %12, !dbg !82

; <label>:12:                                     ; preds = %10, %9
  %13 = load i32, i32* %2, align 4, !dbg !83
  ret i32 %13, !dbg !83
}

declare void @settings_add_choice_module(i8*, i8*, i8*, i32, i8*) #0

; Function Attrs: nounwind uwtable
define internal void @read_settings() #1 !dbg !32 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !84, metadata !41), !dbg !85
  %2 = call i32 @settings_get_choice(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0)), !dbg !86
  store i32 %2, i32* %1, align 4, !dbg !87
  %3 = load i32, i32* @read_settings.choice, align 4, !dbg !88
  %4 = load i32, i32* %1, align 4, !dbg !90
  %5 = icmp eq i32 %3, %4, !dbg !91
  br i1 %5, label %6, label %7, !dbg !92

; <label>:6:                                      ; preds = %0
  br label %12, !dbg !93

; <label>:7:                                      ; preds = %0
  %8 = load i32, i32* %1, align 4, !dbg !95
  store i32 %8, i32* @read_settings.choice, align 4, !dbg !96
  %9 = load i32, i32* @read_settings.choice, align 4, !dbg !97
  switch i32 %9, label %12 [
    i32 0, label %10
    i32 1, label %11
  ], !dbg !98

; <label>:10:                                     ; preds = %7
  store i32 (i32)* @mk_wcwidth, i32 (i32)** @wcwidth_impl_func, align 8, !dbg !99
  br label %12, !dbg !101

; <label>:11:                                     ; preds = %7
  store i32 (i32)* @system_wcwidth, i32 (i32)** @wcwidth_impl_func, align 8, !dbg !102
  br label %12, !dbg !103

; <label>:12:                                     ; preds = %6, %7, %11, %10
  ret void, !dbg !104
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #0

; Function Attrs: nounwind uwtable
define void @wcwidth_wrapper_deinit() #1 !dbg !105 {
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !106
  ret void, !dbg !107
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #0

; Function Attrs: nounwind
declare i32 @wcwidth(i32) #3

declare i32 @settings_get_choice(i8*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!36, !37}
!llvm.ident = !{!38}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !8, globals: !20)
!1 = !DIFile(filename: "line95-wcwidth-wrapper.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 39, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "wcwidth-wrapper.c", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "WCWIDTH_IMPL_OLD", value: 0)
!7 = !DIEnumerator(name: "WCWIDTH_IMPL_SYSTEM", value: 1)
!8 = !{!9, !16, !17}
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !10, line: 9, baseType: !11)
!10 = !DIFile(filename: "signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14, !14, !14, !14, !14, !14}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !18, line: 328, baseType: !19)
!18 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/irssi/task1")
!19 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!20 = !{!21, !31}
!21 = distinct !DIGlobalVariable(name: "wcwidth_impl_func", scope: !0, file: !4, line: 47, type: !22, isLocal: false, isDefinition: true, variable: i32 (i32)** @wcwidth_impl_func)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "WCWIDTH_FUNC", file: !23, line: 21, baseType: !24)
!23 = !DIFile(filename: "utf8.h", directory: "/home/lichi/Desktop/irssi/task1")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DISubroutineType(types: !26)
!26 = !{!19, !27}
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "unichar", file: !23, line: 12, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !29, line: 45, baseType: !30)
!29 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!30 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!31 = distinct !DIGlobalVariable(name: "choice", scope: !32, file: !4, line: 85, type: !19, isLocal: true, isDefinition: true, variable: i32* @read_settings.choice)
!32 = distinct !DISubprogram(name: "read_settings", scope: !4, file: !4, line: 83, type: !33, isLocal: true, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !35)
!33 = !DISubroutineType(types: !34)
!34 = !{null}
!35 = !{}
!36 = !{i32 2, !"Dwarf Version", i32 4}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!39 = distinct !DISubprogram(name: "i_wcwidth", scope: !4, file: !4, line: 49, type: !25, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !35)
!40 = !DILocalVariable(name: "ucs", arg: 1, scope: !39, file: !4, line: 49, type: !27)
!41 = !DIExpression()
!42 = !DILocation(line: 49, column: 23, scope: !39)
!43 = !DILocation(line: 51, column: 11, scope: !39)
!44 = !DILocation(line: 51, column: 30, scope: !39)
!45 = !DILocation(line: 51, column: 9, scope: !39)
!46 = !DILocation(line: 51, column: 2, scope: !39)
!47 = distinct !DISubprogram(name: "wcwidth_wrapper_init", scope: !4, file: !4, line: 114, type: !33, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !35)
!48 = !DILocalVariable(name: "wcwidth_impl_default", scope: !47, file: !4, line: 116, type: !19)
!49 = !DILocation(line: 116, column: 6, scope: !47)
!50 = !DILocation(line: 120, column: 6, scope: !51)
!51 = distinct !DILexicalBlock(scope: !47, file: !4, line: 120, column: 6)
!52 = !DILocation(line: 120, column: 30, scope: !51)
!53 = !DILocation(line: 120, column: 35, scope: !51)
!54 = !DILocation(line: 121, column: 6, scope: !51)
!55 = !DILocation(line: 121, column: 30, scope: !51)
!56 = !DILocation(line: 120, column: 6, scope: !57)
!57 = !DILexicalBlockFile(scope: !47, file: !4, discriminator: 1)
!58 = !DILocation(line: 122, column: 24, scope: !59)
!59 = distinct !DILexicalBlock(scope: !51, file: !4, line: 121, column: 36)
!60 = !DILocation(line: 123, column: 2, scope: !59)
!61 = !DILocation(line: 125, column: 24, scope: !62)
!62 = distinct !DILexicalBlock(scope: !51, file: !4, line: 123, column: 9)
!63 = !DILocation(line: 131, column: 71, scope: !47)
!64 = !DILocation(line: 131, column: 2, scope: !47)
!65 = !DILocation(line: 134, column: 2, scope: !47)
!66 = !DILocation(line: 135, column: 2, scope: !47)
!67 = !DILocation(line: 136, column: 1, scope: !47)
!68 = distinct !DISubprogram(name: "system_wcwidth", scope: !4, file: !4, line: 54, type: !25, isLocal: true, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !35)
!69 = !DILocalVariable(name: "ucs", arg: 1, scope: !68, file: !4, line: 54, type: !27)
!70 = !DILocation(line: 54, column: 35, scope: !68)
!71 = !DILocalVariable(name: "retval", scope: !68, file: !4, line: 56, type: !19)
!72 = !DILocation(line: 56, column: 6, scope: !68)
!73 = !DILocation(line: 56, column: 33, scope: !68)
!74 = !DILocation(line: 56, column: 15, scope: !68)
!75 = !DILocation(line: 58, column: 6, scope: !76)
!76 = distinct !DILexicalBlock(scope: !68, file: !4, line: 58, column: 6)
!77 = !DILocation(line: 58, column: 13, scope: !76)
!78 = !DILocation(line: 58, column: 6, scope: !68)
!79 = !DILocation(line: 68, column: 3, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !4, line: 58, column: 18)
!81 = !DILocation(line: 71, column: 9, scope: !68)
!82 = !DILocation(line: 71, column: 2, scope: !68)
!83 = !DILocation(line: 72, column: 1, scope: !68)
!84 = !DILocalVariable(name: "newchoice", scope: !32, file: !4, line: 86, type: !19)
!85 = !DILocation(line: 86, column: 6, scope: !32)
!86 = !DILocation(line: 88, column: 14, scope: !32)
!87 = !DILocation(line: 88, column: 12, scope: !32)
!88 = !DILocation(line: 90, column: 6, scope: !89)
!89 = distinct !DILexicalBlock(scope: !32, file: !4, line: 90, column: 6)
!90 = !DILocation(line: 90, column: 16, scope: !89)
!91 = !DILocation(line: 90, column: 13, scope: !89)
!92 = !DILocation(line: 90, column: 6, scope: !32)
!93 = !DILocation(line: 91, column: 3, scope: !94)
!94 = distinct !DILexicalBlock(scope: !89, file: !4, line: 90, column: 27)
!95 = !DILocation(line: 94, column: 11, scope: !32)
!96 = !DILocation(line: 94, column: 9, scope: !32)
!97 = !DILocation(line: 96, column: 10, scope: !32)
!98 = !DILocation(line: 96, column: 2, scope: !32)
!99 = !DILocation(line: 98, column: 21, scope: !100)
!100 = distinct !DILexicalBlock(scope: !32, file: !4, line: 96, column: 18)
!101 = !DILocation(line: 99, column: 3, scope: !100)
!102 = !DILocation(line: 102, column: 21, scope: !100)
!103 = !DILocation(line: 103, column: 3, scope: !100)
!104 = !DILocation(line: 112, column: 1, scope: !32)
!105 = distinct !DISubprogram(name: "wcwidth_wrapper_deinit", scope: !4, file: !4, line: 138, type: !33, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !35)
!106 = !DILocation(line: 140, column: 2, scope: !105)
!107 = !DILocation(line: 141, column: 1, scope: !105)
