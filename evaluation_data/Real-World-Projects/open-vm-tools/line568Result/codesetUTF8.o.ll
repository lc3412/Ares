; ModuleID = './codesetUTF8.o.i'
source_filename = "./codesetUTF8.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@utf8d = internal constant [400 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\0A\03\03\03\03\03\03\03\03\03\03\03\03\04\03\03\0B\06\06\06\05\08\08\08\08\08\08\08\08\08\08\08\00\01\02\03\05\08\07\01\01\01\04\06\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\01\01\01\01\01\00\01\00\01\01\01\01\01\01\01\02\01\01\01\01\01\02\01\02\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01\01\01\01\01\01\01\01\01\02\01\01\01\01\01\01\01\02\01\01\01\01\01\01\01\01\01\01\01\01\01\03\01\03\01\01\01\01\01\01\01\03\01\01\01\01\01\03\01\03\01\01\01\01\01\01\01\03\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16

; Function Attrs: nounwind uwtable
define signext i8 @CodeSet_IsStringValidUTF8(i8*) #0 !dbg !15 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !23, metadata !24), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %3, metadata !26, metadata !24), !dbg !31
  store i32 0, i32* %3, align 4, !dbg !31
  br label %4, !dbg !32

; <label>:4:                                      ; preds = %8, %1
  %5 = load i8*, i8** %2, align 8, !dbg !33
  %6 = load i8, i8* %5, align 1, !dbg !35
  %7 = icmp ne i8 %6, 0, !dbg !36
  br i1 %7, label %8, label %14, !dbg !36

; <label>:8:                                      ; preds = %4
  %9 = load i8*, i8** %2, align 8, !dbg !37
  %10 = getelementptr inbounds i8, i8* %9, i32 1, !dbg !37
  store i8* %10, i8** %2, align 8, !dbg !37
  %11 = load i8, i8* %9, align 1, !dbg !39
  %12 = zext i8 %11 to i32, !dbg !40
  %13 = call i32 @CodeSetDecode(i32* %3, i32 %12), !dbg !41
  br label %4, !dbg !42, !llvm.loop !44

; <label>:14:                                     ; preds = %4
  %15 = load i32, i32* %3, align 4, !dbg !45
  %16 = icmp eq i32 %15, 0, !dbg !46
  %17 = zext i1 %16 to i32, !dbg !46
  %18 = trunc i32 %17 to i8, !dbg !45
  ret i8 %18, !dbg !47
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @CodeSetDecode(i32*, i32) #2 !dbg !48 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !52, metadata !24), !dbg !53
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !54, metadata !24), !dbg !55
  call void @llvm.dbg.declare(metadata i32* %5, metadata !56, metadata !24), !dbg !57
  %6 = load i32, i32* %4, align 4, !dbg !58
  %7 = zext i32 %6 to i64, !dbg !59
  %8 = getelementptr inbounds [400 x i8], [400 x i8]* @utf8d, i64 0, i64 %7, !dbg !59
  %9 = load i8, i8* %8, align 1, !dbg !59
  %10 = zext i8 %9 to i32, !dbg !59
  store i32 %10, i32* %5, align 4, !dbg !57
  %11 = load i32*, i32** %3, align 8, !dbg !60
  %12 = load i32, i32* %11, align 4, !dbg !61
  %13 = mul i32 %12, 16, !dbg !62
  %14 = add i32 256, %13, !dbg !63
  %15 = load i32, i32* %5, align 4, !dbg !64
  %16 = add i32 %14, %15, !dbg !65
  %17 = zext i32 %16 to i64, !dbg !66
  %18 = getelementptr inbounds [400 x i8], [400 x i8]* @utf8d, i64 0, i64 %17, !dbg !66
  %19 = load i8, i8* %18, align 1, !dbg !66
  %20 = zext i8 %19 to i32, !dbg !66
  %21 = load i32*, i32** %3, align 8, !dbg !67
  store i32 %20, i32* %21, align 4, !dbg !68
  %22 = load i32*, i32** %3, align 8, !dbg !69
  %23 = load i32, i32* %22, align 4, !dbg !70
  ret i32 %23, !dbg !71
}

