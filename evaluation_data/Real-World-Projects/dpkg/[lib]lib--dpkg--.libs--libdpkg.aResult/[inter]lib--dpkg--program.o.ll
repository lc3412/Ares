; ModuleID = './[inter]lib--dpkg--program.o.i'
source_filename = "./[inter]lib--dpkg--program.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stdout = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define void @dpkg_program_init(i8*) #0 !dbg !12 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !20, metadata !21), !dbg !22
  %3 = load i8*, i8** %2, align 8, !dbg !23
  call void @dpkg_set_progname(i8* %3), !dbg !24
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !25
  call void @dpkg_set_report_buffer(%struct._IO_FILE* %4), !dbg !26
  call void @push_error_context(), !dbg !27
  %5 = call i32 @umask(i32 18) #4, !dbg !28
  ret void, !dbg !29
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @dpkg_set_progname(i8*) #2

declare void @dpkg_set_report_buffer(%struct._IO_FILE*) #2

declare void @push_error_context() #2

; Function Attrs: nounwind
declare i32 @umask(i32) #3

; Function Attrs: nounwind uwtable
define void @dpkg_program_done() #0 !dbg !30 {
  call void @pop_error_context(i32 1), !dbg !33
  ret void, !dbg !34
}

declare void @pop_error_context(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]lib--dpkg--program.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 41, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/ehandle.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "ehflag_normaltidy", value: 1)
!7 = !DIEnumerator(name: "ehflag_bombout", value: 2)
!8 = !DIEnumerator(name: "ehflag_recursiveerror", value: 4)
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!12 = distinct !DISubprogram(name: "dpkg_program_init", scope: !13, file: !13, line: 39, type: !14, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !19)
!13 = !DIFile(filename: "program.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!19 = !{}
!20 = !DILocalVariable(name: "progname", arg: 1, scope: !12, file: !13, line: 39, type: !16)
!21 = !DIExpression()
!22 = !DILocation(line: 39, column: 31, scope: !12)
!23 = !DILocation(line: 41, column: 20, scope: !12)
!24 = !DILocation(line: 41, column: 2, scope: !12)
!25 = !DILocation(line: 42, column: 24, scope: !12)
!26 = !DILocation(line: 42, column: 2, scope: !12)
!27 = !DILocation(line: 44, column: 2, scope: !12)
!28 = !DILocation(line: 47, column: 2, scope: !12)
!29 = !DILocation(line: 48, column: 1, scope: !12)
!30 = distinct !DISubprogram(name: "dpkg_program_done", scope: !13, file: !13, line: 54, type: !31, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !19)
!31 = !DISubroutineType(types: !32)
!32 = !{null}
!33 = !DILocation(line: 56, column: 2, scope: !30)
!34 = !DILocation(line: 57, column: 1, scope: !30)
