; ModuleID = '/home/lichi/Desktop/genwqe/[task]misc--zpipe_append/[inter]misc--zpipe_append.o.i'
source_filename = "/home/lichi/Desktop/genwqe/[task]misc--zpipe_append/[inter]misc--zpipe_append.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type opaque

@.str = private unnamed_addr constant [17 x i8] c"This is the END!\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ZLIB\00", align 1
@_pattern = internal global i32 0, align 4
@main.long_options = internal global [12 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 1, i32* null, i32 70 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 0, i32* null, i32 101 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 0, i32* null, i32 69 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 1, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 1, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 1, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 0, i32* null, i32 107 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"exact-input\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"exact-output\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"i_bufsize\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"o_bufsize\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"kF:f:Eei:o:s:p:vh?\00", align 1
@optarg = external global i8*, align 8
@.str.14 = private unnamed_addr constant [11 x i8] c"Z_NO_FLUSH\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Z_PARTIAL_FLUSH\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Z_SYNC_FLUSH\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"Z_FULL_FLUSH\00", align 1
@verbose = internal global i32 0, align 4
@CHUNK_i = internal global i32 16384, align 4
@CHUNK_o = internal global i32 16384, align 4
@.str.18 = private unnamed_addr constant [12 x i8] c"i_%d_%d.bin\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"o_%d_%d.bin\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"n_%d_%d.bin\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"%d %s %s ...\0A\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.24 = private unnamed_addr constant [26 x i8] c"err: compression failed.\0A\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.26 = private unnamed_addr constant [96 x i8] c"err: compressed size mismatch %lld (expected) != %lld (absorbed). Expecting %d bytes remaining\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"err: decompression failed.\0A\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"diff -q %s %s\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"Input %s and output %s differ!\0A\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"KiB\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"MiB\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"GiB\00", align 1
@.str.33 = private unnamed_addr constant [432 x i8] c"%s usage: %s [-h] [-v]\0A    [-F, --format <ZLIB|DEFLATE|GZIP>]\0A    [-e, --excact-input] input matches size of data\0A    [-E, --excact-output] output matches size of data\0A    [-f, --fush <Z_NO_FLUSH|Z_PARTIAL_FLUSH|Z_FULL_FLUSH>]\0A    [-i, --i_bufsize <i_bufsize>]\0A    [-o, --o_bufsize <o_bufsize>]\0A    [-p, --pattern <pattern>] pattern to generate test-data\0A    [-s, --size <data-size>]\0A    [-k, --keep] do not delete resulting files\0A\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"DEFLATE\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"GZIP\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"1.2.11\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"ret != Z_STREAM_ERROR\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"zpipe_append.c\00", align 1
@__PRETTY_FUNCTION__.def = private unnamed_addr constant [59 x i8] c"int def(FILE *, FILE *, int, int, int, size_t *, size_t *)\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"strm.avail_in == 0\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"ret == Z_STREAM_END\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"zpipe_append (%d): \00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.42 = private unnamed_addr constant [21 x i8] c"error reading stdin\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.43 = private unnamed_addr constant [22 x i8] c"error writing stdout\0A\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"errno=%d %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"invalid compression level\0A\00", align 1
@.str.46 = private unnamed_addr constant [36 x i8] c"invalid or incomplete deflate data\0A\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"zlib version mismatch!\0A\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"unknown error\0A\00", align 1
@.str.50 = private unnamed_addr constant [54 x i8] c"inflate did not return Z_STREAM_END rc=%d pattern=%d\0A\00", align 1
@.str.51 = private unnamed_addr constant [33 x i8] c"inflate failed rc=%d pattern=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !9 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct._IO_FILE*, align 8
  %12 = alloca %struct._IO_FILE*, align 8
  %13 = alloca %struct._IO_FILE*, align 8
  %14 = alloca [64 x i8], align 16
  %15 = alloca [64 x i8], align 16
  %16 = alloca [64 x i8], align 16
  %17 = alloca [128 x i8], align 16
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !37, metadata !38), !dbg !39
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !40, metadata !38), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %6, metadata !42, metadata !38), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %7, metadata !44, metadata !38), !dbg !45
  call void @llvm.dbg.declare(metadata i64* %8, metadata !46, metadata !38), !dbg !50
  store i64 0, i64* %8, align 8, !dbg !50
  call void @llvm.dbg.declare(metadata i64* %9, metadata !51, metadata !38), !dbg !52
  store i64 0, i64* %9, align 8, !dbg !52
  call void @llvm.dbg.declare(metadata i64* %10, metadata !53, metadata !38), !dbg !54
  store i64 0, i64* %10, align 8, !dbg !54
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %11, metadata !55, metadata !38), !dbg !112
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %12, metadata !113, metadata !38), !dbg !114
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %13, metadata !115, metadata !38), !dbg !116
  call void @llvm.dbg.declare(metadata [64 x i8]* %14, metadata !117, metadata !38), !dbg !121
  call void @llvm.dbg.declare(metadata [64 x i8]* %15, metadata !122, metadata !38), !dbg !123
  call void @llvm.dbg.declare(metadata [64 x i8]* %16, metadata !124, metadata !38), !dbg !125
  call void @llvm.dbg.declare(metadata [128 x i8]* %17, metadata !126, metadata !38), !dbg !130
  call void @llvm.dbg.declare(metadata i8** %18, metadata !131, metadata !38), !dbg !132
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8** %18, align 8, !dbg !132
  call void @llvm.dbg.declare(metadata i32* %19, metadata !133, metadata !38), !dbg !134
  call void @llvm.dbg.declare(metadata i8** %20, metadata !135, metadata !38), !dbg !136
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8** %20, align 8, !dbg !136
  call void @llvm.dbg.declare(metadata i32* %21, metadata !137, metadata !38), !dbg !138
  store i32 0, i32* %21, align 4, !dbg !138
  call void @llvm.dbg.declare(metadata i32* %22, metadata !139, metadata !38), !dbg !140
  store i32 0, i32* %22, align 4, !dbg !140
  call void @llvm.dbg.declare(metadata i32* %23, metadata !141, metadata !38), !dbg !142
  store i32 0, i32* %23, align 4, !dbg !142
  call void @llvm.dbg.declare(metadata i64* %24, metadata !143, metadata !38), !dbg !144
  store i64 262144, i64* %24, align 8, !dbg !144
  call void @llvm.dbg.declare(metadata i32* %25, metadata !145, metadata !38), !dbg !146
  store i32 0, i32* %25, align 4, !dbg !146
  call void @llvm.dbg.declare(metadata i32* %26, metadata !147, metadata !38), !dbg !148
  store i32 0, i32* %26, align 4, !dbg !148
  %29 = call i32 @getpid() #8, !dbg !149
  store i32 %29, i32* @_pattern, align 4, !dbg !150
  br label %30, !dbg !151

; <label>:30:                                     ; preds = %2, %90
  call void @llvm.dbg.declare(metadata i32* %27, metadata !152, metadata !38), !dbg !154
  call void @llvm.dbg.declare(metadata i32* %28, metadata !155, metadata !38), !dbg !156
  store i32 0, i32* %28, align 4, !dbg !156
  %31 = load i32, i32* %4, align 4, !dbg !157
  %32 = load i8**, i8*** %5, align 8, !dbg !158
  %33 = call i32 @getopt_long(i32 %31, i8** %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), %struct.option* getelementptr inbounds ([12 x %struct.option], [12 x %struct.option]* @main.long_options, i32 0, i32 0), i32* %28) #8, !dbg !159
  store i32 %33, i32* %27, align 4, !dbg !160
  %34 = load i32, i32* %27, align 4, !dbg !161
  %35 = icmp eq i32 %34, -1, !dbg !163
  br i1 %35, label %36, label %37, !dbg !164

; <label>:36:                                     ; preds = %30
  br label %91, !dbg !165

; <label>:37:                                     ; preds = %30
  %38 = load i32, i32* %27, align 4, !dbg !166
  switch i32 %38, label %90 [
    i32 70, label %39
    i32 102, label %41
    i32 101, label %65
    i32 69, label %66
    i32 107, label %67
    i32 118, label %68
    i32 105, label %71
    i32 111, label %75
    i32 115, label %79
    i32 112, label %82
    i32 104, label %86
    i32 63, label %86
  ], !dbg !167

; <label>:39:                                     ; preds = %37
  %40 = load i8*, i8** @optarg, align 8, !dbg !168
  store i8* %40, i8** %20, align 8, !dbg !170
  br label %90, !dbg !171

; <label>:41:                                     ; preds = %37
  %42 = load i8*, i8** @optarg, align 8, !dbg !172
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0)) #9, !dbg !174
  %44 = icmp eq i32 %43, 0, !dbg !175
  br i1 %44, label %45, label %46, !dbg !176

; <label>:45:                                     ; preds = %41
  store i32 0, i32* %21, align 4, !dbg !177
  br label %64, !dbg !178

; <label>:46:                                     ; preds = %41
  %47 = load i8*, i8** @optarg, align 8, !dbg !179
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0)) #9, !dbg !181
  %49 = icmp eq i32 %48, 0, !dbg !182
  br i1 %49, label %50, label %51, !dbg !183

; <label>:50:                                     ; preds = %46
  store i32 1, i32* %21, align 4, !dbg !184
  br label %63, !dbg !185

; <label>:51:                                     ; preds = %46
  %52 = load i8*, i8** @optarg, align 8, !dbg !186
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)) #9, !dbg !188
  %54 = icmp eq i32 %53, 0, !dbg !189
  br i1 %54, label %55, label %56, !dbg !190

; <label>:55:                                     ; preds = %51
  store i32 2, i32* %21, align 4, !dbg !191
  br label %62, !dbg !192

; <label>:56:                                     ; preds = %51
  %57 = load i8*, i8** @optarg, align 8, !dbg !193
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0)) #9, !dbg !195
  %59 = icmp eq i32 %58, 0, !dbg !196
  br i1 %59, label %60, label %61, !dbg !197

; <label>:60:                                     ; preds = %56
  store i32 3, i32* %21, align 4, !dbg !198
  br label %61, !dbg !199

; <label>:61:                                     ; preds = %60, %56
  br label %62

; <label>:62:                                     ; preds = %61, %55
  br label %63

; <label>:63:                                     ; preds = %62, %50
  br label %64

; <label>:64:                                     ; preds = %63, %45
  br label %90, !dbg !200

; <label>:65:                                     ; preds = %37
  store i32 1, i32* %22, align 4, !dbg !201
  br label %90, !dbg !202

; <label>:66:                                     ; preds = %37
  store i32 1, i32* %23, align 4, !dbg !203
  br label %90, !dbg !204

; <label>:67:                                     ; preds = %37
  store i32 1, i32* %26, align 4, !dbg !205
  br label %90, !dbg !206

; <label>:68:                                     ; preds = %37
  %69 = load i32, i32* @verbose, align 4, !dbg !207
  %70 = add nsw i32 %69, 1, !dbg !207
  store i32 %70, i32* @verbose, align 4, !dbg !207
  br label %90, !dbg !208

; <label>:71:                                     ; preds = %37
  %72 = load i8*, i8** @optarg, align 8, !dbg !209
  %73 = call i64 @str_to_num(i8* %72), !dbg !210
  %74 = trunc i64 %73 to i32, !dbg !210
  store i32 %74, i32* @CHUNK_i, align 4, !dbg !211
  br label %90, !dbg !212

; <label>:75:                                     ; preds = %37
  %76 = load i8*, i8** @optarg, align 8, !dbg !213
  %77 = call i64 @str_to_num(i8* %76), !dbg !214
  %78 = trunc i64 %77 to i32, !dbg !214
  store i32 %78, i32* @CHUNK_o, align 4, !dbg !215
  br label %90, !dbg !216

; <label>:79:                                     ; preds = %37
  %80 = load i8*, i8** @optarg, align 8, !dbg !217
  %81 = call i64 @str_to_num(i8* %80), !dbg !218
  store i64 %81, i64* %24, align 8, !dbg !219
  br label %90, !dbg !220

; <label>:82:                                     ; preds = %37
  %83 = load i8*, i8** @optarg, align 8, !dbg !221
  %84 = call i64 @str_to_num(i8* %83), !dbg !222
  %85 = trunc i64 %84 to i32, !dbg !222
  store i32 %85, i32* @_pattern, align 4, !dbg !223
  br label %90, !dbg !224

; <label>:86:                                     ; preds = %37, %37
  %87 = load i8**, i8*** %5, align 8, !dbg !225
  %88 = getelementptr inbounds i8*, i8** %87, i64 0, !dbg !225
  %89 = load i8*, i8** %88, align 8, !dbg !225
  call void @usage(i8* %89), !dbg !226
  call void @exit(i32 0) #10, !dbg !227
  unreachable, !dbg !227

; <label>:90:                                     ; preds = %37, %82, %79, %75, %71, %68, %67, %66, %65, %64, %39
  br label %30, !dbg !228, !llvm.loop !230

; <label>:91:                                     ; preds = %36
  %92 = load i8*, i8** %20, align 8, !dbg !231
  %93 = call i32 @figure_out_window_bits(i8* %92), !dbg !232
  store i32 %93, i32* %19, align 4, !dbg !233
  %94 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i32 0, i32 0, !dbg !234
  %95 = load i32, i32* @_pattern, align 4, !dbg !235
  %96 = load i32, i32* @_pattern, align 4, !dbg !236
  %97 = call i32 (i8*, i8*, ...) @sprintf(i8* %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32 %95, i32 %96) #8, !dbg !237
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !238
  %99 = load i32, i32* @_pattern, align 4, !dbg !239
  %100 = load i32, i32* @_pattern, align 4, !dbg !240
  %101 = call i32 (i8*, i8*, ...) @sprintf(i8* %98, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i32 %99, i32 %100) #8, !dbg !241
  %102 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i32 0, i32 0, !dbg !242
  %103 = load i32, i32* @_pattern, align 4, !dbg !243
  %104 = load i32, i32* @_pattern, align 4, !dbg !244
  %105 = call i32 (i8*, i8*, ...) @sprintf(i8* %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i32 %103, i32 %104) #8, !dbg !245
  %106 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i32 0, i32 0, !dbg !246
  %107 = call %struct._IO_FILE* @fopen(i8* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0)), !dbg !247
  store %struct._IO_FILE* %107, %struct._IO_FILE** %11, align 8, !dbg !248
  store i32 0, i32* %6, align 4, !dbg !249
  store i64 0, i64* %10, align 8, !dbg !250
  br label %108, !dbg !251

; <label>:108:                                    ; preds = %121, %91
  %109 = load i64, i64* %10, align 8, !dbg !252
  %110 = load i64, i64* %24, align 8, !dbg !253
  %111 = icmp ult i64 %109, %110, !dbg !254
  br i1 %111, label %112, label %128, !dbg !255

; <label>:112:                                    ; preds = %108
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !dbg !256
  %114 = load i32, i32* %6, align 4, !dbg !258
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i32 0, i32 0, !dbg !259
  %116 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !260
  %117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), i32 %114, i8* %115, i8* %116), !dbg !261
  store i32 %117, i32* %7, align 4, !dbg !262
  %118 = load i32, i32* %7, align 4, !dbg !263
  %119 = icmp slt i32 %118, 0, !dbg !265
  br i1 %119, label %120, label %121, !dbg !266

; <label>:120:                                    ; preds = %112
  call void @exit(i32 1) #10, !dbg !267
  unreachable, !dbg !267

; <label>:121:                                    ; preds = %112
  %122 = load i32, i32* %7, align 4, !dbg !268
  %123 = sext i32 %122 to i64, !dbg !268
  %124 = load i64, i64* %10, align 8, !dbg !269
  %125 = add i64 %124, %123, !dbg !269
  store i64 %125, i64* %10, align 8, !dbg !269
  %126 = load i32, i32* %6, align 4, !dbg !270
  %127 = add nsw i32 %126, 1, !dbg !270
  store i32 %127, i32* %6, align 4, !dbg !270
  br label %108, !dbg !271, !llvm.loop !273

; <label>:128:                                    ; preds = %108
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !dbg !274
  %130 = call i32 @fclose(%struct._IO_FILE* %129), !dbg !275
  %131 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i32 0, i32 0, !dbg !276
  %132 = call %struct._IO_FILE* @fopen(i8* %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0)), !dbg !277
  store %struct._IO_FILE* %132, %struct._IO_FILE** %11, align 8, !dbg !278
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !dbg !279
  %134 = icmp eq %struct._IO_FILE* %133, null, !dbg !281
  br i1 %134, label %135, label %136, !dbg !282

