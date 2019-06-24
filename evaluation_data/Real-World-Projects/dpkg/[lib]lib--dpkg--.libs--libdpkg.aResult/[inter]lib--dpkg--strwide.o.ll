; ModuleID = './[inter]lib--dpkg--strwide.o.i'
source_filename = "./[inter]lib--dpkg--strwide.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.str_crop_info = type { i32, i32 }

; Function Attrs: nounwind uwtable
define i32 @str_width(i8*) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.__mbstate_t, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !18, metadata !19), !dbg !20
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %4, metadata !21, metadata !19), !dbg !37
  call void @llvm.dbg.declare(metadata i32** %5, metadata !38, metadata !19), !dbg !41
  call void @llvm.dbg.declare(metadata i8** %6, metadata !42, metadata !19), !dbg !43
  %10 = load i8*, i8** %3, align 8, !dbg !44
  store i8* %10, i8** %6, align 8, !dbg !43
  call void @llvm.dbg.declare(metadata i64* %7, metadata !45, metadata !19), !dbg !46
  call void @llvm.dbg.declare(metadata i64* %8, metadata !47, metadata !19), !dbg !48
  call void @llvm.dbg.declare(metadata i32* %9, metadata !49, metadata !19), !dbg !50
  %11 = load i8*, i8** %3, align 8, !dbg !51
  %12 = call i64 @strlen(i8* %11) #6, !dbg !52
  %13 = add i64 %12, 1, !dbg !53
  store i64 %13, i64* %7, align 8, !dbg !54
  %14 = load i64, i64* %7, align 8, !dbg !55
  %15 = mul i64 4, %14, !dbg !56
  %16 = call i8* @m_malloc(i64 %15), !dbg !57
  %17 = bitcast i8* %16 to i32*, !dbg !57
  store i32* %17, i32** %5, align 8, !dbg !58
  %18 = bitcast %struct.__mbstate_t* %4 to i8*, !dbg !59
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 8, i32 4, i1 false), !dbg !59
  %19 = load i32*, i32** %5, align 8, !dbg !60
  %20 = load i64, i64* %7, align 8, !dbg !61
  %21 = call i64 @mbsrtowcs(i32* %19, i8** %6, i64 %20, %struct.__mbstate_t* %4) #7, !dbg !62
  store i64 %21, i64* %8, align 8, !dbg !63
  %22 = load i64, i64* %8, align 8, !dbg !64
  %23 = icmp eq i64 %22, -1, !dbg !66
  br i1 %23, label %24, label %30, !dbg !67

; <label>:24:                                     ; preds = %1
  %25 = load i32*, i32** %5, align 8, !dbg !68
  %26 = bitcast i32* %25 to i8*, !dbg !68
  call void @free(i8* %26) #7, !dbg !70
  %27 = load i8*, i8** %3, align 8, !dbg !71
  %28 = call i64 @strlen(i8* %27) #6, !dbg !72
  %29 = trunc i64 %28 to i32, !dbg !72
  store i32 %29, i32* %2, align 4, !dbg !73
  br label %37, !dbg !73

; <label>:30:                                     ; preds = %1
  %31 = load i32*, i32** %5, align 8, !dbg !74
  %32 = load i64, i64* %8, align 8, !dbg !75
  %33 = call i32 @wcswidth(i32* %31, i64 %32) #7, !dbg !76
  store i32 %33, i32* %9, align 4, !dbg !77
  %34 = load i32*, i32** %5, align 8, !dbg !78
  %35 = bitcast i32* %34 to i8*, !dbg !78
  call void @free(i8* %35) #7, !dbg !79
  %36 = load i32, i32* %9, align 4, !dbg !80
  store i32 %36, i32* %2, align 4, !dbg !81
  br label %37, !dbg !81

