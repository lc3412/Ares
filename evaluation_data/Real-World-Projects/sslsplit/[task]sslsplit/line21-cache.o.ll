; ModuleID = './line21-cache.o.i'
source_filename = "./line21-cache.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cache = type { %union.pthread_mutex_t, i32 ()*, i32 ()*, i32 (i32)*, void (i32)*, i32 (i8*)*, i32 (i8*, i32*)*, void (i8*)*, void (i8*)*, i8* (i32)*, i8* (i32)*, void (i32, i8*)*, i8* (i8*, i32)*, void ()* }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_mutexattr_t = type { i32 }

; Function Attrs: nounwind uwtable
define noalias %struct.cache* @cache_new(void (%struct.cache*)*) #0 !dbg !8 {
  %2 = alloca %struct.cache*, align 8
  %3 = alloca void (%struct.cache*)*, align 8
  %4 = alloca %struct.cache*, align 8
  store void (%struct.cache*)* %0, void (%struct.cache*)** %3, align 8
  call void @llvm.dbg.declare(metadata void (%struct.cache*)** %3, metadata !120, metadata !121), !dbg !122
  call void @llvm.dbg.declare(metadata %struct.cache** %4, metadata !123, metadata !121), !dbg !124
  %5 = call noalias i8* @malloc(i64 144) #3, !dbg !125
  %6 = bitcast i8* %5 to %struct.cache*, !dbg !125
  store %struct.cache* %6, %struct.cache** %4, align 8, !dbg !127
  %7 = icmp ne %struct.cache* %6, null, !dbg !127
  br i1 %7, label %9, label %8, !dbg !128

; <label>:8:                                      ; preds = %1
  store %struct.cache* null, %struct.cache** %2, align 8, !dbg !129
  br label %21, !dbg !129

; <label>:9:                                      ; preds = %1
  %10 = load %struct.cache*, %struct.cache** %4, align 8, !dbg !130
  %11 = getelementptr inbounds %struct.cache, %struct.cache* %10, i32 0, i32 0, !dbg !132
  %12 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %11, %union.pthread_mutexattr_t* null) #3, !dbg !133
  %13 = icmp ne i32 %12, 0, !dbg !133
  br i1 %13, label %14, label %17, !dbg !134

; <label>:14:                                     ; preds = %9
  %15 = load %struct.cache*, %struct.cache** %4, align 8, !dbg !135
  %16 = bitcast %struct.cache* %15 to i8*, !dbg !135
  call void @free(i8* %16) #3, !dbg !137
  store %struct.cache* null, %struct.cache** %2, align 8, !dbg !138
  br label %21, !dbg !138

; <label>:17:                                     ; preds = %9
  %18 = load void (%struct.cache*)*, void (%struct.cache*)** %3, align 8, !dbg !139
  %19 = load %struct.cache*, %struct.cache** %4, align 8, !dbg !140
  call void %18(%struct.cache* %19), !dbg !139
  %20 = load %struct.cache*, %struct.cache** %4, align 8, !dbg !141
  store %struct.cache* %20, %struct.cache** %2, align 8, !dbg !142
  br label %21, !dbg !142

; <label>:21:                                     ; preds = %17, %14, %8
  %22 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !143
  ret %struct.cache* %22, !dbg !143
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @cache_reinit(%struct.cache* nonnull) #0 !dbg !144 {
  %2 = alloca %struct.cache*, align 8
  store %struct.cache* %0, %struct.cache** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.cache** %2, metadata !147, metadata !121), !dbg !148
  %3 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !149
  %4 = getelementptr inbounds %struct.cache, %struct.cache* %3, i32 0, i32 0, !dbg !150
  %5 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %4, %union.pthread_mutexattr_t* null) #3, !dbg !151
  %6 = icmp ne i32 %5, 0, !dbg !151
  %7 = select i1 %6, i32 -1, i32 0, !dbg !151
  ret i32 %7, !dbg !152
}

; Function Attrs: nounwind uwtable
define void @cache_free(%struct.cache* nonnull) #0 !dbg !153 {
  %2 = alloca %struct.cache*, align 8
  %3 = alloca i32, align 4
  store %struct.cache* %0, %struct.cache** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.cache** %2, metadata !156, metadata !121), !dbg !157
  call void @llvm.dbg.declare(metadata i32* %3, metadata !158, metadata !121), !dbg !163
  %4 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !164
  %5 = getelementptr inbounds %struct.cache, %struct.cache* %4, i32 0, i32 1, !dbg !166
  %6 = load i32 ()*, i32 ()** %5, align 8, !dbg !166
  %7 = call i32 %6(), !dbg !164
  store i32 %7, i32* %3, align 4, !dbg !167
  br label %8, !dbg !168

; <label>:8:                                      ; preds = %40, %1
  %9 = load i32, i32* %3, align 4, !dbg !169
  %10 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !172
  %11 = getelementptr inbounds %struct.cache, %struct.cache* %10, i32 0, i32 2, !dbg !173
  %12 = load i32 ()*, i32 ()** %11, align 8, !dbg !173
  %13 = call i32 %12(), !dbg !172
  %14 = icmp ne i32 %9, %13, !dbg !174
  br i1 %14, label %15, label %43, !dbg !175

; <label>:15:                                     ; preds = %8
  %16 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !176
  %17 = getelementptr inbounds %struct.cache, %struct.cache* %16, i32 0, i32 3, !dbg !179
  %18 = load i32 (i32)*, i32 (i32)** %17, align 8, !dbg !179
  %19 = load i32, i32* %3, align 4, !dbg !180
  %20 = call i32 %18(i32 %19), !dbg !176
  %21 = icmp ne i32 %20, 0, !dbg !176
  br i1 %21, label %22, label %39, !dbg !181

; <label>:22:                                     ; preds = %15
  %23 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !182
  %24 = getelementptr inbounds %struct.cache, %struct.cache* %23, i32 0, i32 7, !dbg !184
  %25 = load void (i8*)*, void (i8*)** %24, align 8, !dbg !184
  %26 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !185
  %27 = getelementptr inbounds %struct.cache, %struct.cache* %26, i32 0, i32 9, !dbg !186
  %28 = load i8* (i32)*, i8* (i32)** %27, align 8, !dbg !186
  %29 = load i32, i32* %3, align 4, !dbg !187
  %30 = call i8* %28(i32 %29), !dbg !185
  call void %25(i8* %30), !dbg !188
  %31 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !190
  %32 = getelementptr inbounds %struct.cache, %struct.cache* %31, i32 0, i32 8, !dbg !191
  %33 = load void (i8*)*, void (i8*)** %32, align 8, !dbg !191
  %34 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !192
  %35 = getelementptr inbounds %struct.cache, %struct.cache* %34, i32 0, i32 10, !dbg !193
  %36 = load i8* (i32)*, i8* (i32)** %35, align 8, !dbg !193
  %37 = load i32, i32* %3, align 4, !dbg !194
  %38 = call i8* %36(i32 %37), !dbg !192
  call void %33(i8* %38), !dbg !195
  br label %39, !dbg !196

