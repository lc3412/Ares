; ModuleID = './[inter]third-party--zlib-1.2.7--gzclose.o.i'
source_filename = "./[inter]third-party--zlib-1.2.7--gzclose.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gzFile_s = type { i32, i8*, i64 }
%struct.gz_state = type { %struct.gzFile_s, i32, i32, i8*, i32, i32, i8*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, i8*, %struct.z_stream_s }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }

; Function Attrs: nounwind uwtable
define i32 @gzclose(%struct.gzFile_s*) #0 !dbg !84 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gzFile_s*, align 8
  %4 = alloca %struct.gz_state*, align 8
  store %struct.gzFile_s* %0, %struct.gzFile_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %3, metadata !90, metadata !91), !dbg !92
  call void @llvm.dbg.declare(metadata %struct.gz_state** %4, metadata !93, metadata !91), !dbg !94
  %5 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8, !dbg !95
  %6 = icmp eq %struct.gzFile_s* %5, null, !dbg !97
  br i1 %6, label %7, label %8, !dbg !98

; <label>:7:                                      ; preds = %1
  store i32 -2, i32* %2, align 4, !dbg !99
  br label %23, !dbg !99

; <label>:8:                                      ; preds = %1
  %9 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8, !dbg !100
  %10 = bitcast %struct.gzFile_s* %9 to %struct.gz_state*, !dbg !101
  store %struct.gz_state* %10, %struct.gz_state** %4, align 8, !dbg !102
  %11 = load %struct.gz_state*, %struct.gz_state** %4, align 8, !dbg !103
  %12 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %11, i32 0, i32 1, !dbg !104
  %13 = load i32, i32* %12, align 8, !dbg !104
  %14 = icmp eq i32 %13, 7247, !dbg !105
  br i1 %14, label %15, label %18, !dbg !103

; <label>:15:                                     ; preds = %8
  %16 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8, !dbg !106
  %17 = call i32 @gzclose_r(%struct.gzFile_s* %16), !dbg !108
  br label %21, !dbg !109

; <label>:18:                                     ; preds = %8
  %19 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8, !dbg !110
  %20 = call i32 @gzclose_w(%struct.gzFile_s* %19), !dbg !112
  br label %21, !dbg !113

; <label>:21:                                     ; preds = %18, %15
  %22 = phi i32 [ %17, %15 ], [ %20, %18 ], !dbg !114
  store i32 %22, i32* %2, align 4, !dbg !116
  br label %23, !dbg !116

; <label>:23:                                     ; preds = %21, %7
  %24 = load i32, i32* %2, align 4, !dbg !117
  ret i32 %24, !dbg !117
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @gzclose_r(%struct.gzFile_s*) #2

