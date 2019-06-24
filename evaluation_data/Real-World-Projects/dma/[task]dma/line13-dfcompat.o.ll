; ModuleID = './line13-dfcompat.o.i'
source_filename = "./line13-dfcompat.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@program_invocation_short_name = external global i8*, align 8

; Function Attrs: nounwind uwtable
define i64 @strlcpy(i8*, i8*, i64) #0 !dbg !6 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !17, metadata !18), !dbg !19
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !20, metadata !18), !dbg !21
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !22, metadata !18), !dbg !23
  call void @llvm.dbg.declare(metadata i8** %7, metadata !24, metadata !18), !dbg !25
  %10 = load i8*, i8** %4, align 8, !dbg !26
  store i8* %10, i8** %7, align 8, !dbg !25
  call void @llvm.dbg.declare(metadata i8** %8, metadata !27, metadata !18), !dbg !28
  %11 = load i8*, i8** %5, align 8, !dbg !29
  store i8* %11, i8** %8, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %9, metadata !30, metadata !18), !dbg !31
  %12 = load i64, i64* %6, align 8, !dbg !32
  store i64 %12, i64* %9, align 8, !dbg !31
  %13 = load i64, i64* %9, align 8, !dbg !33
  %14 = icmp ne i64 %13, 0, !dbg !35
  br i1 %14, label %15, label %31, !dbg !36

; <label>:15:                                     ; preds = %3
  br label %16, !dbg !37

; <label>:16:                                     ; preds = %29, %15
  %17 = load i64, i64* %9, align 8, !dbg !39
  %18 = add i64 %17, -1, !dbg !39
  store i64 %18, i64* %9, align 8, !dbg !39
  %19 = icmp ne i64 %18, 0, !dbg !41
  br i1 %19, label %20, label %30, !dbg !42

; <label>:20:                                     ; preds = %16
  %21 = load i8*, i8** %8, align 8, !dbg !43
  %22 = getelementptr inbounds i8, i8* %21, i32 1, !dbg !43
  store i8* %22, i8** %8, align 8, !dbg !43
  %23 = load i8, i8* %21, align 1, !dbg !46
  %24 = load i8*, i8** %7, align 8, !dbg !47
  %25 = getelementptr inbounds i8, i8* %24, i32 1, !dbg !47
  store i8* %25, i8** %7, align 8, !dbg !47
  store i8 %23, i8* %24, align 1, !dbg !48
  %26 = sext i8 %23 to i32, !dbg !49
  %27 = icmp eq i32 %26, 0, !dbg !50
  br i1 %27, label %28, label %29, !dbg !51

; <label>:28:                                     ; preds = %20
  br label %30, !dbg !52

; <label>:29:                                     ; preds = %20
  br label %16, !dbg !53, !llvm.loop !55

; <label>:30:                                     ; preds = %28, %16
  br label %31, !dbg !56

; <label>:31:                                     ; preds = %30, %3
  %32 = load i64, i64* %9, align 8, !dbg !57
  %33 = icmp eq i64 %32, 0, !dbg !59
  br i1 %33, label %34, label %47, !dbg !60

; <label>:34:                                     ; preds = %31
  %35 = load i64, i64* %6, align 8, !dbg !61
  %36 = icmp ne i64 %35, 0, !dbg !64
  br i1 %36, label %37, label %39, !dbg !65

; <label>:37:                                     ; preds = %34
  %38 = load i8*, i8** %7, align 8, !dbg !66
  store i8 0, i8* %38, align 1, !dbg !67
  br label %39, !dbg !68

; <label>:39:                                     ; preds = %37, %34
  br label %40, !dbg !69

; <label>:40:                                     ; preds = %45, %39
  %41 = load i8*, i8** %8, align 8, !dbg !70
  %42 = getelementptr inbounds i8, i8* %41, i32 1, !dbg !70
  store i8* %42, i8** %8, align 8, !dbg !70
  %43 = load i8, i8* %41, align 1, !dbg !72
  %44 = icmp ne i8 %43, 0, !dbg !73
  br i1 %44, label %45, label %46, !dbg !73

; <label>:45:                                     ; preds = %40
  br label %40, !dbg !74, !llvm.loop !76

; <label>:46:                                     ; preds = %40
  br label %47, !dbg !77