; <label>:135:                                    ; preds = %128
  call void @exit(i32 1) #10, !dbg !283
  unreachable, !dbg !283

; <label>:136:                                    ; preds = %128
  %137 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !284
  %138 = call %struct._IO_FILE* @fopen(i8* %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0)), !dbg !285
  store %struct._IO_FILE* %138, %struct._IO_FILE** %12, align 8, !dbg !286
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8, !dbg !287
  %140 = icmp eq %struct._IO_FILE* %139, null, !dbg !289
  br i1 %140, label %141, label %142, !dbg !290

; <label>:141:                                    ; preds = %136
  call void @exit(i32 1) #10, !dbg !291
  unreachable, !dbg !291

; <label>:142:                                    ; preds = %136
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !dbg !292
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8, !dbg !293
  %145 = load i32, i32* %19, align 4, !dbg !294
  %146 = load i32, i32* %21, align 4, !dbg !295
  %147 = call i32 @def(%struct._IO_FILE* %143, %struct._IO_FILE* %144, i32 %145, i32 %146, i32 -1, i64* %8, i64* %9), !dbg !296
  store i32 %147, i32* %7, align 4, !dbg !297
  %148 = load i32, i32* %7, align 4, !dbg !298
  %149 = icmp ne i32 %148, 0, !dbg !300
  br i1 %149, label %150, label %159, !dbg !301

; <label>:150:                                    ; preds = %142
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8, !dbg !302
  %152 = call i32 @fclose(%struct._IO_FILE* %151), !dbg !304
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !dbg !305
  %154 = call i32 @fclose(%struct._IO_FILE* %153), !dbg !306
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !307
  %156 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %155, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0)), !dbg !308
  %157 = load i32, i32* %7, align 4, !dbg !309
  call void @zerr(i32 %157), !dbg !310
  %158 = load i32, i32* %7, align 4, !dbg !311
  store i32 %158, i32* %3, align 4, !dbg !312
  br label %252, !dbg !312

; <label>:159:                                    ; preds = %142
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !dbg !313
  %161 = call i32 @fclose(%struct._IO_FILE* %160), !dbg !314
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8, !dbg !315
  %163 = load i8*, i8** %18, align 8, !dbg !316
  %164 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %162, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* %163), !dbg !317
  store i32 %164, i32* %7, align 4, !dbg !318
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8, !dbg !319
  %166 = call i32 @fclose(%struct._IO_FILE* %165), !dbg !320
  %167 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !321
  %168 = call %struct._IO_FILE* @fopen(i8* %167, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0)), !dbg !322
  store %struct._IO_FILE* %168, %struct._IO_FILE** %12, align 8, !dbg !323
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8, !dbg !324
  %170 = icmp eq %struct._IO_FILE* %169, null, !dbg !326
  br i1 %170, label %171, label %172, !dbg !327

; <label>:171:                                    ; preds = %159
  call void @exit(i32 1) #10, !dbg !328
  unreachable, !dbg !328

; <label>:172:                                    ; preds = %159
  %173 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i32 0, i32 0, !dbg !329
  %174 = call %struct._IO_FILE* @fopen(i8* %173, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0)), !dbg !330
  store %struct._IO_FILE* %174, %struct._IO_FILE** %13, align 8, !dbg !331
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8, !dbg !332
  %176 = icmp eq %struct._IO_FILE* %175, null, !dbg !334
  br i1 %176, label %177, label %178, !dbg !335

; <label>:177:                                    ; preds = %172
  call void @exit(i32 1) #10, !dbg !336
  unreachable, !dbg !336

; <label>:178:                                    ; preds = %172
  %179 = load i32, i32* %22, align 4, !dbg !337
  %180 = icmp ne i32 %179, 0, !dbg !337
  br i1 %180, label %181, label %187, !dbg !339

; <label>:181:                                    ; preds = %178
  %182 = load i64, i64* %8, align 8, !dbg !340
  %183 = load i8*, i8** %18, align 8, !dbg !341
  %184 = call i64 @strlen(i8* %183) #9, !dbg !342
  %185 = add i64 %182, %184, !dbg !343
  %186 = trunc i64 %185 to i32, !dbg !340
  store i32 %186, i32* @CHUNK_i, align 4, !dbg !344
  br label %187, !dbg !345

; <label>:187:                                    ; preds = %181, %178
  %188 = load i32, i32* %23, align 4, !dbg !346
  %189 = icmp ne i32 %188, 0, !dbg !346
  br i1 %189, label %190, label %193, !dbg !348

; <label>:190:                                    ; preds = %187
  %191 = load i64, i64* %9, align 8, !dbg !349
  %192 = trunc i64 %191 to i32, !dbg !349
  store i32 %192, i32* @CHUNK_o, align 4, !dbg !351
  store i32 1, i32* %25, align 4, !dbg !352
  br label %193, !dbg !353

; <label>:193:                                    ; preds = %190, %187
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8, !dbg !354
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8, !dbg !355
  %196 = load i32, i32* %19, align 4, !dbg !356
  %197 = load i32, i32* %21, align 4, !dbg !357
  %198 = load i32, i32* %25, align 4, !dbg !358
  %199 = call i32 @inf(%struct._IO_FILE* %194, %struct._IO_FILE* %195, i32 %196, i32 %197, i64* %9, i32 %198), !dbg !359
  store i32 %199, i32* %7, align 4, !dbg !360
  %200 = load i64, i64* %8, align 8, !dbg !361
  %201 = load i64, i64* %9, align 8, !dbg !363
  %202 = icmp ne i64 %200, %201, !dbg !364
  br i1 %202, label %203, label %211, !dbg !365

; <label>:203:                                    ; preds = %193
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !366
  %205 = load i64, i64* %8, align 8, !dbg !368
  %206 = load i64, i64* %9, align 8, !dbg !369
  %207 = load i8*, i8** %18, align 8, !dbg !370
  %208 = call i64 @strlen(i8* %207) #9, !dbg !371
  %209 = trunc i64 %208 to i32, !dbg !372
  %210 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %204, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.26, i32 0, i32 0), i64 %205, i64 %206, i32 %209), !dbg !373
  call void @exit(i32 1) #10, !dbg !374
  unreachable, !dbg !374

; <label>:211:                                    ; preds = %193
  %212 = load i32, i32* %7, align 4, !dbg !375
  %213 = icmp ne i32 %212, 0, !dbg !377
  br i1 %213, label %214, label %223, !dbg !378

; <label>:214:                                    ; preds = %211
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8, !dbg !379
  %216 = call i32 @fclose(%struct._IO_FILE* %215), !dbg !381
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8, !dbg !382
  %218 = call i32 @fclose(%struct._IO_FILE* %217), !dbg !383
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !384
  %220 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %219, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0)), !dbg !385
  %221 = load i32, i32* %7, align 4, !dbg !386
  call void @zerr(i32 %221), !dbg !387
  %222 = load i32, i32* %7, align 4, !dbg !388
  store i32 %222, i32* %3, align 4, !dbg !389
  br label %252, !dbg !389

; <label>:223:                                    ; preds = %211
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8, !dbg !390
  %225 = call i32 @fclose(%struct._IO_FILE* %224), !dbg !391
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8, !dbg !392
  %227 = call i32 @fclose(%struct._IO_FILE* %226), !dbg !393
  %228 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i32 0, i32 0, !dbg !394
  %229 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i32 0, i32 0, !dbg !395
  %230 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i32 0, i32 0, !dbg !396
  %231 = call i32 (i8*, i8*, ...) @sprintf(i8* %228, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), i8* %229, i8* %230) #8, !dbg !397
  %232 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i32 0, i32 0, !dbg !398
  %233 = call i32 @system(i8* %232), !dbg !399
  store i32 %233, i32* %7, align 4, !dbg !400
  %234 = load i32, i32* %7, align 4, !dbg !401
  %235 = icmp ne i32 %234, 0, !dbg !403
  br i1 %235, label %236, label %241, !dbg !404

; <label>:236:                                    ; preds = %223
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !405
  %238 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i32 0, i32 0, !dbg !407
  %239 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i32 0, i32 0, !dbg !408
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %237, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i32 0, i32 0), i8* %238, i8* %239), !dbg !409
  call void @exit(i32 1) #10, !dbg !410
  unreachable, !dbg !410

; <label>:241:                                    ; preds = %223
  %242 = load i32, i32* %26, align 4, !dbg !411
  %243 = icmp ne i32 %242, 0, !dbg !411
  br i1 %243, label %251, label %244, !dbg !413

; <label>:244:                                    ; preds = %241
  %245 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i32 0, i32 0, !dbg !414
  %246 = call i32 @unlink(i8* %245) #8, !dbg !416
  %247 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i32 0, i32 0, !dbg !417
  %248 = call i32 @unlink(i8* %247) #8, !dbg !418
  %249 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !419
  %250 = call i32 @unlink(i8* %249) #8, !dbg !420
  br label %251, !dbg !421

; <label>:251:                                    ; preds = %244, %241
  call void @exit(i32 0) #10, !dbg !422
  unreachable, !dbg !422

; <label>:252:                                    ; preds = %214, %150
  %253 = load i32, i32* %3, align 4, !dbg !423
  ret i32 %253, !dbg !423
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @getpid() #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @str_to_num(i8*) #4 !dbg !424 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !429, metadata !38), !dbg !430
  call void @llvm.dbg.declare(metadata i8** %4, metadata !431, metadata !38), !dbg !432
  %6 = load i8*, i8** %3, align 8, !dbg !433
  store i8* %6, i8** %4, align 8, !dbg !432
  call void @llvm.dbg.declare(metadata i64* %5, metadata !434, metadata !38), !dbg !435
  %7 = load i8*, i8** %4, align 8, !dbg !436
  %8 = call i64 @strtoull(i8* %7, i8** %4, i32 0) #8, !dbg !437
  store i64 %8, i64* %5, align 8, !dbg !435
  %9 = load i8*, i8** %4, align 8, !dbg !438
  %10 = load i8, i8* %9, align 1, !dbg !440
  %11 = sext i8 %10 to i32, !dbg !440
  %12 = icmp eq i32 %11, 0, !dbg !441
  br i1 %12, label %13, label %15, !dbg !442

; <label>:13:                                     ; preds = %1
  %14 = load i64, i64* %5, align 8, !dbg !443
  store i64 %14, i64* %2, align 8, !dbg !444
  br label %40, !dbg !444

; <label>:15:                                     ; preds = %1
  %16 = load i8*, i8** %4, align 8, !dbg !445
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0)) #9, !dbg !447
  %18 = icmp eq i32 %17, 0, !dbg !448
  br i1 %18, label %19, label %22, !dbg !449

; <label>:19:                                     ; preds = %15
  %20 = load i64, i64* %5, align 8, !dbg !450
  %21 = mul i64 %20, 1024, !dbg !450
  store i64 %21, i64* %5, align 8, !dbg !450
  br label %38, !dbg !451

; <label>:22:                                     ; preds = %15
  %23 = load i8*, i8** %4, align 8, !dbg !452
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0)) #9, !dbg !454
  %25 = icmp eq i32 %24, 0, !dbg !455
  br i1 %25, label %26, label %29, !dbg !456

; <label>:26:                                     ; preds = %22
  %27 = load i64, i64* %5, align 8, !dbg !457
  %28 = mul i64 %27, 1048576, !dbg !457
  store i64 %28, i64* %5, align 8, !dbg !457
  br label %37, !dbg !458

; <label>:29:                                     ; preds = %22
  %30 = load i8*, i8** %4, align 8, !dbg !459
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0)) #9, !dbg !461
  %32 = icmp eq i32 %31, 0, !dbg !462
  br i1 %32, label %33, label %36, !dbg !463

; <label>:33:                                     ; preds = %29
  %34 = load i64, i64* %5, align 8, !dbg !464
  %35 = mul i64 %34, 1073741824, !dbg !464
  store i64 %35, i64* %5, align 8, !dbg !464
  br label %36, !dbg !465

; <label>:36:                                     ; preds = %33, %29
  br label %37

; <label>:37:                                     ; preds = %36, %26
  br label %38

; <label>:38:                                     ; preds = %37, %19
  %39 = load i64, i64* %5, align 8, !dbg !466
  store i64 %39, i64* %2, align 8, !dbg !467
  br label %40, !dbg !467

; <label>:40:                                     ; preds = %38, %13
  %41 = load i64, i64* %2, align 8, !dbg !468
  ret i64 %41, !dbg !468
}

; Function Attrs: nounwind uwtable
define internal void @usage(i8*) #0 !dbg !469 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !472, metadata !38), !dbg !473
  call void @llvm.dbg.declare(metadata i8** %3, metadata !474, metadata !38), !dbg !475
  %4 = load i8*, i8** %2, align 8, !dbg !476
  %5 = call i8* @__xpg_basename(i8* %4) #8, !dbg !477
  store i8* %5, i8** %3, align 8, !dbg !475
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !478
  %7 = load i8*, i8** %3, align 8, !dbg !479
  %8 = load i8*, i8** %3, align 8, !dbg !480
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([432 x i8], [432 x i8]* @.str.33, i32 0, i32 0), i8* %7, i8* %8), !dbg !481
  ret void, !dbg !482
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind uwtable
define internal i32 @figure_out_window_bits(i8*) #0 !dbg !483 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !486, metadata !38), !dbg !487
  %4 = load i8*, i8** %3, align 8, !dbg !488
  %5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #9, !dbg !490
  %6 = icmp eq i32 %5, 0, !dbg !491
  br i1 %6, label %7, label %8, !dbg !492

; <label>:7:                                      ; preds = %1
  store i32 15, i32* %2, align 4, !dbg !493
  br label %21, !dbg !493

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !494
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0)) #9, !dbg !496
  %11 = icmp eq i32 %10, 0, !dbg !497
  br i1 %11, label %12, label %13, !dbg !498

; <label>:12:                                     ; preds = %8
  store i32 -15, i32* %2, align 4, !dbg !499
  br label %21, !dbg !499

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %3, align 8, !dbg !500
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0)) #9, !dbg !502
  %16 = icmp eq i32 %15, 0, !dbg !503
  br i1 %16, label %17, label %18, !dbg !504

; <label>:17:                                     ; preds = %13
  store i32 31, i32* %2, align 4, !dbg !505
  br label %21, !dbg !505

; <label>:18:                                     ; preds = %13
  br label %19

; <label>:19:                                     ; preds = %18
  br label %20

; <label>:20:                                     ; preds = %19
  store i32 15, i32* %2, align 4, !dbg !506
  br label %21, !dbg !506

; <label>:21:                                     ; preds = %20, %17, %12, %7
  %22 = load i32, i32* %2, align 4, !dbg !507
  ret i32 %22, !dbg !507
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #6

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #6

declare i32 @fclose(%struct._IO_FILE*) #6

; Function Attrs: nounwind uwtable
define internal i32 @def(%struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i64*, i64*) #0 !dbg !508 {
  %8 = alloca i32, align 4
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.z_stream_s, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %9, metadata !512, metadata !38), !dbg !513
  store %struct._IO_FILE* %1, %struct._IO_FILE** %10, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %10, metadata !514, metadata !38), !dbg !515
  store i32 %2, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !516, metadata !38), !dbg !517
  store i32 %3, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !518, metadata !38), !dbg !519
  store i32 %4, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !520, metadata !38), !dbg !521
  store i64* %5, i64** %14, align 8
  call void @llvm.dbg.declare(metadata i64** %14, metadata !522, metadata !38), !dbg !523
  store i64* %6, i64** %15, align 8
  call void @llvm.dbg.declare(metadata i64** %15, metadata !524, metadata !38), !dbg !525
  call void @llvm.dbg.declare(metadata i32* %16, metadata !526, metadata !38), !dbg !527
  call void @llvm.dbg.declare(metadata i32* %17, metadata !528, metadata !38), !dbg !529
  call void @llvm.dbg.declare(metadata i32* %18, metadata !530, metadata !38), !dbg !531
  call void @llvm.dbg.declare(metadata %struct.z_stream_s* %19, metadata !532, metadata !38), !dbg !569
  call void @llvm.dbg.declare(metadata i8** %20, metadata !570, metadata !38), !dbg !572
  call void @llvm.dbg.declare(metadata i8** %21, metadata !573, metadata !38), !dbg !574
  call void @llvm.dbg.declare(metadata i32* %22, metadata !575, metadata !38), !dbg !576
  %24 = load i32, i32* @CHUNK_i, align 4, !dbg !577
  store i32 %24, i32* %22, align 4, !dbg !576
  call void @llvm.dbg.declare(metadata i32* %23, metadata !578, metadata !38), !dbg !579
  %25 = load i32, i32* @CHUNK_o, align 4, !dbg !580
  store i32 %25, i32* %23, align 4, !dbg !579
  %26 = load i32, i32* @CHUNK_i, align 4, !dbg !581
  %27 = zext i32 %26 to i64, !dbg !581
  %28 = call noalias i8* @malloc(i64 %27) #8, !dbg !582
  store i8* %28, i8** %20, align 8, !dbg !583
  %29 = load i8*, i8** %20, align 8, !dbg !584
  %30 = icmp eq i8* %29, null, !dbg !586
  br i1 %30, label %31, label %32, !dbg !587

