; ModuleID = './libGlibUtils_la-stdLogger.o.i'
source_filename = "./libGlibUtils_la-stdLogger.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.GlibLogger = type { i32, i32, void (i8*, i32, i8*, i8*)*, void (i8*)* }
%struct.StdLogger = type { %struct.GlibLogger }
%struct._GError = type { i32, i32, i8* }

@stderr = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define %struct.GlibLogger* @GlibUtils_CreateStdLogger() #0 !dbg !52 {
  %1 = alloca %struct.StdLogger*, align 8
  call void @llvm.dbg.declare(metadata %struct.StdLogger** %1, metadata !57, metadata !58), !dbg !59
  %2 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !60
  %3 = bitcast i8* %2 to %struct.StdLogger*, !dbg !61
  store %struct.StdLogger* %3, %struct.StdLogger** %1, align 8, !dbg !59
  %4 = load %struct.StdLogger*, %struct.StdLogger** %1, align 8, !dbg !62
  %5 = getelementptr inbounds %struct.StdLogger, %struct.StdLogger* %4, i32 0, i32 0, !dbg !63
  %6 = getelementptr inbounds %struct.GlibLogger, %struct.GlibLogger* %5, i32 0, i32 2, !dbg !64
  store void (i8*, i32, i8*, i8*)* @StdLoggerLog, void (i8*, i32, i8*, i8*)** %6, align 8, !dbg !65
  %7 = load %struct.StdLogger*, %struct.StdLogger** %1, align 8, !dbg !66
  %8 = getelementptr inbounds %struct.StdLogger, %struct.StdLogger* %7, i32 0, i32 0, !dbg !67
  %9 = getelementptr inbounds %struct.GlibLogger, %struct.GlibLogger* %8, i32 0, i32 1, !dbg !68
  store i32 0, i32* %9, align 4, !dbg !69
  %10 = load %struct.StdLogger*, %struct.StdLogger** %1, align 8, !dbg !70
  %11 = getelementptr inbounds %struct.StdLogger, %struct.StdLogger* %10, i32 0, i32 0, !dbg !71
  %12 = getelementptr inbounds %struct.GlibLogger, %struct.GlibLogger* %11, i32 0, i32 0, !dbg !72
  store i32 0, i32* %12, align 8, !dbg !73
  %13 = load %struct.StdLogger*, %struct.StdLogger** %1, align 8, !dbg !74
  %14 = getelementptr inbounds %struct.StdLogger, %struct.StdLogger* %13, i32 0, i32 0, !dbg !75
  %15 = getelementptr inbounds %struct.GlibLogger, %struct.GlibLogger* %14, i32 0, i32 3, !dbg !76
  store void (i8*)* @StdLoggerDestroy, void (i8*)** %15, align 8, !dbg !77
  %16 = load %struct.StdLogger*, %struct.StdLogger** %1, align 8, !dbg !78
  %17 = getelementptr inbounds %struct.StdLogger, %struct.StdLogger* %16, i32 0, i32 0, !dbg !79
  ret %struct.GlibLogger* %17, !dbg !80
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare noalias i8* @g_malloc0_n(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @StdLoggerLog(i8*, i32, i8*, i8*) #0 !dbg !81 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !82, metadata !58), !dbg !83
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !84, metadata !58), !dbg !85
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !86, metadata !58), !dbg !87
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !88, metadata !58), !dbg !89
  call void @llvm.dbg.declare(metadata i8** %9, metadata !90, metadata !58), !dbg !92
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %10, metadata !93, metadata !58), !dbg !154
  %11 = load i32, i32* %6, align 4, !dbg !155
  %12 = icmp slt i32 %11, 32, !dbg !156
  br i1 %12, label %13, label %15, !dbg !157

; <label>:13:                                     ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !158
  br label %17, !dbg !160

; <label>:15:                                     ; preds = %4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !161
  br label %17, !dbg !163

