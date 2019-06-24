; ModuleID = './line26-logger.o.i'
source_filename = "./line26-logger.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.logger = type { i64, i32 ()*, i32 (i8*)*, void (i8*, i64)*, %struct.logbuf* (i8*, i64, %struct.logbuf*)*, i64 (i8*, i64, i8*, i64)*, void ()*, %struct.thrqueue* }
%struct.thrqueue = type opaque
%struct.logbuf = type { i8*, i64, i8*, i64, %struct.logbuf* }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: nounwind uwtable
define noalias %struct.logger* @logger_new(i32 ()*, i32 (i8*)*, void (i8*, i64)*, i64 (i8*, i64, i8*, i64)* nonnull, %struct.logbuf* (i8*, i64, %struct.logbuf*)*, void ()* nonnull) #0 !dbg !11 {
  %7 = alloca %struct.logger*, align 8
  %8 = alloca i32 ()*, align 8
  %9 = alloca i32 (i8*)*, align 8
  %10 = alloca void (i8*, i64)*, align 8
  %11 = alloca i64 (i8*, i64, i8*, i64)*, align 8
  %12 = alloca %struct.logbuf* (i8*, i64, %struct.logbuf*)*, align 8
  %13 = alloca void ()*, align 8
  %14 = alloca %struct.logger*, align 8
  store i32 ()* %0, i32 ()** %8, align 8
  call void @llvm.dbg.declare(metadata i32 ()** %8, metadata !82, metadata !83), !dbg !84
  store i32 (i8*)* %1, i32 (i8*)** %9, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*)** %9, metadata !85, metadata !83), !dbg !86
  store void (i8*, i64)* %2, void (i8*, i64)** %10, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i64)** %10, metadata !87, metadata !83), !dbg !88
  store i64 (i8*, i64, i8*, i64)* %3, i64 (i8*, i64, i8*, i64)** %11, align 8
  call void @llvm.dbg.declare(metadata i64 (i8*, i64, i8*, i64)** %11, metadata !89, metadata !83), !dbg !90
  store %struct.logbuf* (i8*, i64, %struct.logbuf*)* %4, %struct.logbuf* (i8*, i64, %struct.logbuf*)** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.logbuf* (i8*, i64, %struct.logbuf*)** %12, metadata !91, metadata !83), !dbg !92
  store void ()* %5, void ()** %13, align 8
  call void @llvm.dbg.declare(metadata void ()** %13, metadata !93, metadata !83), !dbg !94
  call void @llvm.dbg.declare(metadata %struct.logger** %14, metadata !95, metadata !83), !dbg !96
  %15 = call noalias i8* @malloc(i64 64) #4, !dbg !97
  %16 = bitcast i8* %15 to %struct.logger*, !dbg !97
  store %struct.logger* %16, %struct.logger** %14, align 8, !dbg !98
  %17 = load %struct.logger*, %struct.logger** %14, align 8, !dbg !99
  %18 = icmp ne %struct.logger* %17, null, !dbg !99
  br i1 %18, label %20, label %19, !dbg !101

; <label>:19:                                     ; preds = %6
  store %struct.logger* null, %struct.logger** %7, align 8, !dbg !102
  br label %43, !dbg !102

; <label>:20:                                     ; preds = %6
  %21 = load %struct.logger*, %struct.logger** %14, align 8, !dbg !103
  call void @logger_clear(%struct.logger* %21), !dbg !104
  %22 = load i32 ()*, i32 ()** %8, align 8, !dbg !105
  %23 = load %struct.logger*, %struct.logger** %14, align 8, !dbg !106
  %24 = getelementptr inbounds %struct.logger, %struct.logger* %23, i32 0, i32 1, !dbg !107
  store i32 ()* %22, i32 ()** %24, align 8, !dbg !108
  %25 = load i32 (i8*)*, i32 (i8*)** %9, align 8, !dbg !109
  %26 = load %struct.logger*, %struct.logger** %14, align 8, !dbg !110
  %27 = getelementptr inbounds %struct.logger, %struct.logger* %26, i32 0, i32 2, !dbg !111
  store i32 (i8*)* %25, i32 (i8*)** %27, align 8, !dbg !112
  %28 = load void (i8*, i64)*, void (i8*, i64)** %10, align 8, !dbg !113
  %29 = load %struct.logger*, %struct.logger** %14, align 8, !dbg !114
  %30 = getelementptr inbounds %struct.logger, %struct.logger* %29, i32 0, i32 3, !dbg !115
  store void (i8*, i64)* %28, void (i8*, i64)** %30, align 8, !dbg !116
  %31 = load i64 (i8*, i64, i8*, i64)*, i64 (i8*, i64, i8*, i64)** %11, align 8, !dbg !117
  %32 = load %struct.logger*, %struct.logger** %14, align 8, !dbg !118
  %33 = getelementptr inbounds %struct.logger, %struct.logger* %32, i32 0, i32 5, !dbg !119
  store i64 (i8*, i64, i8*, i64)* %31, i64 (i8*, i64, i8*, i64)** %33, align 8, !dbg !120
  %34 = load %struct.logbuf* (i8*, i64, %struct.logbuf*)*, %struct.logbuf* (i8*, i64, %struct.logbuf*)** %12, align 8, !dbg !121
  %35 = load %struct.logger*, %struct.logger** %14, align 8, !dbg !122
  %36 = getelementptr inbounds %struct.logger, %struct.logger* %35, i32 0, i32 4, !dbg !123
  store %struct.logbuf* (i8*, i64, %struct.logbuf*)* %34, %struct.logbuf* (i8*, i64, %struct.logbuf*)** %36, align 8, !dbg !124
  %37 = load void ()*, void ()** %13, align 8, !dbg !125
  %38 = load %struct.logger*, %struct.logger** %14, align 8, !dbg !126
  %39 = getelementptr inbounds %struct.logger, %struct.logger* %38, i32 0, i32 6, !dbg !127
  store void ()* %37, void ()** %39, align 8, !dbg !128
  %40 = load %struct.logger*, %struct.logger** %14, align 8, !dbg !129
  %41 = getelementptr inbounds %struct.logger, %struct.logger* %40, i32 0, i32 7, !dbg !130
  store %struct.thrqueue* null, %struct.thrqueue** %41, align 8, !dbg !131
  %42 = load %struct.logger*, %struct.logger** %14, align 8, !dbg !132
  store %struct.logger* %42, %struct.logger** %7, align 8, !dbg !133
  br label %43, !dbg !133

; <label>:43:                                     ; preds = %20, %19
  %44 = load %struct.logger*, %struct.logger** %7, align 8, !dbg !134
  ret %struct.logger* %44, !dbg !134
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define internal void @logger_clear(%struct.logger*) #0 !dbg !135 {
  %2 = alloca %struct.logger*, align 8
  store %struct.logger* %0, %struct.logger** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.logger** %2, metadata !138, metadata !83), !dbg !139
  %3 = load %struct.logger*, %struct.logger** %2, align 8, !dbg !140
  %4 = bitcast %struct.logger* %3 to i8*, !dbg !141
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 64, i32 8, i1 false), !dbg !141
  ret void, !dbg !142
}

; Function Attrs: nounwind uwtable
define void @logger_free(%struct.logger* nonnull) #0 !dbg !143 {
  %2 = alloca %struct.logger*, align 8
  store %struct.logger* %0, %struct.logger** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.logger** %2, metadata !144, metadata !83), !dbg !145
  %3 = load %struct.logger*, %struct.logger** %2, align 8, !dbg !146
  %4 = getelementptr inbounds %struct.logger, %struct.logger* %3, i32 0, i32 7, !dbg !148
  %5 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !148
  %6 = icmp ne %struct.thrqueue* %5, null, !dbg !146
  br i1 %6, label %7, label %11, !dbg !149

; <label>:7:                                      ; preds = %1
  %8 = load %struct.logger*, %struct.logger** %2, align 8, !dbg !150
  %9 = getelementptr inbounds %struct.logger, %struct.logger* %8, i32 0, i32 7, !dbg !152
  %10 = load %struct.thrqueue*, %struct.thrqueue** %9, align 8, !dbg !152
  call void @thrqueue_free(%struct.thrqueue* %10), !dbg !153
  br label %11, !dbg !154

; <label>:11:                                     ; preds = %7, %1
  %12 = load %struct.logger*, %struct.logger** %2, align 8, !dbg !155
  %13 = bitcast %struct.logger* %12 to i8*, !dbg !155
  call void @free(i8* %13) #4, !dbg !156
  ret void, !dbg !157
}

declare void @thrqueue_free(%struct.thrqueue*) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @logger_submit(%struct.logger* nonnull, i8*, i64, %struct.logbuf*) #0 !dbg !158 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.logger*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.logbuf*, align 8
  store %struct.logger* %0, %struct.logger** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.logger** %6, metadata !161, metadata !83), !dbg !162
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !163, metadata !83), !dbg !164
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !165, metadata !83), !dbg !166
  store %struct.logbuf* %3, %struct.logbuf** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.logbuf** %9, metadata !167, metadata !83), !dbg !168
  %10 = load %struct.logbuf*, %struct.logbuf** %9, align 8, !dbg !169
  %11 = icmp ne %struct.logbuf* %10, null, !dbg !169
  br i1 %11, label %12, label %18, !dbg !171

; <label>:12:                                     ; preds = %4
  %13 = load i8*, i8** %7, align 8, !dbg !172
  %14 = load %struct.logbuf*, %struct.logbuf** %9, align 8, !dbg !174
  %15 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %14, i32 0, i32 2, !dbg !175
  store i8* %13, i8** %15, align 8, !dbg !176
  %16 = load %struct.logbuf*, %struct.logbuf** %9, align 8, !dbg !177
  %17 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %16, i32 0, i32 3, !dbg !178
  store i64 0, i64* %17, align 8, !dbg !179
  br label %18, !dbg !180

; <label>:18:                                     ; preds = %12, %4
  %19 = load %struct.logger*, %struct.logger** %6, align 8, !dbg !181
  %20 = getelementptr inbounds %struct.logger, %struct.logger* %19, i32 0, i32 4, !dbg !183
  %21 = load %struct.logbuf* (i8*, i64, %struct.logbuf*)*, %struct.logbuf* (i8*, i64, %struct.logbuf*)** %20, align 8, !dbg !183
  %22 = icmp ne %struct.logbuf* (i8*, i64, %struct.logbuf*)* %21, null, !dbg !181
  br i1 %22, label %23, label %31, !dbg !184

; <label>:23:                                     ; preds = %18
  %24 = load %struct.logger*, %struct.logger** %6, align 8, !dbg !185
  %25 = getelementptr inbounds %struct.logger, %struct.logger* %24, i32 0, i32 4, !dbg !186
  %26 = load %struct.logbuf* (i8*, i64, %struct.logbuf*)*, %struct.logbuf* (i8*, i64, %struct.logbuf*)** %25, align 8, !dbg !186
  %27 = load i8*, i8** %7, align 8, !dbg !187
  %28 = load i64, i64* %8, align 8, !dbg !188
  %29 = load %struct.logbuf*, %struct.logbuf** %9, align 8, !dbg !189
  %30 = call %struct.logbuf* %26(i8* %27, i64 %28, %struct.logbuf* %29), !dbg !185
  store %struct.logbuf* %30, %struct.logbuf** %9, align 8, !dbg !190
  br label %31, !dbg !191

; <label>:31:                                     ; preds = %23, %18
  %32 = load %struct.logbuf*, %struct.logbuf** %9, align 8, !dbg !192
  %33 = icmp ne %struct.logbuf* %32, null, !dbg !192
  br i1 %33, label %35, label %34, !dbg !194

; <label>:34:                                     ; preds = %31
  store i32 0, i32* %5, align 4, !dbg !195
  br label %46, !dbg !195

