; ModuleID = './errPosix.o.i'
source_filename = "./errPosix.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @ErrErrno2String(i32, i8*, i64) #0 !dbg !6 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !20, metadata !21), !dbg !22
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !23, metadata !21), !dbg !24
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !25, metadata !21), !dbg !26
  call void @llvm.dbg.declare(metadata i8** %7, metadata !27, metadata !21), !dbg !28
  %8 = load i32, i32* %4, align 4, !dbg !29
  %9 = load i8*, i8** %5, align 8, !dbg !30
  %10 = load i64, i64* %6, align 8, !dbg !31
  %11 = call i8* @strerror_r(i32 %8, i8* %9, i64 %10) #3, !dbg !32
  store i8* %11, i8** %7, align 8, !dbg !33
  %12 = load i8*, i8** %7, align 8, !dbg !34
  ret i8* %12, !dbg !35
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @strerror_r(i32, i8*, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "errPosix.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line172")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "ErrErrno2String", scope: !7, file: !7, line: 60, type: !8, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "errPosix.c", directory: "/home/lichi/Desktop/open-vm-tools/line172")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !13, !16, !17}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "Err_Number", file: !14, line: 42, baseType: !15)
!14 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/err.h", directory: "/home/lichi/Desktop/open-vm-tools/line172")
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 216, baseType: !19)
!18 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line172")
!19 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!20 = !DILocalVariable(name: "errorNumber", arg: 1, scope: !6, file: !7, line: 60, type: !13)
!21 = !DIExpression()
!22 = !DILocation(line: 60, column: 28, scope: !6)
!23 = !DILocalVariable(name: "buf", arg: 2, scope: !6, file: !7, line: 61, type: !16)
!24 = !DILocation(line: 61, column: 23, scope: !6)
!25 = !DILocalVariable(name: "bufSize", arg: 3, scope: !6, file: !7, line: 62, type: !17)
!26 = !DILocation(line: 62, column: 10, scope: !6)
!27 = !DILocalVariable(name: "p", scope: !6, file: !7, line: 64, type: !16)
!28 = !DILocation(line: 64, column: 10, scope: !6)
!29 = !DILocation(line: 67, column: 19, scope: !6)
!30 = !DILocation(line: 67, column: 32, scope: !6)
!31 = !DILocation(line: 67, column: 37, scope: !6)
!32 = !DILocation(line: 67, column: 8, scope: !6)
!33 = !DILocation(line: 67, column: 6, scope: !6)
!34 = !DILocation(line: 72, column: 11, scope: !6)
!35 = !DILocation(line: 72, column: 4, scope: !6)
