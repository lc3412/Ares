; ModuleID = './[inter]lib--dpkg--cleanup.o.i'
source_filename = "./[inter]lib--dpkg--cleanup.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__dirstream = type opaque

; Function Attrs: nounwind uwtable
define void @cu_closepipe(i32, i8**) #0 !dbg !75 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !80, metadata !81), !dbg !82
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !83, metadata !81), !dbg !84
  call void @llvm.dbg.declare(metadata i32** %5, metadata !85, metadata !81), !dbg !86
  %6 = load i8**, i8*** %4, align 8, !dbg !87
  %7 = getelementptr inbounds i8*, i8** %6, i64 0, !dbg !87
  %8 = load i8*, i8** %7, align 8, !dbg !87
  %9 = bitcast i8* %8 to i32*, !dbg !88
  store i32* %9, i32** %5, align 8, !dbg !86
  %10 = load i32*, i32** %5, align 8, !dbg !89
  %11 = getelementptr inbounds i32, i32* %10, i64 0, !dbg !89
  %12 = load i32, i32* %11, align 4, !dbg !89
  %13 = call i32 @close(i32 %12), !dbg !90
  %14 = load i32*, i32** %5, align 8, !dbg !91
  %15 = getelementptr inbounds i32, i32* %14, i64 1, !dbg !91
  %16 = load i32, i32* %15, align 4, !dbg !91
  %17 = call i32 @close(i32 %16), !dbg !92
  ret void, !dbg !93
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @close(i32) #2

; Function Attrs: nounwind uwtable
define void @cu_closestream(i32, i8**) #0 !dbg !94 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !95, metadata !81), !dbg !96
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !97, metadata !81), !dbg !98
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !99, metadata !81), !dbg !100
  %6 = load i8**, i8*** %4, align 8, !dbg !101
  %7 = getelementptr inbounds i8*, i8** %6, i64 0, !dbg !101
  %8 = load i8*, i8** %7, align 8, !dbg !101
  %9 = bitcast i8* %8 to %struct._IO_FILE*, !dbg !102
  store %struct._IO_FILE* %9, %struct._IO_FILE** %5, align 8, !dbg !100
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !103
  %11 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !104
  ret void, !dbg !105
}

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @cu_closedir(i32, i8**) #0 !dbg !106 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.__dirstream*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !107, metadata !81), !dbg !108
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !109, metadata !81), !dbg !110
  call void @llvm.dbg.declare(metadata %struct.__dirstream** %5, metadata !111, metadata !81), !dbg !112
  %6 = load i8**, i8*** %4, align 8, !dbg !113
  %7 = getelementptr inbounds i8*, i8** %6, i64 0, !dbg !113
  %8 = load i8*, i8** %7, align 8, !dbg !113
  %9 = bitcast i8* %8 to %struct.__dirstream*, !dbg !114
  store %struct.__dirstream* %9, %struct.__dirstream** %5, align 8, !dbg !112
  %10 = load %struct.__dirstream*, %struct.__dirstream** %5, align 8, !dbg !115
  %11 = call i32 @closedir(%struct.__dirstream* %10), !dbg !116
  ret void, !dbg !117
}

declare i32 @closedir(%struct.__dirstream*) #2

; Function Attrs: nounwind uwtable
define void @cu_closefd(i32, i8**) #0 !dbg !118 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !119, metadata !81), !dbg !120
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !121, metadata !81), !dbg !122
  call void @llvm.dbg.declare(metadata i32* %5, metadata !123, metadata !81), !dbg !124
  %6 = load i8**, i8*** %4, align 8, !dbg !125
  %7 = getelementptr inbounds i8*, i8** %6, i64 0, !dbg !125
  %8 = load i8*, i8** %7, align 8, !dbg !125
  %9 = bitcast i8* %8 to i32*, !dbg !126
  %10 = load i32, i32* %9, align 4, !dbg !127
  store i32 %10, i32* %5, align 4, !dbg !124
  %11 = load i32, i32* %5, align 4, !dbg !128
  %12 = call i32 @close(i32 %11), !dbg !129
  ret void, !dbg !130
}

; Function Attrs: nounwind uwtable
define void @cu_filename(i32, i8**) #0 !dbg !131 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !132, metadata !81), !dbg !133
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !134, metadata !81), !dbg !135
  call void @llvm.dbg.declare(metadata i8** %5, metadata !136, metadata !81), !dbg !139
  %6 = load i8**, i8*** %4, align 8, !dbg !140
  %7 = getelementptr inbounds i8*, i8** %6, i64 0, !dbg !140
  %8 = load i8*, i8** %7, align 8, !dbg !140
  store i8* %8, i8** %5, align 8, !dbg !139
  %9 = load i8*, i8** %5, align 8, !dbg !141
  %10 = call i32 @unlink(i8* %9) #4, !dbg !142
  ret void, !dbg !143
}

