; ModuleID = './[inter]third-party--zlib-1.2.7--compress.o.i'
source_filename = "./[inter]third-party--zlib-1.2.7--compress.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"1.2.7\00", align 1

; Function Attrs: nounwind uwtable
define i32 @compress2(i8*, i64*, i8*, i64, i32) #0 !dbg !28 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.z_stream_s, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !36, metadata !37), !dbg !38
  store i64* %1, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !39, metadata !37), !dbg !40
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !41, metadata !37), !dbg !42
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !43, metadata !37), !dbg !44
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !45, metadata !37), !dbg !46
  call void @llvm.dbg.declare(metadata %struct.z_stream_s* %12, metadata !47, metadata !37), !dbg !71
  call void @llvm.dbg.declare(metadata i32* %13, metadata !72, metadata !37), !dbg !73
  %14 = load i8*, i8** %9, align 8, !dbg !74
  %15 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 0, !dbg !75
  store i8* %14, i8** %15, align 8, !dbg !76
  %16 = load i64, i64* %10, align 8, !dbg !77
  %17 = trunc i64 %16 to i32, !dbg !78
  %18 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 1, !dbg !79
  store i32 %17, i32* %18, align 8, !dbg !80
  %19 = load i8*, i8** %7, align 8, !dbg !81
  %20 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 3, !dbg !82
  store i8* %19, i8** %20, align 8, !dbg !83
  %21 = load i64*, i64** %8, align 8, !dbg !84
  %22 = load i64, i64* %21, align 8, !dbg !85
  %23 = trunc i64 %22 to i32, !dbg !86
  %24 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 4, !dbg !87
  store i32 %23, i32* %24, align 8, !dbg !88
  %25 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 4, !dbg !89
  %26 = load i32, i32* %25, align 8, !dbg !89
  %27 = zext i32 %26 to i64, !dbg !91
  %28 = load i64*, i64** %8, align 8, !dbg !92
  %29 = load i64, i64* %28, align 8, !dbg !93
  %30 = icmp ne i64 %27, %29, !dbg !94
  br i1 %30, label %31, label %32, !dbg !95

; <label>:31:                                     ; preds = %5
  store i32 -5, i32* %6, align 4, !dbg !96
  br label %61, !dbg !96

; <label>:32:                                     ; preds = %5
  %33 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 8, !dbg !98
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %33, align 8, !dbg !99
  %34 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 9, !dbg !100
  store void (i8*, i8*)* null, void (i8*, i8*)** %34, align 8, !dbg !101
  %35 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 10, !dbg !102
  store i8* null, i8** %35, align 8, !dbg !103
  %36 = load i32, i32* %11, align 4, !dbg !104
  %37 = call i32 @deflateInit_(%struct.z_stream_s* %12, i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 112), !dbg !105
  store i32 %37, i32* %13, align 4, !dbg !106
  %38 = load i32, i32* %13, align 4, !dbg !107
  %39 = icmp ne i32 %38, 0, !dbg !109
  br i1 %39, label %40, label %42, !dbg !110

; <label>:40:                                     ; preds = %32
  %41 = load i32, i32* %13, align 4, !dbg !111
  store i32 %41, i32* %6, align 4, !dbg !113
  br label %61, !dbg !113

; <label>:42:                                     ; preds = %32
  %43 = call i32 @deflate(%struct.z_stream_s* %12, i32 4), !dbg !114
  store i32 %43, i32* %13, align 4, !dbg !115
  %44 = load i32, i32* %13, align 4, !dbg !116
  %45 = icmp ne i32 %44, 1, !dbg !118
  br i1 %45, label %46, label %55, !dbg !119

; <label>:46:                                     ; preds = %42
  %47 = call i32 @deflateEnd(%struct.z_stream_s* %12), !dbg !120
  %48 = load i32, i32* %13, align 4, !dbg !122
  %49 = icmp eq i32 %48, 0, !dbg !123
  br i1 %49, label %50, label %51, !dbg !122

; <label>:50:                                     ; preds = %46
  br label %53, !dbg !124

; <label>:51:                                     ; preds = %46
  %52 = load i32, i32* %13, align 4, !dbg !126
  br label %53, !dbg !128

; <label>:53:                                     ; preds = %51, %50
  %54 = phi i32 [ -5, %50 ], [ %52, %51 ], !dbg !129
  store i32 %54, i32* %6, align 4, !dbg !131
  br label %61, !dbg !131