; <label>:37:                                     ; preds = %30, %24
  %38 = load i32, i32* %2, align 4, !dbg !82
  ret i32 %38, !dbg !82
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i8* @m_malloc(i64) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: nounwind
declare i64 @mbsrtowcs(i32*, i8**, i64, %struct.__mbstate_t*) #5

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind
declare i32 @wcswidth(i32*, i64) #5

; Function Attrs: nounwind uwtable
define void @str_gen_crop(i8*, i32, %struct.str_crop_info*) #0 !dbg !83 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.str_crop_info*, align 8
  %7 = alloca %struct.__mbstate_t, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !92, metadata !19), !dbg !93
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !94, metadata !19), !dbg !95
  store %struct.str_crop_info* %2, %struct.str_crop_info** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.str_crop_info** %6, metadata !96, metadata !19), !dbg !97
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %7, metadata !98, metadata !19), !dbg !99
  call void @llvm.dbg.declare(metadata i64* %8, metadata !100, metadata !19), !dbg !101
  call void @llvm.dbg.declare(metadata i32* %9, metadata !102, metadata !19), !dbg !103
  store i32 0, i32* %9, align 4, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %10, metadata !104, metadata !19), !dbg !105
  store i32 0, i32* %10, align 4, !dbg !105
  %14 = load i8*, i8** %4, align 8, !dbg !106
  %15 = call i64 @strlen(i8* %14) #6, !dbg !107
  %16 = add i64 %15, 1, !dbg !108
  store i64 %16, i64* %8, align 8, !dbg !109
  %17 = bitcast %struct.__mbstate_t* %7 to i8*, !dbg !110
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 8, i32 4, i1 false), !dbg !110
  br label %18, !dbg !111

; <label>:18:                                     ; preds = %50, %3
  call void @llvm.dbg.declare(metadata i32* %11, metadata !112, metadata !19), !dbg !116
  call void @llvm.dbg.declare(metadata i32* %12, metadata !117, metadata !19), !dbg !118
  call void @llvm.dbg.declare(metadata i64* %13, metadata !119, metadata !19), !dbg !120
  %19 = load i8*, i8** %4, align 8, !dbg !121
  %20 = load i64, i64* %8, align 8, !dbg !122
  %21 = call i64 @mbrtowc(i32* %11, i8* %19, i64 %20, %struct.__mbstate_t* %7) #7, !dbg !123
  store i64 %21, i64* %13, align 8, !dbg !124
  %22 = load i64, i64* %13, align 8, !dbg !125
  %23 = icmp eq i64 %22, -1, !dbg !127
  br i1 %23, label %27, label %24, !dbg !128

; <label>:24:                                     ; preds = %18
  %25 = load i64, i64* %13, align 8, !dbg !129
  %26 = icmp eq i64 %25, -2, !dbg !131
  br i1 %26, label %27, label %33, !dbg !132

; <label>:27:                                     ; preds = %24, %18
  %28 = load i32, i32* %5, align 4, !dbg !133
  %29 = load %struct.str_crop_info*, %struct.str_crop_info** %6, align 8, !dbg !135
  %30 = getelementptr inbounds %struct.str_crop_info, %struct.str_crop_info* %29, i32 0, i32 1, !dbg !136
  store i32 %28, i32* %30, align 4, !dbg !137
  %31 = load %struct.str_crop_info*, %struct.str_crop_info** %6, align 8, !dbg !138
  %32 = getelementptr inbounds %struct.str_crop_info, %struct.str_crop_info* %31, i32 0, i32 0, !dbg !139
  store i32 %28, i32* %32, align 4, !dbg !140
  br label %76, !dbg !141

; <label>:33:                                     ; preds = %24
  %34 = load i64, i64* %13, align 8, !dbg !142
  %35 = icmp eq i64 %34, 0, !dbg !144
  br i1 %35, label %36, label %37, !dbg !145