; <label>:35:                                     ; preds = %31
  %36 = load %struct.logger*, %struct.logger** %6, align 8, !dbg !196
  %37 = getelementptr inbounds %struct.logger, %struct.logger* %36, i32 0, i32 7, !dbg !198
  %38 = load %struct.thrqueue*, %struct.thrqueue** %37, align 8, !dbg !198
  %39 = load %struct.logbuf*, %struct.logbuf** %9, align 8, !dbg !199
  %40 = bitcast %struct.logbuf* %39 to i8*, !dbg !199
  %41 = call i8* @thrqueue_enqueue(%struct.thrqueue* %38, i8* %40), !dbg !200
  %42 = icmp ne i8* %41, null, !dbg !200
  br i1 %42, label %43, label %44, !dbg !201

; <label>:43:                                     ; preds = %35
  store i32 0, i32* %5, align 4, !dbg !202
  br label %46, !dbg !202

; <label>:44:                                     ; preds = %35
  %45 = load %struct.logbuf*, %struct.logbuf** %9, align 8, !dbg !204
  call void @logbuf_free(%struct.logbuf* %45), !dbg !206
  store i32 -1, i32* %5, align 4, !dbg !207
  br label %46, !dbg !207

; <label>:46:                                     ; preds = %44, %43, %34
  %47 = load i32, i32* %5, align 4, !dbg !208
  ret i32 %47, !dbg !208
}

declare i8* @thrqueue_enqueue(%struct.thrqueue*, i8*) #3

declare void @logbuf_free(%struct.logbuf*) #3

; Function Attrs: nounwind uwtable
define i32 @logger_reopen(%struct.logger* nonnull) #0 !dbg !209 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.logger*, align 8
  %4 = alloca %struct.logbuf*, align 8
  store %struct.logger* %0, %struct.logger** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.logger** %3, metadata !212, metadata !83), !dbg !213
  call void @llvm.dbg.declare(metadata %struct.logbuf** %4, metadata !214, metadata !83), !dbg !215
  %5 = load %struct.logger*, %struct.logger** %3, align 8, !dbg !216
  %6 = getelementptr inbounds %struct.logger, %struct.logger* %5, i32 0, i32 1, !dbg !218
  %7 = load i32 ()*, i32 ()** %6, align 8, !dbg !218
  %8 = icmp ne i32 ()* %7, null, !dbg !216
  br i1 %8, label %10, label %9, !dbg !219

; <label>:9:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !220
  br label %27, !dbg !220

; <label>:10:                                     ; preds = %1
  %11 = call noalias %struct.logbuf* @logbuf_new(i8* null, i64 0, %struct.logbuf* null), !dbg !221
  store %struct.logbuf* %11, %struct.logbuf** %4, align 8, !dbg !223
  %12 = icmp ne %struct.logbuf* %11, null, !dbg !223
  br i1 %12, label %14, label %13, !dbg !224

; <label>:13:                                     ; preds = %10
  store i32 -1, i32* %2, align 4, !dbg !225
  br label %27, !dbg !225

; <label>:14:                                     ; preds = %10
  %15 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !226
  %16 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %15, i32 0, i32 3, !dbg !227
  %17 = load i64, i64* %16, align 8, !dbg !228
  %18 = or i64 %17, 1, !dbg !228
  store i64 %18, i64* %16, align 8, !dbg !228
  %19 = load %struct.logger*, %struct.logger** %3, align 8, !dbg !229
  %20 = getelementptr inbounds %struct.logger, %struct.logger* %19, i32 0, i32 7, !dbg !230
  %21 = load %struct.thrqueue*, %struct.thrqueue** %20, align 8, !dbg !230
  %22 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !231
  %23 = bitcast %struct.logbuf* %22 to i8*, !dbg !231
  %24 = call i8* @thrqueue_enqueue(%struct.thrqueue* %21, i8* %23), !dbg !232
  %25 = icmp ne i8* %24, null, !dbg !232
  %26 = select i1 %25, i32 0, i32 -1, !dbg !232
  store i32 %26, i32* %2, align 4, !dbg !233
  br label %27, !dbg !233

; <label>:27:                                     ; preds = %14, %13, %9
  %28 = load i32, i32* %2, align 4, !dbg !234
  ret i32 %28, !dbg !234
}

declare noalias %struct.logbuf* @logbuf_new(i8*, i64, %struct.logbuf*) #3

; Function Attrs: nounwind uwtable
define i32 @logger_open(%struct.logger* nonnull, i8* nonnull) #0 !dbg !235 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.logger*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.logbuf*, align 8
  store %struct.logger* %0, %struct.logger** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.logger** %4, metadata !238, metadata !83), !dbg !239
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !240, metadata !83), !dbg !241
  call void @llvm.dbg.declare(metadata %struct.logbuf** %6, metadata !242, metadata !83), !dbg !243
  %7 = load %struct.logger*, %struct.logger** %4, align 8, !dbg !244
  %8 = getelementptr inbounds %struct.logger, %struct.logger* %7, i32 0, i32 2, !dbg !246
  %9 = load i32 (i8*)*, i32 (i8*)** %8, align 8, !dbg !246
  %10 = icmp ne i32 (i8*)* %9, null, !dbg !244
  br i1 %10, label %12, label %11, !dbg !247

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !248
  br label %32, !dbg !248

; <label>:12:                                     ; preds = %2
  %13 = call noalias %struct.logbuf* @logbuf_new(i8* null, i64 0, %struct.logbuf* null), !dbg !249
  store %struct.logbuf* %13, %struct.logbuf** %6, align 8, !dbg !251
  %14 = icmp ne %struct.logbuf* %13, null, !dbg !251
  br i1 %14, label %16, label %15, !dbg !252

; <label>:15:                                     ; preds = %12
  store i32 -1, i32* %3, align 4, !dbg !253
  br label %32, !dbg !253

; <label>:16:                                     ; preds = %12
  %17 = load i8*, i8** %5, align 8, !dbg !254
  %18 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !255
  %19 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %18, i32 0, i32 2, !dbg !256
  store i8* %17, i8** %19, align 8, !dbg !257
  %20 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !258
  %21 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %20, i32 0, i32 3, !dbg !259
  %22 = load i64, i64* %21, align 8, !dbg !260
  %23 = or i64 %22, 2, !dbg !260
  store i64 %23, i64* %21, align 8, !dbg !260
  %24 = load %struct.logger*, %struct.logger** %4, align 8, !dbg !261
  %25 = getelementptr inbounds %struct.logger, %struct.logger* %24, i32 0, i32 7, !dbg !262
  %26 = load %struct.thrqueue*, %struct.thrqueue** %25, align 8, !dbg !262
  %27 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !263
  %28 = bitcast %struct.logbuf* %27 to i8*, !dbg !263
  %29 = call i8* @thrqueue_enqueue(%struct.thrqueue* %26, i8* %28), !dbg !264
  %30 = icmp ne i8* %29, null, !dbg !264
  %31 = select i1 %30, i32 0, i32 -1, !dbg !264
  store i32 %31, i32* %3, align 4, !dbg !265
  br label %32, !dbg !265

; <label>:32:                                     ; preds = %16, %15, %11
  %33 = load i32, i32* %3, align 4, !dbg !266
  ret i32 %33, !dbg !266
}

; Function Attrs: nounwind uwtable
define i32 @logger_close(%struct.logger* nonnull, i8* nonnull, i64) #0 !dbg !267 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.logger*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.logbuf*, align 8
  store %struct.logger* %0, %struct.logger** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.logger** %5, metadata !270, metadata !83), !dbg !271
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !272, metadata !83), !dbg !273
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !274, metadata !83), !dbg !275
  call void @llvm.dbg.declare(metadata %struct.logbuf** %8, metadata !276, metadata !83), !dbg !277
  %9 = load %struct.logger*, %struct.logger** %5, align 8, !dbg !278
  %10 = getelementptr inbounds %struct.logger, %struct.logger* %9, i32 0, i32 3, !dbg !280
  %11 = load void (i8*, i64)*, void (i8*, i64)** %10, align 8, !dbg !280
  %12 = icmp ne void (i8*, i64)* %11, null, !dbg !278
  br i1 %12, label %14, label %13, !dbg !281

; <label>:13:                                     ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !282
  br label %37, !dbg !282

; <label>:14:                                     ; preds = %3
  %15 = call noalias %struct.logbuf* @logbuf_new(i8* null, i64 0, %struct.logbuf* null), !dbg !283
  store %struct.logbuf* %15, %struct.logbuf** %8, align 8, !dbg !285
  %16 = icmp ne %struct.logbuf* %15, null, !dbg !285
  br i1 %16, label %18, label %17, !dbg !286

; <label>:17:                                     ; preds = %14
  store i32 -1, i32* %4, align 4, !dbg !287
  br label %37, !dbg !287

; <label>:18:                                     ; preds = %14
  %19 = load i8*, i8** %6, align 8, !dbg !288
  %20 = load %struct.logbuf*, %struct.logbuf** %8, align 8, !dbg !289
  %21 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %20, i32 0, i32 2, !dbg !290
  store i8* %19, i8** %21, align 8, !dbg !291
  %22 = load i64, i64* %7, align 8, !dbg !292
  %23 = load %struct.logbuf*, %struct.logbuf** %8, align 8, !dbg !293
  %24 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %23, i32 0, i32 3, !dbg !294
  store i64 %22, i64* %24, align 8, !dbg !295
  %25 = load %struct.logbuf*, %struct.logbuf** %8, align 8, !dbg !296
  %26 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %25, i32 0, i32 3, !dbg !297
  %27 = load i64, i64* %26, align 8, !dbg !298
  %28 = or i64 %27, 4, !dbg !298
  store i64 %28, i64* %26, align 8, !dbg !298
  %29 = load %struct.logger*, %struct.logger** %5, align 8, !dbg !299
  %30 = getelementptr inbounds %struct.logger, %struct.logger* %29, i32 0, i32 7, !dbg !300
  %31 = load %struct.thrqueue*, %struct.thrqueue** %30, align 8, !dbg !300
  %32 = load %struct.logbuf*, %struct.logbuf** %8, align 8, !dbg !301
  %33 = bitcast %struct.logbuf* %32 to i8*, !dbg !301
  %34 = call i8* @thrqueue_enqueue(%struct.thrqueue* %31, i8* %33), !dbg !302
  %35 = icmp ne i8* %34, null, !dbg !302
  %36 = select i1 %35, i32 0, i32 -1, !dbg !302
  store i32 %36, i32* %4, align 4, !dbg !303
  br label %37, !dbg !303

; <label>:37:                                     ; preds = %18, %17, %13
  %38 = load i32, i32* %4, align 4, !dbg !304
  ret i32 %38, !dbg !304
}

; Function Attrs: nounwind uwtable
define i32 @logger_start(%struct.logger* nonnull) #0 !dbg !305 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.logger*, align 8
  %4 = alloca i32, align 4
  store %struct.logger* %0, %struct.logger** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.logger** %3, metadata !306, metadata !83), !dbg !307
  call void @llvm.dbg.declare(metadata i32* %4, metadata !308, metadata !83), !dbg !309
  %5 = load %struct.logger*, %struct.logger** %3, align 8, !dbg !310
  %6 = getelementptr inbounds %struct.logger, %struct.logger* %5, i32 0, i32 7, !dbg !312
  %7 = load %struct.thrqueue*, %struct.thrqueue** %6, align 8, !dbg !312
  %8 = icmp ne %struct.thrqueue* %7, null, !dbg !310
  br i1 %8, label %9, label %13, !dbg !313

