; ModuleID = './[inter]lib--dpkg--buffer.o.i'
source_filename = "./[inter]lib--dpkg--buffer.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.buffer_data = type { %union.anon, i32 }
%union.anon = type { i8* }
%struct.buffer_md5_ctx = type { %struct.MD5Context, i8* }
%struct.MD5Context = type { [4 x i32], i64, [64 x i8] }
%struct.dpkg_error = type { i32, i32, i8* }
%struct.varbuf = type { i64, i64, i8* }

@.str = private unnamed_addr constant [9 x i8] c"buffer.c\00", align 1
@__func__.buffer_digest_update = private unnamed_addr constant [21 x i8] c"buffer_digest_update\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"unknown data type %i\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"unexpected end of file or stream\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"failed to read\00", align 1
@__func__.buffer_read = private unnamed_addr constant [12 x i8] c"buffer_read\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"failed to write\00", align 1
@__func__.buffer_write = private unnamed_addr constant [13 x i8] c"buffer_write\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"failed to seek\00", align 1
@__func__.buffer_skip = private unnamed_addr constant [12 x i8] c"buffer_skip\00", align 1

; Function Attrs: nounwind uwtable
define i64 @buffer_digest(i8*, i8*, i32, i64) #0 !dbg !51 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.buffer_data, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !63, metadata !64), !dbg !65
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !66, metadata !64), !dbg !67
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !68, metadata !64), !dbg !69
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !70, metadata !64), !dbg !71
  call void @llvm.dbg.declare(metadata %struct.buffer_data* %9, metadata !72, metadata !64), !dbg !82
  %11 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %9, i32 0, i32 0, !dbg !83
  %12 = bitcast %union.anon* %11 to i8**, !dbg !84
  %13 = load i8*, i8** %6, align 8, !dbg !85
  store i8* %13, i8** %12, align 8, !dbg !84
  %14 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %9, i32 0, i32 1, !dbg !83
  %15 = load i32, i32* %7, align 4, !dbg !86
  store i32 %15, i32* %14, align 8, !dbg !83
  call void @llvm.dbg.declare(metadata i64* %10, metadata !87, metadata !64), !dbg !88
  %16 = call i64 @buffer_digest_init(%struct.buffer_data* %9), !dbg !89
  %17 = load i8*, i8** %5, align 8, !dbg !90
  %18 = load i64, i64* %8, align 8, !dbg !91
  %19 = call i64 @buffer_digest_update(%struct.buffer_data* %9, i8* %17, i64 %18), !dbg !92
  store i64 %19, i64* %10, align 8, !dbg !93
  %20 = call i64 @buffer_digest_done(%struct.buffer_data* %9), !dbg !94
  %21 = load i64, i64* %10, align 8, !dbg !95
  ret i64 %21, !dbg !96
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i64 @buffer_digest_init(%struct.buffer_data*) #0 !dbg !97 {
  %2 = alloca %struct.buffer_data*, align 8
  store %struct.buffer_data* %0, %struct.buffer_data** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.buffer_data** %2, metadata !101, metadata !64), !dbg !102
  %3 = load %struct.buffer_data*, %struct.buffer_data** %2, align 8, !dbg !103
  %4 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %3, i32 0, i32 1, !dbg !104
  %5 = load i32, i32* %4, align 8, !dbg !104
  switch i32 %5, label %9 [
    i32 4, label %6
    i32 5, label %7
  ], !dbg !105

; <label>:6:                                      ; preds = %1
  br label %9, !dbg !106

; <label>:7:                                      ; preds = %1
  %8 = load %struct.buffer_data*, %struct.buffer_data** %2, align 8, !dbg !108
  call void @buffer_md5_init(%struct.buffer_data* %8), !dbg !109
  br label %9, !dbg !110

; <label>:9:                                      ; preds = %1, %7, %6
  ret i64 0, !dbg !111
}

; Function Attrs: nounwind uwtable
define internal i64 @buffer_digest_update(%struct.buffer_data*, i8*, i64) #0 !dbg !112 {
  %4 = alloca %struct.buffer_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.buffer_data* %0, %struct.buffer_data** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.buffer_data** %4, metadata !115, metadata !64), !dbg !116
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !117, metadata !64), !dbg !118
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !119, metadata !64), !dbg !120
  call void @llvm.dbg.declare(metadata i64* %7, metadata !121, metadata !64), !dbg !122
  %8 = load i64, i64* %6, align 8, !dbg !123
  store i64 %8, i64* %7, align 8, !dbg !122
  %9 = load %struct.buffer_data*, %struct.buffer_data** %4, align 8, !dbg !124
  %10 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %9, i32 0, i32 1, !dbg !125
  %11 = load i32, i32* %10, align 8, !dbg !125
  switch i32 %11, label %22 [
    i32 4, label %12
    i32 5, label %13
  ], !dbg !126

; <label>:12:                                     ; preds = %3
  br label %26, !dbg !127

; <label>:13:                                     ; preds = %3
  %14 = load %struct.buffer_data*, %struct.buffer_data** %4, align 8, !dbg !129
  %15 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %14, i32 0, i32 0, !dbg !130
  %16 = bitcast %union.anon* %15 to i8**, !dbg !131
  %17 = load i8*, i8** %16, align 8, !dbg !131
  %18 = bitcast i8* %17 to %struct.buffer_md5_ctx*, !dbg !132
  %19 = getelementptr inbounds %struct.buffer_md5_ctx, %struct.buffer_md5_ctx* %18, i32 0, i32 0, !dbg !133
  %20 = load i8*, i8** %5, align 8, !dbg !134
  %21 = load i64, i64* %6, align 8, !dbg !135
  call void @MD5Update(%struct.MD5Context* %19, i8* %20, i64 %21), !dbg !136
  br label %26, !dbg !137

; <label>:22:                                     ; preds = %3
  %23 = load %struct.buffer_data*, %struct.buffer_data** %4, align 8, !dbg !138
  %24 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %23, i32 0, i32 1, !dbg !139
  %25 = load i32, i32* %24, align 8, !dbg !139
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.buffer_digest_update, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 %25) #6, !dbg !140
  unreachable, !dbg !140

; <label>:26:                                     ; preds = %13, %12
  %27 = load i64, i64* %7, align 8, !dbg !141
  ret i64 %27, !dbg !142
}

; Function Attrs: nounwind uwtable
define internal i64 @buffer_digest_done(%struct.buffer_data*) #0 !dbg !143 {
  %2 = alloca %struct.buffer_data*, align 8
  store %struct.buffer_data* %0, %struct.buffer_data** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.buffer_data** %2, metadata !144, metadata !64), !dbg !145
  %3 = load %struct.buffer_data*, %struct.buffer_data** %2, align 8, !dbg !146
  %4 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %3, i32 0, i32 1, !dbg !147
  %5 = load i32, i32* %4, align 8, !dbg !147
  switch i32 %5, label %9 [
    i32 4, label %6
    i32 5, label %7
  ], !dbg !148

; <label>:6:                                      ; preds = %1
  br label %9, !dbg !149

; <label>:7:                                      ; preds = %1
  %8 = load %struct.buffer_data*, %struct.buffer_data** %2, align 8, !dbg !151
  call void @buffer_md5_done(%struct.buffer_data* %8), !dbg !152
  br label %9, !dbg !153

; <label>:9:                                      ; preds = %1, %7, %6
  ret i64 0, !dbg !154
}

; Function Attrs: nounwind uwtable
define i64 @buffer_copy_IntInt(i32, i32, i8*, i32, i32, i32, i64, %struct.dpkg_error*) #0 !dbg !155 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.dpkg_error*, align 8
  %17 = alloca %struct.buffer_data, align 8
  %18 = alloca %struct.buffer_data, align 8
  %19 = alloca %struct.buffer_data, align 8
  store i32 %0, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !164, metadata !64), !dbg !165
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !166, metadata !64), !dbg !167
  store i8* %2, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !168, metadata !64), !dbg !169
  store i32 %3, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !170, metadata !64), !dbg !171
  store i32 %4, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !172, metadata !64), !dbg !173
  store i32 %5, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !174, metadata !64), !dbg !175
  store i64 %6, i64* %15, align 8
  call void @llvm.dbg.declare(metadata i64* %15, metadata !176, metadata !64), !dbg !177
  store %struct.dpkg_error* %7, %struct.dpkg_error** %16, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error** %16, metadata !178, metadata !64), !dbg !179
  call void @llvm.dbg.declare(metadata %struct.buffer_data* %17, metadata !180, metadata !64), !dbg !181
  %20 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %17, i32 0, i32 0, !dbg !182
  %21 = bitcast %union.anon* %20 to i32*, !dbg !183
  %22 = load i32, i32* %9, align 4, !dbg !184
  store i32 %22, i32* %21, align 8, !dbg !183
  %23 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %17, i32 0, i32 1, !dbg !182
  %24 = load i32, i32* %10, align 4, !dbg !185
  store i32 %24, i32* %23, align 8, !dbg !182
  call void @llvm.dbg.declare(metadata %struct.buffer_data* %18, metadata !186, metadata !64), !dbg !187
  %25 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %18, i32 0, i32 0, !dbg !188
  %26 = bitcast %union.anon* %25 to i8**, !dbg !189
  %27 = load i8*, i8** %11, align 8, !dbg !190
  store i8* %27, i8** %26, align 8, !dbg !189
  %28 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %18, i32 0, i32 1, !dbg !188
  %29 = load i32, i32* %12, align 4, !dbg !191
  store i32 %29, i32* %28, align 8, !dbg !188
  call void @llvm.dbg.declare(metadata %struct.buffer_data* %19, metadata !192, metadata !64), !dbg !193
  %30 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %19, i32 0, i32 0, !dbg !194
  %31 = bitcast %union.anon* %30 to i32*, !dbg !195
  %32 = load i32, i32* %13, align 4, !dbg !196
  store i32 %32, i32* %31, align 8, !dbg !195
  %33 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %19, i32 0, i32 1, !dbg !194
  %34 = load i32, i32* %14, align 4, !dbg !197
  store i32 %34, i32* %33, align 8, !dbg !194
  %35 = load i64, i64* %15, align 8, !dbg !198
  %36 = load %struct.dpkg_error*, %struct.dpkg_error** %16, align 8, !dbg !199
  %37 = call i64 @buffer_copy(%struct.buffer_data* %17, %struct.buffer_data* %18, %struct.buffer_data* %19, i64 %35, %struct.dpkg_error* %36), !dbg !200
  ret i64 %37, !dbg !201
}

