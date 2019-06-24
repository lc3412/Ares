; ModuleID = './line10-thrqueue.o.i'
source_filename = "./line10-thrqueue.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.thrqueue = type { i8**, i64, i64, i64, i64, i8, %union.pthread_mutex_t, %union.pthread_cond_t, %union.pthread_cond_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_cond_t = type { %struct.anon }
%struct.anon = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_condattr_t = type { i32 }

; Function Attrs: nounwind uwtable
define noalias %struct.thrqueue* @thrqueue_new(i64) #0 !dbg !8 {
  %2 = alloca %struct.thrqueue*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.thrqueue*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !83, metadata !84), !dbg !85
  call void @llvm.dbg.declare(metadata %struct.thrqueue** %4, metadata !86, metadata !84), !dbg !87
  %5 = call noalias i8* @malloc(i64 184) #4, !dbg !88
  %6 = bitcast i8* %5 to %struct.thrqueue*, !dbg !88
  store %struct.thrqueue* %6, %struct.thrqueue** %4, align 8, !dbg !90
  %7 = icmp ne %struct.thrqueue* %6, null, !dbg !90
  br i1 %7, label %9, label %8, !dbg !91

; <label>:8:                                      ; preds = %1
  br label %73, !dbg !92

; <label>:9:                                      ; preds = %1
  %10 = load i64, i64* %3, align 8, !dbg !93
  %11 = mul i64 %10, 8, !dbg !95
  %12 = call noalias i8* @malloc(i64 %11) #4, !dbg !96
  %13 = bitcast i8* %12 to i8**, !dbg !96
  %14 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !97
  %15 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %14, i32 0, i32 0, !dbg !98
  store i8** %13, i8*** %15, align 8, !dbg !99
  %16 = icmp ne i8** %13, null, !dbg !99
  br i1 %16, label %18, label %17, !dbg !100

; <label>:17:                                     ; preds = %9
  br label %70, !dbg !101

; <label>:18:                                     ; preds = %9
  %19 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !102
  %20 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %19, i32 0, i32 6, !dbg !104
  %21 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %20, %union.pthread_mutexattr_t* null) #4, !dbg !105
  %22 = icmp ne i32 %21, 0, !dbg !105
  br i1 %22, label %23, label %24, !dbg !106

; <label>:23:                                     ; preds = %18
  br label %65, !dbg !107

; <label>:24:                                     ; preds = %18
  %25 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !108
  %26 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %25, i32 0, i32 7, !dbg !110
  %27 = call i32 @pthread_cond_init(%union.pthread_cond_t* %26, %union.pthread_condattr_t* null) #4, !dbg !111
  %28 = icmp ne i32 %27, 0, !dbg !111
  br i1 %28, label %29, label %30, !dbg !112

; <label>:29:                                     ; preds = %24
  br label %61, !dbg !113

; <label>:30:                                     ; preds = %24
  %31 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !114
  %32 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %31, i32 0, i32 8, !dbg !116
  %33 = call i32 @pthread_cond_init(%union.pthread_cond_t* %32, %union.pthread_condattr_t* null) #4, !dbg !117
  %34 = icmp ne i32 %33, 0, !dbg !117
  br i1 %34, label %35, label %36, !dbg !118

; <label>:35:                                     ; preds = %30
  br label %57, !dbg !119

; <label>:36:                                     ; preds = %30
  %37 = load i64, i64* %3, align 8, !dbg !120
  %38 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !121
  %39 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %38, i32 0, i32 1, !dbg !122
  store i64 %37, i64* %39, align 8, !dbg !123
  %40 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !124
  %41 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %40, i32 0, i32 2, !dbg !125
  store i64 0, i64* %41, align 8, !dbg !126
  %42 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !127
  %43 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %42, i32 0, i32 3, !dbg !128
  store i64 0, i64* %43, align 8, !dbg !129
  %44 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !130
  %45 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %44, i32 0, i32 4, !dbg !131
  store i64 0, i64* %45, align 8, !dbg !132
  %46 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !133
  %47 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %46, i32 0, i32 5, !dbg !134
  %48 = load i8, i8* %47, align 8, !dbg !135
  %49 = and i8 %48, -2, !dbg !135
  %50 = or i8 %49, 1, !dbg !135
  store i8 %50, i8* %47, align 8, !dbg !135
  %51 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !136
  %52 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %51, i32 0, i32 5, !dbg !137
  %53 = load i8, i8* %52, align 8, !dbg !138
  %54 = and i8 %53, -3, !dbg !138
  %55 = or i8 %54, 2, !dbg !138
  store i8 %55, i8* %52, align 8, !dbg !138
  %56 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !139
  store %struct.thrqueue* %56, %struct.thrqueue** %2, align 8, !dbg !140
  br label %74, !dbg !140

; <label>:57:                                     ; preds = %35
  %58 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !141
  %59 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %58, i32 0, i32 7, !dbg !142
  %60 = call i32 @pthread_cond_destroy(%union.pthread_cond_t* %59) #4, !dbg !143
  br label %61, !dbg !143

; <label>:61:                                     ; preds = %57, %29
  %62 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !144
  %63 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %62, i32 0, i32 6, !dbg !145
  %64 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %63) #4, !dbg !146
  br label %65, !dbg !146

; <label>:65:                                     ; preds = %61, %23
  %66 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !147
  %67 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %66, i32 0, i32 0, !dbg !148
  %68 = load i8**, i8*** %67, align 8, !dbg !148
  %69 = bitcast i8** %68 to i8*, !dbg !147
  call void @free(i8* %69) #4, !dbg !149
  br label %70, !dbg !149

; <label>:70:                                     ; preds = %65, %17
  %71 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !150
  %72 = bitcast %struct.thrqueue* %71 to i8*, !dbg !150
  call void @free(i8* %72) #4, !dbg !151
  br label %73, !dbg !151

; <label>:73:                                     ; preds = %70, %8
  store %struct.thrqueue* null, %struct.thrqueue** %2, align 8, !dbg !152
  br label %74, !dbg !152

; <label>:74:                                     ; preds = %73, %36
  %75 = load %struct.thrqueue*, %struct.thrqueue** %2, align 8, !dbg !153
  ret %struct.thrqueue* %75, !dbg !153
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #2