; <label>:47:                                     ; preds = %46, %31
  %48 = load i8*, i8** %8, align 8, !dbg !78
  %49 = load i8*, i8** %5, align 8, !dbg !79
  %50 = ptrtoint i8* %48 to i64, !dbg !80
  %51 = ptrtoint i8* %49 to i64, !dbg !80
  %52 = sub i64 %50, %51, !dbg !80
  %53 = sub nsw i64 %52, 1, !dbg !81
  ret i64 %53, !dbg !82
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i8* @reallocf(i8*, i64) #0 !dbg !83 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !87, metadata !18), !dbg !88
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !89, metadata !18), !dbg !90
  call void @llvm.dbg.declare(metadata i8** %5, metadata !91, metadata !18), !dbg !92
  %6 = load i8*, i8** %3, align 8, !dbg !93
  %7 = load i64, i64* %4, align 8, !dbg !94
  %8 = call i8* @realloc(i8* %6, i64 %7) #3, !dbg !95
  store i8* %8, i8** %5, align 8, !dbg !96
  %9 = load i8*, i8** %5, align 8, !dbg !97
  %10 = icmp ne i8* %9, null, !dbg !97
  br i1 %10, label %16, label %11, !dbg !99

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %3, align 8, !dbg !100
  %13 = icmp ne i8* %12, null, !dbg !100
  br i1 %13, label %14, label %16, !dbg !102

; <label>:14:                                     ; preds = %11
  %15 = load i8*, i8** %3, align 8, !dbg !103
  call void @free(i8* %15) #3, !dbg !104
  br label %16, !dbg !104