; Function Attrs: nounwind uwtable
define internal i64 @buffer_copy(%struct.buffer_data*, %struct.buffer_data*, %struct.buffer_data*, i64, %struct.dpkg_error*) #0 !dbg !202 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.buffer_data*, align 8
  %8 = alloca %struct.buffer_data*, align 8
  %9 = alloca %struct.buffer_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dpkg_error*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.buffer_data* %0, %struct.buffer_data** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.buffer_data** %7, metadata !205, metadata !64), !dbg !206
  store %struct.buffer_data* %1, %struct.buffer_data** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.buffer_data** %8, metadata !207, metadata !64), !dbg !208
  store %struct.buffer_data* %2, %struct.buffer_data** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.buffer_data** %9, metadata !209, metadata !64), !dbg !210
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !211, metadata !64), !dbg !212
  store %struct.dpkg_error* %4, %struct.dpkg_error** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error** %11, metadata !213, metadata !64), !dbg !214
  call void @llvm.dbg.declare(metadata i8** %12, metadata !215, metadata !64), !dbg !216
  call void @llvm.dbg.declare(metadata i32* %13, metadata !217, metadata !64), !dbg !218
  store i32 32768, i32* %13, align 4, !dbg !218
  call void @llvm.dbg.declare(metadata i64* %14, metadata !219, metadata !64), !dbg !220
  store i64 0, i64* %14, align 8, !dbg !220
  call void @llvm.dbg.declare(metadata i64* %15, metadata !221, metadata !64), !dbg !222
  store i64 0, i64* %15, align 8, !dbg !222
  call void @llvm.dbg.declare(metadata i64* %16, metadata !223, metadata !64), !dbg !224
  store i64 0, i64* %16, align 8, !dbg !224
  call void @llvm.dbg.declare(metadata i64* %17, metadata !225, metadata !64), !dbg !226
  store i64 0, i64* %17, align 8, !dbg !226
  %18 = load i64, i64* %10, align 8, !dbg !227
  %19 = icmp ne i64 %18, -1, !dbg !229
  br i1 %19, label %20, label %28, !dbg !230

; <label>:20:                                     ; preds = %5
  %21 = load i64, i64* %10, align 8, !dbg !231
  %22 = load i32, i32* %13, align 4, !dbg !233
  %23 = sext i32 %22 to i64, !dbg !233
  %24 = icmp slt i64 %21, %23, !dbg !234
  br i1 %24, label %25, label %28, !dbg !235

; <label>:25:                                     ; preds = %20
  %26 = load i64, i64* %10, align 8, !dbg !236
  %27 = trunc i64 %26 to i32, !dbg !236
  store i32 %27, i32* %13, align 4, !dbg !237
  br label %28, !dbg !238

; <label>:28:                                     ; preds = %25, %20, %5
  %29 = load i32, i32* %13, align 4, !dbg !239
  %30 = icmp eq i32 %29, 0, !dbg !241
  br i1 %30, label %31, label %32, !dbg !242

; <label>:31:                                     ; preds = %28
  store i8* null, i8** %12, align 8, !dbg !243
  br label %36, !dbg !244

; <label>:32:                                     ; preds = %28
  %33 = load i32, i32* %13, align 4, !dbg !245
  %34 = sext i32 %33 to i64, !dbg !245
  %35 = call i8* @m_malloc(i64 %34), !dbg !246
  store i8* %35, i8** %12, align 8, !dbg !247
  br label %36

; <label>:36:                                     ; preds = %32, %31
  %37 = load %struct.buffer_data*, %struct.buffer_data** %8, align 8, !dbg !248
  %38 = call i64 @buffer_digest_init(%struct.buffer_data* %37), !dbg !249
  br label %39, !dbg !250

; <label>:39:                                     ; preds = %91, %36
  %40 = load i32, i32* %13, align 4, !dbg !251
  %41 = icmp sgt i32 %40, 0, !dbg !253
  br i1 %41, label %42, label %95, !dbg !254

; <label>:42:                                     ; preds = %39
  %43 = load %struct.buffer_data*, %struct.buffer_data** %7, align 8, !dbg !255
  %44 = load i8*, i8** %12, align 8, !dbg !257
  %45 = load i32, i32* %13, align 4, !dbg !258
  %46 = sext i32 %45 to i64, !dbg !258
  %47 = load %struct.dpkg_error*, %struct.dpkg_error** %11, align 8, !dbg !259
  %48 = call i64 @buffer_read(%struct.buffer_data* %43, i8* %44, i64 %46, %struct.dpkg_error* %47), !dbg !260
  store i64 %48, i64* %14, align 8, !dbg !261
  %49 = load i64, i64* %14, align 8, !dbg !262
  %50 = icmp slt i64 %49, 0, !dbg !264
  br i1 %50, label %51, label %52, !dbg !265

; <label>:51:                                     ; preds = %42
  br label %95, !dbg !266

; <label>:52:                                     ; preds = %42
  %53 = load i64, i64* %14, align 8, !dbg !267
  %54 = icmp eq i64 %53, 0, !dbg !269
  br i1 %54, label %55, label %56, !dbg !270

; <label>:55:                                     ; preds = %52
  br label %95, !dbg !271

; <label>:56:                                     ; preds = %52
  %57 = load i64, i64* %14, align 8, !dbg !272
  %58 = load i64, i64* %16, align 8, !dbg !273
  %59 = add nsw i64 %58, %57, !dbg !273
  store i64 %59, i64* %16, align 8, !dbg !273
  %60 = load i64, i64* %10, align 8, !dbg !274
  %61 = icmp ne i64 %60, -1, !dbg !276
  br i1 %61, label %62, label %74, !dbg !277

; <label>:62:                                     ; preds = %56
  %63 = load i64, i64* %14, align 8, !dbg !278
  %64 = load i64, i64* %10, align 8, !dbg !280
  %65 = sub nsw i64 %64, %63, !dbg !280
  store i64 %65, i64* %10, align 8, !dbg !280
  %66 = load i64, i64* %10, align 8, !dbg !281
  %67 = load i32, i32* %13, align 4, !dbg !283
  %68 = sext i32 %67 to i64, !dbg !283
  %69 = icmp slt i64 %66, %68, !dbg !284
  br i1 %69, label %70, label %73, !dbg !285

; <label>:70:                                     ; preds = %62
  %71 = load i64, i64* %10, align 8, !dbg !286
  %72 = trunc i64 %71 to i32, !dbg !286
  store i32 %72, i32* %13, align 4, !dbg !287
  br label %73, !dbg !288

; <label>:73:                                     ; preds = %70, %62
  br label %74, !dbg !289

; <label>:74:                                     ; preds = %73, %56
  %75 = load %struct.buffer_data*, %struct.buffer_data** %8, align 8, !dbg !290
  %76 = load i8*, i8** %12, align 8, !dbg !291
  %77 = load i64, i64* %14, align 8, !dbg !292
  %78 = call i64 @buffer_digest_update(%struct.buffer_data* %75, i8* %76, i64 %77), !dbg !293
  %79 = load %struct.buffer_data*, %struct.buffer_data** %9, align 8, !dbg !294
  %80 = load i8*, i8** %12, align 8, !dbg !295
  %81 = load i64, i64* %14, align 8, !dbg !296
  %82 = load %struct.dpkg_error*, %struct.dpkg_error** %11, align 8, !dbg !297
  %83 = call i64 @buffer_write(%struct.buffer_data* %79, i8* %80, i64 %81, %struct.dpkg_error* %82), !dbg !298
  store i64 %83, i64* %15, align 8, !dbg !299
  %84 = load i64, i64* %15, align 8, !dbg !300
  %85 = icmp slt i64 %84, 0, !dbg !302
  br i1 %85, label %86, label %87, !dbg !303

; <label>:86:                                     ; preds = %74
  br label %95, !dbg !304

; <label>:87:                                     ; preds = %74
  %88 = load i64, i64* %15, align 8, !dbg !305
  %89 = icmp eq i64 %88, 0, !dbg !307
  br i1 %89, label %90, label %91, !dbg !308

; <label>:90:                                     ; preds = %87
  br label %95, !dbg !309

; <label>:91:                                     ; preds = %87
  %92 = load i64, i64* %15, align 8, !dbg !310
  %93 = load i64, i64* %17, align 8, !dbg !311
  %94 = add nsw i64 %93, %92, !dbg !311
  store i64 %94, i64* %17, align 8, !dbg !311
  br label %39, !dbg !312, !llvm.loop !314

; <label>:95:                                     ; preds = %90, %86, %55, %51, %39
  %96 = load %struct.buffer_data*, %struct.buffer_data** %8, align 8, !dbg !315
  %97 = call i64 @buffer_digest_done(%struct.buffer_data* %96), !dbg !316
  %98 = load i8*, i8** %12, align 8, !dbg !317
  call void @free(i8* %98) #7, !dbg !318
  %99 = load i64, i64* %14, align 8, !dbg !319
  %100 = icmp slt i64 %99, 0, !dbg !321
  br i1 %100, label %104, label %101, !dbg !322

; <label>:101:                                    ; preds = %95
  %102 = load i64, i64* %15, align 8, !dbg !323
  %103 = icmp slt i64 %102, 0, !dbg !325
  br i1 %103, label %104, label %105, !dbg !326

; <label>:104:                                    ; preds = %101, %95
  store i64 -1, i64* %6, align 8, !dbg !327
  br label %115, !dbg !327

; <label>:105:                                    ; preds = %101
  %106 = load i64, i64* %10, align 8, !dbg !328
  %107 = icmp sgt i64 %106, 0, !dbg !330
  br i1 %107, label %108, label %113, !dbg !331

; <label>:108:                                    ; preds = %105
  %109 = load %struct.dpkg_error*, %struct.dpkg_error** %11, align 8, !dbg !332
  %110 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0)) #7, !dbg !333
  %111 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %109, i8* %110), !dbg !334
  %112 = sext i32 %111 to i64, !dbg !336
  store i64 %112, i64* %6, align 8, !dbg !337
  br label %115, !dbg !337

; <label>:113:                                    ; preds = %105
  %114 = load i64, i64* %16, align 8, !dbg !338
  store i64 %114, i64* %6, align 8, !dbg !339
  br label %115, !dbg !339

; <label>:115:                                    ; preds = %113, %108, %104
  %116 = load i64, i64* %6, align 8, !dbg !340
  ret i64 %116, !dbg !340
}

