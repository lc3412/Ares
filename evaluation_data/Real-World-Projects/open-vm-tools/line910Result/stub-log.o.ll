; ModuleID = './stub-log.o.i'
source_filename = "./stub-log.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define void @LogV(i32, i8*, %struct.__va_list_tag*) #0 !dbg !8 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__va_list_tag*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !27, metadata !28), !dbg !29
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !30, metadata !28), !dbg !31
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %6, metadata !32, metadata !28), !dbg !33
  call void @llvm.dbg.declare(metadata i8** %7, metadata !34, metadata !28), !dbg !36
  %8 = load i8*, i8** %5, align 8, !dbg !37
  %9 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8, !dbg !38
  %10 = call i8* @Str_Vasprintf(i64* null, i8* %8, %struct.__va_list_tag* %9), !dbg !39
  store i8* %10, i8** %7, align 8, !dbg !40
  %11 = load i8*, i8** %7, align 8, !dbg !41
  %12 = icmp ne i8* %11, null, !dbg !43
  br i1 %12, label %13, label %18, !dbg !44

; <label>:13:                                     ; preds = %3
  %14 = load i8*, i8** %7, align 8, !dbg !45
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !47
  %16 = call i32 @fputs(i8* %14, %struct._IO_FILE* %15), !dbg !48
  %17 = load i8*, i8** %7, align 8, !dbg !49
  call void @free(i8* %17) #4, !dbg !50
  br label %18, !dbg !51

; <label>:18:                                     ; preds = %13, %3
  ret void, !dbg !52
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @Str_Vasprintf(i64*, i8*, %struct.__va_list_tag*) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @Log(i8*, ...) #0 !dbg !53 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !56, metadata !28), !dbg !57
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !58, metadata !28), !dbg !67
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !68
  %5 = bitcast %struct.__va_list_tag* %4 to i8*, !dbg !68
  call void @llvm.va_start(i8* %5), !dbg !68
  %6 = load i8*, i8** %2, align 8, !dbg !69
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !70
  call void @LogV(i32 125, i8* %6, %struct.__va_list_tag* %7), !dbg !71
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !72
  %9 = bitcast %struct.__va_list_tag* %8 to i8*, !dbg !72
  call void @llvm.va_end(i8* %9), !dbg !72
  ret void, !dbg !73
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind uwtable
define void @Log_DisableThrottling() #0 !dbg !74 {
  ret void, !dbg !77
}

; Function Attrs: nounwind uwtable
define i8* @Log_GetFileName() #0 !dbg !78 {
  ret i8* null, !dbg !81
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "stub-log.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line910")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!8 = distinct !DISubprogram(name: "LogV", scope: !9, file: !9, line: 40, type: !10, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!9 = !DIFile(filename: "stub-log.c", directory: "/home/lichi/Desktop/open-vm-tools/line910")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !17, !20}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !13, line: 173, baseType: !14)
!13 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line910")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !15, line: 51, baseType: !16)
!15 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line910")
!16 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, align: 64, elements: !22)
!22 = !{!23, !24, !25, !26}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !21, file: !1, baseType: !16, size: 32, align: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !21, file: !1, baseType: !16, size: 32, align: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !21, file: !1, baseType: !4, size: 64, align: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !21, file: !1, baseType: !4, size: 64, align: 64, offset: 128)
!27 = !DILocalVariable(name: "unused", arg: 1, scope: !8, file: !9, line: 40, type: !12)
!28 = !DIExpression()
!29 = !DILocation(line: 40, column: 13, scope: !8)
!30 = !DILocalVariable(name: "fmt", arg: 2, scope: !8, file: !9, line: 41, type: !17)
!31 = !DILocation(line: 41, column: 18, scope: !8)
!32 = !DILocalVariable(name: "args", arg: 3, scope: !8, file: !9, line: 42, type: !20)
!33 = !DILocation(line: 42, column: 14, scope: !8)
!34 = !DILocalVariable(name: "str", scope: !8, file: !9, line: 44, type: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!36 = !DILocation(line: 44, column: 10, scope: !8)
!37 = !DILocation(line: 46, column: 29, scope: !8)
!38 = !DILocation(line: 46, column: 34, scope: !8)
!39 = !DILocation(line: 46, column: 10, scope: !8)
!40 = !DILocation(line: 46, column: 8, scope: !8)
!41 = !DILocation(line: 47, column: 8, scope: !42)
!42 = distinct !DILexicalBlock(scope: !8, file: !9, line: 47, column: 8)
!43 = !DILocation(line: 47, column: 12, scope: !42)
!44 = !DILocation(line: 47, column: 8, scope: !8)
!45 = !DILocation(line: 48, column: 13, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !9, line: 47, column: 20)
!47 = !DILocation(line: 48, column: 17, scope: !46)
!48 = !DILocation(line: 48, column: 7, scope: !46)
!49 = !DILocation(line: 49, column: 12, scope: !46)
!50 = !DILocation(line: 49, column: 7, scope: !46)
!51 = !DILocation(line: 50, column: 4, scope: !46)
!52 = !DILocation(line: 51, column: 1, scope: !8)
!53 = distinct !DISubprogram(name: "Log", scope: !9, file: !9, line: 55, type: !54, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !17, null}
!56 = !DILocalVariable(name: "fmt", arg: 1, scope: !53, file: !9, line: 55, type: !17)
!57 = !DILocation(line: 55, column: 17, scope: !53)
!58 = !DILocalVariable(name: "args", scope: !53, file: !9, line: 58, type: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !60, line: 79, baseType: !61)
!60 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line910")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !62, line: 40, baseType: !63)
!62 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/open-vm-tools/line910")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 58, baseType: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 192, align: 64, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 1)
!67 = !DILocation(line: 58, column: 12, scope: !53)
!68 = !DILocation(line: 60, column: 3, scope: !53)
!69 = !DILocation(line: 61, column: 21, scope: !53)
!70 = !DILocation(line: 61, column: 26, scope: !53)
!71 = !DILocation(line: 61, column: 4, scope: !53)
!72 = !DILocation(line: 62, column: 3, scope: !53)
!73 = !DILocation(line: 63, column: 1, scope: !53)
!74 = distinct !DISubprogram(name: "Log_DisableThrottling", scope: !9, file: !9, line: 68, type: !75, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!75 = !DISubroutineType(types: !76)
!76 = !{null}
!77 = !DILocation(line: 71, column: 1, scope: !74)
!78 = distinct !DISubprogram(name: "Log_GetFileName", scope: !9, file: !9, line: 75, type: !79, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!79 = !DISubroutineType(types: !80)
!80 = !{!17}
!81 = !DILocation(line: 77, column: 4, scope: !78)
