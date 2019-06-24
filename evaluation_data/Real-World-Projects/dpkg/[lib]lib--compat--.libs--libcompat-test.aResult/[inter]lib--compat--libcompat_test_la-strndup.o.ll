; ModuleID = './[inter]lib--compat--libcompat_test_la-strndup.o.i'
source_filename = "./[inter]lib--compat--libcompat_test_la-strndup.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @test_strndup(i8*, i64) #0 !dbg !8 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !19, metadata !20), !dbg !21
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !22, metadata !20), !dbg !23
  call void @llvm.dbg.declare(metadata i64* %6, metadata !24, metadata !20), !dbg !25
  call void @llvm.dbg.declare(metadata i8** %7, metadata !26, metadata !20), !dbg !27
  %8 = load i8*, i8** %4, align 8, !dbg !28
  %9 = load i64, i64* %5, align 8, !dbg !29
  %10 = call i64 @test_strnlen(i8* %8, i64 %9), !dbg !30
  store i64 %10, i64* %6, align 8, !dbg !31
  %11 = load i64, i64* %6, align 8, !dbg !32
  %12 = add i64 %11, 1, !dbg !33
  %13 = call noalias i8* @malloc(i64 %12) #5, !dbg !34
  store i8* %13, i8** %7, align 8, !dbg !35
  %14 = load i8*, i8** %7, align 8, !dbg !36
  %15 = icmp eq i8* %14, null, !dbg !38
  br i1 %15, label %16, label %17, !dbg !39

; <label>:16:                                     ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !40
  br label %25, !dbg !40

; <label>:17:                                     ; preds = %2
  %18 = load i8*, i8** %7, align 8, !dbg !41
  %19 = load i8*, i8** %4, align 8, !dbg !42
  %20 = load i64, i64* %6, align 8, !dbg !43
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 %20, i32 1, i1 false), !dbg !44
  %21 = load i64, i64* %6, align 8, !dbg !45
  %22 = load i8*, i8** %7, align 8, !dbg !46
  %23 = getelementptr inbounds i8, i8* %22, i64 %21, !dbg !46
  store i8 0, i8* %23, align 1, !dbg !47
  %24 = load i8*, i8** %7, align 8, !dbg !48
  store i8* %24, i8** %3, align 8, !dbg !49
  br label %25, !dbg !49

; <label>:25:                                     ; preds = %17, %16
  %26 = load i8*, i8** %3, align 8, !dbg !50
  ret i8* %26, !dbg !50
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i64 @test_strnlen(i8*, i64) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "[inter]lib--compat--libcompat_test_la-strndup.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!8 = distinct !DISubprogram(name: "test_strndup", scope: !9, file: !9, line: 28, type: !10, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!9 = !DIFile(filename: "strndup.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !14, !16}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !17, line: 216, baseType: !18)
!17 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!18 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!19 = !DILocalVariable(name: "s", arg: 1, scope: !8, file: !9, line: 28, type: !14)
!20 = !DIExpression()
!21 = !DILocation(line: 28, column: 26, scope: !8)
!22 = !DILocalVariable(name: "n", arg: 2, scope: !8, file: !9, line: 28, type: !16)
!23 = !DILocation(line: 28, column: 36, scope: !8)
!24 = !DILocalVariable(name: "len", scope: !8, file: !9, line: 30, type: !16)
!25 = !DILocation(line: 30, column: 9, scope: !8)
!26 = !DILocalVariable(name: "str", scope: !8, file: !9, line: 31, type: !12)
!27 = !DILocation(line: 31, column: 8, scope: !8)
!28 = !DILocation(line: 33, column: 21, scope: !8)
!29 = !DILocation(line: 33, column: 24, scope: !8)
!30 = !DILocation(line: 33, column: 8, scope: !8)
!31 = !DILocation(line: 33, column: 6, scope: !8)
!32 = !DILocation(line: 34, column: 15, scope: !8)
!33 = !DILocation(line: 34, column: 19, scope: !8)
!34 = !DILocation(line: 34, column: 8, scope: !8)
!35 = !DILocation(line: 34, column: 6, scope: !8)
!36 = !DILocation(line: 35, column: 6, scope: !37)
!37 = distinct !DILexicalBlock(scope: !8, file: !9, line: 35, column: 6)
!38 = !DILocation(line: 35, column: 10, scope: !37)
!39 = !DILocation(line: 35, column: 6, scope: !8)
!40 = !DILocation(line: 36, column: 3, scope: !37)
!41 = !DILocation(line: 38, column: 9, scope: !8)
!42 = !DILocation(line: 38, column: 14, scope: !8)
!43 = !DILocation(line: 38, column: 17, scope: !8)
!44 = !DILocation(line: 38, column: 2, scope: !8)
!45 = !DILocation(line: 39, column: 6, scope: !8)
!46 = !DILocation(line: 39, column: 2, scope: !8)
!47 = !DILocation(line: 39, column: 11, scope: !8)
!48 = !DILocation(line: 41, column: 9, scope: !8)
!49 = !DILocation(line: 41, column: 2, scope: !8)
!50 = !DILocation(line: 42, column: 1, scope: !8)
