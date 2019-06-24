; ModuleID = './line67-pidwait.o.i'
source_filename = "./line67-pidwait.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GHashTable = type opaque
%struct._GSList = type { i8*, %struct._GSList* }

@child_pids = internal global %struct._GHashTable* null, align 8
@pids = internal global %struct._GSList* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"signals\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"pidwait\00", align 1
@signal_pidwait = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @pidwait_add(i32) #0 !dbg !30 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !33, metadata !34), !dbg !35
  %4 = load %struct._GHashTable*, %struct._GHashTable** @child_pids, align 8, !dbg !36
  %5 = load i32, i32* %2, align 4, !dbg !38
  %6 = sext i32 %5 to i64, !dbg !39
  %7 = inttoptr i64 %6 to i8*, !dbg !40
  %8 = call i8* @g_hash_table_lookup(%struct._GHashTable* %4, i8* %7), !dbg !41
  %9 = icmp eq i8* %8, null, !dbg !42
  br i1 %9, label %10, label %26, !dbg !43

; <label>:10:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %3, metadata !44, metadata !34), !dbg !46
  %11 = load i32, i32* %2, align 4, !dbg !47
  %12 = call i32 @g_child_watch_add_full(i32 10, i32 %11, void (i32, i32, i8*)* @sig_child, i8* null, void (i8*)* null), !dbg !48
  store i32 %12, i32* %3, align 4, !dbg !46
  %13 = load %struct._GHashTable*, %struct._GHashTable** @child_pids, align 8, !dbg !49
  %14 = load i32, i32* %2, align 4, !dbg !50
  %15 = sext i32 %14 to i64, !dbg !51
  %16 = inttoptr i64 %15 to i8*, !dbg !52
  %17 = load i32, i32* %3, align 4, !dbg !53
  %18 = sext i32 %17 to i64, !dbg !54
  %19 = inttoptr i64 %18 to i8*, !dbg !55
  %20 = call i32 @g_hash_table_insert(%struct._GHashTable* %13, i8* %16, i8* %19), !dbg !56
  %21 = load %struct._GSList*, %struct._GSList** @pids, align 8, !dbg !57
  %22 = load i32, i32* %2, align 4, !dbg !58
  %23 = sext i32 %22 to i64, !dbg !59
  %24 = inttoptr i64 %23 to i8*, !dbg !60
  %25 = call %struct._GSList* @g_slist_append(%struct._GSList* %21, i8* %24), !dbg !61
  store %struct._GSList* %25, %struct._GSList** @pids, align 8, !dbg !62
  br label %26, !dbg !63

