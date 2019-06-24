; ModuleID = './[inter]utils.o.i'
source_filename = "./[inter]utils.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"%%%02X\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%%%2hhX\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@utils_locale_to_utf8.iconv_h = internal global i8** inttoptr (i64 -1 to i8**), align 8
@g_codepage = external global [16 x i8], align 16
@.str.3 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@g_iconv_works = internal global i32 1, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"utils_string_to_utf8(), iconv_open[%s -> %s] fail %p\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"utils_string_to_utf8, iconv(1) fail, errno %d\00", align 1
@_logger_level = internal global i32 2, align 4
@_logger_subjects = internal global i32 64, align 4
@stdout = external global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"%s(%s): %s\0A\00", align 1
@subject = internal global [9 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0)], align 16
@level = internal global [5 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)], align 16
@.str.8 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"UI\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Keyboard\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Clipboard\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Sound\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Protocol\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Graphics\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Core\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"SmartCard\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"Disk\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"notice\00", align 1

; Function Attrs: nounwind uwtable
define i32 @utils_djb2_hash(i8*) #0 !dbg !63 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !68, metadata !69), !dbg !70
  call void @llvm.dbg.declare(metadata i8* %3, metadata !71, metadata !69), !dbg !72
  call void @llvm.dbg.declare(metadata i8** %4, metadata !73, metadata !69), !dbg !74
  call void @llvm.dbg.declare(metadata i32* %5, metadata !75, metadata !69), !dbg !76
  store i32 5381, i32* %5, align 4, !dbg !76
  %6 = load i8*, i8** %2, align 8, !dbg !77
  store i8* %6, i8** %4, align 8, !dbg !78
  br label %7, !dbg !79

; <label>:7:                                      ; preds = %12, %1
  %8 = load i8*, i8** %4, align 8, !dbg !80
  %9 = getelementptr inbounds i8, i8* %8, i32 1, !dbg !80
  store i8* %9, i8** %4, align 8, !dbg !80
  %10 = load i8, i8* %8, align 1, !dbg !82
  store i8 %10, i8* %3, align 1, !dbg !83
  %11 = icmp ne i8 %10, 0, !dbg !84
  br i1 %11, label %12, label %20, !dbg !84

; <label>:12:                                     ; preds = %7
  %13 = load i32, i32* %5, align 4, !dbg !85
  %14 = shl i32 %13, 5, !dbg !87
  %15 = load i32, i32* %5, align 4, !dbg !88
  %16 = add i32 %14, %15, !dbg !89
  %17 = load i8, i8* %3, align 1, !dbg !90
  %18 = zext i8 %17 to i32, !dbg !90
  %19 = add i32 %16, %18, !dbg !91
  store i32 %19, i32* %5, align 4, !dbg !92
  br label %7, !dbg !93, !llvm.loop !95

; <label>:20:                                     ; preds = %7
  %21 = load i32, i32* %5, align 4, !dbg !96
  ret i32 %21, !dbg !97
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i8* @utils_string_escape(i8*) #0 !dbg !98 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [4 x i8], align 1
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !101, metadata !69), !dbg !102
  call void @llvm.dbg.declare(metadata i8** %4, metadata !103, metadata !69), !dbg !104
  call void @llvm.dbg.declare(metadata i8** %5, metadata !105, metadata !69), !dbg !106
  call void @llvm.dbg.declare(metadata i8** %6, metadata !107, metadata !69), !dbg !108
  call void @llvm.dbg.declare(metadata [4 x i8]* %7, metadata !109, metadata !69), !dbg !113
  call void @llvm.dbg.declare(metadata i64* %8, metadata !114, metadata !69), !dbg !115
  call void @llvm.dbg.declare(metadata i32* %9, metadata !116, metadata !69), !dbg !117
  store i32 0, i32* %9, align 4, !dbg !118
  %10 = load i8*, i8** %3, align 8, !dbg !119
  store i8* %10, i8** %4, align 8, !dbg !120
  br label %11, !dbg !121

; <label>:11:                                     ; preds = %30, %1
  %12 = load i8*, i8** %4, align 8, !dbg !122
  %13 = getelementptr inbounds i8, i8* %12, i32 1, !dbg !122
  store i8* %13, i8** %4, align 8, !dbg !122
  %14 = load i8, i8* %12, align 1, !dbg !124
  %15 = sext i8 %14 to i32, !dbg !124
  %16 = icmp ne i32 %15, 0, !dbg !125
  br i1 %16, label %17, label %31, !dbg !126

; <label>:17:                                     ; preds = %11
  %18 = load i8*, i8** %4, align 8, !dbg !127
  %19 = load i8, i8* %18, align 1, !dbg !129
  %20 = zext i8 %19 to i32, !dbg !130
  %21 = icmp slt i32 %20, 32, !dbg !131
  br i1 %21, label %27, label %22, !dbg !132

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %4, align 8, !dbg !133
  %24 = load i8, i8* %23, align 1, !dbg !135
  %25 = sext i8 %24 to i32, !dbg !135
  %26 = icmp eq i32 %25, 37, !dbg !136
  br i1 %26, label %27, label %30, !dbg !137

; <label>:27:                                     ; preds = %22, %17
  %28 = load i32, i32* %9, align 4, !dbg !138
  %29 = add nsw i32 %28, 1, !dbg !138
  store i32 %29, i32* %9, align 4, !dbg !138
  br label %30, !dbg !139

; <label>:30:                                     ; preds = %27, %22
  br label %11, !dbg !140, !llvm.loop !142

; <label>:31:                                     ; preds = %11
  %32 = load i32, i32* %9, align 4, !dbg !143
  %33 = icmp eq i32 %32, 0, !dbg !145
  br i1 %33, label %34, label %37, !dbg !146

; <label>:34:                                     ; preds = %31
  %35 = load i8*, i8** %3, align 8, !dbg !147
  %36 = call noalias i8* @strdup(i8* %35) #7, !dbg !148
  store i8* %36, i8** %2, align 8, !dbg !149
  br label %87, !dbg !149

; <label>:37:                                     ; preds = %31
  %38 = load i8*, i8** %3, align 8, !dbg !150
  %39 = call i64 @strlen(i8* %38) #8, !dbg !151
  %40 = load i32, i32* %9, align 4, !dbg !152
  %41 = mul nsw i32 %40, 3, !dbg !153
  %42 = sext i32 %41 to i64, !dbg !154
  %43 = add i64 %39, %42, !dbg !155
  %44 = add i64 %43, 1, !dbg !156
  store i64 %44, i64* %8, align 8, !dbg !157
  %45 = load i64, i64* %8, align 8, !dbg !158
  %46 = trunc i64 %45 to i32, !dbg !158
  %47 = call i8* @xmalloc(i32 %46), !dbg !159
  store i8* %47, i8** %6, align 8, !dbg !160
  store i8* %47, i8** %5, align 8, !dbg !161
  %48 = load i8*, i8** %6, align 8, !dbg !162
  %49 = load i64, i64* %8, align 8, !dbg !163
  call void @llvm.memset.p0i8.i64(i8* %48, i8 0, i64 %49, i32 1, i1 false), !dbg !164
  %50 = load i8*, i8** %3, align 8, !dbg !165
  store i8* %50, i8** %4, align 8, !dbg !166
  br label %51, !dbg !167

; <label>:51:                                     ; preds = %82, %37
  %52 = load i8*, i8** %4, align 8, !dbg !168
  %53 = load i8, i8* %52, align 1, !dbg !169
  %54 = sext i8 %53 to i32, !dbg !169
  %55 = icmp ne i32 %54, 0, !dbg !170
  br i1 %55, label %56, label %85, !dbg !171

; <label>:56:                                     ; preds = %51
  %57 = load i8*, i8** %4, align 8, !dbg !172
  %58 = load i8, i8* %57, align 1, !dbg !175
  %59 = zext i8 %58 to i32, !dbg !176
  %60 = icmp slt i32 %59, 32, !dbg !177
  br i1 %60, label %66, label %61, !dbg !178

; <label>:61:                                     ; preds = %56
  %62 = load i8*, i8** %4, align 8, !dbg !179
  %63 = load i8, i8* %62, align 1, !dbg !181
  %64 = sext i8 %63 to i32, !dbg !181
  %65 = icmp eq i32 %64, 37, !dbg !182
  br i1 %65, label %66, label %76, !dbg !183

; <label>:66:                                     ; preds = %61, %56
  %67 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i32 0, i32 0, !dbg !184
  %68 = load i8*, i8** %4, align 8, !dbg !186
  %69 = load i8, i8* %68, align 1, !dbg !187
  %70 = sext i8 %69 to i32, !dbg !187
  %71 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %67, i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %70) #7, !dbg !188
  %72 = load i8*, i8** %5, align 8, !dbg !189
  %73 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i32 0, i32 0, !dbg !190
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 3, i32 1, i1 false), !dbg !190
  %74 = load i8*, i8** %5, align 8, !dbg !191
  %75 = getelementptr inbounds i8, i8* %74, i64 3, !dbg !191
  store i8* %75, i8** %5, align 8, !dbg !191
  br label %82, !dbg !192

; <label>:76:                                     ; preds = %61
  %77 = load i8*, i8** %4, align 8, !dbg !193
  %78 = load i8, i8* %77, align 1, !dbg !195
  %79 = load i8*, i8** %5, align 8, !dbg !196
  store i8 %78, i8* %79, align 1, !dbg !197
  %80 = load i8*, i8** %5, align 8, !dbg !198
  %81 = getelementptr inbounds i8, i8* %80, i32 1, !dbg !198
  store i8* %81, i8** %5, align 8, !dbg !198
  br label %82

; <label>:82:                                     ; preds = %76, %66
  %83 = load i8*, i8** %4, align 8, !dbg !199
  %84 = getelementptr inbounds i8, i8* %83, i32 1, !dbg !199
  store i8* %84, i8** %4, align 8, !dbg !199
  br label %51, !dbg !200, !llvm.loop !201

; <label>:85:                                     ; preds = %51
  %86 = load i8*, i8** %6, align 8, !dbg !202
  store i8* %86, i8** %2, align 8, !dbg !203
  br label %87, !dbg !203

; <label>:87:                                     ; preds = %85, %34
  %88 = load i8*, i8** %2, align 8, !dbg !204
  ret i8* %88, !dbg !204
}

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i8* @xmalloc(i32) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define i8* @utils_string_unescape(i8*) #0 !dbg !205 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !206, metadata !69), !dbg !207
  call void @llvm.dbg.declare(metadata i8** %3, metadata !208, metadata !69), !dbg !209
  call void @llvm.dbg.declare(metadata i8** %4, metadata !210, metadata !69), !dbg !211
  call void @llvm.dbg.declare(metadata i8** %5, metadata !212, metadata !69), !dbg !213
  call void @llvm.dbg.declare(metadata i8* %6, metadata !214, metadata !69), !dbg !215
  %7 = load i8*, i8** %2, align 8, !dbg !216
  %8 = call i64 @strlen(i8* %7) #8, !dbg !217
  %9 = add i64 %8, 1, !dbg !218
  %10 = trunc i64 %9 to i32, !dbg !217
  %11 = call i8* @xmalloc(i32 %10), !dbg !219
  store i8* %11, i8** %3, align 8, !dbg !221
  %12 = load i8*, i8** %3, align 8, !dbg !222
  %13 = load i8*, i8** %2, align 8, !dbg !223
  %14 = load i8*, i8** %2, align 8, !dbg !224
  %15 = call i64 @strlen(i8* %14) #8, !dbg !225
  %16 = add i64 %15, 1, !dbg !226
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 %16, i32 1, i1 false), !dbg !227
  %17 = load i8*, i8** %3, align 8, !dbg !228
  store i8* %17, i8** %5, align 8, !dbg !229
  store i8* %17, i8** %4, align 8, !dbg !230
  br label %18, !dbg !231

; <label>:18:                                     ; preds = %42, %33, %1
  %19 = load i8*, i8** %4, align 8, !dbg !232
  %20 = load i8, i8* %19, align 1, !dbg !233
  %21 = sext i8 %20 to i32, !dbg !233
  %22 = icmp ne i32 %21, 0, !dbg !234
  br i1 %22, label %23, label %50, !dbg !235

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %4, align 8, !dbg !236
  %25 = getelementptr inbounds i8, i8* %24, i64 0, !dbg !236
  %26 = load i8, i8* %25, align 1, !dbg !236
  %27 = sext i8 %26 to i32, !dbg !236
  %28 = icmp eq i32 %27, 37, !dbg !239
  br i1 %28, label %29, label %42, !dbg !240

; <label>:29:                                     ; preds = %23
  %30 = load i8*, i8** %4, align 8, !dbg !241
  %31 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* %6) #7, !dbg !244
  %32 = icmp eq i32 %31, 1, !dbg !245
  br i1 %32, label %33, label %41, !dbg !246

; <label>:33:                                     ; preds = %29
  %34 = load i8, i8* %6, align 1, !dbg !247
  %35 = load i8*, i8** %5, align 8, !dbg !249
  %36 = getelementptr inbounds i8, i8* %35, i64 0, !dbg !249
  store i8 %34, i8* %36, align 1, !dbg !250
  %37 = load i8*, i8** %4, align 8, !dbg !251
  %38 = getelementptr inbounds i8, i8* %37, i64 3, !dbg !251
  store i8* %38, i8** %4, align 8, !dbg !251
  %39 = load i8*, i8** %5, align 8, !dbg !252
  %40 = getelementptr inbounds i8, i8* %39, i32 1, !dbg !252
  store i8* %40, i8** %5, align 8, !dbg !252
  br label %18, !dbg !253, !llvm.loop !254

