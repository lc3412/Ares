; ModuleID = './[inter]lib--dpkg--compress.o.i'
source_filename = "./[inter]lib--dpkg--compress.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.compressor = type { i8*, i8*, i32, void (%struct.compress_params*)*, void (i32, i32, %struct.compress_params*, i8*)*, void (i32, i32, i8*)* }
%struct.compress_params = type { i32, i32, i32 }
%struct.dpkg_error = type { i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.varbuf = type { i64, i64, i8* }
%struct.gzFile_s = type { i32, i8*, i64 }
%struct.command = type { i8*, i8*, i32, i32, i8** }

@compressor_array = internal global [5 x %struct.compressor*] [%struct.compressor* @compressor_none, %struct.compressor* @compressor_gzip, %struct.compressor* @compressor_xz, %struct.compressor* @compressor_bzip2, %struct.compressor* @compressor_lzma], align 16
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"filtered\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"huffman\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"rle\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"extreme\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"unknown compression strategy\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"compress.c\00", align 1
@__func__.compressor = private unnamed_addr constant [11 x i8] c"compressor\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"compressor_type %d is out of range\00", align 1
@compressor_none = internal constant %struct.compressor { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), i32 0, void (%struct.compress_params*)* @fixup_none_params, void (i32, i32, %struct.compress_params*, i8*)* @compress_none, void (i32, i32, i8*)* @decompress_none }, align 8
@compressor_gzip = internal constant %struct.compressor { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 9, void (%struct.compress_params*)* @fixup_gzip_params, void (i32, i32, %struct.compress_params*, i8*)* @compress_gzip, void (i32, i32, i8*)* @decompress_gzip }, align 8
@compressor_xz = internal constant %struct.compressor { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i32 6, void (%struct.compress_params*)* @fixup_none_params, void (i32, i32, %struct.compress_params*, i8*)* @compress_xz, void (i32, i32, i8*)* @decompress_xz }, align 8
@compressor_bzip2 = internal constant %struct.compressor { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 9, void (%struct.compress_params*)* @fixup_bzip2_params, void (i32, i32, %struct.compress_params*, i8*)* @compress_bzip2, void (i32, i32, i8*)* @decompress_bzip2 }, align 8
@compressor_lzma = internal constant %struct.compressor { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 6, void (%struct.compress_params*)* @fixup_none_params, void (i32, i32, %struct.compress_params*, i8*)* @compress_lzma, void (i32, i32, i8*)* @decompress_lzma }, align 8
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"%s: pass-through copy error: %s\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c".gz\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"w%d%c\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"%s: error binding output to gzip stream\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"%s: internal gzip read error\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"%s: internal gzip write error: '%s'\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"%s: internal gzip write error: %s\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"%s: error binding input to gzip stream\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"%s: internal gzip read error: '%s'\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"%s: internal gzip write error\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"xz\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c".xz\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"-c%d\00", align 1
@env_xz = internal global [3 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* null], align 16
@.str.27 = private unnamed_addr constant [12 x i8] c"XZ_DEFAULTS\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"XZ_OPT\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"-dc\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"bzip2\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c".bz2\00", align 1
@env_bzip2 = internal global [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* null], align 16
@.str.32 = private unnamed_addr constant [5 x i8] c"BZIP\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"BZIP2\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"lzma\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c".lzma\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"--format=lzma\00", align 1

; Function Attrs: nounwind uwtable
define i8* @compressor_get_name(i32) #0 !dbg !77 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !81, metadata !82), !dbg !83
  %3 = load i32, i32* %2, align 4, !dbg !84
  %4 = call %struct.compressor* @compressor(i32 %3), !dbg !85
  %5 = getelementptr inbounds %struct.compressor, %struct.compressor* %4, i32 0, i32 0, !dbg !86
  %6 = load i8*, i8** %5, align 8, !dbg !86
  ret i8* %6, !dbg !87
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal %struct.compressor* @compressor(i32) #0 !dbg !88 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !91, metadata !82), !dbg !92
  call void @llvm.dbg.declare(metadata i32* %3, metadata !93, metadata !82), !dbg !95
  store i32 5, i32* %3, align 4, !dbg !95
  %4 = load i32, i32* %2, align 4, !dbg !96
  %5 = icmp slt i32 %4, 0, !dbg !98
  br i1 %5, label %9, label %6, !dbg !99

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %2, align 4, !dbg !100
  %8 = icmp sge i32 %7, 5, !dbg !102
  br i1 %8, label %9, label %11, !dbg !103

; <label>:9:                                      ; preds = %6, %1
  %10 = load i32, i32* %2, align 4, !dbg !104
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 771, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.compressor, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0), i32 %10) #9, !dbg !105
  unreachable, !dbg !105

; <label>:11:                                     ; preds = %6
  %12 = load i32, i32* %2, align 4, !dbg !106
  %13 = sext i32 %12 to i64, !dbg !107
  %14 = getelementptr inbounds [5 x %struct.compressor*], [5 x %struct.compressor*]* @compressor_array, i64 0, i64 %13, !dbg !107
  %15 = load %struct.compressor*, %struct.compressor** %14, align 8, !dbg !107
  ret %struct.compressor* %15, !dbg !108
}

; Function Attrs: nounwind uwtable
define i8* @compressor_get_extension(i32) #0 !dbg !109 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !110, metadata !82), !dbg !111
  %3 = load i32, i32* %2, align 4, !dbg !112
  %4 = call %struct.compressor* @compressor(i32 %3), !dbg !113
  %5 = getelementptr inbounds %struct.compressor, %struct.compressor* %4, i32 0, i32 1, !dbg !114
  %6 = load i8*, i8** %5, align 8, !dbg !114
  ret i8* %6, !dbg !115
}

; Function Attrs: nounwind uwtable
define i32 @compressor_find_by_name(i8*) #0 !dbg !116 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !119, metadata !82), !dbg !120
  call void @llvm.dbg.declare(metadata i64* %4, metadata !121, metadata !82), !dbg !125
  store i64 0, i64* %4, align 8, !dbg !126
  br label %5, !dbg !128

; <label>:5:                                      ; preds = %21, %1
  %6 = load i64, i64* %4, align 8, !dbg !129
  %7 = icmp ult i64 %6, 5, !dbg !132
  br i1 %7, label %8, label %24, !dbg !133

; <label>:8:                                      ; preds = %5
  %9 = load i64, i64* %4, align 8, !dbg !134
  %10 = getelementptr inbounds [5 x %struct.compressor*], [5 x %struct.compressor*]* @compressor_array, i64 0, i64 %9, !dbg !136
  %11 = load %struct.compressor*, %struct.compressor** %10, align 8, !dbg !136
  %12 = getelementptr inbounds %struct.compressor, %struct.compressor* %11, i32 0, i32 0, !dbg !137
  %13 = load i8*, i8** %12, align 8, !dbg !137
  %14 = load i8*, i8** %3, align 8, !dbg !138
  %15 = call i32 @strcmp(i8* %13, i8* %14) #10, !dbg !139
  %16 = icmp eq i32 %15, 0, !dbg !140
  br i1 %16, label %17, label %20, !dbg !141

; <label>:17:                                     ; preds = %8
  %18 = load i64, i64* %4, align 8, !dbg !142
  %19 = trunc i64 %18 to i32, !dbg !142
  store i32 %19, i32* %2, align 4, !dbg !143
  br label %25, !dbg !143

; <label>:20:                                     ; preds = %8
  br label %21, !dbg !144

; <label>:21:                                     ; preds = %20
  %22 = load i64, i64* %4, align 8, !dbg !146
  %23 = add i64 %22, 1, !dbg !146
  store i64 %23, i64* %4, align 8, !dbg !146
  br label %5, !dbg !148, !llvm.loop !149

; <label>:24:                                     ; preds = %5
  store i32 -1, i32* %2, align 4, !dbg !151
  br label %25, !dbg !151

; <label>:25:                                     ; preds = %24, %17
  %26 = load i32, i32* %2, align 4, !dbg !152
  ret i32 %26, !dbg !152
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @compressor_find_by_extension(i8*) #0 !dbg !153 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !154, metadata !82), !dbg !155
  call void @llvm.dbg.declare(metadata i64* %4, metadata !156, metadata !82), !dbg !157
  store i64 0, i64* %4, align 8, !dbg !158
  br label %5, !dbg !160

; <label>:5:                                      ; preds = %21, %1
  %6 = load i64, i64* %4, align 8, !dbg !161
  %7 = icmp ult i64 %6, 5, !dbg !164
  br i1 %7, label %8, label %24, !dbg !165

; <label>:8:                                      ; preds = %5
  %9 = load i64, i64* %4, align 8, !dbg !166
  %10 = getelementptr inbounds [5 x %struct.compressor*], [5 x %struct.compressor*]* @compressor_array, i64 0, i64 %9, !dbg !168
  %11 = load %struct.compressor*, %struct.compressor** %10, align 8, !dbg !168
  %12 = getelementptr inbounds %struct.compressor, %struct.compressor* %11, i32 0, i32 1, !dbg !169
  %13 = load i8*, i8** %12, align 8, !dbg !169
  %14 = load i8*, i8** %3, align 8, !dbg !170
  %15 = call i32 @strcmp(i8* %13, i8* %14) #10, !dbg !171
  %16 = icmp eq i32 %15, 0, !dbg !172
  br i1 %16, label %17, label %20, !dbg !173

; <label>:17:                                     ; preds = %8
  %18 = load i64, i64* %4, align 8, !dbg !174
  %19 = trunc i64 %18 to i32, !dbg !174
  store i32 %19, i32* %2, align 4, !dbg !175
  br label %25, !dbg !175

; <label>:20:                                     ; preds = %8
  br label %21, !dbg !176

; <label>:21:                                     ; preds = %20
  %22 = load i64, i64* %4, align 8, !dbg !178
  %23 = add i64 %22, 1, !dbg !178
  store i64 %23, i64* %4, align 8, !dbg !178
  br label %5, !dbg !180, !llvm.loop !181

; <label>:24:                                     ; preds = %5
  store i32 -1, i32* %2, align 4, !dbg !183
  br label %25, !dbg !183

; <label>:25:                                     ; preds = %24, %17
  %26 = load i32, i32* %2, align 4, !dbg !184
  ret i32 %26, !dbg !184
}

; Function Attrs: nounwind uwtable
define i32 @compressor_get_strategy(i8*) #0 !dbg !185 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !188, metadata !82), !dbg !189
  %4 = load i8*, i8** %3, align 8, !dbg !190
  %5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #10, !dbg !192
  %6 = icmp eq i32 %5, 0, !dbg !193
  br i1 %6, label %7, label %8, !dbg !194

; <label>:7:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !195
  br label %34, !dbg !195

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !196
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #10, !dbg !198
  %11 = icmp eq i32 %10, 0, !dbg !199
  br i1 %11, label %12, label %13, !dbg !200

; <label>:12:                                     ; preds = %8
  store i32 1, i32* %2, align 4, !dbg !201
  br label %34, !dbg !201

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %3, align 8, !dbg !202
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #10, !dbg !204
  %16 = icmp eq i32 %15, 0, !dbg !205
  br i1 %16, label %17, label %18, !dbg !206

; <label>:17:                                     ; preds = %13
  store i32 2, i32* %2, align 4, !dbg !207
  br label %34, !dbg !207

; <label>:18:                                     ; preds = %13
  %19 = load i8*, i8** %3, align 8, !dbg !208
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #10, !dbg !210
  %21 = icmp eq i32 %20, 0, !dbg !211
  br i1 %21, label %22, label %23, !dbg !212

; <label>:22:                                     ; preds = %18
  store i32 3, i32* %2, align 4, !dbg !213
  br label %34, !dbg !213

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %3, align 8, !dbg !214
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)) #10, !dbg !216
  %26 = icmp eq i32 %25, 0, !dbg !217
  br i1 %26, label %27, label %28, !dbg !218

; <label>:27:                                     ; preds = %23
  store i32 4, i32* %2, align 4, !dbg !219
  br label %34, !dbg !219

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %3, align 8, !dbg !220
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0)) #10, !dbg !222
  %31 = icmp eq i32 %30, 0, !dbg !223
  br i1 %31, label %32, label %33, !dbg !224

; <label>:32:                                     ; preds = %28
  store i32 5, i32* %2, align 4, !dbg !225
  br label %34, !dbg !225

; <label>:33:                                     ; preds = %28
  store i32 -1, i32* %2, align 4, !dbg !226
  br label %34, !dbg !226

; <label>:34:                                     ; preds = %33, %32, %27, %22, %17, %12, %7
  %35 = load i32, i32* %2, align 4, !dbg !227
  ret i32 %35, !dbg !227
}

; Function Attrs: nounwind uwtable
define zeroext i1 @compressor_check_params(%struct.compress_params*, %struct.dpkg_error*) #0 !dbg !228 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.compress_params*, align 8
  %5 = alloca %struct.dpkg_error*, align 8
  store %struct.compress_params* %0, %struct.compress_params** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.compress_params** %4, metadata !239, metadata !82), !dbg !240
  store %struct.dpkg_error* %1, %struct.dpkg_error** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error** %5, metadata !241, metadata !82), !dbg !242
  %6 = load %struct.compress_params*, %struct.compress_params** %4, align 8, !dbg !243
  call void @compressor_fixup_params(%struct.compress_params* %6), !dbg !244
  %7 = load %struct.compress_params*, %struct.compress_params** %4, align 8, !dbg !245
  %8 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %7, i32 0, i32 1, !dbg !247
  %9 = load i32, i32* %8, align 4, !dbg !247
  %10 = icmp eq i32 %9, 0, !dbg !248
  br i1 %10, label %11, label %12, !dbg !249

; <label>:11:                                     ; preds = %2
  store i1 true, i1* %3, align 1, !dbg !250
  br label %53, !dbg !250

; <label>:12:                                     ; preds = %2
  %13 = load %struct.compress_params*, %struct.compress_params** %4, align 8, !dbg !251
  %14 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %13, i32 0, i32 0, !dbg !253
  %15 = load i32, i32* %14, align 4, !dbg !253
  %16 = icmp eq i32 %15, 1, !dbg !254
  br i1 %16, label %17, label %38, !dbg !255

; <label>:17:                                     ; preds = %12
  %18 = load %struct.compress_params*, %struct.compress_params** %4, align 8, !dbg !256
  %19 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %18, i32 0, i32 1, !dbg !257
  %20 = load i32, i32* %19, align 4, !dbg !257
  %21 = icmp eq i32 %20, 1, !dbg !258
  br i1 %21, label %37, label %22, !dbg !259

; <label>:22:                                     ; preds = %17
  %23 = load %struct.compress_params*, %struct.compress_params** %4, align 8, !dbg !260
  %24 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %23, i32 0, i32 1, !dbg !261
  %25 = load i32, i32* %24, align 4, !dbg !261
  %26 = icmp eq i32 %25, 2, !dbg !262
  br i1 %26, label %37, label %27, !dbg !263

; <label>:27:                                     ; preds = %22
  %28 = load %struct.compress_params*, %struct.compress_params** %4, align 8, !dbg !264
  %29 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %28, i32 0, i32 1, !dbg !265
  %30 = load i32, i32* %29, align 4, !dbg !265
  %31 = icmp eq i32 %30, 3, !dbg !266
  br i1 %31, label %37, label %32, !dbg !267

; <label>:32:                                     ; preds = %27
  %33 = load %struct.compress_params*, %struct.compress_params** %4, align 8, !dbg !268
  %34 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %33, i32 0, i32 1, !dbg !269
  %35 = load i32, i32* %34, align 4, !dbg !269
  %36 = icmp eq i32 %35, 4, !dbg !270
  br i1 %36, label %37, label %38, !dbg !271

; <label>:37:                                     ; preds = %32, %27, %22, %17
  store i1 true, i1* %3, align 1, !dbg !273
  br label %53, !dbg !273

