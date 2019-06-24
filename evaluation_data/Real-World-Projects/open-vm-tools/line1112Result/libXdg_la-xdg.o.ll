; ModuleID = './libXdg_la-xdg.o.i'
source_filename = "./libXdg_la-xdg.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.anon = type { i32 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }

@Xdg_DetectDesktopEnv.outbuf = internal global i8* null, align 8
@xdgDetectDEExec = internal constant [21 x i8] c"vmware-xdg-detect-de\00", align 16
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@Xdg_DetectDesktopEnv.maxSize = internal constant i64 25, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: received malformed input\0A\00", align 1
@__func__.Xdg_DetectDesktopEnv = private unnamed_addr constant [21 x i8] c"Xdg_DetectDesktopEnv\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%s: %s did not exit cleanly (%x/%x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define i8* @Xdg_DetectDesktopEnv() #0 !dbg !46 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.anon, align 4
  %6 = alloca %union.anon.0, align 4
  %7 = alloca %union.anon.1, align 4
  %8 = load i8*, i8** @Xdg_DetectDesktopEnv.outbuf, align 8, !dbg !66
  %9 = icmp eq i8* %8, null, !dbg !68
  br i1 %9, label %10, label %78, !dbg !69

; <label>:10:                                     ; preds = %0
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %1, metadata !70, metadata !127), !dbg !128
  %11 = call %struct._IO_FILE* @popen(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @xdgDetectDEExec, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)), !dbg !129
  store %struct._IO_FILE* %11, %struct._IO_FILE** %1, align 8, !dbg !128
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !dbg !130
  %13 = icmp ne %struct._IO_FILE* %12, null, !dbg !130
  br i1 %13, label %14, label %73, !dbg !132

; <label>:14:                                     ; preds = %10
  call void @llvm.dbg.declare(metadata i64* %2, metadata !133, metadata !127), !dbg !135
  call void @llvm.dbg.declare(metadata i32* %3, metadata !136, metadata !127), !dbg !137
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !dbg !138
  %16 = call i32 @StdIO_ReadNextLine(%struct._IO_FILE* %15, i8** @Xdg_DetectDesktopEnv.outbuf, i64 25, i64* %2), !dbg !140
  %17 = icmp eq i32 %16, 2, !dbg !141
  br i1 %17, label %18, label %46, !dbg !142

; <label>:18:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !143, metadata !127), !dbg !145
  store i32 0, i32* %4, align 4, !dbg !146
  br label %19, !dbg !148

; <label>:19:                                     ; preds = %42, %18
  %20 = load i32, i32* %4, align 4, !dbg !149
  %21 = sext i32 %20 to i64, !dbg !149
  %22 = load i64, i64* %2, align 8, !dbg !152
  %23 = icmp ult i64 %21, %22, !dbg !153
  br i1 %23, label %24, label %45, !dbg !154

; <label>:24:                                     ; preds = %19
  %25 = load i32, i32* %4, align 4, !dbg !155
  %26 = sext i32 %25 to i64, !dbg !158
  %27 = load i8*, i8** @Xdg_DetectDesktopEnv.outbuf, align 8, !dbg !158
  %28 = getelementptr inbounds i8, i8* %27, i64 %26, !dbg !158
  %29 = load i8, i8* %28, align 1, !dbg !158
  %30 = sext i8 %29 to i32, !dbg !159
  %31 = sext i32 %30 to i64, !dbg !160
  %32 = call i16** @__ctype_b_loc() #1, !dbg !161
  %33 = load i16*, i16** %32, align 8, !dbg !162
  %34 = getelementptr inbounds i16, i16* %33, i64 %31, !dbg !160
  %35 = load i16, i16* %34, align 2, !dbg !160
  %36 = zext i16 %35 to i32, !dbg !160
  %37 = and i32 %36, 8, !dbg !163
  %38 = icmp ne i32 %37, 0, !dbg !163
  br i1 %38, label %41, label %39, !dbg !164

; <label>:39:                                     ; preds = %24
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.Xdg_DetectDesktopEnv, i32 0, i32 0)), !dbg !165
  %40 = load i8*, i8** @Xdg_DetectDesktopEnv.outbuf, align 8, !dbg !167
  call void @free(i8* %40) #5, !dbg !168
  store i8* null, i8** @Xdg_DetectDesktopEnv.outbuf, align 8, !dbg !169
  br label %45, !dbg !170

