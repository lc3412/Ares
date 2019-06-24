; ModuleID = './[inter]lib--compat--libcompat_test_la-strnlen.o.i'
source_filename = "./[inter]lib--compat--libcompat_test_la-strnlen.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i64 @test_strnlen(i8*, i64) #0 !dbg !10 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !17, metadata !18), !dbg !19
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !20, metadata !18), !dbg !21
  call void @llvm.dbg.declare(metadata i8** %5, metadata !22, metadata !18), !dbg !23
  %6 = load i8*, i8** %3, align 8, !dbg !24
  %7 = load i64, i64* %4, align 8, !dbg !25
  %8 = call i8* @memchr(i8* %6, i32 0, i64 %7) #3, !dbg !26
  store i8* %8, i8** %5, align 8, !dbg !23
  %9 = load i8*, i8** %5, align 8, !dbg !27
  %10 = icmp ne i8* %9, null, !dbg !27
  br i1 %10, label %11, label %17, !dbg !27

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %5, align 8, !dbg !28
  %13 = load i8*, i8** %3, align 8, !dbg !30
  %14 = ptrtoint i8* %12 to i64, !dbg !31
  %15 = ptrtoint i8* %13 to i64, !dbg !31
  %16 = sub i64 %14, %15, !dbg !31
  br label %19, !dbg !32

; <label>:17:                                     ; preds = %2
  %18 = load i64, i64* %4, align 8, !dbg !33
  br label %19, !dbg !35

; <label>:19:                                     ; preds = %17, %11
  %20 = phi i64 [ %16, %11 ], [ %18, %17 ], !dbg !36
  ret i64 %20, !dbg !38
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "[inter]lib--compat--libcompat_test_la-strnlen.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !5, line: 216, baseType: !6)
!5 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!6 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!10 = distinct !DISubprogram(name: "test_strnlen", scope: !11, file: !11, line: 29, type: !12, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!11 = !DIFile(filename: "strnlen.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!12 = !DISubroutineType(types: !13)
!13 = !{!4, !14, !4}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!17 = !DILocalVariable(name: "string", arg: 1, scope: !10, file: !11, line: 29, type: !14)
!18 = !DIExpression()
!19 = !DILocation(line: 29, column: 27, scope: !10)
!20 = !DILocalVariable(name: "maxlen", arg: 2, scope: !10, file: !11, line: 29, type: !4)
!21 = !DILocation(line: 29, column: 42, scope: !10)
!22 = !DILocalVariable(name: "end", scope: !10, file: !11, line: 31, type: !14)
!23 = !DILocation(line: 31, column: 15, scope: !10)
!24 = !DILocation(line: 31, column: 29, scope: !10)
!25 = !DILocation(line: 31, column: 43, scope: !10)
!26 = !DILocation(line: 31, column: 21, scope: !10)
!27 = !DILocation(line: 32, column: 10, scope: !10)
!28 = !DILocation(line: 32, column: 26, scope: !29)
!29 = !DILexicalBlockFile(scope: !10, file: !11, discriminator: 1)
!30 = !DILocation(line: 32, column: 32, scope: !29)
!31 = !DILocation(line: 32, column: 30, scope: !29)
!32 = !DILocation(line: 32, column: 10, scope: !29)
!33 = !DILocation(line: 32, column: 42, scope: !34)
!34 = !DILexicalBlockFile(scope: !10, file: !11, discriminator: 2)
!35 = !DILocation(line: 32, column: 10, scope: !34)
!36 = !DILocation(line: 32, column: 10, scope: !37)
!37 = !DILexicalBlockFile(scope: !10, file: !11, discriminator: 3)
!38 = !DILocation(line: 32, column: 3, scope: !37)