; <label>:36:                                     ; preds = %33
  br label %65, !dbg !146

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %11, align 4, !dbg !147
  %39 = call i32 @wcwidth(i32 %38) #7, !dbg !148
  store i32 %39, i32* %12, align 4, !dbg !149
  %40 = load i32, i32* %12, align 4, !dbg !150
  %41 = icmp slt i32 %40, 0, !dbg !152
  br i1 %41, label %42, label %43, !dbg !153

; <label>:42:                                     ; preds = %37
  br label %65, !dbg !154

; <label>:43:                                     ; preds = %37
  %44 = load i32, i32* %10, align 4, !dbg !155
  %45 = load i32, i32* %12, align 4, !dbg !157
  %46 = add nsw i32 %44, %45, !dbg !158
  %47 = load i32, i32* %5, align 4, !dbg !159
  %48 = icmp sgt i32 %46, %47, !dbg !160
  br i1 %48, label %49, label %50, !dbg !161

; <label>:49:                                     ; preds = %43
  br label %65, !dbg !162

; <label>:50:                                     ; preds = %43
  %51 = load i32, i32* %12, align 4, !dbg !163
  %52 = load i32, i32* %10, align 4, !dbg !164
  %53 = add nsw i32 %52, %51, !dbg !164
  store i32 %53, i32* %10, align 4, !dbg !164
  %54 = load i64, i64* %13, align 8, !dbg !165
  %55 = load i32, i32* %9, align 4, !dbg !166
  %56 = sext i32 %55 to i64, !dbg !166
  %57 = add i64 %56, %54, !dbg !166
  %58 = trunc i64 %57 to i32, !dbg !166
  store i32 %58, i32* %9, align 4, !dbg !166
  %59 = load i64, i64* %13, align 8, !dbg !167
  %60 = load i64, i64* %8, align 8, !dbg !168
  %61 = sub i64 %60, %59, !dbg !168
  store i64 %61, i64* %8, align 8, !dbg !168
  %62 = load i64, i64* %13, align 8, !dbg !169
  %63 = load i8*, i8** %4, align 8, !dbg !170
  %64 = getelementptr inbounds i8, i8* %63, i64 %62, !dbg !170
  store i8* %64, i8** %4, align 8, !dbg !170
  br label %18, !dbg !171, !llvm.loop !173

; <label>:65:                                     ; preds = %49, %42, %36
  %66 = load i32, i32* %9, align 4, !dbg !174
  %67 = load %struct.str_crop_info*, %struct.str_crop_info** %6, align 8, !dbg !175
  %68 = getelementptr inbounds %struct.str_crop_info, %struct.str_crop_info* %67, i32 0, i32 0, !dbg !176
  store i32 %66, i32* %68, align 4, !dbg !177
  %69 = load i32, i32* %9, align 4, !dbg !178
  %70 = load i32, i32* %5, align 4, !dbg !179
  %71 = add nsw i32 %69, %70, !dbg !180
  %72 = load i32, i32* %10, align 4, !dbg !181
  %73 = sub nsw i32 %71, %72, !dbg !182
  %74 = load %struct.str_crop_info*, %struct.str_crop_info** %6, align 8, !dbg !183
  %75 = getelementptr inbounds %struct.str_crop_info, %struct.str_crop_info* %74, i32 0, i32 1, !dbg !184
  store i32 %73, i32* %75, align 4, !dbg !185
  br label %76, !dbg !186

; <label>:76:                                     ; preds = %65, %27
  ret void, !dbg !187
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) #5

