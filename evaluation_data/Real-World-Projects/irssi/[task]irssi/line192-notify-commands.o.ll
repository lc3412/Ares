; ModuleID = './line192-notify-commands.o.i'
source_filename = "./line192-notify-commands.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GHashTable = type opaque
%struct.NOTIFYLIST_REC = type { i8*, i8**, i8 }

@.str = private unnamed_addr constant [15 x i8] c"irc/notifylist\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"unnotify\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"away\00", align 1
@__func__.cmd_notify = private unnamed_addr constant [11 x i8] c"cmd_notify\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@__func__.cmd_unnotify = private unnamed_addr constant [13 x i8] c"cmd_unnotify\00", align 1

; Function Attrs: nounwind uwtable
define void @notifylist_commands_init() #0 !dbg !45 {
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_notify to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !50
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_unnotify to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !51
  call void @command_set_options_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)), !dbg !52
  ret void, !dbg !53
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cmd_notify(i8*) #0 !dbg !54 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GHashTable*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !57, metadata !58), !dbg !59
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %3, metadata !60, metadata !58), !dbg !65
  call void @llvm.dbg.declare(metadata i8** %4, metadata !66, metadata !58), !dbg !68
  call void @llvm.dbg.declare(metadata i8** %5, metadata !69, metadata !58), !dbg !70
  call void @llvm.dbg.declare(metadata i8** %6, metadata !71, metadata !58), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %7, metadata !73, metadata !58), !dbg !75
  br label %8, !dbg !76, !llvm.loop !77

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %2, align 8, !dbg !78
  %10 = icmp ne i8* %9, null, !dbg !82
  br i1 %10, label %11, label %12, !dbg !78

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !83

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.cmd_notify, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0)), !dbg !86
  br label %42, !dbg !89

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !90

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %2, align 8, !dbg !92
  %16 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %15, i8** %6, i32 286722, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), %struct._GHashTable** %3, i8** %4, i8** %5), !dbg !94
  %17 = icmp ne i32 %16, 0, !dbg !94
  br i1 %17, label %19, label %18, !dbg !95

; <label>:18:                                     ; preds = %14
  br label %42, !dbg !96

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %4, align 8, !dbg !97
  %21 = load i8, i8* %20, align 1, !dbg !99
  %22 = sext i8 %21 to i32, !dbg !99
  %23 = icmp eq i32 %22, 0, !dbg !100
  br i1 %23, label %24, label %31, !dbg !101

; <label>:24:                                     ; preds = %19
  br label %25, !dbg !102, !llvm.loop !104

; <label>:25:                                     ; preds = %24
  %26 = load i8*, i8** %6, align 8, !dbg !106
  call void @cmd_params_free(i8* %26), !dbg !109
  br label %27, !dbg !110, !llvm.loop !111

; <label>:27:                                     ; preds = %25
  %28 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !113
  call void @signal_stop(), !dbg !116
  br label %42, !dbg !118
                                                  ; No predecessors!
  br label %30, !dbg !119

; <label>:30:                                     ; preds = %29
  br label %31, !dbg !121

; <label>:31:                                     ; preds = %30, %19
  %32 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !123
  %33 = call i8* @g_hash_table_lookup(%struct._GHashTable* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)), !dbg !124
  %34 = icmp ne i8* %33, null, !dbg !125
  %35 = zext i1 %34 to i32, !dbg !125
  store i32 %35, i32* %7, align 4, !dbg !126
  %36 = load i8*, i8** %4, align 8, !dbg !127
  call void @notifylist_remove(i8* %36), !dbg !128
  %37 = load i8*, i8** %4, align 8, !dbg !129
  %38 = load i8*, i8** %5, align 8, !dbg !130
  %39 = load i32, i32* %7, align 4, !dbg !131
  %40 = call %struct.NOTIFYLIST_REC* @notifylist_add(i8* %37, i8* %38, i32 %39), !dbg !132
  %41 = load i8*, i8** %6, align 8, !dbg !133
  call void @cmd_params_free(i8* %41), !dbg !134
  br label %42, !dbg !135

