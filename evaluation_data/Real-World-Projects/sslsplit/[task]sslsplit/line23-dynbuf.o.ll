; ModuleID = './line23-dynbuf.o.i'
source_filename = "./line23-dynbuf.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dynbuf = type { i8*, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: nounwind uwtable
define noalias %struct.dynbuf* @dynbuf_new_alloc(i64) #0 !dbg !6 {
  %2 = alloca %struct.dynbuf*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.dynbuf*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !22, metadata !23), !dbg !24
  call void @llvm.dbg.declare(metadata %struct.dynbuf** %4, metadata !25, metadata !23), !dbg !26
  %5 = call noalias i8* @malloc(i64 16) #5, !dbg !27
  %6 = bitcast i8* %5 to %struct.dynbuf*, !dbg !27
  store %struct.dynbuf* %6, %struct.dynbuf** %4, align 8, !dbg !29
  %7 = icmp ne %struct.dynbuf* %6, null, !dbg !29
  br i1 %7, label %9, label %8, !dbg !30

; <label>:8:                                      ; preds = %1
  store %struct.dynbuf* null, %struct.dynbuf** %2, align 8, !dbg !31
  br label %23, !dbg !31

; <label>:9:                                      ; preds = %1
  %10 = load i64, i64* %3, align 8, !dbg !32
  %11 = call noalias i8* @malloc(i64 %10) #5, !dbg !34
  %12 = load %struct.dynbuf*, %struct.dynbuf** %4, align 8, !dbg !35
  %13 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %12, i32 0, i32 0, !dbg !36
  store i8* %11, i8** %13, align 8, !dbg !37
  %14 = icmp ne i8* %11, null, !dbg !37
  br i1 %14, label %18, label %15, !dbg !38

; <label>:15:                                     ; preds = %9
  %16 = load %struct.dynbuf*, %struct.dynbuf** %4, align 8, !dbg !39
  %17 = bitcast %struct.dynbuf* %16 to i8*, !dbg !39
  call void @free(i8* %17) #5, !dbg !41
  store %struct.dynbuf* null, %struct.dynbuf** %2, align 8, !dbg !42
  br label %23, !dbg !42

; <label>:18:                                     ; preds = %9
  %19 = load i64, i64* %3, align 8, !dbg !43
  %20 = load %struct.dynbuf*, %struct.dynbuf** %4, align 8, !dbg !44
  %21 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %20, i32 0, i32 1, !dbg !45
  store i64 %19, i64* %21, align 8, !dbg !46
  %22 = load %struct.dynbuf*, %struct.dynbuf** %4, align 8, !dbg !47
  store %struct.dynbuf* %22, %struct.dynbuf** %2, align 8, !dbg !48
  br label %23, !dbg !48

; <label>:23:                                     ; preds = %18, %15, %8
  %24 = load %struct.dynbuf*, %struct.dynbuf** %2, align 8, !dbg !49
  ret %struct.dynbuf* %24, !dbg !49
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define noalias %struct.dynbuf* @dynbuf_new_copy(i8*, i64) #0 !dbg !50 {
  %3 = alloca %struct.dynbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dynbuf*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !56, metadata !23), !dbg !57
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !58, metadata !23), !dbg !59
  call void @llvm.dbg.declare(metadata %struct.dynbuf** %6, metadata !60, metadata !23), !dbg !61
  %7 = call noalias i8* @malloc(i64 16) #5, !dbg !62
  %8 = bitcast i8* %7 to %struct.dynbuf*, !dbg !62
  store %struct.dynbuf* %8, %struct.dynbuf** %6, align 8, !dbg !64
  %9 = icmp ne %struct.dynbuf* %8, null, !dbg !64
  br i1 %9, label %11, label %10, !dbg !65

; <label>:10:                                     ; preds = %2
  store %struct.dynbuf* null, %struct.dynbuf** %3, align 8, !dbg !66
  br label %30, !dbg !66