; Function Attrs: nounwind
declare i32 @pthread_cond_init(%union.pthread_cond_t*, %union.pthread_condattr_t*) #2

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(%union.pthread_cond_t*) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @thrqueue_free(%struct.thrqueue* nonnull) #0 !dbg !154 {
  %2 = alloca %struct.thrqueue*, align 8
  store %struct.thrqueue* %0, %struct.thrqueue** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.thrqueue** %2, metadata !157, metadata !84), !dbg !158
  %3 = load %struct.thrqueue*, %struct.thrqueue** %2, align 8, !dbg !159
  %4 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %3, i32 0, i32 0, !dbg !160
  %5 = load i8**, i8*** %4, align 8, !dbg !160
  %6 = bitcast i8** %5 to i8*, !dbg !159
  call void @free(i8* %6) #4, !dbg !161
  %7 = load %struct.thrqueue*, %struct.thrqueue** %2, align 8, !dbg !162
  %8 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %7, i32 0, i32 6, !dbg !163
  %9 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %8) #4, !dbg !164
  %10 = load %struct.thrqueue*, %struct.thrqueue** %2, align 8, !dbg !165
  %11 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %10, i32 0, i32 7, !dbg !166
  %12 = call i32 @pthread_cond_destroy(%union.pthread_cond_t* %11) #4, !dbg !167
  %13 = load %struct.thrqueue*, %struct.thrqueue** %2, align 8, !dbg !168
  %14 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %13, i32 0, i32 8, !dbg !169
  %15 = call i32 @pthread_cond_destroy(%union.pthread_cond_t* %14) #4, !dbg !170
  %16 = load %struct.thrqueue*, %struct.thrqueue** %2, align 8, !dbg !171
  %17 = bitcast %struct.thrqueue* %16 to i8*, !dbg !171
  call void @free(i8* %17) #4, !dbg !172
  ret void, !dbg !173
}

; Function Attrs: nounwind uwtable
define i8* @thrqueue_enqueue(%struct.thrqueue* nonnull, i8*) #0 !dbg !174 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.thrqueue*, align 8
  %5 = alloca i8*, align 8
  store %struct.thrqueue* %0, %struct.thrqueue** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.thrqueue** %4, metadata !177, metadata !84), !dbg !178
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !179, metadata !84), !dbg !180
  %6 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !181
  %7 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %6, i32 0, i32 6, !dbg !182
  %8 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %7) #4, !dbg !183
  br label %9, !dbg !184

; <label>:9:                                      ; preds = %28, %2
  %10 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !185
  %11 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %10, i32 0, i32 2, !dbg !187
  %12 = load i64, i64* %11, align 8, !dbg !187
  %13 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !188
  %14 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %13, i32 0, i32 1, !dbg !189
  %15 = load i64, i64* %14, align 8, !dbg !189
  %16 = icmp eq i64 %12, %15, !dbg !190
  br i1 %16, label %17, label %34, !dbg !191

; <label>:17:                                     ; preds = %9
  %18 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !192
  %19 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %18, i32 0, i32 5, !dbg !195
  %20 = load i8, i8* %19, align 8, !dbg !195
  %21 = and i8 %20, 1, !dbg !195
  %22 = zext i8 %21 to i32, !dbg !195
  %23 = icmp ne i32 %22, 0, !dbg !192
  br i1 %23, label %28, label %24, !dbg !196

; <label>:24:                                     ; preds = %17
  %25 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !197
  %26 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %25, i32 0, i32 6, !dbg !199
  %27 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %26) #4, !dbg !200
  store i8* null, i8** %3, align 8, !dbg !201
  br label %62, !dbg !201

; <label>:28:                                     ; preds = %17
  %29 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !202
  %30 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %29, i32 0, i32 8, !dbg !203
  %31 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !204
  %32 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %31, i32 0, i32 6, !dbg !205
  %33 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %30, %union.pthread_mutex_t* %32), !dbg !206
  br label %9, !dbg !207, !llvm.loop !209

; <label>:34:                                     ; preds = %9
  %35 = load i8*, i8** %5, align 8, !dbg !210
  %36 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !211
  %37 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %36, i32 0, i32 3, !dbg !212
  %38 = load i64, i64* %37, align 8, !dbg !213
  %39 = add i64 %38, 1, !dbg !213
  store i64 %39, i64* %37, align 8, !dbg !213
  %40 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !214
  %41 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %40, i32 0, i32 0, !dbg !215
  %42 = load i8**, i8*** %41, align 8, !dbg !215
  %43 = getelementptr inbounds i8*, i8** %42, i64 %38, !dbg !214
  store i8* %35, i8** %43, align 8, !dbg !216
  %44 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !217
  %45 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %44, i32 0, i32 1, !dbg !218
  %46 = load i64, i64* %45, align 8, !dbg !218
  %47 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !219
  %48 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %47, i32 0, i32 3, !dbg !220
  %49 = load i64, i64* %48, align 8, !dbg !221
  %50 = urem i64 %49, %46, !dbg !221
  store i64 %50, i64* %48, align 8, !dbg !221
  %51 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !222
  %52 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %51, i32 0, i32 2, !dbg !223
  %53 = load i64, i64* %52, align 8, !dbg !224
  %54 = add i64 %53, 1, !dbg !224
  store i64 %54, i64* %52, align 8, !dbg !224
  %55 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !225
  %56 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %55, i32 0, i32 6, !dbg !226
  %57 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %56) #4, !dbg !227
  %58 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !228
  %59 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %58, i32 0, i32 7, !dbg !229
  %60 = call i32 @pthread_cond_broadcast(%union.pthread_cond_t* %59) #4, !dbg !230
  %61 = load i8*, i8** %5, align 8, !dbg !231
  store i8* %61, i8** %3, align 8, !dbg !232
  br label %62, !dbg !232

; <label>:62:                                     ; preds = %34, %24
  %63 = load i8*, i8** %3, align 8, !dbg !233
  ret i8* %63, !dbg !233
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #2

declare i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*) #3

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(%union.pthread_cond_t*) #2

; Function Attrs: nounwind uwtable
define i8* @thrqueue_enqueue_nb(%struct.thrqueue* nonnull, i8*) #0 !dbg !234 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.thrqueue*, align 8
  %5 = alloca i8*, align 8
  store %struct.thrqueue* %0, %struct.thrqueue** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.thrqueue** %4, metadata !235, metadata !84), !dbg !236
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !237, metadata !84), !dbg !238
  %6 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !239
  %7 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %6, i32 0, i32 6, !dbg !240
  %8 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %7) #4, !dbg !241
  %9 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !242
  %10 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %9, i32 0, i32 2, !dbg !244
  %11 = load i64, i64* %10, align 8, !dbg !244
  %12 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !245
  %13 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %12, i32 0, i32 1, !dbg !246
  %14 = load i64, i64* %13, align 8, !dbg !246
  %15 = icmp eq i64 %11, %14, !dbg !247
  br i1 %15, label %16, label %20, !dbg !248

; <label>:16:                                     ; preds = %2
  %17 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !249
  %18 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %17, i32 0, i32 6, !dbg !251
  %19 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %18) #4, !dbg !252
  store i8* null, i8** %3, align 8, !dbg !253
  br label %48, !dbg !253