declare i32 @gzclose_w(%struct.gzFile_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!81, !82}
!llvm.ident = !{!83}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "[inter]third-party--zlib-1.2.7--gzclose.o.i", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "gz_statep", file: !6, line: 177, baseType: !7)
!6 = !DIFile(filename: "gzguts.h", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "gz_state", file: !6, line: 176, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 145, size: 1856, align: 64, elements: !10)
!10 = !{!11, !22, !24, !25, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !9, file: !6, line: 147, baseType: !12, size: 192, align: 64)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gzFile_s", file: !13, line: 1670, size: 192, align: 64, elements: !14)
!13 = !DIFile(filename: "zlib.h", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!14 = !{!15, !17, !20}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "have", scope: !12, file: !13, line: 1671, baseType: !16, size: 32, align: 32)
!16 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !12, file: !13, line: 1672, baseType: !18, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !12, file: !13, line: 1673, baseType: !21, size: 64, align: 64, offset: 128)
!21 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !9, file: !6, line: 152, baseType: !23, size: 32, align: 32, offset: 192)
!23 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !9, file: !6, line: 153, baseType: !23, size: 32, align: 32, offset: 224)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !9, file: !6, line: 154, baseType: !26, size: 64, align: 64, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !9, file: !6, line: 155, baseType: !16, size: 32, align: 32, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !9, file: !6, line: 156, baseType: !16, size: 32, align: 32, offset: 352)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !9, file: !6, line: 157, baseType: !18, size: 64, align: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !9, file: !6, line: 158, baseType: !18, size: 64, align: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "direct", scope: !9, file: !6, line: 159, baseType: !23, size: 32, align: 32, offset: 512)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "how", scope: !9, file: !6, line: 161, baseType: !23, size: 32, align: 32, offset: 544)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !9, file: !6, line: 162, baseType: !21, size: 64, align: 64, offset: 576)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !9, file: !6, line: 163, baseType: !23, size: 32, align: 32, offset: 640)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "past", scope: !9, file: !6, line: 164, baseType: !23, size: 32, align: 32, offset: 672)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !9, file: !6, line: 166, baseType: !23, size: 32, align: 32, offset: 704)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "strategy", scope: !9, file: !6, line: 167, baseType: !23, size: 32, align: 32, offset: 736)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !9, file: !6, line: 169, baseType: !21, size: 64, align: 64, offset: 768)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !9, file: !6, line: 170, baseType: !23, size: 32, align: 32, offset: 832)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !9, file: !6, line: 172, baseType: !23, size: 32, align: 32, offset: 864)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !9, file: !6, line: 173, baseType: !26, size: 64, align: 64, offset: 896)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "strm", scope: !9, file: !6, line: 175, baseType: !44, size: 896, align: 64, offset: 960)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !13, line: 104, baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !13, line: 85, size: 896, align: 64, elements: !46)
!46 = !{!47, !52, !54, !57, !58, !59, !60, !61, !66, !72, !77, !78, !79, !80}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !45, file: !13, line: 86, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bytef", file: !50, line: 374, baseType: !51)
!50 = !DIFile(filename: "zconf.h", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !50, line: 365, baseType: !19)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !45, file: !13, line: 87, baseType: !53, size: 32, align: 32, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uInt", file: !50, line: 367, baseType: !16)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !45, file: !13, line: 88, baseType: !55, size: 64, align: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !50, line: 368, baseType: !56)
!56 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !45, file: !13, line: 90, baseType: !48, size: 64, align: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !45, file: !13, line: 91, baseType: !53, size: 32, align: 32, offset: 256)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !45, file: !13, line: 92, baseType: !55, size: 64, align: 64, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !45, file: !13, line: 94, baseType: !26, size: 64, align: 64, offset: 384)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !45, file: !13, line: 95, baseType: !62, size: 64, align: 64, offset: 448)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "internal_state", file: !13, line: 1742, size: 32, align: 32, elements: !64)
!64 = !{!65}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !63, file: !13, line: 1742, baseType: !23, size: 32, align: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "zalloc", scope: !45, file: !13, line: 97, baseType: !67, size: 64, align: 64, offset: 512)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_func", file: !13, line: 80, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!71, !71, !53, !53}
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "voidpf", file: !50, line: 383, baseType: !4)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "zfree", scope: !45, file: !13, line: 98, baseType: !73, size: 64, align: 64, offset: 576)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "free_func", file: !13, line: 81, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !71, !71}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !45, file: !13, line: 99, baseType: !71, size: 64, align: 64, offset: 640)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !45, file: !13, line: 101, baseType: !23, size: 32, align: 32, offset: 704)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "adler", scope: !45, file: !13, line: 102, baseType: !55, size: 64, align: 64, offset: 768)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !45, file: !13, line: 103, baseType: !55, size: 64, align: 64, offset: 832)
!81 = !{i32 2, !"Dwarf Version", i32 4}
!82 = !{i32 2, !"Debug Info Version", i32 3}
!83 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!84 = distinct !DISubprogram(name: "gzclose", scope: !85, file: !85, line: 11, type: !86, isLocal: false, isDefinition: true, scopeLine: 13, isOptimized: false, unit: !0, variables: !2)
!85 = !DIFile(filename: "gzclose.c", directory: "/home/lichi/Desktop/bedops/[lib]third-party--zlib-1.2.7--libz.a")
!86 = !DISubroutineType(types: !87)
!87 = !{!23, !88}
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "gzFile", file: !13, line: 1207, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!90 = !DILocalVariable(name: "file", arg: 1, scope: !84, file: !85, line: 12, type: !88)
!91 = !DIExpression()
!92 = !DILocation(line: 12, column: 12, scope: !84)
!93 = !DILocalVariable(name: "state", scope: !84, file: !85, line: 15, type: !5)
!94 = !DILocation(line: 15, column: 15, scope: !84)
!95 = !DILocation(line: 17, column: 9, scope: !96)
!96 = distinct !DILexicalBlock(scope: !84, file: !85, line: 17, column: 9)
!97 = !DILocation(line: 17, column: 14, scope: !96)
!98 = !DILocation(line: 17, column: 9, scope: !84)
!99 = !DILocation(line: 18, column: 9, scope: !96)
!100 = !DILocation(line: 19, column: 24, scope: !84)
!101 = !DILocation(line: 19, column: 13, scope: !84)
!102 = !DILocation(line: 19, column: 11, scope: !84)
!103 = !DILocation(line: 21, column: 12, scope: !84)
!104 = !DILocation(line: 21, column: 19, scope: !84)
!105 = !DILocation(line: 21, column: 24, scope: !84)
!106 = !DILocation(line: 21, column: 44, scope: !107)
!107 = !DILexicalBlockFile(scope: !84, file: !85, discriminator: 1)
!108 = !DILocation(line: 21, column: 34, scope: !107)
!109 = !DILocation(line: 21, column: 12, scope: !107)
!110 = !DILocation(line: 21, column: 62, scope: !111)
!111 = !DILexicalBlockFile(scope: !84, file: !85, discriminator: 2)
!112 = !DILocation(line: 21, column: 52, scope: !111)
!113 = !DILocation(line: 21, column: 12, scope: !111)
!114 = !DILocation(line: 21, column: 12, scope: !115)
!115 = !DILexicalBlockFile(scope: !84, file: !85, discriminator: 3)
!116 = !DILocation(line: 21, column: 5, scope: !115)
!117 = !DILocation(line: 25, column: 1, scope: !84)
