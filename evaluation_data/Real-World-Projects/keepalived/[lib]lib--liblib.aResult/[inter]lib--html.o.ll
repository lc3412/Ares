; ModuleID = './[inter]lib--html.o.i'
source_filename = "./[inter]lib--html.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Content-Length:\00", align 1

; Function Attrs: nounwind uwtable
define i64 @extract_content_length(i8*, i64) #0 !dbg !6 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !15, metadata !16), !dbg !17
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !18, metadata !16), !dbg !19
  call void @llvm.dbg.declare(metadata i8** %6, metadata !20, metadata !16), !dbg !21
  %9 = load i8*, i8** %4, align 8, !dbg !22
  %10 = call i8* @strstr(i8* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)) #4, !dbg !23
  store i8* %10, i8** %6, align 8, !dbg !21
  call void @llvm.dbg.declare(metadata i64* %7, metadata !24, metadata !16), !dbg !25
  call void @llvm.dbg.declare(metadata i8** %8, metadata !26, metadata !16), !dbg !27
  %11 = load i8*, i8** %6, align 8, !dbg !28
  %12 = icmp ne i8* %11, null, !dbg !28
  br i1 %12, label %13, label %19, !dbg !30

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %6, align 8, !dbg !31
  %15 = load i8*, i8** %4, align 8, !dbg !33
  %16 = load i64, i64* %5, align 8, !dbg !34
  %17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !35
  %18 = icmp ugt i8* %14, %17, !dbg !36
  br i1 %18, label %19, label %20, !dbg !37

; <label>:19:                                     ; preds = %13, %2
  store i64 -1, i64* %3, align 8, !dbg !38
  br label %30, !dbg !38

; <label>:20:                                     ; preds = %13
  %21 = load i8*, i8** %6, align 8, !dbg !39
  %22 = getelementptr inbounds i8, i8* %21, i64 15, !dbg !40
  %23 = call i64 @strtoul(i8* %22, i8** %8, i32 10) #5, !dbg !41
  store i64 %23, i64* %7, align 8, !dbg !42
  %24 = load i8*, i8** %8, align 8, !dbg !43
  %25 = load i8, i8* %24, align 1, !dbg !45
  %26 = icmp ne i8 %25, 0, !dbg !45
  br i1 %26, label %27, label %28, !dbg !46

; <label>:27:                                     ; preds = %20
  store i64 -1, i64* %3, align 8, !dbg !47
  br label %30, !dbg !47

; <label>:28:                                     ; preds = %20
  %29 = load i64, i64* %7, align 8, !dbg !48
  store i64 %29, i64* %3, align 8, !dbg !49
  br label %30, !dbg !49

; <label>:30:                                     ; preds = %28, %27, %19
  %31 = load i64, i64* %3, align 8, !dbg !50
  ret i64 %31, !dbg !50
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #2

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #3

; Function Attrs: nounwind uwtable
define i32 @extract_status_code(i8*, i64) #0 !dbg !51 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !55, metadata !16), !dbg !56
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !57, metadata !16), !dbg !58
  call void @llvm.dbg.declare(metadata i8** %6, metadata !59, metadata !16), !dbg !60
  %8 = load i8*, i8** %4, align 8, !dbg !61
  %9 = load i64, i64* %5, align 8, !dbg !62
  %10 = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !63
  store i8* %10, i8** %6, align 8, !dbg !60
  call void @llvm.dbg.declare(metadata i64* %7, metadata !64, metadata !16), !dbg !65
  br label %11, !dbg !66

; <label>:11:                                     ; preds = %27, %2
  %12 = load i8*, i8** %4, align 8, !dbg !67
  %13 = load i8*, i8** %6, align 8, !dbg !69
  %14 = icmp ult i8* %12, %13, !dbg !70
  br i1 %14, label %15, label %25, !dbg !71

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** %4, align 8, !dbg !72
  %17 = load i8, i8* %16, align 1, !dbg !74
  %18 = sext i8 %17 to i32, !dbg !74
  %19 = icmp ne i32 %18, 32, !dbg !75
  br i1 %19, label %20, label %25, !dbg !76