; <label>:17:                                     ; preds = %15, %13
  %18 = phi %struct._IO_FILE* [ %14, %13 ], [ %16, %15 ], !dbg !164
  store %struct._IO_FILE* %18, %struct._IO_FILE** %10, align 8, !dbg !166
  %19 = load i8*, i8** %7, align 8, !dbg !167
  %20 = call noalias i8* @g_locale_from_utf8(i8* %19, i64 -1, i64* null, i64* null, %struct._GError** null), !dbg !168
  store i8* %20, i8** %9, align 8, !dbg !169
  %21 = load i8*, i8** %9, align 8, !dbg !170
  %22 = icmp ne i8* %21, null, !dbg !172
  br i1 %22, label %23, label %28, !dbg !173

; <label>:23:                                     ; preds = %17
  %24 = load i8*, i8** %9, align 8, !dbg !174
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !176
  %26 = call i32 @fputs(i8* %24, %struct._IO_FILE* %25), !dbg !177
  %27 = load i8*, i8** %9, align 8, !dbg !178
  call void @g_free(i8* %27), !dbg !179
  br label %32, !dbg !180

; <label>:28:                                     ; preds = %17
  %29 = load i8*, i8** %7, align 8, !dbg !181
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !183
  %31 = call i32 @fputs(i8* %29, %struct._IO_FILE* %30), !dbg !184
  br label %32

; <label>:32:                                     ; preds = %28, %23
  ret void, !dbg !185
}

; Function Attrs: nounwind uwtable
define internal void @StdLoggerDestroy(i8*) #0 !dbg !186 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !187, metadata !58), !dbg !188
  %3 = load i8*, i8** %2, align 8, !dbg !189
  call void @g_free(i8* %3), !dbg !190
  ret void, !dbg !191
}

declare noalias i8* @g_locale_from_utf8(i8*, i64, i64*, i64*, %struct._GError**) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

