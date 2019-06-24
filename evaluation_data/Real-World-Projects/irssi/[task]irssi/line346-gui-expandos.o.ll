; ModuleID = './line346-gui-expandos.o.i'
source_filename = "./line346-gui-expandos.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GUI_ENTRY_REC = type { i32, i32, i32*, i8**, %struct._GSList*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._SERVER_REC = type opaque

@.str = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@active_entry = external global %struct.GUI_ENTRY_REC*, align 8

; Function Attrs: nounwind uwtable
define void @gui_expandos_init() #0 !dbg !9 {
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_idletime, i8* null), !dbg !13
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_inputline, i8* null), !dbg !14
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_cutbuffer, i8* null), !dbg !15
  ret void, !dbg !16
}

declare void @expando_create(i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) #1

; Function Attrs: nounwind uwtable
define internal i8* @expando_idletime(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !17 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !27, metadata !28), !dbg !29
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !30, metadata !28), !dbg !31
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !32, metadata !28), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %7, metadata !34, metadata !28), !dbg !35
  %8 = load i32*, i32** %6, align 8, !dbg !36
  store i32 1, i32* %8, align 4, !dbg !37
  %9 = call i64 @time(i64* null) #4, !dbg !38
  %10 = call i64 @get_idle_time(), !dbg !39
  %11 = sub nsw i64 %9, %10, !dbg !41
  %12 = trunc i64 %11 to i32, !dbg !42
  store i32 %12, i32* %7, align 4, !dbg !43
  %13 = load i32, i32* %7, align 4, !dbg !44
  %14 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 %13), !dbg !45
  ret i8* %14, !dbg !46
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_inputline(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !47 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !48, metadata !28), !dbg !49
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !50, metadata !28), !dbg !51
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !52, metadata !28), !dbg !53
  %7 = load i32*, i32** %6, align 8, !dbg !54
  store i32 1, i32* %7, align 4, !dbg !55
  %8 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !56
  %9 = call i8* @gui_entry_get_text(%struct.GUI_ENTRY_REC* %8), !dbg !57
  ret i8* %9, !dbg !58
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_cutbuffer(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !59 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !60, metadata !28), !dbg !61
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !62, metadata !28), !dbg !63
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !64, metadata !28), !dbg !65
  %7 = load i32*, i32** %6, align 8, !dbg !66
  store i32 1, i32* %7, align 4, !dbg !67
  %8 = load %struct.GUI_ENTRY_REC*, %struct.GUI_ENTRY_REC** @active_entry, align 8, !dbg !68
  %9 = call i8* @gui_entry_get_cutbuffer(%struct.GUI_ENTRY_REC* %8), !dbg !69
  ret i8* %9, !dbg !70
}

; Function Attrs: nounwind uwtable
define void @gui_expandos_deinit() #0 !dbg !71 {
  call void @expando_destroy(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_idletime), !dbg !72
  call void @expando_destroy(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_inputline), !dbg !73
  call void @expando_destroy(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_cutbuffer), !dbg !74
  ret void, !dbg !75
}

