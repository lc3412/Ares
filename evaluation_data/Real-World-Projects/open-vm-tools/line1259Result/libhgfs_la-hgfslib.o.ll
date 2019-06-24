; ModuleID = './libhgfs_la-hgfslib.o.i'
source_filename = "./libhgfs_la-hgfslib.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@vm_version = constant [20 x i8] c"version=10.3.0.5330\00", section ".modinfo", align 16

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "libhgfs_la-hgfslib.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1259")
!2 = !{}
!3 = !{!4}
!4 = distinct !DIGlobalVariable(name: "vm_version", scope: !0, file: !5, line: 28, type: !6, isLocal: false, isDefinition: true, variable: [20 x i8]* @vm_version)
!5 = !DIFile(filename: "hgfslib.c", directory: "/home/lichi/Desktop/open-vm-tools/line1259")
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, align: 8, elements: !9)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!9 = !{!10}
!10 = !DISubrange(count: 20)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