declare void @g_free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!49, !50}
!llvm.ident = !{!51}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !15)
!1 = !DIFile(filename: "libGlibUtils_la-stdLogger.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line273")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 51, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line273")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!7 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!8 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!9 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!10 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!11 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!12 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!13 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!14 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!15 = !{!16, !43}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "StdLogger", file: !18, line: 39, baseType: !19)
!18 = !DIFile(filename: "stdLogger.c", directory: "/home/lichi/Desktop/open-vm-tools/line273")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "StdLogger", file: !18, line: 34, size: 192, align: 64, elements: !20)
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !19, file: !18, line: 35, baseType: !22, size: 192, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "GlibLogger", file: !23, line: 57, baseType: !24)
!23 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/glibUtils.h", directory: "/home/lichi/Desktop/open-vm-tools/line273")
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GlibLogger", file: !23, line: 52, size: 192, align: 64, elements: !25)
!25 = !{!26, !31, !32, !44}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !24, file: !23, line: 53, baseType: !27, size: 32, align: 32)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !28, line: 50, baseType: !29)
!28 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line273")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !28, line: 49, baseType: !30)
!30 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "addsTimestamp", scope: !24, file: !23, line: 54, baseType: !27, size: 32, align: 32, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "logfn", scope: !24, file: !23, line: 55, baseType: !33, size: 64, align: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLogFunc", file: !4, line: 71, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37, !41, !37, !42}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !28, line: 46, baseType: !40)
!40 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLogLevelFlags", file: !4, line: 66, baseType: !3)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !28, line: 77, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "dtor", scope: !24, file: !23, line: 56, baseType: !45, size: 64, align: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "GDestroyNotify", file: !28, line: 87, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !42}
!49 = !{i32 2, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!52 = distinct !DISubprogram(name: "GlibUtils_CreateStdLogger", scope: !18, file: !18, line: 232, type: !53, isLocal: false, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!53 = !DISubroutineType(types: !54)
!54 = !{!55}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!56 = !{}
!57 = !DILocalVariable(name: "data", scope: !52, file: !18, line: 234, type: !16)
!58 = !DIExpression()
!59 = !DILocation(line: 234, column: 15, scope: !52)
!60 = !DILocation(line: 234, column: 37, scope: !52)
!61 = !DILocation(line: 234, column: 23, scope: !52)
!62 = !DILocation(line: 235, column: 4, scope: !52)
!63 = !DILocation(line: 235, column: 10, scope: !52)
!64 = !DILocation(line: 235, column: 18, scope: !52)
!65 = !DILocation(line: 235, column: 24, scope: !52)
!66 = !DILocation(line: 236, column: 4, scope: !52)
!67 = !DILocation(line: 236, column: 10, scope: !52)
!68 = !DILocation(line: 236, column: 18, scope: !52)
!69 = !DILocation(line: 236, column: 32, scope: !52)
!70 = !DILocation(line: 237, column: 4, scope: !52)
!71 = !DILocation(line: 237, column: 10, scope: !52)
!72 = !DILocation(line: 237, column: 18, scope: !52)
!73 = !DILocation(line: 237, column: 25, scope: !52)
!74 = !DILocation(line: 238, column: 4, scope: !52)
!75 = !DILocation(line: 238, column: 10, scope: !52)
!76 = !DILocation(line: 238, column: 18, scope: !52)
!77 = !DILocation(line: 238, column: 23, scope: !52)
!78 = !DILocation(line: 239, column: 12, scope: !52)
!79 = !DILocation(line: 239, column: 18, scope: !52)
!80 = !DILocation(line: 239, column: 4, scope: !52)
!81 = distinct !DISubprogram(name: "StdLoggerLog", scope: !18, file: !18, line: 57, type: !35, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!82 = !DILocalVariable(name: "domain", arg: 1, scope: !81, file: !18, line: 57, type: !37)
!83 = !DILocation(line: 57, column: 27, scope: !81)
!84 = !DILocalVariable(name: "level", arg: 2, scope: !81, file: !18, line: 58, type: !41)
!85 = !DILocation(line: 58, column: 29, scope: !81)
!86 = !DILocalVariable(name: "message", arg: 3, scope: !81, file: !18, line: 59, type: !37)
!87 = !DILocation(line: 59, column: 27, scope: !81)
!88 = !DILocalVariable(name: "data", arg: 4, scope: !81, file: !18, line: 60, type: !42)
!89 = !DILocation(line: 60, column: 23, scope: !81)
!90 = !DILocalVariable(name: "local", scope: !81, file: !18, line: 62, type: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!92 = !DILocation(line: 62, column: 11, scope: !81)
!93 = !DILocalVariable(name: "dest", scope: !81, file: !18, line: 63, type: !94)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !96, line: 48, baseType: !97)
!96 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line273")
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !98, line: 241, size: 1728, align: 64, elements: !99)
!98 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/open-vm-tools/line273")
!99 = !{!100, !101, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !121, !122, !123, !124, !128, !130, !132, !136, !139, !141, !142, !143, !144, !145, !149, !150}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !97, file: !98, line: 242, baseType: !30, size: 32, align: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !97, file: !98, line: 247, baseType: !102, size: 64, align: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !97, file: !98, line: 248, baseType: !102, size: 64, align: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !97, file: !98, line: 249, baseType: !102, size: 64, align: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !97, file: !98, line: 250, baseType: !102, size: 64, align: 64, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !97, file: !98, line: 251, baseType: !102, size: 64, align: 64, offset: 320)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !97, file: !98, line: 252, baseType: !102, size: 64, align: 64, offset: 384)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !97, file: !98, line: 253, baseType: !102, size: 64, align: 64, offset: 448)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !97, file: !98, line: 254, baseType: !102, size: 64, align: 64, offset: 512)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !97, file: !98, line: 256, baseType: !102, size: 64, align: 64, offset: 576)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !97, file: !98, line: 257, baseType: !102, size: 64, align: 64, offset: 640)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !97, file: !98, line: 258, baseType: !102, size: 64, align: 64, offset: 704)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !97, file: !98, line: 260, baseType: !114, size: 64, align: 64, offset: 768)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !98, line: 156, size: 192, align: 64, elements: !116)
!116 = !{!117, !118, !120}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !115, file: !98, line: 157, baseType: !114, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !115, file: !98, line: 158, baseType: !119, size: 64, align: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !115, file: !98, line: 162, baseType: !30, size: 32, align: 32, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !97, file: !98, line: 262, baseType: !119, size: 64, align: 64, offset: 832)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !97, file: !98, line: 264, baseType: !30, size: 32, align: 32, offset: 896)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !97, file: !98, line: 268, baseType: !30, size: 32, align: 32, offset: 928)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !97, file: !98, line: 270, baseType: !125, size: 64, align: 64, offset: 960)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !126, line: 131, baseType: !127)
!126 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line273")
!127 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !97, file: !98, line: 274, baseType: !129, size: 16, align: 16, offset: 1024)
!129 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !97, file: !98, line: 275, baseType: !131, size: 8, align: 8, offset: 1040)
!131 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !97, file: !98, line: 276, baseType: !133, size: 8, align: 8, offset: 1048)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 8, align: 8, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 1)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !97, file: !98, line: 280, baseType: !137, size: 64, align: 64, offset: 1088)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !98, line: 150, baseType: null)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !97, file: !98, line: 289, baseType: !140, size: 64, align: 64, offset: 1152)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !126, line: 132, baseType: !127)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !97, file: !98, line: 297, baseType: !43, size: 64, align: 64, offset: 1216)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !97, file: !98, line: 298, baseType: !43, size: 64, align: 64, offset: 1280)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !97, file: !98, line: 299, baseType: !43, size: 64, align: 64, offset: 1344)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !97, file: !98, line: 300, baseType: !43, size: 64, align: 64, offset: 1408)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !97, file: !98, line: 302, baseType: !146, size: 64, align: 64, offset: 1472)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !147, line: 216, baseType: !148)
!147 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line273")
!148 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !97, file: !98, line: 303, baseType: !30, size: 32, align: 32, offset: 1536)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !97, file: !98, line: 305, baseType: !151, size: 160, align: 8, offset: 1568)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 160, align: 8, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 20)
!154 = !DILocation(line: 63, column: 10, scope: !81)
!155 = !DILocation(line: 63, column: 18, scope: !81)
!156 = !DILocation(line: 63, column: 24, scope: !81)
!157 = !DILocation(line: 63, column: 17, scope: !81)
!158 = !DILocation(line: 63, column: 48, scope: !159)
!159 = !DILexicalBlockFile(scope: !81, file: !18, discriminator: 1)
!160 = !DILocation(line: 63, column: 17, scope: !159)
!161 = !DILocation(line: 63, column: 57, scope: !162)
!162 = !DILexicalBlockFile(scope: !81, file: !18, discriminator: 2)
!163 = !DILocation(line: 63, column: 17, scope: !162)
!164 = !DILocation(line: 63, column: 17, scope: !165)
!165 = !DILexicalBlockFile(scope: !81, file: !18, discriminator: 3)
!166 = !DILocation(line: 63, column: 10, scope: !165)
!167 = !DILocation(line: 82, column: 31, scope: !81)
!168 = !DILocation(line: 82, column: 12, scope: !81)
!169 = !DILocation(line: 82, column: 10, scope: !81)
!170 = !DILocation(line: 83, column: 8, scope: !171)
!171 = distinct !DILexicalBlock(scope: !81, file: !18, line: 83, column: 8)
!172 = !DILocation(line: 83, column: 14, scope: !171)
!173 = !DILocation(line: 83, column: 8, scope: !81)
!174 = !DILocation(line: 84, column: 13, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !18, line: 83, column: 22)
!176 = !DILocation(line: 84, column: 20, scope: !175)
!177 = !DILocation(line: 84, column: 7, scope: !175)
!178 = !DILocation(line: 85, column: 14, scope: !175)
!179 = !DILocation(line: 85, column: 7, scope: !175)
!180 = !DILocation(line: 86, column: 4, scope: !175)
!181 = !DILocation(line: 87, column: 13, scope: !182)
!182 = distinct !DILexicalBlock(scope: !171, file: !18, line: 86, column: 11)
!183 = !DILocation(line: 87, column: 22, scope: !182)
!184 = !DILocation(line: 87, column: 7, scope: !182)
!185 = !DILocation(line: 89, column: 1, scope: !81)
!186 = distinct !DISubprogram(name: "StdLoggerDestroy", scope: !18, file: !18, line: 104, type: !47, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !56)
!187 = !DILocalVariable(name: "data", arg: 1, scope: !186, file: !18, line: 104, type: !42)
!188 = !DILocation(line: 104, column: 27, scope: !186)
!189 = !DILocation(line: 114, column: 11, scope: !186)
!190 = !DILocation(line: 114, column: 4, scope: !186)
!191 = !DILocation(line: 115, column: 1, scope: !186)