; <label>:20:                                     ; preds = %2
  %21 = load i8*, i8** %5, align 8, !dbg !254
  %22 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !255
  %23 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %22, i32 0, i32 3, !dbg !256
  %24 = load i64, i64* %23, align 8, !dbg !257
  %25 = add i64 %24, 1, !dbg !257
  store i64 %25, i64* %23, align 8, !dbg !257
  %26 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !258
  %27 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %26, i32 0, i32 0, !dbg !259
  %28 = load i8**, i8*** %27, align 8, !dbg !259
  %29 = getelementptr inbounds i8*, i8** %28, i64 %24, !dbg !258
  store i8* %21, i8** %29, align 8, !dbg !260
  %30 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !261
  %31 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %30, i32 0, i32 1, !dbg !262
  %32 = load i64, i64* %31, align 8, !dbg !262
  %33 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !263
  %34 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %33, i32 0, i32 3, !dbg !264
  %35 = load i64, i64* %34, align 8, !dbg !265
  %36 = urem i64 %35, %32, !dbg !265
  store i64 %36, i64* %34, align 8, !dbg !265
  %37 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !266
  %38 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %37, i32 0, i32 2, !dbg !267
  %39 = load i64, i64* %38, align 8, !dbg !268
  %40 = add i64 %39, 1, !dbg !268
  store i64 %40, i64* %38, align 8, !dbg !268
  %41 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !269
  %42 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %41, i32 0, i32 6, !dbg !270
  %43 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %42) #4, !dbg !271
  %44 = load %struct.thrqueue*, %struct.thrqueue** %4, align 8, !dbg !272
  %45 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %44, i32 0, i32 7, !dbg !273
  %46 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %45) #4, !dbg !274
  %47 = load i8*, i8** %5, align 8, !dbg !275
  store i8* %47, i8** %3, align 8, !dbg !276
  br label %48, !dbg !276

; <label>:48:                                     ; preds = %20, %16
  %49 = load i8*, i8** %3, align 8, !dbg !277
  ret i8* %49, !dbg !277
}

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(%union.pthread_cond_t*) #2

; Function Attrs: nounwind uwtable
define i8* @thrqueue_dequeue(%struct.thrqueue* nonnull) #0 !dbg !278 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.thrqueue*, align 8
  %4 = alloca i8*, align 8
  store %struct.thrqueue* %0, %struct.thrqueue** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.thrqueue** %3, metadata !281, metadata !84), !dbg !282
  call void @llvm.dbg.declare(metadata i8** %4, metadata !283, metadata !84), !dbg !284
  %5 = load %struct.thrqueue*, %struct.thrqueue** %3, align 8, !dbg !285
  %6 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %5, i32 0, i32 6, !dbg !286
  %7 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %6) #4, !dbg !287
  br label %8, !dbg !288

; <label>:8:                                      ; preds = %25, %1
  %9 = load %struct.thrqueue*, %struct.thrqueue** %3, align 8, !dbg !289
  %10 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %9, i32 0, i32 2, !dbg !291
  %11 = load i64, i64* %10, align 8, !dbg !291
  %12 = icmp eq i64 %11, 0, !dbg !292
  br i1 %12, label %13, label %31, !dbg !293

; <label>:13:                                     ; preds = %8
  %14 = load %struct.thrqueue*, %struct.thrqueue** %3, align 8, !dbg !294
  %15 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %14, i32 0, i32 5, !dbg !297
  %16 = load i8, i8* %15, align 8, !dbg !297
  %17 = lshr i8 %16, 1, !dbg !297
  %18 = and i8 %17, 1, !dbg !297
  %19 = zext i8 %18 to i32, !dbg !297
  %20 = icmp ne i32 %19, 0, !dbg !294
  br i1 %20, label %25, label %21, !dbg !298

; <label>:21:                                     ; preds = %13
  %22 = load %struct.thrqueue*, %struct.thrqueue** %3, align 8, !dbg !299
  %23 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %22, i32 0, i32 6, !dbg !301
  %24 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %23) #4, !dbg !302
  store i8* null, i8** %2, align 8, !dbg !303
  br label %59, !dbg !303

; <label>:25:                                     ; preds = %13
  %26 = load %struct.thrqueue*, %struct.thrqueue** %3, align 8, !dbg !304
  %27 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %26, i32 0, i32 7, !dbg !305
  %28 = load %struct.thrqueue*, %struct.thrqueue** %3, align 8, !dbg !306
  %29 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %28, i32 0, i32 6, !dbg !307
  %30 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %27, %union.pthread_mutex_t* %29), !dbg !308
  br label %8, !dbg !309, !llvm.loop !311

; <label>:31:                                     ; preds = %8
  %32 = load %struct.thrqueue*, %struct.thrqueue** %3, align 8, !dbg !312
  %33 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %32, i32 0, i32 4, !dbg !313
  %34 = load i64, i64* %33, align 8, !dbg !314
  %35 = add i64 %34, 1, !dbg !314
  store i64 %35, i64* %33, align 8, !dbg !314
  %36 = load %struct.thrqueue*, %struct.thrqueue** %3, align 8, !dbg !315
  %37 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %36, i32 0, i32 0, !dbg !316
  %38 = load i8**, i8*** %37, align 8, !dbg !316
  %39 = getelementptr inbounds i8*, i8** %38, i64 %34, !dbg !315
  %40 = load i8*, i8** %39, align 8, !dbg !315
  store i8* %40, i8** %4, align 8, !dbg !317
  %41 = load %struct.thrqueue*, %struct.thrqueue** %3, align 8, !dbg !318
  %42 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %41, i32 0, i32 1, !dbg !319
  %43 = load i64, i64* %42, align 8, !dbg !319
  %44 = load %struct.thrqueue*, %struct.thrqueue** %3, align 8, !dbg !320
  %45 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %44, i32 0, i32 4, !dbg !321
  %46 = load i64, i64* %45, align 8, !dbg !322
  %47 = urem i64 %46, %43, !dbg !322
  store i64 %47, i64* %45, align 8, !dbg !322
  %48 = load %struct.thrqueue*, %struct.thrqueue** %3, align 8, !dbg !323
  %49 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %48, i32 0, i32 2, !dbg !324
  %50 = load i64, i64* %49, align 8, !dbg !325
  %51 = add i64 %50, -1, !dbg !325
  store i64 %51, i64* %49, align 8, !dbg !325
  %52 = load %struct.thrqueue*, %struct.thrqueue** %3, align 8, !dbg !326
  %53 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %52, i32 0, i32 6, !dbg !327
  %54 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %53) #4, !dbg !328
  %55 = load %struct.thrqueue*, %struct.thrqueue** %3, align 8, !dbg !329
  %56 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %55, i32 0, i32 8, !dbg !330
  %57 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %56) #4, !dbg !331
  %58 = load i8*, i8** %4, align 8, !dbg !332
  store i8* %58, i8** %2, align 8, !dbg !333
  br label %59, !dbg !333

