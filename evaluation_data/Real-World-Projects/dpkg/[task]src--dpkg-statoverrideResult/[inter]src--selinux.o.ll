; ModuleID = './[inter]src--selinux.o.i'
source_filename = "./[inter]src--selinux.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @dpkg_selabel_load() #0 !dbg !6 {
  ret void, !dbg !10
}

; Function Attrs: nounwind uwtable
define void @dpkg_selabel_set_context(i8*, i8*, i32) #0 !dbg !11 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !22, metadata !23), !dbg !24
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !25, metadata !23), !dbg !26
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !27, metadata !23), !dbg !28
  ret void, !dbg !29
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define void @dpkg_selabel_close() #0 !dbg !30 {
  ret void, !dbg !31
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]src--selinux.o.i", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "dpkg_selabel_load", scope: !7, file: !7, line: 47, type: !8, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "selinux.c", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !DILocation(line: 83, column: 1, scope: !6)
!11 = distinct !DISubprogram(name: "dpkg_selabel_set_context", scope: !7, file: !7, line: 86, type: !12, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14, !14, !17}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !18, line: 70, baseType: !19)
!18 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !20, line: 129, baseType: !21)
!20 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg-statoverride")
!21 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!22 = !DILocalVariable(name: "matchpath", arg: 1, scope: !11, file: !7, line: 86, type: !14)
!23 = !DIExpression()
!24 = !DILocation(line: 86, column: 38, scope: !11)
!25 = !DILocalVariable(name: "path", arg: 2, scope: !11, file: !7, line: 86, type: !14)
!26 = !DILocation(line: 86, column: 61, scope: !11)
!27 = !DILocalVariable(name: "mode", arg: 3, scope: !11, file: !7, line: 86, type: !17)
!28 = !DILocation(line: 86, column: 74, scope: !11)
!29 = !DILocation(line: 115, column: 1, scope: !11)
!30 = distinct !DISubprogram(name: "dpkg_selabel_close", scope: !7, file: !7, line: 118, type: !8, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!31 = !DILocation(line: 128, column: 1, scope: !30)
