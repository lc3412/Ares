; ModuleID = './dynarray.o.i'
source_filename = "./dynarray.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.DynArray = type { %struct.DynBuf, i64 }
%struct.DynBuf = type { i8*, i64, i64 }

; Function Attrs: nounwind uwtable
define signext i8 @DynArray_Init(%struct.DynArray*, i32, i64) #0 !dbg !8 {
  %4 = alloca %struct.DynArray*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.DynArray* %0, %struct.DynArray** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.DynArray** %4, metadata !33, metadata !34), !dbg !35
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !36, metadata !34), !dbg !37
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !38, metadata !34), !dbg !39
  %7 = load %struct.DynArray*, %struct.DynArray** %4, align 8, !dbg !40
  %8 = getelementptr inbounds %struct.DynArray, %struct.DynArray* %7, i32 0, i32 0, !dbg !41
  call void @DynBuf_Init(%struct.DynBuf* %8), !dbg !42
  %9 = load i64, i64* %6, align 8, !dbg !43
  %10 = load %struct.DynArray*, %struct.DynArray** %4, align 8, !dbg !44
  %11 = getelementptr inbounds %struct.DynArray, %struct.DynArray* %10, i32 0, i32 1, !dbg !45
  store i64 %9, i64* %11, align 8, !dbg !46
  %12 = load %struct.DynArray*, %struct.DynArray** %4, align 8, !dbg !47
  %13 = load i32, i32* %5, align 4, !dbg !48
  %14 = call signext i8 @DynArray_SetCount(%struct.DynArray* %12, i32 %13), !dbg !49
  ret i8 %14, !dbg !50
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @DynBuf_Init(%struct.DynBuf*) #2

; Function Attrs: nounwind uwtable
define signext i8 @DynArray_SetCount(%struct.DynArray*, i32) #0 !dbg !51 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.DynArray*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.DynArray* %0, %struct.DynArray** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.DynArray** %4, metadata !54, metadata !34), !dbg !55
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !56, metadata !34), !dbg !57
  call void @llvm.dbg.declare(metadata i64* %6, metadata !58, metadata !34), !dbg !59
  call void @llvm.dbg.declare(metadata i64* %7, metadata !60, metadata !34), !dbg !61
  %8 = load i32, i32* %5, align 4, !dbg !62
  %9 = zext i32 %8 to i64, !dbg !62
  %10 = load %struct.DynArray*, %struct.DynArray** %4, align 8, !dbg !63
  %11 = getelementptr inbounds %struct.DynArray, %struct.DynArray* %10, i32 0, i32 1, !dbg !64
  %12 = load i64, i64* %11, align 8, !dbg !64
  %13 = mul i64 %9, %12, !dbg !65
  store i64 %13, i64* %6, align 8, !dbg !66
  %14 = load %struct.DynArray*, %struct.DynArray** %4, align 8, !dbg !67
  %15 = getelementptr inbounds %struct.DynArray, %struct.DynArray* %14, i32 0, i32 0, !dbg !68
  %16 = call i64 @DynBuf_GetAllocatedSize(%struct.DynBuf* %15), !dbg !69
  store i64 %16, i64* %7, align 8, !dbg !70
  %17 = load i64, i64* %7, align 8, !dbg !71
  %18 = load i64, i64* %6, align 8, !dbg !73
  %19 = icmp ult i64 %17, %18, !dbg !74
  br i1 %19, label %20, label %28, !dbg !75

; <label>:20:                                     ; preds = %2
  %21 = load %struct.DynArray*, %struct.DynArray** %4, align 8, !dbg !76
  %22 = getelementptr inbounds %struct.DynArray, %struct.DynArray* %21, i32 0, i32 0, !dbg !79
  %23 = load i64, i64* %6, align 8, !dbg !80
  %24 = call signext i8 @DynBuf_Enlarge(%struct.DynBuf* %22, i64 %23), !dbg !81
  %25 = icmp ne i8 %24, 0, !dbg !81
  br i1 %25, label %27, label %26, !dbg !82

