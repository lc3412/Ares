; ModuleID = './line224-fe-expandos.o.i'
source_filename = "./line224-fe-expandos.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }
%struct._GHashTable = type opaque
%struct._SERVER_REC = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }

@.str = private unnamed_addr constant [7 x i8] c"winref\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"window changed\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"window refnum changed\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"winname\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"window name changed\00", align 1
@active_win = external global %struct._WINDOW_REC*, align 8
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind uwtable
define void @fe_expandos_init() #0 !dbg !16 {
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_winref, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32 3, i8* null), !dbg !21
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_winname, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 3, i8* null), !dbg !22
  ret void, !dbg !23
}

declare void @expando_create(i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) #1

; Function Attrs: nounwind uwtable
define internal i8* @expando_winref(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !24 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !35, metadata !36), !dbg !37
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !38, metadata !36), !dbg !39
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !40, metadata !36), !dbg !41
  %8 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !42
  %9 = icmp eq %struct._WINDOW_REC* %8, null, !dbg !44
  br i1 %9, label %10, label %11, !dbg !45

; <label>:10:                                     ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8** %4, align 8, !dbg !46
  br label %17, !dbg !46

; <label>:11:                                     ; preds = %3
  %12 = load i32*, i32** %7, align 8, !dbg !47
  store i32 1, i32* %12, align 4, !dbg !48
  %13 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !49
  %14 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %13, i32 0, i32 0, !dbg !50
  %15 = load i32, i32* %14, align 8, !dbg !50
  %16 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 %15), !dbg !51
  store i8* %16, i8** %4, align 8, !dbg !52
  br label %17, !dbg !52

; <label>:17:                                     ; preds = %11, %10
  %18 = load i8*, i8** %4, align 8, !dbg !53
  ret i8* %18, !dbg !53
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_winname(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !54 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !55, metadata !36), !dbg !56
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !57, metadata !36), !dbg !58
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !59, metadata !36), !dbg !60
  %8 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !61
  %9 = icmp eq %struct._WINDOW_REC* %8, null, !dbg !63
  br i1 %9, label %10, label %11, !dbg !64

; <label>:10:                                     ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8** %4, align 8, !dbg !65
  br label %15, !dbg !65

; <label>:11:                                     ; preds = %3
  %12 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !66
  %13 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %12, i32 0, i32 1, !dbg !67
  %14 = load i8*, i8** %13, align 8, !dbg !67
  store i8* %14, i8** %4, align 8, !dbg !68
  br label %15, !dbg !68

; <label>:15:                                     ; preds = %11, %10
  %16 = load i8*, i8** %4, align 8, !dbg !69
  ret i8* %16, !dbg !69
}

; Function Attrs: nounwind uwtable
define void @fe_expandos_deinit() #0 !dbg !70 {
  call void @expando_destroy(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_winref), !dbg !71
  call void @expando_destroy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_winname), !dbg !72
  ret void, !dbg !73
}

declare void @expando_destroy(i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11)
!1 = !DIFile(filename: "line224-fe-expandos.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 7, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../../src/core/expandos.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "EXPANDO_ARG_NONE", value: 1)
!7 = !DIEnumerator(name: "EXPANDO_ARG_SERVER", value: 2)
!8 = !DIEnumerator(name: "EXPANDO_ARG_WINDOW", value: 3)
!9 = !DIEnumerator(name: "EXPANDO_ARG_WINDOW_ITEM", value: 4)
!10 = !DIEnumerator(name: "EXPANDO_NEVER", value: 5)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!16 = distinct !DISubprogram(name: "fe_expandos_init", scope: !17, file: !17, line: 44, type: !18, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !20)
!17 = !DIFile(filename: "fe-expandos.c", directory: "/home/lichi/Desktop/irssi/task1")
!18 = !DISubroutineType(types: !19)
!19 = !{null}
!20 = !{}
!21 = !DILocation(line: 46, column: 2, scope: !16)
!22 = !DILocation(line: 49, column: 2, scope: !16)
!23 = !DILocation(line: 52, column: 1, scope: !16)
!24 = distinct !DISubprogram(name: "expando_winref", scope: !17, file: !17, line: 26, type: !25, isLocal: true, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !20)
!25 = !DISubroutineType(types: !26)
!26 = !{!27, !29, !12, !33}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !31, line: 107, baseType: !32)
!31 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !31, line: 107, flags: DIFlagFwdDecl)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!35 = !DILocalVariable(name: "server", arg: 1, scope: !24, file: !17, line: 26, type: !29)
!36 = !DIExpression()
!37 = !DILocation(line: 26, column: 41, scope: !24)
!38 = !DILocalVariable(name: "item", arg: 2, scope: !24, file: !17, line: 26, type: !12)
!39 = !DILocation(line: 26, column: 55, scope: !24)
!40 = !DILocalVariable(name: "free_ret", arg: 3, scope: !24, file: !17, line: 26, type: !33)
!41 = !DILocation(line: 26, column: 66, scope: !24)
!42 = !DILocation(line: 28, column: 6, scope: !43)
!43 = distinct !DILexicalBlock(scope: !24, file: !17, line: 28, column: 6)
!44 = !DILocation(line: 28, column: 17, scope: !43)
!45 = !DILocation(line: 28, column: 6, scope: !24)
!46 = !DILocation(line: 29, column: 3, scope: !43)
!47 = !DILocation(line: 31, column: 10, scope: !24)
!48 = !DILocation(line: 31, column: 19, scope: !24)
!49 = !DILocation(line: 32, column: 31, scope: !24)
!50 = !DILocation(line: 32, column: 43, scope: !24)
!51 = !DILocation(line: 32, column: 9, scope: !24)
!52 = !DILocation(line: 32, column: 2, scope: !24)
!53 = !DILocation(line: 33, column: 1, scope: !24)
!54 = distinct !DISubprogram(name: "expando_winname", scope: !17, file: !17, line: 36, type: !25, isLocal: true, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !20)
!55 = !DILocalVariable(name: "server", arg: 1, scope: !54, file: !17, line: 36, type: !29)
!56 = !DILocation(line: 36, column: 42, scope: !54)
!57 = !DILocalVariable(name: "item", arg: 2, scope: !54, file: !17, line: 36, type: !12)
!58 = !DILocation(line: 36, column: 56, scope: !54)
!59 = !DILocalVariable(name: "free_ret", arg: 3, scope: !54, file: !17, line: 36, type: !33)
!60 = !DILocation(line: 36, column: 67, scope: !54)
!61 = !DILocation(line: 38, column: 6, scope: !62)
!62 = distinct !DILexicalBlock(scope: !54, file: !17, line: 38, column: 6)
!63 = !DILocation(line: 38, column: 17, scope: !62)
!64 = !DILocation(line: 38, column: 6, scope: !54)
!65 = !DILocation(line: 39, column: 3, scope: !62)
!66 = !DILocation(line: 41, column: 9, scope: !54)
!67 = !DILocation(line: 41, column: 21, scope: !54)
!68 = !DILocation(line: 41, column: 2, scope: !54)
!69 = !DILocation(line: 42, column: 1, scope: !54)
!70 = distinct !DISubprogram(name: "fe_expandos_deinit", scope: !17, file: !17, line: 54, type: !18, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !20)
!71 = !DILocation(line: 56, column: 2, scope: !70)
!72 = !DILocation(line: 57, column: 2, scope: !70)
!73 = !DILocation(line: 58, column: 1, scope: !70)
