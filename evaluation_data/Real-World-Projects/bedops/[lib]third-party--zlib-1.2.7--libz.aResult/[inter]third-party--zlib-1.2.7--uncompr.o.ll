; ModuleID = './[inter]third-party--zlib-1.2.7--uncompr.o.i'
source_filename = "./[inter]third-party--zlib-1.2.7--uncompr.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"1.2.7\00", align 1

; Function Attrs: nounwind uwtable
define i32 @uncompress(i8*, i64*, i8*, i64) #0 !dbg !28 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.z_stream_s, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !36, metadata !37), !dbg !38
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !39, metadata !37), !dbg !40
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !41, metadata !37), !dbg !42
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !43, metadata !37), !dbg !44
  call void @llvm.dbg.declare(metadata %struct.z_stream_s* %10, metadata !45, metadata !37), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %11, metadata !70, metadata !37), !dbg !71
  %12 = load i8*, i8** %8, align 8, !dbg !72
  %13 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 0, !dbg !73
  store i8* %12, i8** %13, align 8, !dbg !74
  %14 = load i64, i64* %9, align 8, !dbg !75
  %15 = trunc i64 %14 to i32, !dbg !76
  %16 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1, !dbg !77
  store i32 %15, i32* %16, align 8, !dbg !78
  %17 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1, !dbg !79
  %18 = load i32, i32* %17, align 8, !dbg !79
  %19 = zext i32 %18 to i64, !dbg !81
  %20 = load i64, i64* %9, align 8, !dbg !82
  %21 = icmp ne i64 %19, %20, !dbg !83
  br i1 %21, label %22, label %23, !dbg !84

; <label>:22:                                     ; preds = %4
  store i32 -5, i32* %5, align 4, !dbg !85
  br label %69, !dbg !85

; <label>:23:                                     ; preds = %4
  %24 = load i8*, i8** %6, align 8, !dbg !87
  %25 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 3, !dbg !88
  store i8* %24, i8** %25, align 8, !dbg !89
  %26 = load i64*, i64** %7, align 8, !dbg !90
  %27 = load i64, i64* %26, align 8, !dbg !91
  %28 = trunc i64 %27 to i32, !dbg !92
  %29 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 4, !dbg !93
  store i32 %28, i32* %29, align 8, !dbg !94
  %30 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 4, !dbg !95
  %31 = load i32, i32* %30, align 8, !dbg !95
  %32 = zext i32 %31 to i64, !dbg !97
  %33 = load i64*, i64** %7, align 8, !dbg !98
  %34 = load i64, i64* %33, align 8, !dbg !99
  %35 = icmp ne i64 %32, %34, !dbg !100
  br i1 %35, label %36, label %37, !dbg !101

; <label>:36:                                     ; preds = %23
  store i32 -5, i32* %5, align 4, !dbg !102
  br label %69, !dbg !102

; <label>:37:                                     ; preds = %23
  %38 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 8, !dbg !104
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %38, align 8, !dbg !105
  %39 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 9, !dbg !106
  store void (i8*, i8*)* null, void (i8*, i8*)** %39, align 8, !dbg !107
  %40 = call i32 @inflateInit_(%struct.z_stream_s* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 112), !dbg !108
  store i32 %40, i32* %11, align 4, !dbg !109
  %41 = load i32, i32* %11, align 4, !dbg !110
  %42 = icmp ne i32 %41, 0, !dbg !112
  br i1 %42, label %43, label %45, !dbg !113

; <label>:43:                                     ; preds = %37
  %44 = load i32, i32* %11, align 4, !dbg !114
  store i32 %44, i32* %5, align 4, !dbg !116
  br label %69, !dbg !116

; <label>:45:                                     ; preds = %37
  %46 = call i32 @inflate(%struct.z_stream_s* %10, i32 4), !dbg !117
  store i32 %46, i32* %11, align 4, !dbg !118
  %47 = load i32, i32* %11, align 4, !dbg !119
  %48 = icmp ne i32 %47, 1, !dbg !121
  br i1 %48, label %49, label %63, !dbg !122

; <label>:49:                                     ; preds = %45
  %50 = call i32 @inflateEnd(%struct.z_stream_s* %10), !dbg !123
  %51 = load i32, i32* %11, align 4, !dbg !125
  %52 = icmp eq i32 %51, 2, !dbg !127
  br i1 %52, label %60, label %53, !dbg !128

; <label>:53:                                     ; preds = %49
  %54 = load i32, i32* %11, align 4, !dbg !129
  %55 = icmp eq i32 %54, -5, !dbg !131
  br i1 %55, label %56, label %61, !dbg !132

; <label>:56:                                     ; preds = %53
  %57 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 1, !dbg !133
  %58 = load i32, i32* %57, align 8, !dbg !133
  %59 = icmp eq i32 %58, 0, !dbg !135
  br i1 %59, label %60, label %61, !dbg !136

; <label>:60:                                     ; preds = %56, %49
  store i32 -3, i32* %5, align 4, !dbg !137
  br label %69, !dbg !137