; <label>:11:                                     ; preds = %2
  %12 = load i64, i64* %5, align 8, !dbg !67
  %13 = call noalias i8* @malloc(i64 %12) #5, !dbg !69
  %14 = load %struct.dynbuf*, %struct.dynbuf** %6, align 8, !dbg !70
  %15 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %14, i32 0, i32 0, !dbg !71
  store i8* %13, i8** %15, align 8, !dbg !72
  %16 = icmp ne i8* %13, null, !dbg !72
  br i1 %16, label %20, label %17, !dbg !73

; <label>:17:                                     ; preds = %11
  %18 = load %struct.dynbuf*, %struct.dynbuf** %6, align 8, !dbg !74
  %19 = bitcast %struct.dynbuf* %18 to i8*, !dbg !74
  call void @free(i8* %19) #5, !dbg !76
  store %struct.dynbuf* null, %struct.dynbuf** %3, align 8, !dbg !77
  br label %30, !dbg !77

; <label>:20:                                     ; preds = %11
  %21 = load %struct.dynbuf*, %struct.dynbuf** %6, align 8, !dbg !78
  %22 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %21, i32 0, i32 0, !dbg !79
  %23 = load i8*, i8** %22, align 8, !dbg !79
  %24 = load i8*, i8** %4, align 8, !dbg !80
  %25 = load i64, i64* %5, align 8, !dbg !81
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 %25, i32 1, i1 false), !dbg !82
  %26 = load i64, i64* %5, align 8, !dbg !83
  %27 = load %struct.dynbuf*, %struct.dynbuf** %6, align 8, !dbg !84
  %28 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %27, i32 0, i32 1, !dbg !85
  store i64 %26, i64* %28, align 8, !dbg !86
  %29 = load %struct.dynbuf*, %struct.dynbuf** %6, align 8, !dbg !87
  store %struct.dynbuf* %29, %struct.dynbuf** %3, align 8, !dbg !88
  br label %30, !dbg !88

; <label>:30:                                     ; preds = %20, %17, %10
  %31 = load %struct.dynbuf*, %struct.dynbuf** %3, align 8, !dbg !89
  ret %struct.dynbuf* %31, !dbg !89
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define noalias %struct.dynbuf* @dynbuf_new_file(i8*) #0 !dbg !90 {
  %2 = alloca %struct.dynbuf*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dynbuf*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !96, metadata !23), !dbg !97
  call void @llvm.dbg.declare(metadata %struct.dynbuf** %4, metadata !98, metadata !23), !dbg !99
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !100, metadata !23), !dbg !160
  %6 = call noalias i8* @malloc(i64 16) #5, !dbg !161
  %7 = bitcast i8* %6 to %struct.dynbuf*, !dbg !161
  store %struct.dynbuf* %7, %struct.dynbuf** %4, align 8, !dbg !163
  %8 = icmp ne %struct.dynbuf* %7, null, !dbg !163
  br i1 %8, label %10, label %9, !dbg !164

; <label>:9:                                      ; preds = %1
  store %struct.dynbuf* null, %struct.dynbuf** %2, align 8, !dbg !165
  br label %61, !dbg !165

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %3, align 8, !dbg !166
  %12 = call %struct._IO_FILE* @fopen(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)), !dbg !167
  store %struct._IO_FILE* %12, %struct._IO_FILE** %5, align 8, !dbg !168
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !169
  %14 = icmp ne %struct._IO_FILE* %13, null, !dbg !169
  br i1 %14, label %18, label %15, !dbg !171

; <label>:15:                                     ; preds = %10
  %16 = load %struct.dynbuf*, %struct.dynbuf** %4, align 8, !dbg !172
  %17 = bitcast %struct.dynbuf* %16 to i8*, !dbg !172
  call void @free(i8* %17) #5, !dbg !174
  store %struct.dynbuf* null, %struct.dynbuf** %2, align 8, !dbg !175
  br label %61, !dbg !175

