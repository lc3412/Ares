; ModuleID = './[inter]lib--compat--libcompat_test_la-strchrnul.o.i'
source_filename = "./[inter]lib--compat--libcompat_test_la-strchrnul.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @test_strchrnul(i8*, i32) #0 !dbg !9 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !16, metadata !17), !dbg !18
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !19, metadata !17), !dbg !20
  call void @llvm.dbg.declare(metadata i8** %6, metadata !21, metadata !17), !dbg !22
  %7 = load i8*, i8** %4, align 8, !dbg !23
  %8 = load i32, i32* %5, align 4, !dbg !24
  %9 = call i8* @strchr(i8* %7, i32 %8) #3, !dbg !25
  store i8* %9, i8** %6, align 8, !dbg !26
  %10 = load i8*, i8** %6, align 8, !dbg !27
  %11 = icmp ne i8* %10, null, !dbg !27
  br i1 %11, label %12, label %14, !dbg !29

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %6, align 8, !dbg !30
  store i8* %13, i8** %3, align 8, !dbg !31
  br label %19, !dbg !31

; <label>:14:                                     ; preds = %2
  %15 = load i8*, i8** %4, align 8, !dbg !32
  %16 = load i8*, i8** %4, align 8, !dbg !33
  %17 = call i64 @strlen(i8* %16) #3, !dbg !34
  %18 = getelementptr inbounds i8, i8* %15, i64 %17, !dbg !35
  store i8* %18, i8** %3, align 8, !dbg !36
  br label %19, !dbg !36

; <label>:19:                                     ; preds = %14, %12
  %20 = load i8*, i8** %3, align 8, !dbg !37
  ret i8* %20, !dbg !37
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "[inter]lib--compat--libcompat_test_la-strchrnul.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!9 = distinct !DISubprogram(name: "test_strchrnul", scope: !10, file: !10, line: 28, type: !11, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!10 = !DIFile(filename: "strchrnul.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!11 = !DISubroutineType(types: !12)
!12 = !{!4, !13, !15}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "s", arg: 1, scope: !9, file: !10, line: 28, type: !13)
!17 = !DIExpression()
!18 = !DILocation(line: 28, column: 28, scope: !9)
!19 = !DILocalVariable(name: "c", arg: 2, scope: !9, file: !10, line: 28, type: !15)
!20 = !DILocation(line: 28, column: 35, scope: !9)
!21 = !DILocalVariable(name: "match", scope: !9, file: !10, line: 30, type: !4)
!22 = !DILocation(line: 30, column: 8, scope: !9)
!23 = !DILocation(line: 32, column: 17, scope: !9)
!24 = !DILocation(line: 32, column: 20, scope: !9)
!25 = !DILocation(line: 32, column: 10, scope: !9)
!26 = !DILocation(line: 32, column: 8, scope: !9)
!27 = !DILocation(line: 33, column: 6, scope: !28)
!28 = distinct !DILexicalBlock(scope: !9, file: !10, line: 33, column: 6)
!29 = !DILocation(line: 33, column: 6, scope: !9)
!30 = !DILocation(line: 34, column: 10, scope: !28)
!31 = !DILocation(line: 34, column: 3, scope: !28)
!32 = !DILocation(line: 36, column: 17, scope: !9)
!33 = !DILocation(line: 36, column: 28, scope: !9)
!34 = !DILocation(line: 36, column: 21, scope: !9)
!35 = !DILocation(line: 36, column: 19, scope: !9)
!36 = !DILocation(line: 36, column: 2, scope: !9)
!37 = !DILocation(line: 37, column: 1, scope: !9)