; <label>:41:                                     ; preds = %29
  br label %42, !dbg !255

; <label>:42:                                     ; preds = %41, %23
  %43 = load i8*, i8** %4, align 8, !dbg !256
  %44 = load i8, i8* %43, align 1, !dbg !257
  %45 = load i8*, i8** %5, align 8, !dbg !258
  store i8 %44, i8* %45, align 1, !dbg !259
  %46 = load i8*, i8** %4, align 8, !dbg !260
  %47 = getelementptr inbounds i8, i8* %46, i32 1, !dbg !260
  store i8* %47, i8** %4, align 8, !dbg !260
  %48 = load i8*, i8** %5, align 8, !dbg !261
  %49 = getelementptr inbounds i8, i8* %48, i32 1, !dbg !261
  store i8* %49, i8** %5, align 8, !dbg !261
  br label %18, !dbg !262, !llvm.loop !254

; <label>:50:                                     ; preds = %18
  %51 = load i8*, i8** %5, align 8, !dbg !264
  %52 = getelementptr inbounds i8, i8* %51, i64 0, !dbg !264
  store i8 0, i8* %52, align 1, !dbg !265
  %53 = load i8*, i8** %3, align 8, !dbg !266
  ret i8* %53, !dbg !267
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @utils_mkdir_safe(i8*, i32) #0 !dbg !268 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !271, metadata !69), !dbg !272
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !273, metadata !69), !dbg !274
  call void @llvm.dbg.declare(metadata i32* %6, metadata !275, metadata !69), !dbg !276
  store i32 0, i32* %6, align 4, !dbg !276
  call void @llvm.dbg.declare(metadata %struct.stat* %7, metadata !277, metadata !69), !dbg !317
  %8 = load i8*, i8** %4, align 8, !dbg !318
  %9 = call i32 @stat(i8* %8, %struct.stat* %7) #7, !dbg !319
  store i32 %9, i32* %6, align 4, !dbg !320
  %10 = load i32, i32* %6, align 4, !dbg !321
  %11 = icmp eq i32 %10, -1, !dbg !323
  br i1 %11, label %12, label %16, !dbg !324

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %4, align 8, !dbg !325
  %14 = load i32, i32* %5, align 4, !dbg !326
  %15 = call i32 @mkdir(i8* %13, i32 %14) #7, !dbg !327
  store i32 %15, i32* %3, align 4, !dbg !328
  br label %24, !dbg !328

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 3, !dbg !329
  %18 = load i32, i32* %17, align 8, !dbg !329
  %19 = and i32 %18, 61440, !dbg !329
  %20 = icmp eq i32 %19, 16384, !dbg !331
  br i1 %20, label %23, label %21, !dbg !332

; <label>:21:                                     ; preds = %16
  %22 = call i32* @__errno_location() #1, !dbg !333
  store i32 17, i32* %22, align 4, !dbg !335
  store i32 -1, i32* %3, align 4, !dbg !336
  br label %24, !dbg !336

; <label>:23:                                     ; preds = %16
  store i32 0, i32* %3, align 4, !dbg !337
  br label %24, !dbg !337

; <label>:24:                                     ; preds = %23, %21, %12
  %25 = load i32, i32* %3, align 4, !dbg !338
  ret i32 %25, !dbg !338
}

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #2

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind uwtable
define i32 @utils_mkdir_p(i8*, i32) #0 !dbg !339 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca [4096 x i8], align 16
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !340, metadata !69), !dbg !341
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !342, metadata !69), !dbg !343
  call void @llvm.dbg.declare(metadata i32* %6, metadata !344, metadata !69), !dbg !345
  call void @llvm.dbg.declare(metadata i8** %7, metadata !346, metadata !69), !dbg !347
  call void @llvm.dbg.declare(metadata [4096 x i8]* %8, metadata !348, metadata !69), !dbg !352
  call void @llvm.dbg.declare(metadata [4096 x i8]* %9, metadata !353, metadata !69), !dbg !354
  %10 = load i8*, i8** %4, align 8, !dbg !355
  %11 = icmp ne i8* %10, null, !dbg !355
  br i1 %11, label %12, label %16, !dbg !357

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %4, align 8, !dbg !358
  %14 = call i64 @strlen(i8* %13) #8, !dbg !360
  %15 = icmp eq i64 %14, 0, !dbg !361
  br i1 %15, label %16, label %18, !dbg !362

; <label>:16:                                     ; preds = %12, %2
  %17 = call i32* @__errno_location() #1, !dbg !363
  store i32 22, i32* %17, align 4, !dbg !365
  store i32 -1, i32* %3, align 4, !dbg !366
  br label %62, !dbg !366

; <label>:18:                                     ; preds = %12
  %19 = load i8*, i8** %4, align 8, !dbg !367
  %20 = call i64 @strlen(i8* %19) #8, !dbg !369
  %21 = icmp ugt i64 %20, 4096, !dbg !370
  br i1 %21, label %22, label %24, !dbg !371

; <label>:22:                                     ; preds = %18
  %23 = call i32* @__errno_location() #1, !dbg !372
  store i32 7, i32* %23, align 4, !dbg !374
  store i32 -1, i32* %3, align 4, !dbg !375
  br label %62, !dbg !375

; <label>:24:                                     ; preds = %18
  store i32 0, i32* %6, align 4, !dbg !376
  %25 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0, !dbg !377
  store i8 0, i8* %25, align 16, !dbg !378
  %26 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0, !dbg !379
  store i8 0, i8* %26, align 16, !dbg !380
  %27 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i32 0, i32 0, !dbg !381
  %28 = load i8*, i8** %4, align 8, !dbg !382
  %29 = call i8* @strcpy(i8* %27, i8* %28) #7, !dbg !383
  %30 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i32 0, i32 0, !dbg !384
  %31 = call i8* @strtok(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #7, !dbg !385
  store i8* %31, i8** %7, align 8, !dbg !386
  %32 = load i8*, i8** %7, align 8, !dbg !387
  %33 = icmp eq i8* %32, null, !dbg !389
  br i1 %33, label %34, label %38, !dbg !390

; <label>:34:                                     ; preds = %24
  %35 = load i8*, i8** %4, align 8, !dbg !391
  %36 = load i32, i32* %5, align 4, !dbg !392
  %37 = call i32 @utils_mkdir_safe(i8* %35, i32 %36), !dbg !393
  store i32 %37, i32* %3, align 4, !dbg !394
  br label %62, !dbg !394

; <label>:38:                                     ; preds = %24
  br label %39, !dbg !395, !llvm.loop !396

; <label>:39:                                     ; preds = %58, %38
  %40 = load i8*, i8** %7, align 8, !dbg !397
  %41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i32 0, i32 0, !dbg !400
  %42 = icmp ne i8* %40, %41, !dbg !401
  br i1 %42, label %43, label %46, !dbg !402

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0, !dbg !403
  %45 = call i8* @strcat(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #7, !dbg !404
  br label %46, !dbg !404

; <label>:46:                                     ; preds = %43, %39
  %47 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0, !dbg !405
  %48 = load i8*, i8** %7, align 8, !dbg !406
  %49 = call i8* @strcat(i8* %47, i8* %48) #7, !dbg !407
  %50 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0, !dbg !408
  %51 = load i32, i32* %5, align 4, !dbg !409
  %52 = call i32 @utils_mkdir_safe(i8* %50, i32 %51), !dbg !410
  store i32 %52, i32* %6, align 4, !dbg !411
  %53 = load i32, i32* %6, align 4, !dbg !412
  %54 = icmp ne i32 %53, 0, !dbg !414
  br i1 %54, label %55, label %57, !dbg !415

; <label>:55:                                     ; preds = %46
  %56 = load i32, i32* %6, align 4, !dbg !416
  store i32 %56, i32* %3, align 4, !dbg !417
  br label %62, !dbg !417

; <label>:57:                                     ; preds = %46
  br label %58, !dbg !418

; <label>:58:                                     ; preds = %57
  %59 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #7, !dbg !419
  store i8* %59, i8** %7, align 8, !dbg !420
  %60 = icmp ne i8* %59, null, !dbg !421
  br i1 %60, label %39, label %61, !dbg !422, !llvm.loop !396

; <label>:61:                                     ; preds = %58
  store i32 0, i32* %3, align 4, !dbg !424
  br label %62, !dbg !424

; <label>:62:                                     ; preds = %61, %55, %34, %22, %16
  %63 = load i32, i32* %3, align 4, !dbg !425
  ret i32 %63, !dbg !425
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @utils_locale_to_utf8(i8*, i64, i8*, i64) #0 !dbg !38 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !426, metadata !69), !dbg !427
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !428, metadata !69), !dbg !429
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !430, metadata !69), !dbg !431
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !432, metadata !69), !dbg !433
  %10 = call i32 @strncmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_codepage, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 5) #8, !dbg !434
  %11 = icmp eq i32 %10, 0, !dbg !436
  br i1 %11, label %12, label %13, !dbg !437

; <label>:12:                                     ; preds = %4
  br label %43, !dbg !438

; <label>:13:                                     ; preds = %4
  %14 = load i32, i32* @g_iconv_works, align 4, !dbg !439
  %15 = icmp eq i32 %14, 0, !dbg !441
  br i1 %15, label %16, label %17, !dbg !442

; <label>:16:                                     ; preds = %13
  br label %43, !dbg !443

; <label>:17:                                     ; preds = %13
  %18 = load i8**, i8*** @utils_locale_to_utf8.iconv_h, align 8, !dbg !444
  %19 = icmp eq i8** %18, inttoptr (i64 -1 to i8**), !dbg !446
  br i1 %19, label %20, label %27, !dbg !447

; <label>:20:                                     ; preds = %17
  %21 = call i8* @libiconv_open(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_codepage, i32 0, i32 0)), !dbg !448
  %22 = bitcast i8* %21 to i8**, !dbg !448
  store i8** %22, i8*** @utils_locale_to_utf8.iconv_h, align 8, !dbg !451
  %23 = icmp eq i8** %22, inttoptr (i64 -1 to i8**), !dbg !452
  br i1 %23, label %24, label %26, !dbg !453

; <label>:24:                                     ; preds = %20
  %25 = load i8**, i8*** @utils_locale_to_utf8.iconv_h, align 8, !dbg !454
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_codepage, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8** %25), !dbg !456
  store i32 0, i32* @g_iconv_works, align 4, !dbg !457
  br label %43, !dbg !458

; <label>:26:                                     ; preds = %20
  br label %27, !dbg !459

; <label>:27:                                     ; preds = %26, %17
  %28 = load i8**, i8*** @utils_locale_to_utf8.iconv_h, align 8, !dbg !460
  %29 = bitcast i8** %28 to i8*, !dbg !460
  %30 = call i64 @libiconv(i8* %29, i8** %6, i64* %7, i8** %8, i64* %9), !dbg !462
  %31 = icmp eq i64 %30, -1, !dbg !463
  br i1 %31, label %32, label %38, !dbg !464

; <label>:32:                                     ; preds = %27
  %33 = load i8**, i8*** @utils_locale_to_utf8.iconv_h, align 8, !dbg !465
  %34 = bitcast i8** %33 to i8*, !dbg !465
  %35 = call i32 @libiconv_close(i8* %34), !dbg !467
  store i8** inttoptr (i64 -1 to i8**), i8*** @utils_locale_to_utf8.iconv_h, align 8, !dbg !468
  %36 = call i32* @__errno_location() #1, !dbg !469
  %37 = load i32, i32* %36, align 4, !dbg !470
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i32 0, i32 0), i32 %37), !dbg !471
  store i32 0, i32* @g_iconv_works, align 4, !dbg !473
  br label %43, !dbg !474

; <label>:38:                                     ; preds = %27
  %39 = load i64, i64* %7, align 8, !dbg !475
  %40 = icmp ne i64 %39, 0, !dbg !477
  br i1 %40, label %41, label %42, !dbg !478

; <label>:41:                                     ; preds = %38
  store i32 -1, i32* %5, align 4, !dbg !479
  br label %56, !dbg !479

; <label>:42:                                     ; preds = %38
  br label %43, !dbg !480

; <label>:43:                                     ; preds = %42, %32, %24, %16, %12
  %44 = load i64, i64* %9, align 8, !dbg !482
  %45 = load i8*, i8** %6, align 8, !dbg !484
  %46 = call i64 @strlen(i8* %45) #8, !dbg !485
  %47 = add i64 %46, 1, !dbg !486
  %48 = icmp ult i64 %44, %47, !dbg !487
  br i1 %48, label %49, label %50, !dbg !488

; <label>:49:                                     ; preds = %43
  store i32 -1, i32* %5, align 4, !dbg !489
  br label %56, !dbg !489

; <label>:50:                                     ; preds = %43
  %51 = load i8*, i8** %8, align 8, !dbg !490
  %52 = load i8*, i8** %6, align 8, !dbg !491
  %53 = load i8*, i8** %6, align 8, !dbg !492
  %54 = call i64 @strlen(i8* %53) #8, !dbg !493
  %55 = add i64 %54, 1, !dbg !494
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 %55, i32 1, i1 false), !dbg !495
  store i32 0, i32* %5, align 4, !dbg !497
  br label %56, !dbg !497

