; ModuleID = './line12-build.o.i'
source_filename = "./line12-build.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"sslsplit\00", align 1
@build_pkgname = global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"0.5.4-6-g36ab64d\00", align 1
@build_version = global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"2019-03-18\00", align 1
@build_date = global i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"V:GIT\00", align 1
@build_info = global i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"-DHAVE_NETFILTER\00", align 1
@build_features = global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), align 8

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "line12-build.o.i", directory: "/home/lichi/Desktop/sslsplit/task1")
!2 = !{}
!3 = !{!4, !9, !10, !11, !12}
!4 = distinct !DIGlobalVariable(name: "build_pkgname", scope: !0, file: !5, line: 35, type: !6, isLocal: false, isDefinition: true, variable: i8** @build_pkgname)
!5 = !DIFile(filename: "build.c", directory: "/home/lichi/Desktop/sslsplit/task1")
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DIGlobalVariable(name: "build_version", scope: !0, file: !5, line: 36, type: !6, isLocal: false, isDefinition: true, variable: i8** @build_version)
!10 = distinct !DIGlobalVariable(name: "build_date", scope: !0, file: !5, line: 37, type: !6, isLocal: false, isDefinition: true, variable: i8** @build_date)
!11 = distinct !DIGlobalVariable(name: "build_info", scope: !0, file: !5, line: 38, type: !6, isLocal: false, isDefinition: true, variable: i8** @build_info)
!12 = distinct !DIGlobalVariable(name: "build_features", scope: !0, file: !5, line: 39, type: !6, isLocal: false, isDefinition: true, variable: i8** @build_features)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