; Function Attrs: nounwind uwtable
define i64 @buffer_copy_IntPtr(i32, i32, i8*, i32, i8*, i32, i64, %struct.dpkg_error*) #0 !dbg !341 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.dpkg_error*, align 8
  %17 = alloca %struct.buffer_data, align 8
  %18 = alloca %struct.buffer_data, align 8
  %19 = alloca %struct.buffer_data, align 8
  store i32 %0, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !344, metadata !64), !dbg !345
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !346, metadata !64), !dbg !347
  store i8* %2, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !348, metadata !64), !dbg !349
  store i32 %3, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !350, metadata !64), !dbg !351
  store i8* %4, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !352, metadata !64), !dbg !353
  store i32 %5, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !354, metadata !64), !dbg !355
  store i64 %6, i64* %15, align 8
  call void @llvm.dbg.declare(metadata i64* %15, metadata !356, metadata !64), !dbg !357
  store %struct.dpkg_error* %7, %struct.dpkg_error** %16, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error** %16, metadata !358, metadata !64), !dbg !359
  call void @llvm.dbg.declare(metadata %struct.buffer_data* %17, metadata !360, metadata !64), !dbg !361
  %20 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %17, i32 0, i32 0, !dbg !362
  %21 = bitcast %union.anon* %20 to i32*, !dbg !363
  %22 = load i32, i32* %9, align 4, !dbg !364
  store i32 %22, i32* %21, align 8, !dbg !363
  %23 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %17, i32 0, i32 1, !dbg !362
  %24 = load i32, i32* %10, align 4, !dbg !365
  store i32 %24, i32* %23, align 8, !dbg !362
  call void @llvm.dbg.declare(metadata %struct.buffer_data* %18, metadata !366, metadata !64), !dbg !367
  %25 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %18, i32 0, i32 0, !dbg !368
  %26 = bitcast %union.anon* %25 to i8**, !dbg !369
  %27 = load i8*, i8** %11, align 8, !dbg !370
  store i8* %27, i8** %26, align 8, !dbg !369
  %28 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %18, i32 0, i32 1, !dbg !368
  %29 = load i32, i32* %12, align 4, !dbg !371
  store i32 %29, i32* %28, align 8, !dbg !368
  call void @llvm.dbg.declare(metadata %struct.buffer_data* %19, metadata !372, metadata !64), !dbg !373
  %30 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %19, i32 0, i32 0, !dbg !374
  %31 = bitcast %union.anon* %30 to i8**, !dbg !375
  %32 = load i8*, i8** %13, align 8, !dbg !376
  store i8* %32, i8** %31, align 8, !dbg !375
  %33 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %19, i32 0, i32 1, !dbg !374
  %34 = load i32, i32* %14, align 4, !dbg !377
  store i32 %34, i32* %33, align 8, !dbg !374
  %35 = load i64, i64* %15, align 8, !dbg !378
  %36 = load %struct.dpkg_error*, %struct.dpkg_error** %16, align 8, !dbg !379
  %37 = call i64 @buffer_copy(%struct.buffer_data* %17, %struct.buffer_data* %18, %struct.buffer_data* %19, i64 %35, %struct.dpkg_error* %36), !dbg !380
  ret i64 %37, !dbg !381
}

; Function Attrs: nounwind uwtable
define i64 @buffer_skip_Int(i32, i32, i64, %struct.dpkg_error*) #0 !dbg !382 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.dpkg_error*, align 8
  %9 = alloca %struct.buffer_data, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !385, metadata !64), !dbg !386
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !387, metadata !64), !dbg !388
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !389, metadata !64), !dbg !390
  store %struct.dpkg_error* %3, %struct.dpkg_error** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error** %8, metadata !391, metadata !64), !dbg !392
  call void @llvm.dbg.declare(metadata %struct.buffer_data* %9, metadata !393, metadata !64), !dbg !394
  %10 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %9, i32 0, i32 0, !dbg !395
  %11 = bitcast %union.anon* %10 to i32*, !dbg !396
  %12 = load i32, i32* %5, align 4, !dbg !397
  store i32 %12, i32* %11, align 8, !dbg !396
  %13 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %9, i32 0, i32 1, !dbg !395
  %14 = load i32, i32* %6, align 4, !dbg !398
  store i32 %14, i32* %13, align 8, !dbg !395
  %15 = load i64, i64* %7, align 8, !dbg !399
  %16 = load %struct.dpkg_error*, %struct.dpkg_error** %8, align 8, !dbg !400
  %17 = call i64 @buffer_skip(%struct.buffer_data* %9, i64 %15, %struct.dpkg_error* %16), !dbg !401
  ret i64 %17, !dbg !402
}

; Function Attrs: nounwind uwtable
define internal i64 @buffer_skip(%struct.buffer_data*, i64, %struct.dpkg_error*) #0 !dbg !403 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.buffer_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dpkg_error*, align 8
  %8 = alloca %struct.buffer_data, align 8
  %9 = alloca %struct.buffer_data, align 8
  store %struct.buffer_data* %0, %struct.buffer_data** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.buffer_data** %5, metadata !406, metadata !64), !dbg !407
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !408, metadata !64), !dbg !409
  store %struct.dpkg_error* %2, %struct.dpkg_error** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error** %7, metadata !410, metadata !64), !dbg !411
  call void @llvm.dbg.declare(metadata %struct.buffer_data* %8, metadata !412, metadata !64), !dbg !413
  call void @llvm.dbg.declare(metadata %struct.buffer_data* %9, metadata !414, metadata !64), !dbg !415
  %10 = load %struct.buffer_data*, %struct.buffer_data** %5, align 8, !dbg !416
  %11 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %10, i32 0, i32 1, !dbg !417
  %12 = load i32, i32* %11, align 8, !dbg !417
  switch i32 %12, label %33 [
    i32 0, label %13
  ], !dbg !418

; <label>:13:                                     ; preds = %3
  %14 = load %struct.buffer_data*, %struct.buffer_data** %5, align 8, !dbg !419
  %15 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %14, i32 0, i32 0, !dbg !422
  %16 = bitcast %union.anon* %15 to i32*, !dbg !423
  %17 = load i32, i32* %16, align 8, !dbg !423
  %18 = load i64, i64* %6, align 8, !dbg !424
  %19 = call i64 @lseek(i32 %17, i64 %18, i32 1) #7, !dbg !425
  %20 = icmp ne i64 %19, -1, !dbg !426
  br i1 %20, label %21, label %23, !dbg !427

; <label>:21:                                     ; preds = %13
  %22 = load i64, i64* %6, align 8, !dbg !428
  store i64 %22, i64* %4, align 8, !dbg !429
  br label %48, !dbg !429

; <label>:23:                                     ; preds = %13
  %24 = call i32* @__errno_location() #1, !dbg !430
  %25 = load i32, i32* %24, align 4, !dbg !432
  %26 = icmp ne i32 %25, 29, !dbg !433
  br i1 %26, label %27, label %32, !dbg !434

; <label>:27:                                     ; preds = %23
  %28 = load %struct.dpkg_error*, %struct.dpkg_error** %7, align 8, !dbg !435
  %29 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !436
  %30 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_errno(%struct.dpkg_error* %28, i8* %29), !dbg !437
  %31 = sext i32 %30 to i64, !dbg !439
  store i64 %31, i64* %4, align 8, !dbg !440
  br label %48, !dbg !440

; <label>:32:                                     ; preds = %23
  br label %37, !dbg !441

; <label>:33:                                     ; preds = %3
  %34 = load %struct.buffer_data*, %struct.buffer_data** %5, align 8, !dbg !442
  %35 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %34, i32 0, i32 1, !dbg !443
  %36 = load i32, i32* %35, align 8, !dbg !443
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 274, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.buffer_skip, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 %36) #6, !dbg !444
  unreachable, !dbg !444

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %8, i32 0, i32 1, !dbg !445
  store i32 3, i32* %38, align 8, !dbg !446
  %39 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %8, i32 0, i32 0, !dbg !447
  %40 = bitcast %union.anon* %39 to i8**, !dbg !448
  store i8* null, i8** %40, align 8, !dbg !449
  %41 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %9, i32 0, i32 1, !dbg !450
  store i32 4, i32* %41, align 8, !dbg !451
  %42 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %9, i32 0, i32 0, !dbg !452
  %43 = bitcast %union.anon* %42 to i8**, !dbg !453
  store i8* null, i8** %43, align 8, !dbg !454
  %44 = load %struct.buffer_data*, %struct.buffer_data** %5, align 8, !dbg !455
  %45 = load i64, i64* %6, align 8, !dbg !456
  %46 = load %struct.dpkg_error*, %struct.dpkg_error** %7, align 8, !dbg !457
  %47 = call i64 @buffer_copy(%struct.buffer_data* %44, %struct.buffer_data* %9, %struct.buffer_data* %8, i64 %45, %struct.dpkg_error* %46), !dbg !458
  store i64 %47, i64* %4, align 8, !dbg !459
  br label %48, !dbg !459

; <label>:48:                                     ; preds = %37, %27, %21
  %49 = load i64, i64* %4, align 8, !dbg !460
  ret i64 %49, !dbg !460
}

; Function Attrs: nounwind uwtable
define internal void @buffer_md5_init(%struct.buffer_data*) #0 !dbg !461 {
  %2 = alloca %struct.buffer_data*, align 8
  %3 = alloca %struct.buffer_md5_ctx*, align 8
  store %struct.buffer_data* %0, %struct.buffer_data** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.buffer_data** %2, metadata !464, metadata !64), !dbg !465
  call void @llvm.dbg.declare(metadata %struct.buffer_md5_ctx** %3, metadata !466, metadata !64), !dbg !467
  %4 = call i8* @m_malloc(i64 96), !dbg !468
  %5 = bitcast i8* %4 to %struct.buffer_md5_ctx*, !dbg !468
  store %struct.buffer_md5_ctx* %5, %struct.buffer_md5_ctx** %3, align 8, !dbg !469
  %6 = load %struct.buffer_data*, %struct.buffer_data** %2, align 8, !dbg !470
  %7 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %6, i32 0, i32 0, !dbg !471
  %8 = bitcast %union.anon* %7 to i8**, !dbg !472
  %9 = load i8*, i8** %8, align 8, !dbg !472
  %10 = load %struct.buffer_md5_ctx*, %struct.buffer_md5_ctx** %3, align 8, !dbg !473
  %11 = getelementptr inbounds %struct.buffer_md5_ctx, %struct.buffer_md5_ctx* %10, i32 0, i32 1, !dbg !474
  store i8* %9, i8** %11, align 8, !dbg !475
  %12 = load %struct.buffer_md5_ctx*, %struct.buffer_md5_ctx** %3, align 8, !dbg !476
  %13 = bitcast %struct.buffer_md5_ctx* %12 to i8*, !dbg !476
  %14 = load %struct.buffer_data*, %struct.buffer_data** %2, align 8, !dbg !477
  %15 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %14, i32 0, i32 0, !dbg !478
  %16 = bitcast %union.anon* %15 to i8**, !dbg !479
  store i8* %13, i8** %16, align 8, !dbg !480
  %17 = load %struct.buffer_md5_ctx*, %struct.buffer_md5_ctx** %3, align 8, !dbg !481
  %18 = getelementptr inbounds %struct.buffer_md5_ctx, %struct.buffer_md5_ctx* %17, i32 0, i32 0, !dbg !482
  call void @MD5Init(%struct.MD5Context* %18), !dbg !483
  ret void, !dbg !484
}

declare i8* @m_malloc(i64) #2

declare void @MD5Init(%struct.MD5Context*) #2