; <label>:41:                                     ; preds = %24
  br label %42, !dbg !171

; <label>:42:                                     ; preds = %41
  %43 = load i32, i32* %4, align 4, !dbg !172
  %44 = add nsw i32 %43, 1, !dbg !172
  store i32 %44, i32* %4, align 4, !dbg !172
  br label %19, !dbg !174, !llvm.loop !175

; <label>:45:                                     ; preds = %39, %19
  br label %46, !dbg !177

; <label>:46:                                     ; preds = %45, %14
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !dbg !178
  %48 = call i32 @pclose(%struct._IO_FILE* %47), !dbg !179
  store i32 %48, i32* %3, align 4, !dbg !180
  %49 = bitcast %union.anon* %5 to i32*, !dbg !181
  %50 = load i32, i32* %3, align 4, !dbg !183
  store i32 %50, i32* %49, align 4, !dbg !181
  %51 = bitcast %union.anon* %5 to i32*, !dbg !184
  %52 = load i32, i32* %51, align 4, !dbg !184
  %53 = and i32 %52, 127, !dbg !185
  %54 = icmp eq i32 %53, 0, !dbg !181
  br i1 %54, label %55, label %63, !dbg !186

; <label>:55:                                     ; preds = %46
  %56 = bitcast %union.anon.0* %6 to i32*, !dbg !187
  %57 = load i32, i32* %3, align 4, !dbg !189
  store i32 %57, i32* %56, align 4, !dbg !187
  %58 = bitcast %union.anon.0* %6 to i32*, !dbg !190
  %59 = load i32, i32* %58, align 4, !dbg !190
  %60 = and i32 %59, 65280, !dbg !191
  %61 = ashr i32 %60, 8, !dbg !192
  %62 = icmp ne i32 %61, 0, !dbg !187
  br i1 %62, label %63, label %72, !dbg !193

; <label>:63:                                     ; preds = %55, %46
  %64 = load i32, i32* %3, align 4, !dbg !194
  %65 = bitcast %union.anon.1* %7 to i32*, !dbg !196
  %66 = load i32, i32* %3, align 4, !dbg !197
  store i32 %66, i32* %65, align 4, !dbg !196
  %67 = bitcast %union.anon.1* %7 to i32*, !dbg !198
  %68 = load i32, i32* %67, align 4, !dbg !198
  %69 = and i32 %68, 65280, !dbg !199
  %70 = ashr i32 %69, 8, !dbg !200
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 128, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.Xdg_DetectDesktopEnv, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @xdgDetectDEExec, i32 0, i32 0), i32 %64, i32 %70), !dbg !201
  %71 = load i8*, i8** @Xdg_DetectDesktopEnv.outbuf, align 8, !dbg !202
  call void @free(i8* %71) #5, !dbg !203
  store i8* null, i8** @Xdg_DetectDesktopEnv.outbuf, align 8, !dbg !204
  br label %72, !dbg !205

; <label>:72:                                     ; preds = %63, %55
  br label %73, !dbg !206

; <label>:73:                                     ; preds = %72, %10
  %74 = load i8*, i8** @Xdg_DetectDesktopEnv.outbuf, align 8, !dbg !207
  %75 = icmp eq i8* %74, null, !dbg !209
  br i1 %75, label %76, label %77, !dbg !210

; <label>:76:                                     ; preds = %73
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8** @Xdg_DetectDesktopEnv.outbuf, align 8, !dbg !211
  br label %77, !dbg !213

; <label>:77:                                     ; preds = %76, %73
  br label %78, !dbg !214

; <label>:78:                                     ; preds = %77, %0
  %79 = load i8*, i8** @Xdg_DetectDesktopEnv.outbuf, align 8, !dbg !215
  ret i8* %79, !dbg !216
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._IO_FILE* @popen(i8*, i8*) #2

declare i32 @StdIO_ReadNextLine(%struct._IO_FILE*, i8**, i64, i64*) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