; <label>:38:                                     ; preds = %32, %12
  %39 = load %struct.compress_params*, %struct.compress_params** %4, align 8, !dbg !274
  %40 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %39, i32 0, i32 0, !dbg !276
  %41 = load i32, i32* %40, align 4, !dbg !276
  %42 = icmp eq i32 %41, 2, !dbg !277
  br i1 %42, label %43, label %49, !dbg !278

; <label>:43:                                     ; preds = %38
  %44 = load %struct.compress_params*, %struct.compress_params** %4, align 8, !dbg !279
  %45 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %44, i32 0, i32 1, !dbg !280
  %46 = load i32, i32* %45, align 4, !dbg !280
  %47 = icmp eq i32 %46, 5, !dbg !281
  br i1 %47, label %48, label %49, !dbg !282

; <label>:48:                                     ; preds = %43
  store i1 true, i1* %3, align 1, !dbg !283
  br label %53, !dbg !283

; <label>:49:                                     ; preds = %43, %38
  %50 = load %struct.dpkg_error*, %struct.dpkg_error** %5, align 8, !dbg !284
  %51 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0)) #6, !dbg !285
  %52 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %50, i8* %51), !dbg !286
  store i1 false, i1* %3, align 1, !dbg !287
  br label %53, !dbg !287

; <label>:53:                                     ; preds = %49, %48, %37, %11
  %54 = load i1, i1* %3, align 1, !dbg !288
  ret i1 %54, !dbg !288
}

; Function Attrs: nounwind uwtable
define internal void @compressor_fixup_params(%struct.compress_params*) #0 !dbg !289 {
  %2 = alloca %struct.compress_params*, align 8
  store %struct.compress_params* %0, %struct.compress_params** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.compress_params** %2, metadata !290, metadata !82), !dbg !291
  %3 = load %struct.compress_params*, %struct.compress_params** %2, align 8, !dbg !292
  %4 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %3, i32 0, i32 0, !dbg !293
  %5 = load i32, i32* %4, align 4, !dbg !293
  %6 = call %struct.compressor* @compressor(i32 %5), !dbg !294
  %7 = getelementptr inbounds %struct.compressor, %struct.compressor* %6, i32 0, i32 3, !dbg !295
  %8 = load void (%struct.compress_params*)*, void (%struct.compress_params*)** %7, align 8, !dbg !295
  %9 = load %struct.compress_params*, %struct.compress_params** %2, align 8, !dbg !296
  call void %8(%struct.compress_params* %9), !dbg !297
  %10 = load %struct.compress_params*, %struct.compress_params** %2, align 8, !dbg !299
  %11 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %10, i32 0, i32 2, !dbg !301
  %12 = load i32, i32* %11, align 4, !dbg !301
  %13 = icmp slt i32 %12, 0, !dbg !302
  br i1 %13, label %14, label %23, !dbg !303

; <label>:14:                                     ; preds = %1
  %15 = load %struct.compress_params*, %struct.compress_params** %2, align 8, !dbg !304
  %16 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %15, i32 0, i32 0, !dbg !305
  %17 = load i32, i32* %16, align 4, !dbg !305
  %18 = call %struct.compressor* @compressor(i32 %17), !dbg !306
  %19 = getelementptr inbounds %struct.compressor, %struct.compressor* %18, i32 0, i32 2, !dbg !307
  %20 = load i32, i32* %19, align 8, !dbg !307
  %21 = load %struct.compress_params*, %struct.compress_params** %2, align 8, !dbg !308
  %22 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %21, i32 0, i32 2, !dbg !309
  store i32 %20, i32* %22, align 4, !dbg !310
  br label %23, !dbg !308

; <label>:23:                                     ; preds = %14, %1
  ret void, !dbg !311
}

declare i32 @dpkg_put_error(%struct.dpkg_error*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define void @decompress_filter(i32, i32, i32, i8*, ...) #0 !dbg !312 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  %10 = alloca %struct.varbuf, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !315, metadata !82), !dbg !316
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !317, metadata !82), !dbg !318
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !319, metadata !82), !dbg !320
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !321, metadata !82), !dbg !322
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %9, metadata !323, metadata !82), !dbg !338
  call void @llvm.dbg.declare(metadata %struct.varbuf* %10, metadata !339, metadata !82), !dbg !346
  %11 = bitcast %struct.varbuf* %10 to i8*, !dbg !346
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 24, i32 8, i1 false), !dbg !346
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !347
  %13 = bitcast %struct.__va_list_tag* %12 to i8*, !dbg !347
  call void @llvm.va_start(i8* %13), !dbg !347
  %14 = load i8*, i8** %8, align 8, !dbg !348
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !349
  %16 = call i32 @varbuf_vprintf(%struct.varbuf* %10, i8* %14, %struct.__va_list_tag* %15), !dbg !350
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !351
  %18 = bitcast %struct.__va_list_tag* %17 to i8*, !dbg !351
  call void @llvm.va_end(i8* %18), !dbg !351
  %19 = load i32, i32* %5, align 4, !dbg !352
  %20 = call %struct.compressor* @compressor(i32 %19), !dbg !353
  %21 = getelementptr inbounds %struct.compressor, %struct.compressor* %20, i32 0, i32 5, !dbg !354
  %22 = load void (i32, i32, i8*)*, void (i32, i32, i8*)** %21, align 8, !dbg !354
  %23 = load i32, i32* %6, align 4, !dbg !355
  %24 = load i32, i32* %7, align 4, !dbg !356
  %25 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %10, i32 0, i32 2, !dbg !357
  %26 = load i8*, i8** %25, align 8, !dbg !357
  call void %22(i32 %23, i32 %24, i8* %26), !dbg !358
  call void @varbuf_destroy(%struct.varbuf* %10), !dbg !360
  ret void, !dbg !361
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare i32 @varbuf_vprintf(%struct.varbuf*, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @varbuf_destroy(%struct.varbuf*) #3

; Function Attrs: nounwind uwtable
define void @compress_filter(%struct.compress_params*, i32, i32, i8*, ...) #0 !dbg !362 {
  %5 = alloca %struct.compress_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  %10 = alloca %struct.varbuf, align 8
  store %struct.compress_params* %0, %struct.compress_params** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.compress_params** %5, metadata !365, metadata !82), !dbg !366
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !367, metadata !82), !dbg !368
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !369, metadata !82), !dbg !370
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !371, metadata !82), !dbg !372
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %9, metadata !373, metadata !82), !dbg !374
  call void @llvm.dbg.declare(metadata %struct.varbuf* %10, metadata !375, metadata !82), !dbg !376
  %11 = bitcast %struct.varbuf* %10 to i8*, !dbg !376
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 24, i32 8, i1 false), !dbg !376
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !377
  %13 = bitcast %struct.__va_list_tag* %12 to i8*, !dbg !377
  call void @llvm.va_start(i8* %13), !dbg !377
  %14 = load i8*, i8** %8, align 8, !dbg !378
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !379
  %16 = call i32 @varbuf_vprintf(%struct.varbuf* %10, i8* %14, %struct.__va_list_tag* %15), !dbg !380
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !381
  %18 = bitcast %struct.__va_list_tag* %17 to i8*, !dbg !381
  call void @llvm.va_end(i8* %18), !dbg !381
  %19 = load %struct.compress_params*, %struct.compress_params** %5, align 8, !dbg !382
  %20 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %19, i32 0, i32 0, !dbg !383
  %21 = load i32, i32* %20, align 4, !dbg !383
  %22 = call %struct.compressor* @compressor(i32 %21), !dbg !384
  %23 = getelementptr inbounds %struct.compressor, %struct.compressor* %22, i32 0, i32 4, !dbg !385
  %24 = load void (i32, i32, %struct.compress_params*, i8*)*, void (i32, i32, %struct.compress_params*, i8*)** %23, align 8, !dbg !385
  %25 = load i32, i32* %6, align 4, !dbg !386
  %26 = load i32, i32* %7, align 4, !dbg !387
  %27 = load %struct.compress_params*, %struct.compress_params** %5, align 8, !dbg !388
  %28 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %10, i32 0, i32 2, !dbg !389
  %29 = load i8*, i8** %28, align 8, !dbg !389
  call void %24(i32 %25, i32 %26, %struct.compress_params* %27, i8* %29), !dbg !390
  call void @varbuf_destroy(%struct.varbuf* %10), !dbg !392
  ret void, !dbg !393
}

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #7

; Function Attrs: nounwind uwtable
define internal void @fixup_none_params(%struct.compress_params*) #0 !dbg !394 {
  %2 = alloca %struct.compress_params*, align 8
  store %struct.compress_params* %0, %struct.compress_params** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.compress_params** %2, metadata !395, metadata !82), !dbg !396
  ret void, !dbg !397
}

; Function Attrs: nounwind uwtable
define internal void @compress_none(i32, i32, %struct.compress_params*, i8*) #0 !dbg !398 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.compress_params*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dpkg_error, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !399, metadata !82), !dbg !400
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !401, metadata !82), !dbg !402
  store %struct.compress_params* %2, %struct.compress_params** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.compress_params** %7, metadata !403, metadata !82), !dbg !404
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !405, metadata !82), !dbg !406
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %9, metadata !407, metadata !82), !dbg !408
  %10 = load i32, i32* %5, align 4, !dbg !409
  %11 = load i32, i32* %6, align 4, !dbg !411
  %12 = call i64 @buffer_copy_IntInt(i32 %10, i32 0, i8* null, i32 4, i32 %11, i32 2, i64 -1, %struct.dpkg_error* %9), !dbg !412
  %13 = icmp slt i64 %12, 0, !dbg !413
  br i1 %13, label %14, label %19, !dbg !414

; <label>:14:                                     ; preds = %4
  %15 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0)) #6, !dbg !415
  %16 = load i8*, i8** %8, align 8, !dbg !416
  %17 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %9, i32 0, i32 2, !dbg !417
  %18 = load i8*, i8** %17, align 8, !dbg !417
  call void (i8*, ...) @ohshit(i8* %15, i8* %16, i8* %18) #9, !dbg !418
  unreachable, !dbg !420

; <label>:19:                                     ; preds = %4
  ret void, !dbg !421
}

; Function Attrs: nounwind uwtable
define internal void @decompress_none(i32, i32, i8*) #0 !dbg !422 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dpkg_error, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !423, metadata !82), !dbg !424
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !425, metadata !82), !dbg !426
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !427, metadata !82), !dbg !428
  call void @llvm.dbg.declare(metadata %struct.dpkg_error* %7, metadata !429, metadata !82), !dbg !430
  %8 = load i32, i32* %4, align 4, !dbg !431
  %9 = load i32, i32* %5, align 4, !dbg !433
  %10 = call i64 @buffer_copy_IntInt(i32 %8, i32 0, i8* null, i32 4, i32 %9, i32 2, i64 -1, %struct.dpkg_error* %7), !dbg !434
  %11 = icmp slt i64 %10, 0, !dbg !435
  br i1 %11, label %12, label %17, !dbg !436

; <label>:12:                                     ; preds = %3
  %13 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0)) #6, !dbg !437
  %14 = load i8*, i8** %6, align 8, !dbg !438
  %15 = getelementptr inbounds %struct.dpkg_error, %struct.dpkg_error* %7, i32 0, i32 2, !dbg !439
  %16 = load i8*, i8** %15, align 8, !dbg !439
  call void (i8*, ...) @ohshit(i8* %13, i8* %14, i8* %16) #9, !dbg !440
  unreachable, !dbg !442

; <label>:17:                                     ; preds = %3
  ret void, !dbg !443
}

declare i64 @buffer_copy_IntInt(i32, i32, i8*, i32, i32, i32, i64, %struct.dpkg_error*) #3

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #7

; Function Attrs: nounwind uwtable
define internal void @fixup_gzip_params(%struct.compress_params*) #0 !dbg !444 {
  %2 = alloca %struct.compress_params*, align 8
  store %struct.compress_params* %0, %struct.compress_params** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.compress_params** %2, metadata !445, metadata !82), !dbg !446
  %3 = load %struct.compress_params*, %struct.compress_params** %2, align 8, !dbg !447
  %4 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %3, i32 0, i32 2, !dbg !449
  %5 = load i32, i32* %4, align 4, !dbg !449
  %6 = icmp eq i32 %5, 0, !dbg !450
  br i1 %6, label %7, label %10, !dbg !451

; <label>:7:                                      ; preds = %1
  %8 = load %struct.compress_params*, %struct.compress_params** %2, align 8, !dbg !452
  %9 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %8, i32 0, i32 0, !dbg !453
  store i32 0, i32* %9, align 4, !dbg !454
  br label %10, !dbg !452

; <label>:10:                                     ; preds = %7, %1
  ret void, !dbg !455
}

; Function Attrs: nounwind uwtable
define internal void @compress_gzip(i32, i32, %struct.compress_params*, i8*) #0 !dbg !456 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.compress_params*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [4096 x i8], align 16
  %10 = alloca [6 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.gzFile_s*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !457, metadata !82), !dbg !458
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !459, metadata !82), !dbg !460
  store %struct.compress_params* %2, %struct.compress_params** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.compress_params** %7, metadata !461, metadata !82), !dbg !462
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !463, metadata !82), !dbg !464
  call void @llvm.dbg.declare(metadata [4096 x i8]* %9, metadata !465, metadata !82), !dbg !469
  call void @llvm.dbg.declare(metadata [6 x i8]* %10, metadata !470, metadata !82), !dbg !474
  call void @llvm.dbg.declare(metadata i32* %11, metadata !475, metadata !82), !dbg !476
  call void @llvm.dbg.declare(metadata i32* %12, metadata !477, metadata !82), !dbg !478
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %13, metadata !479, metadata !82), !dbg !495
  %18 = load %struct.compress_params*, %struct.compress_params** %7, align 8, !dbg !496
  %19 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %18, i32 0, i32 1, !dbg !498
  %20 = load i32, i32* %19, align 4, !dbg !498
  %21 = icmp eq i32 %20, 1, !dbg !499
  br i1 %21, label %22, label %23, !dbg !500

; <label>:22:                                     ; preds = %4
  store i32 102, i32* %11, align 4, !dbg !501
  br label %45, !dbg !502

; <label>:23:                                     ; preds = %4
  %24 = load %struct.compress_params*, %struct.compress_params** %7, align 8, !dbg !503
  %25 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %24, i32 0, i32 1, !dbg !505
  %26 = load i32, i32* %25, align 4, !dbg !505
  %27 = icmp eq i32 %26, 2, !dbg !506
  br i1 %27, label %28, label %29, !dbg !507

; <label>:28:                                     ; preds = %23
  store i32 104, i32* %11, align 4, !dbg !508
  br label %44, !dbg !509

; <label>:29:                                     ; preds = %23
  %30 = load %struct.compress_params*, %struct.compress_params** %7, align 8, !dbg !510
  %31 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %30, i32 0, i32 1, !dbg !512
  %32 = load i32, i32* %31, align 4, !dbg !512
  %33 = icmp eq i32 %32, 3, !dbg !513
  br i1 %33, label %34, label %35, !dbg !514

; <label>:34:                                     ; preds = %29
  store i32 82, i32* %11, align 4, !dbg !515
  br label %43, !dbg !516

; <label>:35:                                     ; preds = %29
  %36 = load %struct.compress_params*, %struct.compress_params** %7, align 8, !dbg !517
  %37 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %36, i32 0, i32 1, !dbg !519
  %38 = load i32, i32* %37, align 4, !dbg !519
  %39 = icmp eq i32 %38, 4, !dbg !520
  br i1 %39, label %40, label %41, !dbg !521

; <label>:40:                                     ; preds = %35
  store i32 70, i32* %11, align 4, !dbg !522
  br label %42, !dbg !523

; <label>:41:                                     ; preds = %35
  store i32 32, i32* %11, align 4, !dbg !524
  br label %42

; <label>:42:                                     ; preds = %41, %40
  br label %43

; <label>:43:                                     ; preds = %42, %34
  br label %44