declare void @MD5Update(%struct.MD5Context*, i8*, i64) #2

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @buffer_md5_done(%struct.buffer_data*) #0 !dbg !485 {
  %2 = alloca %struct.buffer_data*, align 8
  %3 = alloca %struct.buffer_md5_ctx*, align 8
  %4 = alloca [16 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.buffer_data* %0, %struct.buffer_data** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.buffer_data** %2, metadata !486, metadata !64), !dbg !487
  call void @llvm.dbg.declare(metadata %struct.buffer_md5_ctx** %3, metadata !488, metadata !64), !dbg !489
  call void @llvm.dbg.declare(metadata [16 x i8]* %4, metadata !490, metadata !64), !dbg !494
  call void @llvm.dbg.declare(metadata i8** %5, metadata !495, metadata !64), !dbg !497
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 0, !dbg !498
  store i8* %8, i8** %5, align 8, !dbg !497
  call void @llvm.dbg.declare(metadata i8** %6, metadata !499, metadata !64), !dbg !500
  call void @llvm.dbg.declare(metadata i32* %7, metadata !501, metadata !64), !dbg !502
  %9 = load %struct.buffer_data*, %struct.buffer_data** %2, align 8, !dbg !503
  %10 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %9, i32 0, i32 0, !dbg !504
  %11 = bitcast %union.anon* %10 to i8**, !dbg !505
  %12 = load i8*, i8** %11, align 8, !dbg !505
  %13 = bitcast i8* %12 to %struct.buffer_md5_ctx*, !dbg !506
  store %struct.buffer_md5_ctx* %13, %struct.buffer_md5_ctx** %3, align 8, !dbg !507
  %14 = load %struct.buffer_md5_ctx*, %struct.buffer_md5_ctx** %3, align 8, !dbg !508
  %15 = getelementptr inbounds %struct.buffer_md5_ctx, %struct.buffer_md5_ctx* %14, i32 0, i32 1, !dbg !509
  %16 = load i8*, i8** %15, align 8, !dbg !509
  store i8* %16, i8** %6, align 8, !dbg !510
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 0, !dbg !511
  %18 = load %struct.buffer_md5_ctx*, %struct.buffer_md5_ctx** %3, align 8, !dbg !512
  %19 = getelementptr inbounds %struct.buffer_md5_ctx, %struct.buffer_md5_ctx* %18, i32 0, i32 0, !dbg !513
  call void @MD5Final(i8* %17, %struct.MD5Context* %19), !dbg !514
  store i32 0, i32* %7, align 4, !dbg !515
  br label %20, !dbg !517

; <label>:20:                                     ; preds = %32, %1
  %21 = load i32, i32* %7, align 4, !dbg !518
  %22 = icmp slt i32 %21, 16, !dbg !521
  br i1 %22, label %23, label %35, !dbg !522

; <label>:23:                                     ; preds = %20
  %24 = load i8*, i8** %6, align 8, !dbg !523
  %25 = load i8*, i8** %5, align 8, !dbg !525
  %26 = getelementptr inbounds i8, i8* %25, i32 1, !dbg !525
  store i8* %26, i8** %5, align 8, !dbg !525
  %27 = load i8, i8* %25, align 1, !dbg !526
  %28 = zext i8 %27 to i32, !dbg !526
  %29 = call i32 (i8*, i8*, ...) @sprintf(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %28) #7, !dbg !527
  %30 = load i8*, i8** %6, align 8, !dbg !528
  %31 = getelementptr inbounds i8, i8* %30, i64 2, !dbg !528
  store i8* %31, i8** %6, align 8, !dbg !528
  br label %32, !dbg !529

; <label>:32:                                     ; preds = %23
  %33 = load i32, i32* %7, align 4, !dbg !530
  %34 = add nsw i32 %33, 1, !dbg !530
  store i32 %34, i32* %7, align 4, !dbg !530
  br label %20, !dbg !532, !llvm.loop !533

; <label>:35:                                     ; preds = %20
  %36 = load i8*, i8** %6, align 8, !dbg !535
  store i8 0, i8* %36, align 1, !dbg !536
  %37 = load %struct.buffer_md5_ctx*, %struct.buffer_md5_ctx** %3, align 8, !dbg !537
  %38 = bitcast %struct.buffer_md5_ctx* %37 to i8*, !dbg !537
  call void @free(i8* %38) #7, !dbg !538
  ret void, !dbg !539
}

declare void @MD5Final(i8*, %struct.MD5Context*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define internal i64 @buffer_read(%struct.buffer_data*, i8*, i64, %struct.dpkg_error*) #0 !dbg !540 {
  %5 = alloca %struct.buffer_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dpkg_error*, align 8
  %9 = alloca i64, align 8
  store %struct.buffer_data* %0, %struct.buffer_data** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.buffer_data** %5, metadata !543, metadata !64), !dbg !544
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !545, metadata !64), !dbg !546
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !547, metadata !64), !dbg !548
  store %struct.dpkg_error* %3, %struct.dpkg_error** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error** %8, metadata !549, metadata !64), !dbg !550
  call void @llvm.dbg.declare(metadata i64* %9, metadata !551, metadata !64), !dbg !552
  %10 = load %struct.buffer_data*, %struct.buffer_data** %5, align 8, !dbg !553
  %11 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %10, i32 0, i32 1, !dbg !554
  %12 = load i32, i32* %11, align 8, !dbg !554
  switch i32 %12, label %28 [
    i32 0, label %13
  ], !dbg !555

; <label>:13:                                     ; preds = %4
  %14 = load %struct.buffer_data*, %struct.buffer_data** %5, align 8, !dbg !556
  %15 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %14, i32 0, i32 0, !dbg !558
  %16 = bitcast %union.anon* %15 to i32*, !dbg !559
  %17 = load i32, i32* %16, align 8, !dbg !559
  %18 = load i8*, i8** %6, align 8, !dbg !560
  %19 = load i64, i64* %7, align 8, !dbg !561
  %20 = call i64 @fd_read(i32 %17, i8* %18, i64 %19), !dbg !562
  store i64 %20, i64* %9, align 8, !dbg !563
  %21 = load i64, i64* %9, align 8, !dbg !564
  %22 = icmp slt i64 %21, 0, !dbg !566
  br i1 %22, label %23, label %27, !dbg !567

; <label>:23:                                     ; preds = %13
  %24 = load %struct.dpkg_error*, %struct.dpkg_error** %8, align 8, !dbg !568
  %25 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0)) #7, !dbg !569
  %26 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_errno(%struct.dpkg_error* %24, i8* %25), !dbg !570
  br label %27, !dbg !572

; <label>:27:                                     ; preds = %23, %13
  br label %32, !dbg !573

; <label>:28:                                     ; preds = %4
  %29 = load %struct.buffer_data*, %struct.buffer_data** %5, align 8, !dbg !574
  %30 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %29, i32 0, i32 1, !dbg !575
  %31 = load i32, i32* %30, align 8, !dbg !575
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 157, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.buffer_read, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 %31) #6, !dbg !576
  unreachable, !dbg !576

; <label>:32:                                     ; preds = %27
  %33 = load i64, i64* %9, align 8, !dbg !577
  ret i64 %33, !dbg !578
}

; Function Attrs: nounwind uwtable
define internal i64 @buffer_write(%struct.buffer_data*, i8*, i64, %struct.dpkg_error*) #0 !dbg !579 {
  %5 = alloca %struct.buffer_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dpkg_error*, align 8
  %9 = alloca i64, align 8
  store %struct.buffer_data* %0, %struct.buffer_data** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.buffer_data** %5, metadata !582, metadata !64), !dbg !583
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !584, metadata !64), !dbg !585
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !586, metadata !64), !dbg !587
  store %struct.dpkg_error* %3, %struct.dpkg_error** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error** %8, metadata !588, metadata !64), !dbg !589
  call void @llvm.dbg.declare(metadata i64* %9, metadata !590, metadata !64), !dbg !591
  %10 = load i64, i64* %7, align 8, !dbg !592
  store i64 %10, i64* %9, align 8, !dbg !591
  %11 = load %struct.buffer_data*, %struct.buffer_data** %5, align 8, !dbg !593
  %12 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %11, i32 0, i32 1, !dbg !594
  %13 = load i32, i32* %12, align 8, !dbg !594
  switch i32 %13, label %38 [
    i32 1, label %14
    i32 2, label %22
    i32 3, label %37
  ], !dbg !595

; <label>:14:                                     ; preds = %4
  %15 = load %struct.buffer_data*, %struct.buffer_data** %5, align 8, !dbg !596
  %16 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %15, i32 0, i32 0, !dbg !598
  %17 = bitcast %union.anon* %16 to i8**, !dbg !599
  %18 = load i8*, i8** %17, align 8, !dbg !599
  %19 = bitcast i8* %18 to %struct.varbuf*, !dbg !600
  %20 = load i8*, i8** %6, align 8, !dbg !601
  %21 = load i64, i64* %7, align 8, !dbg !602
  call void @varbuf_add_buf(%struct.varbuf* %19, i8* %20, i64 %21), !dbg !603
  br label %42, !dbg !604

; <label>:22:                                     ; preds = %4
  %23 = load %struct.buffer_data*, %struct.buffer_data** %5, align 8, !dbg !605
  %24 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %23, i32 0, i32 0, !dbg !606
  %25 = bitcast %union.anon* %24 to i32*, !dbg !607
  %26 = load i32, i32* %25, align 8, !dbg !607
  %27 = load i8*, i8** %6, align 8, !dbg !608
  %28 = load i64, i64* %7, align 8, !dbg !609
  %29 = call i64 @fd_write(i32 %26, i8* %27, i64 %28), !dbg !610
  store i64 %29, i64* %9, align 8, !dbg !611
  %30 = load i64, i64* %9, align 8, !dbg !612
  %31 = icmp slt i64 %30, 0, !dbg !614
  br i1 %31, label %32, label %36, !dbg !615

; <label>:32:                                     ; preds = %22
  %33 = load %struct.dpkg_error*, %struct.dpkg_error** %8, align 8, !dbg !616
  %34 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #7, !dbg !617
  %35 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_errno(%struct.dpkg_error* %33, i8* %34), !dbg !618
  br label %36, !dbg !620

; <label>:36:                                     ; preds = %32, %22
  br label %42, !dbg !621

; <label>:37:                                     ; preds = %4
  br label %42, !dbg !622

; <label>:38:                                     ; preds = %4
  %39 = load %struct.buffer_data*, %struct.buffer_data** %5, align 8, !dbg !623
  %40 = getelementptr inbounds %struct.buffer_data, %struct.buffer_data* %39, i32 0, i32 1, !dbg !624
  %41 = load i32, i32* %40, align 8, !dbg !624
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 138, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.buffer_write, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 %41) #6, !dbg !625
  unreachable, !dbg !625

; <label>:42:                                     ; preds = %37, %36, %14
  %43 = load i64, i64* %9, align 8, !dbg !626
  ret i64 %43, !dbg !627
}

