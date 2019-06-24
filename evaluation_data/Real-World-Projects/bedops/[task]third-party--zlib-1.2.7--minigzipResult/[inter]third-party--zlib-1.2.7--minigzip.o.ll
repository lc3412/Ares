; ModuleID = './[inter]third-party--zlib-1.2.7--minigzip.o.i'
source_filename = "./[inter]third-party--zlib-1.2.7--minigzip.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gzFile_s = type { i32, i8*, i64 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@prog = common global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"fread\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"failed gzclose\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"failed fwrite\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"failed fclose\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"%s: filename too long\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c".gz\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"%s: can't gzopen %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"wb6 \00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"gunzip\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"zcat\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.18 = private unnamed_addr constant [20 x i8] c"can't gzdopen stdin\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [21 x i8] c"can't gzdopen stdout\00", align 1

; Function Attrs: nounwind uwtable
define void @error(i8*) #0 !dbg !15 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !20, metadata !21), !dbg !22
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !23
  %4 = load i8*, i8** @prog, align 8, !dbg !24
  %5 = load i8*, i8** %2, align 8, !dbg !25
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* %4, i8* %5), !dbg !26
  call void @exit(i32 1) #6, !dbg !27
  unreachable, !dbg !27
                                                  ; No predecessors!
  ret void, !dbg !28
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define void @gz_compress(%struct._IO_FILE*, %struct.gzFile_s*) #0 !dbg !29 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.gzFile_s*, align 8
  %5 = alloca [16384 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !101, metadata !21), !dbg !102
  store %struct.gzFile_s* %1, %struct.gzFile_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %4, metadata !103, metadata !21), !dbg !104
  call void @llvm.dbg.declare(metadata [16384 x i8]* %5, metadata !105, metadata !21), !dbg !109
  call void @llvm.dbg.declare(metadata i32* %6, metadata !110, metadata !21), !dbg !111
  call void @llvm.dbg.declare(metadata i32* %7, metadata !112, metadata !21), !dbg !113
  br label %8, !dbg !114

; <label>:8:                                      ; preds = %31, %2
  %9 = getelementptr inbounds [16384 x i8], [16384 x i8]* %5, i32 0, i32 0, !dbg !115
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !119
  %11 = call i64 @fread(i8* %9, i64 1, i64 16384, %struct._IO_FILE* %10), !dbg !120
  %12 = trunc i64 %11 to i32, !dbg !121
  store i32 %12, i32* %6, align 4, !dbg !122
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !123
  %14 = call i32 @ferror(%struct._IO_FILE* %13) #7, !dbg !125
  %15 = icmp ne i32 %14, 0, !dbg !125
  br i1 %15, label %16, label %17, !dbg !126

; <label>:16:                                     ; preds = %8
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)), !dbg !127
  call void @exit(i32 1) #6, !dbg !129
  unreachable, !dbg !129

; <label>:17:                                     ; preds = %8
  %18 = load i32, i32* %6, align 4, !dbg !130
  %19 = icmp eq i32 %18, 0, !dbg !132
  br i1 %19, label %20, label %21, !dbg !133

; <label>:20:                                     ; preds = %17
  br label %32, !dbg !134

; <label>:21:                                     ; preds = %17
  %22 = load %struct.gzFile_s*, %struct.gzFile_s** %4, align 8, !dbg !136
  %23 = getelementptr inbounds [16384 x i8], [16384 x i8]* %5, i32 0, i32 0, !dbg !138
  %24 = load i32, i32* %6, align 4, !dbg !139
  %25 = call i32 @gzwrite(%struct.gzFile_s* %22, i8* %23, i32 %24), !dbg !140
  %26 = load i32, i32* %6, align 4, !dbg !141
  %27 = icmp ne i32 %25, %26, !dbg !142
  br i1 %27, label %28, label %31, !dbg !143

; <label>:28:                                     ; preds = %21
  %29 = load %struct.gzFile_s*, %struct.gzFile_s** %4, align 8, !dbg !144
  %30 = call i8* @gzerror(%struct.gzFile_s* %29, i32* %7), !dbg !146
  call void @error(i8* %30), !dbg !147
  br label %31, !dbg !149

; <label>:31:                                     ; preds = %28, %21
  br label %8, !dbg !150, !llvm.loop !152

; <label>:32:                                     ; preds = %20
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !153
  %34 = call i32 @fclose(%struct._IO_FILE* %33), !dbg !154
  %35 = load %struct.gzFile_s*, %struct.gzFile_s** %4, align 8, !dbg !155
  %36 = call i32 @gzclose(%struct.gzFile_s* %35), !dbg !157
  %37 = icmp ne i32 %36, 0, !dbg !158
  br i1 %37, label %38, label %39, !dbg !159

; <label>:38:                                     ; preds = %32
  call void @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !160
  br label %39, !dbg !160

; <label>:39:                                     ; preds = %38, %32
  ret void, !dbg !162
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #4

declare void @perror(i8*) #2

declare i32 @gzwrite(%struct.gzFile_s*, i8*, i32) #2

declare i8* @gzerror(%struct.gzFile_s*, i32*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

declare i32 @gzclose(%struct.gzFile_s*) #2

; Function Attrs: nounwind uwtable
define void @gz_uncompress(%struct.gzFile_s*, %struct._IO_FILE*) #0 !dbg !163 {
  %3 = alloca %struct.gzFile_s*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca [16384 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gzFile_s* %0, %struct.gzFile_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %3, metadata !166, metadata !21), !dbg !167
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !168, metadata !21), !dbg !169
  call void @llvm.dbg.declare(metadata [16384 x i8]* %5, metadata !170, metadata !21), !dbg !171
  call void @llvm.dbg.declare(metadata i32* %6, metadata !172, metadata !21), !dbg !173
  call void @llvm.dbg.declare(metadata i32* %7, metadata !174, metadata !21), !dbg !175
  br label %8, !dbg !176

; <label>:8:                                      ; preds = %31, %2
  %9 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8, !dbg !177
  %10 = getelementptr inbounds [16384 x i8], [16384 x i8]* %5, i32 0, i32 0, !dbg !181
  %11 = call i32 @gzread(%struct.gzFile_s* %9, i8* %10, i32 16384), !dbg !182
  store i32 %11, i32* %6, align 4, !dbg !183
  %12 = load i32, i32* %6, align 4, !dbg !184
  %13 = icmp slt i32 %12, 0, !dbg !186
  br i1 %13, label %14, label %17, !dbg !187

; <label>:14:                                     ; preds = %8
  %15 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8, !dbg !188
  %16 = call i8* @gzerror(%struct.gzFile_s* %15, i32* %7), !dbg !190
  call void @error(i8* %16), !dbg !191
  br label %17, !dbg !193

; <label>:17:                                     ; preds = %14, %8
  %18 = load i32, i32* %6, align 4, !dbg !194
  %19 = icmp eq i32 %18, 0, !dbg !196
  br i1 %19, label %20, label %21, !dbg !197

; <label>:20:                                     ; preds = %17
  br label %32, !dbg !198

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds [16384 x i8], [16384 x i8]* %5, i32 0, i32 0, !dbg !200
  %23 = load i32, i32* %6, align 4, !dbg !202
  %24 = zext i32 %23 to i64, !dbg !203
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !204
  %26 = call i64 @fwrite(i8* %22, i64 1, i64 %24, %struct._IO_FILE* %25), !dbg !205
  %27 = trunc i64 %26 to i32, !dbg !206
  %28 = load i32, i32* %6, align 4, !dbg !207
  %29 = icmp ne i32 %27, %28, !dbg !208
  br i1 %29, label %30, label %31, !dbg !209

; <label>:30:                                     ; preds = %21
  call void @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0)), !dbg !210
  br label %31, !dbg !212

; <label>:31:                                     ; preds = %30, %21
  br label %8, !dbg !213, !llvm.loop !215

; <label>:32:                                     ; preds = %20
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !216
  %34 = call i32 @fclose(%struct._IO_FILE* %33), !dbg !218
  %35 = icmp ne i32 %34, 0, !dbg !218
  br i1 %35, label %36, label %37, !dbg !219

; <label>:36:                                     ; preds = %32
  call void @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0)), !dbg !220
  br label %37, !dbg !220

; <label>:37:                                     ; preds = %36, %32
  %38 = load %struct.gzFile_s*, %struct.gzFile_s** %3, align 8, !dbg !222
  %39 = call i32 @gzclose(%struct.gzFile_s* %38), !dbg !224
  %40 = icmp ne i32 %39, 0, !dbg !225
  br i1 %40, label %41, label %42, !dbg !226

; <label>:41:                                     ; preds = %37
  call void @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !227
  br label %42, !dbg !227

; <label>:42:                                     ; preds = %41, %37
  ret void, !dbg !229
}

declare i32 @gzread(%struct.gzFile_s*, i8*, i32) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @file_compress(i8*, i8*) #0 !dbg !230 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct.gzFile_s*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !233, metadata !21), !dbg !234
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !235, metadata !21), !dbg !236
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !237, metadata !21), !dbg !241
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !242, metadata !21), !dbg !243
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %7, metadata !244, metadata !21), !dbg !245
  %8 = load i8*, i8** %3, align 8, !dbg !246
  %9 = call i64 @strlen(i8* %8) #8, !dbg !248
  %10 = add i64 %9, 3, !dbg !249
  %11 = icmp uge i64 %10, 1024, !dbg !250
  br i1 %11, label %12, label %16, !dbg !251

; <label>:12:                                     ; preds = %2
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !252
  %14 = load i8*, i8** @prog, align 8, !dbg !254
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i8* %14), !dbg !255
  call void @exit(i32 1) #6, !dbg !256
  unreachable, !dbg !256

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !257
  %18 = load i8*, i8** %3, align 8, !dbg !258
  %19 = call i8* @strcpy(i8* %17, i8* %18) #7, !dbg !259
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !260
  %21 = call i8* @strcat(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)) #7, !dbg !261
  %22 = load i8*, i8** %3, align 8, !dbg !262
  %23 = call %struct._IO_FILE* @fopen(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0)), !dbg !263
  store %struct._IO_FILE* %23, %struct._IO_FILE** %6, align 8, !dbg !264
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !265
  %25 = icmp eq %struct._IO_FILE* %24, null, !dbg !267
  br i1 %25, label %26, label %28, !dbg !268