; <label>:9:                                      ; preds = %1
  %10 = load %struct.logger*, %struct.logger** %3, align 8, !dbg !314
  %11 = getelementptr inbounds %struct.logger, %struct.logger* %10, i32 0, i32 7, !dbg !316
  %12 = load %struct.thrqueue*, %struct.thrqueue** %11, align 8, !dbg !316
  call void @thrqueue_free(%struct.thrqueue* %12), !dbg !317
  br label %13, !dbg !318

; <label>:13:                                     ; preds = %9, %1
  %14 = call noalias %struct.thrqueue* @thrqueue_new(i64 1024), !dbg !319
  %15 = load %struct.logger*, %struct.logger** %3, align 8, !dbg !320
  %16 = getelementptr inbounds %struct.logger, %struct.logger* %15, i32 0, i32 7, !dbg !321
  store %struct.thrqueue* %14, %struct.thrqueue** %16, align 8, !dbg !322
  %17 = load %struct.logger*, %struct.logger** %3, align 8, !dbg !323
  %18 = getelementptr inbounds %struct.logger, %struct.logger* %17, i32 0, i32 0, !dbg !324
  %19 = load %struct.logger*, %struct.logger** %3, align 8, !dbg !325
  %20 = bitcast %struct.logger* %19 to i8*, !dbg !325
  %21 = call i32 @pthread_create(i64* %18, %union.pthread_attr_t* null, i8* (i8*)* @logger_thread, i8* %20) #4, !dbg !326
  store i32 %21, i32* %4, align 4, !dbg !327
  %22 = load i32, i32* %4, align 4, !dbg !328
  %23 = icmp ne i32 %22, 0, !dbg !328
  br i1 %23, label %24, label %25, !dbg !330

; <label>:24:                                     ; preds = %13
  store i32 -1, i32* %2, align 4, !dbg !331
  br label %27, !dbg !331

; <label>:25:                                     ; preds = %13
  %26 = call i32 @sched_yield() #4, !dbg !332
  store i32 0, i32* %2, align 4, !dbg !333
  br label %27, !dbg !333

; <label>:27:                                     ; preds = %25, %24
  %28 = load i32, i32* %2, align 4, !dbg !334
  ret i32 %28, !dbg !334
}

declare noalias %struct.thrqueue* @thrqueue_new(i64) #3

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @logger_thread(i8*) #0 !dbg !335 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.logger*, align 8
  %4 = alloca %struct.logbuf*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !338, metadata !83), !dbg !339
  call void @llvm.dbg.declare(metadata %struct.logger** %3, metadata !340, metadata !83), !dbg !341
  %6 = load i8*, i8** %2, align 8, !dbg !342
  %7 = bitcast i8* %6 to %struct.logger*, !dbg !342
  store %struct.logger* %7, %struct.logger** %3, align 8, !dbg !341
  call void @llvm.dbg.declare(metadata %struct.logbuf** %4, metadata !343, metadata !83), !dbg !344
  call void @llvm.dbg.declare(metadata i32* %5, metadata !345, metadata !83), !dbg !346
  store i32 0, i32* %5, align 4, !dbg !346
  br label %8, !dbg !347

; <label>:8:                                      ; preds = %85, %1
  %9 = load %struct.logger*, %struct.logger** %3, align 8, !dbg !348
  %10 = getelementptr inbounds %struct.logger, %struct.logger* %9, i32 0, i32 7, !dbg !350
  %11 = load %struct.thrqueue*, %struct.thrqueue** %10, align 8, !dbg !350
  %12 = call i8* @thrqueue_dequeue(%struct.thrqueue* %11), !dbg !351
  %13 = bitcast i8* %12 to %struct.logbuf*, !dbg !351
  store %struct.logbuf* %13, %struct.logbuf** %4, align 8, !dbg !352
  %14 = icmp ne %struct.logbuf* %13, null, !dbg !353
  br i1 %14, label %15, label %86, !dbg !353

; <label>:15:                                     ; preds = %8
  %16 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !354
  %17 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %16, i32 0, i32 3, !dbg !357
  %18 = load i64, i64* %17, align 8, !dbg !357
  %19 = and i64 %18, 1, !dbg !358
  %20 = icmp ne i64 %19, 0, !dbg !358
  br i1 %20, label %21, label %29, !dbg !359

; <label>:21:                                     ; preds = %15
  %22 = load %struct.logger*, %struct.logger** %3, align 8, !dbg !360
  %23 = getelementptr inbounds %struct.logger, %struct.logger* %22, i32 0, i32 1, !dbg !363
  %24 = load i32 ()*, i32 ()** %23, align 8, !dbg !363
  %25 = call i32 %24(), !dbg !360
  %26 = icmp ne i32 %25, 0, !dbg !364
  br i1 %26, label %27, label %28, !dbg !365

; <label>:27:                                     ; preds = %21
  store i32 1, i32* %5, align 4, !dbg !366
  br label %28, !dbg !367

; <label>:28:                                     ; preds = %27, %21
  br label %73, !dbg !368

; <label>:29:                                     ; preds = %15
  %30 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !369
  %31 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %30, i32 0, i32 3, !dbg !372
  %32 = load i64, i64* %31, align 8, !dbg !372
  %33 = and i64 %32, 2, !dbg !373
  %34 = icmp ne i64 %33, 0, !dbg !373
  br i1 %34, label %35, label %46, !dbg !374

; <label>:35:                                     ; preds = %29
  %36 = load %struct.logger*, %struct.logger** %3, align 8, !dbg !375
  %37 = getelementptr inbounds %struct.logger, %struct.logger* %36, i32 0, i32 2, !dbg !378
  %38 = load i32 (i8*)*, i32 (i8*)** %37, align 8, !dbg !378
  %39 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !379
  %40 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %39, i32 0, i32 2, !dbg !380
  %41 = load i8*, i8** %40, align 8, !dbg !380
  %42 = call i32 %38(i8* %41), !dbg !375
  %43 = icmp ne i32 %42, 0, !dbg !381
  br i1 %43, label %44, label %45, !dbg !382

; <label>:44:                                     ; preds = %35
  store i32 1, i32* %5, align 4, !dbg !383
  br label %45, !dbg !384

; <label>:45:                                     ; preds = %44, %35
  br label %72, !dbg !385

; <label>:46:                                     ; preds = %29
  %47 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !386
  %48 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %47, i32 0, i32 3, !dbg !389
  %49 = load i64, i64* %48, align 8, !dbg !389
  %50 = and i64 %49, 4, !dbg !390
  %51 = icmp ne i64 %50, 0, !dbg !390
  br i1 %51, label %52, label %62, !dbg !391

; <label>:52:                                     ; preds = %46
  %53 = load %struct.logger*, %struct.logger** %3, align 8, !dbg !392
  %54 = getelementptr inbounds %struct.logger, %struct.logger* %53, i32 0, i32 3, !dbg !394
  %55 = load void (i8*, i64)*, void (i8*, i64)** %54, align 8, !dbg !394
  %56 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !395
  %57 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %56, i32 0, i32 2, !dbg !396
  %58 = load i8*, i8** %57, align 8, !dbg !396
  %59 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !397
  %60 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %59, i32 0, i32 3, !dbg !398
  %61 = load i64, i64* %60, align 8, !dbg !398
  call void %55(i8* %58, i64 %61), !dbg !392
  br label %71, !dbg !399

; <label>:62:                                     ; preds = %46
  %63 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !400
  %64 = load %struct.logger*, %struct.logger** %3, align 8, !dbg !403
  %65 = getelementptr inbounds %struct.logger, %struct.logger* %64, i32 0, i32 5, !dbg !404
  %66 = load i64 (i8*, i64, i8*, i64)*, i64 (i8*, i64, i8*, i64)** %65, align 8, !dbg !404
  %67 = call i64 @logbuf_write_free(%struct.logbuf* %63, i64 (i8*, i64, i8*, i64)* %66), !dbg !405
  %68 = icmp slt i64 %67, 0, !dbg !406
  br i1 %68, label %69, label %70, !dbg !407

; <label>:69:                                     ; preds = %62
  store i32 1, i32* %5, align 4, !dbg !408
  br label %70, !dbg !409

; <label>:70:                                     ; preds = %69, %62
  br label %71

; <label>:71:                                     ; preds = %70, %52
  br label %72

; <label>:72:                                     ; preds = %71, %45
  br label %73

; <label>:73:                                     ; preds = %72, %28
  %74 = load i32, i32* %5, align 4, !dbg !410
  %75 = icmp ne i32 %74, 0, !dbg !410
  br i1 %75, label %76, label %85, !dbg !412

; <label>:76:                                     ; preds = %73
  %77 = load %struct.logger*, %struct.logger** %3, align 8, !dbg !413
  %78 = getelementptr inbounds %struct.logger, %struct.logger* %77, i32 0, i32 6, !dbg !415
  %79 = load void ()*, void ()** %78, align 8, !dbg !415
  %80 = icmp ne void ()* %79, null, !dbg !413
  br i1 %80, label %81, label %85, !dbg !416

; <label>:81:                                     ; preds = %76
  %82 = load %struct.logger*, %struct.logger** %3, align 8, !dbg !417
  %83 = getelementptr inbounds %struct.logger, %struct.logger* %82, i32 0, i32 6, !dbg !419
  %84 = load void ()*, void ()** %83, align 8, !dbg !419
  call void %84(), !dbg !417
  br label %85, !dbg !420

; <label>:85:                                     ; preds = %81, %76, %73
  br label %8, !dbg !421, !llvm.loop !423

; <label>:86:                                     ; preds = %8
  ret i8* null, !dbg !424
}

; Function Attrs: nounwind
declare i32 @sched_yield() #2

; Function Attrs: nounwind uwtable
define void @logger_leave(%struct.logger* nonnull) #0 !dbg !425 {
  %2 = alloca %struct.logger*, align 8
  store %struct.logger* %0, %struct.logger** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.logger** %2, metadata !426, metadata !83), !dbg !427
  %3 = load %struct.logger*, %struct.logger** %2, align 8, !dbg !428
  %4 = getelementptr inbounds %struct.logger, %struct.logger* %3, i32 0, i32 7, !dbg !429
  %5 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !429
  call void @thrqueue_unblock_dequeue(%struct.thrqueue* %5), !dbg !430
  %6 = call i32 @sched_yield() #4, !dbg !431
  ret void, !dbg !432
}

declare void @thrqueue_unblock_dequeue(%struct.thrqueue*) #3

; Function Attrs: nounwind uwtable
define i32 @logger_join(%struct.logger* nonnull) #0 !dbg !433 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.logger*, align 8
  %4 = alloca i32, align 4
  store %struct.logger* %0, %struct.logger** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.logger** %3, metadata !434, metadata !83), !dbg !435
  call void @llvm.dbg.declare(metadata i32* %4, metadata !436, metadata !83), !dbg !437
  %5 = load %struct.logger*, %struct.logger** %3, align 8, !dbg !438
  %6 = getelementptr inbounds %struct.logger, %struct.logger* %5, i32 0, i32 0, !dbg !439
  %7 = load i64, i64* %6, align 8, !dbg !439
  %8 = call i32 @pthread_join(i64 %7, i8** null), !dbg !440
  store i32 %8, i32* %4, align 4, !dbg !441
  %9 = load i32, i32* %4, align 4, !dbg !442
  %10 = icmp ne i32 %9, 0, !dbg !442
  br i1 %10, label %11, label %12, !dbg !444

; <label>:11:                                     ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !445
  br label %13, !dbg !445

; <label>:12:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !446
  br label %13, !dbg !446

; <label>:13:                                     ; preds = %12, %11
  %14 = load i32, i32* %2, align 4, !dbg !447
  ret i32 %14, !dbg !447
}

declare i32 @pthread_join(i64, i8**) #3