; <label>:55:                                     ; preds = %42
  %56 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 5, !dbg !132
  %57 = load i64, i64* %56, align 8, !dbg !132
  %58 = load i64*, i64** %8, align 8, !dbg !133
  store i64 %57, i64* %58, align 8, !dbg !134
  %59 = call i32 @deflateEnd(%struct.z_stream_s* %12), !dbg !135
  store i32 %59, i32* %13, align 4, !dbg !136
  %60 = load i32, i32* %13, align 4, !dbg !137
  store i32 %60, i32* %6, align 4, !dbg !138
  br label %61, !dbg !138

; <label>:61:                                     ; preds = %55, %53, %40, %31
  %62 = load i32, i32* %6, align 4, !dbg !139
  ret i32 %62, !dbg !139
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @deflateInit_(%struct.z_stream_s*, i32, i8*, i32) #2

declare i32 @deflate(%struct.z_stream_s*, i32) #2

declare i32 @deflateEnd(%struct.z_stream_s*) #2

; Function Attrs: nounwind uwtable
define i32 @compress(i8*, i64*, i8*, i64) #0 !dbg !140 {
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !143, metadata !37), !dbg !144
  store i64* %1, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !145, metadata !37), !dbg !146
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !147, metadata !37), !dbg !148
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !149, metadata !37), !dbg !150
  %9 = load i8*, i8** %5, align 8, !dbg !151
  %10 = load i64*, i64** %6, align 8, !dbg !152
  %11 = load i8*, i8** %7, align 8, !dbg !153
  %12 = load i64, i64* %8, align 8, !dbg !154
  %13 = call i32 @compress2(i8* %9, i64* %10, i8* %11, i64 %12, i32 -1), !dbg !155
  ret i32 %13, !dbg !156
}