; <label>:44:                                     ; preds = %43, %28
  br label %45

; <label>:45:                                     ; preds = %44, %22
  %46 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i32 0, i32 0, !dbg !525
  %47 = load %struct.compress_params*, %struct.compress_params** %7, align 8, !dbg !526
  %48 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %47, i32 0, i32 2, !dbg !527
  %49 = load i32, i32* %48, align 4, !dbg !527
  %50 = load i32, i32* %11, align 4, !dbg !528
  %51 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %46, i64 6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %49, i32 %50) #6, !dbg !529
  %52 = load i32, i32* %6, align 4, !dbg !530
  %53 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i32 0, i32 0, !dbg !531
  %54 = call %struct.gzFile_s* @gzdopen(i32 %52, i8* %53), !dbg !532
  store %struct.gzFile_s* %54, %struct.gzFile_s** %13, align 8, !dbg !533
  %55 = load %struct.gzFile_s*, %struct.gzFile_s** %13, align 8, !dbg !534
  %56 = icmp eq %struct.gzFile_s* %55, null, !dbg !536
  br i1 %56, label %57, label %60, !dbg !537

; <label>:57:                                     ; preds = %45
  %58 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i32 0, i32 0)) #6, !dbg !538
  %59 = load i8*, i8** %8, align 8, !dbg !539
  call void (i8*, ...) @ohshit(i8* %58, i8* %59) #9, !dbg !540
  unreachable, !dbg !542

; <label>:60:                                     ; preds = %45
  br label %61, !dbg !543

; <label>:61:                                     ; preds = %96, %60
  call void @llvm.dbg.declare(metadata i32* %14, metadata !544, metadata !82), !dbg !548
  call void @llvm.dbg.declare(metadata i32* %15, metadata !549, metadata !82), !dbg !550
  %62 = load i32, i32* %5, align 4, !dbg !551
  %63 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i32 0, i32 0, !dbg !552
  %64 = call i64 @fd_read(i32 %62, i8* %63, i64 4096), !dbg !553
  %65 = trunc i64 %64 to i32, !dbg !553
  store i32 %65, i32* %14, align 4, !dbg !554
  %66 = load i32, i32* %14, align 4, !dbg !555
  %67 = icmp slt i32 %66, 0, !dbg !557
  br i1 %67, label %68, label %71, !dbg !558

; <label>:68:                                     ; preds = %61
  %69 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0)) #6, !dbg !559
  %70 = load i8*, i8** %8, align 8, !dbg !560
  call void (i8*, ...) @ohshite(i8* %69, i8* %70) #9, !dbg !561
  unreachable, !dbg !563

; <label>:71:                                     ; preds = %61
  %72 = load i32, i32* %14, align 4, !dbg !564
  %73 = icmp eq i32 %72, 0, !dbg !566
  br i1 %73, label %74, label %75, !dbg !567

; <label>:74:                                     ; preds = %71
  br label %97, !dbg !568

; <label>:75:                                     ; preds = %71
  %76 = load %struct.gzFile_s*, %struct.gzFile_s** %13, align 8, !dbg !569
  %77 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i32 0, i32 0, !dbg !570
  %78 = load i32, i32* %14, align 4, !dbg !571
  %79 = call i32 @gzwrite(%struct.gzFile_s* %76, i8* %77, i32 %78), !dbg !572
  store i32 %79, i32* %15, align 4, !dbg !573
  %80 = load i32, i32* %15, align 4, !dbg !574
  %81 = load i32, i32* %14, align 4, !dbg !576
  %82 = icmp ne i32 %80, %81, !dbg !577
  br i1 %82, label %83, label %96, !dbg !578

; <label>:83:                                     ; preds = %75
  call void @llvm.dbg.declare(metadata i8** %16, metadata !579, metadata !82), !dbg !581
  %84 = load %struct.gzFile_s*, %struct.gzFile_s** %13, align 8, !dbg !582
  %85 = call i8* @gzerror(%struct.gzFile_s* %84, i32* %12), !dbg !583
  store i8* %85, i8** %16, align 8, !dbg !581
  %86 = load i32, i32* %12, align 4, !dbg !584
  %87 = icmp eq i32 %86, -1, !dbg !586
  br i1 %87, label %88, label %92, !dbg !587

; <label>:88:                                     ; preds = %83
  %89 = call i32* @__errno_location() #1, !dbg !588
  %90 = load i32, i32* %89, align 4, !dbg !589
  %91 = call i8* @strerror(i32 %90) #6, !dbg !590
  store i8* %91, i8** %16, align 8, !dbg !592
  br label %92, !dbg !593

; <label>:92:                                     ; preds = %88, %83
  %93 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i32 0, i32 0)) #6, !dbg !594
  %94 = load i8*, i8** %8, align 8, !dbg !595
  %95 = load i8*, i8** %16, align 8, !dbg !596
  call void (i8*, ...) @ohshit(i8* %93, i8* %94, i8* %95) #9, !dbg !597
  unreachable, !dbg !599

; <label>:96:                                     ; preds = %75
  br label %61, !dbg !600, !llvm.loop !602

; <label>:97:                                     ; preds = %74
  %98 = load %struct.gzFile_s*, %struct.gzFile_s** %13, align 8, !dbg !603
  %99 = call i32 @gzclose(%struct.gzFile_s* %98), !dbg !604
  store i32 %99, i32* %12, align 4, !dbg !605
  %100 = load i32, i32* %12, align 4, !dbg !606
  %101 = icmp ne i32 %100, 0, !dbg !606
  br i1 %101, label %102, label %116, !dbg !608

; <label>:102:                                    ; preds = %97
  call void @llvm.dbg.declare(metadata i8** %17, metadata !609, metadata !82), !dbg !611
  %103 = load i32, i32* %12, align 4, !dbg !612
  %104 = icmp eq i32 %103, -1, !dbg !614
  br i1 %104, label %105, label %109, !dbg !615

; <label>:105:                                    ; preds = %102
  %106 = call i32* @__errno_location() #1, !dbg !616
  %107 = load i32, i32* %106, align 4, !dbg !617
  %108 = call i8* @strerror(i32 %107) #6, !dbg !618
  store i8* %108, i8** %17, align 8, !dbg !620
  br label %112, !dbg !621

; <label>:109:                                    ; preds = %102
  %110 = load i32, i32* %12, align 4, !dbg !622
  %111 = call i8* @zError(i32 %110), !dbg !623
  store i8* %111, i8** %17, align 8, !dbg !624
  br label %112

; <label>:112:                                    ; preds = %109, %105
  %113 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i32 0, i32 0)) #6, !dbg !625
  %114 = load i8*, i8** %8, align 8, !dbg !626
  %115 = load i8*, i8** %17, align 8, !dbg !627
  call void (i8*, ...) @ohshit(i8* %113, i8* %114, i8* %115) #9, !dbg !628
  unreachable, !dbg !630

; <label>:116:                                    ; preds = %97
  ret void, !dbg !631
}

; Function Attrs: nounwind uwtable
define internal void @decompress_gzip(i32, i32, i8*) #0 !dbg !632 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [4096 x i8], align 16
  %8 = alloca %struct.gzFile_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !633, metadata !82), !dbg !634
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !635, metadata !82), !dbg !636
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !637, metadata !82), !dbg !638
  call void @llvm.dbg.declare(metadata [4096 x i8]* %7, metadata !639, metadata !82), !dbg !640
  call void @llvm.dbg.declare(metadata %struct.gzFile_s** %8, metadata !641, metadata !82), !dbg !642
  %13 = load i32, i32* %4, align 4, !dbg !643
  %14 = call %struct.gzFile_s* @gzdopen(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)), !dbg !644
  store %struct.gzFile_s* %14, %struct.gzFile_s** %8, align 8, !dbg !642
  %15 = load %struct.gzFile_s*, %struct.gzFile_s** %8, align 8, !dbg !645
  %16 = icmp eq %struct.gzFile_s* %15, null, !dbg !647
  br i1 %16, label %17, label %20, !dbg !648

; <label>:17:                                     ; preds = %3
  %18 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i32 0, i32 0)) #6, !dbg !649
  %19 = load i8*, i8** %6, align 8, !dbg !650
  call void (i8*, ...) @ohshit(i8* %18, i8* %19) #9, !dbg !651
  unreachable, !dbg !653

; <label>:20:                                     ; preds = %3
  br label %21, !dbg !654

; <label>:21:                                     ; preds = %57, %20
  call void @llvm.dbg.declare(metadata i32* %9, metadata !655, metadata !82), !dbg !659
  call void @llvm.dbg.declare(metadata i32* %10, metadata !660, metadata !82), !dbg !661
  %22 = load %struct.gzFile_s*, %struct.gzFile_s** %8, align 8, !dbg !662
  %23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i32 0, i32 0, !dbg !663
  %24 = call i32 @gzread(%struct.gzFile_s* %22, i8* %23, i32 4096), !dbg !664
  store i32 %24, i32* %9, align 4, !dbg !665
  %25 = load i32, i32* %9, align 4, !dbg !666
  %26 = icmp slt i32 %25, 0, !dbg !668
  br i1 %26, label %27, label %40, !dbg !669

; <label>:27:                                     ; preds = %21
  call void @llvm.dbg.declare(metadata i32* %11, metadata !670, metadata !82), !dbg !672
  store i32 0, i32* %11, align 4, !dbg !672
  call void @llvm.dbg.declare(metadata i8** %12, metadata !673, metadata !82), !dbg !674
  %28 = load %struct.gzFile_s*, %struct.gzFile_s** %8, align 8, !dbg !675
  %29 = call i8* @gzerror(%struct.gzFile_s* %28, i32* %11), !dbg !676
  store i8* %29, i8** %12, align 8, !dbg !674
  %30 = load i32, i32* %11, align 4, !dbg !677
  %31 = icmp eq i32 %30, -1, !dbg !679
  br i1 %31, label %32, label %36, !dbg !680

; <label>:32:                                     ; preds = %27
  %33 = call i32* @__errno_location() #1, !dbg !681
  %34 = load i32, i32* %33, align 4, !dbg !682
  %35 = call i8* @strerror(i32 %34) #6, !dbg !683
  store i8* %35, i8** %12, align 8, !dbg !685
  br label %36, !dbg !686

; <label>:36:                                     ; preds = %32, %27
  %37 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i32 0, i32 0)) #6, !dbg !687
  %38 = load i8*, i8** %6, align 8, !dbg !688
  %39 = load i8*, i8** %12, align 8, !dbg !689
  call void (i8*, ...) @ohshit(i8* %37, i8* %38, i8* %39) #9, !dbg !690
  unreachable, !dbg !692

; <label>:40:                                     ; preds = %21
  %41 = load i32, i32* %9, align 4, !dbg !693
  %42 = icmp eq i32 %41, 0, !dbg !695
  br i1 %42, label %43, label %44, !dbg !696

; <label>:43:                                     ; preds = %40
  br label %58, !dbg !697

; <label>:44:                                     ; preds = %40
  %45 = load i32, i32* %5, align 4, !dbg !698
  %46 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i32 0, i32 0, !dbg !699
  %47 = load i32, i32* %9, align 4, !dbg !700
  %48 = sext i32 %47 to i64, !dbg !700
  %49 = call i64 @fd_write(i32 %45, i8* %46, i64 %48), !dbg !701
  %50 = trunc i64 %49 to i32, !dbg !701
  store i32 %50, i32* %10, align 4, !dbg !702
  %51 = load i32, i32* %10, align 4, !dbg !703
  %52 = load i32, i32* %9, align 4, !dbg !705
  %53 = icmp ne i32 %51, %52, !dbg !706
  br i1 %53, label %54, label %57, !dbg !707

; <label>:54:                                     ; preds = %44
  %55 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i32 0, i32 0)) #6, !dbg !708
  %56 = load i8*, i8** %6, align 8, !dbg !709
  call void (i8*, ...) @ohshite(i8* %55, i8* %56) #9, !dbg !710
  unreachable, !dbg !712

; <label>:57:                                     ; preds = %44
  br label %21, !dbg !713, !llvm.loop !715

; <label>:58:                                     ; preds = %43
  %59 = load i32, i32* %5, align 4, !dbg !716
  %60 = call i32 @close(i32 %59), !dbg !718
  %61 = icmp ne i32 %60, 0, !dbg !718
  br i1 %61, label %62, label %65, !dbg !719

; <label>:62:                                     ; preds = %58
  %63 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i32 0, i32 0)) #6, !dbg !720
  %64 = load i8*, i8** %6, align 8, !dbg !721
  call void (i8*, ...) @ohshite(i8* %63, i8* %64) #9, !dbg !722
  unreachable, !dbg !724

; <label>:65:                                     ; preds = %58
  ret void, !dbg !725
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #4

declare %struct.gzFile_s* @gzdopen(i32, i8*) #3

declare i64 @fd_read(i32, i8*, i64) #3

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #7

declare i32 @gzwrite(%struct.gzFile_s*, i8*, i32) #3

declare i8* @gzerror(%struct.gzFile_s*, i32*) #3

; Function Attrs: nounwind
declare i8* @strerror(i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #8

declare i32 @gzclose(%struct.gzFile_s*) #3

declare i8* @zError(i32) #3

declare i32 @gzread(%struct.gzFile_s*, i8*, i32) #3

declare i64 @fd_write(i32, i8*, i64) #3

declare i32 @close(i32) #3

; Function Attrs: nounwind uwtable
define internal void @compress_xz(i32, i32, %struct.compress_params*, i8*) #0 !dbg !726 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.compress_params*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [6 x i8], align 1
  %10 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !727, metadata !82), !dbg !728
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !729, metadata !82), !dbg !730
  store %struct.compress_params* %2, %struct.compress_params** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.compress_params** %7, metadata !731, metadata !82), !dbg !732
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !733, metadata !82), !dbg !734
  call void @llvm.dbg.declare(metadata [6 x i8]* %9, metadata !735, metadata !82), !dbg !736
  call void @llvm.dbg.declare(metadata i8** %10, metadata !737, metadata !82), !dbg !738
  %11 = load %struct.compress_params*, %struct.compress_params** %7, align 8, !dbg !739
  %12 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %11, i32 0, i32 1, !dbg !741
  %13 = load i32, i32* %12, align 4, !dbg !741
  %14 = icmp eq i32 %13, 5, !dbg !742
  br i1 %14, label %15, label %16, !dbg !743

; <label>:15:                                     ; preds = %4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8** %10, align 8, !dbg !744
  br label %17, !dbg !745

; <label>:16:                                     ; preds = %4
  store i8* null, i8** %10, align 8, !dbg !746
  br label %17

; <label>:17:                                     ; preds = %16, %15
  %18 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i32 0, i32 0, !dbg !747
  %19 = load %struct.compress_params*, %struct.compress_params** %7, align 8, !dbg !748
  %20 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %19, i32 0, i32 2, !dbg !749
  %21 = load i32, i32* %20, align 4, !dbg !749
  %22 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %18, i64 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 %21) #6, !dbg !750
  %23 = load i32, i32* %5, align 4, !dbg !751
  %24 = load i32, i32* %6, align 4, !dbg !752
  %25 = load i8*, i8** %8, align 8, !dbg !753
  %26 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i32 0, i32 0, !dbg !754
  %27 = load i8*, i8** %10, align 8, !dbg !755
  call void (i32, i32, i8*, i8**, i8*, ...) @fd_fd_filter(i32 %23, i32 %24, i8* %25, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @env_xz, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* %26, i8* %27, i8* null), !dbg !756
  ret void, !dbg !757
}

; Function Attrs: nounwind uwtable
define internal void @decompress_xz(i32, i32, i8*) #0 !dbg !758 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !759, metadata !82), !dbg !760
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !761, metadata !82), !dbg !762
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !763, metadata !82), !dbg !764
  %7 = load i32, i32* %4, align 4, !dbg !765
  %8 = load i32, i32* %5, align 4, !dbg !766
  %9 = load i8*, i8** %6, align 8, !dbg !767
  call void (i32, i32, i8*, i8**, i8*, ...) @fd_fd_filter(i32 %7, i32 %8, i8* %9, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @env_xz, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* null), !dbg !768
  ret void, !dbg !769
}