; <label>:61:                                     ; preds = %56, %53
  %62 = load i32, i32* %11, align 4, !dbg !138
  store i32 %62, i32* %5, align 4, !dbg !139
  br label %69, !dbg !139

; <label>:63:                                     ; preds = %45
  %64 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 5, !dbg !140
  %65 = load i64, i64* %64, align 8, !dbg !140
  %66 = load i64*, i64** %7, align 8, !dbg !141
  store i64 %65, i64* %66, align 8, !dbg !142
  %67 = call i32 @inflateEnd(%struct.z_stream_s* %10), !dbg !143
  store i32 %67, i32* %11, align 4, !dbg !144
  %68 = load i32, i32* %11, align 4, !dbg !145
  store i32 %68, i32* %5, align 4, !dbg !146
  br label %69, !dbg !146

; <label>:69:                                     ; preds = %63, %61, %60, %43, %36, %22
  %70 = load i32, i32* %5, align 4, !dbg !147
  ret i32 %70, !dbg !147
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @inflateInit_(%struct.z_stream_s*, i8*, i32) #2

declare i32 @inflate(%struct.z_stream_s*, i32) #2

declare i32 @inflateEnd(%struct.z_stream_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "[inter]third-party--zlib-1.2.7--uncompr.o.i", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!2 = !{}
!3 = !{!4, !9, !11, !13, !20, !24}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bytef", file: !6, line: 374, baseType: !7)
!6 = !DIFile(filename: "zconf.h", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !6, line: 365, baseType: !8)
!8 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "uInt", file: !6, line: 367, baseType: !10)
!10 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !6, line: 368, baseType: !12)
!12 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_func", file: !14, line: 80, baseType: !15)
!14 = !DIFile(filename: "zlib.h", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !18, !9, !9}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "voidpf", file: !6, line: 383, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "free_func", file: !14, line: 81, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !18, !18}
!24 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!25 = !{i32 2, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!28 = distinct !DISubprogram(name: "uncompress", scope: !29, file: !29, line: 24, type: !30, isLocal: false, isDefinition: true, scopeLine: 29, isOptimized: false, unit: !0, variables: !2)
!29 = !DIFile(filename: "uncompr.c", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!30 = !DISubroutineType(types: !31)
!31 = !{!24, !4, !32, !34, !11}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLongf", file: !6, line: 379, baseType: !11)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!36 = !DILocalVariable(name: "dest", arg: 1, scope: !28, file: !29, line: 25, type: !4)
!37 = !DIExpression()
!38 = !DILocation(line: 25, column: 12, scope: !28)
!39 = !DILocalVariable(name: "destLen", arg: 2, scope: !28, file: !29, line: 26, type: !32)
!40 = !DILocation(line: 26, column: 13, scope: !28)
!41 = !DILocalVariable(name: "source", arg: 3, scope: !28, file: !29, line: 27, type: !34)
!42 = !DILocation(line: 27, column: 18, scope: !28)
!43 = !DILocalVariable(name: "sourceLen", arg: 4, scope: !28, file: !29, line: 28, type: !11)
!44 = !DILocation(line: 28, column: 11, scope: !28)
!45 = !DILocalVariable(name: "stream", scope: !28, file: !29, line: 30, type: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !14, line: 104, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !14, line: 85, size: 896, align: 64, elements: !48)
!48 = !{!49, !50, !51, !52, !53, !54, !55, !58, !63, !64, !65, !66, !67, !68}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !47, file: !14, line: 86, baseType: !4, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !47, file: !14, line: 87, baseType: !9, size: 32, align: 32, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !47, file: !14, line: 88, baseType: !11, size: 64, align: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !47, file: !14, line: 90, baseType: !4, size: 64, align: 64, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !47, file: !14, line: 91, baseType: !9, size: 32, align: 32, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !47, file: !14, line: 92, baseType: !11, size: 64, align: 64, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !47, file: !14, line: 94, baseType: !56, size: 64, align: 64, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !47, file: !14, line: 95, baseType: !59, size: 64, align: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "internal_state", file: !14, line: 1742, size: 32, align: 32, elements: !61)
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !60, file: !14, line: 1742, baseType: !24, size: 32, align: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "zalloc", scope: !47, file: !14, line: 97, baseType: !13, size: 64, align: 64, offset: 512)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "zfree", scope: !47, file: !14, line: 98, baseType: !20, size: 64, align: 64, offset: 576)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !47, file: !14, line: 99, baseType: !18, size: 64, align: 64, offset: 640)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !47, file: !14, line: 101, baseType: !24, size: 32, align: 32, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "adler", scope: !47, file: !14, line: 102, baseType: !11, size: 64, align: 64, offset: 768)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !47, file: !14, line: 103, baseType: !11, size: 64, align: 64, offset: 832)
!69 = !DILocation(line: 30, column: 14, scope: !28)
!70 = !DILocalVariable(name: "err", scope: !28, file: !29, line: 31, type: !24)
!71 = !DILocation(line: 31, column: 9, scope: !28)
!72 = !DILocation(line: 33, column: 30, scope: !28)
!73 = !DILocation(line: 33, column: 12, scope: !28)
!74 = !DILocation(line: 33, column: 20, scope: !28)
!75 = !DILocation(line: 34, column: 29, scope: !28)
!76 = !DILocation(line: 34, column: 23, scope: !28)
!77 = !DILocation(line: 34, column: 12, scope: !28)
!78 = !DILocation(line: 34, column: 21, scope: !28)
!79 = !DILocation(line: 36, column: 23, scope: !80)
!80 = distinct !DILexicalBlock(scope: !28, file: !29, line: 36, column: 9)
!81 = !DILocation(line: 36, column: 9, scope: !80)
!82 = !DILocation(line: 36, column: 35, scope: !80)
!83 = !DILocation(line: 36, column: 32, scope: !80)
!84 = !DILocation(line: 36, column: 9, scope: !28)
!85 = !DILocation(line: 36, column: 46, scope: !86)
!86 = !DILexicalBlockFile(scope: !80, file: !29, discriminator: 1)
!87 = !DILocation(line: 38, column: 23, scope: !28)
!88 = !DILocation(line: 38, column: 12, scope: !28)
!89 = !DILocation(line: 38, column: 21, scope: !28)
!90 = !DILocation(line: 39, column: 31, scope: !28)
!91 = !DILocation(line: 39, column: 30, scope: !28)
!92 = !DILocation(line: 39, column: 24, scope: !28)
!93 = !DILocation(line: 39, column: 12, scope: !28)
!94 = !DILocation(line: 39, column: 22, scope: !28)
!95 = !DILocation(line: 40, column: 23, scope: !96)
!96 = distinct !DILexicalBlock(scope: !28, file: !29, line: 40, column: 9)
!97 = !DILocation(line: 40, column: 9, scope: !96)
!98 = !DILocation(line: 40, column: 37, scope: !96)
!99 = !DILocation(line: 40, column: 36, scope: !96)
!100 = !DILocation(line: 40, column: 33, scope: !96)
!101 = !DILocation(line: 40, column: 9, scope: !28)
!102 = !DILocation(line: 40, column: 46, scope: !103)
!103 = !DILexicalBlockFile(scope: !96, file: !29, discriminator: 1)
!104 = !DILocation(line: 42, column: 12, scope: !28)
!105 = !DILocation(line: 42, column: 19, scope: !28)
!106 = !DILocation(line: 43, column: 12, scope: !28)
!107 = !DILocation(line: 43, column: 18, scope: !28)
!108 = !DILocation(line: 45, column: 11, scope: !28)
!109 = !DILocation(line: 45, column: 9, scope: !28)
!110 = !DILocation(line: 46, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !28, file: !29, line: 46, column: 9)
!112 = !DILocation(line: 46, column: 13, scope: !111)
!113 = !DILocation(line: 46, column: 9, scope: !28)
!114 = !DILocation(line: 46, column: 26, scope: !115)
!115 = !DILexicalBlockFile(scope: !111, file: !29, discriminator: 1)
!116 = !DILocation(line: 46, column: 19, scope: !115)
!117 = !DILocation(line: 48, column: 11, scope: !28)
!118 = !DILocation(line: 48, column: 9, scope: !28)
!119 = !DILocation(line: 49, column: 9, scope: !120)
!120 = distinct !DILexicalBlock(scope: !28, file: !29, line: 49, column: 9)
!121 = !DILocation(line: 49, column: 13, scope: !120)
!122 = !DILocation(line: 49, column: 9, scope: !28)
!123 = !DILocation(line: 50, column: 9, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !29, line: 49, column: 19)
!125 = !DILocation(line: 51, column: 13, scope: !126)
!126 = distinct !DILexicalBlock(scope: !124, file: !29, line: 51, column: 13)
!127 = !DILocation(line: 51, column: 17, scope: !126)
!128 = !DILocation(line: 51, column: 22, scope: !126)
!129 = !DILocation(line: 51, column: 26, scope: !130)
!130 = !DILexicalBlockFile(scope: !126, file: !29, discriminator: 1)
!131 = !DILocation(line: 51, column: 30, scope: !130)
!132 = !DILocation(line: 51, column: 38, scope: !130)
!133 = !DILocation(line: 51, column: 48, scope: !134)
!134 = !DILexicalBlockFile(scope: !126, file: !29, discriminator: 2)
!135 = !DILocation(line: 51, column: 57, scope: !134)
!136 = !DILocation(line: 51, column: 13, scope: !134)
!137 = !DILocation(line: 52, column: 13, scope: !126)
!138 = !DILocation(line: 53, column: 16, scope: !124)
!139 = !DILocation(line: 53, column: 9, scope: !124)
!140 = !DILocation(line: 55, column: 23, scope: !28)
!141 = !DILocation(line: 55, column: 6, scope: !28)
!142 = !DILocation(line: 55, column: 14, scope: !28)
!143 = !DILocation(line: 57, column: 11, scope: !28)
!144 = !DILocation(line: 57, column: 9, scope: !28)
!145 = !DILocation(line: 58, column: 12, scope: !28)
!146 = !DILocation(line: 58, column: 5, scope: !28)
!147 = !DILocation(line: 59, column: 1, scope: !28)
