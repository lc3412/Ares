; ModuleID = './[inter]lib--logger.o.i'
source_filename = "./[inter]lib--logger.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@log_console = internal global i8 0, align 1
@always_flush_log_file = common global i8 0, align 1
@log_file = internal global %struct._IO_FILE* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@debug = external global i64, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@log_file_name = common global i8* null, align 8

; Function Attrs: nounwind uwtable
define void @enable_console_log() #0 !dbg !91 {
  store i8 1, i8* @log_console, align 1, !dbg !95
  ret void, !dbg !96
}

; Function Attrs: nounwind uwtable
define void @set_flush_log_file() #0 !dbg !97 {
  store i8 1, i8* @always_flush_log_file, align 1, !dbg !98
  ret void, !dbg !99
}

; Function Attrs: nounwind uwtable
define void @close_log_file() #0 !dbg !100 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @log_file, align 8, !dbg !101
  %2 = icmp ne %struct._IO_FILE* %1, null, !dbg !101
  br i1 %2, label %3, label %6, !dbg !103

; <label>:3:                                      ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @log_file, align 8, !dbg !104
  %5 = call i32 @fclose(%struct._IO_FILE* %4), !dbg !106
  store %struct._IO_FILE* null, %struct._IO_FILE** @log_file, align 8, !dbg !107
  br label %6, !dbg !108

; <label>:6:                                      ; preds = %3, %0
  ret void, !dbg !109
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @open_log_file(i8*, i8*, i8*, i8*) #0 !dbg !110 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !115, metadata !116), !dbg !117
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !118, metadata !116), !dbg !119
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !120, metadata !116), !dbg !121
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !122, metadata !116), !dbg !123
  call void @llvm.dbg.declare(metadata i8** %9, metadata !124, metadata !116), !dbg !125
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @log_file, align 8, !dbg !126
  %12 = icmp ne %struct._IO_FILE* %11, null, !dbg !126
  br i1 %12, label %13, label %16, !dbg !128

; <label>:13:                                     ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @log_file, align 8, !dbg !129
  %15 = call i32 @fclose(%struct._IO_FILE* %14), !dbg !131
  store %struct._IO_FILE* null, %struct._IO_FILE** @log_file, align 8, !dbg !132
  br label %16, !dbg !133

; <label>:16:                                     ; preds = %13, %4
  %17 = load i8*, i8** %5, align 8, !dbg !134
  %18 = icmp ne i8* %17, null, !dbg !134
  br i1 %18, label %20, label %19, !dbg !136

; <label>:19:                                     ; preds = %16
  br label %45, !dbg !137

; <label>:20:                                     ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !138
  %22 = load i8*, i8** %6, align 8, !dbg !139
  %23 = load i8*, i8** %7, align 8, !dbg !140
  %24 = load i8*, i8** %8, align 8, !dbg !141
  %25 = call i8* @make_file_name(i8* %21, i8* %22, i8* %23, i8* %24), !dbg !142
  store i8* %25, i8** %9, align 8, !dbg !143
  %26 = load i8*, i8** %9, align 8, !dbg !144
  %27 = call %struct._IO_FILE* @fopen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)), !dbg !145
  store %struct._IO_FILE* %27, %struct._IO_FILE** @log_file, align 8, !dbg !146
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @log_file, align 8, !dbg !147
  %29 = icmp ne %struct._IO_FILE* %28, null, !dbg !147
  br i1 %29, label %30, label %43, !dbg !149

; <label>:30:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata i32* %10, metadata !150, metadata !116), !dbg !152
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @log_file, align 8, !dbg !153
  %32 = call i32 @fileno(%struct._IO_FILE* %31) #5, !dbg !154
  store i32 %32, i32* %10, align 4, !dbg !152
  %33 = load i32, i32* %10, align 4, !dbg !155
  %34 = load i32, i32* %10, align 4, !dbg !156
  %35 = call i32 (i32, i32, ...) @fcntl(i32 %34, i32 1), !dbg !157
  %36 = or i32 1, %35, !dbg !158
  %37 = call i32 (i32, i32, ...) @fcntl(i32 %33, i32 2, i32 %36), !dbg !159
  %38 = load i32, i32* %10, align 4, !dbg !161
  %39 = load i32, i32* %10, align 4, !dbg !162
  %40 = call i32 (i32, i32, ...) @fcntl(i32 %39, i32 3), !dbg !163
  %41 = or i32 2048, %40, !dbg !164
  %42 = call i32 (i32, i32, ...) @fcntl(i32 %38, i32 4, i32 %41), !dbg !165
  br label %43, !dbg !166

; <label>:43:                                     ; preds = %30, %20
  %44 = load i8*, i8** %9, align 8, !dbg !167
  call void @free(i8* %44) #5, !dbg !168
  store i8* null, i8** %9, align 8, !dbg !169
  br label %45, !dbg !170

