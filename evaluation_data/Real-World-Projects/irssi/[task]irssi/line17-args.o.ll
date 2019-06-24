; ModuleID = './line17-args.o.i'
source_filename = "./line17-args.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GOptionContext = type opaque
%struct._GOptionEntry = type { i8*, i8, i32, i32, i8*, i8*, i8* }
%struct._GError = type { i32, i32, i8* }

@context = internal global %struct._GOptionContext* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"irssi\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"%s\0ARun '%s --help' to see a full list of available command line options.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @args_register(%struct._GOptionEntry*) #0 !dbg !26 {
  %2 = alloca %struct._GOptionEntry*, align 8
  store %struct._GOptionEntry* %0, %struct._GOptionEntry** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._GOptionEntry** %2, metadata !50, metadata !51), !dbg !52
  %3 = load %struct._GOptionContext*, %struct._GOptionContext** @context, align 8, !dbg !53
  %4 = icmp eq %struct._GOptionContext* %3, null, !dbg !55
  br i1 %4, label %5, label %7, !dbg !56

; <label>:5:                                      ; preds = %1
  %6 = call %struct._GOptionContext* @g_option_context_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)), !dbg !57
  store %struct._GOptionContext* %6, %struct._GOptionContext** @context, align 8, !dbg !58
  br label %7, !dbg !59

; <label>:7:                                      ; preds = %5, %1
  %8 = load %struct._GOptionContext*, %struct._GOptionContext** @context, align 8, !dbg !60
  %9 = load %struct._GOptionEntry*, %struct._GOptionEntry** %2, align 8, !dbg !61
  call void @g_option_context_add_main_entries(%struct._GOptionContext* %8, %struct._GOptionEntry* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)), !dbg !62
  ret void, !dbg !63
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._GOptionContext* @g_option_context_new(i8*) #2

declare void @g_option_context_add_main_entries(%struct._GOptionContext*, %struct._GOptionEntry*, i8*) #2

; Function Attrs: nounwind uwtable
define void @args_execute(i32, i8**) #0 !dbg !64 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct._GError*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !69, metadata !51), !dbg !70
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !71, metadata !51), !dbg !72
  call void @llvm.dbg.declare(metadata %struct._GError** %5, metadata !73, metadata !51), !dbg !88
  store %struct._GError* null, %struct._GError** %5, align 8, !dbg !88
  %6 = load %struct._GOptionContext*, %struct._GOptionContext** @context, align 8, !dbg !89
  %7 = icmp eq %struct._GOptionContext* %6, null, !dbg !91
  br i1 %7, label %8, label %9, !dbg !92

; <label>:8:                                      ; preds = %2
  br label %23, !dbg !93

; <label>:9:                                      ; preds = %2
  %10 = load %struct._GOptionContext*, %struct._GOptionContext** @context, align 8, !dbg !94
  %11 = call i32 @g_option_context_parse(%struct._GOptionContext* %10, i32* %3, i8*** %4, %struct._GError** %5), !dbg !95
  %12 = load %struct._GOptionContext*, %struct._GOptionContext** @context, align 8, !dbg !96
  call void @g_option_context_free(%struct._GOptionContext* %12), !dbg !97
  store %struct._GOptionContext* null, %struct._GOptionContext** @context, align 8, !dbg !98
  %13 = load %struct._GError*, %struct._GError** %5, align 8, !dbg !99
  %14 = icmp ne %struct._GError* %13, null, !dbg !101
  br i1 %14, label %15, label %23, !dbg !102

; <label>:15:                                     ; preds = %9
  %16 = load %struct._GError*, %struct._GError** %5, align 8, !dbg !103
  %17 = getelementptr inbounds %struct._GError, %struct._GError* %16, i32 0, i32 2, !dbg !105
  %18 = load i8*, i8** %17, align 8, !dbg !105
  %19 = load i8**, i8*** %4, align 8, !dbg !106
  %20 = getelementptr inbounds i8*, i8** %19, i64 0, !dbg !106
  %21 = load i8*, i8** %20, align 8, !dbg !106
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i32 0, i32 0), i8* %18, i8* %21), !dbg !107
  call void @exit(i32 1) #4, !dbg !108
  unreachable, !dbg !108

; <label>:23:                                     ; preds = %8, %9
  ret void, !dbg !109
}

declare i32 @g_option_context_parse(%struct._GOptionContext*, i32*, i8***, %struct._GError**) #2

