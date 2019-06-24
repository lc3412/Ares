; ModuleID = './panicDefault.o.i'
source_filename = "./panicDefault.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noreturn nounwind uwtable
define void @Panic(i8*, ...) #0 !dbg !6 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !13, metadata !14), !dbg !15
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !16, metadata !14), !dbg !33
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !34
  %5 = bitcast %struct.__va_list_tag* %4 to i8*, !dbg !34
  call void @llvm.va_start(i8* %5), !dbg !34
  %6 = load i8*, i8** %2, align 8, !dbg !35
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !36
  call void @Panic_Panic(i8* %6, %struct.__va_list_tag* %7) #4, !dbg !37
  unreachable, !dbg !37
                                                  ; No predecessors!
  ret void, !dbg !38
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: noreturn
declare void @Panic_Panic(i8*, %struct.__va_list_tag*) #3

attributes #0 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "panicDefault.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line789")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "Panic", scope: !7, file: !7, line: 51, type: !8, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "panicDefault.c", directory: "/home/lichi/Desktop/open-vm-tools/line789")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, null}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DILocalVariable(name: "fmt", arg: 1, scope: !6, file: !7, line: 51, type: !10)
!14 = !DIExpression()
!15 = !DILocation(line: 51, column: 19, scope: !6)
!16 = !DILocalVariable(name: "ap", scope: !6, file: !7, line: 54, type: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !18, line: 79, baseType: !19)
!18 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line789")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !20, line: 40, baseType: !21)
!20 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/open-vm-tools/line789")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 54, baseType: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 192, align: 64, elements: !31)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 54, size: 192, align: 64, elements: !24)
!24 = !{!25, !27, !28, !30}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !23, file: !1, line: 54, baseType: !26, size: 32, align: 32)
!26 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !23, file: !1, line: 54, baseType: !26, size: 32, align: 32, offset: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !23, file: !1, line: 54, baseType: !29, size: 64, align: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !23, file: !1, line: 54, baseType: !29, size: 64, align: 64, offset: 128)
!31 = !{!32}
!32 = !DISubrange(count: 1)
!33 = !DILocation(line: 54, column: 12, scope: !6)
!34 = !DILocation(line: 56, column: 3, scope: !6)
!35 = !DILocation(line: 57, column: 16, scope: !6)
!36 = !DILocation(line: 57, column: 21, scope: !6)
!37 = !DILocation(line: 57, column: 4, scope: !6)
!38 = !DILocation(line: 59, column: 1, scope: !6)