; <label>:26:                                     ; preds = %10, %1
  ret void, !dbg !64
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare i32 @g_child_watch_add_full(i32, i32, void (i32, i32, i8*)*, i8*, void (i8*)*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_child(i32, i32, i8*) #0 !dbg !65 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !70, metadata !34), !dbg !71
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !72, metadata !34), !dbg !73
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !74, metadata !34), !dbg !75
  %7 = load i32, i32* @signal_pidwait, align 4, !dbg !76
  %8 = load i32, i32* %4, align 4, !dbg !77
  %9 = sext i32 %8 to i64, !dbg !78
  %10 = inttoptr i64 %9 to i8*, !dbg !79
  %11 = load i32, i32* %5, align 4, !dbg !80
  %12 = sext i32 %11 to i64, !dbg !81
  %13 = inttoptr i64 %12 to i8*, !dbg !82
  %14 = call i32 (i32, i32, ...) @signal_emit_id(i32 %7, i32 2, i8* %10, i8* %13), !dbg !83
  %15 = load %struct._GHashTable*, %struct._GHashTable** @child_pids, align 8, !dbg !84
  %16 = load i32, i32* %4, align 4, !dbg !85
  %17 = sext i32 %16 to i64, !dbg !86
  %18 = inttoptr i64 %17 to i8*, !dbg !87
  %19 = call i32 @g_hash_table_remove(%struct._GHashTable* %15, i8* %18), !dbg !88
  %20 = load %struct._GSList*, %struct._GSList** @pids, align 8, !dbg !89
  %21 = load i32, i32* %4, align 4, !dbg !90
  %22 = sext i32 %21 to i64, !dbg !91
  %23 = inttoptr i64 %22 to i8*, !dbg !92
  %24 = call %struct._GSList* @g_slist_remove(%struct._GSList* %20, i8* %23), !dbg !93
  store %struct._GSList* %24, %struct._GSList** @pids, align 8, !dbg !94
  ret void, !dbg !95
}

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define void @pidwait_remove(i32) #0 !dbg !96 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !97, metadata !34), !dbg !98
  call void @llvm.dbg.declare(metadata i8** %3, metadata !99, metadata !34), !dbg !100
  %4 = load %struct._GHashTable*, %struct._GHashTable** @child_pids, align 8, !dbg !101
  %5 = load i32, i32* %2, align 4, !dbg !102
  %6 = sext i32 %5 to i64, !dbg !103
  %7 = inttoptr i64 %6 to i8*, !dbg !104
  %8 = call i8* @g_hash_table_lookup(%struct._GHashTable* %4, i8* %7), !dbg !105
  store i8* %8, i8** %3, align 8, !dbg !100
  %9 = load i8*, i8** %3, align 8, !dbg !106
  %10 = icmp ne i8* %9, null, !dbg !108
  br i1 %10, label %11, label %26, !dbg !109

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %3, align 8, !dbg !110
  %13 = ptrtoint i8* %12 to i64, !dbg !112
  %14 = trunc i64 %13 to i32, !dbg !113
  %15 = call i32 @g_source_remove(i32 %14), !dbg !114
  %16 = load %struct._GHashTable*, %struct._GHashTable** @child_pids, align 8, !dbg !115
  %17 = load i32, i32* %2, align 4, !dbg !116
  %18 = sext i32 %17 to i64, !dbg !117
  %19 = inttoptr i64 %18 to i8*, !dbg !118
  %20 = call i32 @g_hash_table_remove(%struct._GHashTable* %16, i8* %19), !dbg !119
  %21 = load %struct._GSList*, %struct._GSList** @pids, align 8, !dbg !120
  %22 = load i32, i32* %2, align 4, !dbg !121
  %23 = sext i32 %22 to i64, !dbg !122
  %24 = inttoptr i64 %23 to i8*, !dbg !123
  %25 = call %struct._GSList* @g_slist_remove(%struct._GSList* %21, i8* %24), !dbg !124
  store %struct._GSList* %25, %struct._GSList** @pids, align 8, !dbg !125
  br label %26, !dbg !126

; <label>:26:                                     ; preds = %11, %1
  ret void, !dbg !127
}

declare i32 @g_source_remove(i32) #2

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #2

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._GSList* @pidwait_get_pids() #0 !dbg !128 {
  %1 = load %struct._GSList*, %struct._GSList** @pids, align 8, !dbg !131
  ret %struct._GSList* %1, !dbg !132
}

; Function Attrs: nounwind uwtable
define void @pidwait_init() #0 !dbg !133 {
  %1 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_direct_hash, i32 (i8*, i8*)* @g_direct_equal), !dbg !136
  store %struct._GHashTable* %1, %struct._GHashTable** @child_pids, align 8, !dbg !137
  store %struct._GSList* null, %struct._GSList** @pids, align 8, !dbg !138
  %2 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)), !dbg !139
  store i32 %2, i32* @signal_pidwait, align 4, !dbg !140
  ret void, !dbg !141
}

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind readnone
declare i32 @g_direct_hash(i8*) #3

; Function Attrs: nounwind readnone
declare i32 @g_direct_equal(i8*, i8*) #3

