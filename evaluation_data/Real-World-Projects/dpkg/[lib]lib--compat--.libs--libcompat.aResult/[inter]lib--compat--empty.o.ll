; ModuleID = './[inter]lib--compat--empty.o.i'
source_filename = "./[inter]lib--compat--empty.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@libdpkg_empty_dummy_symbol = common global i32 0, align 4

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "[inter]lib--compat--empty.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat.a")
!2 = !{}
!3 = !{!4}
!4 = distinct !DIGlobalVariable(name: "libdpkg_empty_dummy_symbol", scope: !0, file: !5, line: 2, type: !6, isLocal: false, isDefinition: true, variable: i32* @libdpkg_empty_dummy_symbol)
!5 = !DIFile(filename: "empty.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat.a")
!6 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