; <label>:20:                                     ; preds = %15
  %21 = load i8*, i8** %4, align 8, !dbg !77
  %22 = load i8, i8* %21, align 1, !dbg !79
  %23 = sext i8 %22 to i32, !dbg !79
  %24 = icmp ne i32 %23, 13, !dbg !80
  br label %25

; <label>:25:                                     ; preds = %20, %15, %11
  %26 = phi i1 [ false, %15 ], [ false, %11 ], [ %24, %20 ]
  br i1 %26, label %27, label %30, !dbg !81

; <label>:27:                                     ; preds = %25
  %28 = load i8*, i8** %4, align 8, !dbg !83
  %29 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !83
  store i8* %29, i8** %4, align 8, !dbg !83
  br label %11, !dbg !84, !llvm.loop !86

; <label>:30:                                     ; preds = %25
  %31 = load i8*, i8** %4, align 8, !dbg !87
  %32 = getelementptr inbounds i8, i8* %31, i32 1, !dbg !87
  store i8* %32, i8** %4, align 8, !dbg !87
  %33 = load i8*, i8** %4, align 8, !dbg !88
  %34 = getelementptr inbounds i8, i8* %33, i64 3, !dbg !90
  %35 = load i8*, i8** %6, align 8, !dbg !91
  %36 = icmp uge i8* %34, %35, !dbg !92
  br i1 %36, label %48, label %37, !dbg !93

; <label>:37:                                     ; preds = %30
  %38 = load i8*, i8** %4, align 8, !dbg !94
  %39 = load i8, i8* %38, align 1, !dbg !96
  %40 = sext i8 %39 to i32, !dbg !96
  %41 = icmp eq i32 %40, 32, !dbg !97
  br i1 %41, label %48, label %42, !dbg !98

; <label>:42:                                     ; preds = %37
  %43 = load i8*, i8** %4, align 8, !dbg !99
  %44 = getelementptr inbounds i8, i8* %43, i64 3, !dbg !99
  %45 = load i8, i8* %44, align 1, !dbg !99
  %46 = sext i8 %45 to i32, !dbg !99
  %47 = icmp ne i32 %46, 32, !dbg !101
  br i1 %47, label %48, label %49, !dbg !102

; <label>:48:                                     ; preds = %42, %37, %30
  store i32 0, i32* %3, align 4, !dbg !103
  br label %60, !dbg !103

; <label>:49:                                     ; preds = %42
  %50 = load i8*, i8** %4, align 8, !dbg !104
  %51 = call i64 @strtoul(i8* %50, i8** %6, i32 10) #5, !dbg !105
  store i64 %51, i64* %7, align 8, !dbg !106
  %52 = load i8*, i8** %4, align 8, !dbg !107
  %53 = getelementptr inbounds i8, i8* %52, i64 3, !dbg !109
  %54 = load i8*, i8** %6, align 8, !dbg !110
  %55 = icmp ne i8* %53, %54, !dbg !111
  br i1 %55, label %56, label %57, !dbg !112

; <label>:56:                                     ; preds = %49
  store i32 0, i32* %3, align 4, !dbg !113
  br label %60, !dbg !113

; <label>:57:                                     ; preds = %49
  %58 = load i64, i64* %7, align 8, !dbg !114
  %59 = trunc i64 %58 to i32, !dbg !114
  store i32 %59, i32* %3, align 4, !dbg !115
  br label %60, !dbg !115

; <label>:60:                                     ; preds = %57, %56, %48
  %61 = load i32, i32* %3, align 4, !dbg !116
  ret i32 %61, !dbg !116
}

