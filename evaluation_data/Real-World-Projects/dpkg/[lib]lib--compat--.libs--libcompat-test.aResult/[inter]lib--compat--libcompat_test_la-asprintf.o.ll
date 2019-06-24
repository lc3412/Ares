; ModuleID = './[inter]lib--compat--libcompat_test_la-asprintf.o.i'
source_filename = "./[inter]lib--compat--libcompat_test_la-asprintf.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: nounwind uwtable
define i32 @test_asprintf(i8**, i8*, ...) #0 !dbg !6 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !16, metadata !17), !dbg !18
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !19, metadata !17), !dbg !20
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !21, metadata !17), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %6, metadata !38, metadata !17), !dbg !39
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !40
  %8 = bitcast %struct.__va_list_tag* %7 to i8*, !dbg !40
  call void @llvm.va_start(i8* %8), !dbg !40
  %9 = load i8**, i8*** %3, align 8, !dbg !41
  %10 = load i8*, i8** %4, align 8, !dbg !42
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !43
  %12 = call i32 @test_vasprintf(i8** %9, i8* %10, %struct.__va_list_tag* %11), !dbg !44
  store i32 %12, i32* %6, align 4, !dbg !45
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !46
  %14 = bitcast %struct.__va_list_tag* %13 to i8*, !dbg !46
  call void @llvm.va_end(i8* %14), !dbg !46
  %15 = load i32, i32* %6, align 4, !dbg !47
  ret i32 %15, !dbg !48
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare i32 @test_vasprintf(i8**, i8*, %struct.__va_list_tag*) #3

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
!1 = !DIFile(filename: "[inter]lib--compat--libcompat_test_la-asprintf.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "test_asprintf", scope: !7, file: !7, line: 28, type: !8, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "asprintf.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !14, null}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!16 = !DILocalVariable(name: "strp", arg: 1, scope: !6, file: !7, line: 28, type: !11)
!17 = !DIExpression()
!18 = !DILocation(line: 28, column: 22, scope: !6)
!19 = !DILocalVariable(name: "fmt", arg: 2, scope: !6, file: !7, line: 28, type: !14)
!20 = !DILocation(line: 28, column: 40, scope: !6)
!21 = !DILocalVariable(name: "args", scope: !6, file: !7, line: 30, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !23, line: 98, baseType: !24)
!23 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !23, line: 40, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 30, baseType: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 192, align: 64, elements: !35)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 30, size: 192, align: 64, elements: !28)
!28 = !{!29, !31, !32, !34}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !27, file: !1, line: 30, baseType: !30, size: 32, align: 32)
!30 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !27, file: !1, line: 30, baseType: !30, size: 32, align: 32, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !27, file: !1, line: 30, baseType: !33, size: 64, align: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !27, file: !1, line: 30, baseType: !33, size: 64, align: 64, offset: 128)
!35 = !{!36}
!36 = !DISubrange(count: 1)
!37 = !DILocation(line: 30, column: 10, scope: !6)
!38 = !DILocalVariable(name: "n", scope: !6, file: !7, line: 31, type: !10)
!39 = !DILocation(line: 31, column: 6, scope: !6)
!40 = !DILocation(line: 33, column: 1, scope: !6)
!41 = !DILocation(line: 34, column: 21, scope: !6)
!42 = !DILocation(line: 34, column: 27, scope: !6)
!43 = !DILocation(line: 34, column: 32, scope: !6)
!44 = !DILocation(line: 34, column: 6, scope: !6)
!45 = !DILocation(line: 34, column: 4, scope: !6)
!46 = !DILocation(line: 35, column: 1, scope: !6)
!47 = !DILocation(line: 37, column: 9, scope: !6)
!48 = !DILocation(line: 37, column: 2, scope: !6)
