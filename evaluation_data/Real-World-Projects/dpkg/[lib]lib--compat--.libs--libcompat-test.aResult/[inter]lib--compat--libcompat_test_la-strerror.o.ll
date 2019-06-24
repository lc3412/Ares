; ModuleID = './[inter]lib--compat--libcompat_test_la-strerror.o.i'
source_filename = "./[inter]lib--compat--libcompat_test_la-strerror.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@test_strerror.buf = internal global [100 x i8] zeroinitializer, align 16
@sys_nerr = external global i32, align 4
@sys_errlist = external constant [0 x i8*], align 8
@.str = private unnamed_addr constant [17 x i8] c"Unknown error %d\00", align 1

; Function Attrs: nounwind uwtable
define i8* @test_strerror(i32) #0 !dbg !5 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !19, metadata !20), !dbg !21
  %4 = load i32, i32* %3, align 4, !dbg !22
  %5 = icmp sge i32 %4, 0, !dbg !24
  br i1 %5, label %6, label %15, !dbg !25

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %3, align 4, !dbg !26
  %8 = load i32, i32* @sys_nerr, align 4, !dbg !28
  %9 = icmp slt i32 %7, %8, !dbg !29
  br i1 %9, label %10, label %15, !dbg !30

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %3, align 4, !dbg !31
  %12 = sext i32 %11 to i64, !dbg !32
  %13 = getelementptr inbounds [0 x i8*], [0 x i8*]* @sys_errlist, i64 0, i64 %12, !dbg !32
  %14 = load i8*, i8** %13, align 8, !dbg !32
  store i8* %14, i8** %2, align 8, !dbg !33
  br label %19, !dbg !33

; <label>:15:                                     ; preds = %6, %1
  %16 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0)) #3, !dbg !34
  %17 = load i32, i32* %3, align 4, !dbg !35
  %18 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @test_strerror.buf, i32 0, i32 0), i8* %16, i32 %17) #3, !dbg !36
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @test_strerror.buf, i32 0, i32 0), i8** %2, align 8, !dbg !38
  br label %19, !dbg !38

; <label>:19:                                     ; preds = %15, %10
  %20 = load i8*, i8** %2, align 8, !dbg !39
  ret i8* %20, !dbg !39
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "[inter]lib--compat--libcompat_test_la-strerror.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!2 = !{}
!3 = !{!4}
!4 = distinct !DIGlobalVariable(name: "buf", scope: !5, file: !6, line: 40, type: !13, isLocal: true, isDefinition: true, variable: [100 x i8]* @test_strerror.buf)
!5 = distinct !DISubprogram(name: "test_strerror", scope: !6, file: !6, line: 38, type: !7, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!6 = !DIFile(filename: "strerror.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !12}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!12 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, align: 8, elements: !14)
!14 = !{!15}
!15 = !DISubrange(count: 100)
!16 = !{i32 2, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!19 = !DILocalVariable(name: "e", arg: 1, scope: !5, file: !6, line: 38, type: !12)
!20 = !DIExpression()
!21 = !DILocation(line: 38, column: 19, scope: !5)
!22 = !DILocation(line: 42, column: 6, scope: !23)
!23 = distinct !DILexicalBlock(scope: !5, file: !6, line: 42, column: 6)
!24 = !DILocation(line: 42, column: 8, scope: !23)
!25 = !DILocation(line: 42, column: 13, scope: !23)
!26 = !DILocation(line: 42, column: 16, scope: !27)
!27 = !DILexicalBlockFile(scope: !23, file: !6, discriminator: 1)
!28 = !DILocation(line: 42, column: 20, scope: !27)
!29 = !DILocation(line: 42, column: 18, scope: !27)
!30 = !DILocation(line: 42, column: 6, scope: !27)
!31 = !DILocation(line: 43, column: 22, scope: !23)
!32 = !DILocation(line: 43, column: 10, scope: !23)
!33 = !DILocation(line: 43, column: 3, scope: !23)
!34 = !DILocation(line: 45, column: 15, scope: !5)
!35 = !DILocation(line: 45, column: 44, scope: !5)
!36 = !DILocation(line: 45, column: 2, scope: !37)
!37 = !DILexicalBlockFile(scope: !5, file: !6, discriminator: 1)
!38 = !DILocation(line: 47, column: 2, scope: !5)
!39 = !DILocation(line: 48, column: 1, scope: !5)