; <label>:59:                                     ; preds = %31, %21
  %60 = load i8*, i8** %2, align 8, !dbg !334
  ret i8* %60, !dbg !334
}

; Function Attrs: nounwind uwtable
define i8* @thrqueue_dequeue_nb(%struct.thrqueue* nonnull) #0 !dbg !335 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.thrqueue*, align 8
  %4 = alloca i8*, align 8
  store %struct.thrqueue* %0, %struct.thrqueue** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.thrqueue** %3, metadata !336, metadata !84), !dbg !337
  call void @llvm.dbg.declare(metadata i8** %4, metadata !338, metadata !84), !dbg !339
  %5 = load %struct.thrqueue*, %struct.thrqueue** %3, align 8, !dbg !340
  %6 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %5, i32 0, i32 6, !dbg !341
  %7 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %6) #4, !dbg !342
  %8 = load %struct.thrqueue*, %struct.thrqueue** %3, align 8, !dbg !343
  %9 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %8, i32 0, i32 2, !dbg !345
  %10 = load i64, i64* %9, align 8, !dbg !345
  %11 = icmp eq i64 %10, 0, !dbg !346
  br i1 %11, label %12, label %16, !dbg !347

; <label>:12:                                     ; preds = %1
  %13 = load %struct.thrqueue*, %struct.thrqueue** %3, align 8, !dbg !348
  %14 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %13, i32 0, i32 6, !dbg !350
  %15 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %14) #4, !dbg !351
  store i8* null, i8** %2, align 8, !dbg !352
  br label %44, !dbg !352

; <label>:16:                                     ; preds = %1
  %17 = load %struct.thrqueue*, %struct.thrqueue** %3, align 8, !dbg !353
  %18 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %17, i32 0, i32 4, !dbg !354
  %19 = load i64, i64* %18, align 8, !dbg !355
  %20 = add i64 %19, 1, !dbg !355
  store i64 %20, i64* %18, align 8, !dbg !355
  %21 = load %struct.thrqueue*, %struct.thrqueue** %3, align 8, !dbg !356
  %22 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %21, i32 0, i32 0, !dbg !357
  %23 = load i8**, i8*** %22, align 8, !dbg !357
  %24 = getelementptr inbounds i8*, i8** %23, i64 %19, !dbg !356
  %25 = load i8*, i8** %24, align 8, !dbg !356
  store i8* %25, i8** %4, align 8, !dbg !358
  %26 = load %struct.thrqueue*, %struct.thrqueue** %3, align 8, !dbg !359
  %27 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %26, i32 0, i32 1, !dbg !360
  %28 = load i64, i64* %27, align 8, !dbg !360
  %29 = load %struct.thrqueue*, %struct.thrqueue** %3, align 8, !dbg !361
  %30 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %29, i32 0, i32 4, !dbg !362
  %31 = load i64, i64* %30, align 8, !dbg !363
  %32 = urem i64 %31, %28, !dbg !363
  store i64 %32, i64* %30, align 8, !dbg !363
  %33 = load %struct.thrqueue*, %struct.thrqueue** %3, align 8, !dbg !364
  %34 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %33, i32 0, i32 2, !dbg !365
  %35 = load i64, i64* %34, align 8, !dbg !366
  %36 = add i64 %35, -1, !dbg !366
  store i64 %36, i64* %34, align 8, !dbg !366
  %37 = load %struct.thrqueue*, %struct.thrqueue** %3, align 8, !dbg !367
  %38 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %37, i32 0, i32 6, !dbg !368
  %39 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %38) #4, !dbg !369
  %40 = load %struct.thrqueue*, %struct.thrqueue** %3, align 8, !dbg !370
  %41 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %40, i32 0, i32 8, !dbg !371
  %42 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %41) #4, !dbg !372
  %43 = load i8*, i8** %4, align 8, !dbg !373
  store i8* %43, i8** %2, align 8, !dbg !374
  br label %44, !dbg !374

; <label>:44:                                     ; preds = %16, %12
  %45 = load i8*, i8** %2, align 8, !dbg !375
  ret i8* %45, !dbg !375
}

; Function Attrs: nounwind uwtable
define void @thrqueue_unblock_enqueue(%struct.thrqueue* nonnull) #0 !dbg !376 {
  %2 = alloca %struct.thrqueue*, align 8
  store %struct.thrqueue* %0, %struct.thrqueue** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.thrqueue** %2, metadata !377, metadata !84), !dbg !378
  %3 = load %struct.thrqueue*, %struct.thrqueue** %2, align 8, !dbg !379
  %4 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %3, i32 0, i32 5, !dbg !380
  %5 = load i8, i8* %4, align 8, !dbg !381
  %6 = and i8 %5, -2, !dbg !381
  store i8 %6, i8* %4, align 8, !dbg !381
  %7 = load %struct.thrqueue*, %struct.thrqueue** %2, align 8, !dbg !382
  %8 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %7, i32 0, i32 8, !dbg !383
  %9 = call i32 @pthread_cond_broadcast(%union.pthread_cond_t* %8) #4, !dbg !384
  %10 = call i32 @sched_yield() #4, !dbg !385
  ret void, !dbg !386
}

; Function Attrs: nounwind
declare i32 @sched_yield() #2