; <label>:18:                                     ; preds = %10
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !176
  %20 = call i32 @fseek(%struct._IO_FILE* %19, i64 0, i32 2), !dbg !177
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !178
  %22 = call i64 @ftell(%struct._IO_FILE* %21), !dbg !179
  %23 = load %struct.dynbuf*, %struct.dynbuf** %4, align 8, !dbg !180
  %24 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %23, i32 0, i32 1, !dbg !181
  store i64 %22, i64* %24, align 8, !dbg !182
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !183
  %26 = call i32 @fseek(%struct._IO_FILE* %25, i64 0, i32 0), !dbg !184
  %27 = load %struct.dynbuf*, %struct.dynbuf** %4, align 8, !dbg !185
  %28 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %27, i32 0, i32 1, !dbg !187
  %29 = load i64, i64* %28, align 8, !dbg !187
  %30 = call noalias i8* @malloc(i64 %29) #5, !dbg !188
  %31 = load %struct.dynbuf*, %struct.dynbuf** %4, align 8, !dbg !189
  %32 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %31, i32 0, i32 0, !dbg !190
  store i8* %30, i8** %32, align 8, !dbg !191
  %33 = icmp ne i8* %30, null, !dbg !191
  br i1 %33, label %39, label %34, !dbg !192

; <label>:34:                                     ; preds = %18
  %35 = load %struct.dynbuf*, %struct.dynbuf** %4, align 8, !dbg !193
  %36 = bitcast %struct.dynbuf* %35 to i8*, !dbg !193
  call void @free(i8* %36) #5, !dbg !195
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !196
  %38 = call i32 @fclose(%struct._IO_FILE* %37), !dbg !197
  store %struct.dynbuf* null, %struct.dynbuf** %2, align 8, !dbg !198
  br label %61, !dbg !198

; <label>:39:                                     ; preds = %18
  %40 = load %struct.dynbuf*, %struct.dynbuf** %4, align 8, !dbg !199
  %41 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %40, i32 0, i32 0, !dbg !201
  %42 = load i8*, i8** %41, align 8, !dbg !201
  %43 = load %struct.dynbuf*, %struct.dynbuf** %4, align 8, !dbg !202
  %44 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %43, i32 0, i32 1, !dbg !203
  %45 = load i64, i64* %44, align 8, !dbg !203
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !204
  %47 = call i64 @fread(i8* %42, i64 %45, i64 1, %struct._IO_FILE* %46), !dbg !205
  %48 = icmp ne i64 %47, 1, !dbg !206
  br i1 %48, label %49, label %57, !dbg !207

; <label>:49:                                     ; preds = %39
  %50 = load %struct.dynbuf*, %struct.dynbuf** %4, align 8, !dbg !208
  %51 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %50, i32 0, i32 0, !dbg !210
  %52 = load i8*, i8** %51, align 8, !dbg !210
  call void @free(i8* %52) #5, !dbg !211
  %53 = load %struct.dynbuf*, %struct.dynbuf** %4, align 8, !dbg !212
  %54 = bitcast %struct.dynbuf* %53 to i8*, !dbg !212
  call void @free(i8* %54) #5, !dbg !213
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !214
  %56 = call i32 @fclose(%struct._IO_FILE* %55), !dbg !215
  store %struct.dynbuf* null, %struct.dynbuf** %2, align 8, !dbg !216
  br label %61, !dbg !216

; <label>:57:                                     ; preds = %39
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !217
  %59 = call i32 @fclose(%struct._IO_FILE* %58), !dbg !218
  %60 = load %struct.dynbuf*, %struct.dynbuf** %4, align 8, !dbg !219
  store %struct.dynbuf* %60, %struct.dynbuf** %2, align 8, !dbg !220
  br label %61, !dbg !220

; <label>:61:                                     ; preds = %57, %49, %34, %15, %9
  %62 = load %struct.dynbuf*, %struct.dynbuf** %2, align 8, !dbg !221
  ret %struct.dynbuf* %62, !dbg !221
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #4

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #4