; Function Attrs: nounwind uwtable
define signext i8 @CodeSet_IsValidUTF8(i8*, i64) #0 !dbg !72 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !78, metadata !24), !dbg !79
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !80, metadata !24), !dbg !81
  call void @llvm.dbg.declare(metadata i64* %5, metadata !82, metadata !24), !dbg !83
  call void @llvm.dbg.declare(metadata i32* %6, metadata !84, metadata !24), !dbg !85
  store i32 0, i32* %6, align 4, !dbg !85
  store i64 0, i64* %5, align 8, !dbg !86
  br label %7, !dbg !88

; <label>:7:                                      ; preds = %17, %2
  %8 = load i64, i64* %5, align 8, !dbg !89
  %9 = load i64, i64* %4, align 8, !dbg !92
  %10 = icmp ult i64 %8, %9, !dbg !93
  br i1 %10, label %11, label %20, !dbg !94

; <label>:11:                                     ; preds = %7
  %12 = load i8*, i8** %3, align 8, !dbg !95
  %13 = getelementptr inbounds i8, i8* %12, i32 1, !dbg !95
  store i8* %13, i8** %3, align 8, !dbg !95
  %14 = load i8, i8* %12, align 1, !dbg !97
  %15 = zext i8 %14 to i32, !dbg !98
  %16 = call i32 @CodeSetDecode(i32* %6, i32 %15), !dbg !99
  br label %17, !dbg !100

; <label>:17:                                     ; preds = %11
  %18 = load i64, i64* %5, align 8, !dbg !101
  %19 = add i64 %18, 1, !dbg !101
  store i64 %19, i64* %5, align 8, !dbg !101
  br label %7, !dbg !103, !llvm.loop !104