; <label>:42:                                     ; preds = %31, %27, %18, %12
  ret void, !dbg !136
}

; Function Attrs: nounwind uwtable
define internal void @cmd_unnotify(i8*) #0 !dbg !138 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !141, metadata !58), !dbg !142
  call void @llvm.dbg.declare(metadata i8** %3, metadata !143, metadata !58), !dbg !144
  call void @llvm.dbg.declare(metadata i8** %4, metadata !145, metadata !58), !dbg !146
  br label %5, !dbg !147, !llvm.loop !148

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !149
  %7 = icmp ne i8* %6, null, !dbg !153
  br i1 %7, label %8, label %9, !dbg !149

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !154

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.cmd_unnotify, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0)), !dbg !157
  br label %31, !dbg !160

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !161

; <label>:11:                                     ; preds = %10
  %12 = load i8*, i8** %2, align 8, !dbg !163
  %13 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %12, i8** %4, i32 1, i8** %3), !dbg !165
  %14 = icmp ne i32 %13, 0, !dbg !165
  br i1 %14, label %16, label %15, !dbg !166

; <label>:15:                                     ; preds = %11
  br label %31, !dbg !167

; <label>:16:                                     ; preds = %11
  %17 = load i8*, i8** %3, align 8, !dbg !168
  %18 = load i8, i8* %17, align 1, !dbg !170
  %19 = sext i8 %18 to i32, !dbg !170
  %20 = icmp eq i32 %19, 0, !dbg !171
  br i1 %20, label %21, label %28, !dbg !172

; <label>:21:                                     ; preds = %16
  br label %22, !dbg !173, !llvm.loop !175

; <label>:22:                                     ; preds = %21
  %23 = load i8*, i8** %4, align 8, !dbg !177
  call void @cmd_params_free(i8* %23), !dbg !180
  br label %24, !dbg !181, !llvm.loop !182

; <label>:24:                                     ; preds = %22
  %25 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !184
  call void @signal_stop(), !dbg !187
  br label %31, !dbg !189
                                                  ; No predecessors!
  br label %27, !dbg !190

; <label>:27:                                     ; preds = %26
  br label %28, !dbg !192

; <label>:28:                                     ; preds = %27, %16
  %29 = load i8*, i8** %3, align 8, !dbg !194
  call void @notifylist_remove(i8* %29), !dbg !195
  %30 = load i8*, i8** %4, align 8, !dbg !196
  call void @cmd_params_free(i8* %30), !dbg !197
  br label %31, !dbg !198

; <label>:31:                                     ; preds = %28, %24, %15, %9
  ret void, !dbg !199
}

declare void @command_set_options_module(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @notifylist_commands_deinit() #0 !dbg !201 {
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_notify to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !202
  call void @command_unbind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_unnotify to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !203
  ret void, !dbg !204
}

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #1

declare void @cmd_params_free(i8*) #1

declare i32 @signal_emit(i8*, i32, ...) #1

declare void @signal_stop() #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare void @notifylist_remove(i8*) #1