declare i64 @ftell(%struct._IO_FILE*) #4

declare i32 @fclose(%struct._IO_FILE*) #4

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #4

; Function Attrs: nounwind uwtable
define noalias %struct.dynbuf* @dynbuf_new(i8*, i64) #0 !dbg !222 {
  %3 = alloca %struct.dynbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dynbuf*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !225, metadata !23), !dbg !226
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !227, metadata !23), !dbg !228
  call void @llvm.dbg.declare(metadata %struct.dynbuf** %6, metadata !229, metadata !23), !dbg !230
  %7 = call noalias i8* @malloc(i64 16) #5, !dbg !231
  %8 = bitcast i8* %7 to %struct.dynbuf*, !dbg !231
  store %struct.dynbuf* %8, %struct.dynbuf** %6, align 8, !dbg !233
  %9 = icmp ne %struct.dynbuf* %8, null, !dbg !233
  br i1 %9, label %11, label %10, !dbg !234

; <label>:10:                                     ; preds = %2
  store %struct.dynbuf* null, %struct.dynbuf** %3, align 8, !dbg !235
  br label %19, !dbg !235

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !236
  %13 = load %struct.dynbuf*, %struct.dynbuf** %6, align 8, !dbg !237
  %14 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %13, i32 0, i32 0, !dbg !238
  store i8* %12, i8** %14, align 8, !dbg !239
  %15 = load i64, i64* %5, align 8, !dbg !240
  %16 = load %struct.dynbuf*, %struct.dynbuf** %6, align 8, !dbg !241
  %17 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %16, i32 0, i32 1, !dbg !242
  store i64 %15, i64* %17, align 8, !dbg !243
  %18 = load %struct.dynbuf*, %struct.dynbuf** %6, align 8, !dbg !244
  store %struct.dynbuf* %18, %struct.dynbuf** %3, align 8, !dbg !245
  br label %19, !dbg !245

; <label>:19:                                     ; preds = %11, %10
  %20 = load %struct.dynbuf*, %struct.dynbuf** %3, align 8, !dbg !246
  ret %struct.dynbuf* %20, !dbg !246
}