; <label>:26:                                     ; preds = %20
  store i8 0, i8* %3, align 1, !dbg !83
  br label %32, !dbg !83

; <label>:27:                                     ; preds = %20
  br label %28, !dbg !85

; <label>:28:                                     ; preds = %27, %2
  %29 = load %struct.DynArray*, %struct.DynArray** %4, align 8, !dbg !86
  %30 = getelementptr inbounds %struct.DynArray, %struct.DynArray* %29, i32 0, i32 0, !dbg !87
  %31 = load i64, i64* %6, align 8, !dbg !88
  call void @DynBuf_SetSize(%struct.DynBuf* %30, i64 %31), !dbg !89
  store i8 1, i8* %3, align 1, !dbg !90
  br label %32, !dbg !90

; <label>:32:                                     ; preds = %28, %26
  %33 = load i8, i8* %3, align 1, !dbg !91
  ret i8 %33, !dbg !91
}

; Function Attrs: nounwind uwtable
define void @DynArray_Destroy(%struct.DynArray*) #0 !dbg !92 {
  %2 = alloca %struct.DynArray*, align 8
  store %struct.DynArray* %0, %struct.DynArray** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynArray** %2, metadata !95, metadata !34), !dbg !96
  %3 = load %struct.DynArray*, %struct.DynArray** %2, align 8, !dbg !97
  %4 = getelementptr inbounds %struct.DynArray, %struct.DynArray* %3, i32 0, i32 0, !dbg !98
  call void @DynBuf_Destroy(%struct.DynBuf* %4), !dbg !99
  ret void, !dbg !100
}

declare void @DynBuf_Destroy(%struct.DynBuf*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @DynBuf_GetAllocatedSize(%struct.DynBuf*) #3 !dbg !101 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !106, metadata !34), !dbg !107
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !108
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 2, !dbg !109
  %5 = load i64, i64* %4, align 8, !dbg !109
  ret i64 %5, !dbg !110
}

declare signext i8 @DynBuf_Enlarge(%struct.DynBuf*, i64) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @DynBuf_SetSize(%struct.DynBuf*, i64) #3 !dbg !111 {
  %3 = alloca %struct.DynBuf*, align 8
  %4 = alloca i64, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %3, metadata !115, metadata !34), !dbg !116
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !117, metadata !34), !dbg !118
  %5 = load i64, i64* %4, align 8, !dbg !119
  %6 = load %struct.DynBuf*, %struct.DynBuf** %3, align 8, !dbg !120
  %7 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %6, i32 0, i32 1, !dbg !121
  store i64 %5, i64* %7, align 8, !dbg !122
  ret void, !dbg !123
}

; Function Attrs: nounwind uwtable
define i32 @DynArray_AllocCount(%struct.DynArray*) #0 !dbg !124 {
  %2 = alloca %struct.DynArray*, align 8
  store %struct.DynArray* %0, %struct.DynArray** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynArray** %2, metadata !129, metadata !34), !dbg !130
  %3 = load %struct.DynArray*, %struct.DynArray** %2, align 8, !dbg !131
  %4 = getelementptr inbounds %struct.DynArray, %struct.DynArray* %3, i32 0, i32 0, !dbg !132
  %5 = call i64 @DynBuf_GetAllocatedSize(%struct.DynBuf* %4), !dbg !133
  %6 = load %struct.DynArray*, %struct.DynArray** %2, align 8, !dbg !134
  %7 = getelementptr inbounds %struct.DynArray, %struct.DynArray* %6, i32 0, i32 1, !dbg !135
  %8 = load i64, i64* %7, align 8, !dbg !135
  %9 = udiv i64 %5, %8, !dbg !136
  %10 = trunc i64 %9 to i32, !dbg !137
  ret i32 %10, !dbg !138
}