; <label>:31:                                     ; preds = %7
  store i32 -1, i32* %8, align 4, !dbg !588
  br label %156, !dbg !588

; <label>:32:                                     ; preds = %7
  %33 = load i32, i32* @CHUNK_o, align 4, !dbg !589
  %34 = zext i32 %33 to i64, !dbg !589
  %35 = call noalias i8* @malloc(i64 %34) #8, !dbg !590
  store i8* %35, i8** %21, align 8, !dbg !591
  %36 = load i8*, i8** %21, align 8, !dbg !592
  %37 = icmp eq i8* %36, null, !dbg !594
  br i1 %37, label %38, label %40, !dbg !595

; <label>:38:                                     ; preds = %32
  %39 = load i8*, i8** %20, align 8, !dbg !596
  call void @free(i8* %39) #8, !dbg !598
  store i32 -1, i32* %8, align 4, !dbg !599
  br label %156, !dbg !599

; <label>:40:                                     ; preds = %32
  %41 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %19, i32 0, i32 8, !dbg !600
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %41, align 8, !dbg !601
  %42 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %19, i32 0, i32 9, !dbg !602
  store void (i8*, i8*)* null, void (i8*, i8*)** %42, align 8, !dbg !603
  %43 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %19, i32 0, i32 10, !dbg !604
  store i8* null, i8** %43, align 8, !dbg !605
  %44 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %19, i32 0, i32 5, !dbg !606
  store i64 0, i64* %44, align 8, !dbg !607
  %45 = load i32, i32* %13, align 4, !dbg !608
  %46 = load i32, i32* %11, align 4, !dbg !608
  %47 = call i32 @deflateInit2_(%struct.z_stream_s* %19, i32 %45, i32 8, i32 %46, i32 8, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 112), !dbg !608
  store i32 %47, i32* %16, align 4, !dbg !609
  %48 = load i32, i32* %16, align 4, !dbg !610
  %49 = icmp ne i32 %48, 0, !dbg !612
  br i1 %49, label %50, label %54, !dbg !613

; <label>:50:                                     ; preds = %40
  %51 = load i8*, i8** %20, align 8, !dbg !614
  call void @free(i8* %51) #8, !dbg !616
  %52 = load i8*, i8** %21, align 8, !dbg !617
  call void @free(i8* %52) #8, !dbg !618
  %53 = load i32, i32* %16, align 4, !dbg !619
  store i32 %53, i32* %8, align 4, !dbg !620
  br label %156, !dbg !620

; <label>:54:                                     ; preds = %40
  br label %55, !dbg !621, !llvm.loop !622

; <label>:55:                                     ; preds = %129, %54
  %56 = load i32, i32* @CHUNK_i, align 4, !dbg !623
  store i32 %56, i32* %22, align 4, !dbg !625
  %57 = load i8*, i8** %20, align 8, !dbg !626
  %58 = load i32, i32* %22, align 4, !dbg !627
  %59 = zext i32 %58 to i64, !dbg !627
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !628
  %61 = call i64 @fread(i8* %57, i64 1, i64 %59, %struct._IO_FILE* %60), !dbg !629
  %62 = trunc i64 %61 to i32, !dbg !629
  %63 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %19, i32 0, i32 1, !dbg !630
  store i32 %62, i32* %63, align 8, !dbg !631
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !632
  %65 = call i32 @ferror(%struct._IO_FILE* %64) #8, !dbg !634
  %66 = icmp ne i32 %65, 0, !dbg !634
  br i1 %66, label %67, label %71, !dbg !635

; <label>:67:                                     ; preds = %55
  %68 = call i32 @deflateEnd(%struct.z_stream_s* %19), !dbg !636
  %69 = load i8*, i8** %20, align 8, !dbg !638
  call void @free(i8* %69) #8, !dbg !639
  %70 = load i8*, i8** %21, align 8, !dbg !640
  call void @free(i8* %70) #8, !dbg !641
  store i32 -1, i32* %8, align 4, !dbg !642
  br label %156, !dbg !642

; <label>:71:                                     ; preds = %55
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !643
  %73 = call i32 @feof(%struct._IO_FILE* %72) #8, !dbg !644
  %74 = icmp ne i32 %73, 0, !dbg !644
  br i1 %74, label %75, label %76, !dbg !644

; <label>:75:                                     ; preds = %71
  br label %78, !dbg !645

; <label>:76:                                     ; preds = %71
  %77 = load i32, i32* %12, align 4, !dbg !647
  br label %78, !dbg !649

; <label>:78:                                     ; preds = %76, %75
  %79 = phi i32 [ 4, %75 ], [ %77, %76 ], !dbg !650
  store i32 %79, i32* %17, align 4, !dbg !652
  %80 = load i8*, i8** %20, align 8, !dbg !653
  %81 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %19, i32 0, i32 0, !dbg !654
  store i8* %80, i8** %81, align 8, !dbg !655
  br label %82, !dbg !656, !llvm.loop !657

; <label>:82:                                     ; preds = %117, %78
  %83 = load i32, i32* @CHUNK_o, align 4, !dbg !658
  store i32 %83, i32* %23, align 4, !dbg !660
  %84 = load i32, i32* %23, align 4, !dbg !661
  %85 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %19, i32 0, i32 4, !dbg !662
  store i32 %84, i32* %85, align 8, !dbg !663
  %86 = load i8*, i8** %21, align 8, !dbg !664
  %87 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %19, i32 0, i32 3, !dbg !665
  store i8* %86, i8** %87, align 8, !dbg !666
  %88 = load i32, i32* %17, align 4, !dbg !667
  %89 = call i32 @deflate(%struct.z_stream_s* %19, i32 %88), !dbg !668
  store i32 %89, i32* %16, align 4, !dbg !669
  %90 = load i32, i32* %16, align 4, !dbg !670
  %91 = icmp ne i32 %90, -2, !dbg !671
  br i1 %91, label %92, label %93, !dbg !672

; <label>:92:                                     ; preds = %82
  br label %95, !dbg !673

; <label>:93:                                     ; preds = %82
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i32 145, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.def, i32 0, i32 0)) #10, !dbg !675
  unreachable, !dbg !675
                                                  ; No predecessors!
  br label %95, !dbg !677

; <label>:95:                                     ; preds = %94, %92
  %96 = load i32, i32* %23, align 4, !dbg !679
  %97 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %19, i32 0, i32 4, !dbg !680
  %98 = load i32, i32* %97, align 8, !dbg !680
  %99 = sub i32 %96, %98, !dbg !681
  store i32 %99, i32* %18, align 4, !dbg !682
  %100 = load i8*, i8** %21, align 8, !dbg !683
  %101 = load i32, i32* %18, align 4, !dbg !685
  %102 = zext i32 %101 to i64, !dbg !685
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !686
  %104 = call i64 @fwrite(i8* %100, i64 1, i64 %102, %struct._IO_FILE* %103), !dbg !687
  %105 = load i32, i32* %18, align 4, !dbg !688
  %106 = zext i32 %105 to i64, !dbg !688
  %107 = icmp ne i64 %104, %106, !dbg !689
  br i1 %107, label %112, label %108, !dbg !690

; <label>:108:                                    ; preds = %95
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !691
  %110 = call i32 @ferror(%struct._IO_FILE* %109) #8, !dbg !692
  %111 = icmp ne i32 %110, 0, !dbg !692
  br i1 %111, label %112, label %116, !dbg !693

; <label>:112:                                    ; preds = %108, %95
  %113 = call i32 @deflateEnd(%struct.z_stream_s* %19), !dbg !694
  %114 = load i8*, i8** %20, align 8, !dbg !696
  call void @free(i8* %114) #8, !dbg !697
  %115 = load i8*, i8** %21, align 8, !dbg !698
  call void @free(i8* %115) #8, !dbg !699
  store i32 -1, i32* %8, align 4, !dbg !700
  br label %156, !dbg !700

; <label>:116:                                    ; preds = %108
  br label %117, !dbg !701

; <label>:117:                                    ; preds = %116
  %118 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %19, i32 0, i32 4, !dbg !702
  %119 = load i32, i32* %118, align 8, !dbg !702
  %120 = icmp eq i32 %119, 0, !dbg !703
  br i1 %120, label %82, label %121, !dbg !704, !llvm.loop !657

; <label>:121:                                    ; preds = %117
  %122 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %19, i32 0, i32 1, !dbg !705
  %123 = load i32, i32* %122, align 8, !dbg !705
  %124 = icmp eq i32 %123, 0, !dbg !706
  br i1 %124, label %125, label %126, !dbg !707

; <label>:125:                                    ; preds = %121
  br label %128, !dbg !708

; <label>:126:                                    ; preds = %121
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i32 156, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.def, i32 0, i32 0)) #10, !dbg !709
  unreachable, !dbg !709
                                                  ; No predecessors!
  br label %128, !dbg !710

; <label>:128:                                    ; preds = %127, %125
  br label %129, !dbg !711

; <label>:129:                                    ; preds = %128
  %130 = load i32, i32* %17, align 4, !dbg !712
  %131 = icmp ne i32 %130, 4, !dbg !714
  br i1 %131, label %55, label %132, !dbg !715, !llvm.loop !622

; <label>:132:                                    ; preds = %129
  %133 = load i32, i32* %16, align 4, !dbg !716
  %134 = icmp eq i32 %133, 1, !dbg !717
  br i1 %134, label %135, label %136, !dbg !718

; <label>:135:                                    ; preds = %132
  br label %138, !dbg !719

; <label>:136:                                    ; preds = %132
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i32 180, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.def, i32 0, i32 0)) #10, !dbg !720
  unreachable, !dbg !720
                                                  ; No predecessors!
  br label %138, !dbg !722

; <label>:138:                                    ; preds = %137, %135
  %139 = load i64*, i64** %14, align 8, !dbg !724
  %140 = icmp ne i64* %139, null, !dbg !724
  br i1 %140, label %141, label %145, !dbg !726

; <label>:141:                                    ; preds = %138
  %142 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %19, i32 0, i32 5, !dbg !727
  %143 = load i64, i64* %142, align 8, !dbg !727
  %144 = load i64*, i64** %14, align 8, !dbg !728
  store i64 %143, i64* %144, align 8, !dbg !729
  br label %145, !dbg !730

; <label>:145:                                    ; preds = %141, %138
  %146 = load i64*, i64** %15, align 8, !dbg !731
  %147 = icmp ne i64* %146, null, !dbg !731
  br i1 %147, label %148, label %152, !dbg !733

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %19, i32 0, i32 2, !dbg !734
  %150 = load i64, i64* %149, align 8, !dbg !734
  %151 = load i64*, i64** %15, align 8, !dbg !735
  store i64 %150, i64* %151, align 8, !dbg !736
  br label %152, !dbg !737

; <label>:152:                                    ; preds = %148, %145
  %153 = call i32 @deflateEnd(%struct.z_stream_s* %19), !dbg !738
  %154 = load i8*, i8** %20, align 8, !dbg !739
  call void @free(i8* %154) #8, !dbg !740
  %155 = load i8*, i8** %21, align 8, !dbg !741
  call void @free(i8* %155) #8, !dbg !742
  store i32 0, i32* %8, align 4, !dbg !743
  br label %156, !dbg !743

; <label>:156:                                    ; preds = %152, %112, %67, %50, %38, %31
  %157 = load i32, i32* %8, align 4, !dbg !744
  ret i32 %157, !dbg !744
}

; Function Attrs: nounwind uwtable
define internal void @zerr(i32) #0 !dbg !745 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !748, metadata !38), !dbg !749
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !750
  %4 = load i32, i32* %2, align 4, !dbg !751
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i32 0, i32 0), i32 %4), !dbg !752
  %6 = load i32, i32* %2, align 4, !dbg !753
  switch i32 %6, label %43 [
    i32 -1, label %7
    i32 -2, label %31
    i32 -3, label %34
    i32 -4, label %37
    i32 -6, label %40
  ], !dbg !754

; <label>:7:                                      ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !755
  %9 = call i32 @ferror(%struct._IO_FILE* %8) #8, !dbg !758
  %10 = icmp ne i32 %9, 0, !dbg !758
  br i1 %10, label %11, label %14, !dbg !759

; <label>:11:                                     ; preds = %7
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !760
  %13 = call i32 @fputs(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), %struct._IO_FILE* %12), !dbg !761
  br label %30, !dbg !761

; <label>:14:                                     ; preds = %7
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !762
  %16 = call i32 @ferror(%struct._IO_FILE* %15) #8, !dbg !764
  %17 = icmp ne i32 %16, 0, !dbg !764
  br i1 %17, label %18, label %21, !dbg !765

; <label>:18:                                     ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !766
  %20 = call i32 @fputs(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0), %struct._IO_FILE* %19), !dbg !767
  br label %29, !dbg !767

; <label>:21:                                     ; preds = %14
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !768
  %23 = call i32* @__errno_location() #1, !dbg !769
  %24 = load i32, i32* %23, align 4, !dbg !770
  %25 = call i32* @__errno_location() #1, !dbg !771
  %26 = load i32, i32* %25, align 4, !dbg !773
  %27 = call i8* @strerror(i32 %26) #8, !dbg !774
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), i32 %24, i8* %27), !dbg !776
  br label %29

; <label>:29:                                     ; preds = %21, %18
  br label %30

; <label>:30:                                     ; preds = %29, %11
  br label %46, !dbg !777

; <label>:31:                                     ; preds = %1
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !778
  %33 = call i32 @fputs(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i32 0, i32 0), %struct._IO_FILE* %32), !dbg !779
  br label %46, !dbg !780

; <label>:34:                                     ; preds = %1
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !781
  %36 = call i32 @fputs(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.46, i32 0, i32 0), %struct._IO_FILE* %35), !dbg !782
  br label %46, !dbg !783

; <label>:37:                                     ; preds = %1
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !784
  %39 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), %struct._IO_FILE* %38), !dbg !785
  br label %46, !dbg !786

; <label>:40:                                     ; preds = %1
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !787
  %42 = call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.48, i32 0, i32 0), %struct._IO_FILE* %41), !dbg !788
  br label %46, !dbg !789

; <label>:43:                                     ; preds = %1
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !790
  %45 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), %struct._IO_FILE* %44), !dbg !791
  br label %46, !dbg !792

; <label>:46:                                     ; preds = %43, %40, %37, %34, %31, %30
  ret void, !dbg !793
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @inf(%struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i64*, i32) #0 !dbg !794 {
  %7 = alloca i32, align 4
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.z_stream_s, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %8, metadata !797, metadata !38), !dbg !798
  store %struct._IO_FILE* %1, %struct._IO_FILE** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %9, metadata !799, metadata !38), !dbg !800
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !801, metadata !38), !dbg !802
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !803, metadata !38), !dbg !804
  store i64* %4, i64** %12, align 8
  call void @llvm.dbg.declare(metadata i64** %12, metadata !805, metadata !38), !dbg !806
  store i32 %5, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !807, metadata !38), !dbg !808
  call void @llvm.dbg.declare(metadata i32* %14, metadata !809, metadata !38), !dbg !810
  call void @llvm.dbg.declare(metadata i32* %15, metadata !811, metadata !38), !dbg !812
  call void @llvm.dbg.declare(metadata %struct.z_stream_s* %16, metadata !813, metadata !38), !dbg !814
  call void @llvm.dbg.declare(metadata i8** %17, metadata !815, metadata !38), !dbg !816
  call void @llvm.dbg.declare(metadata i8** %18, metadata !817, metadata !38), !dbg !818
  call void @llvm.dbg.declare(metadata i32* %19, metadata !819, metadata !38), !dbg !820
  %21 = load i32, i32* @CHUNK_i, align 4, !dbg !821
  store i32 %21, i32* %19, align 4, !dbg !820
  call void @llvm.dbg.declare(metadata i32* %20, metadata !822, metadata !38), !dbg !823
  %22 = load i32, i32* @CHUNK_o, align 4, !dbg !824
  store i32 %22, i32* %20, align 4, !dbg !823
  %23 = load i32, i32* @CHUNK_i, align 4, !dbg !825
  %24 = zext i32 %23 to i64, !dbg !825
  %25 = call noalias i8* @malloc(i64 %24) #8, !dbg !826
  store i8* %25, i8** %17, align 8, !dbg !827
  %26 = load i8*, i8** %17, align 8, !dbg !828
  %27 = icmp eq i8* %26, null, !dbg !830
  br i1 %27, label %28, label %29, !dbg !831

