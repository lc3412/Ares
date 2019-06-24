; ModuleID = './[inter]lib--compat--libcompat_test_la-vasprintf.o.i'
source_filename = "./[inter]lib--compat--libcompat_test_la-vasprintf.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: nounwind uwtable
define i32 @test_vasprintf(i8**, i8*, %struct.__va_list_tag*) #0 !dbg !8 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.__va_list_tag*, align 8
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !26, metadata !27), !dbg !28
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !29, metadata !27), !dbg !30
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %7, metadata !31, metadata !27), !dbg !32
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !33, metadata !27), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %9, metadata !42, metadata !27), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %10, metadata !44, metadata !27), !dbg !45
  call void @llvm.dbg.declare(metadata i8** %11, metadata !46, metadata !27), !dbg !47
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !48
  %13 = load %struct.__va_list_tag*, %struct.__va_list_tag** %7, align 8, !dbg !48
  %14 = bitcast %struct.__va_list_tag* %12 to i8*, !dbg !48
  %15 = bitcast %struct.__va_list_tag* %13 to i8*, !dbg !48
  call void @llvm.va_copy(i8* %14, i8* %15), !dbg !48
  %16 = load i8*, i8** %6, align 8, !dbg !49
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !50
  %18 = call i32 @test_vsnprintf(i8* null, i64 0, i8* %16, %struct.__va_list_tag* %17), !dbg !51
  store i32 %18, i32* %9, align 4, !dbg !52
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !53
  %20 = bitcast %struct.__va_list_tag* %19 to i8*, !dbg !53
  call void @llvm.va_end(i8* %20), !dbg !53
  %21 = load i32, i32* %9, align 4, !dbg !54
  %22 = icmp slt i32 %21, 0, !dbg !56
  br i1 %22, label %23, label %25, !dbg !57

; <label>:23:                                     ; preds = %3
  %24 = load i8**, i8*** %5, align 8, !dbg !58
  store i8* null, i8** %24, align 8, !dbg !60
  store i32 -1, i32* %4, align 4, !dbg !61
  br label %50, !dbg !61

; <label>:25:                                     ; preds = %3
  %26 = load i32, i32* %9, align 4, !dbg !62
  %27 = add nsw i32 %26, 1, !dbg !63
  %28 = sext i32 %27 to i64, !dbg !62
  %29 = call noalias i8* @malloc(i64 %28) #2, !dbg !64
  store i8* %29, i8** %11, align 8, !dbg !65
  %30 = load i8*, i8** %11, align 8, !dbg !66
  %31 = icmp eq i8* %30, null, !dbg !68
  br i1 %31, label %32, label %34, !dbg !69

; <label>:32:                                     ; preds = %25
  %33 = load i8**, i8*** %5, align 8, !dbg !70
  store i8* null, i8** %33, align 8, !dbg !72
  store i32 -1, i32* %4, align 4, !dbg !73
  br label %50, !dbg !73

; <label>:34:                                     ; preds = %25
  %35 = load i8*, i8** %11, align 8, !dbg !74
  %36 = load i32, i32* %9, align 4, !dbg !75
  %37 = add nsw i32 %36, 1, !dbg !76
  %38 = sext i32 %37 to i64, !dbg !75
  %39 = load i8*, i8** %6, align 8, !dbg !77
  %40 = load %struct.__va_list_tag*, %struct.__va_list_tag** %7, align 8, !dbg !78
  %41 = call i32 @test_vsnprintf(i8* %35, i64 %38, i8* %39, %struct.__va_list_tag* %40), !dbg !79
  store i32 %41, i32* %10, align 4, !dbg !80
  %42 = load i32, i32* %10, align 4, !dbg !81
  %43 = icmp slt i32 %42, 0, !dbg !83
  br i1 %43, label %44, label %46, !dbg !84

; <label>:44:                                     ; preds = %34
  %45 = load i8*, i8** %11, align 8, !dbg !85
  call void @free(i8* %45) #2, !dbg !87
  store i8* null, i8** %11, align 8, !dbg !88
  br label %46, !dbg !89

; <label>:46:                                     ; preds = %44, %34
  %47 = load i8*, i8** %11, align 8, !dbg !90
  %48 = load i8**, i8*** %5, align 8, !dbg !91
  store i8* %47, i8** %48, align 8, !dbg !92
  %49 = load i32, i32* %10, align 4, !dbg !93
  store i32 %49, i32* %4, align 4, !dbg !94
  br label %50, !dbg !94

; <label>:50:                                     ; preds = %46, %32, %23
  %51 = load i32, i32* %4, align 4, !dbg !95
  ret i32 %51, !dbg !95
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #2