declare i32 @module_get_uniq_id_str(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @pidwait_deinit() #0 !dbg !142 {
  %1 = load %struct._GHashTable*, %struct._GHashTable** @child_pids, align 8, !dbg !143
  call void @g_hash_table_destroy(%struct._GHashTable* %1), !dbg !144
  %2 = load %struct._GSList*, %struct._GSList** @pids, align 8, !dbg !145
  call void @g_slist_free(%struct._GSList* %2), !dbg !146
  ret void, !dbg !147
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

declare void @g_slist_free(%struct._GSList*) #2

declare i32 @signal_emit_id(i32, i32, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!27, !28}
!llvm.ident = !{!29}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !11)
!1 = !DIFile(filename: "line67-pidwait.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{}
!3 = !{!4, !7, !6, !9}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !5, line: 77, baseType: !6)
!5 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !5, line: 48, baseType: !8)
!8 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !5, line: 49, baseType: !10)
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !{!12, !18, !26}
!12 = distinct !DIGlobalVariable(name: "child_pids", scope: !0, file: !13, line: 25, type: !14, isLocal: true, isDefinition: true, variable: %struct._GHashTable** @child_pids)
!13 = !DIFile(filename: "pidwait.c", directory: "/home/lichi/Desktop/irssi/task1")
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !16, line: 37, baseType: !17)
!16 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!17 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !16, line: 37, flags: DIFlagFwdDecl)
!18 = distinct !DIGlobalVariable(name: "pids", scope: !0, file: !13, line: 26, type: !19, isLocal: true, isDefinition: true, variable: %struct._GSList** @pids)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !21, line: 37, baseType: !22)
!21 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !21, line: 39, size: 128, align: 64, elements: !23)
!23 = !{!24, !25}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !22, file: !21, line: 41, baseType: !4, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !22, file: !21, line: 42, baseType: !19, size: 64, align: 64, offset: 64)
!26 = distinct !DIGlobalVariable(name: "signal_pidwait", scope: !0, file: !13, line: 28, type: !10, isLocal: true, isDefinition: true, variable: i32* @signal_pidwait)
!27 = !{i32 2, !"Dwarf Version", i32 4}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!30 = distinct !DISubprogram(name: "pidwait_add", scope: !13, file: !13, line: 39, type: !31, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !10}
!33 = !DILocalVariable(name: "pid", arg: 1, scope: !30, file: !13, line: 39, type: !10)
!34 = !DIExpression()
!35 = !DILocation(line: 39, column: 22, scope: !30)
!36 = !DILocation(line: 41, column: 26, scope: !37)
!37 = distinct !DILexicalBlock(scope: !30, file: !13, line: 41, column: 6)
!38 = !DILocation(line: 41, column: 59, scope: !37)
!39 = !DILocation(line: 41, column: 50, scope: !37)
!40 = !DILocation(line: 41, column: 39, scope: !37)
!41 = !DILocation(line: 41, column: 6, scope: !37)
!42 = !DILocation(line: 41, column: 66, scope: !37)
!43 = !DILocation(line: 41, column: 6, scope: !30)
!44 = !DILocalVariable(name: "id", scope: !45, file: !13, line: 42, type: !10)
!45 = distinct !DILexicalBlock(scope: !37, file: !13, line: 41, column: 68)
!46 = !DILocation(line: 42, column: 7, scope: !45)
!47 = !DILocation(line: 42, column: 39, scope: !45)
!48 = !DILocation(line: 42, column: 12, scope: !45)
!49 = !DILocation(line: 43, column: 23, scope: !45)
!50 = !DILocation(line: 43, column: 56, scope: !45)
!51 = !DILocation(line: 43, column: 47, scope: !45)
!52 = !DILocation(line: 43, column: 36, scope: !45)
!53 = !DILocation(line: 43, column: 84, scope: !45)
!54 = !DILocation(line: 43, column: 75, scope: !45)
!55 = !DILocation(line: 43, column: 64, scope: !45)
!56 = !DILocation(line: 43, column: 3, scope: !45)
!57 = !DILocation(line: 44, column: 25, scope: !45)
!58 = !DILocation(line: 44, column: 52, scope: !45)
!59 = !DILocation(line: 44, column: 43, scope: !45)
!60 = !DILocation(line: 44, column: 32, scope: !45)
!61 = !DILocation(line: 44, column: 10, scope: !45)
!62 = !DILocation(line: 44, column: 8, scope: !45)
!63 = !DILocation(line: 45, column: 2, scope: !45)
!64 = !DILocation(line: 46, column: 1, scope: !30)
!65 = distinct !DISubprogram(name: "sig_child", scope: !13, file: !13, line: 30, type: !66, isLocal: true, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !68, !9, !4}
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPid", file: !69, line: 183, baseType: !10)
!69 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!70 = !DILocalVariable(name: "pid", arg: 1, scope: !65, file: !13, line: 30, type: !68)
!71 = !DILocation(line: 30, column: 28, scope: !65)
!72 = !DILocalVariable(name: "status", arg: 2, scope: !65, file: !13, line: 30, type: !9)
!73 = !DILocation(line: 30, column: 38, scope: !65)
!74 = !DILocalVariable(name: "data", arg: 3, scope: !65, file: !13, line: 30, type: !4)
!75 = !DILocation(line: 30, column: 55, scope: !65)
!76 = !DILocation(line: 32, column: 17, scope: !65)
!77 = !DILocation(line: 32, column: 57, scope: !65)
!78 = !DILocation(line: 32, column: 48, scope: !65)
!79 = !DILocation(line: 32, column: 37, scope: !65)
!80 = !DILocation(line: 33, column: 31, scope: !65)
!81 = !DILocation(line: 33, column: 22, scope: !65)
!82 = !DILocation(line: 33, column: 11, scope: !65)
!83 = !DILocation(line: 32, column: 2, scope: !65)
!84 = !DILocation(line: 34, column: 22, scope: !65)
!85 = !DILocation(line: 34, column: 55, scope: !65)
!86 = !DILocation(line: 34, column: 46, scope: !65)
!87 = !DILocation(line: 34, column: 35, scope: !65)
!88 = !DILocation(line: 34, column: 2, scope: !65)
!89 = !DILocation(line: 35, column: 24, scope: !65)
!90 = !DILocation(line: 35, column: 51, scope: !65)
!91 = !DILocation(line: 35, column: 42, scope: !65)
!92 = !DILocation(line: 35, column: 31, scope: !65)
!93 = !DILocation(line: 35, column: 9, scope: !65)
!94 = !DILocation(line: 35, column: 7, scope: !65)
!95 = !DILocation(line: 36, column: 1, scope: !65)
!96 = distinct !DISubprogram(name: "pidwait_remove", scope: !13, file: !13, line: 49, type: !31, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!97 = !DILocalVariable(name: "pid", arg: 1, scope: !96, file: !13, line: 49, type: !10)
!98 = !DILocation(line: 49, column: 25, scope: !96)
!99 = !DILocalVariable(name: "id", scope: !96, file: !13, line: 51, type: !4)
!100 = !DILocation(line: 51, column: 11, scope: !96)
!101 = !DILocation(line: 51, column: 36, scope: !96)
!102 = !DILocation(line: 51, column: 69, scope: !96)
!103 = !DILocation(line: 51, column: 60, scope: !96)
!104 = !DILocation(line: 51, column: 49, scope: !96)
!105 = !DILocation(line: 51, column: 16, scope: !96)
!106 = !DILocation(line: 52, column: 6, scope: !107)
!107 = distinct !DILexicalBlock(scope: !96, file: !13, line: 52, column: 6)
!108 = !DILocation(line: 52, column: 9, scope: !107)
!109 = !DILocation(line: 52, column: 6, scope: !96)
!110 = !DILocation(line: 53, column: 36, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !13, line: 52, column: 17)
!112 = !DILocation(line: 53, column: 27, scope: !111)
!113 = !DILocation(line: 53, column: 20, scope: !111)
!114 = !DILocation(line: 53, column: 3, scope: !111)
!115 = !DILocation(line: 54, column: 23, scope: !111)
!116 = !DILocation(line: 54, column: 56, scope: !111)
!117 = !DILocation(line: 54, column: 47, scope: !111)
!118 = !DILocation(line: 54, column: 36, scope: !111)
!119 = !DILocation(line: 54, column: 3, scope: !111)
!120 = !DILocation(line: 55, column: 25, scope: !111)
!121 = !DILocation(line: 55, column: 52, scope: !111)
!122 = !DILocation(line: 55, column: 43, scope: !111)
!123 = !DILocation(line: 55, column: 32, scope: !111)
!124 = !DILocation(line: 55, column: 10, scope: !111)
!125 = !DILocation(line: 55, column: 8, scope: !111)
!126 = !DILocation(line: 56, column: 2, scope: !111)
!127 = !DILocation(line: 57, column: 1, scope: !96)
!128 = distinct !DISubprogram(name: "pidwait_get_pids", scope: !13, file: !13, line: 61, type: !129, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!129 = !DISubroutineType(types: !130)
!130 = !{!19}
!131 = !DILocation(line: 63, column: 16, scope: !128)
!132 = !DILocation(line: 63, column: 9, scope: !128)
!133 = distinct !DISubprogram(name: "pidwait_init", scope: !13, file: !13, line: 66, type: !134, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!134 = !DISubroutineType(types: !135)
!135 = !{null}
!136 = !DILocation(line: 68, column: 15, scope: !133)
!137 = !DILocation(line: 68, column: 13, scope: !133)
!138 = !DILocation(line: 69, column: 7, scope: !133)
!139 = !DILocation(line: 71, column: 19, scope: !133)
!140 = !DILocation(line: 71, column: 17, scope: !133)
!141 = !DILocation(line: 72, column: 1, scope: !133)
!142 = distinct !DISubprogram(name: "pidwait_deinit", scope: !13, file: !13, line: 74, type: !134, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!143 = !DILocation(line: 76, column: 23, scope: !142)
!144 = !DILocation(line: 76, column: 2, scope: !142)
!145 = !DILocation(line: 77, column: 15, scope: !142)
!146 = !DILocation(line: 77, column: 2, scope: !142)
!147 = !DILocation(line: 78, column: 1, scope: !142)