; <label>:20:                                     ; preds = %7
  %21 = load i32, i32* %6, align 4, !dbg !106
  %22 = icmp eq i32 %21, 0, !dbg !107
  %23 = zext i1 %22 to i32, !dbg !107
  %24 = trunc i32 %23 to i8, !dbg !106
  ret i8 %24, !dbg !108
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "codesetUTF8.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line568")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = distinct !DIGlobalVariable(name: "utf8d", scope: !0, file: !7, line: 35, type: !8, isLocal: true, isDefinition: true, variable: [400 x i8]* @utf8d)
!7 = !DIFile(filename: "codesetUTF8.c", directory: "/home/lichi/Desktop/open-vm-tools/line568")
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 3200, align: 8, elements: !10)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!10 = !{!11}
!11 = !DISubrange(count: 400)
!12 = !{i32 2, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!15 = distinct !DISubprogram(name: "CodeSet_IsStringValidUTF8", scope: !7, file: !7, line: 65, type: !16, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !21}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !19, line: 230, baseType: !20)
!19 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line568")
!20 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!23 = !DILocalVariable(name: "bufIn", arg: 1, scope: !15, file: !7, line: 65, type: !21)
!24 = !DIExpression()
!25 = !DILocation(line: 65, column: 39, scope: !15)
!26 = !DILocalVariable(name: "state", scope: !15, file: !7, line: 67, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !19, line: 173, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !29, line: 51, baseType: !30)
!29 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line568")
!30 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!31 = !DILocation(line: 67, column: 11, scope: !15)
!32 = !DILocation(line: 69, column: 4, scope: !15)
!33 = !DILocation(line: 69, column: 12, scope: !34)
!34 = !DILexicalBlockFile(scope: !15, file: !7, discriminator: 1)
!35 = !DILocation(line: 69, column: 11, scope: !34)
!36 = !DILocation(line: 69, column: 4, scope: !34)
!37 = !DILocation(line: 70, column: 51, scope: !38)
!38 = distinct !DILexicalBlock(scope: !15, file: !7, line: 69, column: 19)
!39 = !DILocation(line: 70, column: 45, scope: !38)
!40 = !DILocation(line: 70, column: 29, scope: !38)
!41 = !DILocation(line: 70, column: 7, scope: !38)
!42 = !DILocation(line: 69, column: 4, scope: !43)
!43 = !DILexicalBlockFile(scope: !15, file: !7, discriminator: 2)
!44 = distinct !{!44, !32}
!45 = !DILocation(line: 73, column: 11, scope: !15)
!46 = !DILocation(line: 73, column: 17, scope: !15)
!47 = !DILocation(line: 73, column: 4, scope: !15)
!48 = distinct !DISubprogram(name: "CodeSetDecode", scope: !7, file: !7, line: 53, type: !49, isLocal: true, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!49 = !DISubroutineType(types: !50)
!50 = !{!27, !51, !27}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!52 = !DILocalVariable(name: "state", arg: 1, scope: !48, file: !7, line: 53, type: !51)
!53 = !DILocation(line: 53, column: 23, scope: !48)
!54 = !DILocalVariable(name: "byte", arg: 2, scope: !48, file: !7, line: 54, type: !27)
!55 = !DILocation(line: 54, column: 22, scope: !48)
!56 = !DILocalVariable(name: "type", scope: !48, file: !7, line: 56, type: !27)
!57 = !DILocation(line: 56, column: 10, scope: !48)
!58 = !DILocation(line: 56, column: 23, scope: !48)
!59 = !DILocation(line: 56, column: 17, scope: !48)
!60 = !DILocation(line: 58, column: 25, scope: !48)
!61 = !DILocation(line: 58, column: 24, scope: !48)
!62 = !DILocation(line: 58, column: 30, scope: !48)
!63 = !DILocation(line: 58, column: 22, scope: !48)
!64 = !DILocation(line: 58, column: 36, scope: !48)
!65 = !DILocation(line: 58, column: 34, scope: !48)
!66 = !DILocation(line: 58, column: 12, scope: !48)
!67 = !DILocation(line: 58, column: 4, scope: !48)
!68 = !DILocation(line: 58, column: 10, scope: !48)
!69 = !DILocation(line: 60, column: 11, scope: !48)
!70 = !DILocation(line: 60, column: 10, scope: !48)
!71 = !DILocation(line: 60, column: 3, scope: !48)
!72 = distinct !DISubprogram(name: "CodeSet_IsValidUTF8", scope: !7, file: !7, line: 78, type: !73, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!73 = !DISubroutineType(types: !74)
!74 = !{!18, !21, !75}
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 216, baseType: !77)
!76 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line568")
!77 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!78 = !DILocalVariable(name: "bufIn", arg: 1, scope: !72, file: !7, line: 78, type: !21)
!79 = !DILocation(line: 78, column: 33, scope: !72)
!80 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !72, file: !7, line: 79, type: !75)
!81 = !DILocation(line: 79, column: 28, scope: !72)
!82 = !DILocalVariable(name: "i", scope: !72, file: !7, line: 81, type: !75)
!83 = !DILocation(line: 81, column: 11, scope: !72)
!84 = !DILocalVariable(name: "state", scope: !72, file: !7, line: 82, type: !27)
!85 = !DILocation(line: 82, column: 11, scope: !72)
!86 = !DILocation(line: 84, column: 11, scope: !87)
!87 = distinct !DILexicalBlock(scope: !72, file: !7, line: 84, column: 4)
!88 = !DILocation(line: 84, column: 9, scope: !87)
!89 = !DILocation(line: 84, column: 16, scope: !90)
!90 = !DILexicalBlockFile(scope: !91, file: !7, discriminator: 1)
!91 = distinct !DILexicalBlock(scope: !87, file: !7, line: 84, column: 4)
!92 = !DILocation(line: 84, column: 20, scope: !90)
!93 = !DILocation(line: 84, column: 18, scope: !90)
!94 = !DILocation(line: 84, column: 4, scope: !90)
!95 = !DILocation(line: 85, column: 51, scope: !96)
!96 = distinct !DILexicalBlock(scope: !91, file: !7, line: 84, column: 33)
!97 = !DILocation(line: 85, column: 45, scope: !96)
!98 = !DILocation(line: 85, column: 29, scope: !96)
!99 = !DILocation(line: 85, column: 7, scope: !96)
!100 = !DILocation(line: 86, column: 4, scope: !96)
!101 = !DILocation(line: 84, column: 29, scope: !102)
!102 = !DILexicalBlockFile(scope: !91, file: !7, discriminator: 2)
!103 = !DILocation(line: 84, column: 4, scope: !102)
!104 = distinct !{!104, !105}
!105 = !DILocation(line: 84, column: 4, scope: !72)
!106 = !DILocation(line: 88, column: 11, scope: !72)
!107 = !DILocation(line: 88, column: 17, scope: !72)
!108 = !DILocation(line: 88, column: 4, scope: !72)