declare i32 @test_vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare void @free(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "[inter]lib--compat--libcompat_test_la-vasprintf.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!8 = distinct !DISubprogram(name: "test_vasprintf", scope: !9, file: !9, line: 29, type: !10, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!9 = !DIFile(filename: "vasprintf.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13, !16, !18}
!12 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, align: 64, elements: !20)
!20 = !{!21, !23, !24, !25}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !19, file: !1, baseType: !22, size: 32, align: 32)
!22 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !19, file: !1, baseType: !22, size: 32, align: 32, offset: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !19, file: !1, baseType: !4, size: 64, align: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !19, file: !1, baseType: !4, size: 64, align: 64, offset: 128)
!26 = !DILocalVariable(name: "strp", arg: 1, scope: !8, file: !9, line: 29, type: !13)
!27 = !DIExpression()
!28 = !DILocation(line: 29, column: 23, scope: !8)
!29 = !DILocalVariable(name: "fmt", arg: 2, scope: !8, file: !9, line: 29, type: !16)
!30 = !DILocation(line: 29, column: 41, scope: !8)
!31 = !DILocalVariable(name: "args", arg: 3, scope: !8, file: !9, line: 29, type: !18)
!32 = !DILocation(line: 29, column: 54, scope: !8)
!33 = !DILocalVariable(name: "args_copy", scope: !8, file: !9, line: 31, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !35, line: 98, baseType: !36)
!35 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !35, line: 40, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 31, baseType: !38)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 192, align: 64, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 1)
!41 = !DILocation(line: 31, column: 10, scope: !8)
!42 = !DILocalVariable(name: "needed", scope: !8, file: !9, line: 32, type: !12)
!43 = !DILocation(line: 32, column: 6, scope: !8)
!44 = !DILocalVariable(name: "n", scope: !8, file: !9, line: 32, type: !12)
!45 = !DILocation(line: 32, column: 14, scope: !8)
!46 = !DILocalVariable(name: "str", scope: !8, file: !9, line: 33, type: !14)
!47 = !DILocation(line: 33, column: 8, scope: !8)
!48 = !DILocation(line: 35, column: 1, scope: !8)
!49 = !DILocation(line: 36, column: 29, scope: !8)
!50 = !DILocation(line: 36, column: 34, scope: !8)
!51 = !DILocation(line: 36, column: 11, scope: !8)
!52 = !DILocation(line: 36, column: 9, scope: !8)
!53 = !DILocation(line: 37, column: 1, scope: !8)
!54 = !DILocation(line: 39, column: 6, scope: !55)
!55 = distinct !DILexicalBlock(scope: !8, file: !9, line: 39, column: 6)
!56 = !DILocation(line: 39, column: 13, scope: !55)
!57 = !DILocation(line: 39, column: 6, scope: !8)
!58 = !DILocation(line: 40, column: 4, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !9, line: 39, column: 18)
!60 = !DILocation(line: 40, column: 9, scope: !59)
!61 = !DILocation(line: 41, column: 3, scope: !59)
!62 = !DILocation(line: 44, column: 15, scope: !8)
!63 = !DILocation(line: 44, column: 22, scope: !8)
!64 = !DILocation(line: 44, column: 8, scope: !8)
!65 = !DILocation(line: 44, column: 6, scope: !8)
!66 = !DILocation(line: 45, column: 6, scope: !67)
!67 = distinct !DILexicalBlock(scope: !8, file: !9, line: 45, column: 6)
!68 = !DILocation(line: 45, column: 10, scope: !67)
!69 = !DILocation(line: 45, column: 6, scope: !8)
!70 = !DILocation(line: 46, column: 4, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !9, line: 45, column: 18)
!72 = !DILocation(line: 46, column: 9, scope: !71)
!73 = !DILocation(line: 47, column: 3, scope: !71)
!74 = !DILocation(line: 50, column: 21, scope: !8)
!75 = !DILocation(line: 50, column: 26, scope: !8)
!76 = !DILocation(line: 50, column: 33, scope: !8)
!77 = !DILocation(line: 50, column: 38, scope: !8)
!78 = !DILocation(line: 50, column: 43, scope: !8)
!79 = !DILocation(line: 50, column: 6, scope: !8)
!80 = !DILocation(line: 50, column: 4, scope: !8)
!81 = !DILocation(line: 51, column: 6, scope: !82)
!82 = distinct !DILexicalBlock(scope: !8, file: !9, line: 51, column: 6)
!83 = !DILocation(line: 51, column: 8, scope: !82)
!84 = !DILocation(line: 51, column: 6, scope: !8)
!85 = !DILocation(line: 52, column: 8, scope: !86)
!86 = distinct !DILexicalBlock(scope: !82, file: !9, line: 51, column: 13)
!87 = !DILocation(line: 52, column: 3, scope: !86)
!88 = !DILocation(line: 53, column: 7, scope: !86)
!89 = !DILocation(line: 54, column: 2, scope: !86)
!90 = !DILocation(line: 56, column: 10, scope: !8)
!91 = !DILocation(line: 56, column: 3, scope: !8)
!92 = !DILocation(line: 56, column: 8, scope: !8)
!93 = !DILocation(line: 58, column: 9, scope: !8)
!94 = !DILocation(line: 58, column: 2, scope: !8)
!95 = !DILocation(line: 59, column: 1, scope: !8)
