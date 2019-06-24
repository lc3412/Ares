; ModuleID = './[inter]lib--dpkg--debug.o.i'
source_filename = "./[inter]lib--dpkg--debug.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@debug_output = internal global %struct._IO_FILE* null, align 8
@debug_mask = internal global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [9 x i8] c"D0%05o: \00", align 1

; Function Attrs: nounwind uwtable
define void @debug_set_output(%struct._IO_FILE*, i8*) #0 !dbg !73 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !78, metadata !79), !dbg !80
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !81, metadata !79), !dbg !82
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !83
  %6 = call i32 @fileno(%struct._IO_FILE* %5) #4, !dbg !84
  %7 = load i8*, i8** %4, align 8, !dbg !85
  call void @setcloexec(i32 %6, i8* %7), !dbg !86
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !88
  call void @dpkg_set_report_buffer(%struct._IO_FILE* %8), !dbg !89
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !90
  store %struct._IO_FILE* %9, %struct._IO_FILE** @debug_output, align 8, !dbg !91
  ret void, !dbg !92
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @setcloexec(i32, i8*) #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #3

declare void @dpkg_set_report_buffer(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @debug_set_mask(i32) #0 !dbg !93 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !96, metadata !79), !dbg !97
  %3 = load i32, i32* %2, align 4, !dbg !98
  store i32 %3, i32* @debug_mask, align 4, !dbg !99
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @debug_output, align 8, !dbg !100
  %5 = icmp ne %struct._IO_FILE* %4, null, !dbg !100
  br i1 %5, label %8, label %6, !dbg !102

; <label>:6:                                      ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !103
  store %struct._IO_FILE* %7, %struct._IO_FILE** @debug_output, align 8, !dbg !104
  br label %8, !dbg !105

; <label>:8:                                      ; preds = %6, %1
  ret void, !dbg !106
}

; Function Attrs: nounwind uwtable
define zeroext i1 @debug_has_flag(i32) #0 !dbg !107 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !111, metadata !79), !dbg !112
  %3 = load i32, i32* @debug_mask, align 4, !dbg !113
  %4 = load i32, i32* %2, align 4, !dbg !114
  %5 = and i32 %3, %4, !dbg !115
  %6 = icmp ne i32 %5, 0, !dbg !113
  ret i1 %6, !dbg !116
}

; Function Attrs: nounwind uwtable
define void @debug(i32, i8*, ...) #0 !dbg !117 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !120, metadata !79), !dbg !121
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !122, metadata !79), !dbg !123
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !124, metadata !79), !dbg !137
  %6 = load i32, i32* %3, align 4, !dbg !138
  %7 = call zeroext i1 @debug_has_flag(i32 %6), !dbg !140
  br i1 %7, label %9, label %8, !dbg !141

; <label>:8:                                      ; preds = %2
  br label %23, !dbg !142

; <label>:9:                                      ; preds = %2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @debug_output, align 8, !dbg !143
  %11 = load i32, i32* %3, align 4, !dbg !144
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 %11), !dbg !145
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !146
  %14 = bitcast %struct.__va_list_tag* %13 to i8*, !dbg !146
  call void @llvm.va_start(i8* %14), !dbg !146
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @debug_output, align 8, !dbg !147
  %16 = load i8*, i8** %4, align 8, !dbg !148
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !149
  %18 = call i32 @vfprintf(%struct._IO_FILE* %15, i8* %16, %struct.__va_list_tag* %17), !dbg !150
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !151
  %20 = bitcast %struct.__va_list_tag* %19 to i8*, !dbg !151
  call void @llvm.va_end(i8* %20), !dbg !151
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @debug_output, align 8, !dbg !152
  %22 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %21), !dbg !152
  br label %23, !dbg !153