; <label>:39:                                     ; preds = %22, %15
  br label %40, !dbg !197

; <label>:40:                                     ; preds = %39
  %41 = load i32, i32* %3, align 4, !dbg !198
  %42 = add i32 %41, 1, !dbg !198
  store i32 %42, i32* %3, align 4, !dbg !198
  br label %8, !dbg !200, !llvm.loop !201

; <label>:43:                                     ; preds = %8
  %44 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !203
  %45 = getelementptr inbounds %struct.cache, %struct.cache* %44, i32 0, i32 13, !dbg !204
  %46 = load void ()*, void ()** %45, align 8, !dbg !204
  call void %46(), !dbg !203
  %47 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !205
  %48 = getelementptr inbounds %struct.cache, %struct.cache* %47, i32 0, i32 0, !dbg !206
  %49 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %48) #3, !dbg !207
  %50 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !208
  %51 = bitcast %struct.cache* %50 to i8*, !dbg !208
  call void @free(i8* %51) #3, !dbg !209
  ret void, !dbg !210
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind uwtable
define void @cache_gc(%struct.cache* nonnull) #0 !dbg !211 {
  %2 = alloca %struct.cache*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.cache* %0, %struct.cache** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.cache** %2, metadata !212, metadata !121), !dbg !213
  call void @llvm.dbg.declare(metadata i32* %3, metadata !214, metadata !121), !dbg !215
  call void @llvm.dbg.declare(metadata i8** %4, metadata !216, metadata !121), !dbg !217
  %5 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !218
  %6 = getelementptr inbounds %struct.cache, %struct.cache* %5, i32 0, i32 0, !dbg !219
  %7 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %6) #3, !dbg !220
  %8 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !221
  %9 = getelementptr inbounds %struct.cache, %struct.cache* %8, i32 0, i32 1, !dbg !223
  %10 = load i32 ()*, i32 ()** %9, align 8, !dbg !223
  %11 = call i32 %10(), !dbg !221
  store i32 %11, i32* %3, align 4, !dbg !224
  br label %12, !dbg !225

; <label>:12:                                     ; preds = %57, %1
  %13 = load i32, i32* %3, align 4, !dbg !226
  %14 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !229
  %15 = getelementptr inbounds %struct.cache, %struct.cache* %14, i32 0, i32 2, !dbg !230
  %16 = load i32 ()*, i32 ()** %15, align 8, !dbg !230
  %17 = call i32 %16(), !dbg !229
  %18 = icmp ne i32 %13, %17, !dbg !231
  br i1 %18, label %19, label %60, !dbg !232

; <label>:19:                                     ; preds = %12
  %20 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !233
  %21 = getelementptr inbounds %struct.cache, %struct.cache* %20, i32 0, i32 3, !dbg !236
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8, !dbg !236
  %23 = load i32, i32* %3, align 4, !dbg !237
  %24 = call i32 %22(i32 %23), !dbg !233
  %25 = icmp ne i32 %24, 0, !dbg !233
  br i1 %25, label %26, label %56, !dbg !238

; <label>:26:                                     ; preds = %19
  %27 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !239
  %28 = getelementptr inbounds %struct.cache, %struct.cache* %27, i32 0, i32 10, !dbg !241
  %29 = load i8* (i32)*, i8* (i32)** %28, align 8, !dbg !241
  %30 = load i32, i32* %3, align 4, !dbg !242
  %31 = call i8* %29(i32 %30), !dbg !239
  store i8* %31, i8** %4, align 8, !dbg !243
  %32 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !244
  %33 = getelementptr inbounds %struct.cache, %struct.cache* %32, i32 0, i32 12, !dbg !246
  %34 = load i8* (i8*, i32)*, i8* (i8*, i32)** %33, align 8, !dbg !246
  %35 = load i8*, i8** %4, align 8, !dbg !247
  %36 = call i8* %34(i8* %35, i32 0), !dbg !244
  %37 = icmp ne i8* %36, null, !dbg !244
  br i1 %37, label %55, label %38, !dbg !248

; <label>:38:                                     ; preds = %26
  %39 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !249
  %40 = getelementptr inbounds %struct.cache, %struct.cache* %39, i32 0, i32 8, !dbg !251
  %41 = load void (i8*)*, void (i8*)** %40, align 8, !dbg !251
  %42 = load i8*, i8** %4, align 8, !dbg !252
  call void %41(i8* %42), !dbg !249
  %43 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !253
  %44 = getelementptr inbounds %struct.cache, %struct.cache* %43, i32 0, i32 7, !dbg !254
  %45 = load void (i8*)*, void (i8*)** %44, align 8, !dbg !254
  %46 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !255
  %47 = getelementptr inbounds %struct.cache, %struct.cache* %46, i32 0, i32 9, !dbg !256
  %48 = load i8* (i32)*, i8* (i32)** %47, align 8, !dbg !256
  %49 = load i32, i32* %3, align 4, !dbg !257
  %50 = call i8* %48(i32 %49), !dbg !255
  call void %45(i8* %50), !dbg !258
  %51 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !260
  %52 = getelementptr inbounds %struct.cache, %struct.cache* %51, i32 0, i32 4, !dbg !261
  %53 = load void (i32)*, void (i32)** %52, align 8, !dbg !261
  %54 = load i32, i32* %3, align 4, !dbg !262
  call void %53(i32 %54), !dbg !260
  br label %55, !dbg !263

; <label>:55:                                     ; preds = %38, %26
  br label %56, !dbg !264

; <label>:56:                                     ; preds = %55, %19
  br label %57, !dbg !265

; <label>:57:                                     ; preds = %56
  %58 = load i32, i32* %3, align 4, !dbg !266
  %59 = add i32 %58, 1, !dbg !266
  store i32 %59, i32* %3, align 4, !dbg !266
  br label %12, !dbg !268, !llvm.loop !269

; <label>:60:                                     ; preds = %12
  %61 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !271
  %62 = getelementptr inbounds %struct.cache, %struct.cache* %61, i32 0, i32 0, !dbg !272
  %63 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %62) #3, !dbg !273
  ret void, !dbg !274
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind uwtable
define i8* @cache_get(%struct.cache* nonnull, i8*) #0 !dbg !275 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cache*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.cache* %0, %struct.cache** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.cache** %4, metadata !278, metadata !121), !dbg !279
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !280, metadata !121), !dbg !281
  call void @llvm.dbg.declare(metadata i8** %6, metadata !282, metadata !121), !dbg !283
  store i8* null, i8** %6, align 8, !dbg !283
  call void @llvm.dbg.declare(metadata i32* %7, metadata !284, metadata !121), !dbg !285
  %9 = load i8*, i8** %5, align 8, !dbg !286
  %10 = icmp ne i8* %9, null, !dbg !286
  br i1 %10, label %12, label %11, !dbg !288

; <label>:11:                                     ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !289
  br label %66, !dbg !289