; <label>:45:                                     ; preds = %43, %19
  ret void, !dbg !171
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i8* @make_file_name(i8*, i8*, i8*, i8*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #3

declare i32 @fcntl(i32, i32, ...) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @flush_log_file() #0 !dbg !173 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @log_file, align 8, !dbg !174
  %2 = icmp ne %struct._IO_FILE* %1, null, !dbg !174
  br i1 %2, label %3, label %6, !dbg !176

; <label>:3:                                      ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @log_file, align 8, !dbg !177
  %5 = call i32 @fflush(%struct._IO_FILE* %4), !dbg !178
  br label %6, !dbg !178

; <label>:6:                                      ; preds = %3, %0
  ret void, !dbg !179
}

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @vlog_message(i32, i8*, %struct.__va_list_tag*) #0 !dbg !180 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__va_list_tag*, align 8
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = alloca [511 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca %struct.tm, align 8
  %11 = alloca [64 x i8], align 16
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !192, metadata !116), !dbg !193
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !194, metadata !116), !dbg !195
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %6, metadata !196, metadata !116), !dbg !197
  %12 = call zeroext i1 @__test_bit(i32 11, i64* @debug), !dbg !198
  br i1 %12, label %13, label %14, !dbg !200

; <label>:13:                                     ; preds = %3
  br label %67, !dbg !201

; <label>:14:                                     ; preds = %3
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @log_file, align 8, !dbg !202
  %16 = icmp ne %struct._IO_FILE* %15, null, !dbg !202
  br i1 %16, label %22, label %17, !dbg !204

; <label>:17:                                     ; preds = %14
  %18 = call zeroext i1 @__test_bit(i32 2, i64* @debug), !dbg !205
  br i1 %18, label %19, label %61, !dbg !207

; <label>:19:                                     ; preds = %17
  %20 = load i8, i8* @log_console, align 1, !dbg !208
  %21 = trunc i8 %20 to i1, !dbg !208
  br i1 %21, label %22, label %61, !dbg !210

; <label>:22:                                     ; preds = %19, %14
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !211, metadata !116), !dbg !218
  call void @llvm.dbg.declare(metadata [511 x i8]* %8, metadata !219, metadata !116), !dbg !223
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !224
  %24 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8, !dbg !224
  %25 = bitcast %struct.__va_list_tag* %23 to i8*, !dbg !224
  %26 = bitcast %struct.__va_list_tag* %24 to i8*, !dbg !224
  call void @llvm.va_copy(i8* %25, i8* %26), !dbg !224
  %27 = getelementptr inbounds [511 x i8], [511 x i8]* %8, i32 0, i32 0, !dbg !225
  %28 = load i8*, i8** %5, align 8, !dbg !226
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !227
  %30 = call i32 @vsnprintf(i8* %27, i64 511, i8* %28, %struct.__va_list_tag* %29) #5, !dbg !228
  %31 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !229
  %32 = bitcast %struct.__va_list_tag* %31 to i8*, !dbg !229
  call void @llvm.va_end(i8* %32), !dbg !229
  call void @llvm.dbg.declare(metadata i64* %9, metadata !230, metadata !116), !dbg !234
  %33 = call i64 @time(i64* null) #5, !dbg !235
  store i64 %33, i64* %9, align 8, !dbg !234
  call void @llvm.dbg.declare(metadata %struct.tm* %10, metadata !236, metadata !116), !dbg !250
  %34 = call %struct.tm* @localtime_r(i64* %9, %struct.tm* %10) #5, !dbg !251
  call void @llvm.dbg.declare(metadata [64 x i8]* %11, metadata !252, metadata !116), !dbg !256
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 0, !dbg !257
  %36 = call i64 @strftime(i8* %35, i64 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), %struct.tm* %10) #5, !dbg !258
  %37 = load i8, i8* @log_console, align 1, !dbg !259
  %38 = trunc i8 %37 to i1, !dbg !259
  br i1 %38, label %39, label %46, !dbg !261

; <label>:39:                                     ; preds = %22
  %40 = call zeroext i1 @__test_bit(i32 2, i64* @debug), !dbg !262
  br i1 %40, label %41, label %46, !dbg !264

; <label>:41:                                     ; preds = %39
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !265
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 0, !dbg !266
  %44 = getelementptr inbounds [511 x i8], [511 x i8]* %8, i32 0, i32 0, !dbg !267
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* %43, i8* %44), !dbg !268
  br label %46, !dbg !268

; <label>:46:                                     ; preds = %41, %39, %22
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @log_file, align 8, !dbg !269
  %48 = icmp ne %struct._IO_FILE* %47, null, !dbg !269
  br i1 %48, label %49, label %60, !dbg !271