; Function Attrs: nounwind uwtable
define void @dynbuf_free(%struct.dynbuf* nonnull) #0 !dbg !247 {
  %2 = alloca %struct.dynbuf*, align 8
  store %struct.dynbuf* %0, %struct.dynbuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.dynbuf** %2, metadata !250, metadata !23), !dbg !251
  %3 = load %struct.dynbuf*, %struct.dynbuf** %2, align 8, !dbg !252
  %4 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %3, i32 0, i32 0, !dbg !253
  %5 = load i8*, i8** %4, align 8, !dbg !253
  call void @free(i8* %5) #5, !dbg !254
  %6 = load %struct.dynbuf*, %struct.dynbuf** %2, align 8, !dbg !255
  %7 = bitcast %struct.dynbuf* %6 to i8*, !dbg !255
  call void @free(i8* %7) #5, !dbg !256
  ret void, !dbg !257
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "line23-dynbuf.o.i", directory: "/home/lichi/Desktop/sslsplit/task1")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "dynbuf_new_alloc", scope: !7, file: !7, line: 43, type: !8, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "dynbuf.c", directory: "/home/lichi/Desktop/sslsplit/task1")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !19}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "dynbuf_t", file: !12, line: 39, baseType: !13)
!12 = !DIFile(filename: "dynbuf.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dynbuf", file: !12, line: 36, size: 128, align: 64, elements: !14)
!14 = !{!15, !18}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !13, file: !12, line: 37, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !13, file: !12, line: 38, baseType: !19, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 216, baseType: !21)
!20 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!21 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!22 = !DILocalVariable(name: "sz", arg: 1, scope: !6, file: !7, line: 43, type: !19)
!23 = !DIExpression()
!24 = !DILocation(line: 43, column: 25, scope: !6)
!25 = !DILocalVariable(name: "db", scope: !6, file: !7, line: 45, type: !10)
!26 = !DILocation(line: 45, column: 12, scope: !6)
!27 = !DILocation(line: 47, column: 13, scope: !28)
!28 = distinct !DILexicalBlock(scope: !6, file: !7, line: 47, column: 6)
!29 = !DILocation(line: 47, column: 11, scope: !28)
!30 = !DILocation(line: 47, column: 6, scope: !6)
!31 = !DILocation(line: 48, column: 3, scope: !28)
!32 = !DILocation(line: 49, column: 25, scope: !33)
!33 = distinct !DILexicalBlock(scope: !6, file: !7, line: 49, column: 6)
!34 = !DILocation(line: 49, column: 18, scope: !33)
!35 = !DILocation(line: 49, column: 8, scope: !33)
!36 = !DILocation(line: 49, column: 12, scope: !33)
!37 = !DILocation(line: 49, column: 16, scope: !33)
!38 = !DILocation(line: 49, column: 6, scope: !6)
!39 = !DILocation(line: 50, column: 8, scope: !40)
!40 = distinct !DILexicalBlock(scope: !33, file: !7, line: 49, column: 31)
!41 = !DILocation(line: 50, column: 3, scope: !40)
!42 = !DILocation(line: 51, column: 3, scope: !40)
!43 = !DILocation(line: 53, column: 11, scope: !6)
!44 = !DILocation(line: 53, column: 2, scope: !6)
!45 = !DILocation(line: 53, column: 6, scope: !6)
!46 = !DILocation(line: 53, column: 9, scope: !6)
!47 = !DILocation(line: 54, column: 9, scope: !6)
!48 = !DILocation(line: 54, column: 2, scope: !6)
!49 = !DILocation(line: 55, column: 1, scope: !6)
!50 = distinct !DISubprogram(name: "dynbuf_new_copy", scope: !7, file: !7, line: 61, type: !51, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!51 = !DISubroutineType(types: !52)
!52 = !{!10, !53, !55}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!56 = !DILocalVariable(name: "buf", arg: 1, scope: !50, file: !7, line: 61, type: !53)
!57 = !DILocation(line: 61, column: 38, scope: !50)
!58 = !DILocalVariable(name: "sz", arg: 2, scope: !50, file: !7, line: 61, type: !55)
!59 = !DILocation(line: 61, column: 56, scope: !50)
!60 = !DILocalVariable(name: "db", scope: !50, file: !7, line: 63, type: !10)
!61 = !DILocation(line: 63, column: 12, scope: !50)
!62 = !DILocation(line: 65, column: 13, scope: !63)
!63 = distinct !DILexicalBlock(scope: !50, file: !7, line: 65, column: 6)
!64 = !DILocation(line: 65, column: 11, scope: !63)
!65 = !DILocation(line: 65, column: 6, scope: !50)
!66 = !DILocation(line: 66, column: 3, scope: !63)
!67 = !DILocation(line: 67, column: 25, scope: !68)
!68 = distinct !DILexicalBlock(scope: !50, file: !7, line: 67, column: 6)
!69 = !DILocation(line: 67, column: 18, scope: !68)
!70 = !DILocation(line: 67, column: 8, scope: !68)
!71 = !DILocation(line: 67, column: 12, scope: !68)
!72 = !DILocation(line: 67, column: 16, scope: !68)
!73 = !DILocation(line: 67, column: 6, scope: !50)
!74 = !DILocation(line: 68, column: 8, scope: !75)
!75 = distinct !DILexicalBlock(scope: !68, file: !7, line: 67, column: 31)
!76 = !DILocation(line: 68, column: 3, scope: !75)
!77 = !DILocation(line: 69, column: 3, scope: !75)
!78 = !DILocation(line: 71, column: 9, scope: !50)
!79 = !DILocation(line: 71, column: 13, scope: !50)
!80 = !DILocation(line: 71, column: 18, scope: !50)
!81 = !DILocation(line: 71, column: 23, scope: !50)
!82 = !DILocation(line: 71, column: 2, scope: !50)
!83 = !DILocation(line: 72, column: 11, scope: !50)
!84 = !DILocation(line: 72, column: 2, scope: !50)
!85 = !DILocation(line: 72, column: 6, scope: !50)
!86 = !DILocation(line: 72, column: 9, scope: !50)
!87 = !DILocation(line: 73, column: 9, scope: !50)
!88 = !DILocation(line: 73, column: 2, scope: !50)
!89 = !DILocation(line: 74, column: 1, scope: !50)
!90 = distinct !DISubprogram(name: "dynbuf_new_file", scope: !7, file: !7, line: 81, type: !91, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!91 = !DISubroutineType(types: !92)
!92 = !{!10, !93}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!95 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!96 = !DILocalVariable(name: "filename", arg: 1, scope: !90, file: !7, line: 81, type: !93)
!97 = !DILocation(line: 81, column: 29, scope: !90)
!98 = !DILocalVariable(name: "db", scope: !90, file: !7, line: 83, type: !10)
!99 = !DILocation(line: 83, column: 12, scope: !90)
!100 = !DILocalVariable(name: "f", scope: !90, file: !7, line: 84, type: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !103, line: 48, baseType: !104)
!103 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !105, line: 241, size: 1728, align: 64, elements: !106)
!105 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!106 = !{!107, !109, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !129, !130, !131, !132, !136, !138, !140, !144, !147, !149, !151, !152, !153, !154, !155, !156}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !104, file: !105, line: 242, baseType: !108, size: 32, align: 32)
!108 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !104, file: !105, line: 247, baseType: !110, size: 64, align: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !104, file: !105, line: 248, baseType: !110, size: 64, align: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !104, file: !105, line: 249, baseType: !110, size: 64, align: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !104, file: !105, line: 250, baseType: !110, size: 64, align: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !104, file: !105, line: 251, baseType: !110, size: 64, align: 64, offset: 320)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !104, file: !105, line: 252, baseType: !110, size: 64, align: 64, offset: 384)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !104, file: !105, line: 253, baseType: !110, size: 64, align: 64, offset: 448)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !104, file: !105, line: 254, baseType: !110, size: 64, align: 64, offset: 512)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !104, file: !105, line: 256, baseType: !110, size: 64, align: 64, offset: 576)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !104, file: !105, line: 257, baseType: !110, size: 64, align: 64, offset: 640)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !104, file: !105, line: 258, baseType: !110, size: 64, align: 64, offset: 704)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !104, file: !105, line: 260, baseType: !122, size: 64, align: 64, offset: 768)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !105, line: 156, size: 192, align: 64, elements: !124)
!124 = !{!125, !126, !128}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !123, file: !105, line: 157, baseType: !122, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !123, file: !105, line: 158, baseType: !127, size: 64, align: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !123, file: !105, line: 162, baseType: !108, size: 32, align: 32, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !104, file: !105, line: 262, baseType: !127, size: 64, align: 64, offset: 832)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !104, file: !105, line: 264, baseType: !108, size: 32, align: 32, offset: 896)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !104, file: !105, line: 268, baseType: !108, size: 32, align: 32, offset: 928)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !104, file: !105, line: 270, baseType: !133, size: 64, align: 64, offset: 960)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !134, line: 131, baseType: !135)
!134 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!135 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !104, file: !105, line: 274, baseType: !137, size: 16, align: 16, offset: 1024)
!137 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !104, file: !105, line: 275, baseType: !139, size: 8, align: 8, offset: 1040)
!139 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !104, file: !105, line: 276, baseType: !141, size: 8, align: 8, offset: 1048)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 8, align: 8, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 1)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !104, file: !105, line: 280, baseType: !145, size: 64, align: 64, offset: 1088)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !105, line: 150, baseType: null)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !104, file: !105, line: 289, baseType: !148, size: 64, align: 64, offset: 1152)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !134, line: 132, baseType: !135)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !104, file: !105, line: 297, baseType: !150, size: 64, align: 64, offset: 1216)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !104, file: !105, line: 298, baseType: !150, size: 64, align: 64, offset: 1280)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !104, file: !105, line: 299, baseType: !150, size: 64, align: 64, offset: 1344)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !104, file: !105, line: 300, baseType: !150, size: 64, align: 64, offset: 1408)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !104, file: !105, line: 302, baseType: !19, size: 64, align: 64, offset: 1472)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !104, file: !105, line: 303, baseType: !108, size: 32, align: 32, offset: 1536)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !104, file: !105, line: 305, baseType: !157, size: 160, align: 8, offset: 1568)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 160, align: 8, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 20)
!160 = !DILocation(line: 84, column: 8, scope: !90)
!161 = !DILocation(line: 86, column: 13, scope: !162)
!162 = distinct !DILexicalBlock(scope: !90, file: !7, line: 86, column: 6)
!163 = !DILocation(line: 86, column: 11, scope: !162)
!164 = !DILocation(line: 86, column: 6, scope: !90)
!165 = !DILocation(line: 87, column: 3, scope: !162)
!166 = !DILocation(line: 89, column: 12, scope: !90)
!167 = !DILocation(line: 89, column: 6, scope: !90)
!168 = !DILocation(line: 89, column: 4, scope: !90)
!169 = !DILocation(line: 90, column: 7, scope: !170)
!170 = distinct !DILexicalBlock(scope: !90, file: !7, line: 90, column: 6)
!171 = !DILocation(line: 90, column: 6, scope: !90)
!172 = !DILocation(line: 91, column: 8, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !7, line: 90, column: 10)
!174 = !DILocation(line: 91, column: 3, scope: !173)
!175 = !DILocation(line: 92, column: 3, scope: !173)
!176 = !DILocation(line: 94, column: 8, scope: !90)
!177 = !DILocation(line: 94, column: 2, scope: !90)
!178 = !DILocation(line: 95, column: 17, scope: !90)
!179 = !DILocation(line: 95, column: 11, scope: !90)
!180 = !DILocation(line: 95, column: 2, scope: !90)
!181 = !DILocation(line: 95, column: 6, scope: !90)
!182 = !DILocation(line: 95, column: 9, scope: !90)
!183 = !DILocation(line: 96, column: 8, scope: !90)
!184 = !DILocation(line: 96, column: 2, scope: !90)
!185 = !DILocation(line: 97, column: 25, scope: !186)
!186 = distinct !DILexicalBlock(scope: !90, file: !7, line: 97, column: 6)
!187 = !DILocation(line: 97, column: 29, scope: !186)
!188 = !DILocation(line: 97, column: 18, scope: !186)
!189 = !DILocation(line: 97, column: 8, scope: !186)
!190 = !DILocation(line: 97, column: 12, scope: !186)
!191 = !DILocation(line: 97, column: 16, scope: !186)
!192 = !DILocation(line: 97, column: 6, scope: !90)
!193 = !DILocation(line: 98, column: 8, scope: !194)
!194 = distinct !DILexicalBlock(scope: !186, file: !7, line: 97, column: 35)
!195 = !DILocation(line: 98, column: 3, scope: !194)
!196 = !DILocation(line: 99, column: 10, scope: !194)
!197 = !DILocation(line: 99, column: 3, scope: !194)
!198 = !DILocation(line: 100, column: 3, scope: !194)
!199 = !DILocation(line: 102, column: 12, scope: !200)
!200 = distinct !DILexicalBlock(scope: !90, file: !7, line: 102, column: 6)
!201 = !DILocation(line: 102, column: 16, scope: !200)
!202 = !DILocation(line: 102, column: 21, scope: !200)
!203 = !DILocation(line: 102, column: 25, scope: !200)
!204 = !DILocation(line: 102, column: 32, scope: !200)
!205 = !DILocation(line: 102, column: 6, scope: !200)
!206 = !DILocation(line: 102, column: 35, scope: !200)
!207 = !DILocation(line: 102, column: 6, scope: !90)
!208 = !DILocation(line: 103, column: 8, scope: !209)
!209 = distinct !DILexicalBlock(scope: !200, file: !7, line: 102, column: 41)
!210 = !DILocation(line: 103, column: 12, scope: !209)
!211 = !DILocation(line: 103, column: 3, scope: !209)
!212 = !DILocation(line: 104, column: 8, scope: !209)
!213 = !DILocation(line: 104, column: 3, scope: !209)
!214 = !DILocation(line: 105, column: 10, scope: !209)
!215 = !DILocation(line: 105, column: 3, scope: !209)
!216 = !DILocation(line: 106, column: 3, scope: !209)
!217 = !DILocation(line: 108, column: 9, scope: !90)
!218 = !DILocation(line: 108, column: 2, scope: !90)
!219 = !DILocation(line: 109, column: 9, scope: !90)
!220 = !DILocation(line: 109, column: 2, scope: !90)
!221 = !DILocation(line: 110, column: 1, scope: !90)
!222 = distinct !DISubprogram(name: "dynbuf_new", scope: !7, file: !7, line: 117, type: !223, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!223 = !DISubroutineType(types: !224)
!224 = !{!10, !16, !19}
!225 = !DILocalVariable(name: "buf", arg: 1, scope: !222, file: !7, line: 117, type: !16)
!226 = !DILocation(line: 117, column: 27, scope: !222)
!227 = !DILocalVariable(name: "sz", arg: 2, scope: !222, file: !7, line: 117, type: !19)
!228 = !DILocation(line: 117, column: 39, scope: !222)
!229 = !DILocalVariable(name: "db", scope: !222, file: !7, line: 119, type: !10)
!230 = !DILocation(line: 119, column: 12, scope: !222)
!231 = !DILocation(line: 121, column: 13, scope: !232)
!232 = distinct !DILexicalBlock(scope: !222, file: !7, line: 121, column: 6)
!233 = !DILocation(line: 121, column: 11, scope: !232)
!234 = !DILocation(line: 121, column: 6, scope: !222)
!235 = !DILocation(line: 122, column: 3, scope: !232)
!236 = !DILocation(line: 123, column: 12, scope: !222)
!237 = !DILocation(line: 123, column: 2, scope: !222)
!238 = !DILocation(line: 123, column: 6, scope: !222)
!239 = !DILocation(line: 123, column: 10, scope: !222)
!240 = !DILocation(line: 124, column: 11, scope: !222)
!241 = !DILocation(line: 124, column: 2, scope: !222)
!242 = !DILocation(line: 124, column: 6, scope: !222)
!243 = !DILocation(line: 124, column: 9, scope: !222)
!244 = !DILocation(line: 125, column: 9, scope: !222)
!245 = !DILocation(line: 125, column: 2, scope: !222)
!246 = !DILocation(line: 126, column: 1, scope: !222)
!247 = distinct !DISubprogram(name: "dynbuf_free", scope: !7, file: !7, line: 132, type: !248, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !10}
!250 = !DILocalVariable(name: "db", arg: 1, scope: !247, file: !7, line: 132, type: !10)
!251 = !DILocation(line: 132, column: 23, scope: !247)
!252 = !DILocation(line: 134, column: 7, scope: !247)
!253 = !DILocation(line: 134, column: 11, scope: !247)
!254 = !DILocation(line: 134, column: 2, scope: !247)
!255 = !DILocation(line: 135, column: 7, scope: !247)
!256 = !DILocation(line: 135, column: 2, scope: !247)
!257 = !DILocation(line: 136, column: 1, scope: !247)
