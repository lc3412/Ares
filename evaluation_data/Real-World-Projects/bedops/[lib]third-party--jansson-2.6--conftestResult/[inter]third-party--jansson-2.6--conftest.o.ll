; ModuleID = './[inter]third-party--jansson-2.6--conftest.o.i'
source_filename = "./[inter]third-party--jansson-2.6--conftest.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@some_variable = global i32 0, align 4

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "[inter]third-party--jansson-2.6--conftest.o.i", directory: "/home/lichi/Desktop/bedops/[lib]third-party--jansson-2.6--conftest")
!2 = !{}
!3 = !{!4}
!4 = distinct !DIGlobalVariable(name: "some_variable", scope: !0, file: !5, line: 1, type: !6, isLocal: false, isDefinition: true, variable: i32* @some_variable)
!5 = !DIFile(filename: "conftest.c", directory: "/home/lichi/Desktop/bedops/[lib]third-party--jansson-2.6--conftest")
!6 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