; Function Attrs: nounwind uwtable
define i32 @logger_stop(%struct.logger* nonnull) #0 !dbg !448 {
  %2 = alloca %struct.logger*, align 8
  store %struct.logger* %0, %struct.logger** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.logger** %2, metadata !449, metadata !83), !dbg !450
  %3 = load %struct.logger*, %struct.logger** %2, align 8, !dbg !451
  call void @logger_leave(%struct.logger* %3), !dbg !452
  %4 = load %struct.logger*, %struct.logger** %2, align 8, !dbg !453
  %5 = call i32 @logger_join(%struct.logger* %4), !dbg !454
  ret i32 %5, !dbg !455
}

; Function Attrs: nounwind uwtable
define i32 @logger_printf(%struct.logger* nonnull, i8*, i64, i8* nonnull, ...) #0 !dbg !456 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.logger*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [1 x %struct.__va_list_tag], align 16
  %11 = alloca %struct.logbuf*, align 8
  store %struct.logger* %0, %struct.logger** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.logger** %6, metadata !461, metadata !83), !dbg !462
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !463, metadata !83), !dbg !464
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !465, metadata !83), !dbg !466
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !467, metadata !83), !dbg !468
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %10, metadata !469, metadata !83), !dbg !485
  call void @llvm.dbg.declare(metadata %struct.logbuf** %11, metadata !486, metadata !83), !dbg !487
  %12 = call noalias %struct.logbuf* @logbuf_new(i8* null, i64 0, %struct.logbuf* null), !dbg !488
  store %struct.logbuf* %12, %struct.logbuf** %11, align 8, !dbg !490
  %13 = icmp ne %struct.logbuf* %12, null, !dbg !490
  br i1 %13, label %15, label %14, !dbg !491

; <label>:14:                                     ; preds = %4
  store i32 -1, i32* %5, align 4, !dbg !492
  br label %43, !dbg !492

; <label>:15:                                     ; preds = %4
  %16 = load i8*, i8** %7, align 8, !dbg !493
  %17 = load %struct.logbuf*, %struct.logbuf** %11, align 8, !dbg !494
  %18 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %17, i32 0, i32 2, !dbg !495
  store i8* %16, i8** %18, align 8, !dbg !496
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i32 0, i32 0, !dbg !497
  %20 = bitcast %struct.__va_list_tag* %19 to i8*, !dbg !497
  call void @llvm.va_start(i8* %20), !dbg !497
  %21 = load %struct.logbuf*, %struct.logbuf** %11, align 8, !dbg !498
  %22 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %21, i32 0, i32 0, !dbg !499
  %23 = load i8*, i8** %9, align 8, !dbg !500
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i32 0, i32 0, !dbg !501
  %25 = call i32 @vasprintf(i8** %22, i8* %23, %struct.__va_list_tag* %24) #4, !dbg !502
  %26 = sext i32 %25 to i64, !dbg !502
  %27 = load %struct.logbuf*, %struct.logbuf** %11, align 8, !dbg !503
  %28 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %27, i32 0, i32 1, !dbg !504
  store i64 %26, i64* %28, align 8, !dbg !505
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i32 0, i32 0, !dbg !506
  %30 = bitcast %struct.__va_list_tag* %29 to i8*, !dbg !506
  call void @llvm.va_end(i8* %30), !dbg !506
  %31 = load %struct.logbuf*, %struct.logbuf** %11, align 8, !dbg !507
  %32 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %31, i32 0, i32 1, !dbg !509
  %33 = load i64, i64* %32, align 8, !dbg !509
  %34 = icmp slt i64 %33, 0, !dbg !510
  br i1 %34, label %35, label %37, !dbg !511

; <label>:35:                                     ; preds = %15
  %36 = load %struct.logbuf*, %struct.logbuf** %11, align 8, !dbg !512
  call void @logbuf_free(%struct.logbuf* %36), !dbg !514
  store i32 -1, i32* %5, align 4, !dbg !515
  br label %43, !dbg !515

; <label>:37:                                     ; preds = %15
  %38 = load %struct.logger*, %struct.logger** %6, align 8, !dbg !516
  %39 = load i8*, i8** %7, align 8, !dbg !517
  %40 = load i64, i64* %8, align 8, !dbg !518
  %41 = load %struct.logbuf*, %struct.logbuf** %11, align 8, !dbg !519
  %42 = call i32 @logger_submit(%struct.logger* %38, i8* %39, i64 %40, %struct.logbuf* %41), !dbg !520
  store i32 %42, i32* %5, align 4, !dbg !521
  br label %43, !dbg !521

; <label>:43:                                     ; preds = %37, %35, %14
  %44 = load i32, i32* %5, align 4, !dbg !522
  ret i32 %44, !dbg !522
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind
declare i32 @vasprintf(i8**, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @logger_write(%struct.logger* nonnull, i8*, i64, i8* nonnull, i64) #0 !dbg !523 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.logger*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.logbuf*, align 8
  store %struct.logger* %0, %struct.logger** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.logger** %7, metadata !526, metadata !83), !dbg !527
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !528, metadata !83), !dbg !529
  store i64 %2, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !530, metadata !83), !dbg !531
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !532, metadata !83), !dbg !533
  store i64 %4, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !534, metadata !83), !dbg !535
  call void @llvm.dbg.declare(metadata %struct.logbuf** %12, metadata !536, metadata !83), !dbg !537
  %13 = load i8*, i8** %10, align 8, !dbg !538
  %14 = load i64, i64* %11, align 8, !dbg !540
  %15 = call noalias %struct.logbuf* @logbuf_new_copy(i8* %13, i64 %14, %struct.logbuf* null), !dbg !541
  store %struct.logbuf* %15, %struct.logbuf** %12, align 8, !dbg !542
  %16 = icmp ne %struct.logbuf* %15, null, !dbg !542
  br i1 %16, label %18, label %17, !dbg !543

; <label>:17:                                     ; preds = %5
  store i32 -1, i32* %6, align 4, !dbg !544
  br label %27, !dbg !544

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %8, align 8, !dbg !545
  %20 = load %struct.logbuf*, %struct.logbuf** %12, align 8, !dbg !546
  %21 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %20, i32 0, i32 2, !dbg !547
  store i8* %19, i8** %21, align 8, !dbg !548
  %22 = load %struct.logger*, %struct.logger** %7, align 8, !dbg !549
  %23 = load i8*, i8** %8, align 8, !dbg !550
  %24 = load i64, i64* %9, align 8, !dbg !551
  %25 = load %struct.logbuf*, %struct.logbuf** %12, align 8, !dbg !552
  %26 = call i32 @logger_submit(%struct.logger* %22, i8* %23, i64 %24, %struct.logbuf* %25), !dbg !553
  store i32 %26, i32* %6, align 4, !dbg !554
  br label %27, !dbg !554

; <label>:27:                                     ; preds = %18, %17
  %28 = load i32, i32* %6, align 4, !dbg !555
  ret i32 %28, !dbg !555
}

declare noalias %struct.logbuf* @logbuf_new_copy(i8*, i64, %struct.logbuf*) #3

; Function Attrs: nounwind uwtable
define i32 @logger_print(%struct.logger* nonnull, i8*, i64, i8* nonnull) #0 !dbg !556 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.logger*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.logbuf*, align 8
  store %struct.logger* %0, %struct.logger** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.logger** %6, metadata !559, metadata !83), !dbg !560
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !561, metadata !83), !dbg !562
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !563, metadata !83), !dbg !564
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !565, metadata !83), !dbg !566
  call void @llvm.dbg.declare(metadata %struct.logbuf** %10, metadata !567, metadata !83), !dbg !568
  %11 = load i8*, i8** %9, align 8, !dbg !569
  %12 = load i8*, i8** %9, align 8, !dbg !571
  %13 = call i64 @strlen(i8* %12) #7, !dbg !572
  %14 = call noalias %struct.logbuf* @logbuf_new_copy(i8* %11, i64 %13, %struct.logbuf* null), !dbg !573
  store %struct.logbuf* %14, %struct.logbuf** %10, align 8, !dbg !575
  %15 = icmp ne %struct.logbuf* %14, null, !dbg !575
  br i1 %15, label %17, label %16, !dbg !576

; <label>:16:                                     ; preds = %4
  store i32 -1, i32* %5, align 4, !dbg !577
  br label %26, !dbg !577

; <label>:17:                                     ; preds = %4
  %18 = load i8*, i8** %7, align 8, !dbg !578
  %19 = load %struct.logbuf*, %struct.logbuf** %10, align 8, !dbg !579
  %20 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %19, i32 0, i32 2, !dbg !580
  store i8* %18, i8** %20, align 8, !dbg !581
  %21 = load %struct.logger*, %struct.logger** %6, align 8, !dbg !582
  %22 = load i8*, i8** %7, align 8, !dbg !583
  %23 = load i64, i64* %8, align 8, !dbg !584
  %24 = load %struct.logbuf*, %struct.logbuf** %10, align 8, !dbg !585
  %25 = call i32 @logger_submit(%struct.logger* %21, i8* %22, i64 %23, %struct.logbuf* %24), !dbg !586
  store i32 %25, i32* %5, align 4, !dbg !587
  br label %26, !dbg !587

; <label>:26:                                     ; preds = %17, %16
  %27 = load i32, i32* %5, align 4, !dbg !588
  ret i32 %27, !dbg !588
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind uwtable
define i32 @logger_write_freebuf(%struct.logger* nonnull, i8*, i64, i8* nonnull, i64) #0 !dbg !589 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.logger*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.logbuf*, align 8
  store %struct.logger* %0, %struct.logger** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.logger** %7, metadata !592, metadata !83), !dbg !593
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !594, metadata !83), !dbg !595
  store i64 %2, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !596, metadata !83), !dbg !597
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !598, metadata !83), !dbg !599
  store i64 %4, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !600, metadata !83), !dbg !601
  call void @llvm.dbg.declare(metadata %struct.logbuf** %12, metadata !602, metadata !83), !dbg !603
  %13 = load i8*, i8** %10, align 8, !dbg !604
  %14 = load i64, i64* %11, align 8, !dbg !606
  %15 = call noalias %struct.logbuf* @logbuf_new(i8* %13, i64 %14, %struct.logbuf* null), !dbg !607
  store %struct.logbuf* %15, %struct.logbuf** %12, align 8, !dbg !608
  %16 = icmp ne %struct.logbuf* %15, null, !dbg !608
  br i1 %16, label %18, label %17, !dbg !609

; <label>:17:                                     ; preds = %5
  store i32 -1, i32* %6, align 4, !dbg !610
  br label %27, !dbg !610

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %8, align 8, !dbg !611
  %20 = load %struct.logbuf*, %struct.logbuf** %12, align 8, !dbg !612
  %21 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %20, i32 0, i32 2, !dbg !613
  store i8* %19, i8** %21, align 8, !dbg !614
  %22 = load %struct.logger*, %struct.logger** %7, align 8, !dbg !615
  %23 = load i8*, i8** %8, align 8, !dbg !616
  %24 = load i64, i64* %9, align 8, !dbg !617
  %25 = load %struct.logbuf*, %struct.logbuf** %12, align 8, !dbg !618
  %26 = call i32 @logger_submit(%struct.logger* %22, i8* %23, i64 %24, %struct.logbuf* %25), !dbg !619
  store i32 %26, i32* %6, align 4, !dbg !620
  br label %27, !dbg !620

; <label>:27:                                     ; preds = %18, %17
  %28 = load i32, i32* %6, align 4, !dbg !621
  ret i32 %28, !dbg !621
}