declare void @g_log(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind
declare void @free(i8*) #4

declare i32 @pclose(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!63, !64}
!llvm.ident = !{!65}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !36, globals: !44)
!1 = !DIFile(filename: "libXdg_la-xdg.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1112")
!2 = !{!3, !9, !24}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 34, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmstdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1112")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "StdIO_Error", value: 0)
!7 = !DIEnumerator(name: "StdIO_EOF", value: 1)
!8 = !DIEnumerator(name: "StdIO_Success", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 46, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/open-vm-tools/line1112")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!12 = !DIEnumerator(name: "_ISupper", value: 256)
!13 = !DIEnumerator(name: "_ISlower", value: 512)
!14 = !DIEnumerator(name: "_ISalpha", value: 1024)
!15 = !DIEnumerator(name: "_ISdigit", value: 2048)
!16 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!17 = !DIEnumerator(name: "_ISspace", value: 8192)
!18 = !DIEnumerator(name: "_ISprint", value: 16384)
!19 = !DIEnumerator(name: "_ISgraph", value: 32768)
!20 = !DIEnumerator(name: "_ISblank", value: 1)
!21 = !DIEnumerator(name: "_IScntrl", value: 2)
!22 = !DIEnumerator(name: "_ISpunct", value: 4)
!23 = !DIEnumerator(name: "_ISalnum", value: 8)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 51, size: 32, align: 32, elements: !26)
!25 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1112")
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35}
!27 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!28 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!29 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!30 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!31 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!32 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!33 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!34 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!35 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!36 = !{!37, !38, !39, !40}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!38 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!39 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !42, line: 46, baseType: !43)
!42 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1112")
!43 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!44 = !{!45, !54, !59}
!45 = distinct !DIGlobalVariable(name: "outbuf", scope: !46, file: !47, line: 79, type: !53, isLocal: true, isDefinition: true, variable: i8** @Xdg_DetectDesktopEnv.outbuf)
!46 = distinct !DISubprogram(name: "Xdg_DetectDesktopEnv", scope: !47, file: !47, line: 77, type: !48, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !52)
!47 = !DIFile(filename: "xdg.c", directory: "/home/lichi/Desktop/open-vm-tools/line1112")
!48 = !DISubroutineType(types: !49)
!49 = !{!50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!52 = !{}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!54 = distinct !DIGlobalVariable(name: "maxSize", scope: !46, file: !47, line: 85, type: !55, isLocal: true, isDefinition: true, variable: i64* @Xdg_DetectDesktopEnv.maxSize)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !57, line: 216, baseType: !58)
!57 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1112")
!58 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!59 = distinct !DIGlobalVariable(name: "xdgDetectDEExec", scope: !0, file: !47, line: 45, type: !60, isLocal: true, isDefinition: true, variable: [21 x i8]* @xdgDetectDEExec)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 168, align: 8, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 21)
!63 = !{i32 2, !"Dwarf Version", i32 4}
!64 = !{i32 2, !"Debug Info Version", i32 3}
!65 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!66 = !DILocation(line: 81, column: 8, scope: !67)
!67 = distinct !DILexicalBlock(scope: !46, file: !47, line: 81, column: 8)
!68 = !DILocation(line: 81, column: 15, scope: !67)
!69 = !DILocation(line: 81, column: 8, scope: !46)
!70 = !DILocalVariable(name: "cmdPipe", scope: !71, file: !47, line: 82, type: !72)
!71 = distinct !DILexicalBlock(scope: !67, file: !47, line: 81, column: 23)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !74, line: 48, baseType: !75)
!74 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1112")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !76, line: 241, size: 1728, align: 64, elements: !77)
!76 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1112")
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !98, !99, !100, !101, !105, !106, !108, !112, !115, !117, !118, !119, !120, !121, !122, !123}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !75, file: !76, line: 242, baseType: !38, size: 32, align: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !75, file: !76, line: 247, baseType: !53, size: 64, align: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !75, file: !76, line: 248, baseType: !53, size: 64, align: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !75, file: !76, line: 249, baseType: !53, size: 64, align: 64, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !75, file: !76, line: 250, baseType: !53, size: 64, align: 64, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !75, file: !76, line: 251, baseType: !53, size: 64, align: 64, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !75, file: !76, line: 252, baseType: !53, size: 64, align: 64, offset: 384)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !75, file: !76, line: 253, baseType: !53, size: 64, align: 64, offset: 448)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !75, file: !76, line: 254, baseType: !53, size: 64, align: 64, offset: 512)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !75, file: !76, line: 256, baseType: !53, size: 64, align: 64, offset: 576)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !75, file: !76, line: 257, baseType: !53, size: 64, align: 64, offset: 640)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !75, file: !76, line: 258, baseType: !53, size: 64, align: 64, offset: 704)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !75, file: !76, line: 260, baseType: !91, size: 64, align: 64, offset: 768)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !76, line: 156, size: 192, align: 64, elements: !93)
!93 = !{!94, !95, !97}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !92, file: !76, line: 157, baseType: !91, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !92, file: !76, line: 158, baseType: !96, size: 64, align: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !92, file: !76, line: 162, baseType: !38, size: 32, align: 32, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !75, file: !76, line: 262, baseType: !96, size: 64, align: 64, offset: 832)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !75, file: !76, line: 264, baseType: !38, size: 32, align: 32, offset: 896)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !75, file: !76, line: 268, baseType: !38, size: 32, align: 32, offset: 928)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !75, file: !76, line: 270, baseType: !102, size: 64, align: 64, offset: 960)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !103, line: 131, baseType: !104)
!103 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1112")
!104 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !75, file: !76, line: 274, baseType: !39, size: 16, align: 16, offset: 1024)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !75, file: !76, line: 275, baseType: !107, size: 8, align: 8, offset: 1040)
!107 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !75, file: !76, line: 276, baseType: !109, size: 8, align: 8, offset: 1048)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, align: 8, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 1)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !75, file: !76, line: 280, baseType: !113, size: 64, align: 64, offset: 1088)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !76, line: 150, baseType: null)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !75, file: !76, line: 289, baseType: !116, size: 64, align: 64, offset: 1152)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !103, line: 132, baseType: !104)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !75, file: !76, line: 297, baseType: !37, size: 64, align: 64, offset: 1216)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !75, file: !76, line: 298, baseType: !37, size: 64, align: 64, offset: 1280)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !75, file: !76, line: 299, baseType: !37, size: 64, align: 64, offset: 1344)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !75, file: !76, line: 300, baseType: !37, size: 64, align: 64, offset: 1408)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !75, file: !76, line: 302, baseType: !56, size: 64, align: 64, offset: 1472)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !75, file: !76, line: 303, baseType: !38, size: 32, align: 32, offset: 1536)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !75, file: !76, line: 305, baseType: !124, size: 160, align: 8, offset: 1568)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, align: 8, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 20)
!127 = !DIExpression()
!128 = !DILocation(line: 82, column: 13, scope: !71)
!129 = !DILocation(line: 82, column: 23, scope: !71)
!130 = !DILocation(line: 84, column: 11, scope: !131)
!131 = distinct !DILexicalBlock(scope: !71, file: !47, line: 84, column: 11)
!132 = !DILocation(line: 84, column: 11, scope: !71)
!133 = !DILocalVariable(name: "outLen", scope: !134, file: !47, line: 86, type: !56)
!134 = distinct !DILexicalBlock(scope: !131, file: !47, line: 84, column: 20)
!135 = !DILocation(line: 86, column: 17, scope: !134)
!136 = !DILocalVariable(name: "status", scope: !134, file: !47, line: 87, type: !38)
!137 = !DILocation(line: 87, column: 14, scope: !134)
!138 = !DILocation(line: 89, column: 34, scope: !139)
!139 = distinct !DILexicalBlock(scope: !134, file: !47, line: 89, column: 15)
!140 = !DILocation(line: 89, column: 15, scope: !139)
!141 = !DILocation(line: 90, column: 14, scope: !139)
!142 = !DILocation(line: 89, column: 15, scope: !134)
!143 = !DILocalVariable(name: "i", scope: !144, file: !47, line: 91, type: !38)
!144 = distinct !DILexicalBlock(scope: !139, file: !47, line: 90, column: 32)
!145 = !DILocation(line: 91, column: 17, scope: !144)
!146 = !DILocation(line: 93, column: 20, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !47, line: 93, column: 13)
!148 = !DILocation(line: 93, column: 18, scope: !147)
!149 = !DILocation(line: 93, column: 25, scope: !150)
!150 = !DILexicalBlockFile(scope: !151, file: !47, discriminator: 1)
!151 = distinct !DILexicalBlock(scope: !147, file: !47, line: 93, column: 13)
!152 = !DILocation(line: 93, column: 29, scope: !150)
!153 = !DILocation(line: 93, column: 27, scope: !150)
!154 = !DILocation(line: 93, column: 13, scope: !150)
!155 = !DILocation(line: 94, column: 27, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !47, line: 94, column: 20)
!157 = distinct !DILexicalBlock(scope: !151, file: !47, line: 93, column: 42)
!158 = !DILocation(line: 94, column: 20, scope: !156)
!159 = !DILocation(line: 94, column: 41, scope: !156)
!160 = !DILocation(line: 94, column: 21, scope: !156)
!161 = !DILocation(line: 94, column: 23, scope: !156)
!162 = !DILocation(line: 94, column: 22, scope: !156)
!163 = !DILocation(line: 94, column: 24, scope: !156)
!164 = !DILocation(line: 94, column: 20, scope: !157)
!165 = !DILocation(line: 95, column: 19, scope: !166)
!166 = distinct !DILexicalBlock(scope: !156, file: !47, line: 94, column: 40)
!167 = !DILocation(line: 96, column: 24, scope: !166)
!168 = !DILocation(line: 96, column: 19, scope: !166)
!169 = !DILocation(line: 97, column: 26, scope: !166)
!170 = !DILocation(line: 98, column: 19, scope: !166)
!171 = !DILocation(line: 100, column: 13, scope: !157)
!172 = !DILocation(line: 93, column: 38, scope: !173)
!173 = !DILexicalBlockFile(scope: !151, file: !47, discriminator: 2)
!174 = !DILocation(line: 93, column: 13, scope: !173)
!175 = distinct !{!175, !176}
!176 = !DILocation(line: 93, column: 13, scope: !144)
!177 = !DILocation(line: 101, column: 10, scope: !144)
!178 = !DILocation(line: 103, column: 26, scope: !134)
!179 = !DILocation(line: 103, column: 19, scope: !134)
!180 = !DILocation(line: 103, column: 17, scope: !134)
!181 = !DILocation(line: 104, column: 34, scope: !182)
!182 = distinct !DILexicalBlock(scope: !134, file: !47, line: 104, column: 14)
!183 = !DILocation(line: 104, column: 14, scope: !182)
!184 = !DILocation(line: 104, column: 19, scope: !182)
!185 = !DILocation(line: 104, column: 26, scope: !182)
!186 = !DILocation(line: 104, column: 32, scope: !182)
!187 = !DILocation(line: 104, column: 55, scope: !188)
!188 = !DILexicalBlockFile(scope: !182, file: !47, discriminator: 1)
!189 = !DILocation(line: 104, column: 35, scope: !188)
!190 = !DILocation(line: 104, column: 40, scope: !188)
!191 = !DILocation(line: 104, column: 47, scope: !188)
!192 = !DILocation(line: 104, column: 57, scope: !188)
!193 = !DILocation(line: 104, column: 14, scope: !188)
!194 = !DILocation(line: 105, column: 121, scope: !195)
!195 = distinct !DILexicalBlock(scope: !182, file: !47, line: 104, column: 61)
!196 = !DILocation(line: 105, column: 32, scope: !195)
!197 = !DILocation(line: 105, column: 12, scope: !195)
!198 = !DILocation(line: 105, column: 17, scope: !195)
!199 = !DILocation(line: 105, column: 24, scope: !195)
!200 = !DILocation(line: 105, column: 34, scope: !195)
!201 = !DILocation(line: 105, column: 13, scope: !195)
!202 = !DILocation(line: 107, column: 18, scope: !195)
!203 = !DILocation(line: 107, column: 13, scope: !195)
!204 = !DILocation(line: 108, column: 20, scope: !195)
!205 = !DILocation(line: 109, column: 10, scope: !195)
!206 = !DILocation(line: 110, column: 7, scope: !134)
!207 = !DILocation(line: 112, column: 11, scope: !208)
!208 = distinct !DILexicalBlock(scope: !71, file: !47, line: 112, column: 11)
!209 = !DILocation(line: 112, column: 18, scope: !208)
!210 = !DILocation(line: 112, column: 11, scope: !71)
!211 = !DILocation(line: 113, column: 17, scope: !212)
!212 = distinct !DILexicalBlock(scope: !208, file: !47, line: 112, column: 26)
!213 = !DILocation(line: 114, column: 7, scope: !212)
!214 = !DILocation(line: 115, column: 4, scope: !71)
!215 = !DILocation(line: 117, column: 11, scope: !46)
!216 = !DILocation(line: 117, column: 4, scope: !46)