; Function Attrs: nounwind uwtable
define void @DynArray_QSort(%struct.DynArray*, i32 (i8*, i8*)*) #0 !dbg !139 {
  %3 = alloca %struct.DynArray*, align 8
  %4 = alloca i32 (i8*, i8*)*, align 8
  %5 = alloca i8*, align 8
  store %struct.DynArray* %0, %struct.DynArray** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.DynArray** %3, metadata !149, metadata !34), !dbg !150
  store i32 (i8*, i8*)* %1, i32 (i8*, i8*)** %4, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i8*)** %4, metadata !151, metadata !34), !dbg !152
  call void @llvm.dbg.declare(metadata i8** %5, metadata !153, metadata !34), !dbg !159
  %6 = load %struct.DynArray*, %struct.DynArray** %3, align 8, !dbg !160
  %7 = getelementptr inbounds %struct.DynArray, %struct.DynArray* %6, i32 0, i32 0, !dbg !161
  %8 = call i8* @DynBuf_Get(%struct.DynBuf* %7), !dbg !162
  store i8* %8, i8** %5, align 8, !dbg !163
  %9 = load i8*, i8** %5, align 8, !dbg !164
  %10 = load %struct.DynArray*, %struct.DynArray** %3, align 8, !dbg !165
  %11 = call i32 @DynArray_Count(%struct.DynArray* %10), !dbg !166
  %12 = zext i32 %11 to i64, !dbg !166
  %13 = load %struct.DynArray*, %struct.DynArray** %3, align 8, !dbg !167
  %14 = getelementptr inbounds %struct.DynArray, %struct.DynArray* %13, i32 0, i32 1, !dbg !168
  %15 = load i64, i64* %14, align 8, !dbg !168
  %16 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %4, align 8, !dbg !169
  call void @qsort(i8* %9, i64 %12, i64 %15, i32 (i8*, i8*)* %16), !dbg !170
  ret void, !dbg !172
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @DynBuf_Get(%struct.DynBuf*) #3 !dbg !173 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !177, metadata !34), !dbg !178
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !179
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 0, !dbg !180
  %5 = load i8*, i8** %4, align 8, !dbg !180
  ret i8* %5, !dbg !181
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @DynArray_Count(%struct.DynArray*) #3 !dbg !182 {
  %2 = alloca %struct.DynArray*, align 8
  store %struct.DynArray* %0, %struct.DynArray** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynArray** %2, metadata !183, metadata !34), !dbg !184
  %3 = load %struct.DynArray*, %struct.DynArray** %2, align 8, !dbg !185
  %4 = getelementptr inbounds %struct.DynArray, %struct.DynArray* %3, i32 0, i32 0, !dbg !186
  %5 = call i64 @DynBuf_GetSize(%struct.DynBuf* %4), !dbg !187
  %6 = load %struct.DynArray*, %struct.DynArray** %2, align 8, !dbg !188
  %7 = getelementptr inbounds %struct.DynArray, %struct.DynArray* %6, i32 0, i32 1, !dbg !189
  %8 = load i64, i64* %7, align 8, !dbg !189
  %9 = udiv i64 %5, %8, !dbg !190
  %10 = trunc i64 %9 to i32, !dbg !191
  ret i32 %10, !dbg !192
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @DynBuf_GetSize(%struct.DynBuf*) #3 !dbg !193 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !194, metadata !34), !dbg !195
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !196
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 1, !dbg !197
  %5 = load i64, i64* %4, align 8, !dbg !197
  ret i64 %5, !dbg !198
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "dynarray.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line574")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!8 = distinct !DISubprogram(name: "DynArray_Init", scope: !9, file: !9, line: 48, type: !10, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!9 = !DIFile(filename: "dynarray.c", directory: "/home/lichi/Desktop/open-vm-tools/line574")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !15, !4, !28}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !13, line: 230, baseType: !14)
!13 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line574")
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "DynArray", file: !17, line: 42, baseType: !18)
!17 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dynarray.h", directory: "/home/lichi/Desktop/open-vm-tools/line574")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DynArray", file: !17, line: 39, size: 256, align: 64, elements: !19)
!19 = !{!20, !32}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !18, file: !17, line: 40, baseType: !21, size: 192, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "DynBuf", file: !22, line: 40, baseType: !23)
!22 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dynbuf.h", directory: "/home/lichi/Desktop/open-vm-tools/line574")
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DynBuf", file: !22, line: 36, size: 192, align: 64, elements: !24)
!24 = !{!25, !27, !31}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !23, file: !22, line: 37, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !23, file: !22, line: 38, baseType: !28, size: 64, align: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 216, baseType: !30)
!29 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line574")
!30 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !23, file: !22, line: 39, baseType: !28, size: 64, align: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !18, file: !17, line: 41, baseType: !28, size: 64, align: 64, offset: 192)
!33 = !DILocalVariable(name: "a", arg: 1, scope: !8, file: !9, line: 48, type: !15)
!34 = !DIExpression()
!35 = !DILocation(line: 48, column: 25, scope: !8)
!36 = !DILocalVariable(name: "count", arg: 2, scope: !8, file: !9, line: 49, type: !4)
!37 = !DILocation(line: 49, column: 28, scope: !8)
!38 = !DILocalVariable(name: "width", arg: 3, scope: !8, file: !9, line: 50, type: !28)
!39 = !DILocation(line: 50, column: 22, scope: !8)
!40 = !DILocation(line: 54, column: 17, scope: !8)
!41 = !DILocation(line: 54, column: 20, scope: !8)
!42 = !DILocation(line: 54, column: 4, scope: !8)
!43 = !DILocation(line: 55, column: 15, scope: !8)
!44 = !DILocation(line: 55, column: 4, scope: !8)
!45 = !DILocation(line: 55, column: 7, scope: !8)
!46 = !DILocation(line: 55, column: 13, scope: !8)
!47 = !DILocation(line: 56, column: 29, scope: !8)
!48 = !DILocation(line: 56, column: 32, scope: !8)
!49 = !DILocation(line: 56, column: 11, scope: !8)
!50 = !DILocation(line: 56, column: 4, scope: !8)
!51 = distinct !DISubprogram(name: "DynArray_SetCount", scope: !9, file: !9, line: 104, type: !52, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!52 = !DISubroutineType(types: !53)
!53 = !{!12, !15, !4}
!54 = !DILocalVariable(name: "a", arg: 1, scope: !51, file: !9, line: 104, type: !15)
!55 = !DILocation(line: 104, column: 29, scope: !51)
!56 = !DILocalVariable(name: "c", arg: 2, scope: !51, file: !9, line: 105, type: !4)
!57 = !DILocation(line: 105, column: 32, scope: !51)
!58 = !DILocalVariable(name: "needed", scope: !51, file: !9, line: 107, type: !28)
!59 = !DILocation(line: 107, column: 11, scope: !51)
!60 = !DILocalVariable(name: "allocated", scope: !51, file: !9, line: 107, type: !28)
!61 = !DILocation(line: 107, column: 19, scope: !51)
!62 = !DILocation(line: 111, column: 13, scope: !51)
!63 = !DILocation(line: 111, column: 17, scope: !51)
!64 = !DILocation(line: 111, column: 20, scope: !51)
!65 = !DILocation(line: 111, column: 15, scope: !51)
!66 = !DILocation(line: 111, column: 11, scope: !51)
!67 = !DILocation(line: 112, column: 41, scope: !51)
!68 = !DILocation(line: 112, column: 44, scope: !51)
!69 = !DILocation(line: 112, column: 16, scope: !51)
!70 = !DILocation(line: 112, column: 14, scope: !51)
!71 = !DILocation(line: 114, column: 8, scope: !72)
!72 = distinct !DILexicalBlock(scope: !51, file: !9, line: 114, column: 8)
!73 = !DILocation(line: 114, column: 20, scope: !72)
!74 = !DILocation(line: 114, column: 18, scope: !72)
!75 = !DILocation(line: 114, column: 8, scope: !51)
!76 = !DILocation(line: 115, column: 28, scope: !77)
!77 = distinct !DILexicalBlock(scope: !78, file: !9, line: 115, column: 11)
!78 = distinct !DILexicalBlock(scope: !72, file: !9, line: 114, column: 28)
!79 = !DILocation(line: 115, column: 31, scope: !77)
!80 = !DILocation(line: 115, column: 36, scope: !77)
!81 = !DILocation(line: 115, column: 12, scope: !77)
!82 = !DILocation(line: 115, column: 11, scope: !78)
!83 = !DILocation(line: 116, column: 10, scope: !84)
!84 = distinct !DILexicalBlock(scope: !77, file: !9, line: 115, column: 45)
!85 = !DILocation(line: 118, column: 4, scope: !78)
!86 = !DILocation(line: 119, column: 20, scope: !51)
!87 = !DILocation(line: 119, column: 23, scope: !51)
!88 = !DILocation(line: 119, column: 28, scope: !51)
!89 = !DILocation(line: 119, column: 4, scope: !51)
!90 = !DILocation(line: 121, column: 4, scope: !51)
!91 = !DILocation(line: 122, column: 1, scope: !51)
!92 = distinct !DISubprogram(name: "DynArray_Destroy", scope: !9, file: !9, line: 77, type: !93, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !15}
!95 = !DILocalVariable(name: "a", arg: 1, scope: !92, file: !9, line: 77, type: !15)
!96 = !DILocation(line: 77, column: 28, scope: !92)
!97 = !DILocation(line: 81, column: 20, scope: !92)
!98 = !DILocation(line: 81, column: 23, scope: !92)
!99 = !DILocation(line: 81, column: 4, scope: !92)
!100 = !DILocation(line: 82, column: 1, scope: !92)
!101 = distinct !DISubprogram(name: "DynBuf_GetAllocatedSize", scope: !22, file: !22, line: 234, type: !102, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!102 = !DISubroutineType(types: !103)
!103 = !{!28, !104}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!106 = !DILocalVariable(name: "b", arg: 1, scope: !101, file: !22, line: 234, type: !104)
!107 = !DILocation(line: 234, column: 39, scope: !101)
!108 = !DILocation(line: 238, column: 11, scope: !101)
!109 = !DILocation(line: 238, column: 14, scope: !101)
!110 = !DILocation(line: 238, column: 4, scope: !101)
!111 = distinct !DISubprogram(name: "DynBuf_SetSize", scope: !22, file: !22, line: 203, type: !112, isLocal: true, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !114, !28}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!115 = !DILocalVariable(name: "b", arg: 1, scope: !111, file: !22, line: 203, type: !114)
!116 = !DILocation(line: 203, column: 24, scope: !111)
!117 = !DILocalVariable(name: "size", arg: 2, scope: !111, file: !22, line: 204, type: !28)
!118 = !DILocation(line: 204, column: 23, scope: !111)
!119 = !DILocation(line: 209, column: 14, scope: !111)
!120 = !DILocation(line: 209, column: 4, scope: !111)
!121 = !DILocation(line: 209, column: 7, scope: !111)
!122 = !DILocation(line: 209, column: 12, scope: !111)
!123 = !DILocation(line: 210, column: 1, scope: !111)
!124 = distinct !DISubprogram(name: "DynArray_AllocCount", scope: !9, file: !9, line: 149, type: !125, isLocal: false, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!125 = !DISubroutineType(types: !126)
!126 = !{!4, !127}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!129 = !DILocalVariable(name: "a", arg: 1, scope: !124, file: !9, line: 149, type: !127)
!130 = !DILocation(line: 149, column: 37, scope: !124)
!131 = !DILocation(line: 153, column: 52, scope: !124)
!132 = !DILocation(line: 153, column: 55, scope: !124)
!133 = !DILocation(line: 153, column: 27, scope: !124)
!134 = !DILocation(line: 153, column: 62, scope: !124)
!135 = !DILocation(line: 153, column: 65, scope: !124)
!136 = !DILocation(line: 153, column: 60, scope: !124)
!137 = !DILocation(line: 153, column: 11, scope: !124)
!138 = !DILocation(line: 153, column: 4, scope: !124)
!139 = distinct !DISubprogram(name: "DynArray_QSort", scope: !9, file: !9, line: 175, type: !140, isLocal: false, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !15, !142}
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "DynArrayCmp", file: !17, line: 56, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!146, !147, !147}
!146 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!149 = !DILocalVariable(name: "a", arg: 1, scope: !139, file: !9, line: 175, type: !15)
!150 = !DILocation(line: 175, column: 26, scope: !139)
!151 = !DILocalVariable(name: "compare", arg: 2, scope: !139, file: !9, line: 176, type: !142)
!152 = !DILocation(line: 176, column: 28, scope: !139)
!153 = !DILocalVariable(name: "arrayBuf", scope: !139, file: !9, line: 178, type: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !13, line: 177, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !157, line: 48, baseType: !158)
!157 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line574")
!158 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!159 = !DILocation(line: 178, column: 11, scope: !139)
!160 = !DILocation(line: 183, column: 27, scope: !139)
!161 = !DILocation(line: 183, column: 30, scope: !139)
!162 = !DILocation(line: 183, column: 15, scope: !139)
!163 = !DILocation(line: 183, column: 13, scope: !139)
!164 = !DILocation(line: 184, column: 10, scope: !139)
!165 = !DILocation(line: 184, column: 35, scope: !139)
!166 = !DILocation(line: 184, column: 20, scope: !139)
!167 = !DILocation(line: 184, column: 39, scope: !139)
!168 = !DILocation(line: 184, column: 42, scope: !139)
!169 = !DILocation(line: 184, column: 49, scope: !139)
!170 = !DILocation(line: 184, column: 4, scope: !171)
!171 = !DILexicalBlockFile(scope: !139, file: !9, discriminator: 1)
!172 = !DILocation(line: 185, column: 1, scope: !139)
!173 = distinct !DISubprogram(name: "DynBuf_Get", scope: !22, file: !22, line: 113, type: !174, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!174 = !DISubroutineType(types: !175)
!175 = !{!176, !104}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!177 = !DILocalVariable(name: "b", arg: 1, scope: !173, file: !22, line: 113, type: !104)
!178 = !DILocation(line: 113, column: 26, scope: !173)
!179 = !DILocation(line: 117, column: 11, scope: !173)
!180 = !DILocation(line: 117, column: 14, scope: !173)
!181 = !DILocation(line: 117, column: 4, scope: !173)
!182 = distinct !DISubprogram(name: "DynArray_Count", scope: !17, file: !17, line: 185, type: !125, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!183 = !DILocalVariable(name: "a", arg: 1, scope: !182, file: !17, line: 185, type: !127)
!184 = !DILocation(line: 185, column: 32, scope: !182)
!185 = !DILocation(line: 189, column: 43, scope: !182)
!186 = !DILocation(line: 189, column: 46, scope: !182)
!187 = !DILocation(line: 189, column: 27, scope: !182)
!188 = !DILocation(line: 189, column: 53, scope: !182)
!189 = !DILocation(line: 189, column: 56, scope: !182)
!190 = !DILocation(line: 189, column: 51, scope: !182)
!191 = !DILocation(line: 189, column: 11, scope: !182)
!192 = !DILocation(line: 189, column: 4, scope: !182)
!193 = distinct !DISubprogram(name: "DynBuf_GetSize", scope: !22, file: !22, line: 174, type: !102, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!194 = !DILocalVariable(name: "b", arg: 1, scope: !193, file: !22, line: 174, type: !104)
!195 = !DILocation(line: 174, column: 30, scope: !193)
!196 = !DILocation(line: 178, column: 11, scope: !193)
!197 = !DILocation(line: 178, column: 14, scope: !193)
!198 = !DILocation(line: 178, column: 4, scope: !193)