declare %struct.NOTIFYLIST_REC* @notifylist_add(i8*, i8*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !24)
!1 = !DIFile(filename: "line192-notify-commands.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 25, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!6 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!7 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!8 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!9 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!10 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!11 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!12 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!13 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!14 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!15 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!16 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!17 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!18 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!19 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!20 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!21 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!22 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!23 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!24 = !{!25, !32, !33, !37, !39, !40}
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !26, line: 9, baseType: !27)
!26 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30, !30, !30, !30, !30, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!36 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !35, line: 77, baseType: !32)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !35, line: 48, baseType: !41)
!41 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!42 = !{i32 2, !"Dwarf Version", i32 4}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!45 = distinct !DISubprogram(name: "notifylist_commands_init", scope: !46, file: !46, line: 69, type: !47, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !49)
!46 = !DIFile(filename: "notify-commands.c", directory: "/home/lichi/Desktop/irssi/task1")
!47 = !DISubroutineType(types: !48)
!48 = !{null}
!49 = !{}
!50 = !DILocation(line: 71, column: 2, scope: !45)
!51 = !DILocation(line: 72, column: 2, scope: !45)
!52 = !DILocation(line: 74, column: 2, scope: !45)
!53 = !DILocation(line: 75, column: 1, scope: !45)
!54 = distinct !DISubprogram(name: "cmd_notify", scope: !46, file: !46, line: 30, type: !55, isLocal: true, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !49)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !33}
!57 = !DILocalVariable(name: "data", arg: 1, scope: !54, file: !46, line: 30, type: !33)
!58 = !DIExpression()
!59 = !DILocation(line: 30, column: 31, scope: !54)
!60 = !DILocalVariable(name: "optlist", scope: !54, file: !46, line: 32, type: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !63, line: 37, baseType: !64)
!63 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !63, line: 37, flags: DIFlagFwdDecl)
!65 = !DILocation(line: 32, column: 14, scope: !54)
!66 = !DILocalVariable(name: "mask", scope: !54, file: !46, line: 33, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!68 = !DILocation(line: 33, column: 8, scope: !54)
!69 = !DILocalVariable(name: "ircnets", scope: !54, file: !46, line: 33, type: !67)
!70 = !DILocation(line: 33, column: 15, scope: !54)
!71 = !DILocalVariable(name: "free_arg", scope: !54, file: !46, line: 34, type: !32)
!72 = !DILocation(line: 34, column: 8, scope: !54)
!73 = !DILocalVariable(name: "away_check", scope: !54, file: !46, line: 35, type: !74)
!74 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!75 = !DILocation(line: 35, column: 6, scope: !54)
!76 = !DILocation(line: 37, column: 2, scope: !54)
!77 = distinct !{!77, !76}
!78 = !DILocation(line: 37, column: 10, scope: !79)
!79 = !DILexicalBlockFile(scope: !80, file: !46, discriminator: 1)
!80 = distinct !DILexicalBlock(scope: !81, file: !46, line: 37, column: 10)
!81 = distinct !DILexicalBlock(scope: !54, file: !46, line: 37, column: 4)
!82 = !DILocation(line: 37, column: 15, scope: !79)
!83 = !DILocation(line: 37, column: 5, scope: !84)
!84 = !DILexicalBlockFile(scope: !85, file: !46, discriminator: 2)
!85 = distinct !DILexicalBlock(scope: !80, file: !46, line: 37, column: 3)
!86 = !DILocation(line: 37, column: 14, scope: !87)
!87 = !DILexicalBlockFile(scope: !88, file: !46, discriminator: 3)
!88 = distinct !DILexicalBlock(scope: !80, file: !46, line: 37, column: 12)
!89 = !DILocation(line: 37, column: 99, scope: !87)
!90 = !DILocation(line: 37, column: 110, scope: !91)
!91 = !DILexicalBlockFile(scope: !81, file: !46, discriminator: 4)
!92 = !DILocation(line: 39, column: 22, scope: !93)
!93 = distinct !DILexicalBlock(scope: !54, file: !46, line: 39, column: 6)
!94 = !DILocation(line: 39, column: 7, scope: !93)
!95 = !DILocation(line: 39, column: 6, scope: !54)
!96 = !DILocation(line: 42, column: 3, scope: !93)
!97 = !DILocation(line: 43, column: 7, scope: !98)
!98 = distinct !DILexicalBlock(scope: !54, file: !46, line: 43, column: 6)
!99 = !DILocation(line: 43, column: 6, scope: !98)
!100 = !DILocation(line: 43, column: 12, scope: !98)
!101 = !DILocation(line: 43, column: 6, scope: !54)
!102 = !DILocation(line: 43, column: 21, scope: !103)
!103 = !DILexicalBlockFile(scope: !98, file: !46, discriminator: 1)
!104 = distinct !{!104, !105}
!105 = !DILocation(line: 43, column: 21, scope: !98)
!106 = !DILocation(line: 43, column: 42, scope: !107)
!107 = !DILexicalBlockFile(scope: !108, file: !46, discriminator: 2)
!108 = distinct !DILexicalBlock(scope: !98, file: !46, line: 43, column: 24)
!109 = !DILocation(line: 43, column: 26, scope: !107)
!110 = !DILocation(line: 43, column: 53, scope: !107)
!111 = distinct !{!111, !112}
!112 = !DILocation(line: 43, column: 53, scope: !108)
!113 = !DILocation(line: 43, column: 58, scope: !114)
!114 = !DILexicalBlockFile(scope: !115, file: !46, discriminator: 3)
!115 = distinct !DILexicalBlock(scope: !108, file: !46, line: 43, column: 56)
!116 = !DILocation(line: 43, column: 140, scope: !117)
!117 = !DILexicalBlockFile(scope: !114, file: !46, discriminator: 6)
!118 = !DILocation(line: 43, column: 155, scope: !114)
!119 = !DILocation(line: 43, column: 176, scope: !120)
!120 = !DILexicalBlockFile(scope: !108, file: !46, discriminator: 4)
!121 = !DILocation(line: 43, column: 176, scope: !122)
!122 = !DILexicalBlockFile(scope: !108, file: !46, discriminator: 5)
!123 = !DILocation(line: 45, column: 35, scope: !54)
!124 = !DILocation(line: 45, column: 15, scope: !54)
!125 = !DILocation(line: 45, column: 52, scope: !54)
!126 = !DILocation(line: 45, column: 13, scope: !54)
!127 = !DILocation(line: 46, column: 20, scope: !54)
!128 = !DILocation(line: 46, column: 2, scope: !54)
!129 = !DILocation(line: 47, column: 17, scope: !54)
!130 = !DILocation(line: 47, column: 23, scope: !54)
!131 = !DILocation(line: 47, column: 32, scope: !54)
!132 = !DILocation(line: 47, column: 2, scope: !54)
!133 = !DILocation(line: 49, column: 18, scope: !54)
!134 = !DILocation(line: 49, column: 2, scope: !54)
!135 = !DILocation(line: 50, column: 1, scope: !54)
!136 = !DILocation(line: 50, column: 1, scope: !137)
!137 = !DILexicalBlockFile(scope: !54, file: !46, discriminator: 1)
!138 = distinct !DISubprogram(name: "cmd_unnotify", scope: !46, file: !46, line: 53, type: !139, isLocal: true, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !49)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !37}
!141 = !DILocalVariable(name: "data", arg: 1, scope: !138, file: !46, line: 53, type: !37)
!142 = !DILocation(line: 53, column: 38, scope: !138)
!143 = !DILocalVariable(name: "mask", scope: !138, file: !46, line: 55, type: !67)
!144 = !DILocation(line: 55, column: 8, scope: !138)
!145 = !DILocalVariable(name: "free_arg", scope: !138, file: !46, line: 56, type: !32)
!146 = !DILocation(line: 56, column: 8, scope: !138)
!147 = !DILocation(line: 58, column: 2, scope: !138)
!148 = distinct !{!148, !147}
!149 = !DILocation(line: 58, column: 10, scope: !150)
!150 = !DILexicalBlockFile(scope: !151, file: !46, discriminator: 1)
!151 = distinct !DILexicalBlock(scope: !152, file: !46, line: 58, column: 10)
!152 = distinct !DILexicalBlock(scope: !138, file: !46, line: 58, column: 4)
!153 = !DILocation(line: 58, column: 15, scope: !150)
!154 = !DILocation(line: 58, column: 5, scope: !155)
!155 = !DILexicalBlockFile(scope: !156, file: !46, discriminator: 2)
!156 = distinct !DILexicalBlock(scope: !151, file: !46, line: 58, column: 3)
!157 = !DILocation(line: 58, column: 14, scope: !158)
!158 = !DILexicalBlockFile(scope: !159, file: !46, discriminator: 3)
!159 = distinct !DILexicalBlock(scope: !151, file: !46, line: 58, column: 12)
!160 = !DILocation(line: 58, column: 99, scope: !158)
!161 = !DILocation(line: 58, column: 110, scope: !162)
!162 = !DILexicalBlockFile(scope: !152, file: !46, discriminator: 4)
!163 = !DILocation(line: 60, column: 22, scope: !164)
!164 = distinct !DILexicalBlock(scope: !138, file: !46, line: 60, column: 6)
!165 = !DILocation(line: 60, column: 7, scope: !164)
!166 = !DILocation(line: 60, column: 6, scope: !138)
!167 = !DILocation(line: 61, column: 3, scope: !164)
!168 = !DILocation(line: 62, column: 7, scope: !169)
!169 = distinct !DILexicalBlock(scope: !138, file: !46, line: 62, column: 6)
!170 = !DILocation(line: 62, column: 6, scope: !169)
!171 = !DILocation(line: 62, column: 12, scope: !169)
!172 = !DILocation(line: 62, column: 6, scope: !138)
!173 = !DILocation(line: 62, column: 21, scope: !174)
!174 = !DILexicalBlockFile(scope: !169, file: !46, discriminator: 1)
!175 = distinct !{!175, !176}
!176 = !DILocation(line: 62, column: 21, scope: !169)
!177 = !DILocation(line: 62, column: 42, scope: !178)
!178 = !DILexicalBlockFile(scope: !179, file: !46, discriminator: 2)
!179 = distinct !DILexicalBlock(scope: !169, file: !46, line: 62, column: 24)
!180 = !DILocation(line: 62, column: 26, scope: !178)
!181 = !DILocation(line: 62, column: 53, scope: !178)
!182 = distinct !{!182, !183}
!183 = !DILocation(line: 62, column: 53, scope: !179)
!184 = !DILocation(line: 62, column: 58, scope: !185)
!185 = !DILexicalBlockFile(scope: !186, file: !46, discriminator: 3)
!186 = distinct !DILexicalBlock(scope: !179, file: !46, line: 62, column: 56)
!187 = !DILocation(line: 62, column: 140, scope: !188)
!188 = !DILexicalBlockFile(scope: !185, file: !46, discriminator: 6)
!189 = !DILocation(line: 62, column: 155, scope: !185)
!190 = !DILocation(line: 62, column: 176, scope: !191)
!191 = !DILexicalBlockFile(scope: !179, file: !46, discriminator: 4)
!192 = !DILocation(line: 62, column: 176, scope: !193)
!193 = !DILexicalBlockFile(scope: !179, file: !46, discriminator: 5)
!194 = !DILocation(line: 64, column: 20, scope: !138)
!195 = !DILocation(line: 64, column: 2, scope: !138)
!196 = !DILocation(line: 66, column: 18, scope: !138)
!197 = !DILocation(line: 66, column: 2, scope: !138)
!198 = !DILocation(line: 67, column: 1, scope: !138)
!199 = !DILocation(line: 67, column: 1, scope: !200)
!200 = !DILexicalBlockFile(scope: !138, file: !46, discriminator: 1)
!201 = distinct !DISubprogram(name: "notifylist_commands_deinit", scope: !46, file: !46, line: 77, type: !47, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !49)
!202 = !DILocation(line: 79, column: 2, scope: !201)
!203 = !DILocation(line: 80, column: 2, scope: !201)
!204 = !DILocation(line: 81, column: 1, scope: !201)
