; ModuleID = './[inter]lib--dpkg--progname.o.i'
source_filename = "./[inter]lib--dpkg--progname.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@progname = internal global i8* null, align 8
@program_invocation_short_name = external global i8*, align 8

; Function Attrs: nounwind uwtable
define void @dpkg_set_progname(i8*) #0 !dbg !14 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !17, metadata !18), !dbg !19
  %3 = load i8*, i8** %2, align 8, !dbg !20
  %4 = call i8* @path_basename(i8* %3), !dbg !21
  store i8* %4, i8** @progname, align 8, !dbg !22
  ret void, !dbg !23
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @path_basename(i8*) #2

; Function Attrs: nounwind uwtable
define i8* @dpkg_get_progname() #0 !dbg !24 {
  %1 = load i8*, i8** @progname, align 8, !dbg !27
  %2 = icmp eq i8* %1, null, !dbg !29
  br i1 %2, label %3, label %5, !dbg !30

; <label>:3:                                      ; preds = %0
  %4 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !31
  store i8* %4, i8** @progname, align 8, !dbg !33
  br label %5, !dbg !34

; <label>:5:                                      ; preds = %3, %0
  %6 = load i8*, i8** @progname, align 8, !dbg !35
  ret i8* %6, !dbg !36
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "[inter]lib--dpkg--progname.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = distinct !DIGlobalVariable(name: "progname", scope: !0, file: !7, line: 30, type: !8, isLocal: true, isDefinition: true, variable: i8** @progname)
!7 = !DIFile(filename: "progname.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!14 = distinct !DISubprogram(name: "dpkg_set_progname", scope: !7, file: !7, line: 41, type: !15, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !8}
!17 = !DILocalVariable(name: "name", arg: 1, scope: !14, file: !7, line: 41, type: !8)
!18 = !DIExpression()
!19 = !DILocation(line: 41, column: 31, scope: !14)
!20 = !DILocation(line: 43, column: 27, scope: !14)
!21 = !DILocation(line: 43, column: 13, scope: !14)
!22 = !DILocation(line: 43, column: 11, scope: !14)
!23 = !DILocation(line: 44, column: 1, scope: !14)
!24 = distinct !DISubprogram(name: "dpkg_get_progname", scope: !7, file: !7, line: 61, type: !25, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!25 = !DISubroutineType(types: !26)
!26 = !{!8}
!27 = !DILocation(line: 63, column: 6, scope: !28)
!28 = distinct !DILexicalBlock(scope: !24, file: !7, line: 63, column: 6)
!29 = !DILocation(line: 63, column: 15, scope: !28)
!30 = !DILocation(line: 63, column: 6, scope: !24)
!31 = !DILocation(line: 65, column: 14, scope: !32)
!32 = distinct !DILexicalBlock(scope: !28, file: !7, line: 63, column: 23)
!33 = !DILocation(line: 65, column: 12, scope: !32)
!34 = !DILocation(line: 74, column: 2, scope: !32)
!35 = !DILocation(line: 76, column: 9, scope: !24)
!36 = !DILocation(line: 76, column: 2, scope: !24)