; <label>:28:                                     ; preds = %6
  store i32 -1, i32* %7, align 4, !dbg !832
  br label %162, !dbg !832

; <label>:29:                                     ; preds = %6
  %30 = load i32, i32* @CHUNK_o, align 4, !dbg !833
  %31 = zext i32 %30 to i64, !dbg !833
  %32 = call noalias i8* @malloc(i64 %31) #8, !dbg !834
  store i8* %32, i8** %18, align 8, !dbg !835
  %33 = load i8*, i8** %18, align 8, !dbg !836
  %34 = icmp eq i8* %33, null, !dbg !838
  br i1 %34, label %35, label %37, !dbg !839

; <label>:35:                                     ; preds = %29
  %36 = load i8*, i8** %17, align 8, !dbg !840
  call void @free(i8* %36) #8, !dbg !842
  store i32 -1, i32* %7, align 4, !dbg !843
  br label %162, !dbg !843

; <label>:37:                                     ; preds = %29
  %38 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %16, i32 0, i32 8, !dbg !844
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %38, align 8, !dbg !845
  %39 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %16, i32 0, i32 9, !dbg !846
  store void (i8*, i8*)* null, void (i8*, i8*)** %39, align 8, !dbg !847
  %40 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %16, i32 0, i32 10, !dbg !848
  store i8* null, i8** %40, align 8, !dbg !849
  %41 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %16, i32 0, i32 1, !dbg !850
  store i32 0, i32* %41, align 8, !dbg !851
  %42 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %16, i32 0, i32 0, !dbg !852
  store i8* null, i8** %42, align 8, !dbg !853
  %43 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %16, i32 0, i32 2, !dbg !854
  store i64 0, i64* %43, align 8, !dbg !855
  %44 = load i32, i32* %10, align 4, !dbg !856
  %45 = call i32 @inflateInit2_(%struct.z_stream_s* %16, i32 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 112), !dbg !856
  store i32 %45, i32* %14, align 4, !dbg !857
  %46 = load i32, i32* %14, align 4, !dbg !858
  %47 = icmp ne i32 %46, 0, !dbg !860
  br i1 %47, label %48, label %52, !dbg !861

; <label>:48:                                     ; preds = %37
  %49 = load i8*, i8** %17, align 8, !dbg !862
  call void @free(i8* %49) #8, !dbg !864
  %50 = load i8*, i8** %18, align 8, !dbg !865
  call void @free(i8* %50) #8, !dbg !866
  %51 = load i32, i32* %14, align 4, !dbg !867
  store i32 %51, i32* %7, align 4, !dbg !868
  br label %162, !dbg !868

; <label>:52:                                     ; preds = %37
  br label %53, !dbg !869, !llvm.loop !870

; <label>:53:                                     ; preds = %145, %52
  %54 = load i32, i32* @CHUNK_i, align 4, !dbg !871
  store i32 %54, i32* %19, align 4, !dbg !873
  %55 = load i8*, i8** %17, align 8, !dbg !874
  %56 = load i32, i32* %19, align 4, !dbg !875
  %57 = zext i32 %56 to i64, !dbg !875
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8, !dbg !876
  %59 = call i64 @fread(i8* %55, i64 1, i64 %57, %struct._IO_FILE* %58), !dbg !877
  %60 = trunc i64 %59 to i32, !dbg !877
  %61 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %16, i32 0, i32 1, !dbg !878
  store i32 %60, i32* %61, align 8, !dbg !879
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8, !dbg !880
  %63 = call i32 @ferror(%struct._IO_FILE* %62) #8, !dbg !882
  %64 = icmp ne i32 %63, 0, !dbg !882
  br i1 %64, label %65, label %69, !dbg !883

; <label>:65:                                     ; preds = %53
  %66 = call i32 @inflateEnd(%struct.z_stream_s* %16), !dbg !884
  %67 = load i8*, i8** %17, align 8, !dbg !886
  call void @free(i8* %67) #8, !dbg !887
  %68 = load i8*, i8** %18, align 8, !dbg !888
  call void @free(i8* %68) #8, !dbg !889
  store i32 -1, i32* %7, align 4, !dbg !890
  br label %162, !dbg !890

; <label>:69:                                     ; preds = %53
  %70 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %16, i32 0, i32 1, !dbg !891
  %71 = load i32, i32* %70, align 8, !dbg !891
  %72 = icmp eq i32 %71, 0, !dbg !893
  br i1 %72, label %73, label %74, !dbg !894

; <label>:73:                                     ; preds = %69
  br label %148, !dbg !895

; <label>:74:                                     ; preds = %69
  %75 = load i8*, i8** %17, align 8, !dbg !896
  %76 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %16, i32 0, i32 0, !dbg !897
  store i8* %75, i8** %76, align 8, !dbg !898
  br label %77, !dbg !899, !llvm.loop !900

; <label>:77:                                     ; preds = %140, %74
  %78 = load i32, i32* @CHUNK_o, align 4, !dbg !901
  store i32 %78, i32* %20, align 4, !dbg !903
  %79 = load i32, i32* %20, align 4, !dbg !904
  %80 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %16, i32 0, i32 4, !dbg !905
  store i32 %79, i32* %80, align 8, !dbg !906
  %81 = load i8*, i8** %18, align 8, !dbg !907
  %82 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %16, i32 0, i32 3, !dbg !908
  store i8* %81, i8** %82, align 8, !dbg !909
  %83 = load i32, i32* %11, align 4, !dbg !910
  %84 = call i32 @inflate(%struct.z_stream_s* %16, i32 %83), !dbg !911
  store i32 %84, i32* %14, align 4, !dbg !912
  %85 = load i32, i32* %13, align 4, !dbg !913
  %86 = icmp ne i32 %85, 0, !dbg !913
  br i1 %86, label %87, label %95, !dbg !915

; <label>:87:                                     ; preds = %77
  %88 = load i32, i32* %14, align 4, !dbg !916
  %89 = icmp ne i32 %88, 1, !dbg !918
  br i1 %89, label %90, label %95, !dbg !919

; <label>:90:                                     ; preds = %87
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !920
  %92 = load i32, i32* %14, align 4, !dbg !922
  %93 = load i32, i32* @_pattern, align 4, !dbg !923
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.50, i32 0, i32 0), i32 %92, i32 %93), !dbg !924
  call void @abort() #10, !dbg !925
  unreachable, !dbg !925

; <label>:95:                                     ; preds = %87, %77
  %96 = load i32, i32* %14, align 4, !dbg !926
  %97 = icmp eq i32 %96, -2, !dbg !928
  br i1 %97, label %98, label %103, !dbg !929

; <label>:98:                                     ; preds = %95
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !930
  %100 = load i32, i32* %14, align 4, !dbg !932
  %101 = load i32, i32* @_pattern, align 4, !dbg !933
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.51, i32 0, i32 0), i32 %100, i32 %101), !dbg !934
  call void @abort() #10, !dbg !935
  unreachable, !dbg !935

; <label>:103:                                    ; preds = %95
  %104 = load i32, i32* %14, align 4, !dbg !936
  switch i32 %104, label %114 [
    i32 2, label %105
    i32 -3, label %109
    i32 -4, label %109
  ], !dbg !937

; <label>:105:                                    ; preds = %103
  %106 = call i32 @inflateEnd(%struct.z_stream_s* %16), !dbg !938
  %107 = load i8*, i8** %17, align 8, !dbg !940
  call void @free(i8* %107) #8, !dbg !941
  %108 = load i8*, i8** %18, align 8, !dbg !942
  call void @free(i8* %108) #8, !dbg !943
  store i32 -3, i32* %7, align 4, !dbg !944
  br label %162, !dbg !944

; <label>:109:                                    ; preds = %103, %103
  %110 = call i32 @inflateEnd(%struct.z_stream_s* %16), !dbg !945
  %111 = load i8*, i8** %17, align 8, !dbg !946
  call void @free(i8* %111) #8, !dbg !947
  %112 = load i8*, i8** %18, align 8, !dbg !948
  call void @free(i8* %112) #8, !dbg !949
  %113 = load i32, i32* %14, align 4, !dbg !950
  store i32 %113, i32* %7, align 4, !dbg !951
  br label %162, !dbg !951

; <label>:114:                                    ; preds = %103
  %115 = load i32, i32* %20, align 4, !dbg !952
  %116 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %16, i32 0, i32 4, !dbg !953
  %117 = load i32, i32* %116, align 8, !dbg !953
  %118 = sub i32 %115, %117, !dbg !954
  store i32 %118, i32* %15, align 4, !dbg !955
  %119 = load i8*, i8** %18, align 8, !dbg !956
  %120 = load i32, i32* %15, align 4, !dbg !958
  %121 = zext i32 %120 to i64, !dbg !958
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !959
  %123 = call i64 @fwrite(i8* %119, i64 1, i64 %121, %struct._IO_FILE* %122), !dbg !960
  %124 = load i32, i32* %15, align 4, !dbg !961
  %125 = zext i32 %124 to i64, !dbg !961
  %126 = icmp ne i64 %123, %125, !dbg !962
  br i1 %126, label %131, label %127, !dbg !963

; <label>:127:                                    ; preds = %114
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !964
  %129 = call i32 @ferror(%struct._IO_FILE* %128) #8, !dbg !965
  %130 = icmp ne i32 %129, 0, !dbg !965
  br i1 %130, label %131, label %135, !dbg !966

; <label>:131:                                    ; preds = %127, %114
  %132 = call i32 @inflateEnd(%struct.z_stream_s* %16), !dbg !968
  %133 = load i8*, i8** %17, align 8, !dbg !970
  call void @free(i8* %133) #8, !dbg !971
  %134 = load i8*, i8** %18, align 8, !dbg !972
  call void @free(i8* %134) #8, !dbg !973
  store i32 -1, i32* %7, align 4, !dbg !974
  br label %162, !dbg !974

; <label>:135:                                    ; preds = %127
  %136 = load i32, i32* %14, align 4, !dbg !975
  %137 = icmp eq i32 %136, 1, !dbg !977
  br i1 %137, label %138, label %139, !dbg !978

; <label>:138:                                    ; preds = %135
  br label %144, !dbg !979

; <label>:139:                                    ; preds = %135
  br label %140, !dbg !980

; <label>:140:                                    ; preds = %139
  %141 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %16, i32 0, i32 4, !dbg !981
  %142 = load i32, i32* %141, align 8, !dbg !981
  %143 = icmp eq i32 %142, 0, !dbg !983
  br i1 %143, label %77, label %144, !dbg !984, !llvm.loop !900

; <label>:144:                                    ; preds = %140, %138
  br label %145, !dbg !985

; <label>:145:                                    ; preds = %144
  %146 = load i32, i32* %14, align 4, !dbg !986
  %147 = icmp ne i32 %146, 1, !dbg !988
  br i1 %147, label %53, label %148, !dbg !989, !llvm.loop !870

; <label>:148:                                    ; preds = %145, %73
  %149 = load i64*, i64** %12, align 8, !dbg !990
  %150 = icmp ne i64* %149, null, !dbg !990
  br i1 %150, label %151, label %155, !dbg !992

; <label>:151:                                    ; preds = %148
  %152 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %16, i32 0, i32 2, !dbg !993
  %153 = load i64, i64* %152, align 8, !dbg !993
  %154 = load i64*, i64** %12, align 8, !dbg !994
  store i64 %153, i64* %154, align 8, !dbg !995
  br label %155, !dbg !996

; <label>:155:                                    ; preds = %151, %148
  %156 = call i32 @inflateEnd(%struct.z_stream_s* %16), !dbg !997
  %157 = load i8*, i8** %17, align 8, !dbg !998
  call void @free(i8* %157) #8, !dbg !999
  %158 = load i8*, i8** %18, align 8, !dbg !1000
  call void @free(i8* %158) #8, !dbg !1001
  %159 = load i32, i32* %14, align 4, !dbg !1002
  %160 = icmp eq i32 %159, 1, !dbg !1003
  %161 = select i1 %160, i32 0, i32 -3, !dbg !1002
  store i32 %161, i32* %7, align 4, !dbg !1004
  br label %162, !dbg !1004

; <label>:162:                                    ; preds = %155, %131, %109, %105, %65, %48, %35, %28
  %163 = load i32, i32* %7, align 4, !dbg !1005
  ret i32 %163, !dbg !1005
}

declare i32 @system(i8*) #6

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

; Function Attrs: nounwind
declare i64 @strtoull(i8*, i8**, i32) #2