; <label>:26:                                     ; preds = %16
  %27 = load i8*, i8** %3, align 8, !dbg !269
  call void @perror(i8* %27), !dbg !271
  call void @exit(i32 1) #6, !dbg !272
  unreachable, !dbg !272

; <label>:28:                                     ; preds = %16
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !273
  %30 = load i8*, i8** %4, align 8, !dbg !274
  %31 = call %struct.gzFile_s* @gzopen(i8* %29, i8* %30), !dbg !275
  store %struct.gzFile_s* %31, %struct.gzFile_s** %7, align 8, !dbg !276
  %32 = load %struct.gzFile_s*, %struct.gzFile_s** %7, align 8, !dbg !277
  %33 = icmp eq %struct.gzFile_s* %32, null, !dbg !279
  br i1 %33, label %34, label %39, !dbg !280

; <label>:34:                                     ; preds = %28
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !281
  %36 = load i8*, i8** @prog, align 8, !dbg !283
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !284
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* %36, i8* %37), !dbg !285
  call void @exit(i32 1) #6, !dbg !286
  unreachable, !dbg !286

; <label>:39:                                     ; preds = %28
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !287
  %41 = load %struct.gzFile_s*, %struct.gzFile_s** %7, align 8, !dbg !288
  call void @gz_compress(%struct._IO_FILE* %40, %struct.gzFile_s* %41), !dbg !289
  %42 = load i8*, i8** %3, align 8, !dbg !290
  %43 = call i32 @unlink(i8* %42), !dbg !291
  ret void, !dbg !292
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #4

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare %struct.gzFile_s* @gzopen(i8*, i8*) #2

declare i32 @unlink(i8*) #2

; Function Attrs: nounwind uwtable
define void @file_uncompress(i8*) #0 !dbg !293 {
  %2 = alloca i8*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct.gzFile_s*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !296, metadata !21), !dbg !297
  call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !298, metadata !21), !dbg !299
  call void @llvm.dbg.declare(metadata i8** %4, metadata !300, metadata !21), !dbg !301
  call void @llvm.dbg.declare(metadata i8** %5, metadata !302, metadata !21), !dbg !303
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !304, metadata !21), !dbg !305
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %7, metadata !306, metadata !21), !dbg !307
  call void @llvm.dbg.declare(metadata i64* %8, metadata !308, metadata !21), !dbg !309
  %9 = load i8*, i8** %2, align 8, !dbg !310
  %10 = call i64 @strlen(i8* %9) #8, !dbg !311
  store i64 %10, i64* %8, align 8, !dbg !309
  %11 = load i64, i64* %8, align 8, !dbg !312
  %12 = add i64 %11, 3, !dbg !314
  %13 = icmp uge i64 %12, 1024, !dbg !315
  br i1 %13, label %14, label %18, !dbg !316

; <label>:14:                                     ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !317
  %16 = load i8*, i8** @prog, align 8, !dbg !319
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i8* %16), !dbg !320
  call void @exit(i32 1) #6, !dbg !321
  unreachable, !dbg !321

; <label>:18:                                     ; preds = %1
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i32 0, i32 0, !dbg !322
  %20 = load i8*, i8** %2, align 8, !dbg !323
  %21 = call i8* @strcpy(i8* %19, i8* %20) #7, !dbg !324
  %22 = load i64, i64* %8, align 8, !dbg !325
  %23 = icmp ugt i64 %22, 3, !dbg !327
  br i1 %23, label %24, label %38, !dbg !328

; <label>:24:                                     ; preds = %18
  %25 = load i8*, i8** %2, align 8, !dbg !329
  %26 = load i64, i64* %8, align 8, !dbg !331
  %27 = getelementptr inbounds i8, i8* %25, i64 %26, !dbg !332
  %28 = getelementptr inbounds i8, i8* %27, i64 -3, !dbg !333
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !334
  %30 = icmp eq i32 %29, 0, !dbg !335
  br i1 %30, label %31, label %38, !dbg !336

; <label>:31:                                     ; preds = %24
  %32 = load i8*, i8** %2, align 8, !dbg !337
  store i8* %32, i8** %4, align 8, !dbg !339
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i32 0, i32 0, !dbg !340
  store i8* %33, i8** %5, align 8, !dbg !341
  %34 = load i64, i64* %8, align 8, !dbg !342
  %35 = sub i64 %34, 3, !dbg !343
  %36 = load i8*, i8** %5, align 8, !dbg !344
  %37 = getelementptr inbounds i8, i8* %36, i64 %35, !dbg !344
  store i8 0, i8* %37, align 1, !dbg !345
  br label %43, !dbg !346

; <label>:38:                                     ; preds = %24, %18
  %39 = load i8*, i8** %2, align 8, !dbg !347
  store i8* %39, i8** %5, align 8, !dbg !349
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i32 0, i32 0, !dbg !350
  store i8* %40, i8** %4, align 8, !dbg !351
  %41 = load i8*, i8** %4, align 8, !dbg !352
  %42 = call i8* @strcat(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)) #7, !dbg !353
  br label %43

; <label>:43:                                     ; preds = %38, %31
  %44 = load i8*, i8** %4, align 8, !dbg !354
  %45 = call %struct.gzFile_s* @gzopen(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0)), !dbg !355
  store %struct.gzFile_s* %45, %struct.gzFile_s** %7, align 8, !dbg !356
  %46 = load %struct.gzFile_s*, %struct.gzFile_s** %7, align 8, !dbg !357
  %47 = icmp eq %struct.gzFile_s* %46, null, !dbg !359
  br i1 %47, label %48, label %53, !dbg !360

; <label>:48:                                     ; preds = %43
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !361
  %50 = load i8*, i8** @prog, align 8, !dbg !363
  %51 = load i8*, i8** %4, align 8, !dbg !364
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* %50, i8* %51), !dbg !365
  call void @exit(i32 1) #6, !dbg !366
  unreachable, !dbg !366

; <label>:53:                                     ; preds = %43
  %54 = load i8*, i8** %5, align 8, !dbg !367
  %55 = call %struct._IO_FILE* @fopen(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)), !dbg !368
  store %struct._IO_FILE* %55, %struct._IO_FILE** %6, align 8, !dbg !369
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !370
  %57 = icmp eq %struct._IO_FILE* %56, null, !dbg !372
  br i1 %57, label %58, label %60, !dbg !373

; <label>:58:                                     ; preds = %53
  %59 = load i8*, i8** %2, align 8, !dbg !374
  call void @perror(i8* %59), !dbg !376
  call void @exit(i32 1) #6, !dbg !377
  unreachable, !dbg !377

; <label>:60:                                     ; preds = %53
  %61 = load %struct.gzFile_s*, %struct.gzFile_s** %7, align 8, !dbg !378
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !379
  call void @gz_uncompress(%struct.gzFile_s* %61, %struct._IO_FILE* %62), !dbg !380
  %63 = load i8*, i8** %4, align 8, !dbg !381
  %64 = call i32 @unlink(i8* %63), !dbg !382
  ret void, !dbg !383
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !384 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gzFile_s*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [20 x i8], align 16
  %11 = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !388, metadata !21), !dbg !389
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !390, metadata !21), !dbg !391
  call void @llvm.dbg.declare(metadata i32* %6, metadata !392, metadata !21), !dbg !393
  store i32 0, i32* %6, align 4, !dbg !393
  call void @llvm.dbg.declare(metadata i32* %7, metadata !394, metadata !21), !dbg !395
  store i32 0, i32* %7, align 4, !dbg !395
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %8, metadata !396, metadata !21), !dbg !397
  call void @llvm.dbg.declare(metadata i8** %9, metadata !398, metadata !21), !dbg !399
  call void @llvm.dbg.declare(metadata [20 x i8]* %10, metadata !400, metadata !21), !dbg !401
  %12 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i32 0, i32 0, !dbg !402
  %13 = call i8* @strcpy(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)) #7, !dbg !403
  %14 = load i8**, i8*** %5, align 8, !dbg !404
  %15 = getelementptr inbounds i8*, i8** %14, i64 0, !dbg !404
  %16 = load i8*, i8** %15, align 8, !dbg !404
  store i8* %16, i8** @prog, align 8, !dbg !405
  %17 = load i8**, i8*** %5, align 8, !dbg !406
  %18 = getelementptr inbounds i8*, i8** %17, i64 0, !dbg !406
  %19 = load i8*, i8** %18, align 8, !dbg !406
  %20 = call i8* @strrchr(i8* %19, i32 47) #8, !dbg !407
  store i8* %20, i8** %9, align 8, !dbg !408
  %21 = load i8*, i8** %9, align 8, !dbg !409
  %22 = icmp ne i8* %21, null, !dbg !409
  br i1 %22, label %23, label %26, !dbg !411

; <label>:23:                                     ; preds = %2
  %24 = load i8*, i8** %9, align 8, !dbg !412
  %25 = getelementptr inbounds i8, i8* %24, i32 1, !dbg !412
  store i8* %25, i8** %9, align 8, !dbg !412
  br label %30, !dbg !413

; <label>:26:                                     ; preds = %2
  %27 = load i8**, i8*** %5, align 8, !dbg !414
  %28 = getelementptr inbounds i8*, i8** %27, i64 0, !dbg !414
  %29 = load i8*, i8** %28, align 8, !dbg !414
  store i8* %29, i8** %9, align 8, !dbg !415
  br label %30

; <label>:30:                                     ; preds = %26, %23
  %31 = load i32, i32* %4, align 4, !dbg !416
  %32 = add nsw i32 %31, -1, !dbg !416
  store i32 %32, i32* %4, align 4, !dbg !416
  %33 = load i8**, i8*** %5, align 8, !dbg !417
  %34 = getelementptr inbounds i8*, i8** %33, i32 1, !dbg !417
  store i8** %34, i8*** %5, align 8, !dbg !417
  %35 = load i8*, i8** %9, align 8, !dbg !418
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)) #8, !dbg !420
  %37 = icmp ne i32 %36, 0, !dbg !420
  br i1 %37, label %39, label %38, !dbg !421

; <label>:38:                                     ; preds = %30
  store i32 1, i32* %7, align 4, !dbg !422
  br label %45, !dbg !423