; Function Attrs: nounwind uwtable
define i64 @compressBound(i64) #0 !dbg !157 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !160, metadata !37), !dbg !161
  %3 = load i64, i64* %2, align 8, !dbg !162
  %4 = load i64, i64* %2, align 8, !dbg !163
  %5 = lshr i64 %4, 12, !dbg !164
  %6 = add i64 %3, %5, !dbg !165
  %7 = load i64, i64* %2, align 8, !dbg !166
  %8 = lshr i64 %7, 14, !dbg !167
  %9 = add i64 %6, %8, !dbg !168
  %10 = load i64, i64* %2, align 8, !dbg !169
  %11 = lshr i64 %10, 25, !dbg !170
  %12 = add i64 %9, %11, !dbg !171
  %13 = add i64 %12, 13, !dbg !172
  ret i64 %13, !dbg !173
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "[inter]third-party--zlib-1.2.7--compress.o.i", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!2 = !{}
!3 = !{!4, !9, !11, !13, !20, !18, !24}
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
!28 = distinct !DISubprogram(name: "compress2", scope: !29, file: !29, line: 22, type: !30, isLocal: false, isDefinition: true, scopeLine: 28, isOptimized: false, unit: !0, variables: !2)
!29 = !DIFile(filename: "compress.c", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!30 = !DISubroutineType(types: !31)
!31 = !{!24, !4, !32, !34, !11, !24}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLongf", file: !6, line: 379, baseType: !11)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!36 = !DILocalVariable(name: "dest", arg: 1, scope: !28, file: !29, line: 23, type: !4)
!37 = !DIExpression()
!38 = !DILocation(line: 23, column: 12, scope: !28)
!39 = !DILocalVariable(name: "destLen", arg: 2, scope: !28, file: !29, line: 24, type: !32)
!40 = !DILocation(line: 24, column: 13, scope: !28)
!41 = !DILocalVariable(name: "source", arg: 3, scope: !28, file: !29, line: 25, type: !34)
!42 = !DILocation(line: 25, column: 18, scope: !28)
!43 = !DILocalVariable(name: "sourceLen", arg: 4, scope: !28, file: !29, line: 26, type: !11)
!44 = !DILocation(line: 26, column: 11, scope: !28)
!45 = !DILocalVariable(name: "level", arg: 5, scope: !28, file: !29, line: 27, type: !24)
!46 = !DILocation(line: 27, column: 9, scope: !28)
!47 = !DILocalVariable(name: "stream", scope: !28, file: !29, line: 29, type: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !14, line: 104, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !14, line: 85, size: 896, align: 64, elements: !50)
!50 = !{!51, !52, !53, !54, !55, !56, !57, !60, !65, !66, !67, !68, !69, !70}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !49, file: !14, line: 86, baseType: !4, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !49, file: !14, line: 87, baseType: !9, size: 32, align: 32, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !49, file: !14, line: 88, baseType: !11, size: 64, align: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !49, file: !14, line: 90, baseType: !4, size: 64, align: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !49, file: !14, line: 91, baseType: !9, size: 32, align: 32, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !49, file: !14, line: 92, baseType: !11, size: 64, align: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !49, file: !14, line: 94, baseType: !58, size: 64, align: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !49, file: !14, line: 95, baseType: !61, size: 64, align: 64, offset: 448)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "internal_state", file: !14, line: 1742, size: 32, align: 32, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !62, file: !14, line: 1742, baseType: !24, size: 32, align: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "zalloc", scope: !49, file: !14, line: 97, baseType: !13, size: 64, align: 64, offset: 512)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "zfree", scope: !49, file: !14, line: 98, baseType: !20, size: 64, align: 64, offset: 576)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !49, file: !14, line: 99, baseType: !18, size: 64, align: 64, offset: 640)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !49, file: !14, line: 101, baseType: !24, size: 32, align: 32, offset: 704)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "adler", scope: !49, file: !14, line: 102, baseType: !11, size: 64, align: 64, offset: 768)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !49, file: !14, line: 103, baseType: !11, size: 64, align: 64, offset: 832)
!71 = !DILocation(line: 29, column: 14, scope: !28)
!72 = !DILocalVariable(name: "err", scope: !28, file: !29, line: 30, type: !24)
!73 = !DILocation(line: 30, column: 9, scope: !28)
!74 = !DILocation(line: 32, column: 30, scope: !28)
!75 = !DILocation(line: 32, column: 12, scope: !28)
!76 = !DILocation(line: 32, column: 20, scope: !28)
!77 = !DILocation(line: 33, column: 29, scope: !28)
!78 = !DILocation(line: 33, column: 23, scope: !28)
!79 = !DILocation(line: 33, column: 12, scope: !28)
!80 = !DILocation(line: 33, column: 21, scope: !28)
!81 = !DILocation(line: 38, column: 23, scope: !28)
!82 = !DILocation(line: 38, column: 12, scope: !28)
!83 = !DILocation(line: 38, column: 21, scope: !28)
!84 = !DILocation(line: 39, column: 31, scope: !28)
!85 = !DILocation(line: 39, column: 30, scope: !28)
!86 = !DILocation(line: 39, column: 24, scope: !28)
!87 = !DILocation(line: 39, column: 12, scope: !28)
!88 = !DILocation(line: 39, column: 22, scope: !28)
!89 = !DILocation(line: 40, column: 23, scope: !90)
!90 = distinct !DILexicalBlock(scope: !28, file: !29, line: 40, column: 9)
!91 = !DILocation(line: 40, column: 9, scope: !90)
!92 = !DILocation(line: 40, column: 37, scope: !90)
!93 = !DILocation(line: 40, column: 36, scope: !90)
!94 = !DILocation(line: 40, column: 33, scope: !90)
!95 = !DILocation(line: 40, column: 9, scope: !28)
!96 = !DILocation(line: 40, column: 46, scope: !97)
!97 = !DILexicalBlockFile(scope: !90, file: !29, discriminator: 1)
!98 = !DILocation(line: 42, column: 12, scope: !28)
!99 = !DILocation(line: 42, column: 19, scope: !28)
!100 = !DILocation(line: 43, column: 12, scope: !28)
!101 = !DILocation(line: 43, column: 18, scope: !28)
!102 = !DILocation(line: 44, column: 12, scope: !28)
!103 = !DILocation(line: 44, column: 19, scope: !28)
!104 = !DILocation(line: 46, column: 36, scope: !28)
!105 = !DILocation(line: 46, column: 11, scope: !28)
!106 = !DILocation(line: 46, column: 9, scope: !28)
!107 = !DILocation(line: 47, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !28, file: !29, line: 47, column: 9)
!109 = !DILocation(line: 47, column: 13, scope: !108)
!110 = !DILocation(line: 47, column: 9, scope: !28)
!111 = !DILocation(line: 47, column: 26, scope: !112)
!112 = !DILexicalBlockFile(scope: !108, file: !29, discriminator: 1)
!113 = !DILocation(line: 47, column: 19, scope: !112)
!114 = !DILocation(line: 49, column: 11, scope: !28)
!115 = !DILocation(line: 49, column: 9, scope: !28)
!116 = !DILocation(line: 50, column: 9, scope: !117)
!117 = distinct !DILexicalBlock(scope: !28, file: !29, line: 50, column: 9)
!118 = !DILocation(line: 50, column: 13, scope: !117)
!119 = !DILocation(line: 50, column: 9, scope: !28)
!120 = !DILocation(line: 51, column: 9, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !29, line: 50, column: 19)
!122 = !DILocation(line: 52, column: 16, scope: !121)
!123 = !DILocation(line: 52, column: 20, scope: !121)
!124 = !DILocation(line: 52, column: 16, scope: !125)
!125 = !DILexicalBlockFile(scope: !121, file: !29, discriminator: 1)
!126 = !DILocation(line: 52, column: 34, scope: !127)
!127 = !DILexicalBlockFile(scope: !121, file: !29, discriminator: 2)
!128 = !DILocation(line: 52, column: 16, scope: !127)
!129 = !DILocation(line: 52, column: 16, scope: !130)
!130 = !DILexicalBlockFile(scope: !121, file: !29, discriminator: 3)
!131 = !DILocation(line: 52, column: 9, scope: !130)
!132 = !DILocation(line: 54, column: 23, scope: !28)
!133 = !DILocation(line: 54, column: 6, scope: !28)
!134 = !DILocation(line: 54, column: 14, scope: !28)
!135 = !DILocation(line: 56, column: 11, scope: !28)
!136 = !DILocation(line: 56, column: 9, scope: !28)
!137 = !DILocation(line: 57, column: 12, scope: !28)
!138 = !DILocation(line: 57, column: 5, scope: !28)
!139 = !DILocation(line: 58, column: 1, scope: !28)
!140 = distinct !DISubprogram(name: "compress", scope: !29, file: !29, line: 62, type: !141, isLocal: false, isDefinition: true, scopeLine: 67, isOptimized: false, unit: !0, variables: !2)
!141 = !DISubroutineType(types: !142)
!142 = !{!24, !4, !32, !34, !11}
!143 = !DILocalVariable(name: "dest", arg: 1, scope: !140, file: !29, line: 63, type: !4)
!144 = !DILocation(line: 63, column: 12, scope: !140)
!145 = !DILocalVariable(name: "destLen", arg: 2, scope: !140, file: !29, line: 64, type: !32)
!146 = !DILocation(line: 64, column: 13, scope: !140)
!147 = !DILocalVariable(name: "source", arg: 3, scope: !140, file: !29, line: 65, type: !34)
!148 = !DILocation(line: 65, column: 18, scope: !140)
!149 = !DILocalVariable(name: "sourceLen", arg: 4, scope: !140, file: !29, line: 66, type: !11)
!150 = !DILocation(line: 66, column: 11, scope: !140)
!151 = !DILocation(line: 68, column: 22, scope: !140)
!152 = !DILocation(line: 68, column: 28, scope: !140)
!153 = !DILocation(line: 68, column: 37, scope: !140)
!154 = !DILocation(line: 68, column: 45, scope: !140)
!155 = !DILocation(line: 68, column: 12, scope: !140)
!156 = !DILocation(line: 68, column: 5, scope: !140)
!157 = distinct !DISubprogram(name: "compressBound", scope: !29, file: !29, line: 75, type: !158, isLocal: false, isDefinition: true, scopeLine: 77, isOptimized: false, unit: !0, variables: !2)
!158 = !DISubroutineType(types: !159)
!159 = !{!11, !11}
!160 = !DILocalVariable(name: "sourceLen", arg: 1, scope: !157, file: !29, line: 76, type: !11)
!161 = !DILocation(line: 76, column: 11, scope: !157)
!162 = !DILocation(line: 78, column: 12, scope: !157)
!163 = !DILocation(line: 78, column: 25, scope: !157)
!164 = !DILocation(line: 78, column: 35, scope: !157)
!165 = !DILocation(line: 78, column: 22, scope: !157)
!166 = !DILocation(line: 78, column: 45, scope: !157)
!167 = !DILocation(line: 78, column: 55, scope: !157)
!168 = !DILocation(line: 78, column: 42, scope: !157)
!169 = !DILocation(line: 79, column: 13, scope: !157)
!170 = !DILocation(line: 79, column: 23, scope: !157)
!171 = !DILocation(line: 78, column: 62, scope: !157)
!172 = !DILocation(line: 79, column: 30, scope: !157)
!173 = !DILocation(line: 78, column: 5, scope: !157)