declare void @g_option_context_free(%struct._GOptionContext*) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!23, !24}
!llvm.ident = !{!25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !15, globals: !17)
!1 = !DIFile(filename: "line17-args.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 118, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/goption.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "G_OPTION_ARG_NONE", value: 0)
!7 = !DIEnumerator(name: "G_OPTION_ARG_STRING", value: 1)
!8 = !DIEnumerator(name: "G_OPTION_ARG_INT", value: 2)
!9 = !DIEnumerator(name: "G_OPTION_ARG_CALLBACK", value: 3)
!10 = !DIEnumerator(name: "G_OPTION_ARG_FILENAME", value: 4)
!11 = !DIEnumerator(name: "G_OPTION_ARG_STRING_ARRAY", value: 5)
!12 = !DIEnumerator(name: "G_OPTION_ARG_FILENAME_ARRAY", value: 6)
!13 = !DIEnumerator(name: "G_OPTION_ARG_DOUBLE", value: 7)
!14 = !DIEnumerator(name: "G_OPTION_ARG_INT64", value: 8)
!15 = !{!16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!17 = !{!18}
!18 = distinct !DIGlobalVariable(name: "context", scope: !0, file: !19, line: 24, type: !20, isLocal: true, isDefinition: true, variable: %struct._GOptionContext** @context)
!19 = !DIFile(filename: "args.c", directory: "/home/lichi/Desktop/irssi/task1")
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOptionContext", file: !4, line: 38, baseType: !22)
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GOptionContext", file: !4, line: 38, flags: DIFlagFwdDecl)
!23 = !{i32 2, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!26 = distinct !DISubprogram(name: "args_register", scope: !19, file: !19, line: 26, type: !27, isLocal: false, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !49)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOptionEntry", file: !4, line: 52, baseType: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GOptionEntry", file: !4, line: 257, size: 384, align: 64, elements: !32)
!32 = !{!33, !39, !40, !43, !45, !47, !48}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "long_name", scope: !31, file: !4, line: 259, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !37, line: 46, baseType: !38)
!37 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!38 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "short_name", scope: !31, file: !4, line: 260, baseType: !36, size: 8, align: 8, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !31, file: !4, line: 261, baseType: !41, size: 32, align: 32, offset: 96)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !37, line: 49, baseType: !42)
!42 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !31, file: !4, line: 263, baseType: !44, size: 32, align: 32, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOptionArg", file: !4, line: 129, baseType: !3)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "arg_data", scope: !31, file: !4, line: 264, baseType: !46, size: 64, align: 64, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !37, line: 77, baseType: !16)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !31, file: !4, line: 266, baseType: !34, size: 64, align: 64, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "arg_description", scope: !31, file: !4, line: 267, baseType: !34, size: 64, align: 64, offset: 320)
!49 = !{}
!50 = !DILocalVariable(name: "options", arg: 1, scope: !26, file: !19, line: 26, type: !29)
!51 = !DIExpression()
!52 = !DILocation(line: 26, column: 34, scope: !26)
!53 = !DILocation(line: 28, column: 6, scope: !54)
!54 = distinct !DILexicalBlock(scope: !26, file: !19, line: 28, column: 6)
!55 = !DILocation(line: 28, column: 14, scope: !54)
!56 = !DILocation(line: 28, column: 6, scope: !26)
!57 = !DILocation(line: 29, column: 13, scope: !54)
!58 = !DILocation(line: 29, column: 11, scope: !54)
!59 = !DILocation(line: 29, column: 3, scope: !54)
!60 = !DILocation(line: 31, column: 36, scope: !26)
!61 = !DILocation(line: 31, column: 45, scope: !26)
!62 = !DILocation(line: 31, column: 2, scope: !26)
!63 = !DILocation(line: 32, column: 1, scope: !26)
!64 = distinct !DISubprogram(name: "args_execute", scope: !19, file: !19, line: 34, type: !65, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !49)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !42, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!69 = !DILocalVariable(name: "argc", arg: 1, scope: !64, file: !19, line: 34, type: !42)
!70 = !DILocation(line: 34, column: 23, scope: !64)
!71 = !DILocalVariable(name: "argv", arg: 2, scope: !64, file: !19, line: 34, type: !67)
!72 = !DILocation(line: 34, column: 35, scope: !64)
!73 = !DILocalVariable(name: "error", scope: !64, file: !19, line: 36, type: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !76, line: 42, baseType: !77)
!76 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !76, line: 44, size: 128, align: 64, elements: !78)
!78 = !{!79, !85, !86}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !77, file: !76, line: 46, baseType: !80, size: 32, align: 32)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !81, line: 36, baseType: !82)
!81 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !83, line: 45, baseType: !84)
!83 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!84 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !77, file: !76, line: 47, baseType: !41, size: 32, align: 32, offset: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !77, file: !76, line: 48, baseType: !87, size: 64, align: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!88 = !DILocation(line: 36, column: 10, scope: !64)
!89 = !DILocation(line: 38, column: 6, scope: !90)
!90 = distinct !DILexicalBlock(scope: !64, file: !19, line: 38, column: 6)
!91 = !DILocation(line: 38, column: 14, scope: !90)
!92 = !DILocation(line: 38, column: 6, scope: !64)
!93 = !DILocation(line: 39, column: 3, scope: !90)
!94 = !DILocation(line: 41, column: 25, scope: !64)
!95 = !DILocation(line: 41, column: 2, scope: !64)
!96 = !DILocation(line: 42, column: 24, scope: !64)
!97 = !DILocation(line: 42, column: 2, scope: !64)
!98 = !DILocation(line: 43, column: 10, scope: !64)
!99 = !DILocation(line: 45, column: 6, scope: !100)
!100 = distinct !DILexicalBlock(scope: !64, file: !19, line: 45, column: 6)
!101 = !DILocation(line: 45, column: 12, scope: !100)
!102 = !DILocation(line: 45, column: 6, scope: !64)
!103 = !DILocation(line: 49, column: 10, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !19, line: 45, column: 20)
!105 = !DILocation(line: 49, column: 17, scope: !104)
!106 = !DILocation(line: 49, column: 26, scope: !104)
!107 = !DILocation(line: 46, column: 3, scope: !104)
!108 = !DILocation(line: 50, column: 3, scope: !104)
!109 = !DILocation(line: 52, column: 1, scope: !64)
