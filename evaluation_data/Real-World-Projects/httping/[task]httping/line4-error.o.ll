; ModuleID = './line4-error.o.i'
source_filename = "./line4-error.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@last_error = global [4096 x i8] zeroinitializer, align 16
@stderr = external global %struct._IO_FILE*, align 8
@json_output = external global i8, align 1
@.str = private unnamed_addr constant [4 x i8] c"\0A]\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"\0A\0Aerrno=%d which means %s (if applicable)\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Error message '%s' truncated\00", align 1

; Function Attrs: nounwind uwtable
define void @error_exit(i8*, ...) #0 !dbg !13 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !17, metadata !18), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %3, metadata !20, metadata !18), !dbg !22
  %5 = call i32* @__errno_location() #1, !dbg !23
  %6 = load i32, i32* %5, align 4, !dbg !24
  store i32 %6, i32* %3, align 4, !dbg !22
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !25, metadata !18), !dbg !41
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !42
  %8 = bitcast %struct.__va_list_tag* %7 to i8*, !dbg !42
  call void @llvm.va_start(i8* %8), !dbg !42
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !43
  %10 = load i8*, i8** %2, align 8, !dbg !44
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !45
  %12 = call i32 @vfprintf(%struct._IO_FILE* %9, i8* %10, %struct.__va_list_tag* %11), !dbg !46
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !47
  %14 = bitcast %struct.__va_list_tag* %13 to i8*, !dbg !47
  call void @llvm.va_end(i8* %14), !dbg !47
  %15 = load i8, i8* @json_output, align 1, !dbg !48
  %16 = icmp ne i8 %15, 0, !dbg !48
  br i1 %16, label %17, label %19, !dbg !50

; <label>:17:                                     ; preds = %1
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)), !dbg !51
  br label %19, !dbg !53

; <label>:19:                                     ; preds = %17, %1
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !54
  %21 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0)) #3, !dbg !55
  %22 = load i32, i32* %3, align 4, !dbg !56
  %23 = load i32, i32* %3, align 4, !dbg !57
  %24 = call i8* @strerror(i32 %23) #3, !dbg !58
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* %21, i32 %22, i8* %24), !dbg !60
  call void @exit(i32 1) #7, !dbg !62
  unreachable, !dbg !62
                                                  ; No predecessors!
  ret void, !dbg !63
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

declare i32 @printf(i8*, ...) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

; Function Attrs: nounwind
declare i8* @strerror(i32) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: nounwind uwtable
define void @set_error(i8*, ...) #0 !dbg !64 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !69, metadata !18), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %3, metadata !71, metadata !18), !dbg !72
  store i32 4096, i32* %3, align 4, !dbg !72
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !73, metadata !18), !dbg !74
  %5 = load i8, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @last_error, i64 0, i64 0), align 16, !dbg !75
  %6 = icmp ne i8 %5, 0, !dbg !75
  br i1 %6, label %7, label %10, !dbg !77

; <label>:7:                                      ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !78
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @last_error, i32 0, i32 0)), !dbg !79
  br label %10, !dbg !79

; <label>:10:                                     ; preds = %7, %1
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !80
  %12 = bitcast %struct.__va_list_tag* %11 to i8*, !dbg !80
  call void @llvm.va_start(i8* %12), !dbg !80
  %13 = load i8*, i8** %2, align 8, !dbg !81
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !83
  %15 = call i32 @vsnprintf(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @last_error, i32 0, i32 0), i64 4096, i8* %13, %struct.__va_list_tag* %14) #3, !dbg !84
  %16 = load i32, i32* %3, align 4, !dbg !85
  %17 = icmp sge i32 %15, %16, !dbg !86
  br i1 %17, label %18, label %20, !dbg !87

; <label>:18:                                     ; preds = %10
  %19 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0)) #3, !dbg !88
  call void (i8*, ...) @error_exit(i8* %19, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @last_error, i32 0, i32 0)), !dbg !89
  br label %20, !dbg !91

; <label>:20:                                     ; preds = %18, %10
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !92
  %22 = bitcast %struct.__va_list_tag* %21 to i8*, !dbg !92
  call void @llvm.va_end(i8* %22), !dbg !92
  ret void, !dbg !93
}

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #5

; Function Attrs: nounwind uwtable
define void @clear_error() #0 !dbg !94 {
  store i8 0, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @last_error, i64 0, i64 0), align 16, !dbg !97
  ret void, !dbg !98
}