; <label>:49:                                     ; preds = %46
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @log_file, align 8, !dbg !272
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i32 0, i32 0, !dbg !274
  %52 = getelementptr inbounds [511 x i8], [511 x i8]* %8, i32 0, i32 0, !dbg !275
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* %51, i8* %52), !dbg !276
  %54 = load i8, i8* @always_flush_log_file, align 1, !dbg !277
  %55 = trunc i8 %54 to i1, !dbg !277
  br i1 %55, label %56, label %59, !dbg !279

; <label>:56:                                     ; preds = %49
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @log_file, align 8, !dbg !280
  %58 = call i32 @fflush(%struct._IO_FILE* %57), !dbg !281
  br label %59, !dbg !281

; <label>:59:                                     ; preds = %56, %49
  br label %60, !dbg !282

; <label>:60:                                     ; preds = %59, %46
  br label %61, !dbg !283

; <label>:61:                                     ; preds = %60, %19, %17
  %62 = call zeroext i1 @__test_bit(i32 1, i64* @debug), !dbg !284
  br i1 %62, label %67, label %63, !dbg !286

; <label>:63:                                     ; preds = %61
  %64 = load i32, i32* %4, align 4, !dbg !287
  %65 = load i8*, i8** %5, align 8, !dbg !288
  %66 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8, !dbg !289
  call void @vsyslog(i32 %64, i8* %65, %struct.__va_list_tag* %66), !dbg !290
  br label %67, !dbg !290

; <label>:67:                                     ; preds = %13, %63, %61
  ret void, !dbg !291
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @__test_bit(i32, i64*) #4 !dbg !292 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !297, metadata !116), !dbg !298
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !299, metadata !116), !dbg !300
  %5 = load i32, i32* %3, align 4, !dbg !301
  %6 = zext i32 %5 to i64, !dbg !302
  %7 = udiv i64 %6, 64, !dbg !303
  %8 = load i64*, i64** %4, align 8, !dbg !304
  %9 = getelementptr inbounds i64, i64* %8, i64 %7, !dbg !304
  %10 = load i64, i64* %9, align 8, !dbg !304
  %11 = load i32, i32* %3, align 4, !dbg !305
  %12 = zext i32 %11 to i64, !dbg !306
  %13 = urem i64 %12, 64, !dbg !307
  %14 = shl i64 1, %13, !dbg !308
  %15 = and i64 %10, %14, !dbg !309
  %16 = icmp ne i64 %15, 0, !dbg !310
  %17 = xor i1 %16, true, !dbg !310
  %18 = xor i1 %17, true, !dbg !311
  ret i1 %18, !dbg !312
}

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #5

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind
declare i64 @time(i64*) #3

; Function Attrs: nounwind
declare %struct.tm* @localtime_r(i64*, %struct.tm*) #3

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @vsyslog(i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind uwtable
define void @log_message(i32, i8*, ...) #0 !dbg !313 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !316, metadata !116), !dbg !317
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !318, metadata !116), !dbg !319
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !320, metadata !116), !dbg !321
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !322
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !322
  call void @llvm.va_start(i8* %7), !dbg !322
  %8 = load i32, i32* %3, align 4, !dbg !323
  %9 = load i8*, i8** %4, align 8, !dbg !324
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !325
  call void @vlog_message(i32 %8, i8* %9, %struct.__va_list_tag* %10), !dbg !326
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !327
  %12 = bitcast %struct.__va_list_tag* %11 to i8*, !dbg !327
  call void @llvm.va_end(i8* %12), !dbg !327
  ret void, !dbg !328
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind uwtable
define void @conf_write(%struct._IO_FILE*, i8*, ...) #0 !dbg !329 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !332, metadata !116), !dbg !333
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !334, metadata !116), !dbg !335
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !336, metadata !116), !dbg !337
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !338
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !338
  call void @llvm.va_start(i8* %7), !dbg !338
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !339
  %9 = icmp ne %struct._IO_FILE* %8, null, !dbg !339
  br i1 %9, label %10, label %17, !dbg !341

; <label>:10:                                     ; preds = %2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !342
  %12 = load i8*, i8** %4, align 8, !dbg !344
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !345
  %14 = call i32 @vfprintf(%struct._IO_FILE* %11, i8* %12, %struct.__va_list_tag* %13), !dbg !346
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !347
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)), !dbg !348
  br label %20, !dbg !349

; <label>:17:                                     ; preds = %2
  %18 = load i8*, i8** %4, align 8, !dbg !350
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !351
  call void @vlog_message(i32 6, i8* %18, %struct.__va_list_tag* %19), !dbg !352
  br label %20

