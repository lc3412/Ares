; ModuleID = './[inter]lib--compat--libcompat_test_la-snprintf.o.i'
source_filename = "./[inter]lib--compat--libcompat_test_la-snprintf.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: nounwind uwtable
define i32 @test_snprintf(i8*, i64, i8*, ...) #0 !dbg !6 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !18, metadata !19), !dbg !20
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !21, metadata !19), !dbg !22
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !23, metadata !19), !dbg !24
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !25, metadata !19), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %8, metadata !42, metadata !19), !dbg !43
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !44
  %10 = bitcast %struct.__va_list_tag* %9 to i8*, !dbg !44
  call void @llvm.va_start(i8* %10), !dbg !44
  %11 = load i8*, i8** %4, align 8, !dbg !45
  %12 = load i64, i64* %5, align 8, !dbg !46
  %13 = load i8*, i8** %6, align 8, !dbg !47
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !48
  %15 = call i32 @test_vsnprintf(i8* %11, i64 %12, i8* %13, %struct.__va_list_tag* %14), !dbg !49
  store i32 %15, i32* %8, align 4, !dbg !50
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !51
  %17 = bitcast %struct.__va_list_tag* %16 to i8*, !dbg !51
  call void @llvm.va_end(i8* %17), !dbg !51
  %18 = load i32, i32* %8, align 4, !dbg !52
  ret i32 %18, !dbg !53
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare i32 @test_vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]lib--compat--libcompat_test_la-snprintf.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "test_snprintf", scope: !7, file: !7, line: 29, type: !8, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "snprintf.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !13, !16, null}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 216, baseType: !15)
!14 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!15 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!18 = !DILocalVariable(name: "str", arg: 1, scope: !6, file: !7, line: 29, type: !11)
!19 = !DIExpression()
!20 = !DILocation(line: 29, column: 21, scope: !6)
!21 = !DILocalVariable(name: "n", arg: 2, scope: !6, file: !7, line: 29, type: !13)
!22 = !DILocation(line: 29, column: 33, scope: !6)
!23 = !DILocalVariable(name: "fmt", arg: 3, scope: !6, file: !7, line: 29, type: !16)
!24 = !DILocation(line: 29, column: 48, scope: !6)
!25 = !DILocalVariable(name: "args", scope: !6, file: !7, line: 31, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !27, line: 98, baseType: !28)
!27 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !27, line: 40, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 31, baseType: !30)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 192, align: 64, elements: !39)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 31, size: 192, align: 64, elements: !32)
!32 = !{!33, !35, !36, !38}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !31, file: !1, line: 31, baseType: !34, size: 32, align: 32)
!34 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !31, file: !1, line: 31, baseType: !34, size: 32, align: 32, offset: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !31, file: !1, line: 31, baseType: !37, size: 64, align: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !31, file: !1, line: 31, baseType: !37, size: 64, align: 64, offset: 128)
!39 = !{!40}
!40 = !DISubrange(count: 1)
!41 = !DILocation(line: 31, column: 10, scope: !6)
!42 = !DILocalVariable(name: "i", scope: !6, file: !7, line: 32, type: !10)
!43 = !DILocation(line: 32, column: 6, scope: !6)
!44 = !DILocation(line: 34, column: 1, scope: !6)
!45 = !DILocation(line: 35, column: 21, scope: !6)
!46 = !DILocation(line: 35, column: 26, scope: !6)
!47 = !DILocation(line: 35, column: 29, scope: !6)
!48 = !DILocation(line: 35, column: 34, scope: !6)
!49 = !DILocation(line: 35, column: 6, scope: !6)
!50 = !DILocation(line: 35, column: 4, scope: !6)
!51 = !DILocation(line: 36, column: 1, scope: !6)
!52 = !DILocation(line: 38, column: 9, scope: !6)
!53 = !DILocation(line: 38, column: 2, scope: !6)