; Function Attrs: nounwind uwtable
define i8* @get_error() #0 !dbg !99 {
  ret i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @last_error, i32 0, i32 0), !dbg !102
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "line4-error.o.i", directory: "/home/lichi/Desktop/httping/task1")
!2 = !{}
!3 = !{!4}
!4 = distinct !DIGlobalVariable(name: "last_error", scope: !0, file: !5, line: 12, type: !6, isLocal: false, isDefinition: true, variable: [4096 x i8]* @last_error)
!5 = !DIFile(filename: "error.c", directory: "/home/lichi/Desktop/httping/task1")
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32768, align: 8, elements: !8)
!7 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!8 = !{!9}
!9 = !DISubrange(count: 4096)
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!13 = distinct !DISubprogram(name: "error_exit", scope: !5, file: !5, line: 16, type: !14, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16, null}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!17 = !DILocalVariable(name: "format", arg: 1, scope: !13, file: !5, line: 16, type: !16)
!18 = !DIExpression()
!19 = !DILocation(line: 16, column: 23, scope: !13)
!20 = !DILocalVariable(name: "e", scope: !13, file: !5, line: 18, type: !21)
!21 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!22 = !DILocation(line: 18, column: 6, scope: !13)
!23 = !DILocation(line: 18, column: 11, scope: !13)
!24 = !DILocation(line: 18, column: 10, scope: !13)
!25 = !DILocalVariable(name: "ap", scope: !13, file: !5, line: 19, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !27, line: 98, baseType: !28)
!27 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/httping/task1")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !27, line: 40, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 19, baseType: !30)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 192, align: 64, elements: !39)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 19, size: 192, align: 64, elements: !32)
!32 = !{!33, !35, !36, !38}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !31, file: !1, line: 19, baseType: !34, size: 32, align: 32)
!34 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !31, file: !1, line: 19, baseType: !34, size: 32, align: 32, offset: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !31, file: !1, line: 19, baseType: !37, size: 64, align: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !31, file: !1, line: 19, baseType: !37, size: 64, align: 64, offset: 128)
!39 = !{!40}
!40 = !DISubrange(count: 1)
!41 = !DILocation(line: 19, column: 10, scope: !13)
!42 = !DILocation(line: 21, column: 1, scope: !13)
!43 = !DILocation(line: 22, column: 16, scope: !13)
!44 = !DILocation(line: 22, column: 24, scope: !13)
!45 = !DILocation(line: 22, column: 32, scope: !13)
!46 = !DILocation(line: 22, column: 8, scope: !13)
!47 = !DILocation(line: 23, column: 1, scope: !13)
!48 = !DILocation(line: 25, column: 6, scope: !49)
!49 = distinct !DILexicalBlock(scope: !13, file: !5, line: 25, column: 6)
!50 = !DILocation(line: 25, column: 6, scope: !13)
!51 = !DILocation(line: 26, column: 4, scope: !52)
!52 = distinct !DILexicalBlock(scope: !49, file: !5, line: 25, column: 19)
!53 = !DILocation(line: 27, column: 2, scope: !52)
!54 = !DILocation(line: 29, column: 9, scope: !13)
!55 = !DILocation(line: 29, column: 17, scope: !13)
!56 = !DILocation(line: 29, column: 75, scope: !13)
!57 = !DILocation(line: 29, column: 87, scope: !13)
!58 = !DILocation(line: 29, column: 78, scope: !59)
!59 = !DILexicalBlockFile(scope: !13, file: !5, discriminator: 1)
!60 = !DILocation(line: 29, column: 2, scope: !61)
!61 = !DILexicalBlockFile(scope: !13, file: !5, discriminator: 2)
!62 = !DILocation(line: 31, column: 2, scope: !13)
!63 = !DILocation(line: 32, column: 1, scope: !13)
!64 = distinct !DISubprogram(name: "set_error", scope: !5, file: !5, line: 34, type: !65, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !67, null}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!69 = !DILocalVariable(name: "fmt", arg: 1, scope: !64, file: !5, line: 34, type: !67)
!70 = !DILocation(line: 34, column: 28, scope: !64)
!71 = !DILocalVariable(name: "buffer_size", scope: !64, file: !5, line: 36, type: !21)
!72 = !DILocation(line: 36, column: 6, scope: !64)
!73 = !DILocalVariable(name: "ap", scope: !64, file: !5, line: 37, type: !26)
!74 = !DILocation(line: 37, column: 10, scope: !64)
!75 = !DILocation(line: 39, column: 6, scope: !76)
!76 = distinct !DILexicalBlock(scope: !64, file: !5, line: 39, column: 6)
!77 = !DILocation(line: 39, column: 6, scope: !64)
!78 = !DILocation(line: 40, column: 10, scope: !76)
!79 = !DILocation(line: 40, column: 3, scope: !76)
!80 = !DILocation(line: 42, column: 1, scope: !64)
!81 = !DILocation(line: 43, column: 47, scope: !82)
!82 = distinct !DILexicalBlock(scope: !64, file: !5, line: 43, column: 6)
!83 = !DILocation(line: 43, column: 52, scope: !82)
!84 = !DILocation(line: 43, column: 6, scope: !82)
!85 = !DILocation(line: 43, column: 59, scope: !82)
!86 = !DILocation(line: 43, column: 56, scope: !82)
!87 = !DILocation(line: 43, column: 6, scope: !64)
!88 = !DILocation(line: 44, column: 14, scope: !82)
!89 = !DILocation(line: 44, column: 3, scope: !90)
!90 = !DILexicalBlockFile(scope: !82, file: !5, discriminator: 1)
!91 = !DILocation(line: 44, column: 3, scope: !82)
!92 = !DILocation(line: 45, column: 1, scope: !64)
!93 = !DILocation(line: 46, column: 1, scope: !64)
!94 = distinct !DISubprogram(name: "clear_error", scope: !5, file: !5, line: 48, type: !95, isLocal: false, isDefinition: true, scopeLine: 49, isOptimized: false, unit: !0, variables: !2)
!95 = !DISubroutineType(types: !96)
!96 = !{null}
!97 = !DILocation(line: 50, column: 16, scope: !94)
!98 = !DILocation(line: 51, column: 1, scope: !94)
!99 = distinct !DISubprogram(name: "get_error", scope: !5, file: !5, line: 53, type: !100, isLocal: false, isDefinition: true, scopeLine: 54, isOptimized: false, unit: !0, variables: !2)
!100 = !DISubroutineType(types: !101)
!101 = !{!16}
!102 = !DILocation(line: 55, column: 2, scope: !99)