; <label>:39:                                     ; preds = %30
  %40 = load i8*, i8** %9, align 8, !dbg !424
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !426
  %42 = icmp ne i32 %41, 0, !dbg !426
  br i1 %42, label %44, label %43, !dbg !427

; <label>:43:                                     ; preds = %39
  store i32 1, i32* %7, align 4, !dbg !428
  store i32 1, i32* %6, align 4, !dbg !429
  br label %44, !dbg !430

; <label>:44:                                     ; preds = %43, %39
  br label %45

; <label>:45:                                     ; preds = %44, %38
  br label %46, !dbg !431

; <label>:46:                                     ; preds = %122, %45
  %47 = load i32, i32* %4, align 4, !dbg !432
  %48 = icmp sgt i32 %47, 0, !dbg !434
  br i1 %48, label %49, label %127, !dbg !435

; <label>:49:                                     ; preds = %46
  %50 = load i8**, i8*** %5, align 8, !dbg !436
  %51 = load i8*, i8** %50, align 8, !dbg !439
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0)) #8, !dbg !440
  %53 = icmp eq i32 %52, 0, !dbg !441
  br i1 %53, label %54, label %55, !dbg !442

; <label>:54:                                     ; preds = %49
  store i32 1, i32* %6, align 4, !dbg !443
  br label %122, !dbg !444

; <label>:55:                                     ; preds = %49
  %56 = load i8**, i8*** %5, align 8, !dbg !445
  %57 = load i8*, i8** %56, align 8, !dbg !447
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0)) #8, !dbg !448
  %59 = icmp eq i32 %58, 0, !dbg !449
  br i1 %59, label %60, label %61, !dbg !450

; <label>:60:                                     ; preds = %55
  store i32 1, i32* %7, align 4, !dbg !451
  br label %121, !dbg !452

; <label>:61:                                     ; preds = %55
  %62 = load i8**, i8*** %5, align 8, !dbg !453
  %63 = load i8*, i8** %62, align 8, !dbg !455
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0)) #8, !dbg !456
  %65 = icmp eq i32 %64, 0, !dbg !457
  br i1 %65, label %66, label %68, !dbg !458

; <label>:66:                                     ; preds = %61
  %67 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 3, !dbg !459
  store i8 102, i8* %67, align 1, !dbg !460
  br label %120, !dbg !459

; <label>:68:                                     ; preds = %61
  %69 = load i8**, i8*** %5, align 8, !dbg !461
  %70 = load i8*, i8** %69, align 8, !dbg !463
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)) #8, !dbg !464
  %72 = icmp eq i32 %71, 0, !dbg !465
  br i1 %72, label %73, label %75, !dbg !466

; <label>:73:                                     ; preds = %68
  %74 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 3, !dbg !467
  store i8 104, i8* %74, align 1, !dbg !468
  br label %119, !dbg !467

; <label>:75:                                     ; preds = %68
  %76 = load i8**, i8*** %5, align 8, !dbg !469
  %77 = load i8*, i8** %76, align 8, !dbg !471
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !472
  %79 = icmp eq i32 %78, 0, !dbg !473
  br i1 %79, label %80, label %82, !dbg !474

; <label>:80:                                     ; preds = %75
  %81 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 3, !dbg !475
  store i8 82, i8* %81, align 1, !dbg !476
  br label %118, !dbg !475

; <label>:82:                                     ; preds = %75
  %83 = load i8**, i8*** %5, align 8, !dbg !477
  %84 = load i8*, i8** %83, align 8, !dbg !479
  %85 = getelementptr inbounds i8, i8* %84, i64 0, !dbg !480
  %86 = load i8, i8* %85, align 1, !dbg !480
  %87 = sext i8 %86 to i32, !dbg !480
  %88 = icmp eq i32 %87, 45, !dbg !481
  br i1 %88, label %89, label %116, !dbg !482

; <label>:89:                                     ; preds = %82
  %90 = load i8**, i8*** %5, align 8, !dbg !483
  %91 = load i8*, i8** %90, align 8, !dbg !485
  %92 = getelementptr inbounds i8, i8* %91, i64 1, !dbg !486
  %93 = load i8, i8* %92, align 1, !dbg !486
  %94 = sext i8 %93 to i32, !dbg !486
  %95 = icmp sge i32 %94, 49, !dbg !487
  br i1 %95, label %96, label %116, !dbg !488

; <label>:96:                                     ; preds = %89
  %97 = load i8**, i8*** %5, align 8, !dbg !489
  %98 = load i8*, i8** %97, align 8, !dbg !491
  %99 = getelementptr inbounds i8, i8* %98, i64 1, !dbg !492
  %100 = load i8, i8* %99, align 1, !dbg !492
  %101 = sext i8 %100 to i32, !dbg !492
  %102 = icmp sle i32 %101, 57, !dbg !493
  br i1 %102, label %103, label %116, !dbg !494

; <label>:103:                                    ; preds = %96
  %104 = load i8**, i8*** %5, align 8, !dbg !495
  %105 = load i8*, i8** %104, align 8, !dbg !496
  %106 = getelementptr inbounds i8, i8* %105, i64 2, !dbg !497
  %107 = load i8, i8* %106, align 1, !dbg !497
  %108 = sext i8 %107 to i32, !dbg !497
  %109 = icmp eq i32 %108, 0, !dbg !498
  br i1 %109, label %110, label %116, !dbg !499

; <label>:110:                                    ; preds = %103
  %111 = load i8**, i8*** %5, align 8, !dbg !501
  %112 = load i8*, i8** %111, align 8, !dbg !502
  %113 = getelementptr inbounds i8, i8* %112, i64 1, !dbg !503
  %114 = load i8, i8* %113, align 1, !dbg !503
  %115 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 2, !dbg !504
  store i8 %114, i8* %115, align 2, !dbg !505
  br label %117, !dbg !504

; <label>:116:                                    ; preds = %103, %96, %89, %82
  br label %127, !dbg !506

; <label>:117:                                    ; preds = %110
  br label %118

; <label>:118:                                    ; preds = %117, %80
  br label %119

; <label>:119:                                    ; preds = %118, %73
  br label %120

; <label>:120:                                    ; preds = %119, %66
  br label %121

; <label>:121:                                    ; preds = %120, %60
  br label %122

; <label>:122:                                    ; preds = %121, %54
  %123 = load i32, i32* %4, align 4, !dbg !507
  %124 = add nsw i32 %123, -1, !dbg !507
  store i32 %124, i32* %4, align 4, !dbg !507
  %125 = load i8**, i8*** %5, align 8, !dbg !508
  %126 = getelementptr inbounds i8*, i8** %125, i32 1, !dbg !508
  store i8** %126, i8*** %5, align 8, !dbg !508
  br label %46, !dbg !509, !llvm.loop !511

; <label>:127:                                    ; preds = %116, %46
  %128 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 3, !dbg !512
  %129 = load i8, i8* %128, align 1, !dbg !512
  %130 = sext i8 %129 to i32, !dbg !512
  %131 = icmp eq i32 %130, 32, !dbg !514
  br i1 %131, label %132, label %134, !dbg !515

; <label>:132:                                    ; preds = %127
  %133 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 3, !dbg !516
  store i8 0, i8* %133, align 1, !dbg !517
  br label %134, !dbg !516

; <label>:134:                                    ; preds = %132, %127
  %135 = load i32, i32* %4, align 4, !dbg !518
  %136 = icmp eq i32 %135, 0, !dbg !520
  br i1 %136, label %137, label %162, !dbg !521

; <label>:137:                                    ; preds = %134
  %138 = load i32, i32* %7, align 4, !dbg !522
  %139 = icmp ne i32 %138, 0, !dbg !522
  br i1 %139, label %140, label %150, !dbg !525

; <label>:140:                                    ; preds = %137
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !526
  %142 = call i32 @fileno(%struct._IO_FILE* %141) #7, !dbg !528
  %143 = call %struct.gzFile_s* @gzdopen(i32 %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0)), !dbg !529
  store %struct.gzFile_s* %143, %struct.gzFile_s** %8, align 8, !dbg !531
  %144 = load %struct.gzFile_s*, %struct.gzFile_s** %8, align 8, !dbg !532
  %145 = icmp eq %struct.gzFile_s* %144, null, !dbg !534
  br i1 %145, label %146, label %147, !dbg !535

; <label>:146:                                    ; preds = %140
  call void @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0)), !dbg !536
  br label %147, !dbg !536

; <label>:147:                                    ; preds = %146, %140
  %148 = load %struct.gzFile_s*, %struct.gzFile_s** %8, align 8, !dbg !538
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !539
  call void @gz_uncompress(%struct.gzFile_s* %148, %struct._IO_FILE* %149), !dbg !540
  br label %161, !dbg !541

; <label>:150:                                    ; preds = %137
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !542
  %152 = call i32 @fileno(%struct._IO_FILE* %151) #7, !dbg !544
  %153 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i32 0, i32 0, !dbg !545
  %154 = call %struct.gzFile_s* @gzdopen(i32 %152, i8* %153), !dbg !546
  store %struct.gzFile_s* %154, %struct.gzFile_s** %8, align 8, !dbg !548
  %155 = load %struct.gzFile_s*, %struct.gzFile_s** %8, align 8, !dbg !549
  %156 = icmp eq %struct.gzFile_s* %155, null, !dbg !551
  br i1 %156, label %157, label %158, !dbg !552

; <label>:157:                                    ; preds = %150
  call void @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0)), !dbg !553
  br label %158, !dbg !553

; <label>:158:                                    ; preds = %157, %150
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !555
  %160 = load %struct.gzFile_s*, %struct.gzFile_s** %8, align 8, !dbg !556
  call void @gz_compress(%struct._IO_FILE* %159, %struct.gzFile_s* %160), !dbg !557
  br label %161

; <label>:161:                                    ; preds = %158, %147
  br label %230, !dbg !558

; <label>:162:                                    ; preds = %134
  %163 = load i32, i32* %6, align 4, !dbg !559
  %164 = icmp ne i32 %163, 0, !dbg !559
  br i1 %164, label %165, label %166, !dbg !562

; <label>:165:                                    ; preds = %162
  br label %166, !dbg !563