; Function Attrs: nounwind uwtable
define internal void @fd_fd_filter(i32, i32, i8*, i8**, i8*, ...) #0 !dbg !770 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [1 x %struct.__va_list_tag], align 16
  %12 = alloca %struct.command, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !774, metadata !82), !dbg !775
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !776, metadata !82), !dbg !777
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !778, metadata !82), !dbg !779
  store i8** %3, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !780, metadata !82), !dbg !781
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !782, metadata !82), !dbg !783
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %11, metadata !784, metadata !82), !dbg !785
  call void @llvm.dbg.declare(metadata %struct.command* %12, metadata !786, metadata !82), !dbg !795
  call void @llvm.dbg.declare(metadata i32* %13, metadata !796, metadata !82), !dbg !799
  call void @llvm.dbg.declare(metadata i32* %14, metadata !800, metadata !82), !dbg !801
  %15 = call i32 @subproc_fork(), !dbg !802
  store i32 %15, i32* %13, align 4, !dbg !803
  %16 = load i32, i32* %13, align 4, !dbg !804
  %17 = icmp eq i32 %16, 0, !dbg !806
  br i1 %17, label %18, label %59, !dbg !807

; <label>:18:                                     ; preds = %5
  %19 = load i32, i32* %6, align 4, !dbg !808
  %20 = icmp ne i32 %19, 0, !dbg !811
  br i1 %20, label %21, label %25, !dbg !812

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %6, align 4, !dbg !813
  call void @m_dup2(i32 %22, i32 0), !dbg !815
  %23 = load i32, i32* %6, align 4, !dbg !816
  %24 = call i32 @close(i32 %23), !dbg !817
  br label %25, !dbg !818

; <label>:25:                                     ; preds = %21, %18
  %26 = load i32, i32* %7, align 4, !dbg !819
  %27 = icmp ne i32 %26, 1, !dbg !821
  br i1 %27, label %28, label %32, !dbg !822

; <label>:28:                                     ; preds = %25
  %29 = load i32, i32* %7, align 4, !dbg !823
  call void @m_dup2(i32 %29, i32 1), !dbg !825
  %30 = load i32, i32* %7, align 4, !dbg !826
  %31 = call i32 @close(i32 %30), !dbg !827
  br label %32, !dbg !828

; <label>:32:                                     ; preds = %28, %25
  store i32 0, i32* %14, align 4, !dbg !829
  br label %33, !dbg !831

; <label>:33:                                     ; preds = %47, %32
  %34 = load i32, i32* %14, align 4, !dbg !832
  %35 = sext i32 %34 to i64, !dbg !835
  %36 = load i8**, i8*** %9, align 8, !dbg !835
  %37 = getelementptr inbounds i8*, i8** %36, i64 %35, !dbg !835
  %38 = load i8*, i8** %37, align 8, !dbg !835
  %39 = icmp ne i8* %38, null, !dbg !836
  br i1 %39, label %40, label %50, !dbg !836

; <label>:40:                                     ; preds = %33
  %41 = load i32, i32* %14, align 4, !dbg !837
  %42 = sext i32 %41 to i64, !dbg !838
  %43 = load i8**, i8*** %9, align 8, !dbg !838
  %44 = getelementptr inbounds i8*, i8** %43, i64 %42, !dbg !838
  %45 = load i8*, i8** %44, align 8, !dbg !838
  %46 = call i32 @unsetenv(i8* %45) #6, !dbg !839
  br label %47, !dbg !839

; <label>:47:                                     ; preds = %40
  %48 = load i32, i32* %14, align 4, !dbg !840
  %49 = add nsw i32 %48, 1, !dbg !840
  store i32 %49, i32* %14, align 4, !dbg !840
  br label %33, !dbg !842, !llvm.loop !843

; <label>:50:                                     ; preds = %33
  %51 = load i8*, i8** %10, align 8, !dbg !845
  %52 = load i8*, i8** %8, align 8, !dbg !846
  call void @command_init(%struct.command* %12, i8* %51, i8* %52), !dbg !847
  %53 = load i8*, i8** %10, align 8, !dbg !848
  call void @command_add_arg(%struct.command* %12, i8* %53), !dbg !849
  %54 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %11, i32 0, i32 0, !dbg !850
  %55 = bitcast %struct.__va_list_tag* %54 to i8*, !dbg !850
  call void @llvm.va_start(i8* %55), !dbg !850
  %56 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %11, i32 0, i32 0, !dbg !851
  call void @command_add_argv(%struct.command* %12, %struct.__va_list_tag* %56), !dbg !852
  %57 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %11, i32 0, i32 0, !dbg !853
  %58 = bitcast %struct.__va_list_tag* %57 to i8*, !dbg !853
  call void @llvm.va_end(i8* %58), !dbg !853
  call void @command_exec(%struct.command* %12) #9, !dbg !854
  unreachable, !dbg !854

; <label>:59:                                     ; preds = %5
  %60 = load i32, i32* %13, align 4, !dbg !855
  %61 = load i8*, i8** %8, align 8, !dbg !856
  %62 = call i32 @subproc_reap(i32 %60, i8* %61, i32 0), !dbg !857
  ret void, !dbg !858
}

declare i32 @subproc_fork() #3

declare void @m_dup2(i32, i32) #3

; Function Attrs: nounwind
declare i32 @unsetenv(i8*) #4

declare void @command_init(%struct.command*, i8*, i8*) #3

declare void @command_add_arg(%struct.command*, i8*) #3

declare void @command_add_argv(%struct.command*, %struct.__va_list_tag*) #3

; Function Attrs: noreturn
declare void @command_exec(%struct.command*) #7

declare i32 @subproc_reap(i32, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @fixup_bzip2_params(%struct.compress_params*) #0 !dbg !859 {
  %2 = alloca %struct.compress_params*, align 8
  store %struct.compress_params* %0, %struct.compress_params** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.compress_params** %2, metadata !860, metadata !82), !dbg !861
  %3 = load %struct.compress_params*, %struct.compress_params** %2, align 8, !dbg !862
  %4 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %3, i32 0, i32 2, !dbg !864
  %5 = load i32, i32* %4, align 4, !dbg !864
  %6 = icmp eq i32 %5, 0, !dbg !865
  br i1 %6, label %7, label %10, !dbg !866

; <label>:7:                                      ; preds = %1
  %8 = load %struct.compress_params*, %struct.compress_params** %2, align 8, !dbg !867
  %9 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %8, i32 0, i32 2, !dbg !868
  store i32 1, i32* %9, align 4, !dbg !869
  br label %10, !dbg !867

; <label>:10:                                     ; preds = %7, %1
  ret void, !dbg !870
}

; Function Attrs: nounwind uwtable
define internal void @compress_bzip2(i32, i32, %struct.compress_params*, i8*) #0 !dbg !871 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.compress_params*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [6 x i8], align 1
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !872, metadata !82), !dbg !873
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !874, metadata !82), !dbg !875
  store %struct.compress_params* %2, %struct.compress_params** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.compress_params** %7, metadata !876, metadata !82), !dbg !877
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !878, metadata !82), !dbg !879
  call void @llvm.dbg.declare(metadata [6 x i8]* %9, metadata !880, metadata !82), !dbg !881
  %10 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i32 0, i32 0, !dbg !882
  %11 = load %struct.compress_params*, %struct.compress_params** %7, align 8, !dbg !883
  %12 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %11, i32 0, i32 2, !dbg !884
  %13 = load i32, i32* %12, align 4, !dbg !884
  %14 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %10, i64 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 %13) #6, !dbg !885
  %15 = load i32, i32* %5, align 4, !dbg !886
  %16 = load i32, i32* %6, align 4, !dbg !887
  %17 = load i8*, i8** %8, align 8, !dbg !888
  %18 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i32 0, i32 0, !dbg !889
  call void (i32, i32, i8*, i8**, i8*, ...) @fd_fd_filter(i32 %15, i32 %16, i8* %17, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @env_bzip2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* %18, i8* null), !dbg !890
  ret void, !dbg !891
}

; Function Attrs: nounwind uwtable
define internal void @decompress_bzip2(i32, i32, i8*) #0 !dbg !892 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !893, metadata !82), !dbg !894
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !895, metadata !82), !dbg !896
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !897, metadata !82), !dbg !898
  %7 = load i32, i32* %4, align 4, !dbg !899
  %8 = load i32, i32* %5, align 4, !dbg !900
  %9 = load i8*, i8** %6, align 8, !dbg !901
  call void (i32, i32, i8*, i8**, i8*, ...) @fd_fd_filter(i32 %7, i32 %8, i8* %9, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @env_bzip2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* null), !dbg !902
  ret void, !dbg !903
}

; Function Attrs: nounwind uwtable
define internal void @compress_lzma(i32, i32, %struct.compress_params*, i8*) #0 !dbg !904 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.compress_params*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [6 x i8], align 1
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !905, metadata !82), !dbg !906
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !907, metadata !82), !dbg !908
  store %struct.compress_params* %2, %struct.compress_params** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.compress_params** %7, metadata !909, metadata !82), !dbg !910
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !911, metadata !82), !dbg !912
  call void @llvm.dbg.declare(metadata [6 x i8]* %9, metadata !913, metadata !82), !dbg !914
  %10 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i32 0, i32 0, !dbg !915
  %11 = load %struct.compress_params*, %struct.compress_params** %7, align 8, !dbg !916
  %12 = getelementptr inbounds %struct.compress_params, %struct.compress_params* %11, i32 0, i32 2, !dbg !917
  %13 = load i32, i32* %12, align 4, !dbg !917
  %14 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %10, i64 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 %13) #6, !dbg !918
  %15 = load i32, i32* %5, align 4, !dbg !919
  %16 = load i32, i32* %6, align 4, !dbg !920
  %17 = load i8*, i8** %8, align 8, !dbg !921
  %18 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i32 0, i32 0, !dbg !922
  call void (i32, i32, i8*, i8**, i8*, ...) @fd_fd_filter(i32 %15, i32 %16, i8* %17, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @env_xz, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), i8* null), !dbg !923
  ret void, !dbg !924
}