; Function Attrs: nounwind
declare i32 @unlink(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!72, !73}
!llvm.ident = !{!74}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "[inter]lib--dpkg--cleanup.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{}
!3 = !{!4, !6, !68}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !8, line: 48, baseType: !9)
!8 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !10, line: 241, size: 1728, align: 64, elements: !11)
!10 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!11 = !{!12, !13, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !34, !35, !36, !37, !41, !43, !45, !49, !52, !54, !56, !57, !58, !59, !63, !64}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !9, file: !10, line: 242, baseType: !5, size: 32, align: 32)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !9, file: !10, line: 247, baseType: !14, size: 64, align: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !9, file: !10, line: 248, baseType: !14, size: 64, align: 64, offset: 128)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !9, file: !10, line: 249, baseType: !14, size: 64, align: 64, offset: 192)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !9, file: !10, line: 250, baseType: !14, size: 64, align: 64, offset: 256)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !9, file: !10, line: 251, baseType: !14, size: 64, align: 64, offset: 320)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !9, file: !10, line: 252, baseType: !14, size: 64, align: 64, offset: 384)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !9, file: !10, line: 253, baseType: !14, size: 64, align: 64, offset: 448)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !9, file: !10, line: 254, baseType: !14, size: 64, align: 64, offset: 512)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !9, file: !10, line: 256, baseType: !14, size: 64, align: 64, offset: 576)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !9, file: !10, line: 257, baseType: !14, size: 64, align: 64, offset: 640)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !9, file: !10, line: 258, baseType: !14, size: 64, align: 64, offset: 704)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !9, file: !10, line: 260, baseType: !27, size: 64, align: 64, offset: 768)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !10, line: 156, size: 192, align: 64, elements: !29)
!29 = !{!30, !31, !33}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !28, file: !10, line: 157, baseType: !27, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !28, file: !10, line: 158, baseType: !32, size: 64, align: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !28, file: !10, line: 162, baseType: !5, size: 32, align: 32, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !9, file: !10, line: 262, baseType: !32, size: 64, align: 64, offset: 832)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !9, file: !10, line: 264, baseType: !5, size: 32, align: 32, offset: 896)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !9, file: !10, line: 268, baseType: !5, size: 32, align: 32, offset: 928)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !9, file: !10, line: 270, baseType: !38, size: 64, align: 64, offset: 960)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !39, line: 131, baseType: !40)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!40 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !9, file: !10, line: 274, baseType: !42, size: 16, align: 16, offset: 1024)
!42 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !9, file: !10, line: 275, baseType: !44, size: 8, align: 8, offset: 1040)
!44 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !9, file: !10, line: 276, baseType: !46, size: 8, align: 8, offset: 1048)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, align: 8, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 1)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !9, file: !10, line: 280, baseType: !50, size: 64, align: 64, offset: 1088)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !10, line: 150, baseType: null)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !9, file: !10, line: 289, baseType: !53, size: 64, align: 64, offset: 1152)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !39, line: 132, baseType: !40)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !9, file: !10, line: 297, baseType: !55, size: 64, align: 64, offset: 1216)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !9, file: !10, line: 298, baseType: !55, size: 64, align: 64, offset: 1280)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !9, file: !10, line: 299, baseType: !55, size: 64, align: 64, offset: 1344)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !9, file: !10, line: 300, baseType: !55, size: 64, align: 64, offset: 1408)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !9, file: !10, line: 302, baseType: !60, size: 64, align: 64, offset: 1472)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !61, line: 216, baseType: !62)
!61 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!62 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !9, file: !10, line: 303, baseType: !5, size: 32, align: 32, offset: 1536)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !9, file: !10, line: 305, baseType: !65, size: 160, align: 8, offset: 1568)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, align: 8, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 20)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !70, line: 127, baseType: !71)
!70 = !DIFile(filename: "/usr/include/dirent.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !70, line: 127, flags: DIFlagFwdDecl)
!72 = !{i32 2, !"Dwarf Version", i32 4}
!73 = !{i32 2, !"Debug Info Version", i32 3}
!74 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!75 = distinct !DISubprogram(name: "cu_closepipe", scope: !76, file: !76, line: 31, type: !77, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!76 = !DIFile(filename: "cleanup.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!77 = !DISubroutineType(types: !78)
!78 = !{null, !5, !79}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!80 = !DILocalVariable(name: "argc", arg: 1, scope: !75, file: !76, line: 31, type: !5)
!81 = !DIExpression()
!82 = !DILocation(line: 31, column: 18, scope: !75)
!83 = !DILocalVariable(name: "argv", arg: 2, scope: !75, file: !76, line: 31, type: !79)
!84 = !DILocation(line: 31, column: 31, scope: !75)
!85 = !DILocalVariable(name: "p1", scope: !75, file: !76, line: 33, type: !4)
!86 = !DILocation(line: 33, column: 7, scope: !75)
!87 = !DILocation(line: 33, column: 19, scope: !75)
!88 = !DILocation(line: 33, column: 12, scope: !75)
!89 = !DILocation(line: 35, column: 8, scope: !75)
!90 = !DILocation(line: 35, column: 2, scope: !75)
!91 = !DILocation(line: 36, column: 8, scope: !75)
!92 = !DILocation(line: 36, column: 2, scope: !75)
!93 = !DILocation(line: 37, column: 1, scope: !75)
!94 = distinct !DISubprogram(name: "cu_closestream", scope: !76, file: !76, line: 40, type: !77, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!95 = !DILocalVariable(name: "argc", arg: 1, scope: !94, file: !76, line: 40, type: !5)
!96 = !DILocation(line: 40, column: 20, scope: !94)
!97 = !DILocalVariable(name: "argv", arg: 2, scope: !94, file: !76, line: 40, type: !79)
!98 = !DILocation(line: 40, column: 33, scope: !94)
!99 = !DILocalVariable(name: "f", scope: !94, file: !76, line: 42, type: !6)
!100 = !DILocation(line: 42, column: 8, scope: !94)
!101 = !DILocation(line: 42, column: 21, scope: !94)
!102 = !DILocation(line: 42, column: 12, scope: !94)
!103 = !DILocation(line: 44, column: 9, scope: !94)
!104 = !DILocation(line: 44, column: 2, scope: !94)
!105 = !DILocation(line: 45, column: 1, scope: !94)
!106 = distinct !DISubprogram(name: "cu_closedir", scope: !76, file: !76, line: 48, type: !77, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!107 = !DILocalVariable(name: "argc", arg: 1, scope: !106, file: !76, line: 48, type: !5)
!108 = !DILocation(line: 48, column: 17, scope: !106)
!109 = !DILocalVariable(name: "argv", arg: 2, scope: !106, file: !76, line: 48, type: !79)
!110 = !DILocation(line: 48, column: 30, scope: !106)
!111 = !DILocalVariable(name: "d", scope: !106, file: !76, line: 50, type: !68)
!112 = !DILocation(line: 50, column: 7, scope: !106)
!113 = !DILocation(line: 50, column: 19, scope: !106)
!114 = !DILocation(line: 50, column: 11, scope: !106)
!115 = !DILocation(line: 52, column: 11, scope: !106)
!116 = !DILocation(line: 52, column: 2, scope: !106)
!117 = !DILocation(line: 53, column: 1, scope: !106)
!118 = distinct !DISubprogram(name: "cu_closefd", scope: !76, file: !76, line: 56, type: !77, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!119 = !DILocalVariable(name: "argc", arg: 1, scope: !118, file: !76, line: 56, type: !5)
!120 = !DILocation(line: 56, column: 16, scope: !118)
!121 = !DILocalVariable(name: "argv", arg: 2, scope: !118, file: !76, line: 56, type: !79)
!122 = !DILocation(line: 56, column: 29, scope: !118)
!123 = !DILocalVariable(name: "ip", scope: !118, file: !76, line: 58, type: !5)
!124 = !DILocation(line: 58, column: 6, scope: !118)
!125 = !DILocation(line: 58, column: 19, scope: !118)
!126 = !DILocation(line: 58, column: 12, scope: !118)
!127 = !DILocation(line: 58, column: 11, scope: !118)
!128 = !DILocation(line: 60, column: 8, scope: !118)
!129 = !DILocation(line: 60, column: 2, scope: !118)
!130 = !DILocation(line: 61, column: 1, scope: !118)
!131 = distinct !DISubprogram(name: "cu_filename", scope: !76, file: !76, line: 64, type: !77, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!132 = !DILocalVariable(name: "argc", arg: 1, scope: !131, file: !76, line: 64, type: !5)
!133 = !DILocation(line: 64, column: 17, scope: !131)
!134 = !DILocalVariable(name: "argv", arg: 2, scope: !131, file: !76, line: 64, type: !79)
!135 = !DILocation(line: 64, column: 30, scope: !131)
!136 = !DILocalVariable(name: "filename", scope: !131, file: !76, line: 66, type: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!139 = !DILocation(line: 66, column: 14, scope: !131)
!140 = !DILocation(line: 66, column: 25, scope: !131)
!141 = !DILocation(line: 68, column: 15, scope: !131)
!142 = !DILocation(line: 68, column: 8, scope: !131)
!143 = !DILocation(line: 69, column: 1, scope: !131)