; <label>:166:                                    ; preds = %165, %162
  br label %167, !dbg !565, !llvm.loop !566

; <label>:167:                                    ; preds = %223, %166
  %168 = load i32, i32* %7, align 4, !dbg !567
  %169 = icmp ne i32 %168, 0, !dbg !567
  br i1 %169, label %170, label %193, !dbg !570

; <label>:170:                                    ; preds = %167
  %171 = load i32, i32* %6, align 4, !dbg !571
  %172 = icmp ne i32 %171, 0, !dbg !571
  br i1 %172, label %173, label %189, !dbg !574

; <label>:173:                                    ; preds = %170
  %174 = load i8**, i8*** %5, align 8, !dbg !575
  %175 = load i8*, i8** %174, align 8, !dbg !577
  %176 = call %struct.gzFile_s* @gzopen(i8* %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0)), !dbg !578
  store %struct.gzFile_s* %176, %struct.gzFile_s** %8, align 8, !dbg !579
  %177 = load %struct.gzFile_s*, %struct.gzFile_s** %8, align 8, !dbg !580
  %178 = icmp eq %struct.gzFile_s* %177, null, !dbg !582
  br i1 %178, label %179, label %185, !dbg !583

; <label>:179:                                    ; preds = %173
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !584
  %181 = load i8*, i8** @prog, align 8, !dbg !585
  %182 = load i8**, i8*** %5, align 8, !dbg !586
  %183 = load i8*, i8** %182, align 8, !dbg !587
  %184 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %180, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* %181, i8* %183), !dbg !588
  br label %188, !dbg !588

; <label>:185:                                    ; preds = %173
  %186 = load %struct.gzFile_s*, %struct.gzFile_s** %8, align 8, !dbg !589
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !590
  call void @gz_uncompress(%struct.gzFile_s* %186, %struct._IO_FILE* %187), !dbg !591
  br label %188

; <label>:188:                                    ; preds = %185, %179
  br label %192, !dbg !592

; <label>:189:                                    ; preds = %170
  %190 = load i8**, i8*** %5, align 8, !dbg !593
  %191 = load i8*, i8** %190, align 8, !dbg !595
  call void @file_uncompress(i8* %191), !dbg !596
  br label %192

; <label>:192:                                    ; preds = %189, %188
  br label %222, !dbg !597

; <label>:193:                                    ; preds = %167
  %194 = load i32, i32* %6, align 4, !dbg !598
  %195 = icmp ne i32 %194, 0, !dbg !598
  br i1 %195, label %196, label %217, !dbg !601

; <label>:196:                                    ; preds = %193
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %11, metadata !602, metadata !21), !dbg !604
  %197 = load i8**, i8*** %5, align 8, !dbg !605
  %198 = load i8*, i8** %197, align 8, !dbg !606
  %199 = call %struct._IO_FILE* @fopen(i8* %198, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0)), !dbg !607
  store %struct._IO_FILE* %199, %struct._IO_FILE** %11, align 8, !dbg !604
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !dbg !608
  %201 = icmp eq %struct._IO_FILE* %200, null, !dbg !610
  br i1 %201, label %202, label %205, !dbg !611

; <label>:202:                                    ; preds = %196
  %203 = load i8**, i8*** %5, align 8, !dbg !612
  %204 = load i8*, i8** %203, align 8, !dbg !614
  call void @perror(i8* %204), !dbg !615
  br label %216, !dbg !616

; <label>:205:                                    ; preds = %196
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !617
  %207 = call i32 @fileno(%struct._IO_FILE* %206) #7, !dbg !619
  %208 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i32 0, i32 0, !dbg !620
  %209 = call %struct.gzFile_s* @gzdopen(i32 %207, i8* %208), !dbg !621
  store %struct.gzFile_s* %209, %struct.gzFile_s** %8, align 8, !dbg !623
  %210 = load %struct.gzFile_s*, %struct.gzFile_s** %8, align 8, !dbg !624
  %211 = icmp eq %struct.gzFile_s* %210, null, !dbg !626
  br i1 %211, label %212, label %213, !dbg !627

; <label>:212:                                    ; preds = %205
  call void @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0)), !dbg !628
  br label %213, !dbg !628

; <label>:213:                                    ; preds = %212, %205
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !dbg !630
  %215 = load %struct.gzFile_s*, %struct.gzFile_s** %8, align 8, !dbg !631
  call void @gz_compress(%struct._IO_FILE* %214, %struct.gzFile_s* %215), !dbg !632
  br label %216

; <label>:216:                                    ; preds = %213, %202
  br label %221, !dbg !633

; <label>:217:                                    ; preds = %193
  %218 = load i8**, i8*** %5, align 8, !dbg !634
  %219 = load i8*, i8** %218, align 8, !dbg !636
  %220 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i32 0, i32 0, !dbg !637
  call void @file_compress(i8* %219, i8* %220), !dbg !638
  br label %221

; <label>:221:                                    ; preds = %217, %216
  br label %222

; <label>:222:                                    ; preds = %221, %192
  br label %223, !dbg !639

; <label>:223:                                    ; preds = %222
  %224 = load i8**, i8*** %5, align 8, !dbg !640
  %225 = getelementptr inbounds i8*, i8** %224, i32 1, !dbg !640
  store i8** %225, i8*** %5, align 8, !dbg !640
  %226 = load i32, i32* %4, align 4, !dbg !642
  %227 = add nsw i32 %226, -1, !dbg !642
  store i32 %227, i32* %4, align 4, !dbg !642
  %228 = icmp ne i32 %227, 0, !dbg !643
  br i1 %228, label %167, label %229, !dbg !643, !llvm.loop !566

; <label>:229:                                    ; preds = %223
  br label %230

; <label>:230:                                    ; preds = %229, %161
  ret i32 0, !dbg !644
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #5