; <label>:16:                                     ; preds = %14, %11, %2
  %17 = load i8*, i8** %5, align 8, !dbg !105
  ret i8* %17, !dbg !106
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i8* @getprogname() #0 !dbg !107 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !110
  ret i8* %1, !dbg !111
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "line13-dfcompat.o.i", directory: "/home/lichi/Desktop/dma/task1")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "strlcpy", scope: !7, file: !7, line: 34, type: !8, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "dfcompat.c", directory: "/home/lichi/Desktop/dma/task1")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !13, !15, !10}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 216, baseType: !12)
!11 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dma/task1")
!12 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!17 = !DILocalVariable(name: "dst", arg: 1, scope: !6, file: !7, line: 34, type: !13)
!18 = !DIExpression()
!19 = !DILocation(line: 34, column: 15, scope: !6)
!20 = !DILocalVariable(name: "src", arg: 2, scope: !6, file: !7, line: 34, type: !15)
!21 = !DILocation(line: 34, column: 32, scope: !6)
!22 = !DILocalVariable(name: "siz", arg: 3, scope: !6, file: !7, line: 34, type: !10)
!23 = !DILocation(line: 34, column: 44, scope: !6)
!24 = !DILocalVariable(name: "d", scope: !6, file: !7, line: 36, type: !13)
!25 = !DILocation(line: 36, column: 8, scope: !6)
!26 = !DILocation(line: 36, column: 12, scope: !6)
!27 = !DILocalVariable(name: "s", scope: !6, file: !7, line: 37, type: !15)
!28 = !DILocation(line: 37, column: 14, scope: !6)
!29 = !DILocation(line: 37, column: 18, scope: !6)
!30 = !DILocalVariable(name: "n", scope: !6, file: !7, line: 38, type: !10)
!31 = !DILocation(line: 38, column: 9, scope: !6)
!32 = !DILocation(line: 38, column: 13, scope: !6)
!33 = !DILocation(line: 41, column: 6, scope: !34)
!34 = distinct !DILexicalBlock(scope: !6, file: !7, line: 41, column: 6)
!35 = !DILocation(line: 41, column: 8, scope: !34)
!36 = !DILocation(line: 41, column: 6, scope: !6)
!37 = !DILocation(line: 42, column: 3, scope: !38)
!38 = distinct !DILexicalBlock(scope: !34, file: !7, line: 41, column: 14)
!39 = !DILocation(line: 42, column: 10, scope: !40)
!40 = !DILexicalBlockFile(scope: !38, file: !7, discriminator: 1)
!41 = !DILocation(line: 42, column: 14, scope: !40)
!42 = !DILocation(line: 42, column: 3, scope: !40)
!43 = !DILocation(line: 43, column: 18, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !7, line: 43, column: 8)
!45 = distinct !DILexicalBlock(scope: !38, file: !7, line: 42, column: 20)
!46 = !DILocation(line: 43, column: 16, scope: !44)
!47 = !DILocation(line: 43, column: 11, scope: !44)
!48 = !DILocation(line: 43, column: 14, scope: !44)
!49 = !DILocation(line: 43, column: 8, scope: !44)
!50 = !DILocation(line: 43, column: 22, scope: !44)
!51 = !DILocation(line: 43, column: 8, scope: !45)
!52 = !DILocation(line: 44, column: 5, scope: !44)
!53 = !DILocation(line: 42, column: 3, scope: !54)
!54 = !DILexicalBlockFile(scope: !38, file: !7, discriminator: 2)
!55 = distinct !{!55, !37}
!56 = !DILocation(line: 46, column: 2, scope: !38)
!57 = !DILocation(line: 49, column: 6, scope: !58)
!58 = distinct !DILexicalBlock(scope: !6, file: !7, line: 49, column: 6)
!59 = !DILocation(line: 49, column: 8, scope: !58)
!60 = !DILocation(line: 49, column: 6, scope: !6)
!61 = !DILocation(line: 50, column: 7, scope: !62)
!62 = distinct !DILexicalBlock(scope: !63, file: !7, line: 50, column: 7)
!63 = distinct !DILexicalBlock(scope: !58, file: !7, line: 49, column: 14)
!64 = !DILocation(line: 50, column: 11, scope: !62)
!65 = !DILocation(line: 50, column: 7, scope: !63)
!66 = !DILocation(line: 51, column: 5, scope: !62)
!67 = !DILocation(line: 51, column: 7, scope: !62)
!68 = !DILocation(line: 51, column: 4, scope: !62)
!69 = !DILocation(line: 52, column: 3, scope: !63)
!70 = !DILocation(line: 52, column: 12, scope: !71)
!71 = !DILexicalBlockFile(scope: !63, file: !7, discriminator: 1)
!72 = !DILocation(line: 52, column: 10, scope: !71)
!73 = !DILocation(line: 52, column: 3, scope: !71)
!74 = !DILocation(line: 52, column: 3, scope: !75)
!75 = !DILexicalBlockFile(scope: !63, file: !7, discriminator: 2)
!76 = distinct !{!76, !69}
!77 = !DILocation(line: 54, column: 2, scope: !63)
!78 = !DILocation(line: 56, column: 9, scope: !6)
!79 = !DILocation(line: 56, column: 13, scope: !6)
!80 = !DILocation(line: 56, column: 11, scope: !6)
!81 = !DILocation(line: 56, column: 17, scope: !6)
!82 = !DILocation(line: 56, column: 2, scope: !6)
!83 = distinct !DISubprogram(name: "reallocf", scope: !7, file: !7, line: 94, type: !84, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!84 = !DISubroutineType(types: !85)
!85 = !{!86, !86, !10}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!87 = !DILocalVariable(name: "ptr", arg: 1, scope: !83, file: !7, line: 94, type: !86)
!88 = !DILocation(line: 94, column: 16, scope: !83)
!89 = !DILocalVariable(name: "size", arg: 2, scope: !83, file: !7, line: 94, type: !10)
!90 = !DILocation(line: 94, column: 28, scope: !83)
!91 = !DILocalVariable(name: "nptr", scope: !83, file: !7, line: 96, type: !86)
!92 = !DILocation(line: 96, column: 8, scope: !83)
!93 = !DILocation(line: 98, column: 17, scope: !83)
!94 = !DILocation(line: 98, column: 22, scope: !83)
!95 = !DILocation(line: 98, column: 9, scope: !83)
!96 = !DILocation(line: 98, column: 7, scope: !83)
!97 = !DILocation(line: 99, column: 7, scope: !98)
!98 = distinct !DILexicalBlock(scope: !83, file: !7, line: 99, column: 6)
!99 = !DILocation(line: 99, column: 12, scope: !98)
!100 = !DILocation(line: 99, column: 15, scope: !101)
!101 = !DILexicalBlockFile(scope: !98, file: !7, discriminator: 1)
!102 = !DILocation(line: 99, column: 6, scope: !101)
!103 = !DILocation(line: 100, column: 8, scope: !98)
!104 = !DILocation(line: 100, column: 3, scope: !98)
!105 = !DILocation(line: 101, column: 10, scope: !83)
!106 = !DILocation(line: 101, column: 2, scope: !83)
!107 = distinct !DISubprogram(name: "getprogname", scope: !7, file: !7, line: 113, type: !108, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!108 = !DISubroutineType(types: !109)
!109 = !{!15}
!110 = !DILocation(line: 115, column: 10, scope: !107)
!111 = !DILocation(line: 115, column: 2, scope: !107)