declare void @expando_destroy(i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare i64 @get_idle_time() #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i8* @gui_entry_get_text(%struct.GUI_ENTRY_REC*) #1

declare i8* @gui_entry_get_cutbuffer(%struct.GUI_ENTRY_REC*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "line346-gui-expandos.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!9 = distinct !DISubprogram(name: "gui_expandos_init", scope: !10, file: !10, line: 51, type: !11, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!10 = !DIFile(filename: "gui-expandos.c", directory: "/home/lichi/Desktop/irssi/task1")
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocation(line: 53, column: 2, scope: !9)
!14 = !DILocation(line: 54, column: 2, scope: !9)
!15 = !DILocation(line: 55, column: 2, scope: !9)
!16 = !DILocation(line: 56, column: 1, scope: !9)
!17 = distinct !DISubprogram(name: "expando_idletime", scope: !10, file: !10, line: 28, type: !18, isLocal: true, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !22, !4, !26}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !24, line: 107, baseType: !25)
!24 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !24, line: 107, flags: DIFlagFwdDecl)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!27 = !DILocalVariable(name: "server", arg: 1, scope: !17, file: !10, line: 28, type: !22)
!28 = !DIExpression()
!29 = !DILocation(line: 28, column: 43, scope: !17)
!30 = !DILocalVariable(name: "item", arg: 2, scope: !17, file: !10, line: 28, type: !4)
!31 = !DILocation(line: 28, column: 57, scope: !17)
!32 = !DILocalVariable(name: "free_ret", arg: 3, scope: !17, file: !10, line: 28, type: !26)
!33 = !DILocation(line: 28, column: 68, scope: !17)
!34 = !DILocalVariable(name: "diff", scope: !17, file: !10, line: 30, type: !5)
!35 = !DILocation(line: 30, column: 6, scope: !17)
!36 = !DILocation(line: 32, column: 10, scope: !17)
!37 = !DILocation(line: 32, column: 19, scope: !17)
!38 = !DILocation(line: 33, column: 16, scope: !17)
!39 = !DILocation(line: 33, column: 28, scope: !40)
!40 = !DILexicalBlockFile(scope: !17, file: !10, discriminator: 1)
!41 = !DILocation(line: 33, column: 26, scope: !17)
!42 = !DILocation(line: 33, column: 9, scope: !17)
!43 = !DILocation(line: 33, column: 7, scope: !17)
!44 = !DILocation(line: 34, column: 31, scope: !17)
!45 = !DILocation(line: 34, column: 9, scope: !17)
!46 = !DILocation(line: 34, column: 2, scope: !17)
!47 = distinct !DISubprogram(name: "expando_inputline", scope: !10, file: !10, line: 38, type: !18, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!48 = !DILocalVariable(name: "server", arg: 1, scope: !47, file: !10, line: 38, type: !22)
!49 = !DILocation(line: 38, column: 44, scope: !47)
!50 = !DILocalVariable(name: "item", arg: 2, scope: !47, file: !10, line: 38, type: !4)
!51 = !DILocation(line: 38, column: 58, scope: !47)
!52 = !DILocalVariable(name: "free_ret", arg: 3, scope: !47, file: !10, line: 38, type: !26)
!53 = !DILocation(line: 38, column: 69, scope: !47)
!54 = !DILocation(line: 40, column: 3, scope: !47)
!55 = !DILocation(line: 40, column: 12, scope: !47)
!56 = !DILocation(line: 41, column: 28, scope: !47)
!57 = !DILocation(line: 41, column: 9, scope: !47)
!58 = !DILocation(line: 41, column: 2, scope: !47)
!59 = distinct !DISubprogram(name: "expando_cutbuffer", scope: !10, file: !10, line: 45, type: !18, isLocal: true, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!60 = !DILocalVariable(name: "server", arg: 1, scope: !59, file: !10, line: 45, type: !22)
!61 = !DILocation(line: 45, column: 44, scope: !59)
!62 = !DILocalVariable(name: "item", arg: 2, scope: !59, file: !10, line: 45, type: !4)
!63 = !DILocation(line: 45, column: 58, scope: !59)
!64 = !DILocalVariable(name: "free_ret", arg: 3, scope: !59, file: !10, line: 45, type: !26)
!65 = !DILocation(line: 45, column: 69, scope: !59)
!66 = !DILocation(line: 47, column: 3, scope: !59)
!67 = !DILocation(line: 47, column: 12, scope: !59)
!68 = !DILocation(line: 48, column: 33, scope: !59)
!69 = !DILocation(line: 48, column: 9, scope: !59)
!70 = !DILocation(line: 48, column: 2, scope: !59)
!71 = distinct !DISubprogram(name: "gui_expandos_deinit", scope: !10, file: !10, line: 58, type: !11, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!72 = !DILocation(line: 60, column: 2, scope: !71)
!73 = !DILocation(line: 61, column: 2, scope: !71)
!74 = !DILocation(line: 62, column: 2, scope: !71)
!75 = !DILocation(line: 63, column: 1, scope: !71)