declare %struct.gzFile_s* @gzdopen(i32, i8*) #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !7)
!1 = !DIFile(filename: "[inter]third-party--zlib-1.2.7--minigzip.o.i", directory: "/home/lichi/Desktop/bedops/[task]third-party--zlib-1.2.7--minigzip")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!7 = !{!8}
!8 = distinct !DIGlobalVariable(name: "prog", scope: !0, file: !9, line: 332, type: !10, isLocal: false, isDefinition: true, variable: i8** @prog)
!9 = !DIFile(filename: "test/minigzip.c", directory: "/home/lichi/Desktop/bedops/[task]third-party--zlib-1.2.7--minigzip")
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!12 = !{i32 2, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!15 = distinct !DISubprogram(name: "error", scope: !9, file: !9, line: 347, type: !16, isLocal: false, isDefinition: true, scopeLine: 349, isOptimized: false, unit: !0, variables: !2)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!20 = !DILocalVariable(name: "msg", arg: 1, scope: !15, file: !9, line: 348, type: !18)
!21 = !DIExpression()
!22 = !DILocation(line: 348, column: 17, scope: !15)
!23 = !DILocation(line: 350, column: 12, scope: !15)
!24 = !DILocation(line: 350, column: 32, scope: !15)
!25 = !DILocation(line: 350, column: 38, scope: !15)
!26 = !DILocation(line: 350, column: 5, scope: !15)
!27 = !DILocation(line: 351, column: 5, scope: !15)
!28 = !DILocation(line: 352, column: 1, scope: !15)
!29 = distinct !DISubprogram(name: "gz_compress", scope: !9, file: !9, line: 358, type: !30, isLocal: false, isDefinition: true, scopeLine: 361, isOptimized: false, unit: !0, variables: !2)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32, !91}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !34, line: 48, baseType: !35)
!34 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/bedops/[task]third-party--zlib-1.2.7--minigzip")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !36, line: 241, size: 1728, align: 64, elements: !37)
!36 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/bedops/[task]third-party--zlib-1.2.7--minigzip")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !58, !59, !60, !61, !65, !67, !69, !73, !76, !78, !79, !80, !81, !82, !86, !87}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !35, file: !36, line: 242, baseType: !4, size: 32, align: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !35, file: !36, line: 247, baseType: !10, size: 64, align: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !35, file: !36, line: 248, baseType: !10, size: 64, align: 64, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !35, file: !36, line: 249, baseType: !10, size: 64, align: 64, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !35, file: !36, line: 250, baseType: !10, size: 64, align: 64, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !35, file: !36, line: 251, baseType: !10, size: 64, align: 64, offset: 320)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !35, file: !36, line: 252, baseType: !10, size: 64, align: 64, offset: 384)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !35, file: !36, line: 253, baseType: !10, size: 64, align: 64, offset: 448)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !35, file: !36, line: 254, baseType: !10, size: 64, align: 64, offset: 512)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !35, file: !36, line: 256, baseType: !10, size: 64, align: 64, offset: 576)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !35, file: !36, line: 257, baseType: !10, size: 64, align: 64, offset: 640)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !35, file: !36, line: 258, baseType: !10, size: 64, align: 64, offset: 704)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !35, file: !36, line: 260, baseType: !51, size: 64, align: 64, offset: 768)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !36, line: 156, size: 192, align: 64, elements: !53)
!53 = !{!54, !55, !57}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !52, file: !36, line: 157, baseType: !51, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !52, file: !36, line: 158, baseType: !56, size: 64, align: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !52, file: !36, line: 162, baseType: !4, size: 32, align: 32, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !35, file: !36, line: 262, baseType: !56, size: 64, align: 64, offset: 832)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !35, file: !36, line: 264, baseType: !4, size: 32, align: 32, offset: 896)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !35, file: !36, line: 268, baseType: !4, size: 32, align: 32, offset: 928)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !35, file: !36, line: 270, baseType: !62, size: 64, align: 64, offset: 960)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !63, line: 131, baseType: !64)
!63 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/bedops/[task]third-party--zlib-1.2.7--minigzip")
!64 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !35, file: !36, line: 274, baseType: !66, size: 16, align: 16, offset: 1024)
!66 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !35, file: !36, line: 275, baseType: !68, size: 8, align: 8, offset: 1040)
!68 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !35, file: !36, line: 276, baseType: !70, size: 8, align: 8, offset: 1048)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, align: 8, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 1)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !35, file: !36, line: 280, baseType: !74, size: 64, align: 64, offset: 1088)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !36, line: 150, baseType: null)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !35, file: !36, line: 289, baseType: !77, size: 64, align: 64, offset: 1152)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !63, line: 132, baseType: !64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !35, file: !36, line: 297, baseType: !6, size: 64, align: 64, offset: 1216)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !35, file: !36, line: 298, baseType: !6, size: 64, align: 64, offset: 1280)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !35, file: !36, line: 299, baseType: !6, size: 64, align: 64, offset: 1344)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !35, file: !36, line: 300, baseType: !6, size: 64, align: 64, offset: 1408)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !35, file: !36, line: 302, baseType: !83, size: 64, align: 64, offset: 1472)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !84, line: 216, baseType: !85)
!84 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/bedops/[task]third-party--zlib-1.2.7--minigzip")
!85 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !35, file: !36, line: 303, baseType: !4, size: 32, align: 32, offset: 1536)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !35, file: !36, line: 305, baseType: !88, size: 160, align: 8, offset: 1568)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, align: 8, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 20)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "gzFile", file: !92, line: 1207, baseType: !93)
!92 = !DIFile(filename: "./zlib.h", directory: "/home/lichi/Desktop/bedops/[task]third-party--zlib-1.2.7--minigzip")
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gzFile_s", file: !92, line: 1670, size: 192, align: 64, elements: !95)
!95 = !{!96, !97, !100}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "have", scope: !94, file: !92, line: 1671, baseType: !5, size: 32, align: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !94, file: !92, line: 1672, baseType: !98, size: 64, align: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !94, file: !92, line: 1673, baseType: !64, size: 64, align: 64, offset: 128)
!101 = !DILocalVariable(name: "in", arg: 1, scope: !29, file: !9, line: 359, type: !32)
!102 = !DILocation(line: 359, column: 11, scope: !29)
!103 = !DILocalVariable(name: "out", arg: 2, scope: !29, file: !9, line: 360, type: !91)
!104 = !DILocation(line: 360, column: 12, scope: !29)
!105 = !DILocalVariable(name: "buf", scope: !29, file: !9, line: 362, type: !106)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 131072, align: 8, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 16384)
!109 = !DILocation(line: 362, column: 10, scope: !29)
!110 = !DILocalVariable(name: "len", scope: !29, file: !9, line: 363, type: !4)
!111 = !DILocation(line: 363, column: 9, scope: !29)
!112 = !DILocalVariable(name: "err", scope: !29, file: !9, line: 364, type: !4)
!113 = !DILocation(line: 364, column: 9, scope: !29)
!114 = !DILocation(line: 372, column: 5, scope: !29)
!115 = !DILocation(line: 373, column: 26, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !9, line: 372, column: 14)
!117 = distinct !DILexicalBlock(scope: !118, file: !9, line: 372, column: 5)
!118 = distinct !DILexicalBlock(scope: !29, file: !9, line: 372, column: 5)
!119 = !DILocation(line: 373, column: 47, scope: !116)
!120 = !DILocation(line: 373, column: 20, scope: !116)
!121 = !DILocation(line: 373, column: 15, scope: !116)
!122 = !DILocation(line: 373, column: 13, scope: !116)
!123 = !DILocation(line: 374, column: 20, scope: !124)
!124 = distinct !DILexicalBlock(scope: !116, file: !9, line: 374, column: 13)
!125 = !DILocation(line: 374, column: 13, scope: !124)
!126 = !DILocation(line: 374, column: 13, scope: !116)
!127 = !DILocation(line: 375, column: 13, scope: !128)
!128 = distinct !DILexicalBlock(scope: !124, file: !9, line: 374, column: 25)
!129 = !DILocation(line: 376, column: 13, scope: !128)
!130 = !DILocation(line: 378, column: 13, scope: !131)
!131 = distinct !DILexicalBlock(scope: !116, file: !9, line: 378, column: 13)
!132 = !DILocation(line: 378, column: 17, scope: !131)
!133 = !DILocation(line: 378, column: 13, scope: !116)
!134 = !DILocation(line: 378, column: 23, scope: !135)
!135 = !DILexicalBlockFile(scope: !131, file: !9, discriminator: 1)
!136 = !DILocation(line: 380, column: 21, scope: !137)
!137 = distinct !DILexicalBlock(scope: !116, file: !9, line: 380, column: 13)
!138 = !DILocation(line: 380, column: 26, scope: !137)
!139 = !DILocation(line: 380, column: 41, scope: !137)
!140 = !DILocation(line: 380, column: 13, scope: !137)
!141 = !DILocation(line: 380, column: 49, scope: !137)
!142 = !DILocation(line: 380, column: 46, scope: !137)
!143 = !DILocation(line: 380, column: 13, scope: !116)
!144 = !DILocation(line: 380, column: 68, scope: !145)
!145 = !DILexicalBlockFile(scope: !137, file: !9, discriminator: 1)
!146 = !DILocation(line: 380, column: 60, scope: !145)
!147 = !DILocation(line: 380, column: 54, scope: !148)
!148 = !DILexicalBlockFile(scope: !145, file: !9, discriminator: 2)
!149 = !DILocation(line: 380, column: 54, scope: !145)
!150 = !DILocation(line: 372, column: 5, scope: !151)
!151 = !DILexicalBlockFile(scope: !117, file: !9, discriminator: 1)
!152 = distinct !{!152, !114}
!153 = !DILocation(line: 382, column: 12, scope: !29)
!154 = !DILocation(line: 382, column: 5, scope: !29)
!155 = !DILocation(line: 383, column: 17, scope: !156)
!156 = distinct !DILexicalBlock(scope: !29, file: !9, line: 383, column: 9)
!157 = !DILocation(line: 383, column: 9, scope: !156)
!158 = !DILocation(line: 383, column: 22, scope: !156)
!159 = !DILocation(line: 383, column: 9, scope: !29)
!160 = !DILocation(line: 383, column: 28, scope: !161)
!161 = !DILexicalBlockFile(scope: !156, file: !9, discriminator: 1)
!162 = !DILocation(line: 384, column: 1, scope: !29)
!163 = distinct !DISubprogram(name: "gz_uncompress", scope: !9, file: !9, line: 426, type: !164, isLocal: false, isDefinition: true, scopeLine: 429, isOptimized: false, unit: !0, variables: !2)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !91, !32}
!166 = !DILocalVariable(name: "in", arg: 1, scope: !163, file: !9, line: 427, type: !91)
!167 = !DILocation(line: 427, column: 12, scope: !163)
!168 = !DILocalVariable(name: "out", arg: 2, scope: !163, file: !9, line: 428, type: !32)
!169 = !DILocation(line: 428, column: 11, scope: !163)
!170 = !DILocalVariable(name: "buf", scope: !163, file: !9, line: 430, type: !106)
!171 = !DILocation(line: 430, column: 10, scope: !163)
!172 = !DILocalVariable(name: "len", scope: !163, file: !9, line: 431, type: !4)
!173 = !DILocation(line: 431, column: 9, scope: !163)
!174 = !DILocalVariable(name: "err", scope: !163, file: !9, line: 432, type: !4)
!175 = !DILocation(line: 432, column: 9, scope: !163)
!176 = !DILocation(line: 434, column: 5, scope: !163)
!177 = !DILocation(line: 435, column: 22, scope: !178)
!178 = distinct !DILexicalBlock(scope: !179, file: !9, line: 434, column: 14)
!179 = distinct !DILexicalBlock(scope: !180, file: !9, line: 434, column: 5)
!180 = distinct !DILexicalBlock(scope: !163, file: !9, line: 434, column: 5)
!181 = !DILocation(line: 435, column: 26, scope: !178)
!182 = !DILocation(line: 435, column: 15, scope: !178)
!183 = !DILocation(line: 435, column: 13, scope: !178)
!184 = !DILocation(line: 436, column: 13, scope: !185)
!185 = distinct !DILexicalBlock(scope: !178, file: !9, line: 436, column: 13)
!186 = !DILocation(line: 436, column: 17, scope: !185)
!187 = !DILocation(line: 436, column: 13, scope: !178)
!188 = !DILocation(line: 436, column: 37, scope: !189)
!189 = !DILexicalBlockFile(scope: !185, file: !9, discriminator: 1)
!190 = !DILocation(line: 436, column: 29, scope: !189)
!191 = !DILocation(line: 436, column: 22, scope: !192)
!192 = !DILexicalBlockFile(scope: !189, file: !9, discriminator: 2)
!193 = !DILocation(line: 436, column: 22, scope: !189)
!194 = !DILocation(line: 437, column: 13, scope: !195)
!195 = distinct !DILexicalBlock(scope: !178, file: !9, line: 437, column: 13)
!196 = !DILocation(line: 437, column: 17, scope: !195)
!197 = !DILocation(line: 437, column: 13, scope: !178)
!198 = !DILocation(line: 437, column: 23, scope: !199)
!199 = !DILexicalBlockFile(scope: !195, file: !9, discriminator: 1)
!200 = !DILocation(line: 439, column: 25, scope: !201)
!201 = distinct !DILexicalBlock(scope: !178, file: !9, line: 439, column: 13)
!202 = !DILocation(line: 439, column: 43, scope: !201)
!203 = !DILocation(line: 439, column: 33, scope: !201)
!204 = !DILocation(line: 439, column: 48, scope: !201)
!205 = !DILocation(line: 439, column: 18, scope: !201)
!206 = !DILocation(line: 439, column: 13, scope: !201)
!207 = !DILocation(line: 439, column: 56, scope: !201)
!208 = !DILocation(line: 439, column: 53, scope: !201)
!209 = !DILocation(line: 439, column: 13, scope: !178)
!210 = !DILocation(line: 440, column: 13, scope: !211)
!211 = distinct !DILexicalBlock(scope: !201, file: !9, line: 439, column: 61)
!212 = !DILocation(line: 441, column: 9, scope: !211)
!213 = !DILocation(line: 434, column: 5, scope: !214)
!214 = !DILexicalBlockFile(scope: !179, file: !9, discriminator: 1)
!215 = distinct !{!215, !176}
!216 = !DILocation(line: 443, column: 16, scope: !217)
!217 = distinct !DILexicalBlock(scope: !163, file: !9, line: 443, column: 9)
!218 = !DILocation(line: 443, column: 9, scope: !217)
!219 = !DILocation(line: 443, column: 9, scope: !163)
!220 = !DILocation(line: 443, column: 22, scope: !221)
!221 = !DILexicalBlockFile(scope: !217, file: !9, discriminator: 1)
!222 = !DILocation(line: 445, column: 17, scope: !223)
!223 = distinct !DILexicalBlock(scope: !163, file: !9, line: 445, column: 9)
!224 = !DILocation(line: 445, column: 9, scope: !223)
!225 = !DILocation(line: 445, column: 21, scope: !223)
!226 = !DILocation(line: 445, column: 9, scope: !163)
!227 = !DILocation(line: 445, column: 27, scope: !228)
!228 = !DILexicalBlockFile(scope: !223, file: !9, discriminator: 1)
!229 = !DILocation(line: 446, column: 1, scope: !163)
!230 = distinct !DISubprogram(name: "file_compress", scope: !9, file: !9, line: 453, type: !231, isLocal: false, isDefinition: true, scopeLine: 456, isOptimized: false, unit: !0, variables: !2)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !10, !10}
!233 = !DILocalVariable(name: "file", arg: 1, scope: !230, file: !9, line: 454, type: !10)
!234 = !DILocation(line: 454, column: 11, scope: !230)
!235 = !DILocalVariable(name: "mode", arg: 2, scope: !230, file: !9, line: 455, type: !10)
!236 = !DILocation(line: 455, column: 11, scope: !230)
!237 = !DILocalVariable(name: "outfile", scope: !230, file: !9, line: 457, type: !238)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8192, align: 8, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 1024)
!241 = !DILocation(line: 457, column: 10, scope: !230)
!242 = !DILocalVariable(name: "in", scope: !230, file: !9, line: 458, type: !32)
!243 = !DILocation(line: 458, column: 11, scope: !230)
!244 = !DILocalVariable(name: "out", scope: !230, file: !9, line: 459, type: !91)
!245 = !DILocation(line: 459, column: 12, scope: !230)
!246 = !DILocation(line: 461, column: 16, scope: !247)
!247 = distinct !DILexicalBlock(scope: !230, file: !9, line: 461, column: 9)
!248 = !DILocation(line: 461, column: 9, scope: !247)
!249 = !DILocation(line: 461, column: 22, scope: !247)
!250 = !DILocation(line: 461, column: 38, scope: !247)
!251 = !DILocation(line: 461, column: 9, scope: !230)
!252 = !DILocation(line: 462, column: 16, scope: !253)
!253 = distinct !DILexicalBlock(scope: !247, file: !9, line: 461, column: 58)
!254 = !DILocation(line: 462, column: 51, scope: !253)
!255 = !DILocation(line: 462, column: 9, scope: !253)
!256 = !DILocation(line: 463, column: 9, scope: !253)
!257 = !DILocation(line: 466, column: 12, scope: !230)
!258 = !DILocation(line: 466, column: 21, scope: !230)
!259 = !DILocation(line: 466, column: 5, scope: !230)
!260 = !DILocation(line: 467, column: 12, scope: !230)
!261 = !DILocation(line: 467, column: 5, scope: !230)
!262 = !DILocation(line: 469, column: 16, scope: !230)
!263 = !DILocation(line: 469, column: 10, scope: !230)
!264 = !DILocation(line: 469, column: 8, scope: !230)
!265 = !DILocation(line: 470, column: 9, scope: !266)
!266 = distinct !DILexicalBlock(scope: !230, file: !9, line: 470, column: 9)
!267 = !DILocation(line: 470, column: 12, scope: !266)
!268 = !DILocation(line: 470, column: 9, scope: !230)
!269 = !DILocation(line: 471, column: 16, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !9, line: 470, column: 20)
!271 = !DILocation(line: 471, column: 9, scope: !270)
!272 = !DILocation(line: 472, column: 9, scope: !270)
!273 = !DILocation(line: 474, column: 18, scope: !230)
!274 = !DILocation(line: 474, column: 27, scope: !230)
!275 = !DILocation(line: 474, column: 11, scope: !230)
!276 = !DILocation(line: 474, column: 9, scope: !230)
!277 = !DILocation(line: 475, column: 9, scope: !278)
!278 = distinct !DILexicalBlock(scope: !230, file: !9, line: 475, column: 9)
!279 = !DILocation(line: 475, column: 13, scope: !278)
!280 = !DILocation(line: 475, column: 9, scope: !230)
!281 = !DILocation(line: 476, column: 16, scope: !282)
!282 = distinct !DILexicalBlock(scope: !278, file: !9, line: 475, column: 21)
!283 = !DILocation(line: 476, column: 49, scope: !282)
!284 = !DILocation(line: 476, column: 55, scope: !282)
!285 = !DILocation(line: 476, column: 9, scope: !282)
!286 = !DILocation(line: 477, column: 9, scope: !282)
!287 = !DILocation(line: 479, column: 17, scope: !230)
!288 = !DILocation(line: 479, column: 21, scope: !230)
!289 = !DILocation(line: 479, column: 5, scope: !230)
!290 = !DILocation(line: 481, column: 12, scope: !230)
!291 = !DILocation(line: 481, column: 5, scope: !230)
!292 = !DILocation(line: 482, column: 1, scope: !230)
!293 = distinct !DISubprogram(name: "file_uncompress", scope: !9, file: !9, line: 488, type: !294, isLocal: false, isDefinition: true, scopeLine: 490, isOptimized: false, unit: !0, variables: !2)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !10}
!296 = !DILocalVariable(name: "file", arg: 1, scope: !293, file: !9, line: 489, type: !10)
!297 = !DILocation(line: 489, column: 11, scope: !293)
!298 = !DILocalVariable(name: "buf", scope: !293, file: !9, line: 491, type: !238)
!299 = !DILocation(line: 491, column: 10, scope: !293)
!300 = !DILocalVariable(name: "infile", scope: !293, file: !9, line: 492, type: !10)
!301 = !DILocation(line: 492, column: 11, scope: !293)
!302 = !DILocalVariable(name: "outfile", scope: !293, file: !9, line: 492, type: !10)
!303 = !DILocation(line: 492, column: 20, scope: !293)
!304 = !DILocalVariable(name: "out", scope: !293, file: !9, line: 493, type: !32)
!305 = !DILocation(line: 493, column: 11, scope: !293)
!306 = !DILocalVariable(name: "in", scope: !293, file: !9, line: 494, type: !91)
!307 = !DILocation(line: 494, column: 12, scope: !293)
!308 = !DILocalVariable(name: "len", scope: !293, file: !9, line: 495, type: !83)
!309 = !DILocation(line: 495, column: 12, scope: !293)
!310 = !DILocation(line: 495, column: 25, scope: !293)
!311 = !DILocation(line: 495, column: 18, scope: !293)
!312 = !DILocation(line: 497, column: 9, scope: !313)
!313 = distinct !DILexicalBlock(scope: !293, file: !9, line: 497, column: 9)
!314 = !DILocation(line: 497, column: 13, scope: !313)
!315 = !DILocation(line: 497, column: 29, scope: !313)
!316 = !DILocation(line: 497, column: 9, scope: !293)
!317 = !DILocation(line: 498, column: 16, scope: !318)
!318 = distinct !DILexicalBlock(scope: !313, file: !9, line: 497, column: 45)
!319 = !DILocation(line: 498, column: 51, scope: !318)
!320 = !DILocation(line: 498, column: 9, scope: !318)
!321 = !DILocation(line: 499, column: 9, scope: !318)
!322 = !DILocation(line: 502, column: 12, scope: !293)
!323 = !DILocation(line: 502, column: 17, scope: !293)
!324 = !DILocation(line: 502, column: 5, scope: !293)
!325 = !DILocation(line: 504, column: 9, scope: !326)
!326 = distinct !DILexicalBlock(scope: !293, file: !9, line: 504, column: 9)
!327 = !DILocation(line: 504, column: 13, scope: !326)
!328 = !DILocation(line: 504, column: 33, scope: !326)
!329 = !DILocation(line: 504, column: 43, scope: !330)
!330 = !DILexicalBlockFile(scope: !326, file: !9, discriminator: 1)
!331 = !DILocation(line: 504, column: 48, scope: !330)
!332 = !DILocation(line: 504, column: 47, scope: !330)
!333 = !DILocation(line: 504, column: 51, scope: !330)
!334 = !DILocation(line: 504, column: 36, scope: !330)
!335 = !DILocation(line: 504, column: 78, scope: !330)
!336 = !DILocation(line: 504, column: 9, scope: !330)
!337 = !DILocation(line: 505, column: 18, scope: !338)
!338 = distinct !DILexicalBlock(scope: !326, file: !9, line: 504, column: 84)
!339 = !DILocation(line: 505, column: 16, scope: !338)
!340 = !DILocation(line: 506, column: 19, scope: !338)
!341 = !DILocation(line: 506, column: 17, scope: !338)
!342 = !DILocation(line: 507, column: 17, scope: !338)
!343 = !DILocation(line: 507, column: 20, scope: !338)
!344 = !DILocation(line: 507, column: 9, scope: !338)
!345 = !DILocation(line: 507, column: 24, scope: !338)
!346 = !DILocation(line: 508, column: 5, scope: !338)
!347 = !DILocation(line: 509, column: 19, scope: !348)
!348 = distinct !DILexicalBlock(scope: !326, file: !9, line: 508, column: 12)
!349 = !DILocation(line: 509, column: 17, scope: !348)
!350 = !DILocation(line: 510, column: 18, scope: !348)
!351 = !DILocation(line: 510, column: 16, scope: !348)
!352 = !DILocation(line: 511, column: 16, scope: !348)
!353 = !DILocation(line: 511, column: 9, scope: !348)
!354 = !DILocation(line: 513, column: 17, scope: !293)
!355 = !DILocation(line: 513, column: 10, scope: !293)
!356 = !DILocation(line: 513, column: 8, scope: !293)
!357 = !DILocation(line: 514, column: 9, scope: !358)
!358 = distinct !DILexicalBlock(scope: !293, file: !9, line: 514, column: 9)
!359 = !DILocation(line: 514, column: 12, scope: !358)
!360 = !DILocation(line: 514, column: 9, scope: !293)
!361 = !DILocation(line: 515, column: 16, scope: !362)
!362 = distinct !DILexicalBlock(scope: !358, file: !9, line: 514, column: 20)
!363 = !DILocation(line: 515, column: 49, scope: !362)
!364 = !DILocation(line: 515, column: 55, scope: !362)
!365 = !DILocation(line: 515, column: 9, scope: !362)
!366 = !DILocation(line: 516, column: 9, scope: !362)
!367 = !DILocation(line: 518, column: 17, scope: !293)
!368 = !DILocation(line: 518, column: 11, scope: !293)
!369 = !DILocation(line: 518, column: 9, scope: !293)
!370 = !DILocation(line: 519, column: 9, scope: !371)
!371 = distinct !DILexicalBlock(scope: !293, file: !9, line: 519, column: 9)
!372 = !DILocation(line: 519, column: 13, scope: !371)
!373 = !DILocation(line: 519, column: 9, scope: !293)
!374 = !DILocation(line: 520, column: 16, scope: !375)
!375 = distinct !DILexicalBlock(scope: !371, file: !9, line: 519, column: 21)
!376 = !DILocation(line: 520, column: 9, scope: !375)
!377 = !DILocation(line: 521, column: 9, scope: !375)
!378 = !DILocation(line: 524, column: 19, scope: !293)
!379 = !DILocation(line: 524, column: 23, scope: !293)
!380 = !DILocation(line: 524, column: 5, scope: !293)
!381 = !DILocation(line: 526, column: 12, scope: !293)
!382 = !DILocation(line: 526, column: 5, scope: !293)
!383 = !DILocation(line: 527, column: 1, scope: !293)
!384 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 540, type: !385, isLocal: false, isDefinition: true, scopeLine: 543, isOptimized: false, unit: !0, variables: !2)
!385 = !DISubroutineType(types: !386)
!386 = !{!4, !4, !387}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!388 = !DILocalVariable(name: "argc", arg: 1, scope: !384, file: !9, line: 541, type: !4)
!389 = !DILocation(line: 541, column: 9, scope: !384)
!390 = !DILocalVariable(name: "argv", arg: 2, scope: !384, file: !9, line: 542, type: !387)
!391 = !DILocation(line: 542, column: 11, scope: !384)
!392 = !DILocalVariable(name: "copyout", scope: !384, file: !9, line: 544, type: !4)
!393 = !DILocation(line: 544, column: 9, scope: !384)
!394 = !DILocalVariable(name: "uncompr", scope: !384, file: !9, line: 545, type: !4)
!395 = !DILocation(line: 545, column: 9, scope: !384)
!396 = !DILocalVariable(name: "file", scope: !384, file: !9, line: 546, type: !91)
!397 = !DILocation(line: 546, column: 12, scope: !384)
!398 = !DILocalVariable(name: "bname", scope: !384, file: !9, line: 547, type: !10)
!399 = !DILocation(line: 547, column: 11, scope: !384)
!400 = !DILocalVariable(name: "outmode", scope: !384, file: !9, line: 547, type: !88)
!401 = !DILocation(line: 547, column: 18, scope: !384)
!402 = !DILocation(line: 549, column: 12, scope: !384)
!403 = !DILocation(line: 549, column: 5, scope: !384)
!404 = !DILocation(line: 551, column: 12, scope: !384)
!405 = !DILocation(line: 551, column: 10, scope: !384)
!406 = !DILocation(line: 552, column: 21, scope: !384)
!407 = !DILocation(line: 552, column: 13, scope: !384)
!408 = !DILocation(line: 552, column: 11, scope: !384)
!409 = !DILocation(line: 553, column: 9, scope: !410)
!410 = distinct !DILexicalBlock(scope: !384, file: !9, line: 553, column: 9)
!411 = !DILocation(line: 553, column: 9, scope: !384)
!412 = !DILocation(line: 554, column: 12, scope: !410)
!413 = !DILocation(line: 554, column: 7, scope: !410)
!414 = !DILocation(line: 556, column: 15, scope: !410)
!415 = !DILocation(line: 556, column: 13, scope: !410)
!416 = !DILocation(line: 557, column: 9, scope: !384)
!417 = !DILocation(line: 557, column: 17, scope: !384)
!418 = !DILocation(line: 559, column: 17, scope: !419)
!419 = distinct !DILexicalBlock(scope: !384, file: !9, line: 559, column: 9)
!420 = !DILocation(line: 559, column: 10, scope: !419)
!421 = !DILocation(line: 559, column: 9, scope: !384)
!422 = !DILocation(line: 560, column: 15, scope: !419)
!423 = !DILocation(line: 560, column: 7, scope: !419)
!424 = !DILocation(line: 561, column: 22, scope: !425)
!425 = distinct !DILexicalBlock(scope: !419, file: !9, line: 561, column: 14)
!426 = !DILocation(line: 561, column: 15, scope: !425)
!427 = !DILocation(line: 561, column: 14, scope: !419)
!428 = !DILocation(line: 562, column: 25, scope: !425)
!429 = !DILocation(line: 562, column: 15, scope: !425)
!430 = !DILocation(line: 562, column: 7, scope: !425)
!431 = !DILocation(line: 564, column: 5, scope: !384)
!432 = !DILocation(line: 564, column: 12, scope: !433)
!433 = !DILexicalBlockFile(scope: !384, file: !9, discriminator: 1)
!434 = !DILocation(line: 564, column: 17, scope: !433)
!435 = !DILocation(line: 564, column: 5, scope: !433)
!436 = !DILocation(line: 565, column: 19, scope: !437)
!437 = distinct !DILexicalBlock(scope: !438, file: !9, line: 565, column: 11)
!438 = distinct !DILexicalBlock(scope: !384, file: !9, line: 564, column: 22)
!439 = !DILocation(line: 565, column: 18, scope: !437)
!440 = !DILocation(line: 565, column: 11, scope: !437)
!441 = !DILocation(line: 565, column: 31, scope: !437)
!442 = !DILocation(line: 565, column: 11, scope: !438)
!443 = !DILocation(line: 566, column: 17, scope: !437)
!444 = !DILocation(line: 566, column: 9, scope: !437)
!445 = !DILocation(line: 567, column: 24, scope: !446)
!446 = distinct !DILexicalBlock(scope: !437, file: !9, line: 567, column: 16)
!447 = !DILocation(line: 567, column: 23, scope: !446)
!448 = !DILocation(line: 567, column: 16, scope: !446)
!449 = !DILocation(line: 567, column: 36, scope: !446)
!450 = !DILocation(line: 567, column: 16, scope: !437)
!451 = !DILocation(line: 568, column: 17, scope: !446)
!452 = !DILocation(line: 568, column: 9, scope: !446)
!453 = !DILocation(line: 569, column: 24, scope: !454)
!454 = distinct !DILexicalBlock(scope: !446, file: !9, line: 569, column: 16)
!455 = !DILocation(line: 569, column: 23, scope: !454)
!456 = !DILocation(line: 569, column: 16, scope: !454)
!457 = !DILocation(line: 569, column: 36, scope: !454)
!458 = !DILocation(line: 569, column: 16, scope: !446)
!459 = !DILocation(line: 570, column: 9, scope: !454)
!460 = !DILocation(line: 570, column: 20, scope: !454)
!461 = !DILocation(line: 571, column: 24, scope: !462)
!462 = distinct !DILexicalBlock(scope: !454, file: !9, line: 571, column: 16)
!463 = !DILocation(line: 571, column: 23, scope: !462)
!464 = !DILocation(line: 571, column: 16, scope: !462)
!465 = !DILocation(line: 571, column: 36, scope: !462)
!466 = !DILocation(line: 571, column: 16, scope: !454)
!467 = !DILocation(line: 572, column: 9, scope: !462)
!468 = !DILocation(line: 572, column: 20, scope: !462)
!469 = !DILocation(line: 573, column: 24, scope: !470)
!470 = distinct !DILexicalBlock(scope: !462, file: !9, line: 573, column: 16)
!471 = !DILocation(line: 573, column: 23, scope: !470)
!472 = !DILocation(line: 573, column: 16, scope: !470)
!473 = !DILocation(line: 573, column: 36, scope: !470)
!474 = !DILocation(line: 573, column: 16, scope: !462)
!475 = !DILocation(line: 574, column: 9, scope: !470)
!476 = !DILocation(line: 574, column: 20, scope: !470)
!477 = !DILocation(line: 575, column: 18, scope: !478)
!478 = distinct !DILexicalBlock(scope: !470, file: !9, line: 575, column: 16)
!479 = !DILocation(line: 575, column: 17, scope: !478)
!480 = !DILocation(line: 575, column: 16, scope: !478)
!481 = !DILocation(line: 575, column: 27, scope: !478)
!482 = !DILocation(line: 575, column: 34, scope: !478)
!483 = !DILocation(line: 575, column: 39, scope: !484)
!484 = !DILexicalBlockFile(scope: !478, file: !9, discriminator: 1)
!485 = !DILocation(line: 575, column: 38, scope: !484)
!486 = !DILocation(line: 575, column: 37, scope: !484)
!487 = !DILocation(line: 575, column: 48, scope: !484)
!488 = !DILocation(line: 575, column: 55, scope: !484)
!489 = !DILocation(line: 575, column: 60, scope: !490)
!490 = !DILexicalBlockFile(scope: !478, file: !9, discriminator: 2)
!491 = !DILocation(line: 575, column: 59, scope: !490)
!492 = !DILocation(line: 575, column: 58, scope: !490)
!493 = !DILocation(line: 575, column: 69, scope: !490)
!494 = !DILocation(line: 575, column: 76, scope: !490)
!495 = !DILocation(line: 576, column: 18, scope: !478)
!496 = !DILocation(line: 576, column: 17, scope: !478)
!497 = !DILocation(line: 576, column: 16, scope: !478)
!498 = !DILocation(line: 576, column: 27, scope: !478)
!499 = !DILocation(line: 575, column: 16, scope: !500)
!500 = !DILexicalBlockFile(scope: !470, file: !9, discriminator: 3)
!501 = !DILocation(line: 577, column: 24, scope: !478)
!502 = !DILocation(line: 577, column: 23, scope: !478)
!503 = !DILocation(line: 577, column: 22, scope: !478)
!504 = !DILocation(line: 577, column: 9, scope: !478)
!505 = !DILocation(line: 577, column: 20, scope: !478)
!506 = !DILocation(line: 579, column: 9, scope: !478)
!507 = !DILocation(line: 580, column: 11, scope: !438)
!508 = !DILocation(line: 580, column: 19, scope: !438)
!509 = !DILocation(line: 564, column: 5, scope: !510)
!510 = !DILexicalBlockFile(scope: !384, file: !9, discriminator: 2)
!511 = distinct !{!511, !431}
!512 = !DILocation(line: 582, column: 9, scope: !513)
!513 = distinct !DILexicalBlock(scope: !384, file: !9, line: 582, column: 9)
!514 = !DILocation(line: 582, column: 20, scope: !513)
!515 = !DILocation(line: 582, column: 9, scope: !384)
!516 = !DILocation(line: 583, column: 9, scope: !513)
!517 = !DILocation(line: 583, column: 20, scope: !513)
!518 = !DILocation(line: 584, column: 9, scope: !519)
!519 = distinct !DILexicalBlock(scope: !384, file: !9, line: 584, column: 9)
!520 = !DILocation(line: 584, column: 14, scope: !519)
!521 = !DILocation(line: 584, column: 9, scope: !384)
!522 = !DILocation(line: 587, column: 13, scope: !523)
!523 = distinct !DILexicalBlock(scope: !524, file: !9, line: 587, column: 13)
!524 = distinct !DILexicalBlock(scope: !519, file: !9, line: 584, column: 20)
!525 = !DILocation(line: 587, column: 13, scope: !524)
!526 = !DILocation(line: 588, column: 34, scope: !527)
!527 = distinct !DILexicalBlock(scope: !523, file: !9, line: 587, column: 22)
!528 = !DILocation(line: 588, column: 28, scope: !527)
!529 = !DILocation(line: 588, column: 20, scope: !530)
!530 = !DILexicalBlockFile(scope: !527, file: !9, discriminator: 1)
!531 = !DILocation(line: 588, column: 18, scope: !527)
!532 = !DILocation(line: 589, column: 17, scope: !533)
!533 = distinct !DILexicalBlock(scope: !527, file: !9, line: 589, column: 17)
!534 = !DILocation(line: 589, column: 22, scope: !533)
!535 = !DILocation(line: 589, column: 17, scope: !527)
!536 = !DILocation(line: 589, column: 30, scope: !537)
!537 = !DILexicalBlockFile(scope: !533, file: !9, discriminator: 1)
!538 = !DILocation(line: 590, column: 27, scope: !527)
!539 = !DILocation(line: 590, column: 32, scope: !527)
!540 = !DILocation(line: 590, column: 13, scope: !527)
!541 = !DILocation(line: 591, column: 9, scope: !527)
!542 = !DILocation(line: 592, column: 34, scope: !543)
!543 = distinct !DILexicalBlock(scope: !523, file: !9, line: 591, column: 16)
!544 = !DILocation(line: 592, column: 28, scope: !543)
!545 = !DILocation(line: 592, column: 43, scope: !543)
!546 = !DILocation(line: 592, column: 20, scope: !547)
!547 = !DILexicalBlockFile(scope: !543, file: !9, discriminator: 1)
!548 = !DILocation(line: 592, column: 18, scope: !543)
!549 = !DILocation(line: 593, column: 17, scope: !550)
!550 = distinct !DILexicalBlock(scope: !543, file: !9, line: 593, column: 17)
!551 = !DILocation(line: 593, column: 22, scope: !550)
!552 = !DILocation(line: 593, column: 17, scope: !543)
!553 = !DILocation(line: 593, column: 30, scope: !554)
!554 = !DILexicalBlockFile(scope: !550, file: !9, discriminator: 1)
!555 = !DILocation(line: 594, column: 24, scope: !543)
!556 = !DILocation(line: 594, column: 31, scope: !543)
!557 = !DILocation(line: 594, column: 13, scope: !543)
!558 = !DILocation(line: 596, column: 5, scope: !524)
!559 = !DILocation(line: 597, column: 13, scope: !560)
!560 = distinct !DILexicalBlock(scope: !561, file: !9, line: 597, column: 13)
!561 = distinct !DILexicalBlock(scope: !519, file: !9, line: 596, column: 12)
!562 = !DILocation(line: 597, column: 13, scope: !561)
!563 = !DILocation(line: 599, column: 9, scope: !564)
!564 = distinct !DILexicalBlock(scope: !560, file: !9, line: 597, column: 22)
!565 = !DILocation(line: 600, column: 9, scope: !561)
!566 = distinct !{!566, !565}
!567 = !DILocation(line: 601, column: 17, scope: !568)
!568 = distinct !DILexicalBlock(scope: !569, file: !9, line: 601, column: 17)
!569 = distinct !DILexicalBlock(scope: !561, file: !9, line: 600, column: 12)
!570 = !DILocation(line: 601, column: 17, scope: !569)
!571 = !DILocation(line: 602, column: 21, scope: !572)
!572 = distinct !DILexicalBlock(scope: !573, file: !9, line: 602, column: 21)
!573 = distinct !DILexicalBlock(scope: !568, file: !9, line: 601, column: 26)
!574 = !DILocation(line: 602, column: 21, scope: !573)
!575 = !DILocation(line: 603, column: 36, scope: !576)
!576 = distinct !DILexicalBlock(scope: !572, file: !9, line: 602, column: 30)
!577 = !DILocation(line: 603, column: 35, scope: !576)
!578 = !DILocation(line: 603, column: 28, scope: !576)
!579 = !DILocation(line: 603, column: 26, scope: !576)
!580 = !DILocation(line: 604, column: 25, scope: !581)
!581 = distinct !DILexicalBlock(scope: !576, file: !9, line: 604, column: 25)
!582 = !DILocation(line: 604, column: 30, scope: !581)
!583 = !DILocation(line: 604, column: 25, scope: !576)
!584 = !DILocation(line: 605, column: 32, scope: !581)
!585 = !DILocation(line: 605, column: 65, scope: !581)
!586 = !DILocation(line: 605, column: 72, scope: !581)
!587 = !DILocation(line: 605, column: 71, scope: !581)
!588 = !DILocation(line: 605, column: 25, scope: !581)
!589 = !DILocation(line: 607, column: 39, scope: !581)
!590 = !DILocation(line: 607, column: 44, scope: !581)
!591 = !DILocation(line: 607, column: 25, scope: !581)
!592 = !DILocation(line: 608, column: 17, scope: !576)
!593 = !DILocation(line: 609, column: 38, scope: !594)
!594 = distinct !DILexicalBlock(scope: !572, file: !9, line: 608, column: 24)
!595 = !DILocation(line: 609, column: 37, scope: !594)
!596 = !DILocation(line: 609, column: 21, scope: !594)
!597 = !DILocation(line: 611, column: 13, scope: !573)
!598 = !DILocation(line: 612, column: 21, scope: !599)
!599 = distinct !DILexicalBlock(scope: !600, file: !9, line: 612, column: 21)
!600 = distinct !DILexicalBlock(scope: !568, file: !9, line: 611, column: 20)
!601 = !DILocation(line: 612, column: 21, scope: !600)
!602 = !DILocalVariable(name: "in", scope: !603, file: !9, line: 613, type: !32)
!603 = distinct !DILexicalBlock(scope: !599, file: !9, line: 612, column: 30)
!604 = !DILocation(line: 613, column: 28, scope: !603)
!605 = !DILocation(line: 613, column: 40, scope: !603)
!606 = !DILocation(line: 613, column: 39, scope: !603)
!607 = !DILocation(line: 613, column: 33, scope: !603)
!608 = !DILocation(line: 615, column: 25, scope: !609)
!609 = distinct !DILexicalBlock(scope: !603, file: !9, line: 615, column: 25)
!610 = !DILocation(line: 615, column: 28, scope: !609)
!611 = !DILocation(line: 615, column: 25, scope: !603)
!612 = !DILocation(line: 616, column: 33, scope: !613)
!613 = distinct !DILexicalBlock(scope: !609, file: !9, line: 615, column: 36)
!614 = !DILocation(line: 616, column: 32, scope: !613)
!615 = !DILocation(line: 616, column: 25, scope: !613)
!616 = !DILocation(line: 617, column: 21, scope: !613)
!617 = !DILocation(line: 618, column: 46, scope: !618)
!618 = distinct !DILexicalBlock(scope: !609, file: !9, line: 617, column: 28)
!619 = !DILocation(line: 618, column: 40, scope: !618)
!620 = !DILocation(line: 618, column: 55, scope: !618)
!621 = !DILocation(line: 618, column: 32, scope: !622)
!622 = !DILexicalBlockFile(scope: !618, file: !9, discriminator: 1)
!623 = !DILocation(line: 618, column: 30, scope: !618)
!624 = !DILocation(line: 619, column: 29, scope: !625)
!625 = distinct !DILexicalBlock(scope: !618, file: !9, line: 619, column: 29)
!626 = !DILocation(line: 619, column: 34, scope: !625)
!627 = !DILocation(line: 619, column: 29, scope: !618)
!628 = !DILocation(line: 619, column: 42, scope: !629)
!629 = !DILexicalBlockFile(scope: !625, file: !9, discriminator: 1)
!630 = !DILocation(line: 621, column: 37, scope: !618)
!631 = !DILocation(line: 621, column: 41, scope: !618)
!632 = !DILocation(line: 621, column: 25, scope: !618)
!633 = !DILocation(line: 624, column: 17, scope: !603)
!634 = !DILocation(line: 625, column: 36, scope: !635)
!635 = distinct !DILexicalBlock(scope: !599, file: !9, line: 624, column: 24)
!636 = !DILocation(line: 625, column: 35, scope: !635)
!637 = !DILocation(line: 625, column: 42, scope: !635)
!638 = !DILocation(line: 625, column: 21, scope: !635)
!639 = !DILocation(line: 628, column: 9, scope: !569)
!640 = !DILocation(line: 628, column: 22, scope: !641)
!641 = !DILexicalBlockFile(scope: !561, file: !9, discriminator: 1)
!642 = !DILocation(line: 628, column: 26, scope: !641)
!643 = !DILocation(line: 628, column: 9, scope: !641)
!644 = !DILocation(line: 630, column: 5, scope: !384)