; Function Attrs: nounwind
declare i8* @__xpg_basename(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i32 @deflateInit2_(%struct.z_stream_s*, i32, i32, i32, i32, i32, i8*, i32) #6

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #6

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

declare i32 @deflateEnd(%struct.z_stream_s*) #6

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

declare i32 @deflate(%struct.z_stream_s*, i32) #6

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #5

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #6

declare i32 @fputs(i8*, %struct._IO_FILE*) #6

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

declare i32 @inflateInit2_(%struct.z_stream_s*, i32, i8*, i32) #6

declare i32 @inflateEnd(%struct.z_stream_s*) #6

declare i32 @inflate(%struct.z_stream_s*, i32) #6

; Function Attrs: noreturn nounwind
declare void @abort() #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!34, !35}
!llvm.ident = !{!36}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !7)
!1 = !DIFile(filename: "/home/lichi/Desktop/genwqe/[task]misc--zpipe_append/[inter]misc--zpipe_append.o.i", directory: "/home/lichi/Desktop")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!6 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!7 = !{!8, !29, !30, !31, !33}
!8 = distinct !DIGlobalVariable(name: "long_options", scope: !9, file: !10, line: 418, type: !16, isLocal: true, isDefinition: true, variable: [12 x %struct.option]* @main.long_options)
!9 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 393, type: !11, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!10 = !DIFile(filename: "zpipe_append.c", directory: "/home/lichi/Desktop")
!11 = !DISubroutineType(types: !12)
!12 = !{!6, !6, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 3072, align: 64, elements: !27)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !18, line: 104, size: 256, align: 64, elements: !19)
!18 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/lichi/Desktop")
!19 = !{!20, !23, !24, !26}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !17, file: !18, line: 106, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !17, file: !18, line: 109, baseType: !6, size: 32, align: 32, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !17, file: !18, line: 110, baseType: !25, size: 64, align: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !17, file: !18, line: 111, baseType: !6, size: 32, align: 32, offset: 192)
!27 = !{!28}
!28 = !DISubrange(count: 12)
!29 = distinct !DIGlobalVariable(name: "_pattern", scope: !0, file: !10, line: 62, type: !6, isLocal: true, isDefinition: true, variable: i32* @_pattern)
!30 = distinct !DIGlobalVariable(name: "verbose", scope: !0, file: !10, line: 59, type: !6, isLocal: true, isDefinition: true, variable: i32* @verbose)
!31 = distinct !DIGlobalVariable(name: "CHUNK_i", scope: !0, file: !10, line: 60, type: !32, isLocal: true, isDefinition: true, variable: i32* @CHUNK_i)
!32 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!33 = distinct !DIGlobalVariable(name: "CHUNK_o", scope: !0, file: !10, line: 61, type: !32, isLocal: true, isDefinition: true, variable: i32* @CHUNK_o)
!34 = !{i32 2, !"Dwarf Version", i32 4}
!35 = !{i32 2, !"Debug Info Version", i32 3}
!36 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!37 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !10, line: 393, type: !6)
!38 = !DIExpression()
!39 = !DILocation(line: 393, column: 14, scope: !9)
!40 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !10, line: 393, type: !13)
!41 = !DILocation(line: 393, column: 27, scope: !9)
!42 = !DILocalVariable(name: "j", scope: !9, file: !10, line: 395, type: !6)
!43 = !DILocation(line: 395, column: 6, scope: !9)
!44 = !DILocalVariable(name: "rc", scope: !9, file: !10, line: 395, type: !6)
!45 = !DILocation(line: 395, column: 9, scope: !9)
!46 = !DILocalVariable(name: "expected_bytes", scope: !9, file: !10, line: 396, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 216, baseType: !49)
!48 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop")
!49 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!50 = !DILocation(line: 396, column: 9, scope: !9)
!51 = !DILocalVariable(name: "decompressed_bytes", scope: !9, file: !10, line: 396, type: !47)
!52 = !DILocation(line: 396, column: 29, scope: !9)
!53 = !DILocalVariable(name: "input_size", scope: !9, file: !10, line: 396, type: !47)
!54 = !DILocation(line: 396, column: 53, scope: !9)
!55 = !DILocalVariable(name: "i_fp", scope: !9, file: !10, line: 397, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !58, line: 48, baseType: !59)
!58 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !60, line: 241, size: 1728, align: 64, elements: !61)
!60 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop")
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !82, !83, !84, !85, !89, !91, !93, !97, !100, !102, !103, !104, !105, !106, !107, !108}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !59, file: !60, line: 242, baseType: !6, size: 32, align: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !59, file: !60, line: 247, baseType: !14, size: 64, align: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !59, file: !60, line: 248, baseType: !14, size: 64, align: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !59, file: !60, line: 249, baseType: !14, size: 64, align: 64, offset: 192)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !59, file: !60, line: 250, baseType: !14, size: 64, align: 64, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !59, file: !60, line: 251, baseType: !14, size: 64, align: 64, offset: 320)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !59, file: !60, line: 252, baseType: !14, size: 64, align: 64, offset: 384)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !59, file: !60, line: 253, baseType: !14, size: 64, align: 64, offset: 448)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !59, file: !60, line: 254, baseType: !14, size: 64, align: 64, offset: 512)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !59, file: !60, line: 256, baseType: !14, size: 64, align: 64, offset: 576)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !59, file: !60, line: 257, baseType: !14, size: 64, align: 64, offset: 640)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !59, file: !60, line: 258, baseType: !14, size: 64, align: 64, offset: 704)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !59, file: !60, line: 260, baseType: !75, size: 64, align: 64, offset: 768)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !60, line: 156, size: 192, align: 64, elements: !77)
!77 = !{!78, !79, !81}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !76, file: !60, line: 157, baseType: !75, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !76, file: !60, line: 158, baseType: !80, size: 64, align: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !76, file: !60, line: 162, baseType: !6, size: 32, align: 32, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !59, file: !60, line: 262, baseType: !80, size: 64, align: 64, offset: 832)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !59, file: !60, line: 264, baseType: !6, size: 32, align: 32, offset: 896)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !59, file: !60, line: 268, baseType: !6, size: 32, align: 32, offset: 928)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !59, file: !60, line: 270, baseType: !86, size: 64, align: 64, offset: 960)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !87, line: 131, baseType: !88)
!87 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop")
!88 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !59, file: !60, line: 274, baseType: !90, size: 16, align: 16, offset: 1024)
!90 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !59, file: !60, line: 275, baseType: !92, size: 8, align: 8, offset: 1040)
!92 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !59, file: !60, line: 276, baseType: !94, size: 8, align: 8, offset: 1048)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, align: 8, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 1)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !59, file: !60, line: 280, baseType: !98, size: 64, align: 64, offset: 1088)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !60, line: 150, baseType: null)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !59, file: !60, line: 289, baseType: !101, size: 64, align: 64, offset: 1152)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !87, line: 132, baseType: !88)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !59, file: !60, line: 297, baseType: !4, size: 64, align: 64, offset: 1216)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !59, file: !60, line: 298, baseType: !4, size: 64, align: 64, offset: 1280)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !59, file: !60, line: 299, baseType: !4, size: 64, align: 64, offset: 1344)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !59, file: !60, line: 300, baseType: !4, size: 64, align: 64, offset: 1408)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !59, file: !60, line: 302, baseType: !47, size: 64, align: 64, offset: 1472)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !59, file: !60, line: 303, baseType: !6, size: 32, align: 32, offset: 1536)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !59, file: !60, line: 305, baseType: !109, size: 160, align: 8, offset: 1568)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, align: 8, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 20)
!112 = !DILocation(line: 397, column: 8, scope: !9)
!113 = !DILocalVariable(name: "o_fp", scope: !9, file: !10, line: 397, type: !56)
!114 = !DILocation(line: 397, column: 15, scope: !9)
!115 = !DILocalVariable(name: "n_fp", scope: !9, file: !10, line: 397, type: !56)
!116 = !DILocation(line: 397, column: 22, scope: !9)
!117 = !DILocalVariable(name: "i_fname", scope: !9, file: !10, line: 398, type: !118)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 512, align: 8, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 64)
!121 = !DILocation(line: 398, column: 7, scope: !9)
!122 = !DILocalVariable(name: "o_fname", scope: !9, file: !10, line: 398, type: !118)
!123 = !DILocation(line: 398, column: 20, scope: !9)
!124 = !DILocalVariable(name: "n_fname", scope: !9, file: !10, line: 398, type: !118)
!125 = !DILocation(line: 398, column: 33, scope: !9)
!126 = !DILocalVariable(name: "diff_cmd", scope: !9, file: !10, line: 399, type: !127)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 1024, align: 8, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 128)
!130 = !DILocation(line: 399, column: 7, scope: !9)
!131 = !DILocalVariable(name: "pattern", scope: !9, file: !10, line: 400, type: !21)
!132 = !DILocation(line: 400, column: 14, scope: !9)
!133 = !DILocalVariable(name: "window_bits", scope: !9, file: !10, line: 401, type: !6)
!134 = !DILocation(line: 401, column: 6, scope: !9)
!135 = !DILocalVariable(name: "format", scope: !9, file: !10, line: 402, type: !21)
!136 = !DILocation(line: 402, column: 14, scope: !9)
!137 = !DILocalVariable(name: "flush", scope: !9, file: !10, line: 403, type: !6)
!138 = !DILocation(line: 403, column: 6, scope: !9)
!139 = !DILocalVariable(name: "exact_input", scope: !9, file: !10, line: 404, type: !6)
!140 = !DILocation(line: 404, column: 6, scope: !9)
!141 = !DILocalVariable(name: "exact_output", scope: !9, file: !10, line: 404, type: !6)
!142 = !DILocation(line: 404, column: 23, scope: !9)
!143 = !DILocalVariable(name: "size", scope: !9, file: !10, line: 405, type: !47)
!144 = !DILocation(line: 405, column: 9, scope: !9)
!145 = !DILocalVariable(name: "expect_z_stream_end", scope: !9, file: !10, line: 406, type: !6)
!146 = !DILocation(line: 406, column: 6, scope: !9)
!147 = !DILocalVariable(name: "keep", scope: !9, file: !10, line: 407, type: !6)
!148 = !DILocation(line: 407, column: 6, scope: !9)
!149 = !DILocation(line: 409, column: 13, scope: !9)
!150 = !DILocation(line: 409, column: 11, scope: !9)
!151 = !DILocation(line: 415, column: 2, scope: !9)
!152 = !DILocalVariable(name: "ch", scope: !153, file: !10, line: 416, type: !6)
!153 = distinct !DILexicalBlock(scope: !9, file: !10, line: 415, column: 12)
!154 = !DILocation(line: 416, column: 7, scope: !153)
!155 = !DILocalVariable(name: "option_index", scope: !153, file: !10, line: 417, type: !6)
!156 = !DILocation(line: 417, column: 7, scope: !153)
!157 = !DILocation(line: 433, column: 20, scope: !153)
!158 = !DILocation(line: 433, column: 26, scope: !153)
!159 = !DILocation(line: 433, column: 8, scope: !153)
!160 = !DILocation(line: 433, column: 6, scope: !153)
!161 = !DILocation(line: 435, column: 7, scope: !162)
!162 = distinct !DILexicalBlock(scope: !153, file: !10, line: 435, column: 7)
!163 = !DILocation(line: 435, column: 10, scope: !162)
!164 = !DILocation(line: 435, column: 7, scope: !153)
!165 = !DILocation(line: 436, column: 4, scope: !162)
!166 = !DILocation(line: 438, column: 11, scope: !153)
!167 = !DILocation(line: 438, column: 3, scope: !153)
!168 = !DILocation(line: 441, column: 13, scope: !169)
!169 = distinct !DILexicalBlock(scope: !153, file: !10, line: 438, column: 15)
!170 = !DILocation(line: 441, column: 11, scope: !169)
!171 = !DILocation(line: 442, column: 4, scope: !169)
!172 = !DILocation(line: 444, column: 15, scope: !173)
!173 = distinct !DILexicalBlock(scope: !169, file: !10, line: 444, column: 8)
!174 = !DILocation(line: 444, column: 8, scope: !173)
!175 = !DILocation(line: 444, column: 37, scope: !173)
!176 = !DILocation(line: 444, column: 8, scope: !169)
!177 = !DILocation(line: 445, column: 11, scope: !173)
!178 = !DILocation(line: 445, column: 5, scope: !173)
!179 = !DILocation(line: 446, column: 20, scope: !180)
!180 = distinct !DILexicalBlock(scope: !173, file: !10, line: 446, column: 13)
!181 = !DILocation(line: 446, column: 13, scope: !180)
!182 = !DILocation(line: 446, column: 47, scope: !180)
!183 = !DILocation(line: 446, column: 13, scope: !173)
!184 = !DILocation(line: 447, column: 11, scope: !180)
!185 = !DILocation(line: 447, column: 5, scope: !180)
!186 = !DILocation(line: 448, column: 20, scope: !187)
!187 = distinct !DILexicalBlock(scope: !180, file: !10, line: 448, column: 13)
!188 = !DILocation(line: 448, column: 13, scope: !187)
!189 = !DILocation(line: 448, column: 44, scope: !187)
!190 = !DILocation(line: 448, column: 13, scope: !180)
!191 = !DILocation(line: 449, column: 11, scope: !187)
!192 = !DILocation(line: 449, column: 5, scope: !187)
!193 = !DILocation(line: 450, column: 20, scope: !194)
!194 = distinct !DILexicalBlock(scope: !187, file: !10, line: 450, column: 13)
!195 = !DILocation(line: 450, column: 13, scope: !194)
!196 = !DILocation(line: 450, column: 44, scope: !194)
!197 = !DILocation(line: 450, column: 13, scope: !187)
!198 = !DILocation(line: 451, column: 11, scope: !194)
!199 = !DILocation(line: 451, column: 5, scope: !194)
!200 = !DILocation(line: 452, column: 4, scope: !169)
!201 = !DILocation(line: 454, column: 16, scope: !169)
!202 = !DILocation(line: 455, column: 4, scope: !169)
!203 = !DILocation(line: 457, column: 17, scope: !169)
!204 = !DILocation(line: 458, column: 4, scope: !169)
!205 = !DILocation(line: 460, column: 9, scope: !169)
!206 = !DILocation(line: 461, column: 4, scope: !169)
!207 = !DILocation(line: 463, column: 11, scope: !169)
!208 = !DILocation(line: 464, column: 4, scope: !169)
!209 = !DILocation(line: 466, column: 25, scope: !169)
!210 = !DILocation(line: 466, column: 14, scope: !169)
!211 = !DILocation(line: 466, column: 12, scope: !169)
!212 = !DILocation(line: 467, column: 4, scope: !169)
!213 = !DILocation(line: 469, column: 25, scope: !169)
!214 = !DILocation(line: 469, column: 14, scope: !169)
!215 = !DILocation(line: 469, column: 12, scope: !169)
!216 = !DILocation(line: 470, column: 4, scope: !169)
!217 = !DILocation(line: 472, column: 22, scope: !169)
!218 = !DILocation(line: 472, column: 11, scope: !169)
!219 = !DILocation(line: 472, column: 9, scope: !169)
!220 = !DILocation(line: 473, column: 4, scope: !169)
!221 = !DILocation(line: 475, column: 26, scope: !169)
!222 = !DILocation(line: 475, column: 15, scope: !169)
!223 = !DILocation(line: 475, column: 13, scope: !169)
!224 = !DILocation(line: 476, column: 4, scope: !169)
!225 = !DILocation(line: 479, column: 10, scope: !169)
!226 = !DILocation(line: 479, column: 4, scope: !169)
!227 = !DILocation(line: 480, column: 4, scope: !169)
!228 = !DILocation(line: 415, column: 2, scope: !229)
!229 = !DILexicalBlockFile(scope: !9, file: !10, discriminator: 1)
!230 = distinct !{!230, !151}
!231 = !DILocation(line: 485, column: 39, scope: !9)
!232 = !DILocation(line: 485, column: 16, scope: !9)
!233 = !DILocation(line: 485, column: 14, scope: !9)
!234 = !DILocation(line: 488, column: 10, scope: !9)
!235 = !DILocation(line: 488, column: 34, scope: !9)
!236 = !DILocation(line: 488, column: 44, scope: !9)
!237 = !DILocation(line: 488, column: 2, scope: !9)
!238 = !DILocation(line: 489, column: 10, scope: !9)
!239 = !DILocation(line: 489, column: 34, scope: !9)
!240 = !DILocation(line: 489, column: 44, scope: !9)
!241 = !DILocation(line: 489, column: 2, scope: !9)
!242 = !DILocation(line: 490, column: 10, scope: !9)
!243 = !DILocation(line: 490, column: 34, scope: !9)
!244 = !DILocation(line: 490, column: 44, scope: !9)
!245 = !DILocation(line: 490, column: 2, scope: !9)
!246 = !DILocation(line: 493, column: 15, scope: !9)
!247 = !DILocation(line: 493, column: 9, scope: !9)
!248 = !DILocation(line: 493, column: 7, scope: !9)
!249 = !DILocation(line: 494, column: 4, scope: !9)
!250 = !DILocation(line: 495, column: 13, scope: !9)
!251 = !DILocation(line: 496, column: 2, scope: !9)
!252 = !DILocation(line: 496, column: 9, scope: !229)
!253 = !DILocation(line: 496, column: 22, scope: !229)
!254 = !DILocation(line: 496, column: 20, scope: !229)
!255 = !DILocation(line: 496, column: 2, scope: !229)
!256 = !DILocation(line: 497, column: 16, scope: !257)
!257 = distinct !DILexicalBlock(scope: !9, file: !10, line: 496, column: 28)
!258 = !DILocation(line: 497, column: 40, scope: !257)
!259 = !DILocation(line: 497, column: 43, scope: !257)
!260 = !DILocation(line: 497, column: 52, scope: !257)
!261 = !DILocation(line: 497, column: 8, scope: !257)
!262 = !DILocation(line: 497, column: 6, scope: !257)
!263 = !DILocation(line: 498, column: 7, scope: !264)
!264 = distinct !DILexicalBlock(scope: !257, file: !10, line: 498, column: 7)
!265 = !DILocation(line: 498, column: 10, scope: !264)
!266 = !DILocation(line: 498, column: 7, scope: !257)
!267 = !DILocation(line: 499, column: 4, scope: !264)
!268 = !DILocation(line: 501, column: 17, scope: !257)
!269 = !DILocation(line: 501, column: 14, scope: !257)
!270 = !DILocation(line: 502, column: 4, scope: !257)
!271 = !DILocation(line: 496, column: 2, scope: !272)
!272 = !DILexicalBlockFile(scope: !9, file: !10, discriminator: 2)
!273 = distinct !{!273, !251}
!274 = !DILocation(line: 504, column: 9, scope: !9)
!275 = !DILocation(line: 504, column: 2, scope: !9)
!276 = !DILocation(line: 506, column: 15, scope: !9)
!277 = !DILocation(line: 506, column: 9, scope: !9)
!278 = !DILocation(line: 506, column: 7, scope: !9)
!279 = !DILocation(line: 507, column: 6, scope: !280)
!280 = distinct !DILexicalBlock(scope: !9, file: !10, line: 507, column: 6)
!281 = !DILocation(line: 507, column: 11, scope: !280)
!282 = !DILocation(line: 507, column: 6, scope: !9)
!283 = !DILocation(line: 508, column: 3, scope: !280)
!284 = !DILocation(line: 510, column: 15, scope: !9)
!285 = !DILocation(line: 510, column: 9, scope: !9)
!286 = !DILocation(line: 510, column: 7, scope: !9)
!287 = !DILocation(line: 511, column: 6, scope: !288)
!288 = distinct !DILexicalBlock(scope: !9, file: !10, line: 511, column: 6)
!289 = !DILocation(line: 511, column: 11, scope: !288)
!290 = !DILocation(line: 511, column: 6, scope: !9)
!291 = !DILocation(line: 512, column: 3, scope: !288)
!292 = !DILocation(line: 515, column: 11, scope: !9)
!293 = !DILocation(line: 515, column: 17, scope: !9)
!294 = !DILocation(line: 515, column: 23, scope: !9)
!295 = !DILocation(line: 515, column: 36, scope: !9)
!296 = !DILocation(line: 515, column: 7, scope: !9)
!297 = !DILocation(line: 515, column: 5, scope: !9)
!298 = !DILocation(line: 517, column: 6, scope: !299)
!299 = distinct !DILexicalBlock(scope: !9, file: !10, line: 517, column: 6)
!300 = !DILocation(line: 517, column: 9, scope: !299)
!301 = !DILocation(line: 517, column: 6, scope: !9)
!302 = !DILocation(line: 518, column: 10, scope: !303)
!303 = distinct !DILexicalBlock(scope: !299, file: !10, line: 517, column: 17)
!304 = !DILocation(line: 518, column: 3, scope: !303)
!305 = !DILocation(line: 519, column: 10, scope: !303)
!306 = !DILocation(line: 519, column: 3, scope: !303)
!307 = !DILocation(line: 520, column: 10, scope: !303)
!308 = !DILocation(line: 520, column: 3, scope: !303)
!309 = !DILocation(line: 521, column: 8, scope: !303)
!310 = !DILocation(line: 521, column: 3, scope: !303)
!311 = !DILocation(line: 522, column: 10, scope: !303)
!312 = !DILocation(line: 522, column: 3, scope: !303)
!313 = !DILocation(line: 524, column: 9, scope: !9)
!314 = !DILocation(line: 524, column: 2, scope: !9)
!315 = !DILocation(line: 527, column: 15, scope: !9)
!316 = !DILocation(line: 527, column: 27, scope: !9)
!317 = !DILocation(line: 527, column: 7, scope: !9)
!318 = !DILocation(line: 527, column: 5, scope: !9)
!319 = !DILocation(line: 530, column: 9, scope: !9)
!320 = !DILocation(line: 530, column: 2, scope: !9)
!321 = !DILocation(line: 532, column: 15, scope: !9)
!322 = !DILocation(line: 532, column: 9, scope: !9)
!323 = !DILocation(line: 532, column: 7, scope: !9)
!324 = !DILocation(line: 533, column: 6, scope: !325)
!325 = distinct !DILexicalBlock(scope: !9, file: !10, line: 533, column: 6)
!326 = !DILocation(line: 533, column: 11, scope: !325)
!327 = !DILocation(line: 533, column: 6, scope: !9)
!328 = !DILocation(line: 534, column: 3, scope: !325)
!329 = !DILocation(line: 536, column: 15, scope: !9)
!330 = !DILocation(line: 536, column: 9, scope: !9)
!331 = !DILocation(line: 536, column: 7, scope: !9)
!332 = !DILocation(line: 537, column: 6, scope: !333)
!333 = distinct !DILexicalBlock(scope: !9, file: !10, line: 537, column: 6)
!334 = !DILocation(line: 537, column: 11, scope: !333)
!335 = !DILocation(line: 537, column: 6, scope: !9)
!336 = !DILocation(line: 538, column: 3, scope: !333)
!337 = !DILocation(line: 551, column: 6, scope: !338)
!338 = distinct !DILexicalBlock(scope: !9, file: !10, line: 551, column: 6)
!339 = !DILocation(line: 551, column: 6, scope: !9)
!340 = !DILocation(line: 552, column: 13, scope: !338)
!341 = !DILocation(line: 552, column: 37, scope: !338)
!342 = !DILocation(line: 552, column: 30, scope: !338)
!343 = !DILocation(line: 552, column: 28, scope: !338)
!344 = !DILocation(line: 552, column: 11, scope: !338)
!345 = !DILocation(line: 552, column: 3, scope: !338)
!346 = !DILocation(line: 554, column: 6, scope: !347)
!347 = distinct !DILexicalBlock(scope: !9, file: !10, line: 554, column: 6)
!348 = !DILocation(line: 554, column: 6, scope: !9)
!349 = !DILocation(line: 555, column: 13, scope: !350)
!350 = distinct !DILexicalBlock(scope: !347, file: !10, line: 554, column: 20)
!351 = !DILocation(line: 555, column: 11, scope: !350)
!352 = !DILocation(line: 556, column: 23, scope: !350)
!353 = !DILocation(line: 557, column: 2, scope: !350)
!354 = !DILocation(line: 570, column: 11, scope: !9)
!355 = !DILocation(line: 570, column: 17, scope: !9)
!356 = !DILocation(line: 570, column: 23, scope: !9)
!357 = !DILocation(line: 570, column: 36, scope: !9)
!358 = !DILocation(line: 571, column: 4, scope: !9)
!359 = !DILocation(line: 570, column: 7, scope: !9)
!360 = !DILocation(line: 570, column: 5, scope: !9)
!361 = !DILocation(line: 572, column: 6, scope: !362)
!362 = distinct !DILexicalBlock(scope: !9, file: !10, line: 572, column: 6)
!363 = !DILocation(line: 572, column: 24, scope: !362)
!364 = !DILocation(line: 572, column: 21, scope: !362)
!365 = !DILocation(line: 572, column: 6, scope: !9)
!366 = !DILocation(line: 573, column: 10, scope: !367)
!367 = distinct !DILexicalBlock(scope: !362, file: !10, line: 572, column: 44)
!368 = !DILocation(line: 576, column: 15, scope: !367)
!369 = !DILocation(line: 577, column: 15, scope: !367)
!370 = !DILocation(line: 578, column: 16, scope: !367)
!371 = !DILocation(line: 578, column: 9, scope: !367)
!372 = !DILocation(line: 578, column: 4, scope: !367)
!373 = !DILocation(line: 573, column: 3, scope: !367)
!374 = !DILocation(line: 579, column: 3, scope: !367)
!375 = !DILocation(line: 582, column: 6, scope: !376)
!376 = distinct !DILexicalBlock(scope: !9, file: !10, line: 582, column: 6)
!377 = !DILocation(line: 582, column: 9, scope: !376)
!378 = !DILocation(line: 582, column: 6, scope: !9)
!379 = !DILocation(line: 583, column: 10, scope: !380)
!380 = distinct !DILexicalBlock(scope: !376, file: !10, line: 582, column: 17)
!381 = !DILocation(line: 583, column: 3, scope: !380)
!382 = !DILocation(line: 584, column: 10, scope: !380)
!383 = !DILocation(line: 584, column: 3, scope: !380)
!384 = !DILocation(line: 585, column: 10, scope: !380)
!385 = !DILocation(line: 585, column: 3, scope: !380)
!386 = !DILocation(line: 586, column: 8, scope: !380)
!387 = !DILocation(line: 586, column: 3, scope: !380)
!388 = !DILocation(line: 587, column: 10, scope: !380)
!389 = !DILocation(line: 587, column: 3, scope: !380)
!390 = !DILocation(line: 590, column: 9, scope: !9)
!391 = !DILocation(line: 590, column: 2, scope: !9)
!392 = !DILocation(line: 591, column: 9, scope: !9)
!393 = !DILocation(line: 591, column: 2, scope: !9)
!394 = !DILocation(line: 593, column: 10, scope: !9)
!395 = !DILocation(line: 593, column: 37, scope: !9)
!396 = !DILocation(line: 593, column: 46, scope: !9)
!397 = !DILocation(line: 593, column: 2, scope: !9)
!398 = !DILocation(line: 594, column: 14, scope: !9)
!399 = !DILocation(line: 594, column: 7, scope: !9)
!400 = !DILocation(line: 594, column: 5, scope: !9)
!401 = !DILocation(line: 595, column: 6, scope: !402)
!402 = distinct !DILexicalBlock(scope: !9, file: !10, line: 595, column: 6)
!403 = !DILocation(line: 595, column: 9, scope: !402)
!404 = !DILocation(line: 595, column: 6, scope: !9)
!405 = !DILocation(line: 596, column: 10, scope: !406)
!406 = distinct !DILexicalBlock(scope: !402, file: !10, line: 595, column: 15)
!407 = !DILocation(line: 597, column: 4, scope: !406)
!408 = !DILocation(line: 597, column: 13, scope: !406)
!409 = !DILocation(line: 596, column: 3, scope: !406)
!410 = !DILocation(line: 598, column: 3, scope: !406)
!411 = !DILocation(line: 601, column: 7, scope: !412)
!412 = distinct !DILexicalBlock(scope: !9, file: !10, line: 601, column: 6)
!413 = !DILocation(line: 601, column: 6, scope: !9)
!414 = !DILocation(line: 602, column: 10, scope: !415)
!415 = distinct !DILexicalBlock(scope: !412, file: !10, line: 601, column: 13)
!416 = !DILocation(line: 602, column: 3, scope: !415)
!417 = !DILocation(line: 603, column: 10, scope: !415)
!418 = !DILocation(line: 603, column: 3, scope: !415)
!419 = !DILocation(line: 604, column: 10, scope: !415)
!420 = !DILocation(line: 604, column: 3, scope: !415)
!421 = !DILocation(line: 605, column: 2, scope: !415)
!422 = !DILocation(line: 607, column: 2, scope: !9)
!423 = !DILocation(line: 608, column: 1, scope: !9)
!424 = distinct !DISubprogram(name: "str_to_num", scope: !10, file: !10, line: 357, type: !425, isLocal: true, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!425 = !DISubroutineType(types: !426)
!426 = !{!427, !14}
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !428, line: 55, baseType: !49)
!428 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop")
!429 = !DILocalVariable(name: "str", arg: 1, scope: !424, file: !10, line: 357, type: !14)
!430 = !DILocation(line: 357, column: 41, scope: !424)
!431 = !DILocalVariable(name: "s", scope: !424, file: !10, line: 359, type: !14)
!432 = !DILocation(line: 359, column: 8, scope: !424)
!433 = !DILocation(line: 359, column: 12, scope: !424)
!434 = !DILocalVariable(name: "num", scope: !424, file: !10, line: 360, type: !427)
!435 = !DILocation(line: 360, column: 11, scope: !424)
!436 = !DILocation(line: 360, column: 26, scope: !424)
!437 = !DILocation(line: 360, column: 17, scope: !424)
!438 = !DILocation(line: 362, column: 7, scope: !439)
!439 = distinct !DILexicalBlock(scope: !424, file: !10, line: 362, column: 6)
!440 = !DILocation(line: 362, column: 6, scope: !439)
!441 = !DILocation(line: 362, column: 9, scope: !439)
!442 = !DILocation(line: 362, column: 6, scope: !424)
!443 = !DILocation(line: 363, column: 10, scope: !439)
!444 = !DILocation(line: 363, column: 3, scope: !439)
!445 = !DILocation(line: 365, column: 13, scope: !446)
!446 = distinct !DILexicalBlock(scope: !424, file: !10, line: 365, column: 6)
!447 = !DILocation(line: 365, column: 6, scope: !446)
!448 = !DILocation(line: 365, column: 23, scope: !446)
!449 = !DILocation(line: 365, column: 6, scope: !424)
!450 = !DILocation(line: 366, column: 7, scope: !446)
!451 = !DILocation(line: 366, column: 3, scope: !446)
!452 = !DILocation(line: 367, column: 18, scope: !453)
!453 = distinct !DILexicalBlock(scope: !446, file: !10, line: 367, column: 11)
!454 = !DILocation(line: 367, column: 11, scope: !453)
!455 = !DILocation(line: 367, column: 28, scope: !453)
!456 = !DILocation(line: 367, column: 11, scope: !446)
!457 = !DILocation(line: 368, column: 7, scope: !453)
!458 = !DILocation(line: 368, column: 3, scope: !453)
!459 = !DILocation(line: 369, column: 18, scope: !460)
!460 = distinct !DILexicalBlock(scope: !453, file: !10, line: 369, column: 11)
!461 = !DILocation(line: 369, column: 11, scope: !460)
!462 = !DILocation(line: 369, column: 28, scope: !460)
!463 = !DILocation(line: 369, column: 11, scope: !453)
!464 = !DILocation(line: 370, column: 7, scope: !460)
!465 = !DILocation(line: 370, column: 3, scope: !460)
!466 = !DILocation(line: 372, column: 9, scope: !424)
!467 = !DILocation(line: 372, column: 2, scope: !424)
!468 = !DILocation(line: 373, column: 1, scope: !424)
!469 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 375, type: !470, isLocal: true, isDefinition: true, scopeLine: 376, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !14}
!472 = !DILocalVariable(name: "prog", arg: 1, scope: !469, file: !10, line: 375, type: !14)
!473 = !DILocation(line: 375, column: 25, scope: !469)
!474 = !DILocalVariable(name: "b", scope: !469, file: !10, line: 377, type: !14)
!475 = !DILocation(line: 377, column: 8, scope: !469)
!476 = !DILocation(line: 377, column: 20, scope: !469)
!477 = !DILocation(line: 377, column: 11, scope: !469)
!478 = !DILocation(line: 379, column: 9, scope: !469)
!479 = !DILocation(line: 389, column: 3, scope: !469)
!480 = !DILocation(line: 389, column: 6, scope: !469)
!481 = !DILocation(line: 379, column: 2, scope: !469)
!482 = !DILocation(line: 390, column: 1, scope: !469)
!483 = distinct !DISubprogram(name: "figure_out_window_bits", scope: !10, file: !10, line: 69, type: !484, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!484 = !DISubroutineType(types: !485)
!485 = !{!6, !21}
!486 = !DILocalVariable(name: "format", arg: 1, scope: !483, file: !10, line: 69, type: !21)
!487 = !DILocation(line: 69, column: 47, scope: !483)
!488 = !DILocation(line: 71, column: 13, scope: !489)
!489 = distinct !DILexicalBlock(scope: !483, file: !10, line: 71, column: 6)
!490 = !DILocation(line: 71, column: 6, scope: !489)
!491 = !DILocation(line: 71, column: 29, scope: !489)
!492 = !DILocation(line: 71, column: 6, scope: !483)
!493 = !DILocation(line: 72, column: 3, scope: !489)
!494 = !DILocation(line: 73, column: 18, scope: !495)
!495 = distinct !DILexicalBlock(scope: !489, file: !10, line: 73, column: 11)
!496 = !DILocation(line: 73, column: 11, scope: !495)
!497 = !DILocation(line: 73, column: 37, scope: !495)
!498 = !DILocation(line: 73, column: 11, scope: !489)
!499 = !DILocation(line: 74, column: 3, scope: !495)
!500 = !DILocation(line: 75, column: 18, scope: !501)
!501 = distinct !DILexicalBlock(scope: !495, file: !10, line: 75, column: 11)
!502 = !DILocation(line: 75, column: 11, scope: !501)
!503 = !DILocation(line: 75, column: 34, scope: !501)
!504 = !DILocation(line: 75, column: 11, scope: !495)
!505 = !DILocation(line: 76, column: 3, scope: !501)
!506 = !DILocation(line: 78, column: 2, scope: !483)
!507 = !DILocation(line: 79, column: 1, scope: !483)
!508 = distinct !DISubprogram(name: "def", scope: !10, file: !10, line: 87, type: !509, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!509 = !DISubroutineType(types: !510)
!510 = !{!6, !56, !56, !6, !6, !6, !511, !511}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!512 = !DILocalVariable(name: "source", arg: 1, scope: !508, file: !10, line: 87, type: !56)
!513 = !DILocation(line: 87, column: 22, scope: !508)
!514 = !DILocalVariable(name: "dest", arg: 2, scope: !508, file: !10, line: 87, type: !56)
!515 = !DILocation(line: 87, column: 36, scope: !508)
!516 = !DILocalVariable(name: "window_bits", arg: 3, scope: !508, file: !10, line: 87, type: !6)
!517 = !DILocation(line: 87, column: 46, scope: !508)
!518 = !DILocalVariable(name: "_flush", arg: 4, scope: !508, file: !10, line: 87, type: !6)
!519 = !DILocation(line: 87, column: 63, scope: !508)
!520 = !DILocalVariable(name: "level", arg: 5, scope: !508, file: !10, line: 88, type: !6)
!521 = !DILocation(line: 88, column: 13, scope: !508)
!522 = !DILocalVariable(name: "compressed_size", arg: 6, scope: !508, file: !10, line: 88, type: !511)
!523 = !DILocation(line: 88, column: 28, scope: !508)
!524 = !DILocalVariable(name: "uncompressed_size", arg: 7, scope: !508, file: !10, line: 88, type: !511)
!525 = !DILocation(line: 88, column: 53, scope: !508)
!526 = !DILocalVariable(name: "ret", scope: !508, file: !10, line: 90, type: !6)
!527 = !DILocation(line: 90, column: 6, scope: !508)
!528 = !DILocalVariable(name: "flush", scope: !508, file: !10, line: 90, type: !6)
!529 = !DILocation(line: 90, column: 11, scope: !508)
!530 = !DILocalVariable(name: "have", scope: !508, file: !10, line: 91, type: !32)
!531 = !DILocation(line: 91, column: 11, scope: !508)
!532 = !DILocalVariable(name: "strm", scope: !508, file: !10, line: 92, type: !533)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !534, line: 106, baseType: !535)
!534 = !DIFile(filename: "/usr/local/include/zlib.h", directory: "/home/lichi/Desktop")
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !534, line: 86, size: 896, align: 64, elements: !536)
!536 = !{!537, !543, !545, !547, !548, !549, !550, !551, !554, !560, !565, !566, !567, !568}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !535, file: !534, line: 87, baseType: !538, size: 64, align: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64, align: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bytef", file: !540, line: 400, baseType: !541)
!540 = !DIFile(filename: "/usr/local/include/zconf.h", directory: "/home/lichi/Desktop")
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !540, line: 391, baseType: !542)
!542 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !535, file: !534, line: 88, baseType: !544, size: 32, align: 32, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "uInt", file: !540, line: 393, baseType: !32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !535, file: !534, line: 89, baseType: !546, size: 64, align: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !540, line: 394, baseType: !49)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !535, file: !534, line: 91, baseType: !538, size: 64, align: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !535, file: !534, line: 92, baseType: !544, size: 32, align: 32, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !535, file: !534, line: 93, baseType: !546, size: 64, align: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !535, file: !534, line: 95, baseType: !14, size: 64, align: 64, offset: 384)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !535, file: !534, line: 96, baseType: !552, size: 64, align: 64, offset: 448)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64, align: 64)
!553 = !DICompositeType(tag: DW_TAG_structure_type, name: "internal_state", file: !534, line: 84, flags: DIFlagFwdDecl)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "zalloc", scope: !535, file: !534, line: 98, baseType: !555, size: 64, align: 64, offset: 512)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_func", file: !534, line: 81, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64, align: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!559, !559, !544, !544}
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "voidpf", file: !540, line: 409, baseType: !4)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "zfree", scope: !535, file: !534, line: 99, baseType: !561, size: 64, align: 64, offset: 576)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "free_func", file: !534, line: 82, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64, align: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !559, !559}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !535, file: !534, line: 100, baseType: !559, size: 64, align: 64, offset: 640)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !535, file: !534, line: 102, baseType: !6, size: 32, align: 32, offset: 704)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "adler", scope: !535, file: !534, line: 104, baseType: !546, size: 64, align: 64, offset: 768)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !535, file: !534, line: 105, baseType: !546, size: 64, align: 64, offset: 832)
!569 = !DILocation(line: 92, column: 11, scope: !508)
!570 = !DILocalVariable(name: "in", scope: !508, file: !10, line: 93, type: !571)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64, align: 64)
!572 = !DILocation(line: 93, column: 17, scope: !508)
!573 = !DILocalVariable(name: "out", scope: !508, file: !10, line: 94, type: !571)
!574 = !DILocation(line: 94, column: 17, scope: !508)
!575 = !DILocalVariable(name: "chunk_i", scope: !508, file: !10, line: 95, type: !32)
!576 = !DILocation(line: 95, column: 15, scope: !508)
!577 = !DILocation(line: 95, column: 25, scope: !508)
!578 = !DILocalVariable(name: "chunk_o", scope: !508, file: !10, line: 96, type: !32)
!579 = !DILocation(line: 96, column: 15, scope: !508)
!580 = !DILocation(line: 96, column: 25, scope: !508)
!581 = !DILocation(line: 98, column: 14, scope: !508)
!582 = !DILocation(line: 98, column: 7, scope: !508)
!583 = !DILocation(line: 98, column: 5, scope: !508)
!584 = !DILocation(line: 99, column: 6, scope: !585)
!585 = distinct !DILexicalBlock(scope: !508, file: !10, line: 99, column: 6)
!586 = !DILocation(line: 99, column: 9, scope: !585)
!587 = !DILocation(line: 99, column: 6, scope: !508)
!588 = !DILocation(line: 100, column: 3, scope: !585)
!589 = !DILocation(line: 102, column: 15, scope: !508)
!590 = !DILocation(line: 102, column: 8, scope: !508)
!591 = !DILocation(line: 102, column: 6, scope: !508)
!592 = !DILocation(line: 103, column: 6, scope: !593)
!593 = distinct !DILexicalBlock(scope: !508, file: !10, line: 103, column: 6)
!594 = !DILocation(line: 103, column: 10, scope: !593)
!595 = !DILocation(line: 103, column: 6, scope: !508)
!596 = !DILocation(line: 104, column: 8, scope: !597)
!597 = distinct !DILexicalBlock(scope: !593, file: !10, line: 103, column: 18)
!598 = !DILocation(line: 104, column: 3, scope: !597)
!599 = !DILocation(line: 105, column: 3, scope: !597)
!600 = !DILocation(line: 109, column: 7, scope: !508)
!601 = !DILocation(line: 109, column: 14, scope: !508)
!602 = !DILocation(line: 110, column: 7, scope: !508)
!603 = !DILocation(line: 110, column: 13, scope: !508)
!604 = !DILocation(line: 111, column: 7, scope: !508)
!605 = !DILocation(line: 111, column: 14, scope: !508)
!606 = !DILocation(line: 112, column: 7, scope: !508)
!607 = !DILocation(line: 112, column: 17, scope: !508)
!608 = !DILocation(line: 114, column: 7, scope: !508)
!609 = !DILocation(line: 114, column: 6, scope: !508)
!610 = !DILocation(line: 116, column: 6, scope: !611)
!611 = distinct !DILexicalBlock(scope: !508, file: !10, line: 116, column: 6)
!612 = !DILocation(line: 116, column: 10, scope: !611)
!613 = !DILocation(line: 116, column: 6, scope: !508)
!614 = !DILocation(line: 117, column: 8, scope: !615)
!615 = distinct !DILexicalBlock(scope: !611, file: !10, line: 116, column: 18)
!616 = !DILocation(line: 117, column: 3, scope: !615)
!617 = !DILocation(line: 118, column: 8, scope: !615)
!618 = !DILocation(line: 118, column: 3, scope: !615)
!619 = !DILocation(line: 119, column: 10, scope: !615)
!620 = !DILocation(line: 119, column: 3, scope: !615)
!621 = !DILocation(line: 123, column: 2, scope: !508)
!622 = distinct !{!622, !621}
!623 = !DILocation(line: 124, column: 13, scope: !624)
!624 = distinct !DILexicalBlock(scope: !508, file: !10, line: 123, column: 5)
!625 = !DILocation(line: 124, column: 11, scope: !624)
!626 = !DILocation(line: 125, column: 25, scope: !624)
!627 = !DILocation(line: 125, column: 32, scope: !624)
!628 = !DILocation(line: 125, column: 41, scope: !624)
!629 = !DILocation(line: 125, column: 19, scope: !624)
!630 = !DILocation(line: 125, column: 8, scope: !624)
!631 = !DILocation(line: 125, column: 17, scope: !624)
!632 = !DILocation(line: 126, column: 14, scope: !633)
!633 = distinct !DILexicalBlock(scope: !624, file: !10, line: 126, column: 7)
!634 = !DILocation(line: 126, column: 7, scope: !633)
!635 = !DILocation(line: 126, column: 7, scope: !624)
!636 = !DILocation(line: 127, column: 10, scope: !637)
!637 = distinct !DILexicalBlock(scope: !633, file: !10, line: 126, column: 23)
!638 = !DILocation(line: 128, column: 9, scope: !637)
!639 = !DILocation(line: 128, column: 4, scope: !637)
!640 = !DILocation(line: 129, column: 9, scope: !637)
!641 = !DILocation(line: 129, column: 4, scope: !637)
!642 = !DILocation(line: 130, column: 4, scope: !637)
!643 = !DILocation(line: 134, column: 16, scope: !624)
!644 = !DILocation(line: 134, column: 11, scope: !624)
!645 = !DILocation(line: 134, column: 11, scope: !646)
!646 = !DILexicalBlockFile(scope: !624, file: !10, discriminator: 1)
!647 = !DILocation(line: 134, column: 36, scope: !648)
!648 = !DILexicalBlockFile(scope: !624, file: !10, discriminator: 2)
!649 = !DILocation(line: 134, column: 11, scope: !648)
!650 = !DILocation(line: 134, column: 11, scope: !651)
!651 = !DILexicalBlockFile(scope: !624, file: !10, discriminator: 3)
!652 = !DILocation(line: 134, column: 9, scope: !651)
!653 = !DILocation(line: 135, column: 18, scope: !624)
!654 = !DILocation(line: 135, column: 8, scope: !624)
!655 = !DILocation(line: 135, column: 16, scope: !624)
!656 = !DILocation(line: 139, column: 3, scope: !624)
!657 = distinct !{!657, !656}
!658 = !DILocation(line: 140, column: 14, scope: !659)
!659 = distinct !DILexicalBlock(scope: !624, file: !10, line: 139, column: 6)
!660 = !DILocation(line: 140, column: 12, scope: !659)
!661 = !DILocation(line: 141, column: 21, scope: !659)
!662 = !DILocation(line: 141, column: 9, scope: !659)
!663 = !DILocation(line: 141, column: 19, scope: !659)
!664 = !DILocation(line: 142, column: 20, scope: !659)
!665 = !DILocation(line: 142, column: 9, scope: !659)
!666 = !DILocation(line: 142, column: 18, scope: !659)
!667 = !DILocation(line: 144, column: 25, scope: !659)
!668 = !DILocation(line: 144, column: 10, scope: !659)
!669 = !DILocation(line: 144, column: 8, scope: !659)
!670 = !DILocation(line: 145, column: 3, scope: !659)
!671 = !DILocation(line: 145, column: 7, scope: !659)
!672 = !DILocation(line: 145, column: 4, scope: !659)
!673 = !DILocation(line: 145, column: 4, scope: !674)
!674 = !DILexicalBlockFile(scope: !659, file: !10, discriminator: 1)
!675 = !DILocation(line: 145, column: 24, scope: !676)
!676 = !DILexicalBlockFile(scope: !659, file: !10, discriminator: 2)
!677 = !DILocation(line: 145, column: 4, scope: !678)
!678 = !DILexicalBlockFile(scope: !659, file: !10, discriminator: 3)
!679 = !DILocation(line: 147, column: 11, scope: !659)
!680 = !DILocation(line: 147, column: 26, scope: !659)
!681 = !DILocation(line: 147, column: 19, scope: !659)
!682 = !DILocation(line: 147, column: 9, scope: !659)
!683 = !DILocation(line: 148, column: 15, scope: !684)
!684 = distinct !DILexicalBlock(scope: !659, file: !10, line: 148, column: 8)
!685 = !DILocation(line: 148, column: 23, scope: !684)
!686 = !DILocation(line: 148, column: 29, scope: !684)
!687 = !DILocation(line: 148, column: 8, scope: !684)
!688 = !DILocation(line: 148, column: 38, scope: !684)
!689 = !DILocation(line: 148, column: 35, scope: !684)
!690 = !DILocation(line: 148, column: 43, scope: !684)
!691 = !DILocation(line: 149, column: 15, scope: !684)
!692 = !DILocation(line: 149, column: 8, scope: !684)
!693 = !DILocation(line: 148, column: 8, scope: !674)
!694 = !DILocation(line: 150, column: 11, scope: !695)
!695 = distinct !DILexicalBlock(scope: !684, file: !10, line: 149, column: 22)
!696 = !DILocation(line: 151, column: 10, scope: !695)
!697 = !DILocation(line: 151, column: 5, scope: !695)
!698 = !DILocation(line: 152, column: 10, scope: !695)
!699 = !DILocation(line: 152, column: 5, scope: !695)
!700 = !DILocation(line: 153, column: 5, scope: !695)
!701 = !DILocation(line: 155, column: 3, scope: !659)
!702 = !DILocation(line: 155, column: 17, scope: !646)
!703 = !DILocation(line: 155, column: 27, scope: !646)
!704 = !DILocation(line: 155, column: 3, scope: !646)
!705 = !DILocation(line: 156, column: 7, scope: !624)
!706 = !DILocation(line: 156, column: 16, scope: !624)
!707 = !DILocation(line: 156, column: 3, scope: !624)
!708 = !DILocation(line: 156, column: 3, scope: !646)
!709 = !DILocation(line: 156, column: 19, scope: !648)
!710 = !DILocation(line: 156, column: 3, scope: !651)
!711 = !DILocation(line: 159, column: 2, scope: !624)
!712 = !DILocation(line: 159, column: 11, scope: !713)
!713 = !DILexicalBlockFile(scope: !508, file: !10, discriminator: 1)
!714 = !DILocation(line: 159, column: 17, scope: !713)
!715 = !DILocation(line: 159, column: 2, scope: !713)
!716 = !DILocation(line: 180, column: 1, scope: !508)
!717 = !DILocation(line: 180, column: 5, scope: !508)
!718 = !DILocation(line: 180, column: 2, scope: !508)
!719 = !DILocation(line: 180, column: 2, scope: !713)
!720 = !DILocation(line: 180, column: 19, scope: !721)
!721 = !DILexicalBlockFile(scope: !508, file: !10, discriminator: 2)
!722 = !DILocation(line: 180, column: 2, scope: !723)
!723 = !DILexicalBlockFile(scope: !508, file: !10, discriminator: 3)
!724 = !DILocation(line: 182, column: 6, scope: !725)
!725 = distinct !DILexicalBlock(scope: !508, file: !10, line: 182, column: 6)
!726 = !DILocation(line: 182, column: 6, scope: !508)
!727 = !DILocation(line: 183, column: 27, scope: !725)
!728 = !DILocation(line: 183, column: 4, scope: !725)
!729 = !DILocation(line: 183, column: 20, scope: !725)
!730 = !DILocation(line: 183, column: 3, scope: !725)
!731 = !DILocation(line: 184, column: 6, scope: !732)
!732 = distinct !DILexicalBlock(scope: !508, file: !10, line: 184, column: 6)
!733 = !DILocation(line: 184, column: 6, scope: !508)
!734 = !DILocation(line: 185, column: 29, scope: !732)
!735 = !DILocation(line: 185, column: 4, scope: !732)
!736 = !DILocation(line: 185, column: 22, scope: !732)
!737 = !DILocation(line: 185, column: 3, scope: !732)
!738 = !DILocation(line: 188, column: 8, scope: !508)
!739 = !DILocation(line: 189, column: 7, scope: !508)
!740 = !DILocation(line: 189, column: 2, scope: !508)
!741 = !DILocation(line: 190, column: 7, scope: !508)
!742 = !DILocation(line: 190, column: 2, scope: !508)
!743 = !DILocation(line: 191, column: 2, scope: !508)
!744 = !DILocation(line: 192, column: 1, scope: !508)
!745 = distinct !DISubprogram(name: "zerr", scope: !10, file: !10, line: 321, type: !746, isLocal: true, isDefinition: true, scopeLine: 322, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !6}
!748 = !DILocalVariable(name: "ret", arg: 1, scope: !745, file: !10, line: 321, type: !6)
!749 = !DILocation(line: 321, column: 22, scope: !745)
!750 = !DILocation(line: 323, column: 9, scope: !745)
!751 = !DILocation(line: 323, column: 40, scope: !745)
!752 = !DILocation(line: 323, column: 2, scope: !745)
!753 = !DILocation(line: 324, column: 10, scope: !745)
!754 = !DILocation(line: 324, column: 2, scope: !745)
!755 = !DILocation(line: 326, column: 13, scope: !756)
!756 = distinct !DILexicalBlock(scope: !757, file: !10, line: 326, column: 7)
!757 = distinct !DILexicalBlock(scope: !745, file: !10, line: 324, column: 15)
!758 = !DILocation(line: 326, column: 7, scope: !756)
!759 = !DILocation(line: 326, column: 7, scope: !757)
!760 = !DILocation(line: 327, column: 34, scope: !756)
!761 = !DILocation(line: 327, column: 4, scope: !756)
!762 = !DILocation(line: 328, column: 18, scope: !763)
!763 = distinct !DILexicalBlock(scope: !756, file: !10, line: 328, column: 12)
!764 = !DILocation(line: 328, column: 12, scope: !763)
!765 = !DILocation(line: 328, column: 12, scope: !756)
!766 = !DILocation(line: 329, column: 35, scope: !763)
!767 = !DILocation(line: 329, column: 4, scope: !763)
!768 = !DILocation(line: 331, column: 11, scope: !763)
!769 = !DILocation(line: 332, column: 6, scope: !763)
!770 = !DILocation(line: 332, column: 5, scope: !763)
!771 = !DILocation(line: 332, column: 22, scope: !772)
!772 = !DILexicalBlockFile(scope: !763, file: !10, discriminator: 1)
!773 = !DILocation(line: 332, column: 21, scope: !763)
!774 = !DILocation(line: 332, column: 11, scope: !775)
!775 = !DILexicalBlockFile(scope: !763, file: !10, discriminator: 2)
!776 = !DILocation(line: 331, column: 4, scope: !763)
!777 = !DILocation(line: 333, column: 3, scope: !757)
!778 = !DILocation(line: 335, column: 39, scope: !757)
!779 = !DILocation(line: 335, column: 3, scope: !757)
!780 = !DILocation(line: 336, column: 3, scope: !757)
!781 = !DILocation(line: 338, column: 48, scope: !757)
!782 = !DILocation(line: 338, column: 3, scope: !757)
!783 = !DILocation(line: 339, column: 3, scope: !757)
!784 = !DILocation(line: 341, column: 27, scope: !757)
!785 = !DILocation(line: 341, column: 3, scope: !757)
!786 = !DILocation(line: 342, column: 3, scope: !757)
!787 = !DILocation(line: 344, column: 36, scope: !757)
!788 = !DILocation(line: 344, column: 3, scope: !757)
!789 = !DILocation(line: 345, column: 3, scope: !757)
!790 = !DILocation(line: 347, column: 27, scope: !757)
!791 = !DILocation(line: 347, column: 3, scope: !757)
!792 = !DILocation(line: 348, column: 2, scope: !757)
!793 = !DILocation(line: 349, column: 1, scope: !745)
!794 = distinct !DISubprogram(name: "inf", scope: !10, file: !10, line: 200, type: !795, isLocal: true, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!795 = !DISubroutineType(types: !796)
!796 = !{!6, !56, !56, !6, !6, !511, !6}
!797 = !DILocalVariable(name: "source", arg: 1, scope: !794, file: !10, line: 200, type: !56)
!798 = !DILocation(line: 200, column: 22, scope: !794)
!799 = !DILocalVariable(name: "dest", arg: 2, scope: !794, file: !10, line: 200, type: !56)
!800 = !DILocation(line: 200, column: 36, scope: !794)
!801 = !DILocalVariable(name: "window_bits", arg: 3, scope: !794, file: !10, line: 200, type: !6)
!802 = !DILocation(line: 200, column: 46, scope: !794)
!803 = !DILocalVariable(name: "_flush", arg: 4, scope: !794, file: !10, line: 200, type: !6)
!804 = !DILocation(line: 200, column: 63, scope: !794)
!805 = !DILocalVariable(name: "decompressed_bytes", arg: 5, scope: !794, file: !10, line: 201, type: !511)
!806 = !DILocation(line: 201, column: 17, scope: !794)
!807 = !DILocalVariable(name: "expect_z_stream_end", arg: 6, scope: !794, file: !10, line: 201, type: !6)
!808 = !DILocation(line: 201, column: 41, scope: !794)
!809 = !DILocalVariable(name: "ret", scope: !794, file: !10, line: 203, type: !6)
!810 = !DILocation(line: 203, column: 6, scope: !794)
!811 = !DILocalVariable(name: "have", scope: !794, file: !10, line: 204, type: !32)
!812 = !DILocation(line: 204, column: 11, scope: !794)
!813 = !DILocalVariable(name: "strm", scope: !794, file: !10, line: 205, type: !533)
!814 = !DILocation(line: 205, column: 11, scope: !794)
!815 = !DILocalVariable(name: "in", scope: !794, file: !10, line: 206, type: !571)
!816 = !DILocation(line: 206, column: 17, scope: !794)
!817 = !DILocalVariable(name: "out", scope: !794, file: !10, line: 207, type: !571)
!818 = !DILocation(line: 207, column: 17, scope: !794)
!819 = !DILocalVariable(name: "chunk_i", scope: !794, file: !10, line: 208, type: !32)
!820 = !DILocation(line: 208, column: 15, scope: !794)
!821 = !DILocation(line: 208, column: 25, scope: !794)
!822 = !DILocalVariable(name: "chunk_o", scope: !794, file: !10, line: 209, type: !32)
!823 = !DILocation(line: 209, column: 15, scope: !794)
!824 = !DILocation(line: 209, column: 25, scope: !794)
!825 = !DILocation(line: 211, column: 14, scope: !794)
!826 = !DILocation(line: 211, column: 7, scope: !794)
!827 = !DILocation(line: 211, column: 5, scope: !794)
!828 = !DILocation(line: 212, column: 6, scope: !829)
!829 = distinct !DILexicalBlock(scope: !794, file: !10, line: 212, column: 6)
!830 = !DILocation(line: 212, column: 9, scope: !829)
!831 = !DILocation(line: 212, column: 6, scope: !794)
!832 = !DILocation(line: 213, column: 3, scope: !829)
!833 = !DILocation(line: 215, column: 15, scope: !794)
!834 = !DILocation(line: 215, column: 8, scope: !794)
!835 = !DILocation(line: 215, column: 6, scope: !794)
!836 = !DILocation(line: 216, column: 6, scope: !837)
!837 = distinct !DILexicalBlock(scope: !794, file: !10, line: 216, column: 6)
!838 = !DILocation(line: 216, column: 10, scope: !837)
!839 = !DILocation(line: 216, column: 6, scope: !794)
!840 = !DILocation(line: 217, column: 8, scope: !841)
!841 = distinct !DILexicalBlock(scope: !837, file: !10, line: 216, column: 18)
!842 = !DILocation(line: 217, column: 3, scope: !841)
!843 = !DILocation(line: 218, column: 3, scope: !841)
!844 = !DILocation(line: 225, column: 7, scope: !794)
!845 = !DILocation(line: 225, column: 14, scope: !794)
!846 = !DILocation(line: 226, column: 7, scope: !794)
!847 = !DILocation(line: 226, column: 13, scope: !794)
!848 = !DILocation(line: 227, column: 7, scope: !794)
!849 = !DILocation(line: 227, column: 14, scope: !794)
!850 = !DILocation(line: 228, column: 7, scope: !794)
!851 = !DILocation(line: 228, column: 16, scope: !794)
!852 = !DILocation(line: 229, column: 7, scope: !794)
!853 = !DILocation(line: 229, column: 15, scope: !794)
!854 = !DILocation(line: 230, column: 7, scope: !794)
!855 = !DILocation(line: 230, column: 16, scope: !794)
!856 = !DILocation(line: 232, column: 7, scope: !794)
!857 = !DILocation(line: 232, column: 6, scope: !794)
!858 = !DILocation(line: 233, column: 6, scope: !859)
!859 = distinct !DILexicalBlock(scope: !794, file: !10, line: 233, column: 6)
!860 = !DILocation(line: 233, column: 10, scope: !859)
!861 = !DILocation(line: 233, column: 6, scope: !794)
!862 = !DILocation(line: 234, column: 8, scope: !863)
!863 = distinct !DILexicalBlock(scope: !859, file: !10, line: 233, column: 18)
!864 = !DILocation(line: 234, column: 3, scope: !863)
!865 = !DILocation(line: 235, column: 8, scope: !863)
!866 = !DILocation(line: 235, column: 3, scope: !863)
!867 = !DILocation(line: 236, column: 10, scope: !863)
!868 = !DILocation(line: 236, column: 3, scope: !863)
!869 = !DILocation(line: 240, column: 2, scope: !794)
!870 = distinct !{!870, !869}
!871 = !DILocation(line: 241, column: 13, scope: !872)
!872 = distinct !DILexicalBlock(scope: !794, file: !10, line: 240, column: 5)
!873 = !DILocation(line: 241, column: 11, scope: !872)
!874 = !DILocation(line: 242, column: 25, scope: !872)
!875 = !DILocation(line: 242, column: 32, scope: !872)
!876 = !DILocation(line: 242, column: 41, scope: !872)
!877 = !DILocation(line: 242, column: 19, scope: !872)
!878 = !DILocation(line: 242, column: 8, scope: !872)
!879 = !DILocation(line: 242, column: 17, scope: !872)
!880 = !DILocation(line: 243, column: 14, scope: !881)
!881 = distinct !DILexicalBlock(scope: !872, file: !10, line: 243, column: 7)
!882 = !DILocation(line: 243, column: 7, scope: !881)
!883 = !DILocation(line: 243, column: 7, scope: !872)
!884 = !DILocation(line: 244, column: 10, scope: !885)
!885 = distinct !DILexicalBlock(scope: !881, file: !10, line: 243, column: 23)
!886 = !DILocation(line: 245, column: 9, scope: !885)
!887 = !DILocation(line: 245, column: 4, scope: !885)
!888 = !DILocation(line: 246, column: 9, scope: !885)
!889 = !DILocation(line: 246, column: 4, scope: !885)
!890 = !DILocation(line: 247, column: 4, scope: !885)
!891 = !DILocation(line: 249, column: 12, scope: !892)
!892 = distinct !DILexicalBlock(scope: !872, file: !10, line: 249, column: 7)
!893 = !DILocation(line: 249, column: 21, scope: !892)
!894 = !DILocation(line: 249, column: 7, scope: !872)
!895 = !DILocation(line: 250, column: 4, scope: !892)
!896 = !DILocation(line: 251, column: 18, scope: !872)
!897 = !DILocation(line: 251, column: 8, scope: !872)
!898 = !DILocation(line: 251, column: 16, scope: !872)
!899 = !DILocation(line: 254, column: 3, scope: !872)
!900 = distinct !{!900, !899}
!901 = !DILocation(line: 255, column: 14, scope: !902)
!902 = distinct !DILexicalBlock(scope: !872, file: !10, line: 254, column: 6)
!903 = !DILocation(line: 255, column: 12, scope: !902)
!904 = !DILocation(line: 256, column: 21, scope: !902)
!905 = !DILocation(line: 256, column: 9, scope: !902)
!906 = !DILocation(line: 256, column: 19, scope: !902)
!907 = !DILocation(line: 257, column: 20, scope: !902)
!908 = !DILocation(line: 257, column: 9, scope: !902)
!909 = !DILocation(line: 257, column: 18, scope: !902)
!910 = !DILocation(line: 259, column: 25, scope: !902)
!911 = !DILocation(line: 259, column: 10, scope: !902)
!912 = !DILocation(line: 259, column: 8, scope: !902)
!913 = !DILocation(line: 264, column: 8, scope: !914)
!914 = distinct !DILexicalBlock(scope: !902, file: !10, line: 264, column: 8)
!915 = !DILocation(line: 264, column: 28, scope: !914)
!916 = !DILocation(line: 264, column: 32, scope: !917)
!917 = !DILexicalBlockFile(scope: !914, file: !10, discriminator: 1)
!918 = !DILocation(line: 264, column: 36, scope: !917)
!919 = !DILocation(line: 264, column: 8, scope: !917)
!920 = !DILocation(line: 265, column: 12, scope: !921)
!921 = distinct !DILexicalBlock(scope: !914, file: !10, line: 264, column: 53)
!922 = !DILocation(line: 267, column: 28, scope: !921)
!923 = !DILocation(line: 267, column: 33, scope: !921)
!924 = !DILocation(line: 265, column: 5, scope: !921)
!925 = !DILocation(line: 268, column: 5, scope: !921)
!926 = !DILocation(line: 273, column: 8, scope: !927)
!927 = distinct !DILexicalBlock(scope: !902, file: !10, line: 273, column: 8)
!928 = !DILocation(line: 273, column: 12, scope: !927)
!929 = !DILocation(line: 273, column: 8, scope: !902)
!930 = !DILocation(line: 274, column: 12, scope: !931)
!931 = distinct !DILexicalBlock(scope: !927, file: !10, line: 273, column: 30)
!932 = !DILocation(line: 276, column: 6, scope: !931)
!933 = !DILocation(line: 276, column: 11, scope: !931)
!934 = !DILocation(line: 274, column: 5, scope: !931)
!935 = !DILocation(line: 277, column: 5, scope: !931)
!936 = !DILocation(line: 280, column: 12, scope: !902)
!937 = !DILocation(line: 280, column: 4, scope: !902)
!938 = !DILocation(line: 282, column: 11, scope: !939)
!939 = distinct !DILexicalBlock(scope: !902, file: !10, line: 280, column: 17)
!940 = !DILocation(line: 283, column: 10, scope: !939)
!941 = !DILocation(line: 283, column: 5, scope: !939)
!942 = !DILocation(line: 284, column: 10, scope: !939)
!943 = !DILocation(line: 284, column: 5, scope: !939)
!944 = !DILocation(line: 285, column: 5, scope: !939)
!945 = !DILocation(line: 288, column: 11, scope: !939)
!946 = !DILocation(line: 289, column: 10, scope: !939)
!947 = !DILocation(line: 289, column: 5, scope: !939)
!948 = !DILocation(line: 290, column: 10, scope: !939)
!949 = !DILocation(line: 290, column: 5, scope: !939)
!950 = !DILocation(line: 291, column: 12, scope: !939)
!951 = !DILocation(line: 291, column: 5, scope: !939)
!952 = !DILocation(line: 293, column: 11, scope: !902)
!953 = !DILocation(line: 293, column: 26, scope: !902)
!954 = !DILocation(line: 293, column: 19, scope: !902)
!955 = !DILocation(line: 293, column: 9, scope: !902)
!956 = !DILocation(line: 294, column: 15, scope: !957)
!957 = distinct !DILexicalBlock(scope: !902, file: !10, line: 294, column: 8)
!958 = !DILocation(line: 294, column: 23, scope: !957)
!959 = !DILocation(line: 294, column: 29, scope: !957)
!960 = !DILocation(line: 294, column: 8, scope: !957)
!961 = !DILocation(line: 294, column: 38, scope: !957)
!962 = !DILocation(line: 294, column: 35, scope: !957)
!963 = !DILocation(line: 294, column: 43, scope: !957)
!964 = !DILocation(line: 295, column: 15, scope: !957)
!965 = !DILocation(line: 295, column: 8, scope: !957)
!966 = !DILocation(line: 294, column: 8, scope: !967)
!967 = !DILexicalBlockFile(scope: !902, file: !10, discriminator: 1)
!968 = !DILocation(line: 296, column: 11, scope: !969)
!969 = distinct !DILexicalBlock(scope: !957, file: !10, line: 295, column: 22)
!970 = !DILocation(line: 297, column: 10, scope: !969)
!971 = !DILocation(line: 297, column: 5, scope: !969)
!972 = !DILocation(line: 298, column: 10, scope: !969)
!973 = !DILocation(line: 298, column: 5, scope: !969)
!974 = !DILocation(line: 299, column: 5, scope: !969)
!975 = !DILocation(line: 302, column: 8, scope: !976)
!976 = distinct !DILexicalBlock(scope: !902, file: !10, line: 302, column: 8)
!977 = !DILocation(line: 302, column: 12, scope: !976)
!978 = !DILocation(line: 302, column: 8, scope: !902)
!979 = !DILocation(line: 303, column: 5, scope: !976)
!980 = !DILocation(line: 305, column: 3, scope: !902)
!981 = !DILocation(line: 305, column: 17, scope: !982)
!982 = !DILexicalBlockFile(scope: !872, file: !10, discriminator: 1)
!983 = !DILocation(line: 305, column: 27, scope: !982)
!984 = !DILocation(line: 305, column: 3, scope: !982)
!985 = !DILocation(line: 308, column: 2, scope: !872)
!986 = !DILocation(line: 308, column: 11, scope: !987)
!987 = !DILexicalBlockFile(scope: !794, file: !10, discriminator: 1)
!988 = !DILocation(line: 308, column: 15, scope: !987)
!989 = !DILocation(line: 308, column: 2, scope: !987)
!990 = !DILocation(line: 311, column: 6, scope: !991)
!991 = distinct !DILexicalBlock(scope: !794, file: !10, line: 311, column: 6)
!992 = !DILocation(line: 311, column: 6, scope: !794)
!993 = !DILocation(line: 312, column: 30, scope: !991)
!994 = !DILocation(line: 312, column: 4, scope: !991)
!995 = !DILocation(line: 312, column: 23, scope: !991)
!996 = !DILocation(line: 312, column: 3, scope: !991)
!997 = !DILocation(line: 314, column: 8, scope: !794)
!998 = !DILocation(line: 315, column: 7, scope: !794)
!999 = !DILocation(line: 315, column: 2, scope: !794)
!1000 = !DILocation(line: 316, column: 7, scope: !794)
!1001 = !DILocation(line: 316, column: 2, scope: !794)
!1002 = !DILocation(line: 317, column: 9, scope: !794)
!1003 = !DILocation(line: 317, column: 13, scope: !794)
!1004 = !DILocation(line: 317, column: 2, scope: !794)
!1005 = !DILocation(line: 318, column: 1, scope: !794)