; <label>:23:                                     ; preds = %9, %8
  ret void, !dbg !154
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!70, !71}
!llvm.ident = !{!72}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "[inter]lib--dpkg--debug.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{}
!3 = !{!4, !69}
!4 = distinct !DIGlobalVariable(name: "debug_output", scope: !0, file: !5, line: 33, type: !6, isLocal: true, isDefinition: true, variable: %struct._IO_FILE** @debug_output)
!5 = !DIFile(filename: "debug.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !8, line: 48, baseType: !9)
!8 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !10, line: 241, size: 1728, align: 64, elements: !11)
!10 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!11 = !{!12, !14, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !35, !36, !37, !38, !42, !44, !46, !50, !53, !55, !57, !58, !59, !60, !64, !65}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !9, file: !10, line: 242, baseType: !13, size: 32, align: 32)
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !9, file: !10, line: 247, baseType: !15, size: 64, align: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !9, file: !10, line: 248, baseType: !15, size: 64, align: 64, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !9, file: !10, line: 249, baseType: !15, size: 64, align: 64, offset: 192)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !9, file: !10, line: 250, baseType: !15, size: 64, align: 64, offset: 256)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !9, file: !10, line: 251, baseType: !15, size: 64, align: 64, offset: 320)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !9, file: !10, line: 252, baseType: !15, size: 64, align: 64, offset: 384)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !9, file: !10, line: 253, baseType: !15, size: 64, align: 64, offset: 448)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !9, file: !10, line: 254, baseType: !15, size: 64, align: 64, offset: 512)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !9, file: !10, line: 256, baseType: !15, size: 64, align: 64, offset: 576)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !9, file: !10, line: 257, baseType: !15, size: 64, align: 64, offset: 640)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !9, file: !10, line: 258, baseType: !15, size: 64, align: 64, offset: 704)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !9, file: !10, line: 260, baseType: !28, size: 64, align: 64, offset: 768)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !10, line: 156, size: 192, align: 64, elements: !30)
!30 = !{!31, !32, !34}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !29, file: !10, line: 157, baseType: !28, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !29, file: !10, line: 158, baseType: !33, size: 64, align: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !29, file: !10, line: 162, baseType: !13, size: 32, align: 32, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !9, file: !10, line: 262, baseType: !33, size: 64, align: 64, offset: 832)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !9, file: !10, line: 264, baseType: !13, size: 32, align: 32, offset: 896)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !9, file: !10, line: 268, baseType: !13, size: 32, align: 32, offset: 928)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !9, file: !10, line: 270, baseType: !39, size: 64, align: 64, offset: 960)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !40, line: 131, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!41 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !9, file: !10, line: 274, baseType: !43, size: 16, align: 16, offset: 1024)
!43 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !9, file: !10, line: 275, baseType: !45, size: 8, align: 8, offset: 1040)
!45 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !9, file: !10, line: 276, baseType: !47, size: 8, align: 8, offset: 1048)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 8, align: 8, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 1)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !9, file: !10, line: 280, baseType: !51, size: 64, align: 64, offset: 1088)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !10, line: 150, baseType: null)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !9, file: !10, line: 289, baseType: !54, size: 64, align: 64, offset: 1152)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !40, line: 132, baseType: !41)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !9, file: !10, line: 297, baseType: !56, size: 64, align: 64, offset: 1216)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !9, file: !10, line: 298, baseType: !56, size: 64, align: 64, offset: 1280)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !9, file: !10, line: 299, baseType: !56, size: 64, align: 64, offset: 1344)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !9, file: !10, line: 300, baseType: !56, size: 64, align: 64, offset: 1408)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !9, file: !10, line: 302, baseType: !61, size: 64, align: 64, offset: 1472)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !62, line: 216, baseType: !63)
!62 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!63 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !9, file: !10, line: 303, baseType: !13, size: 32, align: 32, offset: 1536)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !9, file: !10, line: 305, baseType: !66, size: 160, align: 8, offset: 1568)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 160, align: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 20)
!69 = distinct !DIGlobalVariable(name: "debug_mask", scope: !0, file: !5, line: 32, type: !13, isLocal: true, isDefinition: true, variable: i32* @debug_mask)
!70 = !{i32 2, !"Dwarf Version", i32 4}
!71 = !{i32 2, !"Debug Info Version", i32 3}
!72 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!73 = distinct !DISubprogram(name: "debug_set_output", scope: !5, file: !5, line: 41, type: !74, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !6, !76}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!78 = !DILocalVariable(name: "output", arg: 1, scope: !73, file: !5, line: 41, type: !6)
!79 = !DIExpression()
!80 = !DILocation(line: 41, column: 24, scope: !73)
!81 = !DILocalVariable(name: "filename", arg: 2, scope: !73, file: !5, line: 41, type: !76)
!82 = !DILocation(line: 41, column: 44, scope: !73)
!83 = !DILocation(line: 43, column: 20, scope: !73)
!84 = !DILocation(line: 43, column: 13, scope: !73)
!85 = !DILocation(line: 43, column: 29, scope: !73)
!86 = !DILocation(line: 43, column: 2, scope: !87)
!87 = !DILexicalBlockFile(scope: !73, file: !5, discriminator: 1)
!88 = !DILocation(line: 44, column: 25, scope: !73)
!89 = !DILocation(line: 44, column: 2, scope: !73)
!90 = !DILocation(line: 45, column: 17, scope: !73)
!91 = !DILocation(line: 45, column: 15, scope: !73)
!92 = !DILocation(line: 46, column: 1, scope: !73)
!93 = distinct !DISubprogram(name: "debug_set_mask", scope: !5, file: !5, line: 55, type: !94, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !13}
!96 = !DILocalVariable(name: "mask", arg: 1, scope: !93, file: !5, line: 55, type: !13)
!97 = !DILocation(line: 55, column: 20, scope: !93)
!98 = !DILocation(line: 57, column: 15, scope: !93)
!99 = !DILocation(line: 57, column: 13, scope: !93)
!100 = !DILocation(line: 58, column: 7, scope: !101)
!101 = distinct !DILexicalBlock(scope: !93, file: !5, line: 58, column: 6)
!102 = !DILocation(line: 58, column: 6, scope: !93)
!103 = !DILocation(line: 59, column: 17, scope: !101)
!104 = !DILocation(line: 59, column: 16, scope: !101)
!105 = !DILocation(line: 59, column: 3, scope: !101)
!106 = !DILocation(line: 60, column: 1, scope: !93)
!107 = distinct !DISubprogram(name: "debug_has_flag", scope: !5, file: !5, line: 66, type: !108, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!108 = !DISubroutineType(types: !109)
!109 = !{!110, !13}
!110 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!111 = !DILocalVariable(name: "flag", arg: 1, scope: !107, file: !5, line: 66, type: !13)
!112 = !DILocation(line: 66, column: 20, scope: !107)
!113 = !DILocation(line: 68, column: 9, scope: !107)
!114 = !DILocation(line: 68, column: 22, scope: !107)
!115 = !DILocation(line: 68, column: 20, scope: !107)
!116 = !DILocation(line: 68, column: 2, scope: !107)
!117 = distinct !DISubprogram(name: "debug", scope: !5, file: !5, line: 78, type: !118, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !13, !76, null}
!120 = !DILocalVariable(name: "flag", arg: 1, scope: !117, file: !5, line: 78, type: !13)
!121 = !DILocation(line: 78, column: 11, scope: !117)
!122 = !DILocalVariable(name: "fmt", arg: 2, scope: !117, file: !5, line: 78, type: !76)
!123 = !DILocation(line: 78, column: 29, scope: !117)
!124 = !DILocalVariable(name: "args", scope: !117, file: !5, line: 80, type: !125)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !126, line: 98, baseType: !127)
!126 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !126, line: 40, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 80, baseType: !129)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 192, align: 64, elements: !48)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 80, size: 192, align: 64, elements: !131)
!131 = !{!132, !134, !135, !136}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !130, file: !1, line: 80, baseType: !133, size: 32, align: 32)
!133 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !130, file: !1, line: 80, baseType: !133, size: 32, align: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !130, file: !1, line: 80, baseType: !56, size: 64, align: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !130, file: !1, line: 80, baseType: !56, size: 64, align: 64, offset: 128)
!137 = !DILocation(line: 80, column: 10, scope: !117)
!138 = !DILocation(line: 82, column: 22, scope: !139)
!139 = distinct !DILexicalBlock(scope: !117, file: !5, line: 82, column: 6)
!140 = !DILocation(line: 82, column: 7, scope: !139)
!141 = !DILocation(line: 82, column: 6, scope: !117)
!142 = !DILocation(line: 83, column: 3, scope: !139)
!143 = !DILocation(line: 85, column: 10, scope: !117)
!144 = !DILocation(line: 85, column: 36, scope: !117)
!145 = !DILocation(line: 85, column: 2, scope: !117)
!146 = !DILocation(line: 86, column: 1, scope: !117)
!147 = !DILocation(line: 87, column: 11, scope: !117)
!148 = !DILocation(line: 87, column: 25, scope: !117)
!149 = !DILocation(line: 87, column: 30, scope: !117)
!150 = !DILocation(line: 87, column: 2, scope: !117)
!151 = !DILocation(line: 88, column: 1, scope: !117)
!152 = !DILocation(line: 89, column: 1, scope: !117)
!153 = !DILocation(line: 90, column: 1, scope: !117)
!154 = !DILocation(line: 90, column: 1, scope: !155)
!155 = !DILexicalBlockFile(scope: !117, file: !5, discriminator: 1)