declare i32 @dpkg_put_error(%struct.dpkg_error*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #4

declare i64 @fd_read(i32, i8*, i64) #2

declare i32 @dpkg_put_errno(%struct.dpkg_error*, i8*, ...) #2

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #2

declare i64 @fd_write(i32, i8*, i64) #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!48, !49}
!llvm.ident = !{!50}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9)
!1 = !DIFile(filename: "[inter]lib--dpkg--buffer.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !4, line: 36, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!7 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!8 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!9 = !{!10, !38, !47}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buffer_md5_ctx", file: !12, line: 40, size: 768, align: 64, elements: !13)
!12 = !DIFile(filename: "buffer.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!13 = !{!14, !35}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !11, file: !12, line: 41, baseType: !15, size: 704, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "MD5_CTX", file: !16, line: 28, baseType: !17)
!16 = !DIFile(filename: "../../lib/compat/md5.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MD5Context", file: !16, line: 24, size: 704, align: 64, elements: !18)
!18 = !{!19, !26, !29}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !17, file: !16, line: 25, baseType: !20, size: 128, align: 32)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 128, align: 32, elements: !24)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !22, line: 51, baseType: !23)
!22 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!23 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!24 = !{!25}
!25 = !DISubrange(count: 4)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !17, file: !16, line: 26, baseType: !27, size: 64, align: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !22, line: 55, baseType: !28)
!28 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !17, file: !16, line: 27, baseType: !30, size: 512, align: 8, offset: 192)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 512, align: 8, elements: !33)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !22, line: 48, baseType: !32)
!32 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!33 = !{!34}
!34 = !DISubrange(count: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !11, file: !12, line: 42, baseType: !36, size: 64, align: 64, offset: 704)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !40, line: 55, size: 192, align: 64, elements: !41)
!40 = !DIFile(filename: "../../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!41 = !{!42, !45, !46}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !39, file: !40, line: 56, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !44, line: 216, baseType: !28)
!44 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!45 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !39, file: !40, line: 56, baseType: !43, size: 64, align: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !39, file: !40, line: 57, baseType: !36, size: 64, align: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!48 = !{i32 2, !"Dwarf Version", i32 4}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!51 = distinct !DISubprogram(name: "buffer_digest", scope: !12, file: !12, line: 164, type: !52, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !59, !47, !61, !54}
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !55, line: 86, baseType: !56)
!55 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !57, line: 131, baseType: !58)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!58 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!61 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!62 = !{}
!63 = !DILocalVariable(name: "input", arg: 1, scope: !51, file: !12, line: 164, type: !59)
!64 = !DIExpression()
!65 = !DILocation(line: 164, column: 27, scope: !51)
!66 = !DILocalVariable(name: "output", arg: 2, scope: !51, file: !12, line: 164, type: !47)
!67 = !DILocation(line: 164, column: 40, scope: !51)
!68 = !DILocalVariable(name: "type", arg: 3, scope: !51, file: !12, line: 164, type: !61)
!69 = !DILocation(line: 164, column: 52, scope: !51)
!70 = !DILocalVariable(name: "limit", arg: 4, scope: !51, file: !12, line: 164, type: !54)
!71 = !DILocation(line: 164, column: 64, scope: !51)
!72 = !DILocalVariable(name: "data", scope: !51, file: !12, line: 166, type: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buffer_data", file: !74, line: 51, size: 128, align: 64, elements: !75)
!74 = !DIFile(filename: "../../lib/dpkg/buffer.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!75 = !{!76, !81}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !73, file: !74, line: 55, baseType: !77, size: 64, align: 64)
!77 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !73, file: !74, line: 52, size: 64, align: 64, elements: !78)
!78 = !{!79, !80}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !77, file: !74, line: 53, baseType: !47, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !77, file: !74, line: 54, baseType: !61, size: 32, align: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !73, file: !74, line: 56, baseType: !61, size: 32, align: 32, offset: 64)
!82 = !DILocation(line: 166, column: 21, scope: !51)
!83 = !DILocation(line: 166, column: 28, scope: !51)
!84 = !DILocation(line: 166, column: 34, scope: !51)
!85 = !DILocation(line: 166, column: 41, scope: !51)
!86 = !DILocation(line: 166, column: 57, scope: !51)
!87 = !DILocalVariable(name: "ret", scope: !51, file: !12, line: 167, type: !54)
!88 = !DILocation(line: 167, column: 8, scope: !51)
!89 = !DILocation(line: 169, column: 2, scope: !51)
!90 = !DILocation(line: 170, column: 36, scope: !51)
!91 = !DILocation(line: 170, column: 43, scope: !51)
!92 = !DILocation(line: 170, column: 8, scope: !51)
!93 = !DILocation(line: 170, column: 6, scope: !51)
!94 = !DILocation(line: 171, column: 2, scope: !51)
!95 = !DILocation(line: 173, column: 9, scope: !51)
!96 = !DILocation(line: 173, column: 2, scope: !51)
!97 = distinct !DISubprogram(name: "buffer_digest_init", scope: !12, file: !12, line: 57, type: !98, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!98 = !DISubroutineType(types: !99)
!99 = !{!54, !100}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!101 = !DILocalVariable(name: "data", arg: 1, scope: !97, file: !12, line: 57, type: !100)
!102 = !DILocation(line: 57, column: 40, scope: !97)
!103 = !DILocation(line: 59, column: 10, scope: !97)
!104 = !DILocation(line: 59, column: 16, scope: !97)
!105 = !DILocation(line: 59, column: 2, scope: !97)
!106 = !DILocation(line: 61, column: 3, scope: !107)
!107 = distinct !DILexicalBlock(scope: !97, file: !12, line: 59, column: 22)
!108 = !DILocation(line: 63, column: 19, scope: !107)
!109 = !DILocation(line: 63, column: 3, scope: !107)
!110 = !DILocation(line: 64, column: 3, scope: !107)
!111 = !DILocation(line: 66, column: 2, scope: !97)
!112 = distinct !DISubprogram(name: "buffer_digest_update", scope: !12, file: !12, line: 70, type: !113, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!113 = !DISubroutineType(types: !114)
!114 = !{!54, !100, !59, !54}
!115 = !DILocalVariable(name: "digest", arg: 1, scope: !112, file: !12, line: 70, type: !100)
!116 = !DILocation(line: 70, column: 42, scope: !112)
!117 = !DILocalVariable(name: "buf", arg: 2, scope: !112, file: !12, line: 70, type: !59)
!118 = !DILocation(line: 70, column: 62, scope: !112)
!119 = !DILocalVariable(name: "length", arg: 3, scope: !112, file: !12, line: 70, type: !54)
!120 = !DILocation(line: 70, column: 73, scope: !112)
!121 = !DILocalVariable(name: "ret", scope: !112, file: !12, line: 72, type: !54)
!122 = !DILocation(line: 72, column: 8, scope: !112)
!123 = !DILocation(line: 72, column: 14, scope: !112)
!124 = !DILocation(line: 74, column: 10, scope: !112)
!125 = !DILocation(line: 74, column: 18, scope: !112)
!126 = !DILocation(line: 74, column: 2, scope: !112)
!127 = !DILocation(line: 76, column: 3, scope: !128)
!128 = distinct !DILexicalBlock(scope: !112, file: !12, line: 74, column: 24)
!129 = !DILocation(line: 78, column: 41, scope: !128)
!130 = !DILocation(line: 78, column: 49, scope: !128)
!131 = !DILocation(line: 78, column: 53, scope: !128)
!132 = !DILocation(line: 78, column: 16, scope: !128)
!133 = !DILocation(line: 78, column: 59, scope: !128)
!134 = !DILocation(line: 79, column: 13, scope: !128)
!135 = !DILocation(line: 79, column: 18, scope: !128)
!136 = !DILocation(line: 78, column: 3, scope: !128)
!137 = !DILocation(line: 80, column: 3, scope: !128)
!138 = !DILocation(line: 82, column: 66, scope: !128)
!139 = !DILocation(line: 82, column: 74, scope: !128)
!140 = !DILocation(line: 82, column: 3, scope: !128)
!141 = !DILocation(line: 85, column: 9, scope: !112)
!142 = !DILocation(line: 85, column: 2, scope: !112)
!143 = distinct !DISubprogram(name: "buffer_digest_done", scope: !12, file: !12, line: 108, type: !98, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!144 = !DILocalVariable(name: "data", arg: 1, scope: !143, file: !12, line: 108, type: !100)
!145 = !DILocation(line: 108, column: 40, scope: !143)
!146 = !DILocation(line: 110, column: 10, scope: !143)
!147 = !DILocation(line: 110, column: 16, scope: !143)
!148 = !DILocation(line: 110, column: 2, scope: !143)
!149 = !DILocation(line: 112, column: 3, scope: !150)
!150 = distinct !DILexicalBlock(scope: !143, file: !12, line: 110, column: 22)
!151 = !DILocation(line: 114, column: 19, scope: !150)
!152 = !DILocation(line: 114, column: 3, scope: !150)
!153 = !DILocation(line: 115, column: 3, scope: !150)
!154 = !DILocation(line: 117, column: 2, scope: !143)
!155 = distinct !DISubprogram(name: "buffer_copy_IntInt", scope: !12, file: !12, line: 235, type: !156, isLocal: false, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!156 = !DISubroutineType(types: !157)
!157 = !{!54, !61, !61, !47, !61, !61, !61, !54, !158}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !4, line: 42, size: 128, align: 64, elements: !160)
!160 = !{!161, !162, !163}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !159, file: !4, line: 43, baseType: !3, size: 32, align: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !159, file: !4, line: 45, baseType: !61, size: 32, align: 32, offset: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !159, file: !4, line: 46, baseType: !36, size: 64, align: 64, offset: 64)
!164 = !DILocalVariable(name: "Iin", arg: 1, scope: !155, file: !12, line: 235, type: !61)
!165 = !DILocation(line: 235, column: 24, scope: !155)
!166 = !DILocalVariable(name: "Tin", arg: 2, scope: !155, file: !12, line: 235, type: !61)
!167 = !DILocation(line: 235, column: 33, scope: !155)
!168 = !DILocalVariable(name: "Pdigest", arg: 3, scope: !155, file: !12, line: 236, type: !47)
!169 = !DILocation(line: 236, column: 26, scope: !155)
!170 = !DILocalVariable(name: "Tdigest", arg: 4, scope: !155, file: !12, line: 236, type: !61)
!171 = !DILocation(line: 236, column: 39, scope: !155)
!172 = !DILocalVariable(name: "Iout", arg: 5, scope: !155, file: !12, line: 237, type: !61)
!173 = !DILocation(line: 237, column: 24, scope: !155)
!174 = !DILocalVariable(name: "Tout", arg: 6, scope: !155, file: !12, line: 237, type: !61)
!175 = !DILocation(line: 237, column: 34, scope: !155)
!176 = !DILocalVariable(name: "limit", arg: 7, scope: !155, file: !12, line: 238, type: !54)
!177 = !DILocation(line: 238, column: 26, scope: !155)
!178 = !DILocalVariable(name: "err", arg: 8, scope: !155, file: !12, line: 238, type: !158)
!179 = !DILocation(line: 238, column: 52, scope: !155)
!180 = !DILocalVariable(name: "read_data", scope: !155, file: !12, line: 240, type: !73)
!181 = !DILocation(line: 240, column: 21, scope: !155)
!182 = !DILocation(line: 240, column: 33, scope: !155)
!183 = !DILocation(line: 240, column: 52, scope: !155)
!184 = !DILocation(line: 240, column: 57, scope: !155)
!185 = !DILocation(line: 240, column: 43, scope: !155)
!186 = !DILocalVariable(name: "digest", scope: !155, file: !12, line: 241, type: !73)
!187 = !DILocation(line: 241, column: 21, scope: !155)
!188 = !DILocation(line: 241, column: 30, scope: !155)
!189 = !DILocation(line: 241, column: 53, scope: !155)
!190 = !DILocation(line: 241, column: 60, scope: !155)
!191 = !DILocation(line: 241, column: 40, scope: !155)
!192 = !DILocalVariable(name: "write_data", scope: !155, file: !12, line: 242, type: !73)
!193 = !DILocation(line: 242, column: 21, scope: !155)
!194 = !DILocation(line: 242, column: 34, scope: !155)
!195 = !DILocation(line: 242, column: 54, scope: !155)
!196 = !DILocation(line: 242, column: 59, scope: !155)
!197 = !DILocation(line: 242, column: 44, scope: !155)
!198 = !DILocation(line: 244, column: 55, scope: !155)
!199 = !DILocation(line: 244, column: 62, scope: !155)
!200 = !DILocation(line: 244, column: 9, scope: !155)
!201 = !DILocation(line: 244, column: 2, scope: !155)
!202 = distinct !DISubprogram(name: "buffer_copy", scope: !12, file: !12, line: 177, type: !203, isLocal: true, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!203 = !DISubroutineType(types: !204)
!204 = !{!54, !100, !100, !100, !54, !158}
!205 = !DILocalVariable(name: "read_data", arg: 1, scope: !202, file: !12, line: 177, type: !100)
!206 = !DILocation(line: 177, column: 33, scope: !202)
!207 = !DILocalVariable(name: "digest", arg: 2, scope: !202, file: !12, line: 178, type: !100)
!208 = !DILocation(line: 178, column: 33, scope: !202)
!209 = !DILocalVariable(name: "write_data", arg: 3, scope: !202, file: !12, line: 179, type: !100)
!210 = !DILocation(line: 179, column: 33, scope: !202)
!211 = !DILocalVariable(name: "limit", arg: 4, scope: !202, file: !12, line: 180, type: !54)
!212 = !DILocation(line: 180, column: 19, scope: !202)
!213 = !DILocalVariable(name: "err", arg: 5, scope: !202, file: !12, line: 180, type: !158)
!214 = !DILocation(line: 180, column: 45, scope: !202)
!215 = !DILocalVariable(name: "buf", scope: !202, file: !12, line: 182, type: !36)
!216 = !DILocation(line: 182, column: 8, scope: !202)
!217 = !DILocalVariable(name: "bufsize", scope: !202, file: !12, line: 183, type: !61)
!218 = !DILocation(line: 183, column: 6, scope: !202)
!219 = !DILocalVariable(name: "bytesread", scope: !202, file: !12, line: 184, type: !54)
!220 = !DILocation(line: 184, column: 8, scope: !202)
!221 = !DILocalVariable(name: "byteswritten", scope: !202, file: !12, line: 184, type: !54)
!222 = !DILocation(line: 184, column: 23, scope: !202)
!223 = !DILocalVariable(name: "totalread", scope: !202, file: !12, line: 185, type: !54)
!224 = !DILocation(line: 185, column: 8, scope: !202)
!225 = !DILocalVariable(name: "totalwritten", scope: !202, file: !12, line: 185, type: !54)
!226 = !DILocation(line: 185, column: 23, scope: !202)
!227 = !DILocation(line: 187, column: 7, scope: !228)
!228 = distinct !DILexicalBlock(scope: !202, file: !12, line: 187, column: 6)
!229 = !DILocation(line: 187, column: 13, scope: !228)
!230 = !DILocation(line: 187, column: 20, scope: !228)
!231 = !DILocation(line: 187, column: 24, scope: !232)
!232 = !DILexicalBlockFile(scope: !228, file: !12, discriminator: 1)
!233 = !DILocation(line: 187, column: 32, scope: !232)
!234 = !DILocation(line: 187, column: 30, scope: !232)
!235 = !DILocation(line: 187, column: 6, scope: !232)
!236 = !DILocation(line: 188, column: 13, scope: !228)
!237 = !DILocation(line: 188, column: 11, scope: !228)
!238 = !DILocation(line: 188, column: 3, scope: !228)
!239 = !DILocation(line: 189, column: 6, scope: !240)
!240 = distinct !DILexicalBlock(scope: !202, file: !12, line: 189, column: 6)
!241 = !DILocation(line: 189, column: 14, scope: !240)
!242 = !DILocation(line: 189, column: 6, scope: !202)
!243 = !DILocation(line: 190, column: 7, scope: !240)
!244 = !DILocation(line: 190, column: 3, scope: !240)
!245 = !DILocation(line: 192, column: 18, scope: !240)
!246 = !DILocation(line: 192, column: 9, scope: !240)
!247 = !DILocation(line: 192, column: 7, scope: !240)
!248 = !DILocation(line: 194, column: 21, scope: !202)
!249 = !DILocation(line: 194, column: 2, scope: !202)
!250 = !DILocation(line: 196, column: 2, scope: !202)
!251 = !DILocation(line: 196, column: 9, scope: !252)
!252 = !DILexicalBlockFile(scope: !202, file: !12, discriminator: 1)
!253 = !DILocation(line: 196, column: 17, scope: !252)
!254 = !DILocation(line: 196, column: 2, scope: !252)
!255 = !DILocation(line: 197, column: 27, scope: !256)
!256 = distinct !DILexicalBlock(scope: !202, file: !12, line: 196, column: 22)
!257 = !DILocation(line: 197, column: 38, scope: !256)
!258 = !DILocation(line: 197, column: 43, scope: !256)
!259 = !DILocation(line: 197, column: 52, scope: !256)
!260 = !DILocation(line: 197, column: 15, scope: !256)
!261 = !DILocation(line: 197, column: 13, scope: !256)
!262 = !DILocation(line: 198, column: 7, scope: !263)
!263 = distinct !DILexicalBlock(scope: !256, file: !12, line: 198, column: 7)
!264 = !DILocation(line: 198, column: 17, scope: !263)
!265 = !DILocation(line: 198, column: 7, scope: !256)
!266 = !DILocation(line: 199, column: 4, scope: !263)
!267 = !DILocation(line: 200, column: 7, scope: !268)
!268 = distinct !DILexicalBlock(scope: !256, file: !12, line: 200, column: 7)
!269 = !DILocation(line: 200, column: 17, scope: !268)
!270 = !DILocation(line: 200, column: 7, scope: !256)
!271 = !DILocation(line: 201, column: 4, scope: !268)
!272 = !DILocation(line: 203, column: 16, scope: !256)
!273 = !DILocation(line: 203, column: 13, scope: !256)
!274 = !DILocation(line: 205, column: 7, scope: !275)
!275 = distinct !DILexicalBlock(scope: !256, file: !12, line: 205, column: 7)
!276 = !DILocation(line: 205, column: 13, scope: !275)
!277 = !DILocation(line: 205, column: 7, scope: !256)
!278 = !DILocation(line: 206, column: 13, scope: !279)
!279 = distinct !DILexicalBlock(scope: !275, file: !12, line: 205, column: 20)
!280 = !DILocation(line: 206, column: 10, scope: !279)
!281 = !DILocation(line: 207, column: 8, scope: !282)
!282 = distinct !DILexicalBlock(scope: !279, file: !12, line: 207, column: 8)
!283 = !DILocation(line: 207, column: 16, scope: !282)
!284 = !DILocation(line: 207, column: 14, scope: !282)
!285 = !DILocation(line: 207, column: 8, scope: !279)
!286 = !DILocation(line: 208, column: 15, scope: !282)
!287 = !DILocation(line: 208, column: 13, scope: !282)
!288 = !DILocation(line: 208, column: 5, scope: !282)
!289 = !DILocation(line: 209, column: 3, scope: !279)
!290 = !DILocation(line: 211, column: 24, scope: !256)
!291 = !DILocation(line: 211, column: 32, scope: !256)
!292 = !DILocation(line: 211, column: 37, scope: !256)
!293 = !DILocation(line: 211, column: 3, scope: !256)
!294 = !DILocation(line: 213, column: 31, scope: !256)
!295 = !DILocation(line: 213, column: 43, scope: !256)
!296 = !DILocation(line: 213, column: 48, scope: !256)
!297 = !DILocation(line: 213, column: 59, scope: !256)
!298 = !DILocation(line: 213, column: 18, scope: !256)
!299 = !DILocation(line: 213, column: 16, scope: !256)
!300 = !DILocation(line: 214, column: 7, scope: !301)
!301 = distinct !DILexicalBlock(scope: !256, file: !12, line: 214, column: 7)
!302 = !DILocation(line: 214, column: 20, scope: !301)
!303 = !DILocation(line: 214, column: 7, scope: !256)
!304 = !DILocation(line: 215, column: 4, scope: !301)
!305 = !DILocation(line: 216, column: 7, scope: !306)
!306 = distinct !DILexicalBlock(scope: !256, file: !12, line: 216, column: 7)
!307 = !DILocation(line: 216, column: 20, scope: !306)
!308 = !DILocation(line: 216, column: 7, scope: !256)
!309 = !DILocation(line: 217, column: 4, scope: !306)
!310 = !DILocation(line: 219, column: 19, scope: !256)
!311 = !DILocation(line: 219, column: 16, scope: !256)
!312 = !DILocation(line: 196, column: 2, scope: !313)
!313 = !DILexicalBlockFile(scope: !202, file: !12, discriminator: 2)
!314 = distinct !{!314, !250}
!315 = !DILocation(line: 222, column: 21, scope: !202)
!316 = !DILocation(line: 222, column: 2, scope: !202)
!317 = !DILocation(line: 224, column: 7, scope: !202)
!318 = !DILocation(line: 224, column: 2, scope: !202)
!319 = !DILocation(line: 226, column: 6, scope: !320)
!320 = distinct !DILexicalBlock(scope: !202, file: !12, line: 226, column: 6)
!321 = !DILocation(line: 226, column: 16, scope: !320)
!322 = !DILocation(line: 226, column: 20, scope: !320)
!323 = !DILocation(line: 226, column: 23, scope: !324)
!324 = !DILexicalBlockFile(scope: !320, file: !12, discriminator: 1)
!325 = !DILocation(line: 226, column: 36, scope: !324)
!326 = !DILocation(line: 226, column: 6, scope: !324)
!327 = !DILocation(line: 227, column: 3, scope: !320)
!328 = !DILocation(line: 228, column: 6, scope: !329)
!329 = distinct !DILexicalBlock(scope: !202, file: !12, line: 228, column: 6)
!330 = !DILocation(line: 228, column: 12, scope: !329)
!331 = !DILocation(line: 228, column: 6, scope: !202)
!332 = !DILocation(line: 229, column: 25, scope: !329)
!333 = !DILocation(line: 229, column: 29, scope: !329)
!334 = !DILocation(line: 229, column: 10, scope: !335)
!335 = !DILexicalBlockFile(scope: !329, file: !12, discriminator: 1)
!336 = !DILocation(line: 229, column: 10, scope: !329)
!337 = !DILocation(line: 229, column: 3, scope: !329)
!338 = !DILocation(line: 231, column: 9, scope: !202)
!339 = !DILocation(line: 231, column: 2, scope: !202)
!340 = !DILocation(line: 232, column: 1, scope: !202)
!341 = distinct !DISubprogram(name: "buffer_copy_IntPtr", scope: !12, file: !12, line: 248, type: !342, isLocal: false, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!342 = !DISubroutineType(types: !343)
!343 = !{!54, !61, !61, !47, !61, !47, !61, !54, !158}
!344 = !DILocalVariable(name: "Iin", arg: 1, scope: !341, file: !12, line: 248, type: !61)
!345 = !DILocation(line: 248, column: 24, scope: !341)
!346 = !DILocalVariable(name: "Tin", arg: 2, scope: !341, file: !12, line: 248, type: !61)
!347 = !DILocation(line: 248, column: 33, scope: !341)
!348 = !DILocalVariable(name: "Pdigest", arg: 3, scope: !341, file: !12, line: 249, type: !47)
!349 = !DILocation(line: 249, column: 26, scope: !341)
!350 = !DILocalVariable(name: "Tdigest", arg: 4, scope: !341, file: !12, line: 249, type: !61)
!351 = !DILocation(line: 249, column: 39, scope: !341)
!352 = !DILocalVariable(name: "Pout", arg: 5, scope: !341, file: !12, line: 250, type: !47)
!353 = !DILocation(line: 250, column: 26, scope: !341)
!354 = !DILocalVariable(name: "Tout", arg: 6, scope: !341, file: !12, line: 250, type: !61)
!355 = !DILocation(line: 250, column: 36, scope: !341)
!356 = !DILocalVariable(name: "limit", arg: 7, scope: !341, file: !12, line: 251, type: !54)
!357 = !DILocation(line: 251, column: 26, scope: !341)
!358 = !DILocalVariable(name: "err", arg: 8, scope: !341, file: !12, line: 251, type: !158)
!359 = !DILocation(line: 251, column: 52, scope: !341)
!360 = !DILocalVariable(name: "read_data", scope: !341, file: !12, line: 253, type: !73)
!361 = !DILocation(line: 253, column: 21, scope: !341)
!362 = !DILocation(line: 253, column: 33, scope: !341)
!363 = !DILocation(line: 253, column: 52, scope: !341)
!364 = !DILocation(line: 253, column: 57, scope: !341)
!365 = !DILocation(line: 253, column: 43, scope: !341)
!366 = !DILocalVariable(name: "digest", scope: !341, file: !12, line: 254, type: !73)
!367 = !DILocation(line: 254, column: 21, scope: !341)
!368 = !DILocation(line: 254, column: 30, scope: !341)
!369 = !DILocation(line: 254, column: 53, scope: !341)
!370 = !DILocation(line: 254, column: 60, scope: !341)
!371 = !DILocation(line: 254, column: 40, scope: !341)
!372 = !DILocalVariable(name: "write_data", scope: !341, file: !12, line: 255, type: !73)
!373 = !DILocation(line: 255, column: 21, scope: !341)
!374 = !DILocation(line: 255, column: 34, scope: !341)
!375 = !DILocation(line: 255, column: 54, scope: !341)
!376 = !DILocation(line: 255, column: 61, scope: !341)
!377 = !DILocation(line: 255, column: 44, scope: !341)
!378 = !DILocation(line: 257, column: 55, scope: !341)
!379 = !DILocation(line: 257, column: 62, scope: !341)
!380 = !DILocation(line: 257, column: 9, scope: !341)
!381 = !DILocation(line: 257, column: 2, scope: !341)
!382 = distinct !DISubprogram(name: "buffer_skip_Int", scope: !12, file: !12, line: 286, type: !383, isLocal: false, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!383 = !DISubroutineType(types: !384)
!384 = !{!54, !61, !61, !54, !158}
!385 = !DILocalVariable(name: "I", arg: 1, scope: !382, file: !12, line: 286, type: !61)
!386 = !DILocation(line: 286, column: 21, scope: !382)
!387 = !DILocalVariable(name: "T", arg: 2, scope: !382, file: !12, line: 286, type: !61)
!388 = !DILocation(line: 286, column: 28, scope: !382)
!389 = !DILocalVariable(name: "limit", arg: 3, scope: !382, file: !12, line: 286, type: !54)
!390 = !DILocation(line: 286, column: 37, scope: !382)
!391 = !DILocalVariable(name: "err", arg: 4, scope: !382, file: !12, line: 286, type: !158)
!392 = !DILocation(line: 286, column: 63, scope: !382)
!393 = !DILocalVariable(name: "input", scope: !382, file: !12, line: 288, type: !73)
!394 = !DILocation(line: 288, column: 21, scope: !382)
!395 = !DILocation(line: 288, column: 29, scope: !382)
!396 = !DILocation(line: 288, column: 46, scope: !382)
!397 = !DILocation(line: 288, column: 51, scope: !382)
!398 = !DILocation(line: 288, column: 39, scope: !382)
!399 = !DILocation(line: 290, column: 29, scope: !382)
!400 = !DILocation(line: 290, column: 36, scope: !382)
!401 = !DILocation(line: 290, column: 9, scope: !382)
!402 = !DILocation(line: 290, column: 2, scope: !382)
!403 = distinct !DISubprogram(name: "buffer_skip", scope: !12, file: !12, line: 261, type: !404, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!404 = !DISubroutineType(types: !405)
!405 = !{!54, !100, !54, !158}
!406 = !DILocalVariable(name: "input", arg: 1, scope: !403, file: !12, line: 261, type: !100)
!407 = !DILocation(line: 261, column: 33, scope: !403)
!408 = !DILocalVariable(name: "limit", arg: 2, scope: !403, file: !12, line: 261, type: !54)
!409 = !DILocation(line: 261, column: 46, scope: !403)
!410 = !DILocalVariable(name: "err", arg: 3, scope: !403, file: !12, line: 261, type: !158)
!411 = !DILocation(line: 261, column: 72, scope: !403)
!412 = !DILocalVariable(name: "output", scope: !403, file: !12, line: 263, type: !73)
!413 = !DILocation(line: 263, column: 21, scope: !403)
!414 = !DILocalVariable(name: "digest", scope: !403, file: !12, line: 264, type: !73)
!415 = !DILocation(line: 264, column: 21, scope: !403)
!416 = !DILocation(line: 266, column: 10, scope: !403)
!417 = !DILocation(line: 266, column: 17, scope: !403)
!418 = !DILocation(line: 266, column: 2, scope: !403)
!419 = !DILocation(line: 268, column: 13, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !12, line: 268, column: 7)
!421 = distinct !DILexicalBlock(scope: !403, file: !12, line: 266, column: 23)
!422 = !DILocation(line: 268, column: 20, scope: !420)
!423 = !DILocation(line: 268, column: 24, scope: !420)
!424 = !DILocation(line: 268, column: 27, scope: !420)
!425 = !DILocation(line: 268, column: 7, scope: !420)
!426 = !DILocation(line: 268, column: 43, scope: !420)
!427 = !DILocation(line: 268, column: 7, scope: !421)
!428 = !DILocation(line: 269, column: 11, scope: !420)
!429 = !DILocation(line: 269, column: 4, scope: !420)
!430 = !DILocation(line: 270, column: 8, scope: !431)
!431 = distinct !DILexicalBlock(scope: !421, file: !12, line: 270, column: 6)
!432 = !DILocation(line: 270, column: 7, scope: !431)
!433 = !DILocation(line: 270, column: 12, scope: !431)
!434 = !DILocation(line: 270, column: 6, scope: !421)
!435 = !DILocation(line: 271, column: 26, scope: !431)
!436 = !DILocation(line: 271, column: 30, scope: !431)
!437 = !DILocation(line: 271, column: 11, scope: !438)
!438 = !DILexicalBlockFile(scope: !431, file: !12, discriminator: 1)
!439 = !DILocation(line: 271, column: 11, scope: !431)
!440 = !DILocation(line: 271, column: 4, scope: !431)
!441 = !DILocation(line: 272, column: 3, scope: !421)
!442 = !DILocation(line: 274, column: 67, scope: !421)
!443 = !DILocation(line: 274, column: 74, scope: !421)
!444 = !DILocation(line: 274, column: 3, scope: !421)
!445 = !DILocation(line: 277, column: 9, scope: !403)
!446 = !DILocation(line: 277, column: 14, scope: !403)
!447 = !DILocation(line: 278, column: 9, scope: !403)
!448 = !DILocation(line: 278, column: 13, scope: !403)
!449 = !DILocation(line: 278, column: 17, scope: !403)
!450 = !DILocation(line: 279, column: 9, scope: !403)
!451 = !DILocation(line: 279, column: 14, scope: !403)
!452 = !DILocation(line: 280, column: 9, scope: !403)
!453 = !DILocation(line: 280, column: 13, scope: !403)
!454 = !DILocation(line: 280, column: 17, scope: !403)
!455 = !DILocation(line: 282, column: 21, scope: !403)
!456 = !DILocation(line: 282, column: 46, scope: !403)
!457 = !DILocation(line: 282, column: 53, scope: !403)
!458 = !DILocation(line: 282, column: 9, scope: !403)
!459 = !DILocation(line: 282, column: 2, scope: !403)
!460 = !DILocation(line: 283, column: 1, scope: !403)
!461 = distinct !DISubprogram(name: "buffer_md5_init", scope: !12, file: !12, line: 46, type: !462, isLocal: true, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !100}
!464 = !DILocalVariable(name: "data", arg: 1, scope: !461, file: !12, line: 46, type: !100)
!465 = !DILocation(line: 46, column: 37, scope: !461)
!466 = !DILocalVariable(name: "ctx", scope: !461, file: !12, line: 48, type: !10)
!467 = !DILocation(line: 48, column: 25, scope: !461)
!468 = !DILocation(line: 50, column: 8, scope: !461)
!469 = !DILocation(line: 50, column: 6, scope: !461)
!470 = !DILocation(line: 51, column: 14, scope: !461)
!471 = !DILocation(line: 51, column: 20, scope: !461)
!472 = !DILocation(line: 51, column: 24, scope: !461)
!473 = !DILocation(line: 51, column: 2, scope: !461)
!474 = !DILocation(line: 51, column: 7, scope: !461)
!475 = !DILocation(line: 51, column: 12, scope: !461)
!476 = !DILocation(line: 52, column: 18, scope: !461)
!477 = !DILocation(line: 52, column: 2, scope: !461)
!478 = !DILocation(line: 52, column: 8, scope: !461)
!479 = !DILocation(line: 52, column: 12, scope: !461)
!480 = !DILocation(line: 52, column: 16, scope: !461)
!481 = !DILocation(line: 53, column: 11, scope: !461)
!482 = !DILocation(line: 53, column: 16, scope: !461)
!483 = !DILocation(line: 53, column: 2, scope: !461)
!484 = !DILocation(line: 54, column: 1, scope: !461)
!485 = distinct !DISubprogram(name: "buffer_md5_done", scope: !12, file: !12, line: 89, type: !462, isLocal: true, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!486 = !DILocalVariable(name: "data", arg: 1, scope: !485, file: !12, line: 89, type: !100)
!487 = !DILocation(line: 89, column: 37, scope: !485)
!488 = !DILocalVariable(name: "ctx", scope: !485, file: !12, line: 91, type: !10)
!489 = !DILocation(line: 91, column: 25, scope: !485)
!490 = !DILocalVariable(name: "digest", scope: !485, file: !12, line: 92, type: !491)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 128, align: 8, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 16)
!494 = !DILocation(line: 92, column: 16, scope: !485)
!495 = !DILocalVariable(name: "p", scope: !485, file: !12, line: 92, type: !496)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!497 = !DILocation(line: 92, column: 29, scope: !485)
!498 = !DILocation(line: 92, column: 33, scope: !485)
!499 = !DILocalVariable(name: "hash", scope: !485, file: !12, line: 93, type: !36)
!500 = !DILocation(line: 93, column: 8, scope: !485)
!501 = !DILocalVariable(name: "i", scope: !485, file: !12, line: 94, type: !61)
!502 = !DILocation(line: 94, column: 6, scope: !485)
!503 = !DILocation(line: 96, column: 33, scope: !485)
!504 = !DILocation(line: 96, column: 39, scope: !485)
!505 = !DILocation(line: 96, column: 43, scope: !485)
!506 = !DILocation(line: 96, column: 8, scope: !485)
!507 = !DILocation(line: 96, column: 6, scope: !485)
!508 = !DILocation(line: 97, column: 9, scope: !485)
!509 = !DILocation(line: 97, column: 14, scope: !485)
!510 = !DILocation(line: 97, column: 7, scope: !485)
!511 = !DILocation(line: 98, column: 11, scope: !485)
!512 = !DILocation(line: 98, column: 20, scope: !485)
!513 = !DILocation(line: 98, column: 25, scope: !485)
!514 = !DILocation(line: 98, column: 2, scope: !485)
!515 = !DILocation(line: 99, column: 9, scope: !516)
!516 = distinct !DILexicalBlock(scope: !485, file: !12, line: 99, column: 2)
!517 = !DILocation(line: 99, column: 7, scope: !516)
!518 = !DILocation(line: 99, column: 14, scope: !519)
!519 = !DILexicalBlockFile(scope: !520, file: !12, discriminator: 1)
!520 = distinct !DILexicalBlock(scope: !516, file: !12, line: 99, column: 2)
!521 = !DILocation(line: 99, column: 16, scope: !519)
!522 = !DILocation(line: 99, column: 2, scope: !519)
!523 = !DILocation(line: 100, column: 11, scope: !524)
!524 = distinct !DILexicalBlock(scope: !520, file: !12, line: 99, column: 27)
!525 = !DILocation(line: 100, column: 27, scope: !524)
!526 = !DILocation(line: 100, column: 25, scope: !524)
!527 = !DILocation(line: 100, column: 3, scope: !524)
!528 = !DILocation(line: 101, column: 8, scope: !524)
!529 = !DILocation(line: 102, column: 2, scope: !524)
!530 = !DILocation(line: 99, column: 22, scope: !531)
!531 = !DILexicalBlockFile(scope: !520, file: !12, discriminator: 2)
!532 = !DILocation(line: 99, column: 2, scope: !531)
!533 = distinct !{!533, !534}
!534 = !DILocation(line: 99, column: 2, scope: !485)
!535 = !DILocation(line: 103, column: 3, scope: !485)
!536 = !DILocation(line: 103, column: 8, scope: !485)
!537 = !DILocation(line: 104, column: 7, scope: !485)
!538 = !DILocation(line: 104, column: 2, scope: !485)
!539 = !DILocation(line: 105, column: 1, scope: !485)
!540 = distinct !DISubprogram(name: "buffer_read", scope: !12, file: !12, line: 145, type: !541, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!541 = !DISubroutineType(types: !542)
!542 = !{!54, !100, !47, !54, !158}
!543 = !DILocalVariable(name: "data", arg: 1, scope: !540, file: !12, line: 145, type: !100)
!544 = !DILocation(line: 145, column: 33, scope: !540)
!545 = !DILocalVariable(name: "buf", arg: 2, scope: !540, file: !12, line: 145, type: !47)
!546 = !DILocation(line: 145, column: 45, scope: !540)
!547 = !DILocalVariable(name: "length", arg: 3, scope: !540, file: !12, line: 145, type: !54)
!548 = !DILocation(line: 145, column: 56, scope: !540)
!549 = !DILocalVariable(name: "err", arg: 4, scope: !540, file: !12, line: 146, type: !158)
!550 = !DILocation(line: 146, column: 32, scope: !540)
!551 = !DILocalVariable(name: "ret", scope: !540, file: !12, line: 148, type: !54)
!552 = !DILocation(line: 148, column: 8, scope: !540)
!553 = !DILocation(line: 150, column: 10, scope: !540)
!554 = !DILocation(line: 150, column: 16, scope: !540)
!555 = !DILocation(line: 150, column: 2, scope: !540)
!556 = !DILocation(line: 152, column: 17, scope: !557)
!557 = distinct !DILexicalBlock(scope: !540, file: !12, line: 150, column: 22)
!558 = !DILocation(line: 152, column: 23, scope: !557)
!559 = !DILocation(line: 152, column: 27, scope: !557)
!560 = !DILocation(line: 152, column: 30, scope: !557)
!561 = !DILocation(line: 152, column: 35, scope: !557)
!562 = !DILocation(line: 152, column: 9, scope: !557)
!563 = !DILocation(line: 152, column: 7, scope: !557)
!564 = !DILocation(line: 153, column: 7, scope: !565)
!565 = distinct !DILexicalBlock(scope: !557, file: !12, line: 153, column: 7)
!566 = !DILocation(line: 153, column: 11, scope: !565)
!567 = !DILocation(line: 153, column: 7, scope: !557)
!568 = !DILocation(line: 154, column: 19, scope: !565)
!569 = !DILocation(line: 154, column: 23, scope: !565)
!570 = !DILocation(line: 154, column: 4, scope: !571)
!571 = !DILexicalBlockFile(scope: !565, file: !12, discriminator: 1)
!572 = !DILocation(line: 154, column: 4, scope: !565)
!573 = !DILocation(line: 155, column: 3, scope: !557)
!574 = !DILocation(line: 157, column: 67, scope: !557)
!575 = !DILocation(line: 157, column: 73, scope: !557)
!576 = !DILocation(line: 157, column: 3, scope: !557)
!577 = !DILocation(line: 160, column: 9, scope: !540)
!578 = !DILocation(line: 160, column: 2, scope: !540)
!579 = distinct !DISubprogram(name: "buffer_write", scope: !12, file: !12, line: 121, type: !580, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !62)
!580 = !DISubroutineType(types: !581)
!581 = !{!54, !100, !59, !54, !158}
!582 = !DILocalVariable(name: "data", arg: 1, scope: !579, file: !12, line: 121, type: !100)
!583 = !DILocation(line: 121, column: 34, scope: !579)
!584 = !DILocalVariable(name: "buf", arg: 2, scope: !579, file: !12, line: 121, type: !59)
!585 = !DILocation(line: 121, column: 52, scope: !579)
!586 = !DILocalVariable(name: "length", arg: 3, scope: !579, file: !12, line: 121, type: !54)
!587 = !DILocation(line: 121, column: 63, scope: !579)
!588 = !DILocalVariable(name: "err", arg: 4, scope: !579, file: !12, line: 122, type: !158)
!589 = !DILocation(line: 122, column: 33, scope: !579)
!590 = !DILocalVariable(name: "ret", scope: !579, file: !12, line: 124, type: !54)
!591 = !DILocation(line: 124, column: 8, scope: !579)
!592 = !DILocation(line: 124, column: 14, scope: !579)
!593 = !DILocation(line: 126, column: 10, scope: !579)
!594 = !DILocation(line: 126, column: 16, scope: !579)
!595 = !DILocation(line: 126, column: 2, scope: !579)
!596 = !DILocation(line: 128, column: 35, scope: !597)
!597 = distinct !DILexicalBlock(scope: !579, file: !12, line: 126, column: 22)
!598 = !DILocation(line: 128, column: 41, scope: !597)
!599 = !DILocation(line: 128, column: 45, scope: !597)
!600 = !DILocation(line: 128, column: 18, scope: !597)
!601 = !DILocation(line: 128, column: 50, scope: !597)
!602 = !DILocation(line: 128, column: 55, scope: !597)
!603 = !DILocation(line: 128, column: 3, scope: !597)
!604 = !DILocation(line: 129, column: 3, scope: !597)
!605 = !DILocation(line: 131, column: 18, scope: !597)
!606 = !DILocation(line: 131, column: 24, scope: !597)
!607 = !DILocation(line: 131, column: 28, scope: !597)
!608 = !DILocation(line: 131, column: 31, scope: !597)
!609 = !DILocation(line: 131, column: 36, scope: !597)
!610 = !DILocation(line: 131, column: 9, scope: !597)
!611 = !DILocation(line: 131, column: 7, scope: !597)
!612 = !DILocation(line: 132, column: 7, scope: !613)
!613 = distinct !DILexicalBlock(scope: !597, file: !12, line: 132, column: 7)
!614 = !DILocation(line: 132, column: 11, scope: !613)
!615 = !DILocation(line: 132, column: 7, scope: !597)
!616 = !DILocation(line: 133, column: 19, scope: !613)
!617 = !DILocation(line: 133, column: 23, scope: !613)
!618 = !DILocation(line: 133, column: 4, scope: !619)
!619 = !DILexicalBlockFile(scope: !613, file: !12, discriminator: 1)
!620 = !DILocation(line: 133, column: 4, scope: !613)
!621 = !DILocation(line: 134, column: 3, scope: !597)
!622 = !DILocation(line: 136, column: 3, scope: !597)
!623 = !DILocation(line: 138, column: 67, scope: !597)
!624 = !DILocation(line: 138, column: 73, scope: !597)
!625 = !DILocation(line: 138, column: 3, scope: !597)
!626 = !DILocation(line: 141, column: 9, scope: !579)
!627 = !DILocation(line: 141, column: 2, scope: !579)