; <label>:56:                                     ; preds = %50, %49, %41
  %57 = load i32, i32* %5, align 4, !dbg !498
  ret i32 %57, !dbg !498
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare i8* @libiconv_open(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define void @logger(i32, i32, i8*, ...) #0 !dbg !499 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = alloca [1024 x i8], align 16
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !503, metadata !69), !dbg !504
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !505, metadata !69), !dbg !506
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !507, metadata !69), !dbg !508
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !509, metadata !69), !dbg !524
  call void @llvm.dbg.declare(metadata [1024 x i8]* %8, metadata !525, metadata !69), !dbg !529
  %9 = load i32, i32* @_logger_level, align 4, !dbg !530
  %10 = load i32, i32* %5, align 4, !dbg !532
  %11 = icmp ugt i32 %9, %10, !dbg !533
  br i1 %11, label %12, label %13, !dbg !534

; <label>:12:                                     ; preds = %3
  br label %56, !dbg !535

; <label>:13:                                     ; preds = %3
  %14 = load i32, i32* %5, align 4, !dbg !536
  %15 = icmp ult i32 %14, 1, !dbg !538
  br i1 %15, label %16, label %23, !dbg !539

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* @_logger_subjects, align 4, !dbg !540
  %18 = load i32, i32* %4, align 4, !dbg !542
  %19 = shl i32 1, %18, !dbg !543
  %20 = and i32 %17, %19, !dbg !544
  %21 = icmp ne i32 %20, 0, !dbg !544
  br i1 %21, label %23, label %22, !dbg !545

; <label>:22:                                     ; preds = %16
  br label %56, !dbg !546

; <label>:23:                                     ; preds = %16, %13
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !547
  %25 = bitcast %struct.__va_list_tag* %24 to i8*, !dbg !547
  call void @llvm.va_start(i8* %25), !dbg !547
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i32 0, i32 0, !dbg !548
  %27 = load i8*, i8** %6, align 8, !dbg !549
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !550
  %29 = call i32 @vsnprintf(i8* %26, i64 1024, i8* %27, %struct.__va_list_tag* %28) #7, !dbg !551
  %30 = load i32, i32* %5, align 4, !dbg !552
  %31 = icmp eq i32 %30, 4, !dbg !554
  br i1 %31, label %35, label %32, !dbg !555

; <label>:32:                                     ; preds = %23
  %33 = load i32, i32* %5, align 4, !dbg !556
  %34 = icmp eq i32 %33, 1, !dbg !558
  br i1 %34, label %35, label %39, !dbg !559

; <label>:35:                                     ; preds = %32, %23
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !560
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i32 0, i32 0, !dbg !561
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* %37), !dbg !562
  br label %51, !dbg !562

; <label>:39:                                     ; preds = %32
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !563
  %41 = load i32, i32* %4, align 4, !dbg !564
  %42 = zext i32 %41 to i64, !dbg !565
  %43 = getelementptr inbounds [9 x i8*], [9 x i8*]* @subject, i64 0, i64 %42, !dbg !565
  %44 = load i8*, i8** %43, align 8, !dbg !565
  %45 = load i32, i32* %5, align 4, !dbg !566
  %46 = zext i32 %45 to i64, !dbg !567
  %47 = getelementptr inbounds [5 x i8*], [5 x i8*]* @level, i64 0, i64 %46, !dbg !567
  %48 = load i8*, i8** %47, align 8, !dbg !567
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i32 0, i32 0, !dbg !568
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* %44, i8* %48, i8* %49), !dbg !569
  br label %51

; <label>:51:                                     ; preds = %39, %35
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !570
  %53 = call i32 @fflush(%struct._IO_FILE* %52), !dbg !571
  %54 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !572
  %55 = bitcast %struct.__va_list_tag* %54 to i8*, !dbg !572
  call void @llvm.va_end(i8* %55), !dbg !572
  br label %56, !dbg !573

; <label>:56:                                     ; preds = %51, %22, %12
  ret void, !dbg !574
}

declare i64 @libiconv(i8*, i8**, i64*, i8**, i64*) #4

declare i32 @libiconv_close(i8*) #4

; Function Attrs: nounwind uwtable
define void @utils_calculate_dpi_scale_factors(i32, i32, i32, i32*, i32*, i32*, i32*) #0 !dbg !576 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !580, metadata !69), !dbg !581
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !582, metadata !69), !dbg !583
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !584, metadata !69), !dbg !585
  store i32* %3, i32** %11, align 8
  call void @llvm.dbg.declare(metadata i32** %11, metadata !586, metadata !69), !dbg !587
  store i32* %4, i32** %12, align 8
  call void @llvm.dbg.declare(metadata i32** %12, metadata !588, metadata !69), !dbg !589
  store i32* %5, i32** %13, align 8
  call void @llvm.dbg.declare(metadata i32** %13, metadata !590, metadata !69), !dbg !591
  store i32* %6, i32** %14, align 8
  call void @llvm.dbg.declare(metadata i32** %14, metadata !592, metadata !69), !dbg !593
  %15 = load i32*, i32** %14, align 8, !dbg !594
  store i32 0, i32* %15, align 4, !dbg !595
  %16 = load i32*, i32** %13, align 8, !dbg !596
  store i32 0, i32* %16, align 4, !dbg !597
  %17 = load i32*, i32** %12, align 8, !dbg !598
  store i32 0, i32* %17, align 4, !dbg !599
  %18 = load i32*, i32** %11, align 8, !dbg !600
  store i32 0, i32* %18, align 4, !dbg !601
  %19 = load i32, i32* %10, align 4, !dbg !602
  %20 = icmp ugt i32 %19, 0, !dbg !604
  br i1 %20, label %21, label %55, !dbg !605

; <label>:21:                                     ; preds = %7
  %22 = load i32, i32* %8, align 4, !dbg !606
  %23 = mul i32 %22, 254, !dbg !608
  %24 = load i32, i32* %10, align 4, !dbg !609
  %25 = mul i32 %24, 10, !dbg !610
  %26 = udiv i32 %23, %25, !dbg !611
  %27 = load i32*, i32** %11, align 8, !dbg !612
  store i32 %26, i32* %27, align 4, !dbg !613
  %28 = load i32, i32* %9, align 4, !dbg !614
  %29 = mul i32 %28, 254, !dbg !615
  %30 = load i32, i32* %10, align 4, !dbg !616
  %31 = mul i32 %30, 10, !dbg !617
  %32 = udiv i32 %29, %31, !dbg !618
  %33 = load i32*, i32** %12, align 8, !dbg !619
  store i32 %32, i32* %33, align 4, !dbg !620
  %34 = load i32, i32* %10, align 4, !dbg !621
  %35 = icmp ult i32 %34, 96, !dbg !622
  br i1 %35, label %36, label %37, !dbg !621

; <label>:36:                                     ; preds = %21
  br label %42, !dbg !623

; <label>:37:                                     ; preds = %21
  %38 = load i32, i32* %10, align 4, !dbg !625
  %39 = mul i32 %38, 100, !dbg !627
  %40 = add i32 %39, 48, !dbg !628
  %41 = udiv i32 %40, 96, !dbg !629
  br label %42, !dbg !630

; <label>:42:                                     ; preds = %37, %36
  %43 = phi i32 [ 100, %36 ], [ %41, %37 ], !dbg !631
  %44 = load i32*, i32** %13, align 8, !dbg !633
  store i32 %43, i32* %44, align 4, !dbg !634
  %45 = load i32, i32* %10, align 4, !dbg !635
  %46 = icmp ult i32 %45, 134, !dbg !636
  br i1 %46, label %47, label %48, !dbg !635

; <label>:47:                                     ; preds = %42
  br label %52, !dbg !637

; <label>:48:                                     ; preds = %42
  %49 = load i32, i32* %10, align 4, !dbg !638
  %50 = icmp ult i32 %49, 173, !dbg !639
  %51 = select i1 %50, i32 140, i32 180, !dbg !638
  br label %52, !dbg !640

; <label>:52:                                     ; preds = %48, %47
  %53 = phi i32 [ 100, %47 ], [ %51, %48 ], !dbg !641
  %54 = load i32*, i32** %14, align 8, !dbg !642
  store i32 %53, i32* %54, align 4, !dbg !643
  br label %55, !dbg !644

; <label>:55:                                     ; preds = %52, %7
  ret void, !dbg !645
}

; Function Attrs: nounwind uwtable
define void @utils_apply_session_size_limitations(i32*, i32*) #0 !dbg !646 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !649, metadata !69), !dbg !650
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !651, metadata !69), !dbg !652
  %5 = load i32*, i32** %3, align 8, !dbg !653
  %6 = load i32, i32* %5, align 4, !dbg !654
  %7 = urem i32 %6, 2, !dbg !655
  %8 = load i32*, i32** %3, align 8, !dbg !656
  %9 = load i32, i32* %8, align 4, !dbg !657
  %10 = sub i32 %9, %7, !dbg !657
  store i32 %10, i32* %8, align 4, !dbg !657
  %11 = load i32*, i32** %3, align 8, !dbg !658
  %12 = load i32, i32* %11, align 4, !dbg !660
  %13 = icmp ugt i32 %12, 8192, !dbg !661
  br i1 %13, label %14, label %16, !dbg !662

; <label>:14:                                     ; preds = %2
  %15 = load i32*, i32** %3, align 8, !dbg !663
  store i32 8192, i32* %15, align 4, !dbg !664
  br label %23, !dbg !665

; <label>:16:                                     ; preds = %2
  %17 = load i32*, i32** %3, align 8, !dbg !666
  %18 = load i32, i32* %17, align 4, !dbg !668
  %19 = icmp ult i32 %18, 200, !dbg !669
  br i1 %19, label %20, label %22, !dbg !670

; <label>:20:                                     ; preds = %16
  %21 = load i32*, i32** %3, align 8, !dbg !671
  store i32 200, i32* %21, align 4, !dbg !672
  br label %22, !dbg !673

; <label>:22:                                     ; preds = %20, %16
  br label %23

; <label>:23:                                     ; preds = %22, %14
  %24 = load i32*, i32** %4, align 8, !dbg !674
  %25 = load i32, i32* %24, align 4, !dbg !676
  %26 = icmp ugt i32 %25, 8192, !dbg !677
  br i1 %26, label %27, label %29, !dbg !678

; <label>:27:                                     ; preds = %23
  %28 = load i32*, i32** %4, align 8, !dbg !679
  store i32 8192, i32* %28, align 4, !dbg !680
  br label %36, !dbg !681

; <label>:29:                                     ; preds = %23
  %30 = load i32*, i32** %4, align 8, !dbg !682
  %31 = load i32, i32* %30, align 4, !dbg !684
  %32 = icmp ult i32 %31, 200, !dbg !685
  br i1 %32, label %33, label %35, !dbg !686

; <label>:33:                                     ; preds = %29
  %34 = load i32*, i32** %4, align 8, !dbg !687
  store i32 200, i32* %34, align 4, !dbg !688
  br label %35, !dbg !689

; <label>:35:                                     ; preds = %33, %29
  br label %36

; <label>:36:                                     ; preds = %35, %27
  ret void, !dbg !690
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

declare i32 @fflush(%struct._IO_FILE*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: nounwind uwtable
define void @logger_set_verbose(i32) #0 !dbg !691 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !694, metadata !69), !dbg !695
  %3 = load i32, i32* @_logger_level, align 4, !dbg !696
  %4 = icmp ult i32 %3, 1, !dbg !698
  br i1 %4, label %5, label %6, !dbg !699

; <label>:5:                                      ; preds = %1
  br label %11, !dbg !700

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %2, align 4, !dbg !701
  %8 = icmp ne i32 %7, 0, !dbg !701
  br i1 %8, label %9, label %10, !dbg !703

; <label>:9:                                      ; preds = %6
  store i32 1, i32* @_logger_level, align 4, !dbg !704
  br label %11, !dbg !705

; <label>:10:                                     ; preds = %6
  store i32 2, i32* @_logger_level, align 4, !dbg !706
  br label %11

; <label>:11:                                     ; preds = %5, %10, %9
  ret void, !dbg !707
}

; Function Attrs: nounwind uwtable
define void @logger_set_subjects(i8*) #0 !dbg !708 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !711, metadata !69), !dbg !712
  call void @llvm.dbg.declare(metadata i32* %3, metadata !713, metadata !69), !dbg !714
  call void @llvm.dbg.declare(metadata i32* %4, metadata !715, metadata !69), !dbg !716
  call void @llvm.dbg.declare(metadata i8** %5, metadata !717, metadata !69), !dbg !718
  call void @llvm.dbg.declare(metadata i8** %6, metadata !719, metadata !69), !dbg !720
  %7 = load i8*, i8** %2, align 8, !dbg !721
  %8 = icmp ne i8* %7, null, !dbg !721
  br i1 %8, label %9, label %13, !dbg !723

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %2, align 8, !dbg !724
  %11 = call i64 @strlen(i8* %10) #8, !dbg !726
  %12 = icmp ne i64 %11, 0, !dbg !726
  br i1 %12, label %14, label %13, !dbg !727

; <label>:13:                                     ; preds = %9, %1
  br label %120, !dbg !728

