; ModuleID = './stub-user-panic.o.i'
source_filename = "./stub-user-panic.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define void @Panic_PostPanicMsg(i8*, ...) #0 !dbg !8 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !15, metadata !16), !dbg !17
  call void @llvm.dbg.declare(metadata i8** %3, metadata !18, metadata !16), !dbg !20
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !21, metadata !16), !dbg !36
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !37
  %6 = bitcast %struct.__va_list_tag* %5 to i8*, !dbg !37
  call void @llvm.va_start(i8* %6), !dbg !37
  %7 = load i8*, i8** %2, align 8, !dbg !38
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !39
  %9 = call i8* @Str_Vasprintf(i64* null, i8* %7, %struct.__va_list_tag* %8), !dbg !40
  store i8* %9, i8** %3, align 8, !dbg !41
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !42
  %11 = bitcast %struct.__va_list_tag* %10 to i8*, !dbg !42
  call void @llvm.va_end(i8* %11), !dbg !42
  %12 = load i8*, i8** %3, align 8, !dbg !43
  %13 = icmp ne i8* %12, null, !dbg !45
  br i1 %13, label %14, label %18, !dbg !46

; <label>:14:                                     ; preds = %1
  %15 = load i8*, i8** %3, align 8, !dbg !47
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !49
  %17 = call i32 @fputs(i8* %15, %struct._IO_FILE* %16), !dbg !50
  br label %18, !dbg !51

; <label>:18:                                     ; preds = %14, %1
  ret void, !dbg !52
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare i8* @Str_Vasprintf(i64*, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "stub-user-panic.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line939")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!8 = distinct !DISubprogram(name: "Panic_PostPanicMsg", scope: !9, file: !9, line: 35, type: !10, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!9 = !DIFile(filename: "stub-user-panic.c", directory: "/home/lichi/Desktop/open-vm-tools/line939")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, null}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !DILocalVariable(name: "fmt", arg: 1, scope: !8, file: !9, line: 35, type: !12)
!16 = !DIExpression()
!17 = !DILocation(line: 35, column: 32, scope: !8)
!18 = !DILocalVariable(name: "str", scope: !8, file: !9, line: 37, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!20 = !DILocation(line: 37, column: 10, scope: !8)
!21 = !DILocalVariable(name: "args", scope: !8, file: !9, line: 38, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !23, line: 98, baseType: !24)
!23 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/open-vm-tools/line939")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !23, line: 40, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 38, baseType: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 192, align: 64, elements: !34)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 38, size: 192, align: 64, elements: !28)
!28 = !{!29, !31, !32, !33}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !27, file: !1, line: 38, baseType: !30, size: 32, align: 32)
!30 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !27, file: !1, line: 38, baseType: !30, size: 32, align: 32, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !27, file: !1, line: 38, baseType: !4, size: 64, align: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !27, file: !1, line: 38, baseType: !4, size: 64, align: 64, offset: 128)
!34 = !{!35}
!35 = !DISubrange(count: 1)
!36 = !DILocation(line: 38, column: 12, scope: !8)
!37 = !DILocation(line: 40, column: 3, scope: !8)
!38 = !DILocation(line: 41, column: 29, scope: !8)
!39 = !DILocation(line: 41, column: 34, scope: !8)
!40 = !DILocation(line: 41, column: 10, scope: !8)
!41 = !DILocation(line: 41, column: 8, scope: !8)
!42 = !DILocation(line: 42, column: 3, scope: !8)
!43 = !DILocation(line: 44, column: 8, scope: !44)
!44 = distinct !DILexicalBlock(scope: !8, file: !9, line: 44, column: 8)
!45 = !DILocation(line: 44, column: 12, scope: !44)
!46 = !DILocation(line: 44, column: 8, scope: !8)
!47 = !DILocation(line: 45, column: 13, scope: !48)
!48 = distinct !DILexicalBlock(scope: !44, file: !9, line: 44, column: 20)
!49 = !DILocation(line: 45, column: 17, scope: !48)
!50 = !DILocation(line: 45, column: 7, scope: !48)
!51 = !DILocation(line: 46, column: 4, scope: !48)
!52 = !DILocation(line: 47, column: 1, scope: !8)