; Function Attrs: nounwind uwtable
define i32 @logger_print_freebuf(%struct.logger* nonnull, i8*, i64, i8* nonnull) #0 !dbg !622 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.logger*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.logbuf*, align 8
  store %struct.logger* %0, %struct.logger** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.logger** %6, metadata !625, metadata !83), !dbg !626
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !627, metadata !83), !dbg !628
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !629, metadata !83), !dbg !630
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !631, metadata !83), !dbg !632
  call void @llvm.dbg.declare(metadata %struct.logbuf** %10, metadata !633, metadata !83), !dbg !634
  %11 = load i8*, i8** %9, align 8, !dbg !635
  %12 = load i8*, i8** %9, align 8, !dbg !637
  %13 = call i64 @strlen(i8* %12) #7, !dbg !638
  %14 = call noalias %struct.logbuf* @logbuf_new(i8* %11, i64 %13, %struct.logbuf* null), !dbg !639
  store %struct.logbuf* %14, %struct.logbuf** %10, align 8, !dbg !641
  %15 = icmp ne %struct.logbuf* %14, null, !dbg !641
  br i1 %15, label %17, label %16, !dbg !642

; <label>:16:                                     ; preds = %4
  store i32 -1, i32* %5, align 4, !dbg !643
  br label %26, !dbg !643

; <label>:17:                                     ; preds = %4
  %18 = load i8*, i8** %7, align 8, !dbg !644
  %19 = load %struct.logbuf*, %struct.logbuf** %10, align 8, !dbg !645
  %20 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %19, i32 0, i32 2, !dbg !646
  store i8* %18, i8** %20, align 8, !dbg !647
  %21 = load %struct.logger*, %struct.logger** %6, align 8, !dbg !648
  %22 = load i8*, i8** %7, align 8, !dbg !649
  %23 = load i64, i64* %8, align 8, !dbg !650
  %24 = load %struct.logbuf*, %struct.logbuf** %10, align 8, !dbg !651
  %25 = call i32 @logger_submit(%struct.logger* %21, i8* %22, i64 %23, %struct.logbuf* %24), !dbg !652
  store i32 %25, i32* %5, align 4, !dbg !653
  br label %26, !dbg !653

; <label>:26:                                     ; preds = %17, %16
  %27 = load i32, i32* %5, align 4, !dbg !654
  ret i32 %27, !dbg !654
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

declare i8* @thrqueue_dequeue(%struct.thrqueue*) #3