; Function Attrs: nounwind uwtable
define internal void @decompress_lzma(i32, i32, i8*) #0 !dbg !925 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !926, metadata !82), !dbg !927
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !928, metadata !82), !dbg !929
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !930, metadata !82), !dbg !931
  %7 = load i32, i32* %4, align 4, !dbg !932
  %8 = load i32, i32* %5, align 4, !dbg !933
  %9 = load i8*, i8** %6, align 8, !dbg !934
  call void (i32, i32, i8*, i8**, i8*, ...) @fd_fd_filter(i32 %7, i32 %8, i8* %9, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @env_xz, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), i8* null), !dbg !935
  ret void, !dbg !936
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!74, !75}
!llvm.ident = !{!76}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !27, globals: !29)
!1 = !DIFile(filename: "[inter]lib--dpkg--compress.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !12, !21}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "compressor_type", file: !4, line: 38, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/compress.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8, !9, !10, !11}
!6 = !DIEnumerator(name: "COMPRESSOR_TYPE_UNKNOWN", value: -1)
!7 = !DIEnumerator(name: "COMPRESSOR_TYPE_NONE", value: 0)
!8 = !DIEnumerator(name: "COMPRESSOR_TYPE_GZIP", value: 1)
!9 = !DIEnumerator(name: "COMPRESSOR_TYPE_XZ", value: 2)
!10 = !DIEnumerator(name: "COMPRESSOR_TYPE_BZIP2", value: 3)
!11 = !DIEnumerator(name: "COMPRESSOR_TYPE_LZMA", value: 4)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "compressor_strategy", file: !4, line: 47, size: 32, align: 32, elements: !13)
!13 = !{!14, !15, !16, !17, !18, !19, !20}
!14 = !DIEnumerator(name: "COMPRESSOR_STRATEGY_UNKNOWN", value: -1)
!15 = !DIEnumerator(name: "COMPRESSOR_STRATEGY_NONE", value: 0)
!16 = !DIEnumerator(name: "COMPRESSOR_STRATEGY_FILTERED", value: 1)
!17 = !DIEnumerator(name: "COMPRESSOR_STRATEGY_HUFFMAN", value: 2)
!18 = !DIEnumerator(name: "COMPRESSOR_STRATEGY_RLE", value: 3)
!19 = !DIEnumerator(name: "COMPRESSOR_STRATEGY_FIXED", value: 4)
!20 = !DIEnumerator(name: "COMPRESSOR_STRATEGY_EXTREME", value: 5)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !22, line: 36, size: 32, align: 32, elements: !23)
!22 = !DIFile(filename: "../../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!23 = !{!24, !25, !26}
!24 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!25 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!26 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!27 = !{!28}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!29 = !{!30, !64, !65, !66, !67, !71, !72, !73}
!30 = distinct !DIGlobalVariable(name: "compressor_array", scope: !0, file: !31, line: 757, type: !32, isLocal: true, isDefinition: true, variable: [5 x %struct.compressor*]* @compressor_array)
!31 = !DIFile(filename: "compress.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 320, align: 64, elements: !62)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compressor", file: !31, line: 88, size: 384, align: 64, elements: !36)
!36 = !{!37, !41, !42, !44, !54, !58}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !35, file: !31, line: 89, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !35, file: !31, line: 90, baseType: !38, size: 64, align: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "default_level", scope: !35, file: !31, line: 91, baseType: !43, size: 32, align: 32, offset: 128)
!43 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "fixup_params", scope: !35, file: !31, line: 92, baseType: !45, size: 64, align: 64, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compress_params", file: !4, line: 57, size: 96, align: 32, elements: !50)
!50 = !{!51, !52, !53}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !49, file: !4, line: 58, baseType: !3, size: 32, align: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "strategy", scope: !49, file: !4, line: 59, baseType: !12, size: 32, align: 32, offset: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !49, file: !4, line: 60, baseType: !43, size: 32, align: 32, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !35, file: !31, line: 93, baseType: !55, size: 64, align: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !43, !43, !48, !38}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "decompress", scope: !35, file: !31, line: 95, baseType: !59, size: 64, align: 64, offset: 320)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !43, !43, !38}
!62 = !{!63}
!63 = !DISubrange(count: 5)
!64 = distinct !DIGlobalVariable(name: "compressor_none", scope: !0, file: !31, line: 125, type: !34, isLocal: true, isDefinition: true, variable: %struct.compressor* @compressor_none)
!65 = distinct !DIGlobalVariable(name: "compressor_gzip", scope: !0, file: !31, line: 258, type: !34, isLocal: true, isDefinition: true, variable: %struct.compressor* @compressor_gzip)
!66 = distinct !DIGlobalVariable(name: "compressor_xz", scope: !0, file: !31, line: 654, type: !34, isLocal: true, isDefinition: true, variable: %struct.compressor* @compressor_xz)
!67 = distinct !DIGlobalVariable(name: "env_xz", scope: !0, file: !31, line: 630, type: !68, isLocal: true, isDefinition: true, variable: [3 x i8*]* @env_xz)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 192, align: 64, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 3)
!71 = distinct !DIGlobalVariable(name: "compressor_bzip2", scope: !0, file: !31, line: 384, type: !34, isLocal: true, isDefinition: true, variable: %struct.compressor* @compressor_bzip2)
!72 = distinct !DIGlobalVariable(name: "env_bzip2", scope: !0, file: !31, line: 366, type: !68, isLocal: true, isDefinition: true, variable: [3 x i8*]* @env_bzip2)
!73 = distinct !DIGlobalVariable(name: "compressor_lzma", scope: !0, file: !31, line: 744, type: !34, isLocal: true, isDefinition: true, variable: %struct.compressor* @compressor_lzma)
!74 = !{i32 2, !"Dwarf Version", i32 4}
!75 = !{i32 2, !"Debug Info Version", i32 3}
!76 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!77 = distinct !DISubprogram(name: "compressor_get_name", scope: !31, file: !31, line: 777, type: !78, isLocal: false, isDefinition: true, scopeLine: 778, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !80)
!78 = !DISubroutineType(types: !79)
!79 = !{!38, !3}
!80 = !{}
!81 = !DILocalVariable(name: "type", arg: 1, scope: !77, file: !31, line: 777, type: !3)
!82 = !DIExpression()
!83 = !DILocation(line: 777, column: 42, scope: !77)
!84 = !DILocation(line: 779, column: 20, scope: !77)
!85 = !DILocation(line: 779, column: 9, scope: !77)
!86 = !DILocation(line: 779, column: 27, scope: !77)
!87 = !DILocation(line: 779, column: 2, scope: !77)
!88 = distinct !DISubprogram(name: "compressor", scope: !31, file: !31, line: 766, type: !89, isLocal: true, isDefinition: true, scopeLine: 767, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !80)
!89 = !DISubroutineType(types: !90)
!90 = !{!33, !3}
!91 = !DILocalVariable(name: "type", arg: 1, scope: !88, file: !31, line: 766, type: !3)
!92 = !DILocation(line: 766, column: 33, scope: !88)
!93 = !DILocalVariable(name: "max_type", scope: !88, file: !31, line: 768, type: !94)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3)
!95 = !DILocation(line: 768, column: 29, scope: !88)
!96 = !DILocation(line: 770, column: 6, scope: !97)
!97 = distinct !DILexicalBlock(scope: !88, file: !31, line: 770, column: 6)
!98 = !DILocation(line: 770, column: 11, scope: !97)
!99 = !DILocation(line: 770, column: 15, scope: !97)
!100 = !DILocation(line: 770, column: 18, scope: !101)
!101 = !DILexicalBlockFile(scope: !97, file: !31, discriminator: 1)
!102 = !DILocation(line: 770, column: 23, scope: !101)
!103 = !DILocation(line: 770, column: 6, scope: !101)
!104 = !DILocation(line: 771, column: 83, scope: !97)
!105 = !DILocation(line: 771, column: 3, scope: !97)
!106 = !DILocation(line: 773, column: 26, scope: !88)
!107 = !DILocation(line: 773, column: 9, scope: !88)
!108 = !DILocation(line: 773, column: 2, scope: !88)
!109 = distinct !DISubprogram(name: "compressor_get_extension", scope: !31, file: !31, line: 783, type: !78, isLocal: false, isDefinition: true, scopeLine: 784, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !80)
!110 = !DILocalVariable(name: "type", arg: 1, scope: !109, file: !31, line: 783, type: !3)
!111 = !DILocation(line: 783, column: 47, scope: !109)
!112 = !DILocation(line: 785, column: 20, scope: !109)
!113 = !DILocation(line: 785, column: 9, scope: !109)
!114 = !DILocation(line: 785, column: 27, scope: !109)
!115 = !DILocation(line: 785, column: 2, scope: !109)
!116 = distinct !DISubprogram(name: "compressor_find_by_name", scope: !31, file: !31, line: 789, type: !117, isLocal: false, isDefinition: true, scopeLine: 790, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !80)
!117 = !DISubroutineType(types: !118)
!118 = !{!3, !38}
!119 = !DILocalVariable(name: "name", arg: 1, scope: !116, file: !31, line: 789, type: !38)
!120 = !DILocation(line: 789, column: 37, scope: !116)
!121 = !DILocalVariable(name: "i", scope: !116, file: !31, line: 791, type: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !123, line: 216, baseType: !124)
!123 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!124 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!125 = !DILocation(line: 791, column: 9, scope: !116)
!126 = !DILocation(line: 793, column: 9, scope: !127)
!127 = distinct !DILexicalBlock(scope: !116, file: !31, line: 793, column: 2)
!128 = !DILocation(line: 793, column: 7, scope: !127)
!129 = !DILocation(line: 793, column: 14, scope: !130)
!130 = !DILexicalBlockFile(scope: !131, file: !31, discriminator: 1)
!131 = distinct !DILexicalBlock(scope: !127, file: !31, line: 793, column: 2)
!132 = !DILocation(line: 793, column: 16, scope: !130)
!133 = !DILocation(line: 793, column: 2, scope: !130)
!134 = !DILocation(line: 794, column: 31, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !31, line: 794, column: 7)
!136 = !DILocation(line: 794, column: 14, scope: !135)
!137 = !DILocation(line: 794, column: 35, scope: !135)
!138 = !DILocation(line: 794, column: 41, scope: !135)
!139 = !DILocation(line: 794, column: 7, scope: !135)
!140 = !DILocation(line: 794, column: 47, scope: !135)
!141 = !DILocation(line: 794, column: 7, scope: !131)
!142 = !DILocation(line: 795, column: 11, scope: !135)
!143 = !DILocation(line: 795, column: 4, scope: !135)
!144 = !DILocation(line: 794, column: 50, scope: !145)
!145 = !DILexicalBlockFile(scope: !135, file: !31, discriminator: 1)
!146 = !DILocation(line: 793, column: 79, scope: !147)
!147 = !DILexicalBlockFile(scope: !131, file: !31, discriminator: 2)
!148 = !DILocation(line: 793, column: 2, scope: !147)
!149 = distinct !{!149, !150}
!150 = !DILocation(line: 793, column: 2, scope: !116)
!151 = !DILocation(line: 797, column: 2, scope: !116)
!152 = !DILocation(line: 798, column: 1, scope: !116)
!153 = distinct !DISubprogram(name: "compressor_find_by_extension", scope: !31, file: !31, line: 801, type: !117, isLocal: false, isDefinition: true, scopeLine: 802, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !80)
!154 = !DILocalVariable(name: "extension", arg: 1, scope: !153, file: !31, line: 801, type: !38)
!155 = !DILocation(line: 801, column: 42, scope: !153)
!156 = !DILocalVariable(name: "i", scope: !153, file: !31, line: 803, type: !122)
!157 = !DILocation(line: 803, column: 9, scope: !153)
!158 = !DILocation(line: 805, column: 9, scope: !159)
!159 = distinct !DILexicalBlock(scope: !153, file: !31, line: 805, column: 2)
!160 = !DILocation(line: 805, column: 7, scope: !159)
!161 = !DILocation(line: 805, column: 14, scope: !162)
!162 = !DILexicalBlockFile(scope: !163, file: !31, discriminator: 1)
!163 = distinct !DILexicalBlock(scope: !159, file: !31, line: 805, column: 2)
!164 = !DILocation(line: 805, column: 16, scope: !162)
!165 = !DILocation(line: 805, column: 2, scope: !162)
!166 = !DILocation(line: 806, column: 31, scope: !167)
!167 = distinct !DILexicalBlock(scope: !163, file: !31, line: 806, column: 7)
!168 = !DILocation(line: 806, column: 14, scope: !167)
!169 = !DILocation(line: 806, column: 35, scope: !167)
!170 = !DILocation(line: 806, column: 46, scope: !167)
!171 = !DILocation(line: 806, column: 7, scope: !167)
!172 = !DILocation(line: 806, column: 57, scope: !167)
!173 = !DILocation(line: 806, column: 7, scope: !163)
!174 = !DILocation(line: 807, column: 11, scope: !167)
!175 = !DILocation(line: 807, column: 4, scope: !167)
!176 = !DILocation(line: 806, column: 60, scope: !177)
!177 = !DILexicalBlockFile(scope: !167, file: !31, discriminator: 1)
!178 = !DILocation(line: 805, column: 79, scope: !179)
!179 = !DILexicalBlockFile(scope: !163, file: !31, discriminator: 2)
!180 = !DILocation(line: 805, column: 2, scope: !179)
!181 = distinct !{!181, !182}
!182 = !DILocation(line: 805, column: 2, scope: !153)
!183 = !DILocation(line: 809, column: 2, scope: !153)
!184 = !DILocation(line: 810, column: 1, scope: !153)
!185 = distinct !DISubprogram(name: "compressor_get_strategy", scope: !31, file: !31, line: 813, type: !186, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !80)
!186 = !DISubroutineType(types: !187)
!187 = !{!12, !38}
!188 = !DILocalVariable(name: "name", arg: 1, scope: !185, file: !31, line: 813, type: !38)
!189 = !DILocation(line: 813, column: 37, scope: !185)
!190 = !DILocation(line: 815, column: 13, scope: !191)
!191 = distinct !DILexicalBlock(scope: !185, file: !31, line: 815, column: 6)
!192 = !DILocation(line: 815, column: 6, scope: !191)
!193 = !DILocation(line: 815, column: 27, scope: !191)
!194 = !DILocation(line: 815, column: 6, scope: !185)
!195 = !DILocation(line: 816, column: 3, scope: !191)
!196 = !DILocation(line: 817, column: 13, scope: !197)
!197 = distinct !DILexicalBlock(scope: !185, file: !31, line: 817, column: 6)
!198 = !DILocation(line: 817, column: 6, scope: !197)
!199 = !DILocation(line: 817, column: 31, scope: !197)
!200 = !DILocation(line: 817, column: 6, scope: !185)
!201 = !DILocation(line: 818, column: 3, scope: !197)
!202 = !DILocation(line: 819, column: 13, scope: !203)
!203 = distinct !DILexicalBlock(scope: !185, file: !31, line: 819, column: 6)
!204 = !DILocation(line: 819, column: 6, scope: !203)
!205 = !DILocation(line: 819, column: 30, scope: !203)
!206 = !DILocation(line: 819, column: 6, scope: !185)
!207 = !DILocation(line: 820, column: 3, scope: !203)
!208 = !DILocation(line: 821, column: 13, scope: !209)
!209 = distinct !DILexicalBlock(scope: !185, file: !31, line: 821, column: 6)
!210 = !DILocation(line: 821, column: 6, scope: !209)
!211 = !DILocation(line: 821, column: 26, scope: !209)
!212 = !DILocation(line: 821, column: 6, scope: !185)
!213 = !DILocation(line: 822, column: 3, scope: !209)
!214 = !DILocation(line: 823, column: 13, scope: !215)
!215 = distinct !DILexicalBlock(scope: !185, file: !31, line: 823, column: 6)
!216 = !DILocation(line: 823, column: 6, scope: !215)
!217 = !DILocation(line: 823, column: 28, scope: !215)
!218 = !DILocation(line: 823, column: 6, scope: !185)
!219 = !DILocation(line: 824, column: 3, scope: !215)
!220 = !DILocation(line: 825, column: 13, scope: !221)
!221 = distinct !DILexicalBlock(scope: !185, file: !31, line: 825, column: 6)
!222 = !DILocation(line: 825, column: 6, scope: !221)
!223 = !DILocation(line: 825, column: 30, scope: !221)
!224 = !DILocation(line: 825, column: 6, scope: !185)
!225 = !DILocation(line: 826, column: 3, scope: !221)
!226 = !DILocation(line: 828, column: 2, scope: !185)
!227 = !DILocation(line: 829, column: 1, scope: !185)
!228 = distinct !DISubprogram(name: "compressor_check_params", scope: !31, file: !31, line: 841, type: !229, isLocal: false, isDefinition: true, scopeLine: 842, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !80)
!229 = !DISubroutineType(types: !230)
!230 = !{!231, !48, !232}
!231 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !22, line: 42, size: 128, align: 64, elements: !234)
!234 = !{!235, !236, !237}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !233, file: !22, line: 43, baseType: !21, size: 32, align: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !233, file: !22, line: 45, baseType: !43, size: 32, align: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !233, file: !22, line: 46, baseType: !238, size: 64, align: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!239 = !DILocalVariable(name: "params", arg: 1, scope: !228, file: !31, line: 841, type: !48)
!240 = !DILocation(line: 841, column: 49, scope: !228)
!241 = !DILocalVariable(name: "err", arg: 2, scope: !228, file: !31, line: 841, type: !232)
!242 = !DILocation(line: 841, column: 76, scope: !228)
!243 = !DILocation(line: 843, column: 26, scope: !228)
!244 = !DILocation(line: 843, column: 2, scope: !228)
!245 = !DILocation(line: 845, column: 6, scope: !246)
!246 = distinct !DILexicalBlock(scope: !228, file: !31, line: 845, column: 6)
!247 = !DILocation(line: 845, column: 14, scope: !246)
!248 = !DILocation(line: 845, column: 23, scope: !246)
!249 = !DILocation(line: 845, column: 6, scope: !228)
!250 = !DILocation(line: 846, column: 3, scope: !246)
!251 = !DILocation(line: 848, column: 6, scope: !252)
!252 = distinct !DILexicalBlock(scope: !228, file: !31, line: 848, column: 6)
!253 = !DILocation(line: 848, column: 14, scope: !252)
!254 = !DILocation(line: 848, column: 19, scope: !252)
!255 = !DILocation(line: 848, column: 43, scope: !252)
!256 = !DILocation(line: 849, column: 7, scope: !252)
!257 = !DILocation(line: 849, column: 15, scope: !252)
!258 = !DILocation(line: 849, column: 24, scope: !252)
!259 = !DILocation(line: 849, column: 56, scope: !252)
!260 = !DILocation(line: 850, column: 7, scope: !252)
!261 = !DILocation(line: 850, column: 15, scope: !252)
!262 = !DILocation(line: 850, column: 24, scope: !252)
!263 = !DILocation(line: 850, column: 55, scope: !252)
!264 = !DILocation(line: 851, column: 7, scope: !252)
!265 = !DILocation(line: 851, column: 15, scope: !252)
!266 = !DILocation(line: 851, column: 24, scope: !252)
!267 = !DILocation(line: 851, column: 51, scope: !252)
!268 = !DILocation(line: 852, column: 7, scope: !252)
!269 = !DILocation(line: 852, column: 15, scope: !252)
!270 = !DILocation(line: 852, column: 24, scope: !252)
!271 = !DILocation(line: 848, column: 6, scope: !272)
!272 = !DILexicalBlockFile(scope: !228, file: !31, discriminator: 1)
!273 = !DILocation(line: 853, column: 3, scope: !252)
!274 = !DILocation(line: 855, column: 6, scope: !275)
!275 = distinct !DILexicalBlock(scope: !228, file: !31, line: 855, column: 6)
!276 = !DILocation(line: 855, column: 14, scope: !275)
!277 = !DILocation(line: 855, column: 19, scope: !275)
!278 = !DILocation(line: 855, column: 41, scope: !275)
!279 = !DILocation(line: 856, column: 6, scope: !275)
!280 = !DILocation(line: 856, column: 14, scope: !275)
!281 = !DILocation(line: 856, column: 23, scope: !275)
!282 = !DILocation(line: 855, column: 6, scope: !272)
!283 = !DILocation(line: 857, column: 3, scope: !275)
!284 = !DILocation(line: 859, column: 17, scope: !228)
!285 = !DILocation(line: 859, column: 21, scope: !228)
!286 = !DILocation(line: 859, column: 2, scope: !272)
!287 = !DILocation(line: 860, column: 2, scope: !228)
!288 = !DILocation(line: 861, column: 1, scope: !228)
!289 = distinct !DISubprogram(name: "compressor_fixup_params", scope: !31, file: !31, line: 832, type: !46, isLocal: true, isDefinition: true, scopeLine: 833, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !80)
!290 = !DILocalVariable(name: "params", arg: 1, scope: !289, file: !31, line: 832, type: !48)
!291 = !DILocation(line: 832, column: 49, scope: !289)
!292 = !DILocation(line: 834, column: 13, scope: !289)
!293 = !DILocation(line: 834, column: 21, scope: !289)
!294 = !DILocation(line: 834, column: 2, scope: !289)
!295 = !DILocation(line: 834, column: 28, scope: !289)
!296 = !DILocation(line: 834, column: 41, scope: !289)
!297 = !DILocation(line: 834, column: 2, scope: !298)
!298 = !DILexicalBlockFile(scope: !289, file: !31, discriminator: 1)
!299 = !DILocation(line: 836, column: 6, scope: !300)
!300 = distinct !DILexicalBlock(scope: !289, file: !31, line: 836, column: 6)
!301 = !DILocation(line: 836, column: 14, scope: !300)
!302 = !DILocation(line: 836, column: 20, scope: !300)
!303 = !DILocation(line: 836, column: 6, scope: !289)
!304 = !DILocation(line: 837, column: 30, scope: !300)
!305 = !DILocation(line: 837, column: 38, scope: !300)
!306 = !DILocation(line: 837, column: 19, scope: !300)
!307 = !DILocation(line: 837, column: 45, scope: !300)
!308 = !DILocation(line: 837, column: 3, scope: !300)
!309 = !DILocation(line: 837, column: 11, scope: !300)
!310 = !DILocation(line: 837, column: 17, scope: !300)
!311 = !DILocation(line: 838, column: 1, scope: !289)
!312 = distinct !DISubprogram(name: "decompress_filter", scope: !31, file: !31, line: 864, type: !313, isLocal: false, isDefinition: true, scopeLine: 866, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !80)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !3, !43, !43, !38, null}
!315 = !DILocalVariable(name: "type", arg: 1, scope: !312, file: !31, line: 864, type: !3)
!316 = !DILocation(line: 864, column: 40, scope: !312)
!317 = !DILocalVariable(name: "fd_in", arg: 2, scope: !312, file: !31, line: 864, type: !43)
!318 = !DILocation(line: 864, column: 50, scope: !312)
!319 = !DILocalVariable(name: "fd_out", arg: 3, scope: !312, file: !31, line: 864, type: !43)
!320 = !DILocation(line: 864, column: 61, scope: !312)
!321 = !DILocalVariable(name: "desc_fmt", arg: 4, scope: !312, file: !31, line: 865, type: !38)
!322 = !DILocation(line: 865, column: 31, scope: !312)
!323 = !DILocalVariable(name: "args", scope: !312, file: !31, line: 867, type: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !325, line: 98, baseType: !326)
!325 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !325, line: 40, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 867, baseType: !328)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 192, align: 64, elements: !336)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 867, size: 192, align: 64, elements: !330)
!330 = !{!331, !333, !334, !335}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !329, file: !1, line: 867, baseType: !332, size: 32, align: 32)
!332 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !329, file: !1, line: 867, baseType: !332, size: 32, align: 32, offset: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !329, file: !1, line: 867, baseType: !28, size: 64, align: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !329, file: !1, line: 867, baseType: !28, size: 64, align: 64, offset: 128)
!336 = !{!337}
!337 = !DISubrange(count: 1)
!338 = !DILocation(line: 867, column: 10, scope: !312)
!339 = !DILocalVariable(name: "desc", scope: !312, file: !31, line: 868, type: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !341, line: 55, size: 192, align: 64, elements: !342)
!341 = !DIFile(filename: "../../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!342 = !{!343, !344, !345}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !340, file: !341, line: 56, baseType: !122, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !340, file: !341, line: 56, baseType: !122, size: 64, align: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !340, file: !341, line: 57, baseType: !238, size: 64, align: 64, offset: 128)
!346 = !DILocation(line: 868, column: 16, scope: !312)
!347 = !DILocation(line: 870, column: 1, scope: !312)
!348 = !DILocation(line: 871, column: 24, scope: !312)
!349 = !DILocation(line: 871, column: 34, scope: !312)
!350 = !DILocation(line: 871, column: 2, scope: !312)
!351 = !DILocation(line: 872, column: 1, scope: !312)
!352 = !DILocation(line: 874, column: 13, scope: !312)
!353 = !DILocation(line: 874, column: 2, scope: !312)
!354 = !DILocation(line: 874, column: 20, scope: !312)
!355 = !DILocation(line: 874, column: 31, scope: !312)
!356 = !DILocation(line: 874, column: 38, scope: !312)
!357 = !DILocation(line: 874, column: 51, scope: !312)
!358 = !DILocation(line: 874, column: 2, scope: !359)
!359 = !DILexicalBlockFile(scope: !312, file: !31, discriminator: 1)
!360 = !DILocation(line: 876, column: 2, scope: !312)
!361 = !DILocation(line: 877, column: 1, scope: !312)
!362 = distinct !DISubprogram(name: "compress_filter", scope: !31, file: !31, line: 880, type: !363, isLocal: false, isDefinition: true, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !80)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !48, !43, !43, !38, null}
!365 = !DILocalVariable(name: "params", arg: 1, scope: !362, file: !31, line: 880, type: !48)
!366 = !DILocation(line: 880, column: 41, scope: !362)
!367 = !DILocalVariable(name: "fd_in", arg: 2, scope: !362, file: !31, line: 880, type: !43)
!368 = !DILocation(line: 880, column: 53, scope: !362)
!369 = !DILocalVariable(name: "fd_out", arg: 3, scope: !362, file: !31, line: 880, type: !43)
!370 = !DILocation(line: 880, column: 64, scope: !362)
!371 = !DILocalVariable(name: "desc_fmt", arg: 4, scope: !362, file: !31, line: 881, type: !38)
!372 = !DILocation(line: 881, column: 29, scope: !362)
!373 = !DILocalVariable(name: "args", scope: !362, file: !31, line: 883, type: !324)
!374 = !DILocation(line: 883, column: 10, scope: !362)
!375 = !DILocalVariable(name: "desc", scope: !362, file: !31, line: 884, type: !340)
!376 = !DILocation(line: 884, column: 16, scope: !362)
!377 = !DILocation(line: 886, column: 1, scope: !362)
!378 = !DILocation(line: 887, column: 24, scope: !362)
!379 = !DILocation(line: 887, column: 34, scope: !362)
!380 = !DILocation(line: 887, column: 2, scope: !362)
!381 = !DILocation(line: 888, column: 1, scope: !362)
!382 = !DILocation(line: 890, column: 13, scope: !362)
!383 = !DILocation(line: 890, column: 21, scope: !362)
!384 = !DILocation(line: 890, column: 2, scope: !362)
!385 = !DILocation(line: 890, column: 28, scope: !362)
!386 = !DILocation(line: 890, column: 37, scope: !362)
!387 = !DILocation(line: 890, column: 44, scope: !362)
!388 = !DILocation(line: 890, column: 52, scope: !362)
!389 = !DILocation(line: 890, column: 65, scope: !362)
!390 = !DILocation(line: 890, column: 2, scope: !391)
!391 = !DILexicalBlockFile(scope: !362, file: !31, discriminator: 1)
!392 = !DILocation(line: 892, column: 2, scope: !362)
!393 = !DILocation(line: 893, column: 1, scope: !362)
!394 = distinct !DISubprogram(name: "fixup_none_params", scope: !31, file: !31, line: 103, type: !46, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !80)
!395 = !DILocalVariable(name: "params", arg: 1, scope: !394, file: !31, line: 103, type: !48)
!396 = !DILocation(line: 103, column: 43, scope: !394)
!397 = !DILocation(line: 105, column: 1, scope: !394)
!398 = distinct !DISubprogram(name: "compress_none", scope: !31, file: !31, line: 117, type: !56, isLocal: true, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !80)
!399 = !DILocalVariable(name: "fd_in", arg: 1, scope: !398, file: !31, line: 117, type: !43)
!400 = !DILocation(line: 117, column: 19, scope: !398)
!401 = !DILocalVariable(name: "fd_out", arg: 2, scope: !398, file: !31, line: 117, type: !43)
!402 = !DILocation(line: 117, column: 30, scope: !398)
!403 = !DILocalVariable(name: "params", arg: 3, scope: !398, file: !31, line: 117, type: !48)
!404 = !DILocation(line: 117, column: 62, scope: !398)
!405 = !DILocalVariable(name: "desc", arg: 4, scope: !398, file: !31, line: 117, type: !38)
!406 = !DILocation(line: 117, column: 82, scope: !398)
!407 = !DILocalVariable(name: "err", scope: !398, file: !31, line: 119, type: !233)
!408 = !DILocation(line: 119, column: 20, scope: !398)
!409 = !DILocation(line: 121, column: 25, scope: !410)
!410 = distinct !DILexicalBlock(scope: !398, file: !31, line: 121, column: 6)
!411 = !DILocation(line: 121, column: 10, scope: !410)
!412 = !DILocation(line: 121, column: 6, scope: !410)
!413 = !DILocation(line: 121, column: 31, scope: !410)
!414 = !DILocation(line: 121, column: 6, scope: !398)
!415 = !DILocation(line: 122, column: 9, scope: !410)
!416 = !DILocation(line: 122, column: 47, scope: !410)
!417 = !DILocation(line: 122, column: 57, scope: !410)
!418 = !DILocation(line: 122, column: 3, scope: !419)
!419 = !DILexicalBlockFile(scope: !410, file: !31, discriminator: 1)
!420 = !DILocation(line: 122, column: 3, scope: !410)
!421 = !DILocation(line: 123, column: 1, scope: !398)
!422 = distinct !DISubprogram(name: "decompress_none", scope: !31, file: !31, line: 108, type: !60, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !80)
!423 = !DILocalVariable(name: "fd_in", arg: 1, scope: !422, file: !31, line: 108, type: !43)
!424 = !DILocation(line: 108, column: 21, scope: !422)
!425 = !DILocalVariable(name: "fd_out", arg: 2, scope: !422, file: !31, line: 108, type: !43)
!426 = !DILocation(line: 108, column: 32, scope: !422)
!427 = !DILocalVariable(name: "desc", arg: 3, scope: !422, file: !31, line: 108, type: !38)
!428 = !DILocation(line: 108, column: 52, scope: !422)
!429 = !DILocalVariable(name: "err", scope: !422, file: !31, line: 110, type: !233)
!430 = !DILocation(line: 110, column: 20, scope: !422)
!431 = !DILocation(line: 112, column: 25, scope: !432)
!432 = distinct !DILexicalBlock(scope: !422, file: !31, line: 112, column: 6)
!433 = !DILocation(line: 112, column: 10, scope: !432)
!434 = !DILocation(line: 112, column: 6, scope: !432)
!435 = !DILocation(line: 112, column: 31, scope: !432)
!436 = !DILocation(line: 112, column: 6, scope: !422)
!437 = !DILocation(line: 113, column: 9, scope: !432)
!438 = !DILocation(line: 113, column: 47, scope: !432)
!439 = !DILocation(line: 113, column: 57, scope: !432)
!440 = !DILocation(line: 113, column: 3, scope: !441)
!441 = !DILexicalBlockFile(scope: !432, file: !31, discriminator: 1)
!442 = !DILocation(line: 113, column: 3, scope: !432)
!443 = !DILocation(line: 114, column: 1, scope: !422)
!444 = distinct !DISubprogram(name: "fixup_gzip_params", scope: !31, file: !31, line: 141, type: !46, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !80)
!445 = !DILocalVariable(name: "params", arg: 1, scope: !444, file: !31, line: 141, type: !48)
!446 = !DILocation(line: 141, column: 43, scope: !444)
!447 = !DILocation(line: 144, column: 6, scope: !448)
!448 = distinct !DILexicalBlock(scope: !444, file: !31, line: 144, column: 6)
!449 = !DILocation(line: 144, column: 14, scope: !448)
!450 = !DILocation(line: 144, column: 20, scope: !448)
!451 = !DILocation(line: 144, column: 6, scope: !444)
!452 = !DILocation(line: 145, column: 3, scope: !448)
!453 = !DILocation(line: 145, column: 11, scope: !448)
!454 = !DILocation(line: 145, column: 16, scope: !448)
!455 = !DILocation(line: 146, column: 1, scope: !444)
!456 = distinct !DISubprogram(name: "compress_gzip", scope: !31, file: !31, line: 184, type: !56, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !80)
!457 = !DILocalVariable(name: "fd_in", arg: 1, scope: !456, file: !31, line: 184, type: !43)
!458 = !DILocation(line: 184, column: 19, scope: !456)
!459 = !DILocalVariable(name: "fd_out", arg: 2, scope: !456, file: !31, line: 184, type: !43)
!460 = !DILocation(line: 184, column: 30, scope: !456)
!461 = !DILocalVariable(name: "params", arg: 3, scope: !456, file: !31, line: 184, type: !48)
!462 = !DILocation(line: 184, column: 62, scope: !456)
!463 = !DILocalVariable(name: "desc", arg: 4, scope: !456, file: !31, line: 184, type: !38)
!464 = !DILocation(line: 184, column: 82, scope: !456)
!465 = !DILocalVariable(name: "buffer", scope: !456, file: !31, line: 186, type: !466)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 32768, align: 8, elements: !467)
!467 = !{!468}
!468 = !DISubrange(count: 4096)
!469 = !DILocation(line: 186, column: 7, scope: !456)
!470 = !DILocalVariable(name: "combuf", scope: !456, file: !31, line: 187, type: !471)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 48, align: 8, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 6)
!474 = !DILocation(line: 187, column: 7, scope: !456)
!475 = !DILocalVariable(name: "strategy", scope: !456, file: !31, line: 188, type: !43)
!476 = !DILocation(line: 188, column: 6, scope: !456)
!477 = !DILocalVariable(name: "z_errnum", scope: !456, file: !31, line: 189, type: !43)
!478 = !DILocation(line: 189, column: 6, scope: !456)
!479 = !DILocalVariable(name: "gzfile", scope: !456, file: !31, line: 190, type: !480)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "gzFile", file: !481, line: 1300, baseType: !482)
!481 = !DIFile(filename: "/usr/local/include/zlib.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64, align: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gzFile_s", file: !481, line: 1817, size: 192, align: 64, elements: !484)
!484 = !{!485, !486, !489}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "have", scope: !483, file: !481, line: 1818, baseType: !332, size: 32, align: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !483, file: !481, line: 1819, baseType: !487, size: 64, align: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64, align: 64)
!488 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !483, file: !481, line: 1820, baseType: !490, size: 64, align: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "off64_t", file: !491, line: 253, baseType: !492)
!491 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !493, line: 132, baseType: !494)
!493 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!494 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!495 = !DILocation(line: 190, column: 9, scope: !456)
!496 = !DILocation(line: 192, column: 6, scope: !497)
!497 = distinct !DILexicalBlock(scope: !456, file: !31, line: 192, column: 6)
!498 = !DILocation(line: 192, column: 14, scope: !497)
!499 = !DILocation(line: 192, column: 23, scope: !497)
!500 = !DILocation(line: 192, column: 6, scope: !456)
!501 = !DILocation(line: 193, column: 12, scope: !497)
!502 = !DILocation(line: 193, column: 3, scope: !497)
!503 = !DILocation(line: 194, column: 11, scope: !504)
!504 = distinct !DILexicalBlock(scope: !497, file: !31, line: 194, column: 11)
!505 = !DILocation(line: 194, column: 19, scope: !504)
!506 = !DILocation(line: 194, column: 28, scope: !504)
!507 = !DILocation(line: 194, column: 11, scope: !497)
!508 = !DILocation(line: 195, column: 12, scope: !504)
!509 = !DILocation(line: 195, column: 3, scope: !504)
!510 = !DILocation(line: 196, column: 11, scope: !511)
!511 = distinct !DILexicalBlock(scope: !504, file: !31, line: 196, column: 11)
!512 = !DILocation(line: 196, column: 19, scope: !511)
!513 = !DILocation(line: 196, column: 28, scope: !511)
!514 = !DILocation(line: 196, column: 11, scope: !504)
!515 = !DILocation(line: 197, column: 12, scope: !511)
!516 = !DILocation(line: 197, column: 3, scope: !511)
!517 = !DILocation(line: 198, column: 11, scope: !518)
!518 = distinct !DILexicalBlock(scope: !511, file: !31, line: 198, column: 11)
!519 = !DILocation(line: 198, column: 19, scope: !518)
!520 = !DILocation(line: 198, column: 28, scope: !518)
!521 = !DILocation(line: 198, column: 11, scope: !511)
!522 = !DILocation(line: 199, column: 12, scope: !518)
!523 = !DILocation(line: 199, column: 3, scope: !518)
!524 = !DILocation(line: 201, column: 12, scope: !518)
!525 = !DILocation(line: 203, column: 11, scope: !456)
!526 = !DILocation(line: 203, column: 44, scope: !456)
!527 = !DILocation(line: 203, column: 52, scope: !456)
!528 = !DILocation(line: 203, column: 59, scope: !456)
!529 = !DILocation(line: 203, column: 2, scope: !456)
!530 = !DILocation(line: 204, column: 19, scope: !456)
!531 = !DILocation(line: 204, column: 27, scope: !456)
!532 = !DILocation(line: 204, column: 11, scope: !456)
!533 = !DILocation(line: 204, column: 9, scope: !456)
!534 = !DILocation(line: 205, column: 6, scope: !535)
!535 = distinct !DILexicalBlock(scope: !456, file: !31, line: 205, column: 6)
!536 = !DILocation(line: 205, column: 13, scope: !535)
!537 = !DILocation(line: 205, column: 6, scope: !456)
!538 = !DILocation(line: 206, column: 9, scope: !535)
!539 = !DILocation(line: 206, column: 55, scope: !535)
!540 = !DILocation(line: 206, column: 3, scope: !541)
!541 = !DILexicalBlockFile(scope: !535, file: !31, discriminator: 1)
!542 = !DILocation(line: 206, column: 3, scope: !535)
!543 = !DILocation(line: 208, column: 2, scope: !456)
!544 = !DILocalVariable(name: "actualread", scope: !545, file: !31, line: 209, type: !43)
!545 = distinct !DILexicalBlock(scope: !546, file: !31, line: 208, column: 11)
!546 = distinct !DILexicalBlock(scope: !547, file: !31, line: 208, column: 2)
!547 = distinct !DILexicalBlock(scope: !456, file: !31, line: 208, column: 2)
!548 = !DILocation(line: 209, column: 7, scope: !545)
!549 = !DILocalVariable(name: "actualwrite", scope: !545, file: !31, line: 209, type: !43)
!550 = !DILocation(line: 209, column: 19, scope: !545)
!551 = !DILocation(line: 211, column: 24, scope: !545)
!552 = !DILocation(line: 211, column: 31, scope: !545)
!553 = !DILocation(line: 211, column: 16, scope: !545)
!554 = !DILocation(line: 211, column: 14, scope: !545)
!555 = !DILocation(line: 212, column: 7, scope: !556)
!556 = distinct !DILexicalBlock(scope: !545, file: !31, line: 212, column: 7)
!557 = !DILocation(line: 212, column: 18, scope: !556)
!558 = !DILocation(line: 212, column: 7, scope: !545)
!559 = !DILocation(line: 213, column: 11, scope: !556)
!560 = !DILocation(line: 213, column: 46, scope: !556)
!561 = !DILocation(line: 213, column: 4, scope: !562)
!562 = !DILexicalBlockFile(scope: !556, file: !31, discriminator: 1)
!563 = !DILocation(line: 213, column: 4, scope: !556)
!564 = !DILocation(line: 214, column: 7, scope: !565)
!565 = distinct !DILexicalBlock(scope: !545, file: !31, line: 214, column: 7)
!566 = !DILocation(line: 214, column: 18, scope: !565)
!567 = !DILocation(line: 214, column: 7, scope: !545)
!568 = !DILocation(line: 215, column: 4, scope: !565)
!569 = !DILocation(line: 217, column: 25, scope: !545)
!570 = !DILocation(line: 217, column: 33, scope: !545)
!571 = !DILocation(line: 217, column: 41, scope: !545)
!572 = !DILocation(line: 217, column: 17, scope: !545)
!573 = !DILocation(line: 217, column: 15, scope: !545)
!574 = !DILocation(line: 218, column: 7, scope: !575)
!575 = distinct !DILexicalBlock(scope: !545, file: !31, line: 218, column: 7)
!576 = !DILocation(line: 218, column: 22, scope: !575)
!577 = !DILocation(line: 218, column: 19, scope: !575)
!578 = !DILocation(line: 218, column: 7, scope: !545)
!579 = !DILocalVariable(name: "errmsg", scope: !580, file: !31, line: 219, type: !38)
!580 = distinct !DILexicalBlock(scope: !575, file: !31, line: 218, column: 34)
!581 = !DILocation(line: 219, column: 16, scope: !580)
!582 = !DILocation(line: 219, column: 33, scope: !580)
!583 = !DILocation(line: 219, column: 25, scope: !580)
!584 = !DILocation(line: 221, column: 8, scope: !585)
!585 = distinct !DILexicalBlock(scope: !580, file: !31, line: 221, column: 8)
!586 = !DILocation(line: 221, column: 17, scope: !585)
!587 = !DILocation(line: 221, column: 8, scope: !580)
!588 = !DILocation(line: 222, column: 24, scope: !585)
!589 = !DILocation(line: 222, column: 23, scope: !585)
!590 = !DILocation(line: 222, column: 14, scope: !591)
!591 = !DILexicalBlockFile(scope: !585, file: !31, discriminator: 1)
!592 = !DILocation(line: 222, column: 12, scope: !585)
!593 = !DILocation(line: 222, column: 5, scope: !585)
!594 = !DILocation(line: 223, column: 10, scope: !580)
!595 = !DILocation(line: 223, column: 52, scope: !580)
!596 = !DILocation(line: 224, column: 11, scope: !580)
!597 = !DILocation(line: 223, column: 4, scope: !598)
!598 = !DILexicalBlockFile(scope: !580, file: !31, discriminator: 1)
!599 = !DILocation(line: 223, column: 4, scope: !580)
!600 = !DILocation(line: 208, column: 2, scope: !601)
!601 = !DILexicalBlockFile(scope: !546, file: !31, discriminator: 1)
!602 = distinct !{!602, !543}
!603 = !DILocation(line: 228, column: 21, scope: !456)
!604 = !DILocation(line: 228, column: 13, scope: !456)
!605 = !DILocation(line: 228, column: 11, scope: !456)
!606 = !DILocation(line: 229, column: 6, scope: !607)
!607 = distinct !DILexicalBlock(scope: !456, file: !31, line: 229, column: 6)
!608 = !DILocation(line: 229, column: 6, scope: !456)
!609 = !DILocalVariable(name: "errmsg", scope: !610, file: !31, line: 230, type: !38)
!610 = distinct !DILexicalBlock(scope: !607, file: !31, line: 229, column: 16)
!611 = !DILocation(line: 230, column: 15, scope: !610)
!612 = !DILocation(line: 232, column: 7, scope: !613)
!613 = distinct !DILexicalBlock(scope: !610, file: !31, line: 232, column: 7)
!614 = !DILocation(line: 232, column: 16, scope: !613)
!615 = !DILocation(line: 232, column: 7, scope: !610)
!616 = !DILocation(line: 233, column: 23, scope: !613)
!617 = !DILocation(line: 233, column: 22, scope: !613)
!618 = !DILocation(line: 233, column: 13, scope: !619)
!619 = !DILexicalBlockFile(scope: !613, file: !31, discriminator: 1)
!620 = !DILocation(line: 233, column: 11, scope: !613)
!621 = !DILocation(line: 233, column: 4, scope: !613)
!622 = !DILocation(line: 235, column: 20, scope: !613)
!623 = !DILocation(line: 235, column: 13, scope: !613)
!624 = !DILocation(line: 235, column: 11, scope: !613)
!625 = !DILocation(line: 236, column: 9, scope: !610)
!626 = !DILocation(line: 236, column: 49, scope: !610)
!627 = !DILocation(line: 236, column: 55, scope: !610)
!628 = !DILocation(line: 236, column: 3, scope: !629)
!629 = !DILexicalBlockFile(scope: !610, file: !31, discriminator: 1)
!630 = !DILocation(line: 236, column: 3, scope: !610)
!631 = !DILocation(line: 238, column: 1, scope: !456)
!632 = distinct !DISubprogram(name: "decompress_gzip", scope: !31, file: !31, line: 150, type: !60, isLocal: true, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !80)
!633 = !DILocalVariable(name: "fd_in", arg: 1, scope: !632, file: !31, line: 150, type: !43)
!634 = !DILocation(line: 150, column: 21, scope: !632)
!635 = !DILocalVariable(name: "fd_out", arg: 2, scope: !632, file: !31, line: 150, type: !43)
!636 = !DILocation(line: 150, column: 32, scope: !632)
!637 = !DILocalVariable(name: "desc", arg: 3, scope: !632, file: !31, line: 150, type: !38)
!638 = !DILocation(line: 150, column: 52, scope: !632)
!639 = !DILocalVariable(name: "buffer", scope: !632, file: !31, line: 152, type: !466)
!640 = !DILocation(line: 152, column: 7, scope: !632)
!641 = !DILocalVariable(name: "gzfile", scope: !632, file: !31, line: 153, type: !480)
!642 = !DILocation(line: 153, column: 9, scope: !632)
!643 = !DILocation(line: 153, column: 26, scope: !632)
!644 = !DILocation(line: 153, column: 18, scope: !632)
!645 = !DILocation(line: 155, column: 6, scope: !646)
!646 = distinct !DILexicalBlock(scope: !632, file: !31, line: 155, column: 6)
!647 = !DILocation(line: 155, column: 13, scope: !646)
!648 = !DILocation(line: 155, column: 6, scope: !632)
!649 = !DILocation(line: 156, column: 9, scope: !646)
!650 = !DILocation(line: 156, column: 54, scope: !646)
!651 = !DILocation(line: 156, column: 3, scope: !652)
!652 = !DILexicalBlockFile(scope: !646, file: !31, discriminator: 1)
!653 = !DILocation(line: 156, column: 3, scope: !646)
!654 = !DILocation(line: 158, column: 2, scope: !632)
!655 = !DILocalVariable(name: "actualread", scope: !656, file: !31, line: 159, type: !43)
!656 = distinct !DILexicalBlock(scope: !657, file: !31, line: 158, column: 11)
!657 = distinct !DILexicalBlock(scope: !658, file: !31, line: 158, column: 2)
!658 = distinct !DILexicalBlock(scope: !632, file: !31, line: 158, column: 2)
!659 = !DILocation(line: 159, column: 7, scope: !656)
!660 = !DILocalVariable(name: "actualwrite", scope: !656, file: !31, line: 159, type: !43)
!661 = !DILocation(line: 159, column: 19, scope: !656)
!662 = !DILocation(line: 161, column: 23, scope: !656)
!663 = !DILocation(line: 161, column: 31, scope: !656)
!664 = !DILocation(line: 161, column: 16, scope: !656)
!665 = !DILocation(line: 161, column: 14, scope: !656)
!666 = !DILocation(line: 162, column: 7, scope: !667)
!667 = distinct !DILexicalBlock(scope: !656, file: !31, line: 162, column: 7)
!668 = !DILocation(line: 162, column: 18, scope: !667)
!669 = !DILocation(line: 162, column: 7, scope: !656)
!670 = !DILocalVariable(name: "z_errnum", scope: !671, file: !31, line: 163, type: !43)
!671 = distinct !DILexicalBlock(scope: !667, file: !31, line: 162, column: 23)
!672 = !DILocation(line: 163, column: 8, scope: !671)
!673 = !DILocalVariable(name: "errmsg", scope: !671, file: !31, line: 164, type: !38)
!674 = !DILocation(line: 164, column: 16, scope: !671)
!675 = !DILocation(line: 164, column: 33, scope: !671)
!676 = !DILocation(line: 164, column: 25, scope: !671)
!677 = !DILocation(line: 166, column: 8, scope: !678)
!678 = distinct !DILexicalBlock(scope: !671, file: !31, line: 166, column: 8)
!679 = !DILocation(line: 166, column: 17, scope: !678)
!680 = !DILocation(line: 166, column: 8, scope: !671)
!681 = !DILocation(line: 167, column: 24, scope: !678)
!682 = !DILocation(line: 167, column: 23, scope: !678)
!683 = !DILocation(line: 167, column: 14, scope: !684)
!684 = !DILexicalBlockFile(scope: !678, file: !31, discriminator: 1)
!685 = !DILocation(line: 167, column: 12, scope: !678)
!686 = !DILocation(line: 167, column: 5, scope: !678)
!687 = !DILocation(line: 168, column: 10, scope: !671)
!688 = !DILocation(line: 168, column: 51, scope: !671)
!689 = !DILocation(line: 169, column: 11, scope: !671)
!690 = !DILocation(line: 168, column: 4, scope: !691)
!691 = !DILexicalBlockFile(scope: !671, file: !31, discriminator: 1)
!692 = !DILocation(line: 168, column: 4, scope: !671)
!693 = !DILocation(line: 171, column: 7, scope: !694)
!694 = distinct !DILexicalBlock(scope: !656, file: !31, line: 171, column: 7)
!695 = !DILocation(line: 171, column: 18, scope: !694)
!696 = !DILocation(line: 171, column: 7, scope: !656)
!697 = !DILocation(line: 172, column: 4, scope: !694)
!698 = !DILocation(line: 174, column: 26, scope: !656)
!699 = !DILocation(line: 174, column: 34, scope: !656)
!700 = !DILocation(line: 174, column: 42, scope: !656)
!701 = !DILocation(line: 174, column: 17, scope: !656)
!702 = !DILocation(line: 174, column: 15, scope: !656)
!703 = !DILocation(line: 175, column: 7, scope: !704)
!704 = distinct !DILexicalBlock(scope: !656, file: !31, line: 175, column: 7)
!705 = !DILocation(line: 175, column: 22, scope: !704)
!706 = !DILocation(line: 175, column: 19, scope: !704)
!707 = !DILocation(line: 175, column: 7, scope: !656)
!708 = !DILocation(line: 176, column: 11, scope: !704)
!709 = !DILocation(line: 176, column: 47, scope: !704)
!710 = !DILocation(line: 176, column: 4, scope: !711)
!711 = !DILexicalBlockFile(scope: !704, file: !31, discriminator: 1)
!712 = !DILocation(line: 176, column: 4, scope: !704)
!713 = !DILocation(line: 158, column: 2, scope: !714)
!714 = !DILexicalBlockFile(scope: !657, file: !31, discriminator: 1)
!715 = distinct !{!715, !654}
!716 = !DILocation(line: 179, column: 12, scope: !717)
!717 = distinct !DILexicalBlock(scope: !632, file: !31, line: 179, column: 6)
!718 = !DILocation(line: 179, column: 6, scope: !717)
!719 = !DILocation(line: 179, column: 6, scope: !632)
!720 = !DILocation(line: 180, column: 10, scope: !717)
!721 = !DILocation(line: 180, column: 46, scope: !717)
!722 = !DILocation(line: 180, column: 3, scope: !723)
!723 = !DILexicalBlockFile(scope: !717, file: !31, discriminator: 1)
!724 = !DILocation(line: 180, column: 3, scope: !717)
!725 = !DILocation(line: 181, column: 1, scope: !632)
!726 = distinct !DISubprogram(name: "compress_xz", scope: !31, file: !31, line: 639, type: !56, isLocal: true, isDefinition: true, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !80)
!727 = !DILocalVariable(name: "fd_in", arg: 1, scope: !726, file: !31, line: 639, type: !43)
!728 = !DILocation(line: 639, column: 17, scope: !726)
!729 = !DILocalVariable(name: "fd_out", arg: 2, scope: !726, file: !31, line: 639, type: !43)
!730 = !DILocation(line: 639, column: 28, scope: !726)
!731 = !DILocalVariable(name: "params", arg: 3, scope: !726, file: !31, line: 639, type: !48)
!732 = !DILocation(line: 639, column: 60, scope: !726)
!733 = !DILocalVariable(name: "desc", arg: 4, scope: !726, file: !31, line: 639, type: !38)
!734 = !DILocation(line: 639, column: 80, scope: !726)
!735 = !DILocalVariable(name: "combuf", scope: !726, file: !31, line: 641, type: !471)
!736 = !DILocation(line: 641, column: 7, scope: !726)
!737 = !DILocalVariable(name: "strategy", scope: !726, file: !31, line: 642, type: !38)
!738 = !DILocation(line: 642, column: 14, scope: !726)
!739 = !DILocation(line: 644, column: 6, scope: !740)
!740 = distinct !DILexicalBlock(scope: !726, file: !31, line: 644, column: 6)
!741 = !DILocation(line: 644, column: 14, scope: !740)
!742 = !DILocation(line: 644, column: 23, scope: !740)
!743 = !DILocation(line: 644, column: 6, scope: !726)
!744 = !DILocation(line: 645, column: 12, scope: !740)
!745 = !DILocation(line: 645, column: 3, scope: !740)
!746 = !DILocation(line: 647, column: 12, scope: !740)
!747 = !DILocation(line: 649, column: 11, scope: !726)
!748 = !DILocation(line: 649, column: 43, scope: !726)
!749 = !DILocation(line: 649, column: 51, scope: !726)
!750 = !DILocation(line: 649, column: 2, scope: !726)
!751 = !DILocation(line: 650, column: 15, scope: !726)
!752 = !DILocation(line: 650, column: 22, scope: !726)
!753 = !DILocation(line: 650, column: 30, scope: !726)
!754 = !DILocation(line: 650, column: 50, scope: !726)
!755 = !DILocation(line: 650, column: 58, scope: !726)
!756 = !DILocation(line: 650, column: 2, scope: !726)
!757 = !DILocation(line: 651, column: 1, scope: !726)
!758 = distinct !DISubprogram(name: "decompress_xz", scope: !31, file: !31, line: 633, type: !60, isLocal: true, isDefinition: true, scopeLine: 634, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !80)
!759 = !DILocalVariable(name: "fd_in", arg: 1, scope: !758, file: !31, line: 633, type: !43)
!760 = !DILocation(line: 633, column: 19, scope: !758)
!761 = !DILocalVariable(name: "fd_out", arg: 2, scope: !758, file: !31, line: 633, type: !43)
!762 = !DILocation(line: 633, column: 30, scope: !758)
!763 = !DILocalVariable(name: "desc", arg: 3, scope: !758, file: !31, line: 633, type: !38)
!764 = !DILocation(line: 633, column: 50, scope: !758)
!765 = !DILocation(line: 635, column: 15, scope: !758)
!766 = !DILocation(line: 635, column: 22, scope: !758)
!767 = !DILocation(line: 635, column: 30, scope: !758)
!768 = !DILocation(line: 635, column: 2, scope: !758)
!769 = !DILocation(line: 636, column: 1, scope: !758)
!770 = distinct !DISubprogram(name: "fd_fd_filter", scope: !31, file: !31, line: 54, type: !771, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !80)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !43, !43, !38, !773, !38, null}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!774 = !DILocalVariable(name: "fd_in", arg: 1, scope: !770, file: !31, line: 54, type: !43)
!775 = !DILocation(line: 54, column: 18, scope: !770)
!776 = !DILocalVariable(name: "fd_out", arg: 2, scope: !770, file: !31, line: 54, type: !43)
!777 = !DILocation(line: 54, column: 29, scope: !770)
!778 = !DILocalVariable(name: "desc", arg: 3, scope: !770, file: !31, line: 54, type: !38)
!779 = !DILocation(line: 54, column: 49, scope: !770)
!780 = !DILocalVariable(name: "delenv", arg: 4, scope: !770, file: !31, line: 54, type: !773)
!781 = !DILocation(line: 54, column: 67, scope: !770)
!782 = !DILocalVariable(name: "file", arg: 5, scope: !770, file: !31, line: 55, type: !38)
!783 = !DILocation(line: 55, column: 26, scope: !770)
!784 = !DILocalVariable(name: "args", scope: !770, file: !31, line: 57, type: !324)
!785 = !DILocation(line: 57, column: 10, scope: !770)
!786 = !DILocalVariable(name: "cmd", scope: !770, file: !31, line: 58, type: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "command", file: !788, line: 37, size: 256, align: 64, elements: !789)
!788 = !DIFile(filename: "../../lib/dpkg/command.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!789 = !{!790, !791, !792, !793, !794}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !787, file: !788, line: 39, baseType: !38, size: 64, align: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !787, file: !788, line: 41, baseType: !38, size: 64, align: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !787, file: !788, line: 42, baseType: !43, size: 32, align: 32, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "argv_size", scope: !787, file: !788, line: 43, baseType: !43, size: 32, align: 32, offset: 160)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !787, file: !788, line: 44, baseType: !773, size: 64, align: 64, offset: 192)
!795 = !DILocation(line: 58, column: 17, scope: !770)
!796 = !DILocalVariable(name: "pid", scope: !770, file: !31, line: 59, type: !797)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !491, line: 263, baseType: !798)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !493, line: 133, baseType: !43)
!799 = !DILocation(line: 59, column: 8, scope: !770)
!800 = !DILocalVariable(name: "i", scope: !770, file: !31, line: 60, type: !43)
!801 = !DILocation(line: 60, column: 6, scope: !770)
!802 = !DILocation(line: 62, column: 8, scope: !770)
!803 = !DILocation(line: 62, column: 6, scope: !770)
!804 = !DILocation(line: 63, column: 6, scope: !805)
!805 = distinct !DILexicalBlock(scope: !770, file: !31, line: 63, column: 6)
!806 = !DILocation(line: 63, column: 10, scope: !805)
!807 = !DILocation(line: 63, column: 6, scope: !770)
!808 = !DILocation(line: 64, column: 7, scope: !809)
!809 = distinct !DILexicalBlock(scope: !810, file: !31, line: 64, column: 7)
!810 = distinct !DILexicalBlock(scope: !805, file: !31, line: 63, column: 16)
!811 = !DILocation(line: 64, column: 13, scope: !809)
!812 = !DILocation(line: 64, column: 7, scope: !810)
!813 = !DILocation(line: 65, column: 11, scope: !814)
!814 = distinct !DILexicalBlock(scope: !809, file: !31, line: 64, column: 19)
!815 = !DILocation(line: 65, column: 4, scope: !814)
!816 = !DILocation(line: 66, column: 10, scope: !814)
!817 = !DILocation(line: 66, column: 4, scope: !814)
!818 = !DILocation(line: 67, column: 3, scope: !814)
!819 = !DILocation(line: 68, column: 7, scope: !820)
!820 = distinct !DILexicalBlock(scope: !810, file: !31, line: 68, column: 7)
!821 = !DILocation(line: 68, column: 14, scope: !820)
!822 = !DILocation(line: 68, column: 7, scope: !810)
!823 = !DILocation(line: 69, column: 11, scope: !824)
!824 = distinct !DILexicalBlock(scope: !820, file: !31, line: 68, column: 20)
!825 = !DILocation(line: 69, column: 4, scope: !824)
!826 = !DILocation(line: 70, column: 10, scope: !824)
!827 = !DILocation(line: 70, column: 4, scope: !824)
!828 = !DILocation(line: 71, column: 3, scope: !824)
!829 = !DILocation(line: 73, column: 10, scope: !830)
!830 = distinct !DILexicalBlock(scope: !810, file: !31, line: 73, column: 3)
!831 = !DILocation(line: 73, column: 8, scope: !830)
!832 = !DILocation(line: 73, column: 22, scope: !833)
!833 = !DILexicalBlockFile(scope: !834, file: !31, discriminator: 1)
!834 = distinct !DILexicalBlock(scope: !830, file: !31, line: 73, column: 3)
!835 = !DILocation(line: 73, column: 15, scope: !833)
!836 = !DILocation(line: 73, column: 3, scope: !833)
!837 = !DILocation(line: 74, column: 20, scope: !834)
!838 = !DILocation(line: 74, column: 13, scope: !834)
!839 = !DILocation(line: 74, column: 4, scope: !834)
!840 = !DILocation(line: 73, column: 27, scope: !841)
!841 = !DILexicalBlockFile(scope: !834, file: !31, discriminator: 2)
!842 = !DILocation(line: 73, column: 3, scope: !841)
!843 = distinct !{!843, !844}
!844 = !DILocation(line: 73, column: 3, scope: !810)
!845 = !DILocation(line: 76, column: 22, scope: !810)
!846 = !DILocation(line: 76, column: 28, scope: !810)
!847 = !DILocation(line: 76, column: 3, scope: !810)
!848 = !DILocation(line: 77, column: 25, scope: !810)
!849 = !DILocation(line: 77, column: 3, scope: !810)
!850 = !DILocation(line: 78, column: 2, scope: !810)
!851 = !DILocation(line: 79, column: 26, scope: !810)
!852 = !DILocation(line: 79, column: 3, scope: !810)
!853 = !DILocation(line: 80, column: 2, scope: !810)
!854 = !DILocation(line: 82, column: 3, scope: !810)
!855 = !DILocation(line: 84, column: 15, scope: !770)
!856 = !DILocation(line: 84, column: 20, scope: !770)
!857 = !DILocation(line: 84, column: 2, scope: !770)
!858 = !DILocation(line: 85, column: 1, scope: !770)
!859 = distinct !DISubprogram(name: "fixup_bzip2_params", scope: !31, file: !31, line: 274, type: !46, isLocal: true, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !80)
!860 = !DILocalVariable(name: "params", arg: 1, scope: !859, file: !31, line: 274, type: !48)
!861 = !DILocation(line: 274, column: 44, scope: !859)
!862 = !DILocation(line: 277, column: 6, scope: !863)
!863 = distinct !DILexicalBlock(scope: !859, file: !31, line: 277, column: 6)
!864 = !DILocation(line: 277, column: 14, scope: !863)
!865 = !DILocation(line: 277, column: 20, scope: !863)
!866 = !DILocation(line: 277, column: 6, scope: !859)
!867 = !DILocation(line: 278, column: 3, scope: !863)
!868 = !DILocation(line: 278, column: 11, scope: !863)
!869 = !DILocation(line: 278, column: 17, scope: !863)
!870 = !DILocation(line: 279, column: 1, scope: !859)
!871 = distinct !DISubprogram(name: "compress_bzip2", scope: !31, file: !31, line: 375, type: !56, isLocal: true, isDefinition: true, scopeLine: 376, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !80)
!872 = !DILocalVariable(name: "fd_in", arg: 1, scope: !871, file: !31, line: 375, type: !43)
!873 = !DILocation(line: 375, column: 20, scope: !871)
!874 = !DILocalVariable(name: "fd_out", arg: 2, scope: !871, file: !31, line: 375, type: !43)
!875 = !DILocation(line: 375, column: 31, scope: !871)
!876 = !DILocalVariable(name: "params", arg: 3, scope: !871, file: !31, line: 375, type: !48)
!877 = !DILocation(line: 375, column: 63, scope: !871)
!878 = !DILocalVariable(name: "desc", arg: 4, scope: !871, file: !31, line: 375, type: !38)
!879 = !DILocation(line: 375, column: 83, scope: !871)
!880 = !DILocalVariable(name: "combuf", scope: !871, file: !31, line: 377, type: !471)
!881 = !DILocation(line: 377, column: 7, scope: !871)
!882 = !DILocation(line: 379, column: 11, scope: !871)
!883 = !DILocation(line: 379, column: 43, scope: !871)
!884 = !DILocation(line: 379, column: 51, scope: !871)
!885 = !DILocation(line: 379, column: 2, scope: !871)
!886 = !DILocation(line: 380, column: 15, scope: !871)
!887 = !DILocation(line: 380, column: 22, scope: !871)
!888 = !DILocation(line: 380, column: 30, scope: !871)
!889 = !DILocation(line: 380, column: 56, scope: !871)
!890 = !DILocation(line: 380, column: 2, scope: !871)
!891 = !DILocation(line: 381, column: 1, scope: !871)
!892 = distinct !DISubprogram(name: "decompress_bzip2", scope: !31, file: !31, line: 369, type: !60, isLocal: true, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !80)
!893 = !DILocalVariable(name: "fd_in", arg: 1, scope: !892, file: !31, line: 369, type: !43)
!894 = !DILocation(line: 369, column: 22, scope: !892)
!895 = !DILocalVariable(name: "fd_out", arg: 2, scope: !892, file: !31, line: 369, type: !43)
!896 = !DILocation(line: 369, column: 33, scope: !892)
!897 = !DILocalVariable(name: "desc", arg: 3, scope: !892, file: !31, line: 369, type: !38)
!898 = !DILocation(line: 369, column: 53, scope: !892)
!899 = !DILocation(line: 371, column: 15, scope: !892)
!900 = !DILocation(line: 371, column: 22, scope: !892)
!901 = !DILocation(line: 371, column: 30, scope: !892)
!902 = !DILocation(line: 371, column: 2, scope: !892)
!903 = !DILocation(line: 372, column: 1, scope: !892)
!904 = distinct !DISubprogram(name: "compress_lzma", scope: !31, file: !31, line: 735, type: !56, isLocal: true, isDefinition: true, scopeLine: 736, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !80)
!905 = !DILocalVariable(name: "fd_in", arg: 1, scope: !904, file: !31, line: 735, type: !43)
!906 = !DILocation(line: 735, column: 19, scope: !904)
!907 = !DILocalVariable(name: "fd_out", arg: 2, scope: !904, file: !31, line: 735, type: !43)
!908 = !DILocation(line: 735, column: 30, scope: !904)
!909 = !DILocalVariable(name: "params", arg: 3, scope: !904, file: !31, line: 735, type: !48)
!910 = !DILocation(line: 735, column: 62, scope: !904)
!911 = !DILocalVariable(name: "desc", arg: 4, scope: !904, file: !31, line: 735, type: !38)
!912 = !DILocation(line: 735, column: 82, scope: !904)
!913 = !DILocalVariable(name: "combuf", scope: !904, file: !31, line: 737, type: !471)
!914 = !DILocation(line: 737, column: 7, scope: !904)
!915 = !DILocation(line: 739, column: 11, scope: !904)
!916 = !DILocation(line: 739, column: 43, scope: !904)
!917 = !DILocation(line: 739, column: 51, scope: !904)
!918 = !DILocation(line: 739, column: 2, scope: !904)
!919 = !DILocation(line: 740, column: 15, scope: !904)
!920 = !DILocation(line: 740, column: 22, scope: !904)
!921 = !DILocation(line: 740, column: 30, scope: !904)
!922 = !DILocation(line: 740, column: 50, scope: !904)
!923 = !DILocation(line: 740, column: 2, scope: !904)
!924 = !DILocation(line: 741, column: 1, scope: !904)
!925 = distinct !DISubprogram(name: "decompress_lzma", scope: !31, file: !31, line: 729, type: !60, isLocal: true, isDefinition: true, scopeLine: 730, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !80)
!926 = !DILocalVariable(name: "fd_in", arg: 1, scope: !925, file: !31, line: 729, type: !43)
!927 = !DILocation(line: 729, column: 21, scope: !925)
!928 = !DILocalVariable(name: "fd_out", arg: 2, scope: !925, file: !31, line: 729, type: !43)
!929 = !DILocation(line: 729, column: 32, scope: !925)
!930 = !DILocalVariable(name: "desc", arg: 3, scope: !925, file: !31, line: 729, type: !38)
!931 = !DILocation(line: 729, column: 52, scope: !925)
!932 = !DILocation(line: 731, column: 15, scope: !925)
!933 = !DILocation(line: 731, column: 22, scope: !925)
!934 = !DILocation(line: 731, column: 30, scope: !925)
!935 = !DILocation(line: 731, column: 2, scope: !925)
!936 = !DILocation(line: 732, column: 1, scope: !925)
