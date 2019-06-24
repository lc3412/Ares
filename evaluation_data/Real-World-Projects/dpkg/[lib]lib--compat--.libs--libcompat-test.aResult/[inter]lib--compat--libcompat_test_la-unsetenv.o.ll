; ModuleID = './[inter]lib--compat--libcompat_test_la-unsetenv.o.i'
source_filename = "./[inter]lib--compat--libcompat_test_la-unsetenv.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1

; Function Attrs: nounwind uwtable
define i32 @test_unsetenv(i8*) #0 !dbg !6 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !14, metadata !15), !dbg !16
  call void @llvm.dbg.declare(metadata i8** %4, metadata !17, metadata !15), !dbg !19
  %5 = load i8*, i8** %3, align 8, !dbg !20
  %6 = call i64 @strlen(i8* %5) #4, !dbg !21
  %7 = add i64 %6, 3, !dbg !22
  %8 = call noalias i8* @malloc(i64 %7) #5, !dbg !23
  store i8* %8, i8** %4, align 8, !dbg !25
  %9 = load i8*, i8** %4, align 8, !dbg !26
  %10 = icmp ne i8* %9, null, !dbg !26
  br i1 %10, label %12, label %11, !dbg !28

; <label>:11:                                     ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !29
  br label %20, !dbg !29

; <label>:12:                                     ; preds = %1
  %13 = load i8*, i8** %4, align 8, !dbg !30
  %14 = load i8*, i8** %3, align 8, !dbg !31
  %15 = call i8* @strcpy(i8* %13, i8* %14) #5, !dbg !32
  %16 = load i8*, i8** %4, align 8, !dbg !33
  %17 = call i8* @strcat(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #5, !dbg !34
  %18 = load i8*, i8** %4, align 8, !dbg !35
  %19 = call i32 @putenv(i8* %18) #5, !dbg !36
  store i32 %19, i32* %2, align 4, !dbg !37
  br label %20, !dbg !37

; <label>:20:                                     ; preds = %12, %11
  %21 = load i32, i32* %2, align 4, !dbg !38
  ret i32 %21, !dbg !38
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @putenv(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]lib--compat--libcompat_test_la-unsetenv.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "test_unsetenv", scope: !7, file: !7, line: 28, type: !8, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "unsetenv.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "p", arg: 1, scope: !6, file: !7, line: 28, type: !11)
!15 = !DIExpression()
!16 = !DILocation(line: 28, column: 27, scope: !6)
!17 = !DILocalVariable(name: "q", scope: !6, file: !7, line: 30, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!19 = !DILocation(line: 30, column: 8, scope: !6)
!20 = !DILocation(line: 32, column: 20, scope: !6)
!21 = !DILocation(line: 32, column: 13, scope: !6)
!22 = !DILocation(line: 32, column: 23, scope: !6)
!23 = !DILocation(line: 32, column: 6, scope: !24)
!24 = !DILexicalBlockFile(scope: !6, file: !7, discriminator: 1)
!25 = !DILocation(line: 32, column: 4, scope: !6)
!26 = !DILocation(line: 33, column: 7, scope: !27)
!27 = distinct !DILexicalBlock(scope: !6, file: !7, line: 33, column: 6)
!28 = !DILocation(line: 33, column: 6, scope: !6)
!29 = !DILocation(line: 34, column: 3, scope: !27)
!30 = !DILocation(line: 36, column: 9, scope: !6)
!31 = !DILocation(line: 36, column: 12, scope: !6)
!32 = !DILocation(line: 36, column: 2, scope: !6)
!33 = !DILocation(line: 37, column: 9, scope: !6)
!34 = !DILocation(line: 37, column: 2, scope: !6)
!35 = !DILocation(line: 38, column: 16, scope: !6)
!36 = !DILocation(line: 38, column: 9, scope: !6)
!37 = !DILocation(line: 38, column: 2, scope: !6)
!38 = !DILocation(line: 39, column: 1, scope: !6)