; <label>:12:                                     ; preds = %2
  %13 = load %struct.cache*, %struct.cache** %4, align 8, !dbg !290
  %14 = getelementptr inbounds %struct.cache, %struct.cache* %13, i32 0, i32 0, !dbg !291
  %15 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %14) #3, !dbg !292
  %16 = load %struct.cache*, %struct.cache** %4, align 8, !dbg !293
  %17 = getelementptr inbounds %struct.cache, %struct.cache* %16, i32 0, i32 5, !dbg !294
  %18 = load i32 (i8*)*, i32 (i8*)** %17, align 8, !dbg !294
  %19 = load i8*, i8** %5, align 8, !dbg !295
  %20 = call i32 %18(i8* %19), !dbg !293
  store i32 %20, i32* %7, align 4, !dbg !296
  %21 = load i32, i32* %7, align 4, !dbg !297
  %22 = load %struct.cache*, %struct.cache** %4, align 8, !dbg !299
  %23 = getelementptr inbounds %struct.cache, %struct.cache* %22, i32 0, i32 2, !dbg !300
  %24 = load i32 ()*, i32 ()** %23, align 8, !dbg !300
  %25 = call i32 %24(), !dbg !299
  %26 = icmp ne i32 %21, %25, !dbg !301
  br i1 %26, label %27, label %57, !dbg !302

; <label>:27:                                     ; preds = %12
  call void @llvm.dbg.declare(metadata i8** %8, metadata !303, metadata !121), !dbg !305
  %28 = load %struct.cache*, %struct.cache** %4, align 8, !dbg !306
  %29 = getelementptr inbounds %struct.cache, %struct.cache* %28, i32 0, i32 10, !dbg !307
  %30 = load i8* (i32)*, i8* (i32)** %29, align 8, !dbg !307
  %31 = load i32, i32* %7, align 4, !dbg !308
  %32 = call i8* %30(i32 %31), !dbg !306
  store i8* %32, i8** %8, align 8, !dbg !309
  %33 = load %struct.cache*, %struct.cache** %4, align 8, !dbg !310
  %34 = getelementptr inbounds %struct.cache, %struct.cache* %33, i32 0, i32 12, !dbg !312
  %35 = load i8* (i8*, i32)*, i8* (i8*, i32)** %34, align 8, !dbg !312
  %36 = load i8*, i8** %8, align 8, !dbg !313
  %37 = call i8* %35(i8* %36, i32 1), !dbg !310
  store i8* %37, i8** %6, align 8, !dbg !314
  %38 = icmp ne i8* %37, null, !dbg !314
  br i1 %38, label %56, label %39, !dbg !315

; <label>:39:                                     ; preds = %27
  %40 = load %struct.cache*, %struct.cache** %4, align 8, !dbg !316
  %41 = getelementptr inbounds %struct.cache, %struct.cache* %40, i32 0, i32 8, !dbg !318
  %42 = load void (i8*)*, void (i8*)** %41, align 8, !dbg !318
  %43 = load i8*, i8** %8, align 8, !dbg !319
  call void %42(i8* %43), !dbg !316
  %44 = load %struct.cache*, %struct.cache** %4, align 8, !dbg !320
  %45 = getelementptr inbounds %struct.cache, %struct.cache* %44, i32 0, i32 7, !dbg !321
  %46 = load void (i8*)*, void (i8*)** %45, align 8, !dbg !321
  %47 = load %struct.cache*, %struct.cache** %4, align 8, !dbg !322
  %48 = getelementptr inbounds %struct.cache, %struct.cache* %47, i32 0, i32 9, !dbg !323
  %49 = load i8* (i32)*, i8* (i32)** %48, align 8, !dbg !323
  %50 = load i32, i32* %7, align 4, !dbg !324
  %51 = call i8* %49(i32 %50), !dbg !322
  call void %46(i8* %51), !dbg !325
  %52 = load %struct.cache*, %struct.cache** %4, align 8, !dbg !327
  %53 = getelementptr inbounds %struct.cache, %struct.cache* %52, i32 0, i32 4, !dbg !328
  %54 = load void (i32)*, void (i32)** %53, align 8, !dbg !328
  %55 = load i32, i32* %7, align 4, !dbg !329
  call void %54(i32 %55), !dbg !327
  br label %56, !dbg !330

; <label>:56:                                     ; preds = %39, %27
  br label %57, !dbg !331

; <label>:57:                                     ; preds = %56, %12
  %58 = load %struct.cache*, %struct.cache** %4, align 8, !dbg !332
  %59 = getelementptr inbounds %struct.cache, %struct.cache* %58, i32 0, i32 7, !dbg !333
  %60 = load void (i8*)*, void (i8*)** %59, align 8, !dbg !333
  %61 = load i8*, i8** %5, align 8, !dbg !334
  call void %60(i8* %61), !dbg !332
  %62 = load %struct.cache*, %struct.cache** %4, align 8, !dbg !335
  %63 = getelementptr inbounds %struct.cache, %struct.cache* %62, i32 0, i32 0, !dbg !336
  %64 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %63) #3, !dbg !337
  %65 = load i8*, i8** %6, align 8, !dbg !338
  store i8* %65, i8** %3, align 8, !dbg !339
  br label %66, !dbg !339

; <label>:66:                                     ; preds = %57, %11
  %67 = load i8*, i8** %3, align 8, !dbg !340
  ret i8* %67, !dbg !340
}

; Function Attrs: nounwind uwtable
define void @cache_set(%struct.cache* nonnull, i8*, i8*) #0 !dbg !341 {
  %4 = alloca %struct.cache*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cache* %0, %struct.cache** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.cache** %4, metadata !344, metadata !121), !dbg !345
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !346, metadata !121), !dbg !347
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !348, metadata !121), !dbg !349
  call void @llvm.dbg.declare(metadata i32* %7, metadata !350, metadata !121), !dbg !351
  call void @llvm.dbg.declare(metadata i32* %8, metadata !352, metadata !121), !dbg !353
  %9 = load i8*, i8** %5, align 8, !dbg !354
  %10 = icmp ne i8* %9, null, !dbg !354
  br i1 %10, label %11, label %14, !dbg !356

; <label>:11:                                     ; preds = %3
  %12 = load i8*, i8** %6, align 8, !dbg !357
  %13 = icmp ne i8* %12, null, !dbg !357
  br i1 %13, label %15, label %14, !dbg !359

; <label>:14:                                     ; preds = %11, %3
  br label %48, !dbg !360

; <label>:15:                                     ; preds = %11
  %16 = load %struct.cache*, %struct.cache** %4, align 8, !dbg !361
  %17 = getelementptr inbounds %struct.cache, %struct.cache* %16, i32 0, i32 0, !dbg !362
  %18 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %17) #3, !dbg !363
  %19 = load %struct.cache*, %struct.cache** %4, align 8, !dbg !364
  %20 = getelementptr inbounds %struct.cache, %struct.cache* %19, i32 0, i32 6, !dbg !365
  %21 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %20, align 8, !dbg !365
  %22 = load i8*, i8** %5, align 8, !dbg !366
  %23 = call i32 %21(i8* %22, i32* %8), !dbg !364
  store i32 %23, i32* %7, align 4, !dbg !367
  %24 = load i32, i32* %8, align 4, !dbg !368
  %25 = icmp ne i32 %24, 0, !dbg !368
  br i1 %25, label %39, label %26, !dbg !370