; <label>:20:                                     ; preds = %17, %10
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !353
  %22 = bitcast %struct.__va_list_tag* %21 to i8*, !dbg !353
  call void @llvm.va_end(i8* %22), !dbg !353
  ret void, !dbg !354
}

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!88, !89}
!llvm.ident = !{!90}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !18)
!1 = !DIFile(filename: "[inter]lib--logger.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "global_bits", file: !4, line: 53, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "bitops.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17}
!6 = !DIEnumerator(name: "LOG_CONSOLE_BIT", value: 0)
!7 = !DIEnumerator(name: "NO_SYSLOG_BIT", value: 1)
!8 = !DIEnumerator(name: "DONT_FORK_BIT", value: 2)
!9 = !DIEnumerator(name: "DUMP_CONF_BIT", value: 3)
!10 = !DIEnumerator(name: "DONT_RELEASE_VRRP_BIT", value: 4)
!11 = !DIEnumerator(name: "RELEASE_VIPS_BIT", value: 5)
!12 = !DIEnumerator(name: "DONT_RELEASE_IPVS_BIT", value: 6)
!13 = !DIEnumerator(name: "LOG_DETAIL_BIT", value: 7)
!14 = !DIEnumerator(name: "LOG_EXTRA_DETAIL_BIT", value: 8)
!15 = !DIEnumerator(name: "DONT_RESPAWN_BIT", value: 9)
!16 = !DIEnumerator(name: "LOG_ADDRESS_CHANGES", value: 10)
!17 = !DIEnumerator(name: "CONFIG_TEST_BIT", value: 11)
!18 = !{!19, !23, !85, !87}
!19 = distinct !DIGlobalVariable(name: "log_file_name", scope: !0, file: !20, line: 41, type: !21, isLocal: false, isDefinition: true, variable: i8** @log_file_name)
!20 = !DIFile(filename: "logger.c", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!23 = distinct !DIGlobalVariable(name: "log_file", scope: !0, file: !20, line: 42, type: !24, isLocal: true, isDefinition: true, variable: %struct._IO_FILE** @log_file)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !26, line: 48, baseType: !27)
!26 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !28, line: 241, size: 1728, align: 64, elements: !29)
!28 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!29 = !{!30, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !51, !52, !53, !54, !58, !60, !62, !66, !69, !71, !73, !74, !75, !76, !80, !81}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !27, file: !28, line: 242, baseType: !31, size: 32, align: 32)
!31 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !27, file: !28, line: 247, baseType: !21, size: 64, align: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !27, file: !28, line: 248, baseType: !21, size: 64, align: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !27, file: !28, line: 249, baseType: !21, size: 64, align: 64, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !27, file: !28, line: 250, baseType: !21, size: 64, align: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !27, file: !28, line: 251, baseType: !21, size: 64, align: 64, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !27, file: !28, line: 252, baseType: !21, size: 64, align: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !27, file: !28, line: 253, baseType: !21, size: 64, align: 64, offset: 448)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !27, file: !28, line: 254, baseType: !21, size: 64, align: 64, offset: 512)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !27, file: !28, line: 256, baseType: !21, size: 64, align: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !27, file: !28, line: 257, baseType: !21, size: 64, align: 64, offset: 640)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !27, file: !28, line: 258, baseType: !21, size: 64, align: 64, offset: 704)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !27, file: !28, line: 260, baseType: !44, size: 64, align: 64, offset: 768)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !28, line: 156, size: 192, align: 64, elements: !46)
!46 = !{!47, !48, !50}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !45, file: !28, line: 157, baseType: !44, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !45, file: !28, line: 158, baseType: !49, size: 64, align: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !45, file: !28, line: 162, baseType: !31, size: 32, align: 32, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !27, file: !28, line: 262, baseType: !49, size: 64, align: 64, offset: 832)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !27, file: !28, line: 264, baseType: !31, size: 32, align: 32, offset: 896)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !27, file: !28, line: 268, baseType: !31, size: 32, align: 32, offset: 928)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !27, file: !28, line: 270, baseType: !55, size: 64, align: 64, offset: 960)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !56, line: 131, baseType: !57)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!57 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !27, file: !28, line: 274, baseType: !59, size: 16, align: 16, offset: 1024)
!59 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !27, file: !28, line: 275, baseType: !61, size: 8, align: 8, offset: 1040)
!61 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !27, file: !28, line: 276, baseType: !63, size: 8, align: 8, offset: 1048)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8, align: 8, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 1)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !27, file: !28, line: 280, baseType: !67, size: 64, align: 64, offset: 1088)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !28, line: 150, baseType: null)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !27, file: !28, line: 289, baseType: !70, size: 64, align: 64, offset: 1152)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !56, line: 132, baseType: !57)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !27, file: !28, line: 297, baseType: !72, size: 64, align: 64, offset: 1216)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !27, file: !28, line: 298, baseType: !72, size: 64, align: 64, offset: 1280)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !27, file: !28, line: 299, baseType: !72, size: 64, align: 64, offset: 1344)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !27, file: !28, line: 300, baseType: !72, size: 64, align: 64, offset: 1408)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !27, file: !28, line: 302, baseType: !77, size: 64, align: 64, offset: 1472)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 216, baseType: !79)
!78 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!79 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !27, file: !28, line: 303, baseType: !31, size: 32, align: 32, offset: 1536)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !27, file: !28, line: 305, baseType: !82, size: 160, align: 8, offset: 1568)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 160, align: 8, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 20)
!85 = distinct !DIGlobalVariable(name: "always_flush_log_file", scope: !0, file: !20, line: 43, type: !86, isLocal: false, isDefinition: true, variable: i8* @always_flush_log_file)
!86 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!87 = distinct !DIGlobalVariable(name: "log_console", scope: !0, file: !20, line: 38, type: !86, isLocal: true, isDefinition: true, variable: i8* @log_console)
!88 = !{i32 2, !"Dwarf Version", i32 4}
!89 = !{i32 2, !"Debug Info Version", i32 3}
!90 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!91 = distinct !DISubprogram(name: "enable_console_log", scope: !20, file: !20, line: 46, type: !92, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!92 = !DISubroutineType(types: !93)
!93 = !{null}
!94 = !{}
!95 = !DILocation(line: 48, column: 14, scope: !91)
!96 = !DILocation(line: 49, column: 1, scope: !91)
!97 = distinct !DISubprogram(name: "set_flush_log_file", scope: !20, file: !20, line: 52, type: !92, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!98 = !DILocation(line: 54, column: 24, scope: !97)
!99 = !DILocation(line: 55, column: 1, scope: !97)
!100 = distinct !DISubprogram(name: "close_log_file", scope: !20, file: !20, line: 58, type: !92, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!101 = !DILocation(line: 60, column: 6, scope: !102)
!102 = distinct !DILexicalBlock(scope: !100, file: !20, line: 60, column: 6)
!103 = !DILocation(line: 60, column: 6, scope: !100)
!104 = !DILocation(line: 61, column: 10, scope: !105)
!105 = distinct !DILexicalBlock(scope: !102, file: !20, line: 60, column: 16)
!106 = !DILocation(line: 61, column: 3, scope: !105)
!107 = !DILocation(line: 62, column: 12, scope: !105)
!108 = !DILocation(line: 63, column: 2, scope: !105)
!109 = !DILocation(line: 64, column: 1, scope: !100)
!110 = distinct !DISubprogram(name: "open_log_file", scope: !20, file: !20, line: 67, type: !111, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!111 = !DISubroutineType(types: !112)
!112 = !{null, !113, !113, !113, !113}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!115 = !DILocalVariable(name: "name", arg: 1, scope: !110, file: !20, line: 67, type: !113)
!116 = !DIExpression()
!117 = !DILocation(line: 67, column: 27, scope: !110)
!118 = !DILocalVariable(name: "prog", arg: 2, scope: !110, file: !20, line: 67, type: !113)
!119 = !DILocation(line: 67, column: 45, scope: !110)
!120 = !DILocalVariable(name: "namespace", arg: 3, scope: !110, file: !20, line: 67, type: !113)
!121 = !DILocation(line: 67, column: 63, scope: !110)
!122 = !DILocalVariable(name: "instance", arg: 4, scope: !110, file: !20, line: 67, type: !113)
!123 = !DILocation(line: 67, column: 86, scope: !110)
!124 = !DILocalVariable(name: "file_name", scope: !110, file: !20, line: 69, type: !21)
!125 = !DILocation(line: 69, column: 8, scope: !110)
!126 = !DILocation(line: 71, column: 6, scope: !127)
!127 = distinct !DILexicalBlock(scope: !110, file: !20, line: 71, column: 6)
!128 = !DILocation(line: 71, column: 6, scope: !110)
!129 = !DILocation(line: 72, column: 10, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !20, line: 71, column: 16)
!131 = !DILocation(line: 72, column: 3, scope: !130)
!132 = !DILocation(line: 73, column: 12, scope: !130)
!133 = !DILocation(line: 74, column: 2, scope: !130)
!134 = !DILocation(line: 76, column: 7, scope: !135)
!135 = distinct !DILexicalBlock(scope: !110, file: !20, line: 76, column: 6)
!136 = !DILocation(line: 76, column: 6, scope: !110)
!137 = !DILocation(line: 77, column: 3, scope: !135)
!138 = !DILocation(line: 79, column: 29, scope: !110)
!139 = !DILocation(line: 79, column: 35, scope: !110)
!140 = !DILocation(line: 79, column: 41, scope: !110)
!141 = !DILocation(line: 79, column: 52, scope: !110)
!142 = !DILocation(line: 79, column: 14, scope: !110)
!143 = !DILocation(line: 79, column: 12, scope: !110)
!144 = !DILocation(line: 81, column: 19, scope: !110)
!145 = !DILocation(line: 81, column: 13, scope: !110)
!146 = !DILocation(line: 81, column: 11, scope: !110)
!147 = !DILocation(line: 82, column: 6, scope: !148)
!148 = distinct !DILexicalBlock(scope: !110, file: !20, line: 82, column: 6)
!149 = !DILocation(line: 82, column: 6, scope: !110)
!150 = !DILocalVariable(name: "n", scope: !151, file: !20, line: 83, type: !31)
!151 = distinct !DILexicalBlock(scope: !148, file: !20, line: 82, column: 16)
!152 = !DILocation(line: 83, column: 7, scope: !151)
!153 = !DILocation(line: 83, column: 18, scope: !151)
!154 = !DILocation(line: 83, column: 11, scope: !151)
!155 = !DILocation(line: 84, column: 9, scope: !151)
!156 = !DILocation(line: 84, column: 39, scope: !151)
!157 = !DILocation(line: 84, column: 33, scope: !151)
!158 = !DILocation(line: 84, column: 31, scope: !151)
!159 = !DILocation(line: 84, column: 3, scope: !160)
!160 = !DILexicalBlockFile(scope: !151, file: !20, discriminator: 1)
!161 = !DILocation(line: 85, column: 9, scope: !151)
!162 = !DILocation(line: 85, column: 39, scope: !151)
!163 = !DILocation(line: 85, column: 33, scope: !151)
!164 = !DILocation(line: 85, column: 31, scope: !151)
!165 = !DILocation(line: 85, column: 3, scope: !160)
!166 = !DILocation(line: 86, column: 2, scope: !151)
!167 = !DILocation(line: 88, column: 8, scope: !110)
!168 = !DILocation(line: 88, column: 3, scope: !110)
!169 = !DILocation(line: 88, column: 32, scope: !110)
!170 = !DILocation(line: 89, column: 1, scope: !110)
!171 = !DILocation(line: 89, column: 1, scope: !172)
!172 = !DILexicalBlockFile(scope: !110, file: !20, discriminator: 1)
!173 = distinct !DISubprogram(name: "flush_log_file", scope: !20, file: !20, line: 92, type: !92, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!174 = !DILocation(line: 94, column: 6, scope: !175)
!175 = distinct !DILexicalBlock(scope: !173, file: !20, line: 94, column: 6)
!176 = !DILocation(line: 94, column: 6, scope: !173)
!177 = !DILocation(line: 95, column: 10, scope: !175)
!178 = !DILocation(line: 95, column: 3, scope: !175)
!179 = !DILocation(line: 96, column: 1, scope: !173)
!180 = distinct !DISubprogram(name: "vlog_message", scope: !20, file: !20, line: 99, type: !181, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!181 = !DISubroutineType(types: !182)
!182 = !{null, !183, !113, !184}
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 96, size: 192, align: 64, elements: !186)
!186 = !{!187, !189, !190, !191}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !185, file: !1, line: 96, baseType: !188, size: 32, align: 32)
!188 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !185, file: !1, line: 96, baseType: !188, size: 32, align: 32, offset: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !185, file: !1, line: 96, baseType: !72, size: 64, align: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !185, file: !1, line: 96, baseType: !72, size: 64, align: 64, offset: 128)
!192 = !DILocalVariable(name: "facility", arg: 1, scope: !180, file: !20, line: 99, type: !183)
!193 = !DILocation(line: 99, column: 24, scope: !180)
!194 = !DILocalVariable(name: "format", arg: 2, scope: !180, file: !20, line: 99, type: !113)
!195 = !DILocation(line: 99, column: 46, scope: !180)
!196 = !DILocalVariable(name: "args", arg: 3, scope: !180, file: !20, line: 99, type: !184)
!197 = !DILocation(line: 99, column: 62, scope: !180)
!198 = !DILocation(line: 108, column: 6, scope: !199)
!199 = distinct !DILexicalBlock(scope: !180, file: !20, line: 108, column: 6)
!200 = !DILocation(line: 108, column: 6, scope: !180)
!201 = !DILocation(line: 109, column: 3, scope: !199)
!202 = !DILocation(line: 111, column: 6, scope: !203)
!203 = distinct !DILexicalBlock(scope: !180, file: !20, line: 111, column: 6)
!204 = !DILocation(line: 111, column: 15, scope: !203)
!205 = !DILocation(line: 111, column: 19, scope: !206)
!206 = !DILexicalBlockFile(scope: !203, file: !20, discriminator: 1)
!207 = !DILocation(line: 111, column: 53, scope: !206)
!208 = !DILocation(line: 111, column: 56, scope: !209)
!209 = !DILexicalBlockFile(scope: !203, file: !20, discriminator: 2)
!210 = !DILocation(line: 111, column: 6, scope: !209)
!211 = !DILocalVariable(name: "args1", scope: !212, file: !20, line: 113, type: !213)
!212 = distinct !DILexicalBlock(scope: !203, file: !20, line: 111, column: 70)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !26, line: 79, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !215, line: 40, baseType: !216)
!215 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 113, baseType: !217)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 192, align: 64, elements: !64)
!218 = !DILocation(line: 113, column: 11, scope: !212)
!219 = !DILocalVariable(name: "buf", scope: !212, file: !20, line: 114, type: !220)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 4088, align: 8, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 511)
!223 = !DILocation(line: 114, column: 8, scope: !212)
!224 = !DILocation(line: 116, column: 2, scope: !212)
!225 = !DILocation(line: 117, column: 13, scope: !212)
!226 = !DILocation(line: 117, column: 31, scope: !212)
!227 = !DILocation(line: 117, column: 39, scope: !212)
!228 = !DILocation(line: 117, column: 3, scope: !212)
!229 = !DILocation(line: 118, column: 2, scope: !212)
!230 = !DILocalVariable(name: "t", scope: !212, file: !20, line: 122, type: !231)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !232, line: 75, baseType: !233)
!232 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !56, line: 139, baseType: !57)
!234 = !DILocation(line: 122, column: 10, scope: !212)
!235 = !DILocation(line: 122, column: 14, scope: !212)
!236 = !DILocalVariable(name: "tm", scope: !212, file: !20, line: 123, type: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !232, line: 133, size: 448, align: 64, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !237, file: !232, line: 135, baseType: !31, size: 32, align: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !237, file: !232, line: 136, baseType: !31, size: 32, align: 32, offset: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !237, file: !232, line: 137, baseType: !31, size: 32, align: 32, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !237, file: !232, line: 138, baseType: !31, size: 32, align: 32, offset: 96)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !237, file: !232, line: 139, baseType: !31, size: 32, align: 32, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !237, file: !232, line: 140, baseType: !31, size: 32, align: 32, offset: 160)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !237, file: !232, line: 141, baseType: !31, size: 32, align: 32, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !237, file: !232, line: 142, baseType: !31, size: 32, align: 32, offset: 224)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !237, file: !232, line: 143, baseType: !31, size: 32, align: 32, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !237, file: !232, line: 146, baseType: !57, size: 64, align: 64, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !237, file: !232, line: 147, baseType: !113, size: 64, align: 64, offset: 384)
!250 = !DILocation(line: 123, column: 13, scope: !212)
!251 = !DILocation(line: 124, column: 3, scope: !212)
!252 = !DILocalVariable(name: "timestamp", scope: !212, file: !20, line: 125, type: !253)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 512, align: 8, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 64)
!256 = !DILocation(line: 125, column: 8, scope: !212)
!257 = !DILocation(line: 126, column: 12, scope: !212)
!258 = !DILocation(line: 126, column: 3, scope: !212)
!259 = !DILocation(line: 128, column: 7, scope: !260)
!260 = distinct !DILexicalBlock(scope: !212, file: !20, line: 128, column: 7)
!261 = !DILocation(line: 128, column: 19, scope: !260)
!262 = !DILocation(line: 128, column: 22, scope: !263)
!263 = !DILexicalBlockFile(scope: !260, file: !20, discriminator: 1)
!264 = !DILocation(line: 128, column: 7, scope: !263)
!265 = !DILocation(line: 129, column: 11, scope: !260)
!266 = !DILocation(line: 129, column: 31, scope: !260)
!267 = !DILocation(line: 129, column: 42, scope: !260)
!268 = !DILocation(line: 129, column: 4, scope: !260)
!269 = !DILocation(line: 130, column: 7, scope: !270)
!270 = distinct !DILexicalBlock(scope: !212, file: !20, line: 130, column: 7)
!271 = !DILocation(line: 130, column: 7, scope: !212)
!272 = !DILocation(line: 131, column: 12, scope: !273)
!273 = distinct !DILexicalBlock(scope: !270, file: !20, line: 130, column: 17)
!274 = !DILocation(line: 131, column: 34, scope: !273)
!275 = !DILocation(line: 131, column: 45, scope: !273)
!276 = !DILocation(line: 131, column: 4, scope: !273)
!277 = !DILocation(line: 132, column: 8, scope: !278)
!278 = distinct !DILexicalBlock(scope: !273, file: !20, line: 132, column: 8)
!279 = !DILocation(line: 132, column: 8, scope: !273)
!280 = !DILocation(line: 133, column: 12, scope: !278)
!281 = !DILocation(line: 133, column: 5, scope: !278)
!282 = !DILocation(line: 134, column: 3, scope: !273)
!283 = !DILocation(line: 135, column: 2, scope: !212)
!284 = !DILocation(line: 137, column: 7, scope: !285)
!285 = distinct !DILexicalBlock(scope: !180, file: !20, line: 137, column: 6)
!286 = !DILocation(line: 137, column: 6, scope: !180)
!287 = !DILocation(line: 139, column: 11, scope: !285)
!288 = !DILocation(line: 139, column: 21, scope: !285)
!289 = !DILocation(line: 139, column: 29, scope: !285)
!290 = !DILocation(line: 139, column: 3, scope: !285)
!291 = !DILocation(line: 143, column: 1, scope: !180)
!292 = distinct !DISubprogram(name: "__test_bit", scope: !4, file: !4, line: 47, type: !293, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!293 = !DISubroutineType(types: !294)
!294 = !{!86, !188, !295}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!297 = !DILocalVariable(name: "idx", arg: 1, scope: !292, file: !4, line: 47, type: !188)
!298 = !DILocation(line: 47, column: 39, scope: !292)
!299 = !DILocalVariable(name: "bmap", arg: 2, scope: !292, file: !4, line: 47, type: !295)
!300 = !DILocation(line: 47, column: 65, scope: !292)
!301 = !DILocation(line: 49, column: 19, scope: !292)
!302 = !DILocation(line: 49, column: 18, scope: !292)
!303 = !DILocation(line: 49, column: 24, scope: !292)
!304 = !DILocation(line: 49, column: 12, scope: !292)
!305 = !DILocation(line: 49, column: 68, scope: !292)
!306 = !DILocation(line: 49, column: 67, scope: !292)
!307 = !DILocation(line: 49, column: 73, scope: !292)
!308 = !DILocation(line: 49, column: 63, scope: !292)
!309 = !DILocation(line: 49, column: 56, scope: !292)
!310 = !DILocation(line: 49, column: 10, scope: !292)
!311 = !DILocation(line: 49, column: 9, scope: !292)
!312 = !DILocation(line: 49, column: 2, scope: !292)
!313 = distinct !DISubprogram(name: "log_message", scope: !20, file: !20, line: 146, type: !314, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !183, !113, null}
!316 = !DILocalVariable(name: "facility", arg: 1, scope: !313, file: !20, line: 146, type: !183)
!317 = !DILocation(line: 146, column: 23, scope: !313)
!318 = !DILocalVariable(name: "format", arg: 2, scope: !313, file: !20, line: 146, type: !113)
!319 = !DILocation(line: 146, column: 45, scope: !313)
!320 = !DILocalVariable(name: "args", scope: !313, file: !20, line: 148, type: !213)
!321 = !DILocation(line: 148, column: 10, scope: !313)
!322 = !DILocation(line: 150, column: 1, scope: !313)
!323 = !DILocation(line: 151, column: 15, scope: !313)
!324 = !DILocation(line: 151, column: 25, scope: !313)
!325 = !DILocation(line: 151, column: 33, scope: !313)
!326 = !DILocation(line: 151, column: 2, scope: !313)
!327 = !DILocation(line: 152, column: 1, scope: !313)
!328 = !DILocation(line: 153, column: 1, scope: !313)
!329 = distinct !DISubprogram(name: "conf_write", scope: !20, file: !20, line: 156, type: !330, isLocal: false, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !24, !113, null}
!332 = !DILocalVariable(name: "fp", arg: 1, scope: !329, file: !20, line: 156, type: !24)
!333 = !DILocation(line: 156, column: 18, scope: !329)
!334 = !DILocalVariable(name: "format", arg: 2, scope: !329, file: !20, line: 156, type: !113)
!335 = !DILocation(line: 156, column: 34, scope: !329)
!336 = !DILocalVariable(name: "args", scope: !329, file: !20, line: 158, type: !213)
!337 = !DILocation(line: 158, column: 10, scope: !329)
!338 = !DILocation(line: 160, column: 1, scope: !329)
!339 = !DILocation(line: 161, column: 6, scope: !340)
!340 = distinct !DILexicalBlock(scope: !329, file: !20, line: 161, column: 6)
!341 = !DILocation(line: 161, column: 6, scope: !329)
!342 = !DILocation(line: 162, column: 12, scope: !343)
!343 = distinct !DILexicalBlock(scope: !340, file: !20, line: 161, column: 10)
!344 = !DILocation(line: 162, column: 16, scope: !343)
!345 = !DILocation(line: 162, column: 24, scope: !343)
!346 = !DILocation(line: 162, column: 3, scope: !343)
!347 = !DILocation(line: 163, column: 11, scope: !343)
!348 = !DILocation(line: 163, column: 3, scope: !343)
!349 = !DILocation(line: 164, column: 2, scope: !343)
!350 = !DILocation(line: 166, column: 25, scope: !340)
!351 = !DILocation(line: 166, column: 33, scope: !340)
!352 = !DILocation(line: 166, column: 3, scope: !340)
!353 = !DILocation(line: 168, column: 1, scope: !329)
!354 = !DILocation(line: 169, column: 1, scope: !329)