; Function Attrs: nounwind uwtable
define i8* @extract_html(i8*, i64) #0 !dbg !117 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !120, metadata !16), !dbg !121
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !122, metadata !16), !dbg !123
  call void @llvm.dbg.declare(metadata i8** %6, metadata !124, metadata !16), !dbg !125
  %8 = load i8*, i8** %4, align 8, !dbg !126
  %9 = load i64, i64* %5, align 8, !dbg !127
  %10 = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !128
  store i8* %10, i8** %6, align 8, !dbg !125
  call void @llvm.dbg.declare(metadata i8** %7, metadata !129, metadata !16), !dbg !130
  %11 = load i8*, i8** %4, align 8, !dbg !131
  store i8* %11, i8** %7, align 8, !dbg !133
  br label %12, !dbg !134

; <label>:12:                                     ; preds = %44, %2
  %13 = load i8*, i8** %7, align 8, !dbg !135
  %14 = getelementptr inbounds i8, i8* %13, i64 3, !dbg !138
  %15 = load i8*, i8** %6, align 8, !dbg !139
  %16 = icmp ult i8* %14, %15, !dbg !140
  br i1 %16, label %17, label %47, !dbg !141

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %7, align 8, !dbg !142
  %19 = load i8, i8* %18, align 1, !dbg !144
  %20 = sext i8 %19 to i32, !dbg !144
  %21 = icmp eq i32 %20, 13, !dbg !145
  br i1 %21, label %22, label %43, !dbg !146

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %7, align 8, !dbg !147
  %24 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !149
  %25 = load i8, i8* %24, align 1, !dbg !150
  %26 = sext i8 %25 to i32, !dbg !150
  %27 = icmp eq i32 %26, 10, !dbg !151
  br i1 %27, label %28, label %43, !dbg !152

; <label>:28:                                     ; preds = %22
  %29 = load i8*, i8** %7, align 8, !dbg !153
  %30 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !154
  %31 = load i8, i8* %30, align 1, !dbg !155
  %32 = sext i8 %31 to i32, !dbg !155
  %33 = icmp eq i32 %32, 13, !dbg !156
  br i1 %33, label %34, label %43, !dbg !157

; <label>:34:                                     ; preds = %28
  %35 = load i8*, i8** %7, align 8, !dbg !158
  %36 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !160
  %37 = load i8, i8* %36, align 1, !dbg !161
  %38 = sext i8 %37 to i32, !dbg !161
  %39 = icmp eq i32 %38, 10, !dbg !162
  br i1 %39, label %40, label %43, !dbg !163

; <label>:40:                                     ; preds = %34
  %41 = load i8*, i8** %7, align 8, !dbg !165
  %42 = getelementptr inbounds i8, i8* %41, i64 4, !dbg !166
  store i8* %42, i8** %3, align 8, !dbg !167
  br label %48, !dbg !167

; <label>:43:                                     ; preds = %34, %28, %22, %17
  br label %44, !dbg !168

; <label>:44:                                     ; preds = %43
  %45 = load i8*, i8** %7, align 8, !dbg !170
  %46 = getelementptr inbounds i8, i8* %45, i32 1, !dbg !170
  store i8* %46, i8** %7, align 8, !dbg !170
  br label %12, !dbg !171, !llvm.loop !172

; <label>:47:                                     ; preds = %12
  store i8* null, i8** %3, align 8, !dbg !174
  br label %48, !dbg !174