; Function Attrs: nounwind
declare i32 @wcwidth(i32) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "[inter]lib--dpkg--strwide.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !5, line: 216, baseType: !6)
!5 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!6 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!10 = distinct !DISubprogram(name: "str_width", scope: !11, file: !11, line: 43, type: !12, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!11 = !DIFile(filename: "strwide.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15}
!14 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!18 = !DILocalVariable(name: "str", arg: 1, scope: !10, file: !11, line: 43, type: !15)
!19 = !DIExpression()
!20 = !DILocation(line: 43, column: 23, scope: !10)
!21 = !DILocalVariable(name: "state", scope: !10, file: !11, line: 46, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !23, line: 106, baseType: !24)
!23 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !23, line: 94, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 82, size: 64, align: 32, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !25, file: !23, line: 84, baseType: !14, size: 32, align: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !25, file: !23, line: 93, baseType: !29, size: 32, align: 32, offset: 32)
!29 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !25, file: !23, line: 85, size: 32, align: 32, elements: !30)
!30 = !{!31, !33}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !29, file: !23, line: 88, baseType: !32, size: 32, align: 32)
!32 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !29, file: !23, line: 92, baseType: !34, size: 32, align: 8)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 32, align: 8, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 4)
!37 = !DILocation(line: 46, column: 12, scope: !10)
!38 = !DILocalVariable(name: "wcs", scope: !10, file: !11, line: 47, type: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !5, line: 328, baseType: !14)
!41 = !DILocation(line: 47, column: 11, scope: !10)
!42 = !DILocalVariable(name: "mbs", scope: !10, file: !11, line: 48, type: !15)
!43 = !DILocation(line: 48, column: 14, scope: !10)
!44 = !DILocation(line: 48, column: 20, scope: !10)
!45 = !DILocalVariable(name: "len", scope: !10, file: !11, line: 49, type: !4)
!46 = !DILocation(line: 49, column: 9, scope: !10)
!47 = !DILocalVariable(name: "res", scope: !10, file: !11, line: 49, type: !4)
!48 = !DILocation(line: 49, column: 14, scope: !10)
!49 = !DILocalVariable(name: "width", scope: !10, file: !11, line: 50, type: !14)
!50 = !DILocation(line: 50, column: 6, scope: !10)
!51 = !DILocation(line: 52, column: 15, scope: !10)
!52 = !DILocation(line: 52, column: 8, scope: !10)
!53 = !DILocation(line: 52, column: 20, scope: !10)
!54 = !DILocation(line: 52, column: 6, scope: !10)
!55 = !DILocation(line: 53, column: 34, scope: !10)
!56 = !DILocation(line: 53, column: 32, scope: !10)
!57 = !DILocation(line: 53, column: 8, scope: !10)
!58 = !DILocation(line: 53, column: 6, scope: !10)
!59 = !DILocation(line: 55, column: 2, scope: !10)
!60 = !DILocation(line: 57, column: 18, scope: !10)
!61 = !DILocation(line: 57, column: 29, scope: !10)
!62 = !DILocation(line: 57, column: 8, scope: !10)
!63 = !DILocation(line: 57, column: 6, scope: !10)
!64 = !DILocation(line: 58, column: 6, scope: !65)
!65 = distinct !DILexicalBlock(scope: !10, file: !11, line: 58, column: 6)
!66 = !DILocation(line: 58, column: 10, scope: !65)
!67 = !DILocation(line: 58, column: 6, scope: !10)
!68 = !DILocation(line: 64, column: 8, scope: !69)
!69 = distinct !DILexicalBlock(scope: !65, file: !11, line: 58, column: 25)
!70 = !DILocation(line: 64, column: 3, scope: !69)
!71 = !DILocation(line: 65, column: 17, scope: !69)
!72 = !DILocation(line: 65, column: 10, scope: !69)
!73 = !DILocation(line: 65, column: 3, scope: !69)
!74 = !DILocation(line: 69, column: 19, scope: !10)
!75 = !DILocation(line: 69, column: 24, scope: !10)
!76 = !DILocation(line: 69, column: 10, scope: !10)
!77 = !DILocation(line: 69, column: 8, scope: !10)
!78 = !DILocation(line: 71, column: 7, scope: !10)
!79 = !DILocation(line: 71, column: 2, scope: !10)
!80 = !DILocation(line: 73, column: 9, scope: !10)
!81 = !DILocation(line: 73, column: 2, scope: !10)
!82 = !DILocation(line: 77, column: 1, scope: !10)
!83 = distinct !DISubprogram(name: "str_gen_crop", scope: !11, file: !11, line: 94, type: !84, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !15, !14, !86}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "str_crop_info", file: !88, line: 65, size: 64, align: 32, elements: !89)
!88 = !DIFile(filename: "../../lib/dpkg/string.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "str_bytes", scope: !87, file: !88, line: 66, baseType: !14, size: 32, align: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes", scope: !87, file: !88, line: 67, baseType: !14, size: 32, align: 32, offset: 32)
!92 = !DILocalVariable(name: "str", arg: 1, scope: !83, file: !11, line: 94, type: !15)
!93 = !DILocation(line: 94, column: 26, scope: !83)
!94 = !DILocalVariable(name: "max_width", arg: 2, scope: !83, file: !11, line: 94, type: !14)
!95 = !DILocation(line: 94, column: 35, scope: !83)
!96 = !DILocalVariable(name: "crop", arg: 3, scope: !83, file: !11, line: 94, type: !86)
!97 = !DILocation(line: 94, column: 68, scope: !83)
!98 = !DILocalVariable(name: "state", scope: !83, file: !11, line: 97, type: !22)
!99 = !DILocation(line: 97, column: 12, scope: !83)
!100 = !DILocalVariable(name: "str_bytes", scope: !83, file: !11, line: 98, type: !4)
!101 = !DILocation(line: 98, column: 9, scope: !83)
!102 = !DILocalVariable(name: "mbs_bytes", scope: !83, file: !11, line: 99, type: !14)
!103 = !DILocation(line: 99, column: 6, scope: !83)
!104 = !DILocalVariable(name: "mbs_width", scope: !83, file: !11, line: 100, type: !14)
!105 = !DILocation(line: 100, column: 6, scope: !83)
!106 = !DILocation(line: 102, column: 21, scope: !83)
!107 = !DILocation(line: 102, column: 14, scope: !83)
!108 = !DILocation(line: 102, column: 26, scope: !83)
!109 = !DILocation(line: 102, column: 12, scope: !83)
!110 = !DILocation(line: 103, column: 2, scope: !83)
!111 = !DILocation(line: 105, column: 2, scope: !83)
!112 = !DILocalVariable(name: "wc", scope: !113, file: !11, line: 106, type: !40)
!113 = distinct !DILexicalBlock(scope: !114, file: !11, line: 105, column: 11)
!114 = distinct !DILexicalBlock(scope: !115, file: !11, line: 105, column: 2)
!115 = distinct !DILexicalBlock(scope: !83, file: !11, line: 105, column: 2)
!116 = !DILocation(line: 106, column: 11, scope: !113)
!117 = !DILocalVariable(name: "wc_width", scope: !113, file: !11, line: 107, type: !14)
!118 = !DILocation(line: 107, column: 7, scope: !113)
!119 = !DILocalVariable(name: "mb_bytes", scope: !113, file: !11, line: 108, type: !4)
!120 = !DILocation(line: 108, column: 10, scope: !113)
!121 = !DILocation(line: 110, column: 27, scope: !113)
!122 = !DILocation(line: 110, column: 32, scope: !113)
!123 = !DILocation(line: 110, column: 14, scope: !113)
!124 = !DILocation(line: 110, column: 12, scope: !113)
!125 = !DILocation(line: 111, column: 7, scope: !126)
!126 = distinct !DILexicalBlock(scope: !113, file: !11, line: 111, column: 7)
!127 = !DILocation(line: 111, column: 16, scope: !126)
!128 = !DILocation(line: 111, column: 30, scope: !126)
!129 = !DILocation(line: 111, column: 33, scope: !130)
!130 = !DILexicalBlockFile(scope: !126, file: !11, discriminator: 1)
!131 = !DILocation(line: 111, column: 42, scope: !130)
!132 = !DILocation(line: 111, column: 7, scope: !130)
!133 = !DILocation(line: 117, column: 40, scope: !134)
!134 = distinct !DILexicalBlock(scope: !126, file: !11, line: 111, column: 57)
!135 = !DILocation(line: 117, column: 22, scope: !134)
!136 = !DILocation(line: 117, column: 28, scope: !134)
!137 = !DILocation(line: 117, column: 38, scope: !134)
!138 = !DILocation(line: 117, column: 4, scope: !134)
!139 = !DILocation(line: 117, column: 10, scope: !134)
!140 = !DILocation(line: 117, column: 20, scope: !134)
!141 = !DILocation(line: 118, column: 4, scope: !134)
!142 = !DILocation(line: 121, column: 7, scope: !143)
!143 = distinct !DILexicalBlock(scope: !113, file: !11, line: 121, column: 7)
!144 = !DILocation(line: 121, column: 16, scope: !143)
!145 = !DILocation(line: 121, column: 7, scope: !113)
!146 = !DILocation(line: 122, column: 4, scope: !143)
!147 = !DILocation(line: 124, column: 22, scope: !113)
!148 = !DILocation(line: 124, column: 14, scope: !113)
!149 = !DILocation(line: 124, column: 12, scope: !113)
!150 = !DILocation(line: 125, column: 7, scope: !151)
!151 = distinct !DILexicalBlock(scope: !113, file: !11, line: 125, column: 7)
!152 = !DILocation(line: 125, column: 16, scope: !151)
!153 = !DILocation(line: 125, column: 7, scope: !113)
!154 = !DILocation(line: 126, column: 4, scope: !151)
!155 = !DILocation(line: 127, column: 7, scope: !156)
!156 = distinct !DILexicalBlock(scope: !113, file: !11, line: 127, column: 7)
!157 = !DILocation(line: 127, column: 19, scope: !156)
!158 = !DILocation(line: 127, column: 17, scope: !156)
!159 = !DILocation(line: 127, column: 30, scope: !156)
!160 = !DILocation(line: 127, column: 28, scope: !156)
!161 = !DILocation(line: 127, column: 7, scope: !113)
!162 = !DILocation(line: 128, column: 4, scope: !156)
!163 = !DILocation(line: 130, column: 16, scope: !113)
!164 = !DILocation(line: 130, column: 13, scope: !113)
!165 = !DILocation(line: 131, column: 16, scope: !113)
!166 = !DILocation(line: 131, column: 13, scope: !113)
!167 = !DILocation(line: 132, column: 16, scope: !113)
!168 = !DILocation(line: 132, column: 13, scope: !113)
!169 = !DILocation(line: 133, column: 10, scope: !113)
!170 = !DILocation(line: 133, column: 7, scope: !113)
!171 = !DILocation(line: 105, column: 2, scope: !172)
!172 = !DILexicalBlockFile(scope: !114, file: !11, discriminator: 1)
!173 = distinct !{!173, !111}
!174 = !DILocation(line: 136, column: 20, scope: !83)
!175 = !DILocation(line: 136, column: 2, scope: !83)
!176 = !DILocation(line: 136, column: 8, scope: !83)
!177 = !DILocation(line: 136, column: 18, scope: !83)
!178 = !DILocation(line: 137, column: 20, scope: !83)
!179 = !DILocation(line: 137, column: 32, scope: !83)
!180 = !DILocation(line: 137, column: 30, scope: !83)
!181 = !DILocation(line: 137, column: 44, scope: !83)
!182 = !DILocation(line: 137, column: 42, scope: !83)
!183 = !DILocation(line: 137, column: 2, scope: !83)
!184 = !DILocation(line: 137, column: 8, scope: !83)
!185 = !DILocation(line: 137, column: 18, scope: !83)
!186 = !DILocation(line: 141, column: 1, scope: !83)
!187 = !DILocation(line: 141, column: 1, scope: !188)
!188 = !DILexicalBlockFile(scope: !83, file: !11, discriminator: 1)