; <label>:26:                                     ; preds = %15
  %27 = load %struct.cache*, %struct.cache** %4, align 8, !dbg !371
  %28 = getelementptr inbounds %struct.cache, %struct.cache* %27, i32 0, i32 7, !dbg !373
  %29 = load void (i8*)*, void (i8*)** %28, align 8, !dbg !373
  %30 = load i8*, i8** %5, align 8, !dbg !374
  call void %29(i8* %30), !dbg !371
  %31 = load %struct.cache*, %struct.cache** %4, align 8, !dbg !375
  %32 = getelementptr inbounds %struct.cache, %struct.cache* %31, i32 0, i32 8, !dbg !376
  %33 = load void (i8*)*, void (i8*)** %32, align 8, !dbg !376
  %34 = load %struct.cache*, %struct.cache** %4, align 8, !dbg !377
  %35 = getelementptr inbounds %struct.cache, %struct.cache* %34, i32 0, i32 10, !dbg !378
  %36 = load i8* (i32)*, i8* (i32)** %35, align 8, !dbg !378
  %37 = load i32, i32* %7, align 4, !dbg !379
  %38 = call i8* %36(i32 %37), !dbg !377
  call void %33(i8* %38), !dbg !380
  br label %39, !dbg !382

; <label>:39:                                     ; preds = %26, %15
  %40 = load %struct.cache*, %struct.cache** %4, align 8, !dbg !383
  %41 = getelementptr inbounds %struct.cache, %struct.cache* %40, i32 0, i32 11, !dbg !384
  %42 = load void (i32, i8*)*, void (i32, i8*)** %41, align 8, !dbg !384
  %43 = load i32, i32* %7, align 4, !dbg !385
  %44 = load i8*, i8** %6, align 8, !dbg !386
  call void %42(i32 %43, i8* %44), !dbg !383
  %45 = load %struct.cache*, %struct.cache** %4, align 8, !dbg !387
  %46 = getelementptr inbounds %struct.cache, %struct.cache* %45, i32 0, i32 0, !dbg !388
  %47 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %46) #3, !dbg !389
  br label %48, !dbg !390

; <label>:48:                                     ; preds = %39, %14
  ret void, !dbg !391
}

; Function Attrs: nounwind uwtable
define void @cache_del(%struct.cache* nonnull, i8*) #0 !dbg !393 {
  %3 = alloca %struct.cache*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.cache* %0, %struct.cache** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cache** %3, metadata !396, metadata !121), !dbg !397
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !398, metadata !121), !dbg !399
  call void @llvm.dbg.declare(metadata i32* %5, metadata !400, metadata !121), !dbg !401
  %6 = load %struct.cache*, %struct.cache** %3, align 8, !dbg !402
  %7 = getelementptr inbounds %struct.cache, %struct.cache* %6, i32 0, i32 0, !dbg !403
  %8 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %7) #3, !dbg !404
  %9 = load %struct.cache*, %struct.cache** %3, align 8, !dbg !405
  %10 = getelementptr inbounds %struct.cache, %struct.cache* %9, i32 0, i32 5, !dbg !406
  %11 = load i32 (i8*)*, i32 (i8*)** %10, align 8, !dbg !406
  %12 = load i8*, i8** %4, align 8, !dbg !407
  %13 = call i32 %11(i8* %12), !dbg !405
  store i32 %13, i32* %5, align 4, !dbg !408
  %14 = load i32, i32* %5, align 4, !dbg !409
  %15 = load %struct.cache*, %struct.cache** %3, align 8, !dbg !411
  %16 = getelementptr inbounds %struct.cache, %struct.cache* %15, i32 0, i32 2, !dbg !412
  %17 = load i32 ()*, i32 ()** %16, align 8, !dbg !412
  %18 = call i32 %17(), !dbg !411
  %19 = icmp ne i32 %14, %18, !dbg !413
  br i1 %19, label %20, label %41, !dbg !414

; <label>:20:                                     ; preds = %2
  %21 = load %struct.cache*, %struct.cache** %3, align 8, !dbg !415
  %22 = getelementptr inbounds %struct.cache, %struct.cache* %21, i32 0, i32 8, !dbg !417
  %23 = load void (i8*)*, void (i8*)** %22, align 8, !dbg !417
  %24 = load %struct.cache*, %struct.cache** %3, align 8, !dbg !418
  %25 = getelementptr inbounds %struct.cache, %struct.cache* %24, i32 0, i32 10, !dbg !419
  %26 = load i8* (i32)*, i8* (i32)** %25, align 8, !dbg !419
  %27 = load i32, i32* %5, align 4, !dbg !420
  %28 = call i8* %26(i32 %27), !dbg !418
  call void %23(i8* %28), !dbg !421
  %29 = load %struct.cache*, %struct.cache** %3, align 8, !dbg !423
  %30 = getelementptr inbounds %struct.cache, %struct.cache* %29, i32 0, i32 7, !dbg !424
  %31 = load void (i8*)*, void (i8*)** %30, align 8, !dbg !424
  %32 = load %struct.cache*, %struct.cache** %3, align 8, !dbg !425
  %33 = getelementptr inbounds %struct.cache, %struct.cache* %32, i32 0, i32 9, !dbg !426
  %34 = load i8* (i32)*, i8* (i32)** %33, align 8, !dbg !426
  %35 = load i32, i32* %5, align 4, !dbg !427
  %36 = call i8* %34(i32 %35), !dbg !425
  call void %31(i8* %36), !dbg !428
  %37 = load %struct.cache*, %struct.cache** %3, align 8, !dbg !429
  %38 = getelementptr inbounds %struct.cache, %struct.cache* %37, i32 0, i32 4, !dbg !430
  %39 = load void (i32)*, void (i32)** %38, align 8, !dbg !430
  %40 = load i32, i32* %5, align 4, !dbg !431
  call void %39(i32 %40), !dbg !429
  br label %41, !dbg !432