; <label>:14:                                     ; preds = %9
  %15 = load i8*, i8** %2, align 8, !dbg !729
  %16 = call noalias i8* @strdup(i8* %15) #7, !dbg !730
  store i8* %16, i8** %5, align 8, !dbg !731
  %17 = load i8*, i8** %5, align 8, !dbg !732
  %18 = call i8* @strtok(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)) #7, !dbg !733
  store i8* %18, i8** %6, align 8, !dbg !734
  %19 = load i8*, i8** %6, align 8, !dbg !735
  %20 = icmp eq i8* %19, null, !dbg !737
  br i1 %20, label %21, label %23, !dbg !738

; <label>:21:                                     ; preds = %14
  %22 = load i8*, i8** %5, align 8, !dbg !739
  call void @free(i8* %22) #7, !dbg !741
  br label %120, !dbg !742

; <label>:23:                                     ; preds = %14
  store i32 0, i32* @_logger_subjects, align 4, !dbg !743
  br label %24, !dbg !744, !llvm.loop !745

; <label>:24:                                     ; preds = %115, %23
  %25 = load i8*, i8** %6, align 8, !dbg !746
  %26 = icmp eq i8* %25, null, !dbg !749
  br i1 %26, label %27, label %28, !dbg !750

; <label>:27:                                     ; preds = %24
  br label %118, !dbg !751

; <label>:28:                                     ; preds = %24
  store i32 0, i32* %4, align 4, !dbg !752
  %29 = load i8*, i8** %6, align 8, !dbg !753
  %30 = getelementptr inbounds i8, i8* %29, i64 0, !dbg !753
  %31 = load i8, i8* %30, align 1, !dbg !753
  %32 = sext i8 %31 to i32, !dbg !753
  %33 = icmp eq i32 %32, 45, !dbg !754
  %34 = select i1 %33, i32 1, i32 0, !dbg !755
  store i32 %34, i32* %3, align 4, !dbg !756
  %35 = load i32, i32* %3, align 4, !dbg !757
  %36 = icmp eq i32 %35, 1, !dbg !759
  br i1 %36, label %37, label %40, !dbg !760

; <label>:37:                                     ; preds = %28
  %38 = load i8*, i8** %6, align 8, !dbg !761
  %39 = getelementptr inbounds i8, i8* %38, i32 1, !dbg !761
  store i8* %39, i8** %6, align 8, !dbg !761
  br label %40, !dbg !762

; <label>:40:                                     ; preds = %37, %28
  %41 = load i8*, i8** %6, align 8, !dbg !763
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0)) #8, !dbg !765
  %43 = icmp eq i32 %42, 0, !dbg !766
  br i1 %43, label %44, label %47, !dbg !767

; <label>:44:                                     ; preds = %40
  %45 = load i32, i32* @_logger_subjects, align 4, !dbg !768
  %46 = or i32 %45, 511, !dbg !768
  store i32 %46, i32* @_logger_subjects, align 4, !dbg !768
  br label %102, !dbg !769

; <label>:47:                                     ; preds = %40
  %48 = load i8*, i8** %6, align 8, !dbg !770
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0)) #8, !dbg !772
  %50 = icmp eq i32 %49, 0, !dbg !773
  br i1 %50, label %51, label %52, !dbg !774

; <label>:51:                                     ; preds = %47
  store i32 1, i32* %4, align 4, !dbg !775
  br label %101, !dbg !776

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %6, align 8, !dbg !777
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)) #8, !dbg !779
  %55 = icmp eq i32 %54, 0, !dbg !780
  br i1 %55, label %56, label %57, !dbg !781

; <label>:56:                                     ; preds = %52
  store i32 2, i32* %4, align 4, !dbg !782
  br label %100, !dbg !783

; <label>:57:                                     ; preds = %52
  %58 = load i8*, i8** %6, align 8, !dbg !784
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !786
  %60 = icmp eq i32 %59, 0, !dbg !787
  br i1 %60, label %61, label %62, !dbg !788

; <label>:61:                                     ; preds = %57
  store i32 4, i32* %4, align 4, !dbg !789
  br label %99, !dbg !790

; <label>:62:                                     ; preds = %57
  %63 = load i8*, i8** %6, align 8, !dbg !791
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)) #8, !dbg !793
  %65 = icmp eq i32 %64, 0, !dbg !794
  br i1 %65, label %66, label %67, !dbg !795

; <label>:66:                                     ; preds = %62
  store i32 8, i32* %4, align 4, !dbg !796
  br label %98, !dbg !797

; <label>:67:                                     ; preds = %62
  %68 = load i8*, i8** %6, align 8, !dbg !798
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0)) #8, !dbg !800
  %70 = icmp eq i32 %69, 0, !dbg !801
  br i1 %70, label %71, label %72, !dbg !802

; <label>:71:                                     ; preds = %67
  store i32 16, i32* %4, align 4, !dbg !803
  br label %97, !dbg !804

; <label>:72:                                     ; preds = %67
  %73 = load i8*, i8** %6, align 8, !dbg !805
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0)) #8, !dbg !807
  %75 = icmp eq i32 %74, 0, !dbg !808
  br i1 %75, label %76, label %77, !dbg !809

; <label>:76:                                     ; preds = %72
  store i32 32, i32* %4, align 4, !dbg !810
  br label %96, !dbg !811

; <label>:77:                                     ; preds = %72
  %78 = load i8*, i8** %6, align 8, !dbg !812
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0)) #8, !dbg !814
  %80 = icmp eq i32 %79, 0, !dbg !815
  br i1 %80, label %81, label %82, !dbg !816

; <label>:81:                                     ; preds = %77
  store i32 64, i32* %4, align 4, !dbg !817
  br label %95, !dbg !818

; <label>:82:                                     ; preds = %77
  %83 = load i8*, i8** %6, align 8, !dbg !819
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !821
  %85 = icmp eq i32 %84, 0, !dbg !822
  br i1 %85, label %86, label %87, !dbg !823

; <label>:86:                                     ; preds = %82
  store i32 128, i32* %4, align 4, !dbg !824
  br label %94, !dbg !825

; <label>:87:                                     ; preds = %82
  %88 = load i8*, i8** %6, align 8, !dbg !826
  %89 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0)) #8, !dbg !828
  %90 = icmp eq i32 %89, 0, !dbg !829
  br i1 %90, label %91, label %92, !dbg !830

; <label>:91:                                     ; preds = %87
  store i32 256, i32* %4, align 4, !dbg !831
  br label %93, !dbg !832

; <label>:92:                                     ; preds = %87
  br label %115, !dbg !833

; <label>:93:                                     ; preds = %91
  br label %94

; <label>:94:                                     ; preds = %93, %86
  br label %95

; <label>:95:                                     ; preds = %94, %81
  br label %96

; <label>:96:                                     ; preds = %95, %76
  br label %97

; <label>:97:                                     ; preds = %96, %71
  br label %98

; <label>:98:                                     ; preds = %97, %66
  br label %99

; <label>:99:                                     ; preds = %98, %61
  br label %100

; <label>:100:                                    ; preds = %99, %56
  br label %101

; <label>:101:                                    ; preds = %100, %51
  br label %102

; <label>:102:                                    ; preds = %101, %44
  %103 = load i32, i32* %3, align 4, !dbg !834
  %104 = icmp ne i32 %103, 0, !dbg !834
  br i1 %104, label %105, label %110, !dbg !836

; <label>:105:                                    ; preds = %102
  %106 = load i32, i32* %4, align 4, !dbg !837
  %107 = xor i32 %106, -1, !dbg !838
  %108 = load i32, i32* @_logger_subjects, align 4, !dbg !839
  %109 = and i32 %108, %107, !dbg !839
  store i32 %109, i32* @_logger_subjects, align 4, !dbg !839
  br label %114, !dbg !840

; <label>:110:                                    ; preds = %102
  %111 = load i32, i32* %4, align 4, !dbg !841
  %112 = load i32, i32* @_logger_subjects, align 4, !dbg !842
  %113 = or i32 %112, %111, !dbg !842
  store i32 %113, i32* @_logger_subjects, align 4, !dbg !842
  br label %114

; <label>:114:                                    ; preds = %110, %105
  br label %115, !dbg !843

; <label>:115:                                    ; preds = %114, %92
  %116 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)) #7, !dbg !844
  store i8* %116, i8** %6, align 8, !dbg !845
  %117 = icmp ne i8* %116, null, !dbg !846
  br i1 %117, label %24, label %118, !dbg !847, !llvm.loop !745

; <label>:118:                                    ; preds = %115, %27
  store i32 0, i32* @_logger_level, align 4, !dbg !849
  %119 = load i8*, i8** %5, align 8, !dbg !850
  call void @free(i8* %119) #7, !dbg !851
  br label %120, !dbg !852