; <label>:48:                                     ; preds = %47, %40
  %49 = load i8*, i8** %3, align 8, !dbg !175
  ret i8* %49, !dbg !175
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]lib--html.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "extract_content_length", scope: !7, file: !7, line: 36, type: !8, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "html.c", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !13, !10}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 216, baseType: !12)
!11 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!12 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !DILocalVariable(name: "buffer", arg: 1, scope: !6, file: !7, line: 36, type: !13)
!16 = !DIExpression()
!17 = !DILocation(line: 36, column: 37, scope: !6)
!18 = !DILocalVariable(name: "size", arg: 2, scope: !6, file: !7, line: 36, type: !10)
!19 = !DILocation(line: 36, column: 52, scope: !6)
!20 = !DILocalVariable(name: "clen", scope: !6, file: !7, line: 38, type: !13)
!21 = !DILocation(line: 38, column: 8, scope: !6)
!22 = !DILocation(line: 38, column: 22, scope: !6)
!23 = !DILocation(line: 38, column: 15, scope: !6)
!24 = !DILocalVariable(name: "len", scope: !6, file: !7, line: 39, type: !10)
!25 = !DILocation(line: 39, column: 9, scope: !6)
!26 = !DILocalVariable(name: "end", scope: !6, file: !7, line: 40, type: !13)
!27 = !DILocation(line: 40, column: 8, scope: !6)
!28 = !DILocation(line: 43, column: 7, scope: !29)
!29 = distinct !DILexicalBlock(scope: !6, file: !7, line: 43, column: 6)
!30 = !DILocation(line: 43, column: 12, scope: !29)
!31 = !DILocation(line: 43, column: 15, scope: !32)
!32 = !DILexicalBlockFile(scope: !29, file: !7, discriminator: 1)
!33 = !DILocation(line: 43, column: 22, scope: !32)
!34 = !DILocation(line: 43, column: 31, scope: !32)
!35 = !DILocation(line: 43, column: 29, scope: !32)
!36 = !DILocation(line: 43, column: 20, scope: !32)
!37 = !DILocation(line: 43, column: 6, scope: !32)
!38 = !DILocation(line: 44, column: 3, scope: !29)
!39 = !DILocation(line: 47, column: 16, scope: !6)
!40 = !DILocation(line: 47, column: 21, scope: !6)
!41 = !DILocation(line: 47, column: 8, scope: !6)
!42 = !DILocation(line: 47, column: 6, scope: !6)
!43 = !DILocation(line: 48, column: 7, scope: !44)
!44 = distinct !DILexicalBlock(scope: !6, file: !7, line: 48, column: 6)
!45 = !DILocation(line: 48, column: 6, scope: !44)
!46 = !DILocation(line: 48, column: 6, scope: !6)
!47 = !DILocation(line: 49, column: 3, scope: !44)
!48 = !DILocation(line: 51, column: 9, scope: !6)
!49 = !DILocation(line: 51, column: 2, scope: !6)
!50 = !DILocation(line: 52, column: 1, scope: !6)
!51 = distinct !DISubprogram(name: "extract_status_code", scope: !7, file: !7, line: 59, type: !52, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !13, !10}
!54 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!55 = !DILocalVariable(name: "buffer", arg: 1, scope: !51, file: !7, line: 59, type: !13)
!56 = !DILocation(line: 59, column: 31, scope: !51)
!57 = !DILocalVariable(name: "size", arg: 2, scope: !51, file: !7, line: 59, type: !10)
!58 = !DILocation(line: 59, column: 46, scope: !51)
!59 = !DILocalVariable(name: "end", scope: !51, file: !7, line: 61, type: !13)
!60 = !DILocation(line: 61, column: 8, scope: !51)
!61 = !DILocation(line: 61, column: 14, scope: !51)
!62 = !DILocation(line: 61, column: 23, scope: !51)
!63 = !DILocation(line: 61, column: 21, scope: !51)
!64 = !DILocalVariable(name: "code", scope: !51, file: !7, line: 62, type: !12)
!65 = !DILocation(line: 62, column: 16, scope: !51)
!66 = !DILocation(line: 65, column: 2, scope: !51)
!67 = !DILocation(line: 65, column: 9, scope: !68)
!68 = !DILexicalBlockFile(scope: !51, file: !7, discriminator: 1)
!69 = !DILocation(line: 65, column: 18, scope: !68)
!70 = !DILocation(line: 65, column: 16, scope: !68)
!71 = !DILocation(line: 65, column: 22, scope: !68)
!72 = !DILocation(line: 65, column: 26, scope: !73)
!73 = !DILexicalBlockFile(scope: !51, file: !7, discriminator: 2)
!74 = !DILocation(line: 65, column: 25, scope: !73)
!75 = !DILocation(line: 65, column: 33, scope: !73)
!76 = !DILocation(line: 65, column: 40, scope: !73)
!77 = !DILocation(line: 65, column: 44, scope: !78)
!78 = !DILexicalBlockFile(scope: !51, file: !7, discriminator: 3)
!79 = !DILocation(line: 65, column: 43, scope: !78)
!80 = !DILocation(line: 65, column: 51, scope: !78)
!81 = !DILocation(line: 65, column: 2, scope: !82)
!82 = !DILexicalBlockFile(scope: !51, file: !7, discriminator: 4)
!83 = !DILocation(line: 66, column: 9, scope: !51)
!84 = !DILocation(line: 65, column: 2, scope: !85)
!85 = !DILexicalBlockFile(scope: !51, file: !7, discriminator: 5)
!86 = distinct !{!86, !66}
!87 = !DILocation(line: 67, column: 8, scope: !51)
!88 = !DILocation(line: 68, column: 6, scope: !89)
!89 = distinct !DILexicalBlock(scope: !51, file: !7, line: 68, column: 6)
!90 = !DILocation(line: 68, column: 13, scope: !89)
!91 = !DILocation(line: 68, column: 20, scope: !89)
!92 = !DILocation(line: 68, column: 17, scope: !89)
!93 = !DILocation(line: 68, column: 24, scope: !89)
!94 = !DILocation(line: 68, column: 28, scope: !95)
!95 = !DILexicalBlockFile(scope: !89, file: !7, discriminator: 1)
!96 = !DILocation(line: 68, column: 27, scope: !95)
!97 = !DILocation(line: 68, column: 35, scope: !95)
!98 = !DILocation(line: 68, column: 42, scope: !95)
!99 = !DILocation(line: 68, column: 45, scope: !100)
!100 = !DILexicalBlockFile(scope: !89, file: !7, discriminator: 2)
!101 = !DILocation(line: 68, column: 55, scope: !100)
!102 = !DILocation(line: 68, column: 6, scope: !100)
!103 = !DILocation(line: 69, column: 3, scope: !89)
!104 = !DILocation(line: 70, column: 17, scope: !51)
!105 = !DILocation(line: 70, column: 9, scope: !51)
!106 = !DILocation(line: 70, column: 7, scope: !51)
!107 = !DILocation(line: 71, column: 6, scope: !108)
!108 = distinct !DILexicalBlock(scope: !51, file: !7, line: 71, column: 6)
!109 = !DILocation(line: 71, column: 13, scope: !108)
!110 = !DILocation(line: 71, column: 20, scope: !108)
!111 = !DILocation(line: 71, column: 17, scope: !108)
!112 = !DILocation(line: 71, column: 6, scope: !51)
!113 = !DILocation(line: 72, column: 3, scope: !108)
!114 = !DILocation(line: 73, column: 9, scope: !51)
!115 = !DILocation(line: 73, column: 2, scope: !51)
!116 = !DILocation(line: 74, column: 1, scope: !51)
!117 = distinct !DISubprogram(name: "extract_html", scope: !7, file: !7, line: 77, type: !118, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!118 = !DISubroutineType(types: !119)
!119 = !{!13, !13, !10}
!120 = !DILocalVariable(name: "buffer", arg: 1, scope: !117, file: !7, line: 77, type: !13)
!121 = !DILocation(line: 77, column: 26, scope: !117)
!122 = !DILocalVariable(name: "size_buffer", arg: 2, scope: !117, file: !7, line: 77, type: !10)
!123 = !DILocation(line: 77, column: 41, scope: !117)
!124 = !DILocalVariable(name: "end", scope: !117, file: !7, line: 79, type: !13)
!125 = !DILocation(line: 79, column: 8, scope: !117)
!126 = !DILocation(line: 79, column: 14, scope: !117)
!127 = !DILocation(line: 79, column: 23, scope: !117)
!128 = !DILocation(line: 79, column: 21, scope: !117)
!129 = !DILocalVariable(name: "cur", scope: !117, file: !7, line: 80, type: !13)
!130 = !DILocation(line: 80, column: 8, scope: !117)
!131 = !DILocation(line: 82, column: 13, scope: !132)
!132 = distinct !DILexicalBlock(scope: !117, file: !7, line: 82, column: 2)
!133 = !DILocation(line: 82, column: 11, scope: !132)
!134 = !DILocation(line: 82, column: 7, scope: !132)
!135 = !DILocation(line: 82, column: 21, scope: !136)
!136 = !DILexicalBlockFile(scope: !137, file: !7, discriminator: 1)
!137 = distinct !DILexicalBlock(scope: !132, file: !7, line: 82, column: 2)
!138 = !DILocation(line: 82, column: 25, scope: !136)
!139 = !DILocation(line: 82, column: 31, scope: !136)
!140 = !DILocation(line: 82, column: 29, scope: !136)
!141 = !DILocation(line: 82, column: 2, scope: !136)
!142 = !DILocation(line: 83, column: 8, scope: !143)
!143 = distinct !DILexicalBlock(scope: !137, file: !7, line: 83, column: 7)
!144 = !DILocation(line: 83, column: 7, scope: !143)
!145 = !DILocation(line: 83, column: 12, scope: !143)
!146 = !DILocation(line: 83, column: 20, scope: !143)
!147 = !DILocation(line: 83, column: 25, scope: !148)
!148 = !DILexicalBlockFile(scope: !143, file: !7, discriminator: 1)
!149 = !DILocation(line: 83, column: 28, scope: !148)
!150 = !DILocation(line: 83, column: 23, scope: !148)
!151 = !DILocation(line: 83, column: 32, scope: !148)
!152 = !DILocation(line: 84, column: 7, scope: !143)
!153 = !DILocation(line: 84, column: 12, scope: !148)
!154 = !DILocation(line: 84, column: 15, scope: !148)
!155 = !DILocation(line: 84, column: 10, scope: !148)
!156 = !DILocation(line: 84, column: 19, scope: !148)
!157 = !DILocation(line: 84, column: 27, scope: !148)
!158 = !DILocation(line: 84, column: 32, scope: !159)
!159 = !DILexicalBlockFile(scope: !143, file: !7, discriminator: 2)
!160 = !DILocation(line: 84, column: 35, scope: !159)
!161 = !DILocation(line: 84, column: 30, scope: !159)
!162 = !DILocation(line: 84, column: 39, scope: !159)
!163 = !DILocation(line: 83, column: 7, scope: !164)
!164 = !DILexicalBlockFile(scope: !137, file: !7, discriminator: 2)
!165 = !DILocation(line: 85, column: 11, scope: !143)
!166 = !DILocation(line: 85, column: 15, scope: !143)
!167 = !DILocation(line: 85, column: 4, scope: !143)
!168 = !DILocation(line: 84, column: 42, scope: !169)
!169 = !DILexicalBlockFile(scope: !143, file: !7, discriminator: 3)
!170 = !DILocation(line: 82, column: 39, scope: !164)
!171 = !DILocation(line: 82, column: 2, scope: !164)
!172 = distinct !{!172, !173}
!173 = !DILocation(line: 82, column: 2, scope: !117)
!174 = !DILocation(line: 86, column: 2, scope: !117)
!175 = !DILocation(line: 87, column: 1, scope: !117)
