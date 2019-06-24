; ModuleID = './line330-irc-completion.o.i'
source_filename = "./line330-irc-completion.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._WINDOW_REC = type opaque

@.str = private unnamed_addr constant [14 x i8] c"fe-common/irc\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"complete command stats\00", align 1

; Function Attrs: nounwind uwtable
define void @irc_completion_init() #0 !dbg !15 {
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_stats to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !19
  ret void, !dbg !20
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_complete_stats(%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*) #0 !dbg !21 {
  %6 = alloca %struct._GList**, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct._GList** %0, %struct._GList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GList*** %6, metadata !44, metadata !45), !dbg !46
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !47, metadata !45), !dbg !48
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !49, metadata !45), !dbg !50
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !51, metadata !45), !dbg !52
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !53, metadata !45), !dbg !54
  %11 = load i8*, i8** %8, align 8, !dbg !55
  %12 = call %struct._GList* @completion_get_servers(i8* %11), !dbg !56
  %13 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !57
  store %struct._GList* %12, %struct._GList** %13, align 8, !dbg !58
  %14 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !59
  %15 = load %struct._GList*, %struct._GList** %14, align 8, !dbg !61
  %16 = icmp ne %struct._GList* %15, null, !dbg !62
  br i1 %16, label %17, label %18, !dbg !63

; <label>:17:                                     ; preds = %5
  call void @signal_stop(), !dbg !64
  br label %18, !dbg !64

; <label>:18:                                     ; preds = %17, %5
  ret void, !dbg !66
}

; Function Attrs: nounwind uwtable
define void @irc_completion_deinit() #0 !dbg !67 {
  call void @signal_remove_full(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_stats to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !68
  ret void, !dbg !69
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._GList* @completion_get_servers(i8*) #1

declare void @signal_stop() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "line330-irc-completion.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{}
!3 = !{!4, !11}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !5, line: 9, baseType: !6)
!5 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !9, !9, !9, !9, !9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!12 = !{i32 2, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!15 = distinct !DISubprogram(name: "irc_completion_init", scope: !16, file: !16, line: 33, type: !17, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!16 = !DIFile(filename: "irc-completion.c", directory: "/home/lichi/Desktop/irssi/task1")
!17 = !DISubroutineType(types: !18)
!18 = !{null}
!19 = !DILocation(line: 35, column: 2, scope: !15)
!20 = !DILocation(line: 36, column: 1, scope: !15)
!21 = distinct !DISubprogram(name: "sig_complete_stats", scope: !16, file: !16, line: 25, type: !22, isLocal: true, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24, !35, !39, !39, !42}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !27, line: 37, baseType: !28)
!27 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !27, line: 39, size: 192, align: 64, elements: !29)
!29 = !{!30, !33, !34}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !28, file: !27, line: 41, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !32, line: 77, baseType: !11)
!32 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!33 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !28, file: !27, line: 42, baseType: !25, size: 64, align: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !28, file: !27, line: 43, baseType: !25, size: 64, align: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !37, line: 117, baseType: !38)
!37 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !37, line: 117, flags: DIFlagFwdDecl)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!44 = !DILocalVariable(name: "list", arg: 1, scope: !21, file: !16, line: 25, type: !24)
!45 = !DIExpression()
!46 = !DILocation(line: 25, column: 40, scope: !21)
!47 = !DILocalVariable(name: "window", arg: 2, scope: !21, file: !16, line: 25, type: !35)
!48 = !DILocation(line: 25, column: 58, scope: !21)
!49 = !DILocalVariable(name: "word", arg: 3, scope: !21, file: !16, line: 26, type: !39)
!50 = !DILocation(line: 26, column: 23, scope: !21)
!51 = !DILocalVariable(name: "line", arg: 4, scope: !21, file: !16, line: 26, type: !39)
!52 = !DILocation(line: 26, column: 41, scope: !21)
!53 = !DILocalVariable(name: "want_space", arg: 5, scope: !21, file: !16, line: 27, type: !42)
!54 = !DILocation(line: 27, column: 16, scope: !21)
!55 = !DILocation(line: 29, column: 33, scope: !21)
!56 = !DILocation(line: 29, column: 10, scope: !21)
!57 = !DILocation(line: 29, column: 3, scope: !21)
!58 = !DILocation(line: 29, column: 8, scope: !21)
!59 = !DILocation(line: 30, column: 7, scope: !60)
!60 = distinct !DILexicalBlock(scope: !21, file: !16, line: 30, column: 6)
!61 = !DILocation(line: 30, column: 6, scope: !60)
!62 = !DILocation(line: 30, column: 12, scope: !60)
!63 = !DILocation(line: 30, column: 6, scope: !21)
!64 = !DILocation(line: 30, column: 20, scope: !65)
!65 = !DILexicalBlockFile(scope: !60, file: !16, discriminator: 1)
!66 = !DILocation(line: 31, column: 1, scope: !21)
!67 = distinct !DISubprogram(name: "irc_completion_deinit", scope: !16, file: !16, line: 38, type: !17, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!68 = !DILocation(line: 40, column: 2, scope: !67)
!69 = !DILocation(line: 41, column: 1, scope: !67)