; <label>:41:                                     ; preds = %20, %2
  %42 = load %struct.cache*, %struct.cache** %3, align 8, !dbg !433
  %43 = getelementptr inbounds %struct.cache, %struct.cache* %42, i32 0, i32 7, !dbg !434
  %44 = load void (i8*)*, void (i8*)** %43, align 8, !dbg !434
  %45 = load i8*, i8** %4, align 8, !dbg !435
  call void %44(i8* %45), !dbg !433
  %46 = load %struct.cache*, %struct.cache** %3, align 8, !dbg !436
  %47 = getelementptr inbounds %struct.cache, %struct.cache* %46, i32 0, i32 0, !dbg !437
  %48 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %47) #3, !dbg !438
  ret void, !dbg !439
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "line21-cache.o.i", directory: "/home/lichi/Desktop/sslsplit/task1")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!8 = distinct !DISubprogram(name: "cache_new", scope: !9, file: !9, line: 44, type: !10, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!9 = !DIFile(filename: "cache.c", directory: "/home/lichi/Desktop/sslsplit/task1")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !115}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_t", file: !14, line: 70, baseType: !15)
!14 = !DIFile(filename: "cache.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache", file: !14, line: 54, size: 1152, align: 64, elements: !16)
!16 = !{!17, !49, !55, !57, !62, !67, !73, !79, !84, !90, !95, !100, !105, !110}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !15, file: !14, line: 55, baseType: !18, size: 320, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !19, line: 128, baseType: !20)
!19 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!20 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !19, line: 90, size: 320, align: 64, elements: !21)
!21 = !{!22, !42, !47}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !20, file: !19, line: 125, baseType: !23, size: 320, align: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !19, line: 92, size: 320, align: 64, elements: !24)
!24 = !{!25, !27, !29, !30, !31, !32, !34, !35}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !23, file: !19, line: 94, baseType: !26, size: 32, align: 32)
!26 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !23, file: !19, line: 95, baseType: !28, size: 32, align: 32, offset: 32)
!28 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !23, file: !19, line: 96, baseType: !26, size: 32, align: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !23, file: !19, line: 98, baseType: !28, size: 32, align: 32, offset: 96)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !23, file: !19, line: 102, baseType: !26, size: 32, align: 32, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !23, file: !19, line: 104, baseType: !33, size: 16, align: 16, offset: 160)
!33 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !23, file: !19, line: 105, baseType: !33, size: 16, align: 16, offset: 176)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !23, file: !19, line: 106, baseType: !36, size: 128, align: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !19, line: 79, baseType: !37)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !19, line: 75, size: 128, align: 64, elements: !38)
!38 = !{!39, !41}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !37, file: !19, line: 77, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !37, file: !19, line: 78, baseType: !40, size: 64, align: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !20, file: !19, line: 126, baseType: !43, size: 320, align: 8)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 320, align: 8, elements: !45)
!44 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!45 = !{!46}
!46 = !DISubrange(count: 40)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !20, file: !19, line: 127, baseType: !48, size: 64, align: 64)
!48 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "begin_cb", scope: !15, file: !14, line: 57, baseType: !50, size: 64, align: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_begin_cb_t", file: !14, line: 40, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!54}
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_iter_t", file: !14, line: 38, baseType: !28)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "end_cb", scope: !15, file: !14, line: 58, baseType: !56, size: 64, align: 64, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_end_cb_t", file: !14, line: 41, baseType: !51)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "exist_cb", scope: !15, file: !14, line: 59, baseType: !58, size: 64, align: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_exist_cb_t", file: !14, line: 42, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!26, !54}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "del_cb", scope: !15, file: !14, line: 60, baseType: !63, size: 64, align: 64, offset: 512)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_del_cb_t", file: !14, line: 43, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !54}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "get_cb", scope: !15, file: !14, line: 61, baseType: !68, size: 64, align: 64, offset: 576)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_get_cb_t", file: !14, line: 44, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!54, !72}
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_key_t", file: !14, line: 37, baseType: !4)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "put_cb", scope: !15, file: !14, line: 62, baseType: !74, size: 64, align: 64, offset: 640)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_put_cb_t", file: !14, line: 45, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!54, !72, !78}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "free_key_cb", scope: !15, file: !14, line: 63, baseType: !80, size: 64, align: 64, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_free_key_cb_t", file: !14, line: 46, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !72}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "free_val_cb", scope: !15, file: !14, line: 64, baseType: !85, size: 64, align: 64, offset: 768)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_free_val_cb_t", file: !14, line: 47, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !89}
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_val_t", file: !14, line: 36, baseType: !4)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "get_key_cb", scope: !15, file: !14, line: 65, baseType: !91, size: 64, align: 64, offset: 832)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_get_key_cb_t", file: !14, line: 48, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{!72, !54}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "get_val_cb", scope: !15, file: !14, line: 66, baseType: !96, size: 64, align: 64, offset: 896)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_get_val_cb_t", file: !14, line: 49, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{!89, !54}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "set_val_cb", scope: !15, file: !14, line: 67, baseType: !101, size: 64, align: 64, offset: 960)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_set_val_cb_t", file: !14, line: 50, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !54, !89}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "unpackverify_val_cb", scope: !15, file: !14, line: 68, baseType: !106, size: 64, align: 64, offset: 1024)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_unpackverify_val_cb_t", file: !14, line: 51, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!89, !89, !26}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "fini_cb", scope: !15, file: !14, line: 69, baseType: !111, size: 64, align: 64, offset: 1088)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_fini_cb_t", file: !14, line: 52, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{null}
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_init_cb_t", file: !14, line: 72, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !119}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!120 = !DILocalVariable(name: "init_cb", arg: 1, scope: !8, file: !9, line: 44, type: !115)
!121 = !DIExpression()
!122 = !DILocation(line: 44, column: 27, scope: !8)
!123 = !DILocalVariable(name: "cache", scope: !8, file: !9, line: 46, type: !12)
!124 = !DILocation(line: 46, column: 11, scope: !8)
!125 = !DILocation(line: 48, column: 16, scope: !126)
!126 = distinct !DILexicalBlock(scope: !8, file: !9, line: 48, column: 6)
!127 = !DILocation(line: 48, column: 14, scope: !126)
!128 = !DILocation(line: 48, column: 6, scope: !8)
!129 = !DILocation(line: 49, column: 3, scope: !126)
!130 = !DILocation(line: 51, column: 26, scope: !131)
!131 = distinct !DILexicalBlock(scope: !8, file: !9, line: 51, column: 6)
!132 = !DILocation(line: 51, column: 33, scope: !131)
!133 = !DILocation(line: 51, column: 6, scope: !131)
!134 = !DILocation(line: 51, column: 6, scope: !8)
!135 = !DILocation(line: 52, column: 8, scope: !136)
!136 = distinct !DILexicalBlock(scope: !131, file: !9, line: 51, column: 46)
!137 = !DILocation(line: 52, column: 3, scope: !136)
!138 = !DILocation(line: 53, column: 3, scope: !136)
!139 = !DILocation(line: 56, column: 2, scope: !8)
!140 = !DILocation(line: 56, column: 10, scope: !8)
!141 = !DILocation(line: 57, column: 9, scope: !8)
!142 = !DILocation(line: 57, column: 2, scope: !8)
!143 = !DILocation(line: 58, column: 1, scope: !8)
!144 = distinct !DISubprogram(name: "cache_reinit", scope: !9, file: !9, line: 64, type: !145, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!145 = !DISubroutineType(types: !146)
!146 = !{!26, !12}
!147 = !DILocalVariable(name: "cache", arg: 1, scope: !144, file: !9, line: 64, type: !12)
!148 = !DILocation(line: 64, column: 23, scope: !144)
!149 = !DILocation(line: 66, column: 29, scope: !144)
!150 = !DILocation(line: 66, column: 36, scope: !144)
!151 = !DILocation(line: 66, column: 9, scope: !144)
!152 = !DILocation(line: 66, column: 2, scope: !144)
!153 = distinct !DISubprogram(name: "cache_free", scope: !9, file: !9, line: 74, type: !154, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !12}
!156 = !DILocalVariable(name: "cache", arg: 1, scope: !153, file: !9, line: 74, type: !12)
!157 = !DILocation(line: 74, column: 21, scope: !153)
!158 = !DILocalVariable(name: "it", scope: !153, file: !9, line: 76, type: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "khiter_t", file: !160, line: 163, baseType: !161)
!160 = !DIFile(filename: "khash.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "khint_t", file: !160, line: 162, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "khint32_t", file: !160, line: 135, baseType: !28)
!163 = !DILocation(line: 76, column: 11, scope: !153)
!164 = !DILocation(line: 78, column: 12, scope: !165)
!165 = distinct !DILexicalBlock(scope: !153, file: !9, line: 78, column: 2)
!166 = !DILocation(line: 78, column: 19, scope: !165)
!167 = !DILocation(line: 78, column: 10, scope: !165)
!168 = !DILocation(line: 78, column: 7, scope: !165)
!169 = !DILocation(line: 78, column: 31, scope: !170)
!170 = !DILexicalBlockFile(scope: !171, file: !9, discriminator: 1)
!171 = distinct !DILexicalBlock(scope: !165, file: !9, line: 78, column: 2)
!172 = !DILocation(line: 78, column: 37, scope: !170)
!173 = !DILocation(line: 78, column: 44, scope: !170)
!174 = !DILocation(line: 78, column: 34, scope: !170)
!175 = !DILocation(line: 78, column: 2, scope: !170)
!176 = !DILocation(line: 79, column: 7, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !9, line: 79, column: 7)
!178 = distinct !DILexicalBlock(scope: !171, file: !9, line: 78, column: 60)
!179 = !DILocation(line: 79, column: 14, scope: !177)
!180 = !DILocation(line: 79, column: 23, scope: !177)
!181 = !DILocation(line: 79, column: 7, scope: !178)
!182 = !DILocation(line: 80, column: 4, scope: !183)
!183 = distinct !DILexicalBlock(scope: !177, file: !9, line: 79, column: 28)
!184 = !DILocation(line: 80, column: 11, scope: !183)
!185 = !DILocation(line: 80, column: 23, scope: !183)
!186 = !DILocation(line: 80, column: 30, scope: !183)
!187 = !DILocation(line: 80, column: 41, scope: !183)
!188 = !DILocation(line: 80, column: 4, scope: !189)
!189 = !DILexicalBlockFile(scope: !183, file: !9, discriminator: 1)
!190 = !DILocation(line: 81, column: 4, scope: !183)
!191 = !DILocation(line: 81, column: 11, scope: !183)
!192 = !DILocation(line: 81, column: 23, scope: !183)
!193 = !DILocation(line: 81, column: 30, scope: !183)
!194 = !DILocation(line: 81, column: 41, scope: !183)
!195 = !DILocation(line: 81, column: 4, scope: !189)
!196 = !DILocation(line: 82, column: 3, scope: !183)
!197 = !DILocation(line: 83, column: 2, scope: !178)
!198 = !DILocation(line: 78, column: 56, scope: !199)
!199 = !DILexicalBlockFile(scope: !171, file: !9, discriminator: 2)
!200 = !DILocation(line: 78, column: 2, scope: !199)
!201 = distinct !{!201, !202}
!202 = !DILocation(line: 78, column: 2, scope: !153)
!203 = !DILocation(line: 84, column: 2, scope: !153)
!204 = !DILocation(line: 84, column: 9, scope: !153)
!205 = !DILocation(line: 85, column: 25, scope: !153)
!206 = !DILocation(line: 85, column: 32, scope: !153)
!207 = !DILocation(line: 85, column: 2, scope: !153)
!208 = !DILocation(line: 86, column: 7, scope: !153)
!209 = !DILocation(line: 86, column: 2, scope: !153)
!210 = !DILocation(line: 87, column: 1, scope: !153)
!211 = distinct !DISubprogram(name: "cache_gc", scope: !9, file: !9, line: 90, type: !154, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!212 = !DILocalVariable(name: "cache", arg: 1, scope: !211, file: !9, line: 90, type: !12)
!213 = !DILocation(line: 90, column: 19, scope: !211)
!214 = !DILocalVariable(name: "it", scope: !211, file: !9, line: 92, type: !159)
!215 = !DILocation(line: 92, column: 11, scope: !211)
!216 = !DILocalVariable(name: "val", scope: !211, file: !9, line: 93, type: !89)
!217 = !DILocation(line: 93, column: 14, scope: !211)
!218 = !DILocation(line: 95, column: 22, scope: !211)
!219 = !DILocation(line: 95, column: 29, scope: !211)
!220 = !DILocation(line: 95, column: 2, scope: !211)
!221 = !DILocation(line: 96, column: 12, scope: !222)
!222 = distinct !DILexicalBlock(scope: !211, file: !9, line: 96, column: 2)
!223 = !DILocation(line: 96, column: 19, scope: !222)
!224 = !DILocation(line: 96, column: 10, scope: !222)
!225 = !DILocation(line: 96, column: 7, scope: !222)
!226 = !DILocation(line: 96, column: 31, scope: !227)
!227 = !DILexicalBlockFile(scope: !228, file: !9, discriminator: 1)
!228 = distinct !DILexicalBlock(scope: !222, file: !9, line: 96, column: 2)
!229 = !DILocation(line: 96, column: 37, scope: !227)
!230 = !DILocation(line: 96, column: 44, scope: !227)
!231 = !DILocation(line: 96, column: 34, scope: !227)
!232 = !DILocation(line: 96, column: 2, scope: !227)
!233 = !DILocation(line: 97, column: 7, scope: !234)
!234 = distinct !DILexicalBlock(scope: !235, file: !9, line: 97, column: 7)
!235 = distinct !DILexicalBlock(scope: !228, file: !9, line: 96, column: 60)
!236 = !DILocation(line: 97, column: 14, scope: !234)
!237 = !DILocation(line: 97, column: 23, scope: !234)
!238 = !DILocation(line: 97, column: 7, scope: !235)
!239 = !DILocation(line: 98, column: 10, scope: !240)
!240 = distinct !DILexicalBlock(scope: !234, file: !9, line: 97, column: 28)
!241 = !DILocation(line: 98, column: 17, scope: !240)
!242 = !DILocation(line: 98, column: 28, scope: !240)
!243 = !DILocation(line: 98, column: 8, scope: !240)
!244 = !DILocation(line: 99, column: 9, scope: !245)
!245 = distinct !DILexicalBlock(scope: !240, file: !9, line: 99, column: 8)
!246 = !DILocation(line: 99, column: 16, scope: !245)
!247 = !DILocation(line: 99, column: 36, scope: !245)
!248 = !DILocation(line: 99, column: 8, scope: !240)
!249 = !DILocation(line: 100, column: 5, scope: !250)
!250 = distinct !DILexicalBlock(scope: !245, file: !9, line: 99, column: 45)
!251 = !DILocation(line: 100, column: 12, scope: !250)
!252 = !DILocation(line: 100, column: 24, scope: !250)
!253 = !DILocation(line: 101, column: 5, scope: !250)
!254 = !DILocation(line: 101, column: 12, scope: !250)
!255 = !DILocation(line: 101, column: 24, scope: !250)
!256 = !DILocation(line: 101, column: 31, scope: !250)
!257 = !DILocation(line: 101, column: 42, scope: !250)
!258 = !DILocation(line: 101, column: 5, scope: !259)
!259 = !DILexicalBlockFile(scope: !250, file: !9, discriminator: 1)
!260 = !DILocation(line: 102, column: 5, scope: !250)
!261 = !DILocation(line: 102, column: 12, scope: !250)
!262 = !DILocation(line: 102, column: 19, scope: !250)
!263 = !DILocation(line: 103, column: 4, scope: !250)
!264 = !DILocation(line: 104, column: 3, scope: !240)
!265 = !DILocation(line: 105, column: 2, scope: !235)
!266 = !DILocation(line: 96, column: 56, scope: !267)
!267 = !DILexicalBlockFile(scope: !228, file: !9, discriminator: 2)
!268 = !DILocation(line: 96, column: 2, scope: !267)
!269 = distinct !{!269, !270}
!270 = !DILocation(line: 96, column: 2, scope: !211)
!271 = !DILocation(line: 106, column: 24, scope: !211)
!272 = !DILocation(line: 106, column: 31, scope: !211)
!273 = !DILocation(line: 106, column: 2, scope: !211)
!274 = !DILocation(line: 107, column: 1, scope: !211)
!275 = distinct !DISubprogram(name: "cache_get", scope: !9, file: !9, line: 110, type: !276, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!276 = !DISubroutineType(types: !277)
!277 = !{!89, !12, !72}
!278 = !DILocalVariable(name: "cache", arg: 1, scope: !275, file: !9, line: 110, type: !12)
!279 = !DILocation(line: 110, column: 20, scope: !275)
!280 = !DILocalVariable(name: "key", arg: 2, scope: !275, file: !9, line: 110, type: !72)
!281 = !DILocation(line: 110, column: 39, scope: !275)
!282 = !DILocalVariable(name: "rval", scope: !275, file: !9, line: 112, type: !89)
!283 = !DILocation(line: 112, column: 14, scope: !275)
!284 = !DILocalVariable(name: "it", scope: !275, file: !9, line: 113, type: !159)
!285 = !DILocation(line: 113, column: 11, scope: !275)
!286 = !DILocation(line: 115, column: 7, scope: !287)
!287 = distinct !DILexicalBlock(scope: !275, file: !9, line: 115, column: 6)
!288 = !DILocation(line: 115, column: 6, scope: !275)
!289 = !DILocation(line: 116, column: 3, scope: !287)
!290 = !DILocation(line: 118, column: 22, scope: !275)
!291 = !DILocation(line: 118, column: 29, scope: !275)
!292 = !DILocation(line: 118, column: 2, scope: !275)
!293 = !DILocation(line: 119, column: 7, scope: !275)
!294 = !DILocation(line: 119, column: 14, scope: !275)
!295 = !DILocation(line: 119, column: 21, scope: !275)
!296 = !DILocation(line: 119, column: 5, scope: !275)
!297 = !DILocation(line: 120, column: 6, scope: !298)
!298 = distinct !DILexicalBlock(scope: !275, file: !9, line: 120, column: 6)
!299 = !DILocation(line: 120, column: 12, scope: !298)
!300 = !DILocation(line: 120, column: 19, scope: !298)
!301 = !DILocation(line: 120, column: 9, scope: !298)
!302 = !DILocation(line: 120, column: 6, scope: !275)
!303 = !DILocalVariable(name: "val", scope: !304, file: !9, line: 121, type: !89)
!304 = distinct !DILexicalBlock(scope: !298, file: !9, line: 120, column: 29)
!305 = !DILocation(line: 121, column: 15, scope: !304)
!306 = !DILocation(line: 122, column: 9, scope: !304)
!307 = !DILocation(line: 122, column: 16, scope: !304)
!308 = !DILocation(line: 122, column: 27, scope: !304)
!309 = !DILocation(line: 122, column: 7, scope: !304)
!310 = !DILocation(line: 123, column: 16, scope: !311)
!311 = distinct !DILexicalBlock(scope: !304, file: !9, line: 123, column: 7)
!312 = !DILocation(line: 123, column: 23, scope: !311)
!313 = !DILocation(line: 123, column: 43, scope: !311)
!314 = !DILocation(line: 123, column: 14, scope: !311)
!315 = !DILocation(line: 123, column: 7, scope: !304)
!316 = !DILocation(line: 124, column: 4, scope: !317)
!317 = distinct !DILexicalBlock(scope: !311, file: !9, line: 123, column: 53)
!318 = !DILocation(line: 124, column: 11, scope: !317)
!319 = !DILocation(line: 124, column: 23, scope: !317)
!320 = !DILocation(line: 125, column: 4, scope: !317)
!321 = !DILocation(line: 125, column: 11, scope: !317)
!322 = !DILocation(line: 125, column: 23, scope: !317)
!323 = !DILocation(line: 125, column: 30, scope: !317)
!324 = !DILocation(line: 125, column: 41, scope: !317)
!325 = !DILocation(line: 125, column: 4, scope: !326)
!326 = !DILexicalBlockFile(scope: !317, file: !9, discriminator: 1)
!327 = !DILocation(line: 126, column: 4, scope: !317)
!328 = !DILocation(line: 126, column: 11, scope: !317)
!329 = !DILocation(line: 126, column: 18, scope: !317)
!330 = !DILocation(line: 127, column: 3, scope: !317)
!331 = !DILocation(line: 128, column: 2, scope: !304)
!332 = !DILocation(line: 129, column: 2, scope: !275)
!333 = !DILocation(line: 129, column: 9, scope: !275)
!334 = !DILocation(line: 129, column: 21, scope: !275)
!335 = !DILocation(line: 130, column: 24, scope: !275)
!336 = !DILocation(line: 130, column: 31, scope: !275)
!337 = !DILocation(line: 130, column: 2, scope: !275)
!338 = !DILocation(line: 131, column: 9, scope: !275)
!339 = !DILocation(line: 131, column: 2, scope: !275)
!340 = !DILocation(line: 132, column: 1, scope: !275)
!341 = distinct !DISubprogram(name: "cache_set", scope: !9, file: !9, line: 135, type: !342, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !12, !72, !89}
!344 = !DILocalVariable(name: "cache", arg: 1, scope: !341, file: !9, line: 135, type: !12)
!345 = !DILocation(line: 135, column: 20, scope: !341)
!346 = !DILocalVariable(name: "key", arg: 2, scope: !341, file: !9, line: 135, type: !72)
!347 = !DILocation(line: 135, column: 39, scope: !341)
!348 = !DILocalVariable(name: "val", arg: 3, scope: !341, file: !9, line: 135, type: !89)
!349 = !DILocation(line: 135, column: 56, scope: !341)
!350 = !DILocalVariable(name: "it", scope: !341, file: !9, line: 137, type: !159)
!351 = !DILocation(line: 137, column: 11, scope: !341)
!352 = !DILocalVariable(name: "ret", scope: !341, file: !9, line: 138, type: !26)
!353 = !DILocation(line: 138, column: 6, scope: !341)
!354 = !DILocation(line: 140, column: 7, scope: !355)
!355 = distinct !DILexicalBlock(scope: !341, file: !9, line: 140, column: 6)
!356 = !DILocation(line: 140, column: 11, scope: !355)
!357 = !DILocation(line: 140, column: 15, scope: !358)
!358 = !DILexicalBlockFile(scope: !355, file: !9, discriminator: 1)
!359 = !DILocation(line: 140, column: 6, scope: !358)
!360 = !DILocation(line: 141, column: 3, scope: !355)
!361 = !DILocation(line: 143, column: 22, scope: !341)
!362 = !DILocation(line: 143, column: 29, scope: !341)
!363 = !DILocation(line: 143, column: 2, scope: !341)
!364 = !DILocation(line: 144, column: 7, scope: !341)
!365 = !DILocation(line: 144, column: 14, scope: !341)
!366 = !DILocation(line: 144, column: 21, scope: !341)
!367 = !DILocation(line: 144, column: 5, scope: !341)
!368 = !DILocation(line: 145, column: 7, scope: !369)
!369 = distinct !DILexicalBlock(scope: !341, file: !9, line: 145, column: 6)
!370 = !DILocation(line: 145, column: 6, scope: !341)
!371 = !DILocation(line: 146, column: 3, scope: !372)
!372 = distinct !DILexicalBlock(scope: !369, file: !9, line: 145, column: 12)
!373 = !DILocation(line: 146, column: 10, scope: !372)
!374 = !DILocation(line: 146, column: 22, scope: !372)
!375 = !DILocation(line: 147, column: 3, scope: !372)
!376 = !DILocation(line: 147, column: 10, scope: !372)
!377 = !DILocation(line: 147, column: 22, scope: !372)
!378 = !DILocation(line: 147, column: 29, scope: !372)
!379 = !DILocation(line: 147, column: 40, scope: !372)
!380 = !DILocation(line: 147, column: 3, scope: !381)
!381 = !DILexicalBlockFile(scope: !372, file: !9, discriminator: 1)
!382 = !DILocation(line: 148, column: 2, scope: !372)
!383 = !DILocation(line: 149, column: 2, scope: !341)
!384 = !DILocation(line: 149, column: 9, scope: !341)
!385 = !DILocation(line: 149, column: 20, scope: !341)
!386 = !DILocation(line: 149, column: 24, scope: !341)
!387 = !DILocation(line: 150, column: 24, scope: !341)
!388 = !DILocation(line: 150, column: 31, scope: !341)
!389 = !DILocation(line: 150, column: 2, scope: !341)
!390 = !DILocation(line: 151, column: 1, scope: !341)
!391 = !DILocation(line: 151, column: 1, scope: !392)
!392 = !DILexicalBlockFile(scope: !341, file: !9, discriminator: 1)
!393 = distinct !DISubprogram(name: "cache_del", scope: !9, file: !9, line: 154, type: !394, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !12, !72}
!396 = !DILocalVariable(name: "cache", arg: 1, scope: !393, file: !9, line: 154, type: !12)
!397 = !DILocation(line: 154, column: 20, scope: !393)
!398 = !DILocalVariable(name: "key", arg: 2, scope: !393, file: !9, line: 154, type: !72)
!399 = !DILocation(line: 154, column: 39, scope: !393)
!400 = !DILocalVariable(name: "it", scope: !393, file: !9, line: 156, type: !159)
!401 = !DILocation(line: 156, column: 11, scope: !393)
!402 = !DILocation(line: 158, column: 22, scope: !393)
!403 = !DILocation(line: 158, column: 29, scope: !393)
!404 = !DILocation(line: 158, column: 2, scope: !393)
!405 = !DILocation(line: 159, column: 7, scope: !393)
!406 = !DILocation(line: 159, column: 14, scope: !393)
!407 = !DILocation(line: 159, column: 21, scope: !393)
!408 = !DILocation(line: 159, column: 5, scope: !393)
!409 = !DILocation(line: 160, column: 6, scope: !410)
!410 = distinct !DILexicalBlock(scope: !393, file: !9, line: 160, column: 6)
!411 = !DILocation(line: 160, column: 12, scope: !410)
!412 = !DILocation(line: 160, column: 19, scope: !410)
!413 = !DILocation(line: 160, column: 9, scope: !410)
!414 = !DILocation(line: 160, column: 6, scope: !393)
!415 = !DILocation(line: 161, column: 3, scope: !416)
!416 = distinct !DILexicalBlock(scope: !410, file: !9, line: 160, column: 29)
!417 = !DILocation(line: 161, column: 10, scope: !416)
!418 = !DILocation(line: 161, column: 22, scope: !416)
!419 = !DILocation(line: 161, column: 29, scope: !416)
!420 = !DILocation(line: 161, column: 40, scope: !416)
!421 = !DILocation(line: 161, column: 3, scope: !422)
!422 = !DILexicalBlockFile(scope: !416, file: !9, discriminator: 1)
!423 = !DILocation(line: 162, column: 3, scope: !416)
!424 = !DILocation(line: 162, column: 10, scope: !416)
!425 = !DILocation(line: 162, column: 22, scope: !416)
!426 = !DILocation(line: 162, column: 29, scope: !416)
!427 = !DILocation(line: 162, column: 40, scope: !416)
!428 = !DILocation(line: 162, column: 3, scope: !422)
!429 = !DILocation(line: 163, column: 3, scope: !416)
!430 = !DILocation(line: 163, column: 10, scope: !416)
!431 = !DILocation(line: 163, column: 17, scope: !416)
!432 = !DILocation(line: 164, column: 2, scope: !416)
!433 = !DILocation(line: 165, column: 2, scope: !393)
!434 = !DILocation(line: 165, column: 9, scope: !393)
!435 = !DILocation(line: 165, column: 21, scope: !393)
!436 = !DILocation(line: 166, column: 24, scope: !393)
!437 = !DILocation(line: 166, column: 31, scope: !393)
!438 = !DILocation(line: 166, column: 2, scope: !393)
!439 = !DILocation(line: 167, column: 1, scope: !393)