; Function Attrs: nounwind uwtable
define void @thrqueue_unblock_dequeue(%struct.thrqueue* nonnull) #0 !dbg !387 {
  %2 = alloca %struct.thrqueue*, align 8
  store %struct.thrqueue* %0, %struct.thrqueue** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.thrqueue** %2, metadata !388, metadata !84), !dbg !389
  %3 = load %struct.thrqueue*, %struct.thrqueue** %2, align 8, !dbg !390
  %4 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %3, i32 0, i32 5, !dbg !391
  %5 = load i8, i8* %4, align 8, !dbg !392
  %6 = and i8 %5, -3, !dbg !392
  store i8 %6, i8* %4, align 8, !dbg !392
  %7 = load %struct.thrqueue*, %struct.thrqueue** %2, align 8, !dbg !393
  %8 = getelementptr inbounds %struct.thrqueue, %struct.thrqueue* %7, i32 0, i32 7, !dbg !394
  %9 = call i32 @pthread_cond_broadcast(%union.pthread_cond_t* %8) #4, !dbg !395
  %10 = call i32 @sched_yield() #4, !dbg !396
  ret void, !dbg !397
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "line10-thrqueue.o.i", directory: "/home/lichi/Desktop/sslsplit/task1")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!8 = distinct !DISubprogram(name: "thrqueue_new", scope: !9, file: !9, line: 56, type: !10, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!9 = !DIFile(filename: "thrqueue.c", directory: "/home/lichi/Desktop/sslsplit/task1")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !20}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "thrqueue_t", file: !14, line: 36, baseType: !15)
!14 = !DIFile(filename: "thrqueue.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thrqueue", file: !9, line: 41, size: 1472, align: 64, elements: !16)
!16 = !{!17, !19, !23, !24, !25, !26, !28, !29, !60, !82}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !15, file: !9, line: 42, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !15, file: !9, line: 43, baseType: !20, size: 64, align: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !21, line: 216, baseType: !22)
!21 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!22 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !15, file: !9, line: 43, baseType: !20, size: 64, align: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !15, file: !9, line: 44, baseType: !20, size: 64, align: 64, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !15, file: !9, line: 44, baseType: !20, size: 64, align: 64, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "block_enqueue", scope: !15, file: !9, line: 45, baseType: !27, size: 1, align: 32, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!27 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "block_dequeue", scope: !15, file: !9, line: 46, baseType: !27, size: 1, align: 32, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !15, file: !9, line: 47, baseType: !30, size: 320, align: 64, offset: 384)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !31, line: 128, baseType: !32)
!31 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!32 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !31, line: 90, size: 320, align: 64, elements: !33)
!33 = !{!34, !53, !58}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !32, file: !31, line: 125, baseType: !35, size: 320, align: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !31, line: 92, size: 320, align: 64, elements: !36)
!36 = !{!37, !39, !40, !41, !42, !43, !45, !46}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !35, file: !31, line: 94, baseType: !38, size: 32, align: 32)
!38 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !35, file: !31, line: 95, baseType: !27, size: 32, align: 32, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !35, file: !31, line: 96, baseType: !38, size: 32, align: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !35, file: !31, line: 98, baseType: !27, size: 32, align: 32, offset: 96)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !35, file: !31, line: 102, baseType: !38, size: 32, align: 32, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !35, file: !31, line: 104, baseType: !44, size: 16, align: 16, offset: 160)
!44 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !35, file: !31, line: 105, baseType: !44, size: 16, align: 16, offset: 176)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !35, file: !31, line: 106, baseType: !47, size: 128, align: 64, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !31, line: 79, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !31, line: 75, size: 128, align: 64, elements: !49)
!49 = !{!50, !52}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !48, file: !31, line: 77, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !48, file: !31, line: 78, baseType: !51, size: 64, align: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !32, file: !31, line: 126, baseType: !54, size: 320, align: 8)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 320, align: 8, elements: !56)
!55 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!56 = !{!57}
!57 = !DISubrange(count: 40)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !32, file: !31, line: 127, baseType: !59, size: 64, align: 64)
!59 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "notempty", scope: !15, file: !9, line: 48, baseType: !61, size: 384, align: 64, offset: 704)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !31, line: 154, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !31, line: 139, size: 384, align: 64, elements: !63)
!63 = !{!64, !76, !80}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !62, file: !31, line: 151, baseType: !65, size: 384, align: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !62, file: !31, line: 141, size: 384, align: 64, elements: !66)
!66 = !{!67, !68, !69, !71, !72, !73, !74, !75}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !65, file: !31, line: 143, baseType: !38, size: 32, align: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__futex", scope: !65, file: !31, line: 144, baseType: !27, size: 32, align: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__total_seq", scope: !65, file: !31, line: 145, baseType: !70, size: 64, align: 64, offset: 64)
!70 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__wakeup_seq", scope: !65, file: !31, line: 146, baseType: !70, size: 64, align: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__woken_seq", scope: !65, file: !31, line: 147, baseType: !70, size: 64, align: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__mutex", scope: !65, file: !31, line: 148, baseType: !4, size: 64, align: 64, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__nwaiters", scope: !65, file: !31, line: 149, baseType: !27, size: 32, align: 32, offset: 320)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__broadcast_seq", scope: !65, file: !31, line: 150, baseType: !27, size: 32, align: 32, offset: 352)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !62, file: !31, line: 152, baseType: !77, size: 384, align: 8)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 384, align: 8, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 48)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !62, file: !31, line: 153, baseType: !81, size: 64, align: 64)
!81 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "notfull", scope: !15, file: !9, line: 49, baseType: !61, size: 384, align: 64, offset: 1088)
!83 = !DILocalVariable(name: "sz", arg: 1, scope: !8, file: !9, line: 56, type: !20)
!84 = !DIExpression()
!85 = !DILocation(line: 56, column: 21, scope: !8)
!86 = !DILocalVariable(name: "queue", scope: !8, file: !9, line: 58, type: !12)
!87 = !DILocation(line: 58, column: 14, scope: !8)
!88 = !DILocation(line: 60, column: 16, scope: !89)
!89 = distinct !DILexicalBlock(scope: !8, file: !9, line: 60, column: 6)
!90 = !DILocation(line: 60, column: 14, scope: !89)
!91 = !DILocation(line: 60, column: 6, scope: !8)
!92 = !DILocation(line: 61, column: 3, scope: !89)
!93 = !DILocation(line: 62, column: 29, scope: !94)
!94 = distinct !DILexicalBlock(scope: !8, file: !9, line: 62, column: 6)
!95 = !DILocation(line: 62, column: 32, scope: !94)
!96 = !DILocation(line: 62, column: 22, scope: !94)
!97 = !DILocation(line: 62, column: 8, scope: !94)
!98 = !DILocation(line: 62, column: 15, scope: !94)
!99 = !DILocation(line: 62, column: 20, scope: !94)
!100 = !DILocation(line: 62, column: 6, scope: !8)
!101 = !DILocation(line: 63, column: 3, scope: !94)
!102 = !DILocation(line: 64, column: 26, scope: !103)
!103 = distinct !DILexicalBlock(scope: !8, file: !9, line: 64, column: 6)
!104 = !DILocation(line: 64, column: 33, scope: !103)
!105 = !DILocation(line: 64, column: 6, scope: !103)
!106 = !DILocation(line: 64, column: 6, scope: !8)
!107 = !DILocation(line: 65, column: 3, scope: !103)
!108 = !DILocation(line: 66, column: 25, scope: !109)
!109 = distinct !DILexicalBlock(scope: !8, file: !9, line: 66, column: 6)
!110 = !DILocation(line: 66, column: 32, scope: !109)
!111 = !DILocation(line: 66, column: 6, scope: !109)
!112 = !DILocation(line: 66, column: 6, scope: !8)
!113 = !DILocation(line: 67, column: 3, scope: !109)
!114 = !DILocation(line: 68, column: 25, scope: !115)
!115 = distinct !DILexicalBlock(scope: !8, file: !9, line: 68, column: 6)
!116 = !DILocation(line: 68, column: 32, scope: !115)
!117 = !DILocation(line: 68, column: 6, scope: !115)
!118 = !DILocation(line: 68, column: 6, scope: !8)
!119 = !DILocation(line: 69, column: 3, scope: !115)
!120 = !DILocation(line: 70, column: 14, scope: !8)
!121 = !DILocation(line: 70, column: 2, scope: !8)
!122 = !DILocation(line: 70, column: 9, scope: !8)
!123 = !DILocation(line: 70, column: 12, scope: !8)
!124 = !DILocation(line: 71, column: 2, scope: !8)
!125 = !DILocation(line: 71, column: 9, scope: !8)
!126 = !DILocation(line: 71, column: 11, scope: !8)
!127 = !DILocation(line: 72, column: 2, scope: !8)
!128 = !DILocation(line: 72, column: 9, scope: !8)
!129 = !DILocation(line: 72, column: 12, scope: !8)
!130 = !DILocation(line: 73, column: 2, scope: !8)
!131 = !DILocation(line: 73, column: 9, scope: !8)
!132 = !DILocation(line: 73, column: 13, scope: !8)
!133 = !DILocation(line: 74, column: 2, scope: !8)
!134 = !DILocation(line: 74, column: 9, scope: !8)
!135 = !DILocation(line: 74, column: 23, scope: !8)
!136 = !DILocation(line: 75, column: 2, scope: !8)
!137 = !DILocation(line: 75, column: 9, scope: !8)
!138 = !DILocation(line: 75, column: 23, scope: !8)
!139 = !DILocation(line: 76, column: 9, scope: !8)
!140 = !DILocation(line: 76, column: 2, scope: !8)
!141 = !DILocation(line: 79, column: 24, scope: !8)
!142 = !DILocation(line: 79, column: 31, scope: !8)
!143 = !DILocation(line: 79, column: 2, scope: !8)
!144 = !DILocation(line: 81, column: 25, scope: !8)
!145 = !DILocation(line: 81, column: 32, scope: !8)
!146 = !DILocation(line: 81, column: 2, scope: !8)
!147 = !DILocation(line: 83, column: 7, scope: !8)
!148 = !DILocation(line: 83, column: 14, scope: !8)
!149 = !DILocation(line: 83, column: 2, scope: !8)
!150 = !DILocation(line: 85, column: 7, scope: !8)
!151 = !DILocation(line: 85, column: 2, scope: !8)
!152 = !DILocation(line: 87, column: 2, scope: !8)
!153 = !DILocation(line: 88, column: 1, scope: !8)
!154 = distinct !DISubprogram(name: "thrqueue_free", scope: !9, file: !9, line: 96, type: !155, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!155 = !DISubroutineType(types: !156)
!156 = !{null, !12}
!157 = !DILocalVariable(name: "queue", arg: 1, scope: !154, file: !9, line: 96, type: !12)
!158 = !DILocation(line: 96, column: 27, scope: !154)
!159 = !DILocation(line: 98, column: 7, scope: !154)
!160 = !DILocation(line: 98, column: 14, scope: !154)
!161 = !DILocation(line: 98, column: 2, scope: !154)
!162 = !DILocation(line: 99, column: 25, scope: !154)
!163 = !DILocation(line: 99, column: 32, scope: !154)
!164 = !DILocation(line: 99, column: 2, scope: !154)
!165 = !DILocation(line: 100, column: 24, scope: !154)
!166 = !DILocation(line: 100, column: 31, scope: !154)
!167 = !DILocation(line: 100, column: 2, scope: !154)
!168 = !DILocation(line: 101, column: 24, scope: !154)
!169 = !DILocation(line: 101, column: 31, scope: !154)
!170 = !DILocation(line: 101, column: 2, scope: !154)
!171 = !DILocation(line: 102, column: 7, scope: !154)
!172 = !DILocation(line: 102, column: 2, scope: !154)
!173 = !DILocation(line: 103, column: 1, scope: !154)
!174 = distinct !DISubprogram(name: "thrqueue_enqueue", scope: !9, file: !9, line: 112, type: !175, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!175 = !DISubroutineType(types: !176)
!176 = !{!4, !12, !4}
!177 = !DILocalVariable(name: "queue", arg: 1, scope: !174, file: !9, line: 112, type: !12)
!178 = !DILocation(line: 112, column: 30, scope: !174)
!179 = !DILocalVariable(name: "item", arg: 2, scope: !174, file: !9, line: 112, type: !4)
!180 = !DILocation(line: 112, column: 43, scope: !174)
!181 = !DILocation(line: 114, column: 22, scope: !174)
!182 = !DILocation(line: 114, column: 29, scope: !174)
!183 = !DILocation(line: 114, column: 2, scope: !174)
!184 = !DILocation(line: 115, column: 2, scope: !174)
!185 = !DILocation(line: 115, column: 9, scope: !186)
!186 = !DILexicalBlockFile(scope: !174, file: !9, discriminator: 1)
!187 = !DILocation(line: 115, column: 16, scope: !186)
!188 = !DILocation(line: 115, column: 21, scope: !186)
!189 = !DILocation(line: 115, column: 28, scope: !186)
!190 = !DILocation(line: 115, column: 18, scope: !186)
!191 = !DILocation(line: 115, column: 2, scope: !186)
!192 = !DILocation(line: 116, column: 8, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !9, line: 116, column: 7)
!194 = distinct !DILexicalBlock(scope: !174, file: !9, line: 115, column: 32)
!195 = !DILocation(line: 116, column: 15, scope: !193)
!196 = !DILocation(line: 116, column: 7, scope: !194)
!197 = !DILocation(line: 117, column: 26, scope: !198)
!198 = distinct !DILexicalBlock(scope: !193, file: !9, line: 116, column: 30)
!199 = !DILocation(line: 117, column: 33, scope: !198)
!200 = !DILocation(line: 117, column: 4, scope: !198)
!201 = !DILocation(line: 118, column: 4, scope: !198)
!202 = !DILocation(line: 120, column: 22, scope: !194)
!203 = !DILocation(line: 120, column: 29, scope: !194)
!204 = !DILocation(line: 120, column: 39, scope: !194)
!205 = !DILocation(line: 120, column: 46, scope: !194)
!206 = !DILocation(line: 120, column: 3, scope: !194)
!207 = !DILocation(line: 115, column: 2, scope: !208)
!208 = !DILexicalBlockFile(scope: !174, file: !9, discriminator: 2)
!209 = distinct !{!209, !184}
!210 = !DILocation(line: 122, column: 29, scope: !174)
!211 = !DILocation(line: 122, column: 14, scope: !174)
!212 = !DILocation(line: 122, column: 21, scope: !174)
!213 = !DILocation(line: 122, column: 23, scope: !174)
!214 = !DILocation(line: 122, column: 2, scope: !174)
!215 = !DILocation(line: 122, column: 9, scope: !174)
!216 = !DILocation(line: 122, column: 27, scope: !174)
!217 = !DILocation(line: 123, column: 15, scope: !174)
!218 = !DILocation(line: 123, column: 22, scope: !174)
!219 = !DILocation(line: 123, column: 2, scope: !174)
!220 = !DILocation(line: 123, column: 9, scope: !174)
!221 = !DILocation(line: 123, column: 12, scope: !174)
!222 = !DILocation(line: 124, column: 2, scope: !174)
!223 = !DILocation(line: 124, column: 9, scope: !174)
!224 = !DILocation(line: 124, column: 10, scope: !174)
!225 = !DILocation(line: 125, column: 24, scope: !174)
!226 = !DILocation(line: 125, column: 31, scope: !174)
!227 = !DILocation(line: 125, column: 2, scope: !174)
!228 = !DILocation(line: 126, column: 26, scope: !174)
!229 = !DILocation(line: 126, column: 33, scope: !174)
!230 = !DILocation(line: 126, column: 2, scope: !174)
!231 = !DILocation(line: 127, column: 9, scope: !174)
!232 = !DILocation(line: 127, column: 2, scope: !174)
!233 = !DILocation(line: 128, column: 1, scope: !174)
!234 = distinct !DISubprogram(name: "thrqueue_enqueue_nb", scope: !9, file: !9, line: 136, type: !175, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!235 = !DILocalVariable(name: "queue", arg: 1, scope: !234, file: !9, line: 136, type: !12)
!236 = !DILocation(line: 136, column: 33, scope: !234)
!237 = !DILocalVariable(name: "item", arg: 2, scope: !234, file: !9, line: 136, type: !4)
!238 = !DILocation(line: 136, column: 46, scope: !234)
!239 = !DILocation(line: 138, column: 22, scope: !234)
!240 = !DILocation(line: 138, column: 29, scope: !234)
!241 = !DILocation(line: 138, column: 2, scope: !234)
!242 = !DILocation(line: 139, column: 6, scope: !243)
!243 = distinct !DILexicalBlock(scope: !234, file: !9, line: 139, column: 6)
!244 = !DILocation(line: 139, column: 13, scope: !243)
!245 = !DILocation(line: 139, column: 18, scope: !243)
!246 = !DILocation(line: 139, column: 25, scope: !243)
!247 = !DILocation(line: 139, column: 15, scope: !243)
!248 = !DILocation(line: 139, column: 6, scope: !234)
!249 = !DILocation(line: 140, column: 25, scope: !250)
!250 = distinct !DILexicalBlock(scope: !243, file: !9, line: 139, column: 29)
!251 = !DILocation(line: 140, column: 32, scope: !250)
!252 = !DILocation(line: 140, column: 3, scope: !250)
!253 = !DILocation(line: 141, column: 3, scope: !250)
!254 = !DILocation(line: 143, column: 29, scope: !234)
!255 = !DILocation(line: 143, column: 14, scope: !234)
!256 = !DILocation(line: 143, column: 21, scope: !234)
!257 = !DILocation(line: 143, column: 23, scope: !234)
!258 = !DILocation(line: 143, column: 2, scope: !234)
!259 = !DILocation(line: 143, column: 9, scope: !234)
!260 = !DILocation(line: 143, column: 27, scope: !234)
!261 = !DILocation(line: 144, column: 15, scope: !234)
!262 = !DILocation(line: 144, column: 22, scope: !234)
!263 = !DILocation(line: 144, column: 2, scope: !234)
!264 = !DILocation(line: 144, column: 9, scope: !234)
!265 = !DILocation(line: 144, column: 12, scope: !234)
!266 = !DILocation(line: 145, column: 2, scope: !234)
!267 = !DILocation(line: 145, column: 9, scope: !234)
!268 = !DILocation(line: 145, column: 10, scope: !234)
!269 = !DILocation(line: 146, column: 24, scope: !234)
!270 = !DILocation(line: 146, column: 31, scope: !234)
!271 = !DILocation(line: 146, column: 2, scope: !234)
!272 = !DILocation(line: 147, column: 23, scope: !234)
!273 = !DILocation(line: 147, column: 30, scope: !234)
!274 = !DILocation(line: 147, column: 2, scope: !234)
!275 = !DILocation(line: 148, column: 9, scope: !234)
!276 = !DILocation(line: 148, column: 2, scope: !234)
!277 = !DILocation(line: 149, column: 1, scope: !234)
!278 = distinct !DISubprogram(name: "thrqueue_dequeue", scope: !9, file: !9, line: 158, type: !279, isLocal: false, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!279 = !DISubroutineType(types: !280)
!280 = !{!4, !12}
!281 = !DILocalVariable(name: "queue", arg: 1, scope: !278, file: !9, line: 158, type: !12)
!282 = !DILocation(line: 158, column: 30, scope: !278)
!283 = !DILocalVariable(name: "item", scope: !278, file: !9, line: 160, type: !4)
!284 = !DILocation(line: 160, column: 8, scope: !278)
!285 = !DILocation(line: 162, column: 22, scope: !278)
!286 = !DILocation(line: 162, column: 29, scope: !278)
!287 = !DILocation(line: 162, column: 2, scope: !278)
!288 = !DILocation(line: 163, column: 2, scope: !278)
!289 = !DILocation(line: 163, column: 9, scope: !290)
!290 = !DILexicalBlockFile(scope: !278, file: !9, discriminator: 1)
!291 = !DILocation(line: 163, column: 16, scope: !290)
!292 = !DILocation(line: 163, column: 18, scope: !290)
!293 = !DILocation(line: 163, column: 2, scope: !290)
!294 = !DILocation(line: 164, column: 8, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !9, line: 164, column: 7)
!296 = distinct !DILexicalBlock(scope: !278, file: !9, line: 163, column: 24)
!297 = !DILocation(line: 164, column: 15, scope: !295)
!298 = !DILocation(line: 164, column: 7, scope: !296)
!299 = !DILocation(line: 165, column: 26, scope: !300)
!300 = distinct !DILexicalBlock(scope: !295, file: !9, line: 164, column: 30)
!301 = !DILocation(line: 165, column: 33, scope: !300)
!302 = !DILocation(line: 165, column: 4, scope: !300)
!303 = !DILocation(line: 166, column: 4, scope: !300)
!304 = !DILocation(line: 168, column: 22, scope: !296)
!305 = !DILocation(line: 168, column: 29, scope: !296)
!306 = !DILocation(line: 168, column: 40, scope: !296)
!307 = !DILocation(line: 168, column: 47, scope: !296)
!308 = !DILocation(line: 168, column: 3, scope: !296)
!309 = !DILocation(line: 163, column: 2, scope: !310)
!310 = !DILexicalBlockFile(scope: !278, file: !9, discriminator: 2)
!311 = distinct !{!311, !288}
!312 = !DILocation(line: 170, column: 21, scope: !278)
!313 = !DILocation(line: 170, column: 28, scope: !278)
!314 = !DILocation(line: 170, column: 31, scope: !278)
!315 = !DILocation(line: 170, column: 9, scope: !278)
!316 = !DILocation(line: 170, column: 16, scope: !278)
!317 = !DILocation(line: 170, column: 7, scope: !278)
!318 = !DILocation(line: 171, column: 16, scope: !278)
!319 = !DILocation(line: 171, column: 23, scope: !278)
!320 = !DILocation(line: 171, column: 2, scope: !278)
!321 = !DILocation(line: 171, column: 9, scope: !278)
!322 = !DILocation(line: 171, column: 13, scope: !278)
!323 = !DILocation(line: 172, column: 2, scope: !278)
!324 = !DILocation(line: 172, column: 9, scope: !278)
!325 = !DILocation(line: 172, column: 10, scope: !278)
!326 = !DILocation(line: 173, column: 24, scope: !278)
!327 = !DILocation(line: 173, column: 31, scope: !278)
!328 = !DILocation(line: 173, column: 2, scope: !278)
!329 = !DILocation(line: 174, column: 23, scope: !278)
!330 = !DILocation(line: 174, column: 30, scope: !278)
!331 = !DILocation(line: 174, column: 2, scope: !278)
!332 = !DILocation(line: 175, column: 9, scope: !278)
!333 = !DILocation(line: 175, column: 2, scope: !278)
!334 = !DILocation(line: 176, column: 1, scope: !278)
!335 = distinct !DISubprogram(name: "thrqueue_dequeue_nb", scope: !9, file: !9, line: 184, type: !279, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!336 = !DILocalVariable(name: "queue", arg: 1, scope: !335, file: !9, line: 184, type: !12)
!337 = !DILocation(line: 184, column: 33, scope: !335)
!338 = !DILocalVariable(name: "item", scope: !335, file: !9, line: 186, type: !4)
!339 = !DILocation(line: 186, column: 8, scope: !335)
!340 = !DILocation(line: 188, column: 22, scope: !335)
!341 = !DILocation(line: 188, column: 29, scope: !335)
!342 = !DILocation(line: 188, column: 2, scope: !335)
!343 = !DILocation(line: 189, column: 6, scope: !344)
!344 = distinct !DILexicalBlock(scope: !335, file: !9, line: 189, column: 6)
!345 = !DILocation(line: 189, column: 13, scope: !344)
!346 = !DILocation(line: 189, column: 15, scope: !344)
!347 = !DILocation(line: 189, column: 6, scope: !335)
!348 = !DILocation(line: 190, column: 25, scope: !349)
!349 = distinct !DILexicalBlock(scope: !344, file: !9, line: 189, column: 21)
!350 = !DILocation(line: 190, column: 32, scope: !349)
!351 = !DILocation(line: 190, column: 3, scope: !349)
!352 = !DILocation(line: 191, column: 3, scope: !349)
!353 = !DILocation(line: 193, column: 21, scope: !335)
!354 = !DILocation(line: 193, column: 28, scope: !335)
!355 = !DILocation(line: 193, column: 31, scope: !335)
!356 = !DILocation(line: 193, column: 9, scope: !335)
!357 = !DILocation(line: 193, column: 16, scope: !335)
!358 = !DILocation(line: 193, column: 7, scope: !335)
!359 = !DILocation(line: 194, column: 16, scope: !335)
!360 = !DILocation(line: 194, column: 23, scope: !335)
!361 = !DILocation(line: 194, column: 2, scope: !335)
!362 = !DILocation(line: 194, column: 9, scope: !335)
!363 = !DILocation(line: 194, column: 13, scope: !335)
!364 = !DILocation(line: 195, column: 2, scope: !335)
!365 = !DILocation(line: 195, column: 9, scope: !335)
!366 = !DILocation(line: 195, column: 10, scope: !335)
!367 = !DILocation(line: 196, column: 24, scope: !335)
!368 = !DILocation(line: 196, column: 31, scope: !335)
!369 = !DILocation(line: 196, column: 2, scope: !335)
!370 = !DILocation(line: 197, column: 23, scope: !335)
!371 = !DILocation(line: 197, column: 30, scope: !335)
!372 = !DILocation(line: 197, column: 2, scope: !335)
!373 = !DILocation(line: 198, column: 9, scope: !335)
!374 = !DILocation(line: 198, column: 2, scope: !335)
!375 = !DILocation(line: 199, column: 1, scope: !335)
!376 = distinct !DISubprogram(name: "thrqueue_unblock_enqueue", scope: !9, file: !9, line: 208, type: !155, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!377 = !DILocalVariable(name: "queue", arg: 1, scope: !376, file: !9, line: 208, type: !12)
!378 = !DILocation(line: 208, column: 38, scope: !376)
!379 = !DILocation(line: 210, column: 2, scope: !376)
!380 = !DILocation(line: 210, column: 9, scope: !376)
!381 = !DILocation(line: 210, column: 23, scope: !376)
!382 = !DILocation(line: 211, column: 26, scope: !376)
!383 = !DILocation(line: 211, column: 33, scope: !376)
!384 = !DILocation(line: 211, column: 2, scope: !376)
!385 = !DILocation(line: 212, column: 2, scope: !376)
!386 = !DILocation(line: 213, column: 1, scope: !376)
!387 = distinct !DISubprogram(name: "thrqueue_unblock_dequeue", scope: !9, file: !9, line: 222, type: !155, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!388 = !DILocalVariable(name: "queue", arg: 1, scope: !387, file: !9, line: 222, type: !12)
!389 = !DILocation(line: 222, column: 38, scope: !387)
!390 = !DILocation(line: 224, column: 2, scope: !387)
!391 = !DILocation(line: 224, column: 9, scope: !387)
!392 = !DILocation(line: 224, column: 23, scope: !387)
!393 = !DILocation(line: 225, column: 26, scope: !387)
!394 = !DILocation(line: 225, column: 33, scope: !387)
!395 = !DILocation(line: 225, column: 2, scope: !387)
!396 = !DILocation(line: 226, column: 2, scope: !387)
!397 = !DILocation(line: 227, column: 1, scope: !387)