declare i64 @logbuf_write_free(%struct.logbuf*, i64 (i8*, i64, i8*, i64)*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "line26-logger.o.i", directory: "/home/lichi/Desktop/sslsplit/task1")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!11 = distinct !DISubprogram(name: "logger_new", scope: !12, file: !12, line: 79, type: !13, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!12 = !DIFile(filename: "logger.c", directory: "/home/lichi/Desktop/sslsplit/task1")
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !25, !31, !36, !64, !41, !73}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "logger_t", file: !17, line: 45, baseType: !18)
!17 = !DIFile(filename: "logger.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "logger", file: !12, line: 46, size: 512, align: 64, elements: !19)
!19 = !{!20, !24, !30, !35, !40, !63, !72, !77}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "thr", scope: !18, file: !12, line: 47, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !22, line: 60, baseType: !23)
!22 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!23 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "reopen", scope: !18, file: !12, line: 48, baseType: !25, size: 64, align: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "logger_reopen_func_t", file: !17, line: 38, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DISubroutineType(types: !28)
!28 = !{!29}
!29 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !18, file: !12, line: 49, baseType: !31, size: 64, align: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "logger_open_func_t", file: !17, line: 39, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{!29, !4}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !18, file: !12, line: 50, baseType: !36, size: 64, align: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "logger_close_func_t", file: !17, line: 40, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !4, !23}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "prep", scope: !18, file: !12, line: 51, baseType: !41, size: 64, align: 64, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "logger_prep_func_t", file: !17, line: 43, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !4, !23, !45}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "logbuf_t", file: !47, line: 43, baseType: !48)
!47 = !DIFile(filename: "logbuf.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "logbuf", file: !47, line: 37, size: 320, align: 64, elements: !49)
!49 = !{!50, !53, !59, !60, !61}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !48, file: !47, line: 38, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !48, file: !47, line: 39, baseType: !54, size: 64, align: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !55, line: 109, baseType: !56)
!55 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !57, line: 172, baseType: !58)
!57 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!58 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "fh", scope: !48, file: !47, line: 40, baseType: !4, size: 64, align: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "ctl", scope: !48, file: !47, line: 41, baseType: !23, size: 64, align: 64, offset: 192)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !48, file: !47, line: 42, baseType: !62, size: 64, align: 64, offset: 256)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !18, file: !12, line: 52, baseType: !64, size: 64, align: 64, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "logger_write_func_t", file: !17, line: 41, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!54, !4, !23, !68, !70}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 216, baseType: !23)
!71 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!72 = !DIDerivedType(tag: DW_TAG_member, name: "except", scope: !18, file: !12, line: 53, baseType: !73, size: 64, align: 64, offset: 384)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "logger_except_func_t", file: !17, line: 44, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{null}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !18, file: !12, line: 54, baseType: !78, size: 64, align: 64, offset: 448)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "thrqueue_t", file: !80, line: 36, baseType: !81)
!80 = !DIFile(filename: "thrqueue.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!81 = !DICompositeType(tag: DW_TAG_structure_type, name: "thrqueue", file: !80, line: 36, flags: DIFlagFwdDecl)
!82 = !DILocalVariable(name: "reopenfunc", arg: 1, scope: !11, file: !12, line: 79, type: !25)
!83 = !DIExpression()
!84 = !DILocation(line: 79, column: 33, scope: !11)
!85 = !DILocalVariable(name: "openfunc", arg: 2, scope: !11, file: !12, line: 79, type: !31)
!86 = !DILocation(line: 79, column: 64, scope: !11)
!87 = !DILocalVariable(name: "closefunc", arg: 3, scope: !11, file: !12, line: 80, type: !36)
!88 = !DILocation(line: 80, column: 32, scope: !11)
!89 = !DILocalVariable(name: "writefunc", arg: 4, scope: !11, file: !12, line: 80, type: !64)
!90 = !DILocation(line: 80, column: 63, scope: !11)
!91 = !DILocalVariable(name: "prepfunc", arg: 5, scope: !11, file: !12, line: 81, type: !41)
!92 = !DILocation(line: 81, column: 31, scope: !11)
!93 = !DILocalVariable(name: "exceptfunc", arg: 6, scope: !11, file: !12, line: 81, type: !73)
!94 = !DILocation(line: 81, column: 62, scope: !11)
!95 = !DILocalVariable(name: "logger", scope: !11, file: !12, line: 83, type: !15)
!96 = !DILocation(line: 83, column: 12, scope: !11)
!97 = !DILocation(line: 85, column: 11, scope: !11)
!98 = !DILocation(line: 85, column: 9, scope: !11)
!99 = !DILocation(line: 86, column: 7, scope: !100)
!100 = distinct !DILexicalBlock(scope: !11, file: !12, line: 86, column: 6)
!101 = !DILocation(line: 86, column: 6, scope: !11)
!102 = !DILocation(line: 87, column: 3, scope: !100)
!103 = !DILocation(line: 88, column: 15, scope: !11)
!104 = !DILocation(line: 88, column: 2, scope: !11)
!105 = !DILocation(line: 89, column: 19, scope: !11)
!106 = !DILocation(line: 89, column: 2, scope: !11)
!107 = !DILocation(line: 89, column: 10, scope: !11)
!108 = !DILocation(line: 89, column: 17, scope: !11)
!109 = !DILocation(line: 90, column: 17, scope: !11)
!110 = !DILocation(line: 90, column: 2, scope: !11)
!111 = !DILocation(line: 90, column: 10, scope: !11)
!112 = !DILocation(line: 90, column: 15, scope: !11)
!113 = !DILocation(line: 91, column: 18, scope: !11)
!114 = !DILocation(line: 91, column: 2, scope: !11)
!115 = !DILocation(line: 91, column: 10, scope: !11)
!116 = !DILocation(line: 91, column: 16, scope: !11)
!117 = !DILocation(line: 92, column: 18, scope: !11)
!118 = !DILocation(line: 92, column: 2, scope: !11)
!119 = !DILocation(line: 92, column: 10, scope: !11)
!120 = !DILocation(line: 92, column: 16, scope: !11)
!121 = !DILocation(line: 93, column: 17, scope: !11)
!122 = !DILocation(line: 93, column: 2, scope: !11)
!123 = !DILocation(line: 93, column: 10, scope: !11)
!124 = !DILocation(line: 93, column: 15, scope: !11)
!125 = !DILocation(line: 94, column: 19, scope: !11)
!126 = !DILocation(line: 94, column: 2, scope: !11)
!127 = !DILocation(line: 94, column: 10, scope: !11)
!128 = !DILocation(line: 94, column: 17, scope: !11)
!129 = !DILocation(line: 95, column: 2, scope: !11)
!130 = !DILocation(line: 95, column: 10, scope: !11)
!131 = !DILocation(line: 95, column: 16, scope: !11)
!132 = !DILocation(line: 96, column: 9, scope: !11)
!133 = !DILocation(line: 96, column: 2, scope: !11)
!134 = !DILocation(line: 97, column: 1, scope: !11)
!135 = distinct !DISubprogram(name: "logger_clear", scope: !12, file: !12, line: 58, type: !136, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !15}
!138 = !DILocalVariable(name: "logger", arg: 1, scope: !135, file: !12, line: 58, type: !15)
!139 = !DILocation(line: 58, column: 24, scope: !135)
!140 = !DILocation(line: 60, column: 9, scope: !135)
!141 = !DILocation(line: 60, column: 2, scope: !135)
!142 = !DILocation(line: 61, column: 1, scope: !135)
!143 = distinct !DISubprogram(name: "logger_free", scope: !12, file: !12, line: 104, type: !136, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!144 = !DILocalVariable(name: "logger", arg: 1, scope: !143, file: !12, line: 104, type: !15)
!145 = !DILocation(line: 104, column: 23, scope: !143)
!146 = !DILocation(line: 105, column: 6, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !12, line: 105, column: 6)
!148 = !DILocation(line: 105, column: 14, scope: !147)
!149 = !DILocation(line: 105, column: 6, scope: !143)
!150 = !DILocation(line: 106, column: 17, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !12, line: 105, column: 21)
!152 = !DILocation(line: 106, column: 25, scope: !151)
!153 = !DILocation(line: 106, column: 3, scope: !151)
!154 = !DILocation(line: 107, column: 2, scope: !151)
!155 = !DILocation(line: 108, column: 7, scope: !143)
!156 = !DILocation(line: 108, column: 2, scope: !143)
!157 = !DILocation(line: 109, column: 1, scope: !143)
!158 = distinct !DISubprogram(name: "logger_submit", scope: !12, file: !12, line: 119, type: !159, isLocal: false, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!159 = !DISubroutineType(types: !160)
!160 = !{!29, !15, !4, !23, !45}
!161 = !DILocalVariable(name: "logger", arg: 1, scope: !158, file: !12, line: 119, type: !15)
!162 = !DILocation(line: 119, column: 25, scope: !158)
!163 = !DILocalVariable(name: "fh", arg: 2, scope: !158, file: !12, line: 119, type: !4)
!164 = !DILocation(line: 119, column: 39, scope: !158)
!165 = !DILocalVariable(name: "prepflags", arg: 3, scope: !158, file: !12, line: 119, type: !23)
!166 = !DILocation(line: 119, column: 57, scope: !158)
!167 = !DILocalVariable(name: "lb", arg: 4, scope: !158, file: !12, line: 120, type: !45)
!168 = !DILocation(line: 120, column: 25, scope: !158)
!169 = !DILocation(line: 122, column: 6, scope: !170)
!170 = distinct !DILexicalBlock(scope: !158, file: !12, line: 122, column: 6)
!171 = !DILocation(line: 122, column: 6, scope: !158)
!172 = !DILocation(line: 123, column: 12, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !12, line: 122, column: 10)
!174 = !DILocation(line: 123, column: 3, scope: !173)
!175 = !DILocation(line: 123, column: 7, scope: !173)
!176 = !DILocation(line: 123, column: 10, scope: !173)
!177 = !DILocation(line: 124, column: 4, scope: !173)
!178 = !DILocation(line: 124, column: 9, scope: !173)
!179 = !DILocation(line: 124, column: 13, scope: !173)
!180 = !DILocation(line: 125, column: 2, scope: !173)
!181 = !DILocation(line: 126, column: 6, scope: !182)
!182 = distinct !DILexicalBlock(scope: !158, file: !12, line: 126, column: 6)
!183 = !DILocation(line: 126, column: 14, scope: !182)
!184 = !DILocation(line: 126, column: 6, scope: !158)
!185 = !DILocation(line: 127, column: 8, scope: !182)
!186 = !DILocation(line: 127, column: 16, scope: !182)
!187 = !DILocation(line: 127, column: 21, scope: !182)
!188 = !DILocation(line: 127, column: 25, scope: !182)
!189 = !DILocation(line: 127, column: 36, scope: !182)
!190 = !DILocation(line: 127, column: 6, scope: !182)
!191 = !DILocation(line: 127, column: 3, scope: !182)
!192 = !DILocation(line: 130, column: 7, scope: !193)
!193 = distinct !DILexicalBlock(scope: !158, file: !12, line: 130, column: 6)
!194 = !DILocation(line: 130, column: 6, scope: !158)
!195 = !DILocation(line: 131, column: 3, scope: !193)
!196 = !DILocation(line: 132, column: 23, scope: !197)
!197 = distinct !DILexicalBlock(scope: !158, file: !12, line: 132, column: 6)
!198 = !DILocation(line: 132, column: 31, scope: !197)
!199 = !DILocation(line: 132, column: 38, scope: !197)
!200 = !DILocation(line: 132, column: 6, scope: !197)
!201 = !DILocation(line: 132, column: 6, scope: !158)
!202 = !DILocation(line: 133, column: 3, scope: !203)
!203 = distinct !DILexicalBlock(scope: !197, file: !12, line: 132, column: 43)
!204 = !DILocation(line: 135, column: 15, scope: !205)
!205 = distinct !DILexicalBlock(scope: !197, file: !12, line: 134, column: 9)
!206 = !DILocation(line: 135, column: 3, scope: !205)
!207 = !DILocation(line: 136, column: 3, scope: !205)
!208 = !DILocation(line: 138, column: 1, scope: !158)
!209 = distinct !DISubprogram(name: "logger_reopen", scope: !12, file: !12, line: 144, type: !210, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!210 = !DISubroutineType(types: !211)
!211 = !{!29, !15}
!212 = !DILocalVariable(name: "logger", arg: 1, scope: !209, file: !12, line: 144, type: !15)
!213 = !DILocation(line: 144, column: 25, scope: !209)
!214 = !DILocalVariable(name: "lb", scope: !209, file: !12, line: 146, type: !45)
!215 = !DILocation(line: 146, column: 12, scope: !209)
!216 = !DILocation(line: 148, column: 7, scope: !217)
!217 = distinct !DILexicalBlock(scope: !209, file: !12, line: 148, column: 6)
!218 = !DILocation(line: 148, column: 15, scope: !217)
!219 = !DILocation(line: 148, column: 6, scope: !209)
!220 = !DILocation(line: 149, column: 3, scope: !217)
!221 = !DILocation(line: 151, column: 13, scope: !222)
!222 = distinct !DILexicalBlock(scope: !209, file: !12, line: 151, column: 6)
!223 = !DILocation(line: 151, column: 11, scope: !222)
!224 = !DILocation(line: 151, column: 6, scope: !209)
!225 = !DILocation(line: 152, column: 3, scope: !222)
!226 = !DILocation(line: 153, column: 3, scope: !209)
!227 = !DILocation(line: 153, column: 8, scope: !209)
!228 = !DILocation(line: 153, column: 12, scope: !209)
!229 = !DILocation(line: 154, column: 26, scope: !209)
!230 = !DILocation(line: 154, column: 34, scope: !209)
!231 = !DILocation(line: 154, column: 41, scope: !209)
!232 = !DILocation(line: 154, column: 9, scope: !209)
!233 = !DILocation(line: 154, column: 2, scope: !209)
!234 = !DILocation(line: 155, column: 1, scope: !209)
!235 = distinct !DISubprogram(name: "logger_open", scope: !12, file: !12, line: 164, type: !236, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!236 = !DISubroutineType(types: !237)
!237 = !{!29, !15, !4}
!238 = !DILocalVariable(name: "logger", arg: 1, scope: !235, file: !12, line: 164, type: !15)
!239 = !DILocation(line: 164, column: 23, scope: !235)
!240 = !DILocalVariable(name: "fh", arg: 2, scope: !235, file: !12, line: 164, type: !4)
!241 = !DILocation(line: 164, column: 37, scope: !235)
!242 = !DILocalVariable(name: "lb", scope: !235, file: !12, line: 166, type: !45)
!243 = !DILocation(line: 166, column: 12, scope: !235)
!244 = !DILocation(line: 168, column: 7, scope: !245)
!245 = distinct !DILexicalBlock(scope: !235, file: !12, line: 168, column: 6)
!246 = !DILocation(line: 168, column: 15, scope: !245)
!247 = !DILocation(line: 168, column: 6, scope: !235)
!248 = !DILocation(line: 169, column: 3, scope: !245)
!249 = !DILocation(line: 171, column: 13, scope: !250)
!250 = distinct !DILexicalBlock(scope: !235, file: !12, line: 171, column: 6)
!251 = !DILocation(line: 171, column: 11, scope: !250)
!252 = !DILocation(line: 171, column: 6, scope: !235)
!253 = !DILocation(line: 172, column: 3, scope: !250)
!254 = !DILocation(line: 173, column: 11, scope: !235)
!255 = !DILocation(line: 173, column: 2, scope: !235)
!256 = !DILocation(line: 173, column: 6, scope: !235)
!257 = !DILocation(line: 173, column: 9, scope: !235)
!258 = !DILocation(line: 174, column: 3, scope: !235)
!259 = !DILocation(line: 174, column: 8, scope: !235)
!260 = !DILocation(line: 174, column: 12, scope: !235)
!261 = !DILocation(line: 175, column: 26, scope: !235)
!262 = !DILocation(line: 175, column: 34, scope: !235)
!263 = !DILocation(line: 175, column: 41, scope: !235)
!264 = !DILocation(line: 175, column: 9, scope: !235)
!265 = !DILocation(line: 175, column: 2, scope: !235)
!266 = !DILocation(line: 176, column: 1, scope: !235)
!267 = distinct !DISubprogram(name: "logger_close", scope: !12, file: !12, line: 184, type: !268, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!268 = !DISubroutineType(types: !269)
!269 = !{!29, !15, !4, !23}
!270 = !DILocalVariable(name: "logger", arg: 1, scope: !267, file: !12, line: 184, type: !15)
!271 = !DILocation(line: 184, column: 24, scope: !267)
!272 = !DILocalVariable(name: "fh", arg: 2, scope: !267, file: !12, line: 184, type: !4)
!273 = !DILocation(line: 184, column: 38, scope: !267)
!274 = !DILocalVariable(name: "ctl", arg: 3, scope: !267, file: !12, line: 184, type: !23)
!275 = !DILocation(line: 184, column: 56, scope: !267)
!276 = !DILocalVariable(name: "lb", scope: !267, file: !12, line: 186, type: !45)
!277 = !DILocation(line: 186, column: 12, scope: !267)
!278 = !DILocation(line: 188, column: 7, scope: !279)
!279 = distinct !DILexicalBlock(scope: !267, file: !12, line: 188, column: 6)
!280 = !DILocation(line: 188, column: 15, scope: !279)
!281 = !DILocation(line: 188, column: 6, scope: !267)
!282 = !DILocation(line: 189, column: 3, scope: !279)
!283 = !DILocation(line: 191, column: 13, scope: !284)
!284 = distinct !DILexicalBlock(scope: !267, file: !12, line: 191, column: 6)
!285 = !DILocation(line: 191, column: 11, scope: !284)
!286 = !DILocation(line: 191, column: 6, scope: !267)
!287 = !DILocation(line: 192, column: 3, scope: !284)
!288 = !DILocation(line: 193, column: 11, scope: !267)
!289 = !DILocation(line: 193, column: 2, scope: !267)
!290 = !DILocation(line: 193, column: 6, scope: !267)
!291 = !DILocation(line: 193, column: 9, scope: !267)
!292 = !DILocation(line: 194, column: 12, scope: !267)
!293 = !DILocation(line: 194, column: 2, scope: !267)
!294 = !DILocation(line: 194, column: 6, scope: !267)
!295 = !DILocation(line: 194, column: 10, scope: !267)
!296 = !DILocation(line: 195, column: 3, scope: !267)
!297 = !DILocation(line: 195, column: 8, scope: !267)
!298 = !DILocation(line: 195, column: 12, scope: !267)
!299 = !DILocation(line: 196, column: 26, scope: !267)
!300 = !DILocation(line: 196, column: 34, scope: !267)
!301 = !DILocation(line: 196, column: 41, scope: !267)
!302 = !DILocation(line: 196, column: 9, scope: !267)
!303 = !DILocation(line: 196, column: 2, scope: !267)
!304 = !DILocation(line: 197, column: 1, scope: !267)
!305 = distinct !DISubprogram(name: "logger_start", scope: !12, file: !12, line: 235, type: !210, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!306 = !DILocalVariable(name: "logger", arg: 1, scope: !305, file: !12, line: 235, type: !15)
!307 = !DILocation(line: 235, column: 24, scope: !305)
!308 = !DILocalVariable(name: "rv", scope: !305, file: !12, line: 236, type: !29)
!309 = !DILocation(line: 236, column: 6, scope: !305)
!310 = !DILocation(line: 238, column: 6, scope: !311)
!311 = distinct !DILexicalBlock(scope: !305, file: !12, line: 238, column: 6)
!312 = !DILocation(line: 238, column: 14, scope: !311)
!313 = !DILocation(line: 238, column: 6, scope: !305)
!314 = !DILocation(line: 239, column: 17, scope: !315)
!315 = distinct !DILexicalBlock(scope: !311, file: !12, line: 238, column: 21)
!316 = !DILocation(line: 239, column: 25, scope: !315)
!317 = !DILocation(line: 239, column: 3, scope: !315)
!318 = !DILocation(line: 240, column: 2, scope: !315)
!319 = !DILocation(line: 241, column: 18, scope: !305)
!320 = !DILocation(line: 241, column: 2, scope: !305)
!321 = !DILocation(line: 241, column: 10, scope: !305)
!322 = !DILocation(line: 241, column: 16, scope: !305)
!323 = !DILocation(line: 243, column: 23, scope: !305)
!324 = !DILocation(line: 243, column: 31, scope: !305)
!325 = !DILocation(line: 243, column: 56, scope: !305)
!326 = !DILocation(line: 243, column: 7, scope: !305)
!327 = !DILocation(line: 243, column: 5, scope: !305)
!328 = !DILocation(line: 244, column: 6, scope: !329)
!329 = distinct !DILexicalBlock(scope: !305, file: !12, line: 244, column: 6)
!330 = !DILocation(line: 244, column: 6, scope: !305)
!331 = !DILocation(line: 245, column: 3, scope: !329)
!332 = !DILocation(line: 246, column: 2, scope: !305)
!333 = !DILocation(line: 247, column: 2, scope: !305)
!334 = !DILocation(line: 248, column: 1, scope: !305)
!335 = distinct !DISubprogram(name: "logger_thread", scope: !12, file: !12, line: 203, type: !336, isLocal: true, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!336 = !DISubroutineType(types: !337)
!337 = !{!4, !4}
!338 = !DILocalVariable(name: "arg", arg: 1, scope: !335, file: !12, line: 203, type: !4)
!339 = !DILocation(line: 203, column: 21, scope: !335)
!340 = !DILocalVariable(name: "logger", scope: !335, file: !12, line: 205, type: !15)
!341 = !DILocation(line: 205, column: 12, scope: !335)
!342 = !DILocation(line: 205, column: 21, scope: !335)
!343 = !DILocalVariable(name: "lb", scope: !335, file: !12, line: 206, type: !45)
!344 = !DILocation(line: 206, column: 12, scope: !335)
!345 = !DILocalVariable(name: "e", scope: !335, file: !12, line: 207, type: !29)
!346 = !DILocation(line: 207, column: 6, scope: !335)
!347 = !DILocation(line: 209, column: 2, scope: !335)
!348 = !DILocation(line: 209, column: 32, scope: !349)
!349 = !DILexicalBlockFile(scope: !335, file: !12, discriminator: 1)
!350 = !DILocation(line: 209, column: 40, scope: !349)
!351 = !DILocation(line: 209, column: 15, scope: !349)
!352 = !DILocation(line: 209, column: 13, scope: !349)
!353 = !DILocation(line: 209, column: 2, scope: !349)
!354 = !DILocation(line: 210, column: 12, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !12, line: 210, column: 7)
!356 = distinct !DILexicalBlock(scope: !335, file: !12, line: 209, column: 49)
!357 = !DILocation(line: 210, column: 17, scope: !355)
!358 = !DILocation(line: 210, column: 21, scope: !355)
!359 = !DILocation(line: 210, column: 7, scope: !356)
!360 = !DILocation(line: 211, column: 8, scope: !361)
!361 = distinct !DILexicalBlock(scope: !362, file: !12, line: 211, column: 8)
!362 = distinct !DILexicalBlock(scope: !355, file: !12, line: 210, column: 37)
!363 = !DILocation(line: 211, column: 16, scope: !361)
!364 = !DILocation(line: 211, column: 25, scope: !361)
!365 = !DILocation(line: 211, column: 8, scope: !362)
!366 = !DILocation(line: 212, column: 7, scope: !361)
!367 = !DILocation(line: 212, column: 5, scope: !361)
!368 = !DILocation(line: 213, column: 3, scope: !362)
!369 = !DILocation(line: 213, column: 19, scope: !370)
!370 = !DILexicalBlockFile(scope: !371, file: !12, discriminator: 1)
!371 = distinct !DILexicalBlock(scope: !355, file: !12, line: 213, column: 14)
!372 = !DILocation(line: 213, column: 24, scope: !370)
!373 = !DILocation(line: 213, column: 28, scope: !370)
!374 = !DILocation(line: 213, column: 14, scope: !370)
!375 = !DILocation(line: 214, column: 8, scope: !376)
!376 = distinct !DILexicalBlock(scope: !377, file: !12, line: 214, column: 8)
!377 = distinct !DILexicalBlock(scope: !371, file: !12, line: 213, column: 44)
!378 = !DILocation(line: 214, column: 16, scope: !376)
!379 = !DILocation(line: 214, column: 21, scope: !376)
!380 = !DILocation(line: 214, column: 25, scope: !376)
!381 = !DILocation(line: 214, column: 29, scope: !376)
!382 = !DILocation(line: 214, column: 8, scope: !377)
!383 = !DILocation(line: 215, column: 7, scope: !376)
!384 = !DILocation(line: 215, column: 5, scope: !376)
!385 = !DILocation(line: 216, column: 3, scope: !377)
!386 = !DILocation(line: 216, column: 19, scope: !387)
!387 = !DILexicalBlockFile(scope: !388, file: !12, discriminator: 1)
!388 = distinct !DILexicalBlock(scope: !371, file: !12, line: 216, column: 14)
!389 = !DILocation(line: 216, column: 24, scope: !387)
!390 = !DILocation(line: 216, column: 28, scope: !387)
!391 = !DILocation(line: 216, column: 14, scope: !387)
!392 = !DILocation(line: 217, column: 4, scope: !393)
!393 = distinct !DILexicalBlock(scope: !388, file: !12, line: 216, column: 44)
!394 = !DILocation(line: 217, column: 12, scope: !393)
!395 = !DILocation(line: 217, column: 18, scope: !393)
!396 = !DILocation(line: 217, column: 22, scope: !393)
!397 = !DILocation(line: 217, column: 26, scope: !393)
!398 = !DILocation(line: 217, column: 30, scope: !393)
!399 = !DILocation(line: 218, column: 3, scope: !393)
!400 = !DILocation(line: 219, column: 26, scope: !401)
!401 = distinct !DILexicalBlock(scope: !402, file: !12, line: 219, column: 8)
!402 = distinct !DILexicalBlock(scope: !388, file: !12, line: 218, column: 10)
!403 = !DILocation(line: 219, column: 30, scope: !401)
!404 = !DILocation(line: 219, column: 38, scope: !401)
!405 = !DILocation(line: 219, column: 8, scope: !401)
!406 = !DILocation(line: 219, column: 45, scope: !401)
!407 = !DILocation(line: 219, column: 8, scope: !402)
!408 = !DILocation(line: 220, column: 7, scope: !401)
!409 = !DILocation(line: 220, column: 5, scope: !401)
!410 = !DILocation(line: 223, column: 7, scope: !411)
!411 = distinct !DILexicalBlock(scope: !356, file: !12, line: 223, column: 7)
!412 = !DILocation(line: 223, column: 9, scope: !411)
!413 = !DILocation(line: 223, column: 12, scope: !414)
!414 = !DILexicalBlockFile(scope: !411, file: !12, discriminator: 1)
!415 = !DILocation(line: 223, column: 20, scope: !414)
!416 = !DILocation(line: 223, column: 7, scope: !414)
!417 = !DILocation(line: 224, column: 4, scope: !418)
!418 = distinct !DILexicalBlock(scope: !411, file: !12, line: 223, column: 28)
!419 = !DILocation(line: 224, column: 12, scope: !418)
!420 = !DILocation(line: 225, column: 3, scope: !418)
!421 = !DILocation(line: 209, column: 2, scope: !422)
!422 = !DILexicalBlockFile(scope: !335, file: !12, discriminator: 2)
!423 = distinct !{!423, !347}
!424 = !DILocation(line: 228, column: 2, scope: !335)
!425 = distinct !DISubprogram(name: "logger_leave", scope: !12, file: !12, line: 255, type: !136, isLocal: false, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!426 = !DILocalVariable(name: "logger", arg: 1, scope: !425, file: !12, line: 255, type: !15)
!427 = !DILocation(line: 255, column: 24, scope: !425)
!428 = !DILocation(line: 256, column: 27, scope: !425)
!429 = !DILocation(line: 256, column: 35, scope: !425)
!430 = !DILocation(line: 256, column: 2, scope: !425)
!431 = !DILocation(line: 257, column: 2, scope: !425)
!432 = !DILocation(line: 258, column: 1, scope: !425)
!433 = distinct !DISubprogram(name: "logger_join", scope: !12, file: !12, line: 264, type: !210, isLocal: false, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!434 = !DILocalVariable(name: "logger", arg: 1, scope: !433, file: !12, line: 264, type: !15)
!435 = !DILocation(line: 264, column: 23, scope: !433)
!436 = !DILocalVariable(name: "rv", scope: !433, file: !12, line: 265, type: !29)
!437 = !DILocation(line: 265, column: 6, scope: !433)
!438 = !DILocation(line: 267, column: 20, scope: !433)
!439 = !DILocation(line: 267, column: 28, scope: !433)
!440 = !DILocation(line: 267, column: 7, scope: !433)
!441 = !DILocation(line: 267, column: 5, scope: !433)
!442 = !DILocation(line: 268, column: 6, scope: !443)
!443 = distinct !DILexicalBlock(scope: !433, file: !12, line: 268, column: 6)
!444 = !DILocation(line: 268, column: 6, scope: !433)
!445 = !DILocation(line: 269, column: 3, scope: !443)
!446 = !DILocation(line: 270, column: 2, scope: !433)
!447 = !DILocation(line: 271, column: 1, scope: !433)
!448 = distinct !DISubprogram(name: "logger_stop", scope: !12, file: !12, line: 278, type: !210, isLocal: false, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!449 = !DILocalVariable(name: "logger", arg: 1, scope: !448, file: !12, line: 278, type: !15)
!450 = !DILocation(line: 278, column: 23, scope: !448)
!451 = !DILocation(line: 279, column: 15, scope: !448)
!452 = !DILocation(line: 279, column: 2, scope: !448)
!453 = !DILocation(line: 280, column: 21, scope: !448)
!454 = !DILocation(line: 280, column: 9, scope: !448)
!455 = !DILocation(line: 280, column: 2, scope: !448)
!456 = distinct !DISubprogram(name: "logger_printf", scope: !12, file: !12, line: 298, type: !457, isLocal: false, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!457 = !DISubroutineType(types: !458)
!458 = !{!29, !15, !4, !23, !459, null}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64, align: 64)
!460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!461 = !DILocalVariable(name: "logger", arg: 1, scope: !456, file: !12, line: 298, type: !15)
!462 = !DILocation(line: 298, column: 25, scope: !456)
!463 = !DILocalVariable(name: "fh", arg: 2, scope: !456, file: !12, line: 298, type: !4)
!464 = !DILocation(line: 298, column: 39, scope: !456)
!465 = !DILocalVariable(name: "prepflags", arg: 3, scope: !456, file: !12, line: 298, type: !23)
!466 = !DILocation(line: 298, column: 57, scope: !456)
!467 = !DILocalVariable(name: "fmt", arg: 4, scope: !456, file: !12, line: 299, type: !459)
!468 = !DILocation(line: 299, column: 27, scope: !456)
!469 = !DILocalVariable(name: "ap", scope: !456, file: !12, line: 301, type: !470)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !471, line: 79, baseType: !472)
!471 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !473, line: 40, baseType: !474)
!473 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 301, baseType: !475)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 192, align: 64, elements: !483)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 301, size: 192, align: 64, elements: !477)
!477 = !{!478, !480, !481, !482}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !476, file: !1, line: 301, baseType: !479, size: 32, align: 32)
!479 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !476, file: !1, line: 301, baseType: !479, size: 32, align: 32, offset: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !476, file: !1, line: 301, baseType: !4, size: 64, align: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !476, file: !1, line: 301, baseType: !4, size: 64, align: 64, offset: 128)
!483 = !{!484}
!484 = !DISubrange(count: 1)
!485 = !DILocation(line: 301, column: 10, scope: !456)
!486 = !DILocalVariable(name: "lb", scope: !456, file: !12, line: 302, type: !45)
!487 = !DILocation(line: 302, column: 12, scope: !456)
!488 = !DILocation(line: 304, column: 13, scope: !489)
!489 = distinct !DILexicalBlock(scope: !456, file: !12, line: 304, column: 6)
!490 = !DILocation(line: 304, column: 11, scope: !489)
!491 = !DILocation(line: 304, column: 6, scope: !456)
!492 = !DILocation(line: 305, column: 3, scope: !489)
!493 = !DILocation(line: 306, column: 11, scope: !456)
!494 = !DILocation(line: 306, column: 2, scope: !456)
!495 = !DILocation(line: 306, column: 6, scope: !456)
!496 = !DILocation(line: 306, column: 9, scope: !456)
!497 = !DILocation(line: 307, column: 1, scope: !456)
!498 = !DILocation(line: 308, column: 30, scope: !456)
!499 = !DILocation(line: 308, column: 34, scope: !456)
!500 = !DILocation(line: 308, column: 39, scope: !456)
!501 = !DILocation(line: 308, column: 44, scope: !456)
!502 = !DILocation(line: 308, column: 11, scope: !456)
!503 = !DILocation(line: 308, column: 2, scope: !456)
!504 = !DILocation(line: 308, column: 6, scope: !456)
!505 = !DILocation(line: 308, column: 9, scope: !456)
!506 = !DILocation(line: 309, column: 1, scope: !456)
!507 = !DILocation(line: 310, column: 6, scope: !508)
!508 = distinct !DILexicalBlock(scope: !456, file: !12, line: 310, column: 6)
!509 = !DILocation(line: 310, column: 10, scope: !508)
!510 = !DILocation(line: 310, column: 13, scope: !508)
!511 = !DILocation(line: 310, column: 6, scope: !456)
!512 = !DILocation(line: 311, column: 15, scope: !513)
!513 = distinct !DILexicalBlock(scope: !508, file: !12, line: 310, column: 18)
!514 = !DILocation(line: 311, column: 3, scope: !513)
!515 = !DILocation(line: 312, column: 3, scope: !513)
!516 = !DILocation(line: 314, column: 23, scope: !456)
!517 = !DILocation(line: 314, column: 31, scope: !456)
!518 = !DILocation(line: 314, column: 35, scope: !456)
!519 = !DILocation(line: 314, column: 46, scope: !456)
!520 = !DILocation(line: 314, column: 9, scope: !456)
!521 = !DILocation(line: 314, column: 2, scope: !456)
!522 = !DILocation(line: 315, column: 1, scope: !456)
!523 = distinct !DISubprogram(name: "logger_write", scope: !12, file: !12, line: 317, type: !524, isLocal: false, isDefinition: true, scopeLine: 319, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!524 = !DISubroutineType(types: !525)
!525 = !{!29, !15, !4, !23, !68, !70}
!526 = !DILocalVariable(name: "logger", arg: 1, scope: !523, file: !12, line: 317, type: !15)
!527 = !DILocation(line: 317, column: 24, scope: !523)
!528 = !DILocalVariable(name: "fh", arg: 2, scope: !523, file: !12, line: 317, type: !4)
!529 = !DILocation(line: 317, column: 38, scope: !523)
!530 = !DILocalVariable(name: "prepflags", arg: 3, scope: !523, file: !12, line: 317, type: !23)
!531 = !DILocation(line: 317, column: 56, scope: !523)
!532 = !DILocalVariable(name: "buf", arg: 4, scope: !523, file: !12, line: 318, type: !68)
!533 = !DILocation(line: 318, column: 26, scope: !523)
!534 = !DILocalVariable(name: "sz", arg: 5, scope: !523, file: !12, line: 318, type: !70)
!535 = !DILocation(line: 318, column: 38, scope: !523)
!536 = !DILocalVariable(name: "lb", scope: !523, file: !12, line: 320, type: !45)
!537 = !DILocation(line: 320, column: 12, scope: !523)
!538 = !DILocation(line: 322, column: 29, scope: !539)
!539 = distinct !DILexicalBlock(scope: !523, file: !12, line: 322, column: 6)
!540 = !DILocation(line: 322, column: 34, scope: !539)
!541 = !DILocation(line: 322, column: 13, scope: !539)
!542 = !DILocation(line: 322, column: 11, scope: !539)
!543 = !DILocation(line: 322, column: 6, scope: !523)
!544 = !DILocation(line: 323, column: 3, scope: !539)
!545 = !DILocation(line: 324, column: 11, scope: !523)
!546 = !DILocation(line: 324, column: 2, scope: !523)
!547 = !DILocation(line: 324, column: 6, scope: !523)
!548 = !DILocation(line: 324, column: 9, scope: !523)
!549 = !DILocation(line: 325, column: 23, scope: !523)
!550 = !DILocation(line: 325, column: 31, scope: !523)
!551 = !DILocation(line: 325, column: 35, scope: !523)
!552 = !DILocation(line: 325, column: 46, scope: !523)
!553 = !DILocation(line: 325, column: 9, scope: !523)
!554 = !DILocation(line: 325, column: 2, scope: !523)
!555 = !DILocation(line: 326, column: 1, scope: !523)
!556 = distinct !DISubprogram(name: "logger_print", scope: !12, file: !12, line: 328, type: !557, isLocal: false, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!557 = !DISubroutineType(types: !558)
!558 = !{!29, !15, !4, !23, !459}
!559 = !DILocalVariable(name: "logger", arg: 1, scope: !556, file: !12, line: 328, type: !15)
!560 = !DILocation(line: 328, column: 24, scope: !556)
!561 = !DILocalVariable(name: "fh", arg: 2, scope: !556, file: !12, line: 328, type: !4)
!562 = !DILocation(line: 328, column: 38, scope: !556)
!563 = !DILocalVariable(name: "prepflags", arg: 3, scope: !556, file: !12, line: 328, type: !23)
!564 = !DILocation(line: 328, column: 56, scope: !556)
!565 = !DILocalVariable(name: "s", arg: 4, scope: !556, file: !12, line: 329, type: !459)
!566 = !DILocation(line: 329, column: 26, scope: !556)
!567 = !DILocalVariable(name: "lb", scope: !556, file: !12, line: 331, type: !45)
!568 = !DILocation(line: 331, column: 12, scope: !556)
!569 = !DILocation(line: 333, column: 29, scope: !570)
!570 = distinct !DILexicalBlock(scope: !556, file: !12, line: 333, column: 6)
!571 = !DILocation(line: 333, column: 39, scope: !570)
!572 = !DILocation(line: 333, column: 32, scope: !570)
!573 = !DILocation(line: 333, column: 13, scope: !574)
!574 = !DILexicalBlockFile(scope: !570, file: !12, discriminator: 1)
!575 = !DILocation(line: 333, column: 11, scope: !570)
!576 = !DILocation(line: 333, column: 6, scope: !556)
!577 = !DILocation(line: 334, column: 3, scope: !570)
!578 = !DILocation(line: 335, column: 11, scope: !556)
!579 = !DILocation(line: 335, column: 2, scope: !556)
!580 = !DILocation(line: 335, column: 6, scope: !556)
!581 = !DILocation(line: 335, column: 9, scope: !556)
!582 = !DILocation(line: 336, column: 23, scope: !556)
!583 = !DILocation(line: 336, column: 31, scope: !556)
!584 = !DILocation(line: 336, column: 35, scope: !556)
!585 = !DILocation(line: 336, column: 46, scope: !556)
!586 = !DILocation(line: 336, column: 9, scope: !556)
!587 = !DILocation(line: 336, column: 2, scope: !556)
!588 = !DILocation(line: 337, column: 1, scope: !556)
!589 = distinct !DISubprogram(name: "logger_write_freebuf", scope: !12, file: !12, line: 339, type: !590, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!590 = !DISubroutineType(types: !591)
!591 = !{!29, !15, !4, !23, !4, !70}
!592 = !DILocalVariable(name: "logger", arg: 1, scope: !589, file: !12, line: 339, type: !15)
!593 = !DILocation(line: 339, column: 32, scope: !589)
!594 = !DILocalVariable(name: "fh", arg: 2, scope: !589, file: !12, line: 339, type: !4)
!595 = !DILocation(line: 339, column: 46, scope: !589)
!596 = !DILocalVariable(name: "prepflags", arg: 3, scope: !589, file: !12, line: 339, type: !23)
!597 = !DILocation(line: 339, column: 64, scope: !589)
!598 = !DILocalVariable(name: "buf", arg: 4, scope: !589, file: !12, line: 340, type: !4)
!599 = !DILocation(line: 340, column: 28, scope: !589)
!600 = !DILocalVariable(name: "sz", arg: 5, scope: !589, file: !12, line: 340, type: !70)
!601 = !DILocation(line: 340, column: 40, scope: !589)
!602 = !DILocalVariable(name: "lb", scope: !589, file: !12, line: 342, type: !45)
!603 = !DILocation(line: 342, column: 12, scope: !589)
!604 = !DILocation(line: 344, column: 24, scope: !605)
!605 = distinct !DILexicalBlock(scope: !589, file: !12, line: 344, column: 6)
!606 = !DILocation(line: 344, column: 29, scope: !605)
!607 = !DILocation(line: 344, column: 13, scope: !605)
!608 = !DILocation(line: 344, column: 11, scope: !605)
!609 = !DILocation(line: 344, column: 6, scope: !589)
!610 = !DILocation(line: 345, column: 3, scope: !605)
!611 = !DILocation(line: 346, column: 11, scope: !589)
!612 = !DILocation(line: 346, column: 2, scope: !589)
!613 = !DILocation(line: 346, column: 6, scope: !589)
!614 = !DILocation(line: 346, column: 9, scope: !589)
!615 = !DILocation(line: 347, column: 23, scope: !589)
!616 = !DILocation(line: 347, column: 31, scope: !589)
!617 = !DILocation(line: 347, column: 35, scope: !589)
!618 = !DILocation(line: 347, column: 46, scope: !589)
!619 = !DILocation(line: 347, column: 9, scope: !589)
!620 = !DILocation(line: 347, column: 2, scope: !589)
!621 = !DILocation(line: 348, column: 1, scope: !589)
!622 = distinct !DISubprogram(name: "logger_print_freebuf", scope: !12, file: !12, line: 350, type: !623, isLocal: false, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!623 = !DISubroutineType(types: !624)
!624 = !{!29, !15, !4, !23, !6}
!625 = !DILocalVariable(name: "logger", arg: 1, scope: !622, file: !12, line: 350, type: !15)
!626 = !DILocation(line: 350, column: 32, scope: !622)
!627 = !DILocalVariable(name: "fh", arg: 2, scope: !622, file: !12, line: 350, type: !4)
!628 = !DILocation(line: 350, column: 46, scope: !622)
!629 = !DILocalVariable(name: "prepflags", arg: 3, scope: !622, file: !12, line: 350, type: !23)
!630 = !DILocation(line: 350, column: 64, scope: !622)
!631 = !DILocalVariable(name: "s", arg: 4, scope: !622, file: !12, line: 351, type: !6)
!632 = !DILocation(line: 351, column: 28, scope: !622)
!633 = !DILocalVariable(name: "lb", scope: !622, file: !12, line: 353, type: !45)
!634 = !DILocation(line: 353, column: 12, scope: !622)
!635 = !DILocation(line: 355, column: 24, scope: !636)
!636 = distinct !DILexicalBlock(scope: !622, file: !12, line: 355, column: 6)
!637 = !DILocation(line: 355, column: 34, scope: !636)
!638 = !DILocation(line: 355, column: 27, scope: !636)
!639 = !DILocation(line: 355, column: 13, scope: !640)
!640 = !DILexicalBlockFile(scope: !636, file: !12, discriminator: 1)
!641 = !DILocation(line: 355, column: 11, scope: !636)
!642 = !DILocation(line: 355, column: 6, scope: !622)
!643 = !DILocation(line: 356, column: 3, scope: !636)
!644 = !DILocation(line: 357, column: 11, scope: !622)
!645 = !DILocation(line: 357, column: 2, scope: !622)
!646 = !DILocation(line: 357, column: 6, scope: !622)
!647 = !DILocation(line: 357, column: 9, scope: !622)
!648 = !DILocation(line: 358, column: 23, scope: !622)
!649 = !DILocation(line: 358, column: 31, scope: !622)
!650 = !DILocation(line: 358, column: 35, scope: !622)
!651 = !DILocation(line: 358, column: 46, scope: !622)
!652 = !DILocation(line: 358, column: 9, scope: !622)
!653 = !DILocation(line: 358, column: 2, scope: !622)
!654 = !DILocation(line: 359, column: 1, scope: !622)