; <label>:120:                                    ; preds = %118, %21, %13
  ret void, !dbg !853
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !22, globals: !36)
!1 = !DIFile(filename: "[inter]utils.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2 = !{!3, !15}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_subject_t", file: !4, line: 46, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "utils.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "GUI", value: 0)
!7 = !DIEnumerator(name: "Keyboard", value: 1)
!8 = !DIEnumerator(name: "Clipboard", value: 2)
!9 = !DIEnumerator(name: "Sound", value: 3)
!10 = !DIEnumerator(name: "Protocol", value: 4)
!11 = !DIEnumerator(name: "Graphics", value: 5)
!12 = !DIEnumerator(name: "Core", value: 6)
!13 = !DIEnumerator(name: "SmartCard", value: 7)
!14 = !DIEnumerator(name: "Disk", value: 8)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_level_t", file: !4, line: 37, size: 32, align: 32, elements: !16)
!16 = !{!17, !18, !19, !20, !21}
!17 = !DIEnumerator(name: "Debug", value: 0)
!18 = !DIEnumerator(name: "Verbose", value: 1)
!19 = !DIEnumerator(name: "Warning", value: 2)
!20 = !DIEnumerator(name: "Error", value: 3)
!21 = !DIEnumerator(name: "Notice", value: 4)
!22 = !{!23, !26, !27, !28, !29, !31, !33}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !25, line: 39, baseType: !26)
!25 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!26 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!27 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "libiconv_t", file: !30, line: 46, baseType: !28)
!30 = !DIFile(filename: "/usr/local/include/iconv.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 216, baseType: !35)
!34 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!35 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!36 = !{!37, !47, !49, !51, !52, !56}
!37 = distinct !DIGlobalVariable(name: "iconv_h", scope: !38, file: !39, line: 193, type: !46, isLocal: true, isDefinition: true, variable: i8*** @utils_locale_to_utf8.iconv_h)
!38 = distinct !DISubprogram(name: "utils_locale_to_utf8", scope: !39, file: !39, line: 191, type: !40, isLocal: false, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !45)
!39 = !DIFile(filename: "utils.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!40 = !DISubroutineType(types: !41)
!41 = !{!42, !43, !33, !32, !33}
!42 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!45 = !{}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!47 = distinct !DIGlobalVariable(name: "g_iconv_works", scope: !0, file: !39, line: 32, type: !48, isLocal: true, isDefinition: true, variable: i32* @g_iconv_works)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !25, line: 28, baseType: !42)
!49 = distinct !DIGlobalVariable(name: "_logger_level", scope: !0, file: !39, line: 306, type: !50, isLocal: true, isDefinition: true, variable: i32* @_logger_level)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "log_level_t", file: !4, line: 44, baseType: !15)
!51 = distinct !DIGlobalVariable(name: "_logger_subjects", scope: !0, file: !39, line: 322, type: !42, isLocal: true, isDefinition: true, variable: i32* @_logger_subjects)
!52 = distinct !DIGlobalVariable(name: "subject", scope: !0, file: !39, line: 294, type: !53, isLocal: true, isDefinition: true, variable: [9 x i8*]* @subject)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 576, align: 64, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 9)
!56 = distinct !DIGlobalVariable(name: "level", scope: !0, file: !39, line: 286, type: !57, isLocal: true, isDefinition: true, variable: [5 x i8*]* @level)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 320, align: 64, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 5)
!60 = !{i32 2, !"Dwarf Version", i32 4}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!63 = distinct !DISubprogram(name: "utils_djb2_hash", scope: !39, file: !39, line: 35, type: !64, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !45)
!64 = !DISubroutineType(types: !65)
!65 = !{!66, !43}
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !25, line: 43, baseType: !67)
!67 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!68 = !DILocalVariable(name: "str", arg: 1, scope: !63, file: !39, line: 35, type: !43)
!69 = !DIExpression()
!70 = !DILocation(line: 35, column: 29, scope: !63)
!71 = !DILocalVariable(name: "c", scope: !63, file: !39, line: 37, type: !24)
!72 = !DILocation(line: 37, column: 8, scope: !63)
!73 = !DILocalVariable(name: "pstr", scope: !63, file: !39, line: 38, type: !23)
!74 = !DILocation(line: 38, column: 9, scope: !63)
!75 = !DILocalVariable(name: "hash", scope: !63, file: !39, line: 39, type: !66)
!76 = !DILocation(line: 39, column: 9, scope: !63)
!77 = !DILocation(line: 41, column: 17, scope: !63)
!78 = !DILocation(line: 41, column: 7, scope: !63)
!79 = !DILocation(line: 42, column: 2, scope: !63)
!80 = !DILocation(line: 42, column: 19, scope: !81)
!81 = !DILexicalBlockFile(scope: !63, file: !39, discriminator: 1)
!82 = !DILocation(line: 42, column: 14, scope: !81)
!83 = !DILocation(line: 42, column: 12, scope: !81)
!84 = !DILocation(line: 42, column: 2, scope: !81)
!85 = !DILocation(line: 44, column: 12, scope: !86)
!86 = distinct !DILexicalBlock(scope: !63, file: !39, line: 43, column: 2)
!87 = !DILocation(line: 44, column: 17, scope: !86)
!88 = !DILocation(line: 44, column: 25, scope: !86)
!89 = !DILocation(line: 44, column: 23, scope: !86)
!90 = !DILocation(line: 44, column: 33, scope: !86)
!91 = !DILocation(line: 44, column: 31, scope: !86)
!92 = !DILocation(line: 44, column: 8, scope: !86)
!93 = !DILocation(line: 42, column: 2, scope: !94)
!94 = !DILexicalBlockFile(scope: !63, file: !39, discriminator: 2)
!95 = distinct !{!95, !79}
!96 = !DILocation(line: 46, column: 9, scope: !63)
!97 = !DILocation(line: 46, column: 2, scope: !63)
!98 = distinct !DISubprogram(name: "utils_string_escape", scope: !39, file: !39, line: 50, type: !99, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !45)
!99 = !DISubroutineType(types: !100)
!100 = !{!32, !43}
!101 = !DILocalVariable(name: "str", arg: 1, scope: !98, file: !39, line: 50, type: !43)
!102 = !DILocation(line: 50, column: 33, scope: !98)
!103 = !DILocalVariable(name: "p", scope: !98, file: !39, line: 52, type: !43)
!104 = !DILocation(line: 52, column: 14, scope: !98)
!105 = !DILocalVariable(name: "pe", scope: !98, file: !39, line: 53, type: !32)
!106 = !DILocation(line: 53, column: 8, scope: !98)
!107 = !DILocalVariable(name: "e", scope: !98, file: !39, line: 53, type: !32)
!108 = !DILocation(line: 53, column: 13, scope: !98)
!109 = !DILocalVariable(name: "esc", scope: !98, file: !39, line: 53, type: !110)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, align: 8, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 4)
!113 = !DILocation(line: 53, column: 16, scope: !98)
!114 = !DILocalVariable(name: "es", scope: !98, file: !39, line: 54, type: !33)
!115 = !DILocation(line: 54, column: 9, scope: !98)
!116 = !DILocalVariable(name: "cnt", scope: !98, file: !39, line: 55, type: !42)
!117 = !DILocation(line: 55, column: 6, scope: !98)
!118 = !DILocation(line: 58, column: 6, scope: !98)
!119 = !DILocation(line: 59, column: 6, scope: !98)
!120 = !DILocation(line: 59, column: 4, scope: !98)
!121 = !DILocation(line: 60, column: 2, scope: !98)
!122 = !DILocation(line: 60, column: 12, scope: !123)
!123 = !DILexicalBlockFile(scope: !98, file: !39, discriminator: 1)
!124 = !DILocation(line: 60, column: 9, scope: !123)
!125 = !DILocation(line: 60, column: 16, scope: !123)
!126 = !DILocation(line: 60, column: 2, scope: !123)
!127 = !DILocation(line: 61, column: 24, scope: !128)
!128 = distinct !DILexicalBlock(scope: !98, file: !39, line: 61, column: 7)
!129 = !DILocation(line: 61, column: 23, scope: !128)
!130 = !DILocation(line: 61, column: 7, scope: !128)
!131 = !DILocation(line: 61, column: 26, scope: !128)
!132 = !DILocation(line: 61, column: 31, scope: !128)
!133 = !DILocation(line: 61, column: 35, scope: !134)
!134 = !DILexicalBlockFile(scope: !128, file: !39, discriminator: 1)
!135 = !DILocation(line: 61, column: 34, scope: !134)
!136 = !DILocation(line: 61, column: 37, scope: !134)
!137 = !DILocation(line: 61, column: 7, scope: !134)
!138 = !DILocation(line: 62, column: 7, scope: !128)
!139 = !DILocation(line: 62, column: 4, scope: !128)
!140 = !DILocation(line: 60, column: 2, scope: !141)
!141 = !DILexicalBlockFile(scope: !98, file: !39, discriminator: 2)
!142 = distinct !{!142, !121}
!143 = !DILocation(line: 65, column: 6, scope: !144)
!144 = distinct !DILexicalBlock(scope: !98, file: !39, line: 65, column: 6)
!145 = !DILocation(line: 65, column: 10, scope: !144)
!146 = !DILocation(line: 65, column: 6, scope: !98)
!147 = !DILocation(line: 66, column: 17, scope: !144)
!148 = !DILocation(line: 66, column: 10, scope: !144)
!149 = !DILocation(line: 66, column: 3, scope: !144)
!150 = !DILocation(line: 69, column: 14, scope: !98)
!151 = !DILocation(line: 69, column: 7, scope: !98)
!152 = !DILocation(line: 69, column: 22, scope: !98)
!153 = !DILocation(line: 69, column: 26, scope: !98)
!154 = !DILocation(line: 69, column: 21, scope: !98)
!155 = !DILocation(line: 69, column: 19, scope: !98)
!156 = !DILocation(line: 69, column: 31, scope: !98)
!157 = !DILocation(line: 69, column: 5, scope: !98)
!158 = !DILocation(line: 70, column: 19, scope: !98)
!159 = !DILocation(line: 70, column: 11, scope: !98)
!160 = !DILocation(line: 70, column: 9, scope: !98)
!161 = !DILocation(line: 70, column: 5, scope: !98)
!162 = !DILocation(line: 71, column: 9, scope: !98)
!163 = !DILocation(line: 71, column: 15, scope: !98)
!164 = !DILocation(line: 71, column: 2, scope: !98)
!165 = !DILocation(line: 72, column: 6, scope: !98)
!166 = !DILocation(line: 72, column: 4, scope: !98)
!167 = !DILocation(line: 73, column: 2, scope: !98)
!168 = !DILocation(line: 73, column: 10, scope: !123)
!169 = !DILocation(line: 73, column: 9, scope: !123)
!170 = !DILocation(line: 73, column: 12, scope: !123)
!171 = !DILocation(line: 73, column: 2, scope: !123)
!172 = !DILocation(line: 75, column: 24, scope: !173)
!173 = distinct !DILexicalBlock(scope: !174, file: !39, line: 75, column: 7)
!174 = distinct !DILexicalBlock(scope: !98, file: !39, line: 74, column: 2)
!175 = !DILocation(line: 75, column: 23, scope: !173)
!176 = !DILocation(line: 75, column: 7, scope: !173)
!177 = !DILocation(line: 75, column: 26, scope: !173)
!178 = !DILocation(line: 75, column: 31, scope: !173)
!179 = !DILocation(line: 75, column: 35, scope: !180)
!180 = !DILexicalBlockFile(scope: !173, file: !39, discriminator: 1)
!181 = !DILocation(line: 75, column: 34, scope: !180)
!182 = !DILocation(line: 75, column: 37, scope: !180)
!183 = !DILocation(line: 75, column: 7, scope: !180)
!184 = !DILocation(line: 77, column: 13, scope: !185)
!185 = distinct !DILexicalBlock(scope: !173, file: !39, line: 76, column: 3)
!186 = !DILocation(line: 77, column: 32, scope: !185)
!187 = !DILocation(line: 77, column: 31, scope: !185)
!188 = !DILocation(line: 77, column: 4, scope: !185)
!189 = !DILocation(line: 78, column: 11, scope: !185)
!190 = !DILocation(line: 78, column: 4, scope: !185)
!191 = !DILocation(line: 79, column: 7, scope: !185)
!192 = !DILocation(line: 80, column: 3, scope: !185)
!193 = !DILocation(line: 83, column: 11, scope: !194)
!194 = distinct !DILexicalBlock(scope: !173, file: !39, line: 82, column: 3)
!195 = !DILocation(line: 83, column: 10, scope: !194)
!196 = !DILocation(line: 83, column: 5, scope: !194)
!197 = !DILocation(line: 83, column: 8, scope: !194)
!198 = !DILocation(line: 84, column: 6, scope: !194)
!199 = !DILocation(line: 87, column: 4, scope: !174)
!200 = !DILocation(line: 73, column: 2, scope: !141)
!201 = distinct !{!201, !167}
!202 = !DILocation(line: 90, column: 9, scope: !98)
!203 = !DILocation(line: 90, column: 2, scope: !98)
!204 = !DILocation(line: 91, column: 1, scope: !98)
!205 = distinct !DISubprogram(name: "utils_string_unescape", scope: !39, file: !39, line: 94, type: !99, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !45)
!206 = !DILocalVariable(name: "str", arg: 1, scope: !205, file: !39, line: 94, type: !43)
!207 = !DILocation(line: 94, column: 35, scope: !205)
!208 = !DILocalVariable(name: "ns", scope: !205, file: !39, line: 96, type: !32)
!209 = !DILocation(line: 96, column: 8, scope: !205)
!210 = !DILocalVariable(name: "ps", scope: !205, file: !39, line: 96, type: !32)
!211 = !DILocation(line: 96, column: 13, scope: !205)
!212 = !DILocalVariable(name: "pd", scope: !205, file: !39, line: 96, type: !32)
!213 = !DILocation(line: 96, column: 18, scope: !205)
!214 = !DILocalVariable(name: "c", scope: !205, file: !39, line: 97, type: !26)
!215 = !DILocation(line: 97, column: 16, scope: !205)
!216 = !DILocation(line: 99, column: 22, scope: !205)
!217 = !DILocation(line: 99, column: 15, scope: !205)
!218 = !DILocation(line: 99, column: 27, scope: !205)
!219 = !DILocation(line: 99, column: 7, scope: !220)
!220 = !DILexicalBlockFile(scope: !205, file: !39, discriminator: 1)
!221 = !DILocation(line: 99, column: 5, scope: !205)
!222 = !DILocation(line: 100, column: 9, scope: !205)
!223 = !DILocation(line: 100, column: 13, scope: !205)
!224 = !DILocation(line: 100, column: 25, scope: !205)
!225 = !DILocation(line: 100, column: 18, scope: !205)
!226 = !DILocation(line: 100, column: 30, scope: !205)
!227 = !DILocation(line: 100, column: 2, scope: !220)
!228 = !DILocation(line: 101, column: 12, scope: !205)
!229 = !DILocation(line: 101, column: 10, scope: !205)
!230 = !DILocation(line: 101, column: 5, scope: !205)
!231 = !DILocation(line: 103, column: 2, scope: !205)
!232 = !DILocation(line: 103, column: 10, scope: !220)
!233 = !DILocation(line: 103, column: 9, scope: !220)
!234 = !DILocation(line: 103, column: 13, scope: !220)
!235 = !DILocation(line: 103, column: 2, scope: !220)
!236 = !DILocation(line: 106, column: 7, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !39, line: 106, column: 7)
!238 = distinct !DILexicalBlock(scope: !205, file: !39, line: 104, column: 2)
!239 = !DILocation(line: 106, column: 13, scope: !237)
!240 = !DILocation(line: 106, column: 7, scope: !238)
!241 = !DILocation(line: 108, column: 15, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !39, line: 108, column: 8)
!243 = distinct !DILexicalBlock(scope: !237, file: !39, line: 107, column: 3)
!244 = !DILocation(line: 108, column: 8, scope: !242)
!245 = !DILocation(line: 108, column: 34, scope: !242)
!246 = !DILocation(line: 108, column: 8, scope: !243)
!247 = !DILocation(line: 110, column: 19, scope: !248)
!248 = distinct !DILexicalBlock(scope: !242, file: !39, line: 109, column: 4)
!249 = !DILocation(line: 110, column: 5, scope: !248)
!250 = !DILocation(line: 110, column: 11, scope: !248)
!251 = !DILocation(line: 111, column: 8, scope: !248)
!252 = !DILocation(line: 112, column: 7, scope: !248)
!253 = !DILocation(line: 113, column: 5, scope: !248)
!254 = distinct !{!254, !231}
!255 = !DILocation(line: 115, column: 3, scope: !243)
!256 = !DILocation(line: 118, column: 10, scope: !238)
!257 = !DILocation(line: 118, column: 9, scope: !238)
!258 = !DILocation(line: 118, column: 4, scope: !238)
!259 = !DILocation(line: 118, column: 7, scope: !238)
!260 = !DILocation(line: 119, column: 5, scope: !238)
!261 = !DILocation(line: 120, column: 5, scope: !238)
!262 = !DILocation(line: 103, column: 2, scope: !263)
!263 = !DILexicalBlockFile(scope: !205, file: !39, discriminator: 2)
!264 = !DILocation(line: 122, column: 2, scope: !205)
!265 = !DILocation(line: 122, column: 8, scope: !205)
!266 = !DILocation(line: 124, column: 9, scope: !205)
!267 = !DILocation(line: 124, column: 2, scope: !205)
!268 = distinct !DISubprogram(name: "utils_mkdir_safe", scope: !39, file: !39, line: 128, type: !269, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !45)
!269 = !DISubroutineType(types: !270)
!270 = !{!42, !43, !42}
!271 = !DILocalVariable(name: "path", arg: 1, scope: !268, file: !39, line: 128, type: !43)
!272 = !DILocation(line: 128, column: 30, scope: !268)
!273 = !DILocalVariable(name: "mask", arg: 2, scope: !268, file: !39, line: 128, type: !42)
!274 = !DILocation(line: 128, column: 40, scope: !268)
!275 = !DILocalVariable(name: "res", scope: !268, file: !39, line: 130, type: !42)
!276 = !DILocation(line: 130, column: 6, scope: !268)
!277 = !DILocalVariable(name: "st", scope: !268, file: !39, line: 131, type: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !279, line: 46, size: 1152, align: 64, elements: !280)
!279 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!280 = !{!281, !284, !286, !288, !290, !292, !294, !295, !296, !299, !301, !303, !311, !312, !313}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !278, file: !279, line: 48, baseType: !282, size: 64, align: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !283, line: 124, baseType: !35)
!283 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!284 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !278, file: !279, line: 53, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !283, line: 127, baseType: !35)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !278, file: !279, line: 61, baseType: !287, size: 64, align: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !283, line: 130, baseType: !35)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !278, file: !279, line: 62, baseType: !289, size: 32, align: 32, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !283, line: 129, baseType: !67)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !278, file: !279, line: 64, baseType: !291, size: 32, align: 32, offset: 224)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !283, line: 125, baseType: !67)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !278, file: !279, line: 65, baseType: !293, size: 32, align: 32, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !283, line: 126, baseType: !67)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !278, file: !279, line: 67, baseType: !42, size: 32, align: 32, offset: 288)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !278, file: !279, line: 69, baseType: !282, size: 64, align: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !278, file: !279, line: 74, baseType: !297, size: 64, align: 64, offset: 384)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !283, line: 131, baseType: !298)
!298 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !278, file: !279, line: 78, baseType: !300, size: 64, align: 64, offset: 448)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !283, line: 153, baseType: !298)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !278, file: !279, line: 80, baseType: !302, size: 64, align: 64, offset: 512)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !283, line: 158, baseType: !298)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !278, file: !279, line: 91, baseType: !304, size: 128, align: 64, offset: 576)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !305, line: 120, size: 128, align: 64, elements: !306)
!305 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!306 = !{!307, !309}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !304, file: !305, line: 122, baseType: !308, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !283, line: 139, baseType: !298)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !304, file: !305, line: 123, baseType: !310, size: 64, align: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !283, line: 175, baseType: !298)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !278, file: !279, line: 92, baseType: !304, size: 128, align: 64, offset: 704)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !278, file: !279, line: 93, baseType: !304, size: 128, align: 64, offset: 832)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !278, file: !279, line: 106, baseType: !314, size: 192, align: 64, offset: 960)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 192, align: 64, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 3)
!317 = !DILocation(line: 131, column: 14, scope: !268)
!318 = !DILocation(line: 133, column: 13, scope: !268)
!319 = !DILocation(line: 133, column: 8, scope: !268)
!320 = !DILocation(line: 133, column: 6, scope: !268)
!321 = !DILocation(line: 134, column: 6, scope: !322)
!322 = distinct !DILexicalBlock(scope: !268, file: !39, line: 134, column: 6)
!323 = !DILocation(line: 134, column: 10, scope: !322)
!324 = !DILocation(line: 134, column: 6, scope: !268)
!325 = !DILocation(line: 135, column: 16, scope: !322)
!326 = !DILocation(line: 135, column: 22, scope: !322)
!327 = !DILocation(line: 135, column: 10, scope: !322)
!328 = !DILocation(line: 135, column: 3, scope: !322)
!329 = !DILocation(line: 137, column: 9, scope: !330)
!330 = distinct !DILexicalBlock(scope: !268, file: !39, line: 137, column: 6)
!331 = !DILocation(line: 137, column: 20, scope: !330)
!332 = !DILocation(line: 137, column: 6, scope: !268)
!333 = !DILocation(line: 139, column: 4, scope: !334)
!334 = distinct !DILexicalBlock(scope: !330, file: !39, line: 138, column: 2)
!335 = !DILocation(line: 139, column: 8, scope: !334)
!336 = !DILocation(line: 140, column: 3, scope: !334)
!337 = !DILocation(line: 143, column: 2, scope: !268)
!338 = !DILocation(line: 144, column: 1, scope: !268)
!339 = distinct !DISubprogram(name: "utils_mkdir_p", scope: !39, file: !39, line: 147, type: !269, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !45)
!340 = !DILocalVariable(name: "path", arg: 1, scope: !339, file: !39, line: 147, type: !43)
!341 = !DILocation(line: 147, column: 27, scope: !339)
!342 = !DILocalVariable(name: "mask", arg: 2, scope: !339, file: !39, line: 147, type: !42)
!343 = !DILocation(line: 147, column: 37, scope: !339)
!344 = !DILocalVariable(name: "res", scope: !339, file: !39, line: 149, type: !42)
!345 = !DILocation(line: 149, column: 6, scope: !339)
!346 = !DILocalVariable(name: "ptok", scope: !339, file: !39, line: 150, type: !32)
!347 = !DILocation(line: 150, column: 8, scope: !339)
!348 = !DILocalVariable(name: "pt", scope: !339, file: !39, line: 151, type: !349)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32768, align: 8, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 4096)
!352 = !DILocation(line: 151, column: 7, scope: !339)
!353 = !DILocalVariable(name: "bp", scope: !339, file: !39, line: 152, type: !349)
!354 = !DILocation(line: 152, column: 7, scope: !339)
!355 = !DILocation(line: 154, column: 7, scope: !356)
!356 = distinct !DILexicalBlock(scope: !339, file: !39, line: 154, column: 6)
!357 = !DILocation(line: 154, column: 12, scope: !356)
!358 = !DILocation(line: 154, column: 22, scope: !359)
!359 = !DILexicalBlockFile(scope: !356, file: !39, discriminator: 1)
!360 = !DILocation(line: 154, column: 15, scope: !359)
!361 = !DILocation(line: 154, column: 28, scope: !359)
!362 = !DILocation(line: 154, column: 6, scope: !359)
!363 = !DILocation(line: 156, column: 4, scope: !364)
!364 = distinct !DILexicalBlock(scope: !356, file: !39, line: 155, column: 2)
!365 = !DILocation(line: 156, column: 8, scope: !364)
!366 = !DILocation(line: 157, column: 3, scope: !364)
!367 = !DILocation(line: 159, column: 13, scope: !368)
!368 = distinct !DILexicalBlock(scope: !339, file: !39, line: 159, column: 6)
!369 = !DILocation(line: 159, column: 6, scope: !368)
!370 = !DILocation(line: 159, column: 19, scope: !368)
!371 = !DILocation(line: 159, column: 6, scope: !339)
!372 = !DILocation(line: 161, column: 4, scope: !373)
!373 = distinct !DILexicalBlock(scope: !368, file: !39, line: 160, column: 2)
!374 = !DILocation(line: 161, column: 8, scope: !373)
!375 = !DILocation(line: 162, column: 3, scope: !373)
!376 = !DILocation(line: 165, column: 6, scope: !339)
!377 = !DILocation(line: 166, column: 10, scope: !339)
!378 = !DILocation(line: 166, column: 16, scope: !339)
!379 = !DILocation(line: 166, column: 2, scope: !339)
!380 = !DILocation(line: 166, column: 8, scope: !339)
!381 = !DILocation(line: 167, column: 9, scope: !339)
!382 = !DILocation(line: 167, column: 13, scope: !339)
!383 = !DILocation(line: 167, column: 2, scope: !339)
!384 = !DILocation(line: 169, column: 16, scope: !339)
!385 = !DILocation(line: 169, column: 9, scope: !339)
!386 = !DILocation(line: 169, column: 7, scope: !339)
!387 = !DILocation(line: 170, column: 6, scope: !388)
!388 = distinct !DILexicalBlock(scope: !339, file: !39, line: 170, column: 6)
!389 = !DILocation(line: 170, column: 11, scope: !388)
!390 = !DILocation(line: 170, column: 6, scope: !339)
!391 = !DILocation(line: 171, column: 27, scope: !388)
!392 = !DILocation(line: 171, column: 33, scope: !388)
!393 = !DILocation(line: 171, column: 10, scope: !388)
!394 = !DILocation(line: 171, column: 3, scope: !388)
!395 = !DILocation(line: 173, column: 2, scope: !339)
!396 = distinct !{!396, !395}
!397 = !DILocation(line: 175, column: 7, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !39, line: 175, column: 7)
!399 = distinct !DILexicalBlock(scope: !339, file: !39, line: 174, column: 2)
!400 = !DILocation(line: 175, column: 15, scope: !398)
!401 = !DILocation(line: 175, column: 12, scope: !398)
!402 = !DILocation(line: 175, column: 7, scope: !399)
!403 = !DILocation(line: 176, column: 11, scope: !398)
!404 = !DILocation(line: 176, column: 4, scope: !398)
!405 = !DILocation(line: 178, column: 10, scope: !399)
!406 = !DILocation(line: 178, column: 14, scope: !399)
!407 = !DILocation(line: 178, column: 3, scope: !399)
!408 = !DILocation(line: 179, column: 26, scope: !399)
!409 = !DILocation(line: 179, column: 30, scope: !399)
!410 = !DILocation(line: 179, column: 9, scope: !399)
!411 = !DILocation(line: 179, column: 7, scope: !399)
!412 = !DILocation(line: 180, column: 7, scope: !413)
!413 = distinct !DILexicalBlock(scope: !399, file: !39, line: 180, column: 7)
!414 = !DILocation(line: 180, column: 11, scope: !413)
!415 = !DILocation(line: 180, column: 7, scope: !399)
!416 = !DILocation(line: 181, column: 11, scope: !413)
!417 = !DILocation(line: 181, column: 4, scope: !413)
!418 = !DILocation(line: 183, column: 2, scope: !399)
!419 = !DILocation(line: 184, column: 17, scope: !339)
!420 = !DILocation(line: 184, column: 15, scope: !339)
!421 = !DILocation(line: 184, column: 35, scope: !339)
!422 = !DILocation(line: 183, column: 2, scope: !423)
!423 = !DILexicalBlockFile(scope: !399, file: !39, discriminator: 1)
!424 = !DILocation(line: 186, column: 2, scope: !339)
!425 = !DILocation(line: 187, column: 1, scope: !339)
!426 = !DILocalVariable(name: "src", arg: 1, scope: !38, file: !39, line: 191, type: !43)
!427 = !DILocation(line: 191, column: 34, scope: !38)
!428 = !DILocalVariable(name: "is", arg: 2, scope: !38, file: !39, line: 191, type: !33)
!429 = !DILocation(line: 191, column: 46, scope: !38)
!430 = !DILocalVariable(name: "dest", arg: 3, scope: !38, file: !39, line: 191, type: !32)
!431 = !DILocation(line: 191, column: 56, scope: !38)
!432 = !DILocalVariable(name: "os", arg: 4, scope: !38, file: !39, line: 191, type: !33)
!433 = !DILocation(line: 191, column: 69, scope: !38)
!434 = !DILocation(line: 194, column: 6, scope: !435)
!435 = distinct !DILexicalBlock(scope: !38, file: !39, line: 194, column: 6)
!436 = !DILocation(line: 194, column: 52, scope: !435)
!437 = !DILocation(line: 194, column: 6, scope: !38)
!438 = !DILocation(line: 195, column: 3, scope: !435)
!439 = !DILocation(line: 197, column: 6, scope: !440)
!440 = distinct !DILexicalBlock(scope: !38, file: !39, line: 197, column: 6)
!441 = !DILocation(line: 197, column: 20, scope: !440)
!442 = !DILocation(line: 197, column: 6, scope: !38)
!443 = !DILocation(line: 198, column: 3, scope: !440)
!444 = !DILocation(line: 201, column: 6, scope: !445)
!445 = distinct !DILexicalBlock(scope: !38, file: !39, line: 201, column: 6)
!446 = !DILocation(line: 201, column: 14, scope: !445)
!447 = !DILocation(line: 201, column: 6, scope: !38)
!448 = !DILocation(line: 203, column: 17, scope: !449)
!449 = distinct !DILexicalBlock(scope: !450, file: !39, line: 203, column: 7)
!450 = distinct !DILexicalBlock(scope: !445, file: !39, line: 202, column: 2)
!451 = !DILocation(line: 203, column: 16, scope: !449)
!452 = !DILocation(line: 203, column: 50, scope: !449)
!453 = !DILocation(line: 203, column: 7, scope: !450)
!454 = !DILocation(line: 207, column: 20, scope: !455)
!455 = distinct !DILexicalBlock(scope: !449, file: !39, line: 204, column: 3)
!456 = !DILocation(line: 205, column: 4, scope: !455)
!457 = !DILocation(line: 209, column: 18, scope: !455)
!458 = !DILocation(line: 210, column: 4, scope: !455)
!459 = !DILocation(line: 212, column: 2, scope: !450)
!460 = !DILocation(line: 215, column: 11, scope: !461)
!461 = distinct !DILexicalBlock(scope: !38, file: !39, line: 215, column: 5)
!462 = !DILocation(line: 215, column: 5, scope: !461)
!463 = !DILocation(line: 215, column: 53, scope: !461)
!464 = !DILocation(line: 215, column: 5, scope: !38)
!465 = !DILocation(line: 217, column: 14, scope: !466)
!466 = distinct !DILexicalBlock(scope: !461, file: !39, line: 216, column: 2)
!467 = !DILocation(line: 217, column: 2, scope: !466)
!468 = !DILocation(line: 218, column: 11, scope: !466)
!469 = !DILocation(line: 219, column: 75, scope: !466)
!470 = !DILocation(line: 219, column: 74, scope: !466)
!471 = !DILocation(line: 219, column: 3, scope: !472)
!472 = !DILexicalBlockFile(scope: !466, file: !39, discriminator: 1)
!473 = !DILocation(line: 221, column: 17, scope: !466)
!474 = !DILocation(line: 222, column: 3, scope: !466)
!475 = !DILocation(line: 226, column: 6, scope: !476)
!476 = distinct !DILexicalBlock(scope: !38, file: !39, line: 226, column: 6)
!477 = !DILocation(line: 226, column: 9, scope: !476)
!478 = !DILocation(line: 226, column: 6, scope: !38)
!479 = !DILocation(line: 227, column: 3, scope: !476)
!480 = !DILocation(line: 226, column: 12, scope: !481)
!481 = !DILexicalBlockFile(scope: !476, file: !39, discriminator: 1)
!482 = !DILocation(line: 231, column: 6, scope: !483)
!483 = distinct !DILexicalBlock(scope: !38, file: !39, line: 231, column: 6)
!484 = !DILocation(line: 231, column: 19, scope: !483)
!485 = !DILocation(line: 231, column: 12, scope: !483)
!486 = !DILocation(line: 231, column: 24, scope: !483)
!487 = !DILocation(line: 231, column: 9, scope: !483)
!488 = !DILocation(line: 231, column: 6, scope: !38)
!489 = !DILocation(line: 232, column: 3, scope: !483)
!490 = !DILocation(line: 234, column: 9, scope: !38)
!491 = !DILocation(line: 234, column: 15, scope: !38)
!492 = !DILocation(line: 234, column: 27, scope: !38)
!493 = !DILocation(line: 234, column: 20, scope: !38)
!494 = !DILocation(line: 234, column: 32, scope: !38)
!495 = !DILocation(line: 234, column: 2, scope: !496)
!496 = !DILexicalBlockFile(scope: !38, file: !39, discriminator: 1)
!497 = !DILocation(line: 235, column: 2, scope: !38)
!498 = !DILocation(line: 236, column: 1, scope: !38)
!499 = distinct !DISubprogram(name: "logger", scope: !39, file: !39, line: 325, type: !500, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !45)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !502, !50, !32, null}
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "log_subject_t", file: !4, line: 57, baseType: !3)
!503 = !DILocalVariable(name: "s", arg: 1, scope: !499, file: !39, line: 325, type: !502)
!504 = !DILocation(line: 325, column: 22, scope: !499)
!505 = !DILocalVariable(name: "lvl", arg: 2, scope: !499, file: !39, line: 325, type: !50)
!506 = !DILocation(line: 325, column: 37, scope: !499)
!507 = !DILocalVariable(name: "format", arg: 3, scope: !499, file: !39, line: 325, type: !32)
!508 = !DILocation(line: 325, column: 48, scope: !499)
!509 = !DILocalVariable(name: "ap", scope: !499, file: !39, line: 327, type: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !511, line: 79, baseType: !512)
!511 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !513, line: 40, baseType: !514)
!513 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 327, baseType: !515)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 192, align: 64, elements: !522)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 327, size: 192, align: 64, elements: !517)
!517 = !{!518, !519, !520, !521}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !516, file: !1, line: 327, baseType: !67, size: 32, align: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !516, file: !1, line: 327, baseType: !67, size: 32, align: 32, offset: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !516, file: !1, line: 327, baseType: !28, size: 64, align: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !516, file: !1, line: 327, baseType: !28, size: 64, align: 64, offset: 128)
!522 = !{!523}
!523 = !DISubrange(count: 1)
!524 = !DILocation(line: 327, column: 10, scope: !499)
!525 = !DILocalVariable(name: "buf", scope: !499, file: !39, line: 328, type: !526)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8192, align: 8, elements: !527)
!527 = !{!528}
!528 = !DISubrange(count: 1024)
!529 = !DILocation(line: 328, column: 7, scope: !499)
!530 = !DILocation(line: 331, column: 6, scope: !531)
!531 = distinct !DILexicalBlock(scope: !499, file: !39, line: 331, column: 6)
!532 = !DILocation(line: 331, column: 22, scope: !531)
!533 = !DILocation(line: 331, column: 20, scope: !531)
!534 = !DILocation(line: 331, column: 6, scope: !499)
!535 = !DILocation(line: 332, column: 3, scope: !531)
!536 = !DILocation(line: 335, column: 6, scope: !537)
!537 = distinct !DILexicalBlock(scope: !499, file: !39, line: 335, column: 6)
!538 = !DILocation(line: 335, column: 10, scope: !537)
!539 = !DILocation(line: 335, column: 20, scope: !537)
!540 = !DILocation(line: 335, column: 25, scope: !541)
!541 = !DILexicalBlockFile(scope: !537, file: !39, discriminator: 1)
!542 = !DILocation(line: 335, column: 50, scope: !541)
!543 = !DILocation(line: 335, column: 47, scope: !541)
!544 = !DILocation(line: 335, column: 42, scope: !541)
!545 = !DILocation(line: 335, column: 6, scope: !541)
!546 = !DILocation(line: 336, column: 3, scope: !537)
!547 = !DILocation(line: 338, column: 1, scope: !499)
!548 = !DILocation(line: 339, column: 12, scope: !499)
!549 = !DILocation(line: 339, column: 30, scope: !499)
!550 = !DILocation(line: 339, column: 38, scope: !499)
!551 = !DILocation(line: 339, column: 2, scope: !499)
!552 = !DILocation(line: 342, column: 6, scope: !553)
!553 = distinct !DILexicalBlock(scope: !499, file: !39, line: 342, column: 6)
!554 = !DILocation(line: 342, column: 10, scope: !553)
!555 = !DILocation(line: 342, column: 20, scope: !553)
!556 = !DILocation(line: 342, column: 23, scope: !557)
!557 = !DILexicalBlockFile(scope: !553, file: !39, discriminator: 1)
!558 = !DILocation(line: 342, column: 27, scope: !557)
!559 = !DILocation(line: 342, column: 6, scope: !557)
!560 = !DILocation(line: 343, column: 10, scope: !553)
!561 = !DILocation(line: 343, column: 26, scope: !553)
!562 = !DILocation(line: 343, column: 3, scope: !553)
!563 = !DILocation(line: 345, column: 10, scope: !553)
!564 = !DILocation(line: 345, column: 42, scope: !553)
!565 = !DILocation(line: 345, column: 34, scope: !553)
!566 = !DILocation(line: 345, column: 52, scope: !553)
!567 = !DILocation(line: 345, column: 46, scope: !553)
!568 = !DILocation(line: 345, column: 58, scope: !553)
!569 = !DILocation(line: 345, column: 3, scope: !553)
!570 = !DILocation(line: 347, column: 8, scope: !499)
!571 = !DILocation(line: 347, column: 2, scope: !499)
!572 = !DILocation(line: 349, column: 1, scope: !499)
!573 = !DILocation(line: 350, column: 1, scope: !499)
!574 = !DILocation(line: 350, column: 1, scope: !575)
!575 = !DILexicalBlockFile(scope: !499, file: !39, discriminator: 1)
!576 = distinct !DISubprogram(name: "utils_calculate_dpi_scale_factors", scope: !39, file: !39, line: 240, type: !577, isLocal: false, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !45)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !66, !66, !66, !579, !579, !579, !579}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!580 = !DILocalVariable(name: "width", arg: 1, scope: !576, file: !39, line: 240, type: !66)
!581 = !DILocation(line: 240, column: 42, scope: !576)
!582 = !DILocalVariable(name: "height", arg: 2, scope: !576, file: !39, line: 240, type: !66)
!583 = !DILocation(line: 240, column: 56, scope: !576)
!584 = !DILocalVariable(name: "dpi", arg: 3, scope: !576, file: !39, line: 240, type: !66)
!585 = !DILocation(line: 240, column: 71, scope: !576)
!586 = !DILocalVariable(name: "physwidth", arg: 4, scope: !576, file: !39, line: 241, type: !579)
!587 = !DILocation(line: 241, column: 15, scope: !576)
!588 = !DILocalVariable(name: "physheight", arg: 5, scope: !576, file: !39, line: 241, type: !579)
!589 = !DILocation(line: 241, column: 34, scope: !576)
!590 = !DILocalVariable(name: "desktopscale", arg: 6, scope: !576, file: !39, line: 242, type: !579)
!591 = !DILocation(line: 242, column: 15, scope: !576)
!592 = !DILocalVariable(name: "devicescale", arg: 7, scope: !576, file: !39, line: 242, type: !579)
!593 = !DILocation(line: 242, column: 37, scope: !576)
!594 = !DILocation(line: 244, column: 46, scope: !576)
!595 = !DILocation(line: 244, column: 58, scope: !576)
!596 = !DILocation(line: 244, column: 30, scope: !576)
!597 = !DILocation(line: 244, column: 43, scope: !576)
!598 = !DILocation(line: 244, column: 16, scope: !576)
!599 = !DILocation(line: 244, column: 27, scope: !576)
!600 = !DILocation(line: 244, column: 3, scope: !576)
!601 = !DILocation(line: 244, column: 13, scope: !576)
!602 = !DILocation(line: 246, column: 6, scope: !603)
!603 = distinct !DILexicalBlock(scope: !576, file: !39, line: 246, column: 6)
!604 = !DILocation(line: 246, column: 10, scope: !603)
!605 = !DILocation(line: 246, column: 6, scope: !576)
!606 = !DILocation(line: 248, column: 16, scope: !607)
!607 = distinct !DILexicalBlock(scope: !603, file: !39, line: 247, column: 2)
!608 = !DILocation(line: 248, column: 22, scope: !607)
!609 = !DILocation(line: 248, column: 31, scope: !607)
!610 = !DILocation(line: 248, column: 35, scope: !607)
!611 = !DILocation(line: 248, column: 28, scope: !607)
!612 = !DILocation(line: 248, column: 4, scope: !607)
!613 = !DILocation(line: 248, column: 14, scope: !607)
!614 = !DILocation(line: 249, column: 17, scope: !607)
!615 = !DILocation(line: 249, column: 24, scope: !607)
!616 = !DILocation(line: 249, column: 33, scope: !607)
!617 = !DILocation(line: 249, column: 37, scope: !607)
!618 = !DILocation(line: 249, column: 30, scope: !607)
!619 = !DILocation(line: 249, column: 4, scope: !607)
!620 = !DILocation(line: 249, column: 15, scope: !607)
!621 = !DILocation(line: 253, column: 19, scope: !607)
!622 = !DILocation(line: 253, column: 23, scope: !607)
!623 = !DILocation(line: 253, column: 19, scope: !624)
!624 = !DILexicalBlockFile(scope: !607, file: !39, discriminator: 1)
!625 = !DILocation(line: 253, column: 37, scope: !626)
!626 = !DILexicalBlockFile(scope: !607, file: !39, discriminator: 2)
!627 = !DILocation(line: 253, column: 41, scope: !626)
!628 = !DILocation(line: 253, column: 47, scope: !626)
!629 = !DILocation(line: 253, column: 53, scope: !626)
!630 = !DILocation(line: 253, column: 19, scope: !626)
!631 = !DILocation(line: 253, column: 19, scope: !632)
!632 = !DILexicalBlockFile(scope: !607, file: !39, discriminator: 3)
!633 = !DILocation(line: 253, column: 4, scope: !632)
!634 = !DILocation(line: 253, column: 17, scope: !632)
!635 = !DILocation(line: 257, column: 18, scope: !607)
!636 = !DILocation(line: 257, column: 22, scope: !607)
!637 = !DILocation(line: 257, column: 18, scope: !624)
!638 = !DILocation(line: 257, column: 37, scope: !626)
!639 = !DILocation(line: 257, column: 41, scope: !626)
!640 = !DILocation(line: 257, column: 18, scope: !626)
!641 = !DILocation(line: 257, column: 18, scope: !632)
!642 = !DILocation(line: 257, column: 4, scope: !632)
!643 = !DILocation(line: 257, column: 16, scope: !632)
!644 = !DILocation(line: 259, column: 2, scope: !607)
!645 = !DILocation(line: 260, column: 1, scope: !576)
!646 = distinct !DISubprogram(name: "utils_apply_session_size_limitations", scope: !39, file: !39, line: 264, type: !647, isLocal: false, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !45)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !579, !579}
!649 = !DILocalVariable(name: "width", arg: 1, scope: !646, file: !39, line: 264, type: !579)
!650 = !DILocation(line: 264, column: 46, scope: !646)
!651 = !DILocalVariable(name: "height", arg: 2, scope: !646, file: !39, line: 264, type: !579)
!652 = !DILocation(line: 264, column: 61, scope: !646)
!653 = !DILocation(line: 267, column: 14, scope: !646)
!654 = !DILocation(line: 267, column: 13, scope: !646)
!655 = !DILocation(line: 267, column: 21, scope: !646)
!656 = !DILocation(line: 267, column: 3, scope: !646)
!657 = !DILocation(line: 267, column: 9, scope: !646)
!658 = !DILocation(line: 269, column: 7, scope: !659)
!659 = distinct !DILexicalBlock(scope: !646, file: !39, line: 269, column: 6)
!660 = !DILocation(line: 269, column: 6, scope: !659)
!661 = !DILocation(line: 269, column: 13, scope: !659)
!662 = !DILocation(line: 269, column: 6, scope: !646)
!663 = !DILocation(line: 270, column: 4, scope: !659)
!664 = !DILocation(line: 270, column: 10, scope: !659)
!665 = !DILocation(line: 270, column: 3, scope: !659)
!666 = !DILocation(line: 271, column: 12, scope: !667)
!667 = distinct !DILexicalBlock(scope: !659, file: !39, line: 271, column: 11)
!668 = !DILocation(line: 271, column: 11, scope: !667)
!669 = !DILocation(line: 271, column: 18, scope: !667)
!670 = !DILocation(line: 271, column: 11, scope: !659)
!671 = !DILocation(line: 272, column: 4, scope: !667)
!672 = !DILocation(line: 272, column: 10, scope: !667)
!673 = !DILocation(line: 272, column: 3, scope: !667)
!674 = !DILocation(line: 274, column: 7, scope: !675)
!675 = distinct !DILexicalBlock(scope: !646, file: !39, line: 274, column: 6)
!676 = !DILocation(line: 274, column: 6, scope: !675)
!677 = !DILocation(line: 274, column: 14, scope: !675)
!678 = !DILocation(line: 274, column: 6, scope: !646)
!679 = !DILocation(line: 275, column: 4, scope: !675)
!680 = !DILocation(line: 275, column: 11, scope: !675)
!681 = !DILocation(line: 275, column: 3, scope: !675)
!682 = !DILocation(line: 276, column: 12, scope: !683)
!683 = distinct !DILexicalBlock(scope: !675, file: !39, line: 276, column: 11)
!684 = !DILocation(line: 276, column: 11, scope: !683)
!685 = !DILocation(line: 276, column: 19, scope: !683)
!686 = !DILocation(line: 276, column: 11, scope: !675)
!687 = !DILocation(line: 277, column: 4, scope: !683)
!688 = !DILocation(line: 277, column: 11, scope: !683)
!689 = !DILocation(line: 277, column: 3, scope: !683)
!690 = !DILocation(line: 278, column: 1, scope: !646)
!691 = distinct !DISubprogram(name: "logger_set_verbose", scope: !39, file: !39, line: 353, type: !692, isLocal: false, isDefinition: true, scopeLine: 354, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !45)
!692 = !DISubroutineType(types: !693)
!693 = !{null, !42}
!694 = !DILocalVariable(name: "verbose", arg: 1, scope: !691, file: !39, line: 353, type: !42)
!695 = !DILocation(line: 353, column: 24, scope: !691)
!696 = !DILocation(line: 355, column: 6, scope: !697)
!697 = distinct !DILexicalBlock(scope: !691, file: !39, line: 355, column: 6)
!698 = !DILocation(line: 355, column: 20, scope: !697)
!699 = !DILocation(line: 355, column: 6, scope: !691)
!700 = !DILocation(line: 356, column: 3, scope: !697)
!701 = !DILocation(line: 358, column: 6, scope: !702)
!702 = distinct !DILexicalBlock(scope: !691, file: !39, line: 358, column: 6)
!703 = !DILocation(line: 358, column: 6, scope: !691)
!704 = !DILocation(line: 359, column: 17, scope: !702)
!705 = !DILocation(line: 359, column: 3, scope: !702)
!706 = !DILocation(line: 361, column: 17, scope: !702)
!707 = !DILocation(line: 362, column: 1, scope: !691)
!708 = distinct !DISubprogram(name: "logger_set_subjects", scope: !39, file: !39, line: 365, type: !709, isLocal: false, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !45)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !32}
!711 = !DILocalVariable(name: "subjects", arg: 1, scope: !708, file: !39, line: 365, type: !32)
!712 = !DILocation(line: 365, column: 27, scope: !708)
!713 = !DILocalVariable(name: "clear", scope: !708, file: !39, line: 367, type: !42)
!714 = !DILocation(line: 367, column: 6, scope: !708)
!715 = !DILocalVariable(name: "bit", scope: !708, file: !39, line: 368, type: !42)
!716 = !DILocation(line: 368, column: 6, scope: !708)
!717 = !DILocalVariable(name: "pcs", scope: !708, file: !39, line: 369, type: !32)
!718 = !DILocation(line: 369, column: 8, scope: !708)
!719 = !DILocalVariable(name: "token", scope: !708, file: !39, line: 370, type: !32)
!720 = !DILocation(line: 370, column: 8, scope: !708)
!721 = !DILocation(line: 372, column: 7, scope: !722)
!722 = distinct !DILexicalBlock(scope: !708, file: !39, line: 372, column: 6)
!723 = !DILocation(line: 372, column: 16, scope: !722)
!724 = !DILocation(line: 372, column: 27, scope: !725)
!725 = !DILexicalBlockFile(scope: !722, file: !39, discriminator: 1)
!726 = !DILocation(line: 372, column: 20, scope: !725)
!727 = !DILocation(line: 372, column: 6, scope: !725)
!728 = !DILocation(line: 373, column: 3, scope: !722)
!729 = !DILocation(line: 375, column: 15, scope: !708)
!730 = !DILocation(line: 375, column: 8, scope: !708)
!731 = !DILocation(line: 375, column: 6, scope: !708)
!732 = !DILocation(line: 377, column: 17, scope: !708)
!733 = !DILocation(line: 377, column: 10, scope: !708)
!734 = !DILocation(line: 377, column: 8, scope: !708)
!735 = !DILocation(line: 378, column: 6, scope: !736)
!736 = distinct !DILexicalBlock(scope: !708, file: !39, line: 378, column: 6)
!737 = !DILocation(line: 378, column: 12, scope: !736)
!738 = !DILocation(line: 378, column: 6, scope: !708)
!739 = !DILocation(line: 380, column: 8, scope: !740)
!740 = distinct !DILexicalBlock(scope: !736, file: !39, line: 379, column: 2)
!741 = !DILocation(line: 380, column: 3, scope: !740)
!742 = !DILocation(line: 381, column: 3, scope: !740)
!743 = !DILocation(line: 384, column: 19, scope: !708)
!744 = !DILocation(line: 386, column: 2, scope: !708)
!745 = distinct !{!745, !744}
!746 = !DILocation(line: 389, column: 7, scope: !747)
!747 = distinct !DILexicalBlock(scope: !748, file: !39, line: 389, column: 7)
!748 = distinct !DILexicalBlock(scope: !708, file: !39, line: 387, column: 2)
!749 = !DILocation(line: 389, column: 13, scope: !747)
!750 = !DILocation(line: 389, column: 7, scope: !748)
!751 = !DILocation(line: 390, column: 4, scope: !747)
!752 = !DILocation(line: 392, column: 7, scope: !748)
!753 = !DILocation(line: 393, column: 12, scope: !748)
!754 = !DILocation(line: 393, column: 21, scope: !748)
!755 = !DILocation(line: 393, column: 11, scope: !748)
!756 = !DILocation(line: 393, column: 9, scope: !748)
!757 = !DILocation(line: 395, column: 7, scope: !758)
!758 = distinct !DILexicalBlock(scope: !748, file: !39, line: 395, column: 7)
!759 = !DILocation(line: 395, column: 13, scope: !758)
!760 = !DILocation(line: 395, column: 7, scope: !748)
!761 = !DILocation(line: 396, column: 9, scope: !758)
!762 = !DILocation(line: 396, column: 4, scope: !758)
!763 = !DILocation(line: 398, column: 14, scope: !764)
!764 = distinct !DILexicalBlock(scope: !748, file: !39, line: 398, column: 7)
!765 = !DILocation(line: 398, column: 7, scope: !764)
!766 = !DILocation(line: 398, column: 28, scope: !764)
!767 = !DILocation(line: 398, column: 7, scope: !748)
!768 = !DILocation(line: 399, column: 21, scope: !764)
!769 = !DILocation(line: 399, column: 4, scope: !764)
!770 = !DILocation(line: 400, column: 19, scope: !771)
!771 = distinct !DILexicalBlock(scope: !764, file: !39, line: 400, column: 12)
!772 = !DILocation(line: 400, column: 12, scope: !771)
!773 = !DILocation(line: 400, column: 32, scope: !771)
!774 = !DILocation(line: 400, column: 12, scope: !764)
!775 = !DILocation(line: 401, column: 8, scope: !771)
!776 = !DILocation(line: 401, column: 4, scope: !771)
!777 = !DILocation(line: 402, column: 19, scope: !778)
!778 = distinct !DILexicalBlock(scope: !771, file: !39, line: 402, column: 12)
!779 = !DILocation(line: 402, column: 12, scope: !778)
!780 = !DILocation(line: 402, column: 38, scope: !778)
!781 = !DILocation(line: 402, column: 12, scope: !771)
!782 = !DILocation(line: 403, column: 8, scope: !778)
!783 = !DILocation(line: 403, column: 4, scope: !778)
!784 = !DILocation(line: 404, column: 19, scope: !785)
!785 = distinct !DILexicalBlock(scope: !778, file: !39, line: 404, column: 12)
!786 = !DILocation(line: 404, column: 12, scope: !785)
!787 = !DILocation(line: 404, column: 39, scope: !785)
!788 = !DILocation(line: 404, column: 12, scope: !778)
!789 = !DILocation(line: 405, column: 8, scope: !785)
!790 = !DILocation(line: 405, column: 4, scope: !785)
!791 = !DILocation(line: 406, column: 19, scope: !792)
!792 = distinct !DILexicalBlock(scope: !785, file: !39, line: 406, column: 12)
!793 = !DILocation(line: 406, column: 12, scope: !792)
!794 = !DILocation(line: 406, column: 35, scope: !792)
!795 = !DILocation(line: 406, column: 12, scope: !785)
!796 = !DILocation(line: 407, column: 8, scope: !792)
!797 = !DILocation(line: 407, column: 4, scope: !792)
!798 = !DILocation(line: 408, column: 19, scope: !799)
!799 = distinct !DILexicalBlock(scope: !792, file: !39, line: 408, column: 12)
!800 = !DILocation(line: 408, column: 12, scope: !799)
!801 = !DILocation(line: 408, column: 38, scope: !799)
!802 = !DILocation(line: 408, column: 12, scope: !792)
!803 = !DILocation(line: 409, column: 8, scope: !799)
!804 = !DILocation(line: 409, column: 4, scope: !799)
!805 = !DILocation(line: 410, column: 19, scope: !806)
!806 = distinct !DILexicalBlock(scope: !799, file: !39, line: 410, column: 12)
!807 = !DILocation(line: 410, column: 12, scope: !806)
!808 = !DILocation(line: 410, column: 38, scope: !806)
!809 = !DILocation(line: 410, column: 12, scope: !799)
!810 = !DILocation(line: 411, column: 8, scope: !806)
!811 = !DILocation(line: 411, column: 4, scope: !806)
!812 = !DILocation(line: 412, column: 19, scope: !813)
!813 = distinct !DILexicalBlock(scope: !806, file: !39, line: 412, column: 12)
!814 = !DILocation(line: 412, column: 12, scope: !813)
!815 = !DILocation(line: 412, column: 34, scope: !813)
!816 = !DILocation(line: 412, column: 12, scope: !806)
!817 = !DILocation(line: 413, column: 8, scope: !813)
!818 = !DILocation(line: 413, column: 4, scope: !813)
!819 = !DILocation(line: 414, column: 19, scope: !820)
!820 = distinct !DILexicalBlock(scope: !813, file: !39, line: 414, column: 12)
!821 = !DILocation(line: 414, column: 12, scope: !820)
!822 = !DILocation(line: 414, column: 39, scope: !820)
!823 = !DILocation(line: 414, column: 12, scope: !813)
!824 = !DILocation(line: 415, column: 8, scope: !820)
!825 = !DILocation(line: 415, column: 4, scope: !820)
!826 = !DILocation(line: 416, column: 19, scope: !827)
!827 = distinct !DILexicalBlock(scope: !820, file: !39, line: 416, column: 12)
!828 = !DILocation(line: 416, column: 12, scope: !827)
!829 = !DILocation(line: 416, column: 34, scope: !827)
!830 = !DILocation(line: 416, column: 12, scope: !820)
!831 = !DILocation(line: 417, column: 8, scope: !827)
!832 = !DILocation(line: 417, column: 4, scope: !827)
!833 = !DILocation(line: 419, column: 4, scope: !827)
!834 = !DILocation(line: 422, column: 7, scope: !835)
!835 = distinct !DILexicalBlock(scope: !748, file: !39, line: 422, column: 7)
!836 = !DILocation(line: 422, column: 7, scope: !748)
!837 = !DILocation(line: 423, column: 25, scope: !835)
!838 = !DILocation(line: 423, column: 24, scope: !835)
!839 = !DILocation(line: 423, column: 21, scope: !835)
!840 = !DILocation(line: 423, column: 4, scope: !835)
!841 = !DILocation(line: 425, column: 24, scope: !835)
!842 = !DILocation(line: 425, column: 21, scope: !835)
!843 = !DILocation(line: 427, column: 2, scope: !748)
!844 = !DILocation(line: 428, column: 18, scope: !708)
!845 = !DILocation(line: 428, column: 16, scope: !708)
!846 = !DILocation(line: 428, column: 36, scope: !708)
!847 = !DILocation(line: 427, column: 2, scope: !848)
!848 = !DILexicalBlockFile(scope: !748, file: !39, discriminator: 1)
!849 = !DILocation(line: 430, column: 16, scope: !708)
!850 = !DILocation(line: 432, column: 7, scope: !708)
!851 = !DILocation(line: 432, column: 2, scope: !708)
!852 = !DILocation(line: 433, column: 1, scope: !708)
!853 = !DILocation(line: 433, column: 1, scope: !854)
!854 = !DILexicalBlockFile(scope: !708, file: !39, discriminator: 1)
