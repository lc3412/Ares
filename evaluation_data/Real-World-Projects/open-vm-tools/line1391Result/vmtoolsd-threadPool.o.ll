; ModuleID = './vmtoolsd-threadPool.o.i'
source_filename = "./vmtoolsd-threadPool.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ToolsServiceProperty = type { i8* }
%struct.ThreadPoolState = type { %struct.ToolsCorePool, i32, %struct.ToolsAppCtx*, %struct._GThreadPool*, %struct._GQueue*, %struct._GPtrArray*, %union._GMutex*, i32 }
%struct.ToolsCorePool = type { i32 (%struct.ToolsAppCtx*, void (%struct.ToolsAppCtx*, i8*)*, i8*, void (i8*)*)*, void (i32)*, i32 (%struct.ToolsAppCtx*, void (%struct.ToolsAppCtx*, i8*)*, void (%struct.ToolsAppCtx*, i8*)*, i8*, void (i8*)*)* }
%struct.ToolsAppCtx = type { i32, i8*, i32, i32, %struct._GMainLoop*, %struct._RpcChannel*, %struct._GKeyFile*, i32, i32, i8**, i8* }
%struct._GMainLoop = type opaque
%struct._RpcChannel = type opaque
%struct._GKeyFile = type opaque
%struct._GThreadPool = type { void (i8*, i8*)*, i8*, i32 }
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GPtrArray = type { i8**, i32 }
%union._GMutex = type { i8* }
%struct._GError = type { i32, i32, i8* }
%struct.ToolsCoreService = type { %struct._GObject, %union._GMutex*, %struct._GArray* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GArray = type { i8*, i32 }
%struct.WorkerTask = type { i32, i32, void (%struct.ToolsAppCtx*, i8*)*, i8*, void (i8*)* }
%struct.StandaloneTask = type { i32, void (%struct.ToolsAppCtx*, i8*)*, void (%struct.ToolsAppCtx*, i8*)*, i8*, %struct._GThread*, void (i8*)* }
%struct._GThread = type { i8* (i8*)*, i8*, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"tcs_prop_thread_pool\00", align 1
@ToolsCorePool_Init.prop = private unnamed_addr constant %struct.ToolsServiceProperty { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0) }, align 8
@gState = internal global %struct.ThreadPoolState zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"pool.maxThreads\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"pool.maxIdleTime\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"pool.maxUnusedThreads\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"vmtoolsd\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"error initializing thread pool, running single threaded: %s\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"error sending work request, executing in service thread: %s\00", align 1
@__func__.ToolsCorePoolCancel = private unnamed_addr constant [20 x i8] c"ToolsCorePoolCancel\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"id != 0\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"failed to start thread: %s.\00", align 1

; Function Attrs: nounwind uwtable
define void @ToolsCorePool_Init(%struct.ToolsAppCtx*) #0 !dbg !157 {
  %2 = alloca %struct.ToolsAppCtx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._GError*, align 8
  %5 = alloca %struct.ToolsServiceProperty, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %2, metadata !161, metadata !162), !dbg !163
  call void @llvm.dbg.declare(metadata i32* %3, metadata !164, metadata !162), !dbg !165
  call void @llvm.dbg.declare(metadata %struct._GError** %4, metadata !166, metadata !162), !dbg !180
  store %struct._GError* null, %struct._GError** %4, align 8, !dbg !180
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceProperty* %5, metadata !181, metadata !162), !dbg !186
  %8 = bitcast %struct.ToolsServiceProperty* %5 to i8*, !dbg !186
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast (%struct.ToolsServiceProperty* @ToolsCorePool_Init.prop to i8*), i64 8, i32 8, i1 false), !dbg !186
  store i32 (%struct.ToolsAppCtx*, void (%struct.ToolsAppCtx*, i8*)*, i8*, void (i8*)*)* @ToolsCorePoolSubmit, i32 (%struct.ToolsAppCtx*, void (%struct.ToolsAppCtx*, i8*)*, i8*, void (i8*)*)** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 0, i32 0), align 8, !dbg !187
  store void (i32)* @ToolsCorePoolCancel, void (i32)** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 0, i32 1), align 8, !dbg !188
  store i32 (%struct.ToolsAppCtx*, void (%struct.ToolsAppCtx*, i8*)*, void (%struct.ToolsAppCtx*, i8*)*, i8*, void (i8*)*)* @ToolsCorePoolStart, i32 (%struct.ToolsAppCtx*, void (%struct.ToolsAppCtx*, i8*)*, void (%struct.ToolsAppCtx*, i8*)*, i8*, void (i8*)*)** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 0, i32 2), align 8, !dbg !189
  %9 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %2, align 8, !dbg !190
  store %struct.ToolsAppCtx* %9, %struct.ToolsAppCtx** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 2), align 8, !dbg !191
  %10 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %2, align 8, !dbg !192
  %11 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %10, i32 0, i32 6, !dbg !193
  %12 = load %struct._GKeyFile*, %struct._GKeyFile** %11, align 8, !dbg !193
  %13 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %2, align 8, !dbg !194
  %14 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %13, i32 0, i32 1, !dbg !195
  %15 = load i8*, i8** %14, align 8, !dbg !195
  %16 = call i32 @g_key_file_get_integer(%struct._GKeyFile* %12, i8* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), %struct._GError** %4), !dbg !196
  store i32 %16, i32* %3, align 4, !dbg !197
  %17 = load %struct._GError*, %struct._GError** %4, align 8, !dbg !198
  %18 = icmp ne %struct._GError* %17, null, !dbg !200
  br i1 %18, label %19, label %20, !dbg !201

; <label>:19:                                     ; preds = %1
  store i32 5, i32* %3, align 4, !dbg !202
  call void @g_clear_error(%struct._GError** %4), !dbg !204
  br label %20, !dbg !205

; <label>:20:                                     ; preds = %19, %1
  %21 = load i32, i32* %3, align 4, !dbg !206
  %22 = icmp sgt i32 %21, 0, !dbg !208
  br i1 %22, label %23, label %64, !dbg !209

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %3, align 4, !dbg !210
  %25 = call %struct._GThreadPool* @g_thread_pool_new(void (i8*, i8*)* @ToolsCorePoolRunWorker, i8* null, i32 %24, i32 0, %struct._GError** %4), !dbg !212
  store %struct._GThreadPool* %25, %struct._GThreadPool** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 3), align 8, !dbg !213
  %26 = load %struct._GError*, %struct._GError** %4, align 8, !dbg !214
  %27 = icmp eq %struct._GError* %26, null, !dbg !216
  br i1 %27, label %28, label %59, !dbg !217

; <label>:28:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata i32* %6, metadata !218, metadata !162), !dbg !220
  call void @llvm.dbg.declare(metadata i32* %7, metadata !221, metadata !162), !dbg !222
  %29 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %2, align 8, !dbg !223
  %30 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %29, i32 0, i32 6, !dbg !224
  %31 = load %struct._GKeyFile*, %struct._GKeyFile** %30, align 8, !dbg !224
  %32 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %2, align 8, !dbg !225
  %33 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %32, i32 0, i32 1, !dbg !226
  %34 = load i8*, i8** %33, align 8, !dbg !226
  %35 = call i32 @g_key_file_get_integer(%struct._GKeyFile* %31, i8* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), %struct._GError** %4), !dbg !227
  store i32 %35, i32* %6, align 4, !dbg !228
  %36 = load %struct._GError*, %struct._GError** %4, align 8, !dbg !229
  %37 = icmp ne %struct._GError* %36, null, !dbg !231
  br i1 %37, label %41, label %38, !dbg !232

; <label>:38:                                     ; preds = %28
  %39 = load i32, i32* %6, align 4, !dbg !233
  %40 = icmp sle i32 %39, 0, !dbg !235
  br i1 %40, label %41, label %42, !dbg !236

; <label>:41:                                     ; preds = %38, %28
  store i32 5000, i32* %6, align 4, !dbg !237
  call void @g_clear_error(%struct._GError** %4), !dbg !239
  br label %42, !dbg !240

; <label>:42:                                     ; preds = %41, %38
  %43 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %2, align 8, !dbg !241
  %44 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %43, i32 0, i32 6, !dbg !242
  %45 = load %struct._GKeyFile*, %struct._GKeyFile** %44, align 8, !dbg !242
  %46 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %2, align 8, !dbg !243
  %47 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %46, i32 0, i32 1, !dbg !244
  %48 = load i8*, i8** %47, align 8, !dbg !244
  %49 = call i32 @g_key_file_get_integer(%struct._GKeyFile* %45, i8* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), %struct._GError** %4), !dbg !245
  store i32 %49, i32* %7, align 4, !dbg !246
  %50 = load %struct._GError*, %struct._GError** %4, align 8, !dbg !247
  %51 = icmp ne %struct._GError* %50, null, !dbg !249
  br i1 %51, label %55, label %52, !dbg !250

; <label>:52:                                     ; preds = %42
  %53 = load i32, i32* %7, align 4, !dbg !251
  %54 = icmp slt i32 %53, 0, !dbg !253
  br i1 %54, label %55, label %56, !dbg !254

; <label>:55:                                     ; preds = %52, %42
  store i32 0, i32* %7, align 4, !dbg !255
  call void @g_clear_error(%struct._GError** %4), !dbg !257
  br label %56, !dbg !258

; <label>:56:                                     ; preds = %55, %52
  %57 = load i32, i32* %6, align 4, !dbg !259
  call void @g_thread_pool_set_max_idle_time(i32 %57), !dbg !260
  %58 = load i32, i32* %7, align 4, !dbg !261
  call void @g_thread_pool_set_max_unused_threads(i32 %58), !dbg !262
  br label %63, !dbg !263

; <label>:59:                                     ; preds = %23
  %60 = load %struct._GError*, %struct._GError** %4, align 8, !dbg !264
  %61 = getelementptr inbounds %struct._GError, %struct._GError* %60, i32 0, i32 2, !dbg !266
  %62 = load i8*, i8** %61, align 8, !dbg !266
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i32 0, i32 0), i8* %62), !dbg !267
  call void @g_clear_error(%struct._GError** %4), !dbg !268
  br label %63

; <label>:63:                                     ; preds = %59, %56
  br label %64, !dbg !269

; <label>:64:                                     ; preds = %63, %20
  store i32 1, i32* getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 1), align 8, !dbg !270
  %65 = call %union._GMutex* @g_mutex_new(), !dbg !271
  store %union._GMutex* %65, %union._GMutex** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 6), align 8, !dbg !272
  %66 = call %struct._GPtrArray* @g_ptr_array_new(), !dbg !273
  store %struct._GPtrArray* %66, %struct._GPtrArray** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 5), align 8, !dbg !274
  %67 = call %struct._GQueue* @g_queue_new(), !dbg !275
  store %struct._GQueue* %67, %struct._GQueue** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 4), align 8, !dbg !276
  %68 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %2, align 8, !dbg !277
  %69 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %68, i32 0, i32 10, !dbg !278
  %70 = load i8*, i8** %69, align 8, !dbg !278
  %71 = bitcast i8* %70 to %struct.ToolsCoreService*, !dbg !277
  call void @ToolsCoreService_RegisterProperty(%struct.ToolsCoreService* %71, %struct.ToolsServiceProperty* %5), !dbg !279
  %72 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %2, align 8, !dbg !280
  %73 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %72, i32 0, i32 10, !dbg !281
  %74 = load i8*, i8** %73, align 8, !dbg !281
  call void (i8*, i8*, ...) @g_object_set(i8* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), %struct.ToolsCorePool* getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 0), i8* null), !dbg !282
  ret void, !dbg !283
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @ToolsCorePoolSubmit(%struct.ToolsAppCtx*, void (%struct.ToolsAppCtx*, i8*)*, i8*, void (i8*)*) #0 !dbg !284 {
  %5 = alloca %struct.ToolsAppCtx*, align 8
  %6 = alloca void (%struct.ToolsAppCtx*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca void (i8*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.WorkerTask*, align 8
  %11 = alloca %struct._GError*, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %5, metadata !285, metadata !162), !dbg !286
  store void (%struct.ToolsAppCtx*, i8*)* %1, void (%struct.ToolsAppCtx*, i8*)** %6, align 8
  call void @llvm.dbg.declare(metadata void (%struct.ToolsAppCtx*, i8*)** %6, metadata !287, metadata !162), !dbg !288
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !289, metadata !162), !dbg !290
  store void (i8*)* %3, void (i8*)** %8, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %8, metadata !291, metadata !162), !dbg !292
  call void @llvm.dbg.declare(metadata i32* %9, metadata !293, metadata !162), !dbg !294
  store i32 0, i32* %9, align 4, !dbg !294
  call void @llvm.dbg.declare(metadata %struct.WorkerTask** %10, metadata !295, metadata !162), !dbg !305
  %12 = call noalias i8* @g_malloc0(i64 32), !dbg !306
  %13 = bitcast i8* %12 to %struct.WorkerTask*, !dbg !306
  store %struct.WorkerTask* %13, %struct.WorkerTask** %10, align 8, !dbg !305
  %14 = load %struct.WorkerTask*, %struct.WorkerTask** %10, align 8, !dbg !307
  %15 = getelementptr inbounds %struct.WorkerTask, %struct.WorkerTask* %14, i32 0, i32 1, !dbg !308
  store i32 0, i32* %15, align 4, !dbg !309
  %16 = load void (%struct.ToolsAppCtx*, i8*)*, void (%struct.ToolsAppCtx*, i8*)** %6, align 8, !dbg !310
  %17 = load %struct.WorkerTask*, %struct.WorkerTask** %10, align 8, !dbg !311
  %18 = getelementptr inbounds %struct.WorkerTask, %struct.WorkerTask* %17, i32 0, i32 2, !dbg !312
  store void (%struct.ToolsAppCtx*, i8*)* %16, void (%struct.ToolsAppCtx*, i8*)** %18, align 8, !dbg !313
  %19 = load i8*, i8** %7, align 8, !dbg !314
  %20 = load %struct.WorkerTask*, %struct.WorkerTask** %10, align 8, !dbg !315
  %21 = getelementptr inbounds %struct.WorkerTask, %struct.WorkerTask* %20, i32 0, i32 3, !dbg !316
  store i8* %19, i8** %21, align 8, !dbg !317
  %22 = load void (i8*)*, void (i8*)** %8, align 8, !dbg !318
  %23 = load %struct.WorkerTask*, %struct.WorkerTask** %10, align 8, !dbg !319
  %24 = getelementptr inbounds %struct.WorkerTask, %struct.WorkerTask* %23, i32 0, i32 4, !dbg !320
  store void (i8*)* %22, void (i8*)** %24, align 8, !dbg !321
  %25 = load %union._GMutex*, %union._GMutex** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 6), align 8, !dbg !322
  call void @g_mutex_lock(%union._GMutex* %25), !dbg !323
  %26 = load i32, i32* getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 1), align 8, !dbg !324
  %27 = icmp ne i32 %26, 0, !dbg !326
  br i1 %27, label %31, label %28, !dbg !327

; <label>:28:                                     ; preds = %4
  %29 = load %struct.WorkerTask*, %struct.WorkerTask** %10, align 8, !dbg !328
  %30 = bitcast %struct.WorkerTask* %29 to i8*, !dbg !328
  call void @g_free(i8* %30), !dbg !330
  br label %69, !dbg !331

; <label>:31:                                     ; preds = %4
  %32 = load i32, i32* getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 7), align 8, !dbg !332
  %33 = add i32 %32, 1, !dbg !334
  %34 = icmp eq i32 %33, -1, !dbg !335
  br i1 %34, label %35, label %38, !dbg !336

; <label>:35:                                     ; preds = %31
  %36 = load %struct.WorkerTask*, %struct.WorkerTask** %10, align 8, !dbg !337
  %37 = getelementptr inbounds %struct.WorkerTask, %struct.WorkerTask* %36, i32 0, i32 0, !dbg !339
  store i32 -1, i32* %37, align 8, !dbg !340
  store i32 0, i32* getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 7), align 8, !dbg !341
  br label %43, !dbg !342

; <label>:38:                                     ; preds = %31
  %39 = load i32, i32* getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 7), align 8, !dbg !343
  %40 = add i32 %39, 1, !dbg !343
  store i32 %40, i32* getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 7), align 8, !dbg !343
  %41 = load %struct.WorkerTask*, %struct.WorkerTask** %10, align 8, !dbg !345
  %42 = getelementptr inbounds %struct.WorkerTask, %struct.WorkerTask* %41, i32 0, i32 0, !dbg !346
  store i32 %40, i32* %42, align 8, !dbg !347
  br label %43

; <label>:43:                                     ; preds = %38, %35
  %44 = load %struct.WorkerTask*, %struct.WorkerTask** %10, align 8, !dbg !348
  %45 = getelementptr inbounds %struct.WorkerTask, %struct.WorkerTask* %44, i32 0, i32 0, !dbg !349
  %46 = load i32, i32* %45, align 8, !dbg !349
  store i32 %46, i32* %9, align 4, !dbg !350
  %47 = load %struct._GQueue*, %struct._GQueue** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 4), align 8, !dbg !351
  %48 = load %struct.WorkerTask*, %struct.WorkerTask** %10, align 8, !dbg !352
  %49 = bitcast %struct.WorkerTask* %48 to i8*, !dbg !352
  call void @g_queue_push_head(%struct._GQueue* %47, i8* %49), !dbg !353
  %50 = load %struct._GThreadPool*, %struct._GThreadPool** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 3), align 8, !dbg !354
  %51 = icmp ne %struct._GThreadPool* %50, null, !dbg !356
  br i1 %51, label %52, label %63, !dbg !357

; <label>:52:                                     ; preds = %43
  call void @llvm.dbg.declare(metadata %struct._GError** %11, metadata !358, metadata !162), !dbg !360
  store %struct._GError* null, %struct._GError** %11, align 8, !dbg !360
  %53 = load %struct._GThreadPool*, %struct._GThreadPool** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 3), align 8, !dbg !361
  %54 = call i32 @g_thread_pool_push(%struct._GThreadPool* %53, i8* bitcast (%struct.ThreadPoolState* @gState to i8*), %struct._GError** %11), !dbg !362
  %55 = load %struct._GError*, %struct._GError** %11, align 8, !dbg !363
  %56 = icmp eq %struct._GError* %55, null, !dbg !365
  br i1 %56, label %57, label %58, !dbg !366

; <label>:57:                                     ; preds = %52
  br label %69, !dbg !367

; <label>:58:                                     ; preds = %52
  %59 = load %struct._GError*, %struct._GError** %11, align 8, !dbg !369
  %60 = getelementptr inbounds %struct._GError, %struct._GError* %59, i32 0, i32 2, !dbg !371
  %61 = load i8*, i8** %60, align 8, !dbg !371
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i32 0, i32 0), i8* %61), !dbg !372
  call void @g_clear_error(%struct._GError** %11), !dbg !373
  br label %62

; <label>:62:                                     ; preds = %58
  br label %63, !dbg !374

; <label>:63:                                     ; preds = %62, %43
  %64 = load %struct.WorkerTask*, %struct.WorkerTask** %10, align 8, !dbg !375
  %65 = bitcast %struct.WorkerTask* %64 to i8*, !dbg !375
  %66 = call i32 @g_idle_add_full(i32 200, i32 (i8*)* @ToolsCorePoolDoWork, i8* %65, void (i8*)* @ToolsCorePoolDestroyTask), !dbg !376
  %67 = load %struct.WorkerTask*, %struct.WorkerTask** %10, align 8, !dbg !377
  %68 = getelementptr inbounds %struct.WorkerTask, %struct.WorkerTask* %67, i32 0, i32 1, !dbg !378
  store i32 %66, i32* %68, align 4, !dbg !379
  br label %69, !dbg !377

; <label>:69:                                     ; preds = %63, %57, %28
  %70 = load %union._GMutex*, %union._GMutex** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 6), align 8, !dbg !380
  call void @g_mutex_unlock(%union._GMutex* %70), !dbg !381
  %71 = load i32, i32* %9, align 4, !dbg !382
  ret i32 %71, !dbg !383
}

; Function Attrs: nounwind uwtable
define internal void @ToolsCorePoolCancel(i32) #0 !dbg !384 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._GList*, align 8
  %4 = alloca %struct.WorkerTask*, align 8
  %5 = alloca %struct.WorkerTask, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !385, metadata !162), !dbg !386
  call void @llvm.dbg.declare(metadata %struct._GList** %3, metadata !387, metadata !162), !dbg !388
  call void @llvm.dbg.declare(metadata %struct.WorkerTask** %4, metadata !389, metadata !162), !dbg !390
  store %struct.WorkerTask* null, %struct.WorkerTask** %4, align 8, !dbg !390
  call void @llvm.dbg.declare(metadata %struct.WorkerTask* %5, metadata !391, metadata !162), !dbg !392
  %6 = bitcast %struct.WorkerTask* %5 to i8*, !dbg !392
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 32, i32 8, i1 false), !dbg !392
  %7 = getelementptr inbounds %struct.WorkerTask, %struct.WorkerTask* %5, i32 0, i32 0, !dbg !393
  %8 = load i32, i32* %2, align 4, !dbg !394
  store i32 %8, i32* %7, align 8, !dbg !393
  br label %9, !dbg !395, !llvm.loop !396

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %2, align 4, !dbg !397
  %11 = icmp ne i32 %10, 0, !dbg !401
  br i1 %11, label %12, label %13, !dbg !397

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !402

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ToolsCorePoolCancel, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)), !dbg !405
  br label %52, !dbg !408

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !409

; <label>:15:                                     ; preds = %14
  %16 = load %union._GMutex*, %union._GMutex** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 6), align 8, !dbg !411
  call void @g_mutex_lock(%union._GMutex* %16), !dbg !412
  %17 = load i32, i32* getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 1), align 8, !dbg !413
  %18 = icmp ne i32 %17, 0, !dbg !415
  br i1 %18, label %20, label %19, !dbg !416

; <label>:19:                                     ; preds = %15
  br label %34, !dbg !417

; <label>:20:                                     ; preds = %15
  %21 = load %struct._GQueue*, %struct._GQueue** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 4), align 8, !dbg !419
  %22 = bitcast %struct.WorkerTask* %5 to i8*, !dbg !420
  %23 = call %struct._GList* @g_queue_find_custom(%struct._GQueue* %21, i8* %22, i32 (i8*, i8*)* @ToolsCorePoolCompareTask), !dbg !421
  store %struct._GList* %23, %struct._GList** %3, align 8, !dbg !422
  %24 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !423
  %25 = icmp ne %struct._GList* %24, null, !dbg !425
  br i1 %25, label %26, label %33, !dbg !426

; <label>:26:                                     ; preds = %20
  %27 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !427
  %28 = getelementptr inbounds %struct._GList, %struct._GList* %27, i32 0, i32 0, !dbg !429
  %29 = load i8*, i8** %28, align 8, !dbg !429
  %30 = bitcast i8* %29 to %struct.WorkerTask*, !dbg !427
  store %struct.WorkerTask* %30, %struct.WorkerTask** %4, align 8, !dbg !430
  %31 = load %struct._GQueue*, %struct._GQueue** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 4), align 8, !dbg !431
  %32 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !432
  call void @g_queue_delete_link(%struct._GQueue* %31, %struct._GList* %32), !dbg !433
  br label %33, !dbg !434

; <label>:33:                                     ; preds = %26, %20
  br label %34, !dbg !435

; <label>:34:                                     ; preds = %33, %19
  %35 = load %union._GMutex*, %union._GMutex** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 6), align 8, !dbg !437
  call void @g_mutex_unlock(%union._GMutex* %35), !dbg !438
  %36 = load %struct.WorkerTask*, %struct.WorkerTask** %4, align 8, !dbg !439
  %37 = icmp ne %struct.WorkerTask* %36, null, !dbg !441
  br i1 %37, label %38, label %52, !dbg !442

; <label>:38:                                     ; preds = %34
  %39 = load %struct.WorkerTask*, %struct.WorkerTask** %4, align 8, !dbg !443
  %40 = getelementptr inbounds %struct.WorkerTask, %struct.WorkerTask* %39, i32 0, i32 1, !dbg !446
  %41 = load i32, i32* %40, align 4, !dbg !446
  %42 = icmp ugt i32 %41, 0, !dbg !447
  br i1 %42, label %43, label %48, !dbg !448

; <label>:43:                                     ; preds = %38
  %44 = load %struct.WorkerTask*, %struct.WorkerTask** %4, align 8, !dbg !449
  %45 = getelementptr inbounds %struct.WorkerTask, %struct.WorkerTask* %44, i32 0, i32 1, !dbg !451
  %46 = load i32, i32* %45, align 4, !dbg !451
  %47 = call i32 @g_source_remove(i32 %46), !dbg !452
  br label %51, !dbg !453

; <label>:48:                                     ; preds = %38
  %49 = load %struct.WorkerTask*, %struct.WorkerTask** %4, align 8, !dbg !454
  %50 = bitcast %struct.WorkerTask* %49 to i8*, !dbg !454
  call void @ToolsCorePoolDestroyTask(i8* %50), !dbg !456
  br label %51

; <label>:51:                                     ; preds = %48, %43
  br label %52, !dbg !457

; <label>:52:                                     ; preds = %13, %51, %34
  ret void, !dbg !458
}

; Function Attrs: nounwind uwtable
define internal i32 @ToolsCorePoolStart(%struct.ToolsAppCtx*, void (%struct.ToolsAppCtx*, i8*)*, void (%struct.ToolsAppCtx*, i8*)*, i8*, void (i8*)*) #0 !dbg !459 {
  %6 = alloca %struct.ToolsAppCtx*, align 8
  %7 = alloca void (%struct.ToolsAppCtx*, i8*)*, align 8
  %8 = alloca void (%struct.ToolsAppCtx*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca void (i8*)*, align 8
  %11 = alloca %struct._GError*, align 8
  %12 = alloca %struct.StandaloneTask*, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %6, metadata !460, metadata !162), !dbg !461
  store void (%struct.ToolsAppCtx*, i8*)* %1, void (%struct.ToolsAppCtx*, i8*)** %7, align 8
  call void @llvm.dbg.declare(metadata void (%struct.ToolsAppCtx*, i8*)** %7, metadata !462, metadata !162), !dbg !463
  store void (%struct.ToolsAppCtx*, i8*)* %2, void (%struct.ToolsAppCtx*, i8*)** %8, align 8
  call void @llvm.dbg.declare(metadata void (%struct.ToolsAppCtx*, i8*)** %8, metadata !464, metadata !162), !dbg !465
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !466, metadata !162), !dbg !467
  store void (i8*)* %4, void (i8*)** %10, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %10, metadata !468, metadata !162), !dbg !469
  call void @llvm.dbg.declare(metadata %struct._GError** %11, metadata !470, metadata !162), !dbg !471
  store %struct._GError* null, %struct._GError** %11, align 8, !dbg !471
  call void @llvm.dbg.declare(metadata %struct.StandaloneTask** %12, metadata !472, metadata !162), !dbg !496
  store %struct.StandaloneTask* null, %struct.StandaloneTask** %12, align 8, !dbg !496
  %13 = load %union._GMutex*, %union._GMutex** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 6), align 8, !dbg !497
  call void @g_mutex_lock(%union._GMutex* %13), !dbg !498
  %14 = load i32, i32* getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 1), align 8, !dbg !499
  %15 = icmp ne i32 %14, 0, !dbg !501
  br i1 %15, label %17, label %16, !dbg !502

; <label>:16:                                     ; preds = %5
  br label %52, !dbg !503

; <label>:17:                                     ; preds = %5
  %18 = call noalias i8* @g_malloc0(i64 48), !dbg !505
  %19 = bitcast i8* %18 to %struct.StandaloneTask*, !dbg !505
  store %struct.StandaloneTask* %19, %struct.StandaloneTask** %12, align 8, !dbg !506
  %20 = load %struct.StandaloneTask*, %struct.StandaloneTask** %12, align 8, !dbg !507
  %21 = getelementptr inbounds %struct.StandaloneTask, %struct.StandaloneTask* %20, i32 0, i32 0, !dbg !508
  store i32 1, i32* %21, align 8, !dbg !509
  %22 = load void (%struct.ToolsAppCtx*, i8*)*, void (%struct.ToolsAppCtx*, i8*)** %7, align 8, !dbg !510
  %23 = load %struct.StandaloneTask*, %struct.StandaloneTask** %12, align 8, !dbg !511
  %24 = getelementptr inbounds %struct.StandaloneTask, %struct.StandaloneTask* %23, i32 0, i32 1, !dbg !512
  store void (%struct.ToolsAppCtx*, i8*)* %22, void (%struct.ToolsAppCtx*, i8*)** %24, align 8, !dbg !513
  %25 = load void (%struct.ToolsAppCtx*, i8*)*, void (%struct.ToolsAppCtx*, i8*)** %8, align 8, !dbg !514
  %26 = load %struct.StandaloneTask*, %struct.StandaloneTask** %12, align 8, !dbg !515
  %27 = getelementptr inbounds %struct.StandaloneTask, %struct.StandaloneTask* %26, i32 0, i32 2, !dbg !516
  store void (%struct.ToolsAppCtx*, i8*)* %25, void (%struct.ToolsAppCtx*, i8*)** %27, align 8, !dbg !517
  %28 = load i8*, i8** %9, align 8, !dbg !518
  %29 = load %struct.StandaloneTask*, %struct.StandaloneTask** %12, align 8, !dbg !519
  %30 = getelementptr inbounds %struct.StandaloneTask, %struct.StandaloneTask* %29, i32 0, i32 3, !dbg !520
  store i8* %28, i8** %30, align 8, !dbg !521
  %31 = load void (i8*)*, void (i8*)** %10, align 8, !dbg !522
  %32 = load %struct.StandaloneTask*, %struct.StandaloneTask** %12, align 8, !dbg !523
  %33 = getelementptr inbounds %struct.StandaloneTask, %struct.StandaloneTask* %32, i32 0, i32 5, !dbg !524
  store void (i8*)* %31, void (i8*)** %33, align 8, !dbg !525
  %34 = load %struct.StandaloneTask*, %struct.StandaloneTask** %12, align 8, !dbg !526
  %35 = bitcast %struct.StandaloneTask* %34 to i8*, !dbg !526
  %36 = call %struct._GThread* @g_thread_create(i8* (i8*)* @ToolsCorePoolRunThread, i8* %35, i32 1, %struct._GError** %11), !dbg !527
  %37 = load %struct.StandaloneTask*, %struct.StandaloneTask** %12, align 8, !dbg !528
  %38 = getelementptr inbounds %struct.StandaloneTask, %struct.StandaloneTask* %37, i32 0, i32 4, !dbg !529
  store %struct._GThread* %36, %struct._GThread** %38, align 8, !dbg !530
  %39 = load %struct._GError*, %struct._GError** %11, align 8, !dbg !531
  %40 = icmp eq %struct._GError* %39, null, !dbg !533
  br i1 %40, label %41, label %45, !dbg !534

; <label>:41:                                     ; preds = %17
  %42 = load %struct._GPtrArray*, %struct._GPtrArray** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 5), align 8, !dbg !535
  %43 = load %struct.StandaloneTask*, %struct.StandaloneTask** %12, align 8, !dbg !537
  %44 = bitcast %struct.StandaloneTask* %43 to i8*, !dbg !537
  call void @g_ptr_array_add(%struct._GPtrArray* %42, i8* %44), !dbg !538
  br label %51, !dbg !539

; <label>:45:                                     ; preds = %17
  %46 = load %struct._GError*, %struct._GError** %11, align 8, !dbg !540
  %47 = getelementptr inbounds %struct._GError, %struct._GError* %46, i32 0, i32 2, !dbg !542
  %48 = load i8*, i8** %47, align 8, !dbg !542
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0), i8* %48), !dbg !543
  call void @g_clear_error(%struct._GError** %11), !dbg !544
  %49 = load %struct.StandaloneTask*, %struct.StandaloneTask** %12, align 8, !dbg !545
  %50 = bitcast %struct.StandaloneTask* %49 to i8*, !dbg !545
  call void @g_free(i8* %50), !dbg !546
  store %struct.StandaloneTask* null, %struct.StandaloneTask** %12, align 8, !dbg !547
  br label %51

; <label>:51:                                     ; preds = %45, %41
  br label %52, !dbg !548

; <label>:52:                                     ; preds = %51, %16
  %53 = load %union._GMutex*, %union._GMutex** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 6), align 8, !dbg !550
  call void @g_mutex_unlock(%union._GMutex* %53), !dbg !551
  %54 = load %struct.StandaloneTask*, %struct.StandaloneTask** %12, align 8, !dbg !552
  %55 = icmp ne %struct.StandaloneTask* %54, null, !dbg !553
  %56 = zext i1 %55 to i32, !dbg !553
  ret i32 %56, !dbg !554
}

declare i32 @g_key_file_get_integer(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #3

declare void @g_clear_error(%struct._GError**) #3

declare %struct._GThreadPool* @g_thread_pool_new(void (i8*, i8*)*, i8*, i32, i32, %struct._GError**) #3

; Function Attrs: nounwind uwtable
define internal void @ToolsCorePoolRunWorker(i8*, i8*) #0 !dbg !555 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.WorkerTask*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !556, metadata !162), !dbg !557
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !558, metadata !162), !dbg !559
  call void @llvm.dbg.declare(metadata %struct.WorkerTask** %5, metadata !560, metadata !162), !dbg !561
  %6 = load %union._GMutex*, %union._GMutex** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 6), align 8, !dbg !562
  call void @g_mutex_lock(%union._GMutex* %6), !dbg !563
  %7 = load %struct._GQueue*, %struct._GQueue** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 4), align 8, !dbg !564
  %8 = call i8* @g_queue_pop_tail(%struct._GQueue* %7), !dbg !565
  %9 = bitcast i8* %8 to %struct.WorkerTask*, !dbg !565
  store %struct.WorkerTask* %9, %struct.WorkerTask** %5, align 8, !dbg !566
  %10 = load %union._GMutex*, %union._GMutex** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 6), align 8, !dbg !567
  call void @g_mutex_unlock(%union._GMutex* %10), !dbg !568
  %11 = load %struct.WorkerTask*, %struct.WorkerTask** %5, align 8, !dbg !569
  %12 = bitcast %struct.WorkerTask* %11 to i8*, !dbg !569
  %13 = call i32 @ToolsCorePoolDoWork(i8* %12), !dbg !570
  %14 = load %struct.WorkerTask*, %struct.WorkerTask** %5, align 8, !dbg !571
  %15 = bitcast %struct.WorkerTask* %14 to i8*, !dbg !571
  call void @ToolsCorePoolDestroyTask(i8* %15), !dbg !572
  ret void, !dbg !573
}

declare void @g_thread_pool_set_max_idle_time(i32) #3

declare void @g_thread_pool_set_max_unused_threads(i32) #3

declare void @g_log(i8*, i32, i8*, ...) #3

declare %union._GMutex* @g_mutex_new() #3

declare %struct._GPtrArray* @g_ptr_array_new() #3

declare %struct._GQueue* @g_queue_new() #3

declare void @ToolsCoreService_RegisterProperty(%struct.ToolsCoreService*, %struct.ToolsServiceProperty*) #3

declare void @g_object_set(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @ToolsCorePool_Shutdown(%struct.ToolsAppCtx*) #0 !dbg !574 {
  %2 = alloca %struct.ToolsAppCtx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.StandaloneTask*, align 8
  %5 = alloca %struct.StandaloneTask*, align 8
  %6 = alloca %struct.WorkerTask*, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %2, metadata !575, metadata !162), !dbg !576
  call void @llvm.dbg.declare(metadata i32* %3, metadata !577, metadata !162), !dbg !578
  %7 = load %union._GMutex*, %union._GMutex** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 6), align 8, !dbg !579
  call void @g_mutex_lock(%union._GMutex* %7), !dbg !580
  store i32 0, i32* getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 1), align 8, !dbg !581
  %8 = load %union._GMutex*, %union._GMutex** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 6), align 8, !dbg !582
  call void @g_mutex_unlock(%union._GMutex* %8), !dbg !583
  store i32 0, i32* %3, align 4, !dbg !584
  br label %9, !dbg !586

; <label>:9:                                      ; preds = %42, %1
  %10 = load i32, i32* %3, align 4, !dbg !587
  %11 = load %struct._GPtrArray*, %struct._GPtrArray** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 5), align 8, !dbg !590
  %12 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %11, i32 0, i32 1, !dbg !591
  %13 = load i32, i32* %12, align 8, !dbg !591
  %14 = icmp ult i32 %10, %13, !dbg !592
  br i1 %14, label %15, label %45, !dbg !593

; <label>:15:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata %struct.StandaloneTask** %4, metadata !594, metadata !162), !dbg !596
  %16 = load i32, i32* %3, align 4, !dbg !597
  %17 = zext i32 %16 to i64, !dbg !598
  %18 = load %struct._GPtrArray*, %struct._GPtrArray** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 5), align 8, !dbg !599
  %19 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %18, i32 0, i32 0, !dbg !600
  %20 = load i8**, i8*** %19, align 8, !dbg !600
  %21 = getelementptr inbounds i8*, i8** %20, i64 %17, !dbg !598
  %22 = load i8*, i8** %21, align 8, !dbg !598
  %23 = bitcast i8* %22 to %struct.StandaloneTask*, !dbg !598
  store %struct.StandaloneTask* %23, %struct.StandaloneTask** %4, align 8, !dbg !596
  %24 = load %struct.StandaloneTask*, %struct.StandaloneTask** %4, align 8, !dbg !601
  %25 = getelementptr inbounds %struct.StandaloneTask, %struct.StandaloneTask* %24, i32 0, i32 0, !dbg !603
  %26 = load i32, i32* %25, align 8, !dbg !603
  %27 = icmp ne i32 %26, 0, !dbg !601
  br i1 %27, label %28, label %41, !dbg !604

; <label>:28:                                     ; preds = %15
  %29 = load %struct.StandaloneTask*, %struct.StandaloneTask** %4, align 8, !dbg !605
  %30 = getelementptr inbounds %struct.StandaloneTask, %struct.StandaloneTask* %29, i32 0, i32 2, !dbg !607
  %31 = load void (%struct.ToolsAppCtx*, i8*)*, void (%struct.ToolsAppCtx*, i8*)** %30, align 8, !dbg !607
  %32 = icmp ne void (%struct.ToolsAppCtx*, i8*)* %31, null, !dbg !605
  br i1 %32, label %33, label %41, !dbg !608

; <label>:33:                                     ; preds = %28
  %34 = load %struct.StandaloneTask*, %struct.StandaloneTask** %4, align 8, !dbg !609
  %35 = getelementptr inbounds %struct.StandaloneTask, %struct.StandaloneTask* %34, i32 0, i32 2, !dbg !611
  %36 = load void (%struct.ToolsAppCtx*, i8*)*, void (%struct.ToolsAppCtx*, i8*)** %35, align 8, !dbg !611
  %37 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 2), align 8, !dbg !612
  %38 = load %struct.StandaloneTask*, %struct.StandaloneTask** %4, align 8, !dbg !613
  %39 = getelementptr inbounds %struct.StandaloneTask, %struct.StandaloneTask* %38, i32 0, i32 3, !dbg !614
  %40 = load i8*, i8** %39, align 8, !dbg !614
  call void %36(%struct.ToolsAppCtx* %37, i8* %40), !dbg !609
  br label %41, !dbg !615

; <label>:41:                                     ; preds = %33, %28, %15
  br label %42, !dbg !616

; <label>:42:                                     ; preds = %41
  %43 = load i32, i32* %3, align 4, !dbg !617
  %44 = add i32 %43, 1, !dbg !617
  store i32 %44, i32* %3, align 4, !dbg !617
  br label %9, !dbg !619, !llvm.loop !620

; <label>:45:                                     ; preds = %9
  %46 = load %struct._GThreadPool*, %struct._GThreadPool** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 3), align 8, !dbg !622
  %47 = icmp ne %struct._GThreadPool* %46, null, !dbg !624
  br i1 %47, label %48, label %50, !dbg !625

; <label>:48:                                     ; preds = %45
  %49 = load %struct._GThreadPool*, %struct._GThreadPool** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 3), align 8, !dbg !626
  call void @g_thread_pool_free(%struct._GThreadPool* %49, i32 1, i32 1), !dbg !628
  br label %50, !dbg !629

; <label>:50:                                     ; preds = %48, %45
  store i32 0, i32* %3, align 4, !dbg !630
  br label %51, !dbg !632

; <label>:51:                                     ; preds = %68, %50
  %52 = load i32, i32* %3, align 4, !dbg !633
  %53 = load %struct._GPtrArray*, %struct._GPtrArray** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 5), align 8, !dbg !636
  %54 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %53, i32 0, i32 1, !dbg !637
  %55 = load i32, i32* %54, align 8, !dbg !637
  %56 = icmp ult i32 %52, %55, !dbg !638
  br i1 %56, label %57, label %71, !dbg !639

; <label>:57:                                     ; preds = %51
  call void @llvm.dbg.declare(metadata %struct.StandaloneTask** %5, metadata !640, metadata !162), !dbg !642
  %58 = load i32, i32* %3, align 4, !dbg !643
  %59 = zext i32 %58 to i64, !dbg !644
  %60 = load %struct._GPtrArray*, %struct._GPtrArray** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 5), align 8, !dbg !645
  %61 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %60, i32 0, i32 0, !dbg !646
  %62 = load i8**, i8*** %61, align 8, !dbg !646
  %63 = getelementptr inbounds i8*, i8** %62, i64 %59, !dbg !644
  %64 = load i8*, i8** %63, align 8, !dbg !644
  %65 = bitcast i8* %64 to %struct.StandaloneTask*, !dbg !644
  store %struct.StandaloneTask* %65, %struct.StandaloneTask** %5, align 8, !dbg !642
  %66 = load %struct.StandaloneTask*, %struct.StandaloneTask** %5, align 8, !dbg !647
  %67 = bitcast %struct.StandaloneTask* %66 to i8*, !dbg !647
  call void @ToolsCorePoolDestroyThread(i8* %67), !dbg !648
  br label %68, !dbg !649

; <label>:68:                                     ; preds = %57
  %69 = load i32, i32* %3, align 4, !dbg !650
  %70 = add i32 %69, 1, !dbg !650
  store i32 %70, i32* %3, align 4, !dbg !650
  br label %51, !dbg !652, !llvm.loop !653

; <label>:71:                                     ; preds = %51
  br label %72, !dbg !655

; <label>:72:                                     ; preds = %71, %82
  call void @llvm.dbg.declare(metadata %struct.WorkerTask** %6, metadata !656, metadata !162), !dbg !658
  %73 = load %struct._GQueue*, %struct._GQueue** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 4), align 8, !dbg !659
  %74 = call i8* @g_queue_pop_tail(%struct._GQueue* %73), !dbg !660
  %75 = bitcast i8* %74 to %struct.WorkerTask*, !dbg !660
  store %struct.WorkerTask* %75, %struct.WorkerTask** %6, align 8, !dbg !658
  %76 = load %struct.WorkerTask*, %struct.WorkerTask** %6, align 8, !dbg !661
  %77 = icmp ne %struct.WorkerTask* %76, null, !dbg !663
  br i1 %77, label %78, label %81, !dbg !664

; <label>:78:                                     ; preds = %72
  %79 = load %struct.WorkerTask*, %struct.WorkerTask** %6, align 8, !dbg !665
  %80 = bitcast %struct.WorkerTask* %79 to i8*, !dbg !665
  call void @ToolsCorePoolDestroyTask(i8* %80), !dbg !667
  br label %82, !dbg !668

; <label>:81:                                     ; preds = %72
  br label %83, !dbg !669

; <label>:82:                                     ; preds = %78
  br label %72, !dbg !671, !llvm.loop !673

; <label>:83:                                     ; preds = %81
  %84 = load %struct._GPtrArray*, %struct._GPtrArray** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 5), align 8, !dbg !674
  %85 = call i8** @g_ptr_array_free(%struct._GPtrArray* %84, i32 1), !dbg !675
  %86 = load %struct._GQueue*, %struct._GQueue** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 4), align 8, !dbg !676
  call void @g_queue_free(%struct._GQueue* %86), !dbg !677
  %87 = load %union._GMutex*, %union._GMutex** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 6), align 8, !dbg !678
  call void @g_mutex_free(%union._GMutex* %87), !dbg !679
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.ThreadPoolState* @gState to i8*), i8 0, i64 80, i32 8, i1 false), !dbg !680
  %88 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %2, align 8, !dbg !681
  %89 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %88, i32 0, i32 10, !dbg !682
  %90 = load i8*, i8** %89, align 8, !dbg !682
  call void (i8*, i8*, ...) @g_object_set(i8* %90, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* null, i8* null), !dbg !683
  ret void, !dbg !684
}

declare void @g_mutex_lock(%union._GMutex*) #3

declare void @g_mutex_unlock(%union._GMutex*) #3

declare void @g_thread_pool_free(%struct._GThreadPool*, i32, i32) #3

; Function Attrs: nounwind uwtable
define internal void @ToolsCorePoolDestroyThread(i8*) #0 !dbg !685 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.StandaloneTask*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !686, metadata !162), !dbg !687
  call void @llvm.dbg.declare(metadata %struct.StandaloneTask** %3, metadata !688, metadata !162), !dbg !689
  %4 = load i8*, i8** %2, align 8, !dbg !690
  %5 = bitcast i8* %4 to %struct.StandaloneTask*, !dbg !690
  store %struct.StandaloneTask* %5, %struct.StandaloneTask** %3, align 8, !dbg !689
  %6 = load %struct.StandaloneTask*, %struct.StandaloneTask** %3, align 8, !dbg !691
  %7 = getelementptr inbounds %struct.StandaloneTask, %struct.StandaloneTask* %6, i32 0, i32 4, !dbg !692
  %8 = load %struct._GThread*, %struct._GThread** %7, align 8, !dbg !692
  %9 = call i8* @g_thread_join(%struct._GThread* %8), !dbg !693
  %10 = load %struct.StandaloneTask*, %struct.StandaloneTask** %3, align 8, !dbg !694
  %11 = getelementptr inbounds %struct.StandaloneTask, %struct.StandaloneTask* %10, i32 0, i32 5, !dbg !696
  %12 = load void (i8*)*, void (i8*)** %11, align 8, !dbg !696
  %13 = icmp ne void (i8*)* %12, null, !dbg !697
  br i1 %13, label %14, label %21, !dbg !698

; <label>:14:                                     ; preds = %1
  %15 = load %struct.StandaloneTask*, %struct.StandaloneTask** %3, align 8, !dbg !699
  %16 = getelementptr inbounds %struct.StandaloneTask, %struct.StandaloneTask* %15, i32 0, i32 5, !dbg !701
  %17 = load void (i8*)*, void (i8*)** %16, align 8, !dbg !701
  %18 = load %struct.StandaloneTask*, %struct.StandaloneTask** %3, align 8, !dbg !702
  %19 = getelementptr inbounds %struct.StandaloneTask, %struct.StandaloneTask* %18, i32 0, i32 3, !dbg !703
  %20 = load i8*, i8** %19, align 8, !dbg !703
  call void %17(i8* %20), !dbg !699
  br label %21, !dbg !704

; <label>:21:                                     ; preds = %14, %1
  %22 = load %struct.StandaloneTask*, %struct.StandaloneTask** %3, align 8, !dbg !705
  %23 = bitcast %struct.StandaloneTask* %22 to i8*, !dbg !705
  call void @g_free(i8* %23), !dbg !706
  ret void, !dbg !707
}

declare i8* @g_queue_pop_tail(%struct._GQueue*) #3

; Function Attrs: nounwind uwtable
define internal void @ToolsCorePoolDestroyTask(i8*) #0 !dbg !708 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.WorkerTask*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !709, metadata !162), !dbg !710
  call void @llvm.dbg.declare(metadata %struct.WorkerTask** %3, metadata !711, metadata !162), !dbg !712
  %4 = load i8*, i8** %2, align 8, !dbg !713
  %5 = bitcast i8* %4 to %struct.WorkerTask*, !dbg !713
  store %struct.WorkerTask* %5, %struct.WorkerTask** %3, align 8, !dbg !712
  %6 = load %struct.WorkerTask*, %struct.WorkerTask** %3, align 8, !dbg !714
  %7 = getelementptr inbounds %struct.WorkerTask, %struct.WorkerTask* %6, i32 0, i32 4, !dbg !716
  %8 = load void (i8*)*, void (i8*)** %7, align 8, !dbg !716
  %9 = icmp ne void (i8*)* %8, null, !dbg !717
  br i1 %9, label %10, label %17, !dbg !718

; <label>:10:                                     ; preds = %1
  %11 = load %struct.WorkerTask*, %struct.WorkerTask** %3, align 8, !dbg !719
  %12 = getelementptr inbounds %struct.WorkerTask, %struct.WorkerTask* %11, i32 0, i32 4, !dbg !721
  %13 = load void (i8*)*, void (i8*)** %12, align 8, !dbg !721
  %14 = load %struct.WorkerTask*, %struct.WorkerTask** %3, align 8, !dbg !722
  %15 = getelementptr inbounds %struct.WorkerTask, %struct.WorkerTask* %14, i32 0, i32 3, !dbg !723
  %16 = load i8*, i8** %15, align 8, !dbg !723
  call void %13(i8* %16), !dbg !719
  br label %17, !dbg !724

; <label>:17:                                     ; preds = %10, %1
  %18 = load %struct.WorkerTask*, %struct.WorkerTask** %3, align 8, !dbg !725
  %19 = bitcast %struct.WorkerTask* %18 to i8*, !dbg !725
  call void @g_free(i8* %19), !dbg !726
  ret void, !dbg !727
}

declare i8** @g_ptr_array_free(%struct._GPtrArray*, i32) #3

declare void @g_queue_free(%struct._GQueue*) #3

declare void @g_mutex_free(%union._GMutex*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

declare noalias i8* @g_malloc0(i64) #3

declare void @g_free(i8*) #3

declare void @g_queue_push_head(%struct._GQueue*, i8*) #3

declare i32 @g_thread_pool_push(%struct._GThreadPool*, i8*, %struct._GError**) #3

declare i32 @g_idle_add_full(i32, i32 (i8*)*, i8*, void (i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @ToolsCorePoolDoWork(i8*) #0 !dbg !728 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.WorkerTask*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !731, metadata !162), !dbg !732
  call void @llvm.dbg.declare(metadata %struct.WorkerTask** %3, metadata !733, metadata !162), !dbg !734
  %4 = load i8*, i8** %2, align 8, !dbg !735
  %5 = bitcast i8* %4 to %struct.WorkerTask*, !dbg !735
  store %struct.WorkerTask* %5, %struct.WorkerTask** %3, align 8, !dbg !734
  %6 = load %struct._GThreadPool*, %struct._GThreadPool** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 3), align 8, !dbg !736
  %7 = icmp eq %struct._GThreadPool* %6, null, !dbg !738
  br i1 %7, label %8, label %15, !dbg !739

; <label>:8:                                      ; preds = %1
  %9 = load %union._GMutex*, %union._GMutex** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 6), align 8, !dbg !740
  call void @g_mutex_lock(%union._GMutex* %9), !dbg !742
  %10 = load %struct._GQueue*, %struct._GQueue** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 4), align 8, !dbg !743
  %11 = load %struct.WorkerTask*, %struct.WorkerTask** %3, align 8, !dbg !744
  %12 = bitcast %struct.WorkerTask* %11 to i8*, !dbg !744
  %13 = call i32 @g_queue_remove(%struct._GQueue* %10, i8* %12), !dbg !745
  %14 = load %union._GMutex*, %union._GMutex** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 6), align 8, !dbg !746
  call void @g_mutex_unlock(%union._GMutex* %14), !dbg !747
  br label %15, !dbg !748

; <label>:15:                                     ; preds = %8, %1
  %16 = load %struct.WorkerTask*, %struct.WorkerTask** %3, align 8, !dbg !749
  %17 = getelementptr inbounds %struct.WorkerTask, %struct.WorkerTask* %16, i32 0, i32 2, !dbg !750
  %18 = load void (%struct.ToolsAppCtx*, i8*)*, void (%struct.ToolsAppCtx*, i8*)** %17, align 8, !dbg !750
  %19 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 2), align 8, !dbg !751
  %20 = load %struct.WorkerTask*, %struct.WorkerTask** %3, align 8, !dbg !752
  %21 = getelementptr inbounds %struct.WorkerTask, %struct.WorkerTask* %20, i32 0, i32 3, !dbg !753
  %22 = load i8*, i8** %21, align 8, !dbg !753
  call void %18(%struct.ToolsAppCtx* %19, i8* %22), !dbg !749
  ret i32 0, !dbg !754
}

declare i32 @g_queue_remove(%struct._GQueue*, i8*) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GList* @g_queue_find_custom(%struct._GQueue*, i8*, i32 (i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @ToolsCorePoolCompareTask(i8*, i8*) #0 !dbg !755 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.WorkerTask*, align 8
  %7 = alloca %struct.WorkerTask*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !761, metadata !162), !dbg !762
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !763, metadata !162), !dbg !764
  call void @llvm.dbg.declare(metadata %struct.WorkerTask** %6, metadata !765, metadata !162), !dbg !768
  %8 = load i8*, i8** %4, align 8, !dbg !769
  %9 = bitcast i8* %8 to %struct.WorkerTask*, !dbg !769
  store %struct.WorkerTask* %9, %struct.WorkerTask** %6, align 8, !dbg !768
  call void @llvm.dbg.declare(metadata %struct.WorkerTask** %7, metadata !770, metadata !162), !dbg !771
  %10 = load i8*, i8** %5, align 8, !dbg !772
  %11 = bitcast i8* %10 to %struct.WorkerTask*, !dbg !772
  store %struct.WorkerTask* %11, %struct.WorkerTask** %7, align 8, !dbg !771
  %12 = load %struct.WorkerTask*, %struct.WorkerTask** %6, align 8, !dbg !773
  %13 = icmp ne %struct.WorkerTask* %12, null, !dbg !775
  br i1 %13, label %14, label %25, !dbg !776

; <label>:14:                                     ; preds = %2
  %15 = load %struct.WorkerTask*, %struct.WorkerTask** %7, align 8, !dbg !777
  %16 = icmp ne %struct.WorkerTask* %15, null, !dbg !779
  br i1 %16, label %17, label %25, !dbg !780

; <label>:17:                                     ; preds = %14
  %18 = load %struct.WorkerTask*, %struct.WorkerTask** %7, align 8, !dbg !781
  %19 = getelementptr inbounds %struct.WorkerTask, %struct.WorkerTask* %18, i32 0, i32 0, !dbg !783
  %20 = load i32, i32* %19, align 8, !dbg !783
  %21 = load %struct.WorkerTask*, %struct.WorkerTask** %6, align 8, !dbg !784
  %22 = getelementptr inbounds %struct.WorkerTask, %struct.WorkerTask* %21, i32 0, i32 0, !dbg !785
  %23 = load i32, i32* %22, align 8, !dbg !785
  %24 = sub i32 %20, %23, !dbg !786
  store i32 %24, i32* %3, align 4, !dbg !787
  br label %36, !dbg !787

; <label>:25:                                     ; preds = %14, %2
  %26 = load %struct.WorkerTask*, %struct.WorkerTask** %6, align 8, !dbg !788
  %27 = icmp eq %struct.WorkerTask* %26, null, !dbg !790
  br i1 %27, label %28, label %32, !dbg !791

; <label>:28:                                     ; preds = %25
  %29 = load %struct.WorkerTask*, %struct.WorkerTask** %7, align 8, !dbg !792
  %30 = icmp eq %struct.WorkerTask* %29, null, !dbg !794
  br i1 %30, label %31, label %32, !dbg !795

; <label>:31:                                     ; preds = %28
  store i32 0, i32* %3, align 4, !dbg !796
  br label %36, !dbg !796

; <label>:32:                                     ; preds = %28, %25
  %33 = load %struct.WorkerTask*, %struct.WorkerTask** %6, align 8, !dbg !798
  %34 = icmp ne %struct.WorkerTask* %33, null, !dbg !799
  %35 = select i1 %34, i32 -1, i32 1, !dbg !800
  store i32 %35, i32* %3, align 4, !dbg !801
  br label %36, !dbg !801

; <label>:36:                                     ; preds = %32, %31, %17
  %37 = load i32, i32* %3, align 4, !dbg !802
  ret i32 %37, !dbg !802
}

declare void @g_queue_delete_link(%struct._GQueue*, %struct._GList*) #3

declare i32 @g_source_remove(i32) #3

declare %struct._GThread* @g_thread_create(i8* (i8*)*, i8*, i32, %struct._GError**) #3

; Function Attrs: nounwind uwtable
define internal i8* @ToolsCorePoolRunThread(i8*) #0 !dbg !803 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.StandaloneTask*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !804, metadata !162), !dbg !805
  call void @llvm.dbg.declare(metadata %struct.StandaloneTask** %3, metadata !806, metadata !162), !dbg !807
  %4 = load i8*, i8** %2, align 8, !dbg !808
  %5 = bitcast i8* %4 to %struct.StandaloneTask*, !dbg !808
  store %struct.StandaloneTask* %5, %struct.StandaloneTask** %3, align 8, !dbg !807
  %6 = load %struct.StandaloneTask*, %struct.StandaloneTask** %3, align 8, !dbg !809
  %7 = getelementptr inbounds %struct.StandaloneTask, %struct.StandaloneTask* %6, i32 0, i32 1, !dbg !810
  %8 = load void (%struct.ToolsAppCtx*, i8*)*, void (%struct.ToolsAppCtx*, i8*)** %7, align 8, !dbg !810
  %9 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 2), align 8, !dbg !811
  %10 = load %struct.StandaloneTask*, %struct.StandaloneTask** %3, align 8, !dbg !812
  %11 = getelementptr inbounds %struct.StandaloneTask, %struct.StandaloneTask* %10, i32 0, i32 3, !dbg !813
  %12 = load i8*, i8** %11, align 8, !dbg !813
  call void %8(%struct.ToolsAppCtx* %9, i8* %12), !dbg !809
  %13 = load %struct.StandaloneTask*, %struct.StandaloneTask** %3, align 8, !dbg !814
  %14 = getelementptr inbounds %struct.StandaloneTask, %struct.StandaloneTask* %13, i32 0, i32 0, !dbg !815
  store i32 0, i32* %14, align 8, !dbg !816
  %15 = load %union._GMutex*, %union._GMutex** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 6), align 8, !dbg !817
  call void @g_mutex_lock(%union._GMutex* %15), !dbg !818
  %16 = load i32, i32* getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 1), align 8, !dbg !819
  %17 = icmp ne i32 %16, 0, !dbg !821
  br i1 %17, label %18, label %26, !dbg !822

; <label>:18:                                     ; preds = %1
  %19 = load %struct._GPtrArray*, %struct._GPtrArray** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 5), align 8, !dbg !823
  %20 = load %struct.StandaloneTask*, %struct.StandaloneTask** %3, align 8, !dbg !825
  %21 = bitcast %struct.StandaloneTask* %20 to i8*, !dbg !825
  %22 = call i32 @g_ptr_array_remove(%struct._GPtrArray* %19, i8* %21), !dbg !826
  %23 = load %struct.StandaloneTask*, %struct.StandaloneTask** %3, align 8, !dbg !827
  %24 = bitcast %struct.StandaloneTask* %23 to i8*, !dbg !827
  %25 = call i32 @g_idle_add_full(i32 200, i32 (i8*)* @ToolsCorePoolNoOp, i8* %24, void (i8*)* @ToolsCorePoolDestroyThread), !dbg !828
  br label %26, !dbg !829

; <label>:26:                                     ; preds = %18, %1
  %27 = load %union._GMutex*, %union._GMutex** getelementptr inbounds (%struct.ThreadPoolState, %struct.ThreadPoolState* @gState, i32 0, i32 6), align 8, !dbg !830
  call void @g_mutex_unlock(%union._GMutex* %27), !dbg !831
  ret i8* null, !dbg !832
}

declare void @g_ptr_array_add(%struct._GPtrArray*, i8*) #3

declare i32 @g_ptr_array_remove(%struct._GPtrArray*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @ToolsCorePoolNoOp(i8*) #0 !dbg !833 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !834, metadata !162), !dbg !835
  ret i32 0, !dbg !836
}

declare i8* @g_thread_join(%struct._GThread*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!154, !155}
!llvm.ident = !{!156}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !26, globals: !31)
!1 = !DIFile(filename: "vmtoolsd-threadPool.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1391")
!2 = !{!3, !7, !19}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 232, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/plugin.h", directory: "/home/lichi/Desktop/open-vm-tools/line1391")
!5 = !{!6}
!6 = !DIEnumerator(name: "TOOLS_CORE_API_V1", value: 1)
!7 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !8, line: 51, size: 32, align: 32, elements: !9)
!8 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1391")
!9 = !{!10, !11, !12, !13, !14, !15, !16, !17, !18}
!10 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!11 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!12 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!13 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!14 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!15 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!16 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!17 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!18 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 38, size: 32, align: 32, elements: !21)
!20 = !DIFile(filename: "/usr/include/glib-2.0/glib/deprecated/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line1391")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "G_THREAD_PRIORITY_LOW", value: 0)
!23 = !DIEnumerator(name: "G_THREAD_PRIORITY_NORMAL", value: 1)
!24 = !DIEnumerator(name: "G_THREAD_PRIORITY_HIGH", value: 2)
!25 = !DIEnumerator(name: "G_THREAD_PRIORITY_URGENT", value: 3)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!31 = !{!32}
!32 = distinct !DIGlobalVariable(name: "gState", scope: !0, file: !33, line: 67, type: !34, isLocal: true, isDefinition: true, variable: %struct.ThreadPoolState* @gState)
!33 = !DIFile(filename: "threadPool.c", directory: "/home/lichi/Desktop/open-vm-tools/line1391")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "ThreadPoolState", file: !33, line: 45, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ThreadPoolState", file: !33, line: 36, size: 640, align: 64, elements: !36)
!36 = !{!37, !101, !102, !103, !116, !133, !142, !153}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !35, file: !33, line: 37, baseType: !38, size: 192, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCorePool", file: !39, line: 77, baseType: !40)
!39 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/threadPool.h", directory: "/home/lichi/Desktop/open-vm-tools/line1391")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsCorePool", file: !39, line: 66, size: 192, align: 64, elements: !41)
!41 = !{!42, !93, !97}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "submit", scope: !40, file: !39, line: 67, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{!46, !49, !85, !84, !89}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !47, line: 55, baseType: !48)
!47 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1391")
!48 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppCtx", file: !4, line: 274, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppCtx", file: !4, line: 241, size: 576, align: 64, elements: !52)
!52 = !{!53, !55, !59, !63, !64, !69, !74, !79, !80, !81, !83}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !51, file: !4, line: 243, baseType: !54, size: 32, align: 32)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCoreAPI", file: !4, line: 234, baseType: !3)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !51, file: !4, line: 245, baseType: !56, size: 64, align: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !47, line: 46, baseType: !30)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "isVMware", scope: !51, file: !4, line: 247, baseType: !60, size: 32, align: 32, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !47, line: 50, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !47, line: 49, baseType: !62)
!62 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "errorCode", scope: !51, file: !4, line: 249, baseType: !62, size: 32, align: 32, offset: 160)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "mainLoop", scope: !51, file: !4, line: 251, baseType: !65, size: 64, align: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainLoop", file: !67, line: 56, baseType: !68)
!67 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line1391")
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainLoop", file: !67, line: 56, flags: DIFlagFwdDecl)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !51, file: !4, line: 253, baseType: !70, size: 64, align: 64, offset: 256)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !72, line: 48, baseType: !73)
!72 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line1391")
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !72, line: 48, flags: DIFlagFwdDecl)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !51, file: !4, line: 255, baseType: !75, size: 64, align: 64, offset: 320)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !77, line: 48, baseType: !78)
!77 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1391")
!78 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !77, line: 48, flags: DIFlagFwdDecl)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "blockFD", scope: !51, file: !4, line: 261, baseType: !62, size: 32, align: 32, offset: 384)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "uinputFD", scope: !51, file: !4, line: 263, baseType: !62, size: 32, align: 32, offset: 416)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !51, file: !4, line: 265, baseType: !82, size: 64, align: 64, offset: 448)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "serviceObj", scope: !51, file: !4, line: 273, baseType: !84, size: 64, align: 64, offset: 512)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !47, line: 77, baseType: !27)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCorePoolCb", file: !39, line: 54, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !49, !84}
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "GDestroyNotify", file: !47, line: 87, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !84}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !40, file: !39, line: 71, baseType: !94, size: 64, align: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !46}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !40, file: !39, line: 72, baseType: !98, size: 64, align: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{!60, !49, !85, !85, !84, !89}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !35, file: !33, line: 38, baseType: !60, size: 32, align: 32, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !35, file: !33, line: 39, baseType: !49, size: 64, align: 64, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !35, file: !33, line: 40, baseType: !104, size: 64, align: 64, offset: 320)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "GThreadPool", file: !106, line: 36, baseType: !107)
!106 = !DIFile(filename: "/usr/include/glib-2.0/glib/gthreadpool.h", directory: "/home/lichi/Desktop/open-vm-tools/line1391")
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GThreadPool", file: !106, line: 41, size: 192, align: 64, elements: !108)
!108 = !{!109, !114, !115}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !107, file: !106, line: 43, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !47, line: 88, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !84, !84}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !107, file: !106, line: 44, baseType: !84, size: 64, align: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !107, file: !106, line: 45, baseType: !60, size: 32, align: 32, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "workQueue", scope: !35, file: !33, line: 41, baseType: !117, size: 64, align: 64, offset: 384)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQueue", file: !119, line: 36, baseType: !120)
!119 = !DIFile(filename: "/usr/include/glib-2.0/glib/gqueue.h", directory: "/home/lichi/Desktop/open-vm-tools/line1391")
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GQueue", file: !119, line: 47, size: 192, align: 64, elements: !121)
!121 = !{!122, !131, !132}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !120, file: !119, line: 49, baseType: !123, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !125, line: 37, baseType: !126)
!125 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/open-vm-tools/line1391")
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !125, line: 39, size: 192, align: 64, elements: !127)
!127 = !{!128, !129, !130}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !126, file: !125, line: 41, baseType: !84, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !126, file: !125, line: 42, baseType: !123, size: 64, align: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !126, file: !125, line: 43, baseType: !123, size: 64, align: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !120, file: !119, line: 50, baseType: !123, size: 64, align: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !120, file: !119, line: 51, baseType: !46, size: 32, align: 32, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "threads", scope: !35, file: !33, line: 42, baseType: !134, size: 64, align: 64, offset: 448)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPtrArray", file: !136, line: 39, baseType: !137)
!136 = !DIFile(filename: "/usr/include/glib-2.0/glib/garray.h", directory: "/home/lichi/Desktop/open-vm-tools/line1391")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GPtrArray", file: !136, line: 53, size: 128, align: 64, elements: !138)
!138 = !{!139, !141}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "pdata", scope: !137, file: !136, line: 55, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !137, file: !136, line: 56, baseType: !46, size: 32, align: 32, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !35, file: !33, line: 43, baseType: !143, size: 64, align: 64, offset: 512)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMutex", file: !145, line: 51, baseType: !146)
!145 = !DIFile(filename: "/usr/include/glib-2.0/glib/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line1391")
!146 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_GMutex", file: !145, line: 58, size: 64, align: 64, elements: !147)
!147 = !{!148, !149}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !146, file: !145, line: 61, baseType: !84, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !146, file: !145, line: 62, baseType: !150, size: 64, align: 32)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 64, align: 32, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 2)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nextWorkId", scope: !35, file: !33, line: 44, baseType: !46, size: 32, align: 32, offset: 576)
!154 = !{i32 2, !"Dwarf Version", i32 4}
!155 = !{i32 2, !"Debug Info Version", i32 3}
!156 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!157 = distinct !DISubprogram(name: "ToolsCorePool_Init", scope: !33, file: !33, line: 477, type: !158, isLocal: false, isDefinition: true, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !160)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !49}
!160 = !{}
!161 = !DILocalVariable(name: "ctx", arg: 1, scope: !157, file: !33, line: 477, type: !49)
!162 = !DIExpression()
!163 = !DILocation(line: 477, column: 33, scope: !157)
!164 = !DILocalVariable(name: "maxThreads", scope: !157, file: !33, line: 479, type: !61)
!165 = !DILocation(line: 479, column: 9, scope: !157)
!166 = !DILocalVariable(name: "err", scope: !157, file: !33, line: 480, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !169, line: 42, baseType: !170)
!169 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/open-vm-tools/line1391")
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !169, line: 44, size: 128, align: 64, elements: !171)
!171 = !{!172, !177, !178}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !170, file: !169, line: 46, baseType: !173, size: 32, align: 32)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !174, line: 36, baseType: !175)
!174 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/open-vm-tools/line1391")
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !176, line: 45, baseType: !48)
!176 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/open-vm-tools/line1391")
!177 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !170, file: !169, line: 47, baseType: !61, size: 32, align: 32, offset: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !170, file: !169, line: 48, baseType: !179, size: 64, align: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!180 = !DILocation(line: 480, column: 12, scope: !157)
!181 = !DILocalVariable(name: "prop", scope: !157, file: !33, line: 482, type: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsServiceProperty", file: !4, line: 468, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsServiceProperty", file: !4, line: 466, size: 64, align: 64, elements: !184)
!184 = !{!185}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !183, file: !4, line: 467, baseType: !28, size: 64, align: 64)
!186 = !DILocation(line: 482, column: 25, scope: !157)
!187 = !DILocation(line: 484, column: 24, scope: !157)
!188 = !DILocation(line: 485, column: 24, scope: !157)
!189 = !DILocation(line: 486, column: 23, scope: !157)
!190 = !DILocation(line: 487, column: 17, scope: !157)
!191 = !DILocation(line: 487, column: 15, scope: !157)
!192 = !DILocation(line: 489, column: 40, scope: !157)
!193 = !DILocation(line: 489, column: 45, scope: !157)
!194 = !DILocation(line: 489, column: 53, scope: !157)
!195 = !DILocation(line: 489, column: 58, scope: !157)
!196 = !DILocation(line: 489, column: 17, scope: !157)
!197 = !DILocation(line: 489, column: 15, scope: !157)
!198 = !DILocation(line: 491, column: 8, scope: !199)
!199 = distinct !DILexicalBlock(scope: !157, file: !33, line: 491, column: 8)
!200 = !DILocation(line: 491, column: 12, scope: !199)
!201 = !DILocation(line: 491, column: 8, scope: !157)
!202 = !DILocation(line: 492, column: 18, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !33, line: 491, column: 20)
!204 = !DILocation(line: 493, column: 7, scope: !203)
!205 = !DILocation(line: 494, column: 4, scope: !203)
!206 = !DILocation(line: 496, column: 8, scope: !207)
!207 = distinct !DILexicalBlock(scope: !157, file: !33, line: 496, column: 8)
!208 = !DILocation(line: 496, column: 19, scope: !207)
!209 = !DILocation(line: 496, column: 8, scope: !157)
!210 = !DILocation(line: 498, column: 44, scope: !211)
!211 = distinct !DILexicalBlock(scope: !207, file: !33, line: 496, column: 24)
!212 = !DILocation(line: 497, column: 21, scope: !211)
!213 = !DILocation(line: 497, column: 19, scope: !211)
!214 = !DILocation(line: 499, column: 11, scope: !215)
!215 = distinct !DILexicalBlock(scope: !211, file: !33, line: 499, column: 11)
!216 = !DILocation(line: 499, column: 15, scope: !215)
!217 = !DILocation(line: 499, column: 11, scope: !211)
!218 = !DILocalVariable(name: "maxIdleTime", scope: !219, file: !33, line: 501, type: !61)
!219 = distinct !DILexicalBlock(scope: !215, file: !33, line: 499, column: 23)
!220 = !DILocation(line: 501, column: 15, scope: !219)
!221 = !DILocalVariable(name: "maxUnused", scope: !219, file: !33, line: 502, type: !61)
!222 = !DILocation(line: 502, column: 15, scope: !219)
!223 = !DILocation(line: 504, column: 47, scope: !219)
!224 = !DILocation(line: 504, column: 52, scope: !219)
!225 = !DILocation(line: 504, column: 60, scope: !219)
!226 = !DILocation(line: 504, column: 65, scope: !219)
!227 = !DILocation(line: 504, column: 24, scope: !219)
!228 = !DILocation(line: 504, column: 22, scope: !219)
!229 = !DILocation(line: 506, column: 14, scope: !230)
!230 = distinct !DILexicalBlock(scope: !219, file: !33, line: 506, column: 14)
!231 = !DILocation(line: 506, column: 18, scope: !230)
!232 = !DILocation(line: 506, column: 25, scope: !230)
!233 = !DILocation(line: 506, column: 28, scope: !234)
!234 = !DILexicalBlockFile(scope: !230, file: !33, discriminator: 1)
!235 = !DILocation(line: 506, column: 40, scope: !234)
!236 = !DILocation(line: 506, column: 14, scope: !234)
!237 = !DILocation(line: 507, column: 25, scope: !238)
!238 = distinct !DILexicalBlock(scope: !230, file: !33, line: 506, column: 46)
!239 = !DILocation(line: 508, column: 13, scope: !238)
!240 = !DILocation(line: 509, column: 10, scope: !238)
!241 = !DILocation(line: 511, column: 45, scope: !219)
!242 = !DILocation(line: 511, column: 50, scope: !219)
!243 = !DILocation(line: 511, column: 58, scope: !219)
!244 = !DILocation(line: 511, column: 63, scope: !219)
!245 = !DILocation(line: 511, column: 22, scope: !219)
!246 = !DILocation(line: 511, column: 20, scope: !219)
!247 = !DILocation(line: 513, column: 14, scope: !248)
!248 = distinct !DILexicalBlock(scope: !219, file: !33, line: 513, column: 14)
!249 = !DILocation(line: 513, column: 18, scope: !248)
!250 = !DILocation(line: 513, column: 25, scope: !248)
!251 = !DILocation(line: 513, column: 28, scope: !252)
!252 = !DILexicalBlockFile(scope: !248, file: !33, discriminator: 1)
!253 = !DILocation(line: 513, column: 38, scope: !252)
!254 = !DILocation(line: 513, column: 14, scope: !252)
!255 = !DILocation(line: 514, column: 23, scope: !256)
!256 = distinct !DILexicalBlock(scope: !248, file: !33, line: 513, column: 43)
!257 = !DILocation(line: 515, column: 13, scope: !256)
!258 = !DILocation(line: 516, column: 10, scope: !256)
!259 = !DILocation(line: 518, column: 42, scope: !219)
!260 = !DILocation(line: 518, column: 10, scope: !219)
!261 = !DILocation(line: 519, column: 47, scope: !219)
!262 = !DILocation(line: 519, column: 10, scope: !219)
!263 = !DILocation(line: 521, column: 7, scope: !219)
!264 = !DILocation(line: 522, column: 113, scope: !265)
!265 = distinct !DILexicalBlock(scope: !215, file: !33, line: 521, column: 14)
!266 = !DILocation(line: 522, column: 118, scope: !265)
!267 = !DILocation(line: 522, column: 10, scope: !265)
!268 = !DILocation(line: 524, column: 10, scope: !265)
!269 = !DILocation(line: 526, column: 4, scope: !211)
!270 = !DILocation(line: 528, column: 18, scope: !157)
!271 = !DILocation(line: 529, column: 18, scope: !157)
!272 = !DILocation(line: 529, column: 16, scope: !157)
!273 = !DILocation(line: 530, column: 21, scope: !157)
!274 = !DILocation(line: 530, column: 19, scope: !157)
!275 = !DILocation(line: 531, column: 23, scope: !157)
!276 = !DILocation(line: 531, column: 21, scope: !157)
!277 = !DILocation(line: 533, column: 38, scope: !157)
!278 = !DILocation(line: 533, column: 43, scope: !157)
!279 = !DILocation(line: 533, column: 4, scope: !157)
!280 = !DILocation(line: 534, column: 17, scope: !157)
!281 = !DILocation(line: 534, column: 22, scope: !157)
!282 = !DILocation(line: 534, column: 4, scope: !157)
!283 = !DILocation(line: 535, column: 1, scope: !157)
!284 = distinct !DISubprogram(name: "ToolsCorePoolSubmit", scope: !33, file: !33, line: 290, type: !44, isLocal: true, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !160)
!285 = !DILocalVariable(name: "ctx", arg: 1, scope: !284, file: !33, line: 290, type: !49)
!286 = !DILocation(line: 290, column: 34, scope: !284)
!287 = !DILocalVariable(name: "cb", arg: 2, scope: !284, file: !33, line: 291, type: !85)
!288 = !DILocation(line: 291, column: 37, scope: !284)
!289 = !DILocalVariable(name: "data", arg: 3, scope: !284, file: !33, line: 292, type: !84)
!290 = !DILocation(line: 292, column: 30, scope: !284)
!291 = !DILocalVariable(name: "dtor", arg: 4, scope: !284, file: !33, line: 293, type: !89)
!292 = !DILocation(line: 293, column: 36, scope: !284)
!293 = !DILocalVariable(name: "id", scope: !284, file: !33, line: 295, type: !46)
!294 = !DILocation(line: 295, column: 10, scope: !284)
!295 = !DILocalVariable(name: "task", scope: !284, file: !33, line: 296, type: !296)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "WorkerTask", file: !33, line: 54, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WorkerTask", file: !33, line: 48, size: 256, align: 64, elements: !299)
!299 = !{!300, !301, !302, !303, !304}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !298, file: !33, line: 49, baseType: !46, size: 32, align: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "srcId", scope: !298, file: !33, line: 50, baseType: !46, size: 32, align: 32, offset: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !298, file: !33, line: 51, baseType: !85, size: 64, align: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !298, file: !33, line: 52, baseType: !84, size: 64, align: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "dtor", scope: !298, file: !33, line: 53, baseType: !89, size: 64, align: 64, offset: 192)
!305 = !DILocation(line: 296, column: 16, scope: !284)
!306 = !DILocation(line: 296, column: 23, scope: !284)
!307 = !DILocation(line: 298, column: 4, scope: !284)
!308 = !DILocation(line: 298, column: 10, scope: !284)
!309 = !DILocation(line: 298, column: 16, scope: !284)
!310 = !DILocation(line: 299, column: 15, scope: !284)
!311 = !DILocation(line: 299, column: 4, scope: !284)
!312 = !DILocation(line: 299, column: 10, scope: !284)
!313 = !DILocation(line: 299, column: 13, scope: !284)
!314 = !DILocation(line: 300, column: 17, scope: !284)
!315 = !DILocation(line: 300, column: 4, scope: !284)
!316 = !DILocation(line: 300, column: 10, scope: !284)
!317 = !DILocation(line: 300, column: 15, scope: !284)
!318 = !DILocation(line: 301, column: 17, scope: !284)
!319 = !DILocation(line: 301, column: 4, scope: !284)
!320 = !DILocation(line: 301, column: 10, scope: !284)
!321 = !DILocation(line: 301, column: 15, scope: !284)
!322 = !DILocation(line: 303, column: 24, scope: !284)
!323 = !DILocation(line: 303, column: 4, scope: !284)
!324 = !DILocation(line: 305, column: 16, scope: !325)
!325 = distinct !DILexicalBlock(scope: !284, file: !33, line: 305, column: 8)
!326 = !DILocation(line: 305, column: 9, scope: !325)
!327 = !DILocation(line: 305, column: 8, scope: !284)
!328 = !DILocation(line: 306, column: 14, scope: !329)
!329 = distinct !DILexicalBlock(scope: !325, file: !33, line: 305, column: 24)
!330 = !DILocation(line: 306, column: 7, scope: !329)
!331 = !DILocation(line: 307, column: 7, scope: !329)
!332 = !DILocation(line: 317, column: 15, scope: !333)
!333 = distinct !DILexicalBlock(scope: !284, file: !33, line: 317, column: 8)
!334 = !DILocation(line: 317, column: 26, scope: !333)
!335 = !DILocation(line: 317, column: 30, scope: !333)
!336 = !DILocation(line: 317, column: 8, scope: !284)
!337 = !DILocation(line: 318, column: 7, scope: !338)
!338 = distinct !DILexicalBlock(scope: !333, file: !33, line: 317, column: 42)
!339 = !DILocation(line: 318, column: 13, scope: !338)
!340 = !DILocation(line: 318, column: 16, scope: !338)
!341 = !DILocation(line: 319, column: 25, scope: !338)
!342 = !DILocation(line: 320, column: 4, scope: !338)
!343 = !DILocation(line: 321, column: 18, scope: !344)
!344 = distinct !DILexicalBlock(scope: !333, file: !33, line: 320, column: 11)
!345 = !DILocation(line: 321, column: 7, scope: !344)
!346 = !DILocation(line: 321, column: 13, scope: !344)
!347 = !DILocation(line: 321, column: 16, scope: !344)
!348 = !DILocation(line: 324, column: 9, scope: !284)
!349 = !DILocation(line: 324, column: 15, scope: !284)
!350 = !DILocation(line: 324, column: 7, scope: !284)
!351 = !DILocation(line: 331, column: 29, scope: !284)
!352 = !DILocation(line: 331, column: 40, scope: !284)
!353 = !DILocation(line: 331, column: 4, scope: !284)
!354 = !DILocation(line: 333, column: 15, scope: !355)
!355 = distinct !DILexicalBlock(scope: !284, file: !33, line: 333, column: 8)
!356 = !DILocation(line: 333, column: 20, scope: !355)
!357 = !DILocation(line: 333, column: 8, scope: !284)
!358 = !DILocalVariable(name: "err", scope: !359, file: !33, line: 334, type: !167)
!359 = distinct !DILexicalBlock(scope: !355, file: !33, line: 333, column: 28)
!360 = !DILocation(line: 334, column: 15, scope: !359)
!361 = !DILocation(line: 337, column: 33, scope: !359)
!362 = !DILocation(line: 337, column: 7, scope: !359)
!363 = !DILocation(line: 338, column: 11, scope: !364)
!364 = distinct !DILexicalBlock(scope: !359, file: !33, line: 338, column: 11)
!365 = !DILocation(line: 338, column: 15, scope: !364)
!366 = !DILocation(line: 338, column: 11, scope: !359)
!367 = !DILocation(line: 339, column: 10, scope: !368)
!368 = distinct !DILexicalBlock(scope: !364, file: !33, line: 338, column: 23)
!369 = !DILocation(line: 341, column: 113, scope: !370)
!370 = distinct !DILexicalBlock(scope: !364, file: !33, line: 340, column: 14)
!371 = !DILocation(line: 341, column: 118, scope: !370)
!372 = !DILocation(line: 341, column: 10, scope: !370)
!373 = !DILocation(line: 343, column: 10, scope: !370)
!374 = !DILocation(line: 345, column: 4, scope: !359)
!375 = !DILocation(line: 350, column: 34, scope: !284)
!376 = !DILocation(line: 348, column: 18, scope: !284)
!377 = !DILocation(line: 348, column: 4, scope: !284)
!378 = !DILocation(line: 348, column: 10, scope: !284)
!379 = !DILocation(line: 348, column: 16, scope: !284)
!380 = !DILocation(line: 354, column: 26, scope: !284)
!381 = !DILocation(line: 354, column: 4, scope: !284)
!382 = !DILocation(line: 355, column: 11, scope: !284)
!383 = !DILocation(line: 355, column: 4, scope: !284)
!384 = distinct !DISubprogram(name: "ToolsCorePoolCancel", scope: !33, file: !33, line: 373, type: !95, isLocal: true, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !160)
!385 = !DILocalVariable(name: "id", arg: 1, scope: !384, file: !33, line: 373, type: !46)
!386 = !DILocation(line: 373, column: 27, scope: !384)
!387 = !DILocalVariable(name: "taskLnk", scope: !384, file: !33, line: 375, type: !123)
!388 = !DILocation(line: 375, column: 11, scope: !384)
!389 = !DILocalVariable(name: "task", scope: !384, file: !33, line: 376, type: !296)
!390 = !DILocation(line: 376, column: 16, scope: !384)
!391 = !DILocalVariable(name: "search", scope: !384, file: !33, line: 377, type: !297)
!392 = !DILocation(line: 377, column: 15, scope: !384)
!393 = !DILocation(line: 377, column: 24, scope: !384)
!394 = !DILocation(line: 377, column: 26, scope: !384)
!395 = !DILocation(line: 379, column: 4, scope: !384)
!396 = distinct !{!396, !395}
!397 = !DILocation(line: 379, column: 12, scope: !398)
!398 = !DILexicalBlockFile(scope: !399, file: !33, discriminator: 1)
!399 = distinct !DILexicalBlock(scope: !400, file: !33, line: 379, column: 12)
!400 = distinct !DILexicalBlock(scope: !384, file: !33, line: 379, column: 6)
!401 = !DILocation(line: 379, column: 15, scope: !398)
!402 = !DILocation(line: 379, column: 23, scope: !403)
!403 = !DILexicalBlockFile(scope: !404, file: !33, discriminator: 2)
!404 = distinct !DILexicalBlock(scope: !399, file: !33, line: 379, column: 21)
!405 = !DILocation(line: 379, column: 32, scope: !406)
!406 = !DILexicalBlockFile(scope: !407, file: !33, discriminator: 3)
!407 = distinct !DILexicalBlock(scope: !399, file: !33, line: 379, column: 30)
!408 = !DILocation(line: 379, column: 110, scope: !406)
!409 = !DILocation(line: 379, column: 121, scope: !410)
!410 = !DILexicalBlockFile(scope: !400, file: !33, discriminator: 4)
!411 = !DILocation(line: 381, column: 24, scope: !384)
!412 = !DILocation(line: 381, column: 4, scope: !384)
!413 = !DILocation(line: 382, column: 16, scope: !414)
!414 = distinct !DILexicalBlock(scope: !384, file: !33, line: 382, column: 8)
!415 = !DILocation(line: 382, column: 9, scope: !414)
!416 = !DILocation(line: 382, column: 8, scope: !384)
!417 = !DILocation(line: 383, column: 7, scope: !418)
!418 = distinct !DILexicalBlock(scope: !414, file: !33, line: 382, column: 24)
!419 = !DILocation(line: 386, column: 41, scope: !384)
!420 = !DILocation(line: 386, column: 52, scope: !384)
!421 = !DILocation(line: 386, column: 14, scope: !384)
!422 = !DILocation(line: 386, column: 12, scope: !384)
!423 = !DILocation(line: 387, column: 8, scope: !424)
!424 = distinct !DILexicalBlock(scope: !384, file: !33, line: 387, column: 8)
!425 = !DILocation(line: 387, column: 16, scope: !424)
!426 = !DILocation(line: 387, column: 8, scope: !384)
!427 = !DILocation(line: 388, column: 14, scope: !428)
!428 = distinct !DILexicalBlock(scope: !424, file: !33, line: 387, column: 24)
!429 = !DILocation(line: 388, column: 23, scope: !428)
!430 = !DILocation(line: 388, column: 12, scope: !428)
!431 = !DILocation(line: 389, column: 34, scope: !428)
!432 = !DILocation(line: 389, column: 45, scope: !428)
!433 = !DILocation(line: 389, column: 7, scope: !428)
!434 = !DILocation(line: 390, column: 4, scope: !428)
!435 = !DILocation(line: 387, column: 28, scope: !436)
!436 = !DILexicalBlockFile(scope: !424, file: !33, discriminator: 1)
!437 = !DILocation(line: 393, column: 26, scope: !384)
!438 = !DILocation(line: 393, column: 4, scope: !384)
!439 = !DILocation(line: 395, column: 8, scope: !440)
!440 = distinct !DILexicalBlock(scope: !384, file: !33, line: 395, column: 8)
!441 = !DILocation(line: 395, column: 13, scope: !440)
!442 = !DILocation(line: 395, column: 8, scope: !384)
!443 = !DILocation(line: 396, column: 11, scope: !444)
!444 = distinct !DILexicalBlock(scope: !445, file: !33, line: 396, column: 11)
!445 = distinct !DILexicalBlock(scope: !440, file: !33, line: 395, column: 21)
!446 = !DILocation(line: 396, column: 17, scope: !444)
!447 = !DILocation(line: 396, column: 23, scope: !444)
!448 = !DILocation(line: 396, column: 11, scope: !445)
!449 = !DILocation(line: 397, column: 26, scope: !450)
!450 = distinct !DILexicalBlock(scope: !444, file: !33, line: 396, column: 28)
!451 = !DILocation(line: 397, column: 32, scope: !450)
!452 = !DILocation(line: 397, column: 10, scope: !450)
!453 = !DILocation(line: 398, column: 7, scope: !450)
!454 = !DILocation(line: 399, column: 35, scope: !455)
!455 = distinct !DILexicalBlock(scope: !444, file: !33, line: 398, column: 14)
!456 = !DILocation(line: 399, column: 10, scope: !455)
!457 = !DILocation(line: 401, column: 4, scope: !445)
!458 = !DILocation(line: 402, column: 1, scope: !384)
!459 = distinct !DISubprogram(name: "ToolsCorePoolStart", scope: !33, file: !33, line: 425, type: !99, isLocal: true, isDefinition: true, scopeLine: 430, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !160)
!460 = !DILocalVariable(name: "ctx", arg: 1, scope: !459, file: !33, line: 425, type: !49)
!461 = !DILocation(line: 425, column: 33, scope: !459)
!462 = !DILocalVariable(name: "cb", arg: 2, scope: !459, file: !33, line: 426, type: !85)
!463 = !DILocation(line: 426, column: 36, scope: !459)
!464 = !DILocalVariable(name: "interrupt", arg: 3, scope: !459, file: !33, line: 427, type: !85)
!465 = !DILocation(line: 427, column: 36, scope: !459)
!466 = !DILocalVariable(name: "data", arg: 4, scope: !459, file: !33, line: 428, type: !84)
!467 = !DILocation(line: 428, column: 29, scope: !459)
!468 = !DILocalVariable(name: "dtor", arg: 5, scope: !459, file: !33, line: 429, type: !89)
!469 = !DILocation(line: 429, column: 35, scope: !459)
!470 = !DILocalVariable(name: "err", scope: !459, file: !33, line: 431, type: !167)
!471 = !DILocation(line: 431, column: 12, scope: !459)
!472 = !DILocalVariable(name: "task", scope: !459, file: !33, line: 432, type: !473)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, align: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "StandaloneTask", file: !33, line: 64, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "StandaloneTask", file: !33, line: 57, size: 384, align: 64, elements: !476)
!476 = !{!477, !478, !479, !480, !481, !495}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !475, file: !33, line: 58, baseType: !60, size: 32, align: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !475, file: !33, line: 59, baseType: !85, size: 64, align: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !475, file: !33, line: 60, baseType: !85, size: 64, align: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !475, file: !33, line: 61, baseType: !84, size: 64, align: 64, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !475, file: !33, line: 62, baseType: !482, size: 64, align: 64, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64, align: 64)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "GThread", file: !145, line: 49, baseType: !484)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GThread", file: !20, line: 48, size: 192, align: 64, elements: !485)
!485 = !{!486, !491, !492, !493}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !484, file: !20, line: 51, baseType: !487, size: 64, align: 64)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "GThreadFunc", file: !145, line: 47, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64, align: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!84, !84}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !484, file: !20, line: 52, baseType: !84, size: 64, align: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "joinable", scope: !484, file: !20, line: 53, baseType: !60, size: 32, align: 32, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !484, file: !20, line: 54, baseType: !494, size: 32, align: 32, offset: 160)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "GThreadPriority", file: !20, line: 44, baseType: !19)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "dtor", scope: !475, file: !33, line: 63, baseType: !89, size: 64, align: 64, offset: 320)
!496 = !DILocation(line: 432, column: 20, scope: !459)
!497 = !DILocation(line: 434, column: 24, scope: !459)
!498 = !DILocation(line: 434, column: 4, scope: !459)
!499 = !DILocation(line: 435, column: 16, scope: !500)
!500 = distinct !DILexicalBlock(scope: !459, file: !33, line: 435, column: 8)
!501 = !DILocation(line: 435, column: 9, scope: !500)
!502 = !DILocation(line: 435, column: 8, scope: !459)
!503 = !DILocation(line: 436, column: 7, scope: !504)
!504 = distinct !DILexicalBlock(scope: !500, file: !33, line: 435, column: 24)
!505 = !DILocation(line: 439, column: 11, scope: !459)
!506 = !DILocation(line: 439, column: 9, scope: !459)
!507 = !DILocation(line: 440, column: 4, scope: !459)
!508 = !DILocation(line: 440, column: 10, scope: !459)
!509 = !DILocation(line: 440, column: 17, scope: !459)
!510 = !DILocation(line: 441, column: 15, scope: !459)
!511 = !DILocation(line: 441, column: 4, scope: !459)
!512 = !DILocation(line: 441, column: 10, scope: !459)
!513 = !DILocation(line: 441, column: 13, scope: !459)
!514 = !DILocation(line: 442, column: 22, scope: !459)
!515 = !DILocation(line: 442, column: 4, scope: !459)
!516 = !DILocation(line: 442, column: 10, scope: !459)
!517 = !DILocation(line: 442, column: 20, scope: !459)
!518 = !DILocation(line: 443, column: 17, scope: !459)
!519 = !DILocation(line: 443, column: 4, scope: !459)
!520 = !DILocation(line: 443, column: 10, scope: !459)
!521 = !DILocation(line: 443, column: 15, scope: !459)
!522 = !DILocation(line: 444, column: 17, scope: !459)
!523 = !DILocation(line: 444, column: 4, scope: !459)
!524 = !DILocation(line: 444, column: 10, scope: !459)
!525 = !DILocation(line: 444, column: 15, scope: !459)
!526 = !DILocation(line: 445, column: 59, scope: !459)
!527 = !DILocation(line: 445, column: 19, scope: !459)
!528 = !DILocation(line: 445, column: 4, scope: !459)
!529 = !DILocation(line: 445, column: 10, scope: !459)
!530 = !DILocation(line: 445, column: 17, scope: !459)
!531 = !DILocation(line: 447, column: 8, scope: !532)
!532 = distinct !DILexicalBlock(scope: !459, file: !33, line: 447, column: 8)
!533 = !DILocation(line: 447, column: 12, scope: !532)
!534 = !DILocation(line: 447, column: 8, scope: !459)
!535 = !DILocation(line: 448, column: 30, scope: !536)
!536 = distinct !DILexicalBlock(scope: !532, file: !33, line: 447, column: 20)
!537 = !DILocation(line: 448, column: 39, scope: !536)
!538 = !DILocation(line: 448, column: 7, scope: !536)
!539 = !DILocation(line: 449, column: 4, scope: !536)
!540 = !DILocation(line: 450, column: 78, scope: !541)
!541 = distinct !DILexicalBlock(scope: !532, file: !33, line: 449, column: 11)
!542 = !DILocation(line: 450, column: 83, scope: !541)
!543 = !DILocation(line: 450, column: 7, scope: !541)
!544 = !DILocation(line: 451, column: 7, scope: !541)
!545 = !DILocation(line: 452, column: 14, scope: !541)
!546 = !DILocation(line: 452, column: 7, scope: !541)
!547 = !DILocation(line: 453, column: 12, scope: !541)
!548 = !DILocation(line: 447, column: 24, scope: !549)
!549 = !DILexicalBlockFile(scope: !532, file: !33, discriminator: 1)
!550 = !DILocation(line: 457, column: 26, scope: !459)
!551 = !DILocation(line: 457, column: 4, scope: !459)
!552 = !DILocation(line: 458, column: 11, scope: !459)
!553 = !DILocation(line: 458, column: 16, scope: !459)
!554 = !DILocation(line: 458, column: 4, scope: !459)
!555 = distinct !DISubprogram(name: "ToolsCorePoolRunWorker", scope: !33, file: !33, line: 255, type: !112, isLocal: true, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !160)
!556 = !DILocalVariable(name: "state", arg: 1, scope: !555, file: !33, line: 255, type: !84)
!557 = !DILocation(line: 255, column: 33, scope: !555)
!558 = !DILocalVariable(name: "clientData", arg: 2, scope: !555, file: !33, line: 256, type: !84)
!559 = !DILocation(line: 256, column: 33, scope: !555)
!560 = !DILocalVariable(name: "work", scope: !555, file: !33, line: 258, type: !296)
!561 = !DILocation(line: 258, column: 16, scope: !555)
!562 = !DILocation(line: 260, column: 24, scope: !555)
!563 = !DILocation(line: 260, column: 4, scope: !555)
!564 = !DILocation(line: 261, column: 35, scope: !555)
!565 = !DILocation(line: 261, column: 11, scope: !555)
!566 = !DILocation(line: 261, column: 9, scope: !555)
!567 = !DILocation(line: 262, column: 26, scope: !555)
!568 = !DILocation(line: 262, column: 4, scope: !555)
!569 = !DILocation(line: 266, column: 24, scope: !555)
!570 = !DILocation(line: 266, column: 4, scope: !555)
!571 = !DILocation(line: 267, column: 29, scope: !555)
!572 = !DILocation(line: 267, column: 4, scope: !555)
!573 = !DILocation(line: 268, column: 1, scope: !555)
!574 = distinct !DISubprogram(name: "ToolsCorePool_Shutdown", scope: !33, file: !33, line: 552, type: !158, isLocal: false, isDefinition: true, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !160)
!575 = !DILocalVariable(name: "ctx", arg: 1, scope: !574, file: !33, line: 552, type: !49)
!576 = !DILocation(line: 552, column: 37, scope: !574)
!577 = !DILocalVariable(name: "i", scope: !574, file: !33, line: 554, type: !46)
!578 = !DILocation(line: 554, column: 10, scope: !574)
!579 = !DILocation(line: 556, column: 24, scope: !574)
!580 = !DILocation(line: 556, column: 4, scope: !574)
!581 = !DILocation(line: 557, column: 18, scope: !574)
!582 = !DILocation(line: 558, column: 26, scope: !574)
!583 = !DILocation(line: 558, column: 4, scope: !574)
!584 = !DILocation(line: 561, column: 11, scope: !585)
!585 = distinct !DILexicalBlock(scope: !574, file: !33, line: 561, column: 4)
!586 = !DILocation(line: 561, column: 9, scope: !585)
!587 = !DILocation(line: 561, column: 16, scope: !588)
!588 = !DILexicalBlockFile(scope: !589, file: !33, discriminator: 1)
!589 = distinct !DILexicalBlock(scope: !585, file: !33, line: 561, column: 4)
!590 = !DILocation(line: 561, column: 27, scope: !588)
!591 = !DILocation(line: 561, column: 36, scope: !588)
!592 = !DILocation(line: 561, column: 18, scope: !588)
!593 = !DILocation(line: 561, column: 4, scope: !588)
!594 = !DILocalVariable(name: "task", scope: !595, file: !33, line: 562, type: !473)
!595 = distinct !DILexicalBlock(scope: !589, file: !33, line: 561, column: 46)
!596 = !DILocation(line: 562, column: 23, scope: !595)
!597 = !DILocation(line: 562, column: 56, scope: !595)
!598 = !DILocation(line: 562, column: 30, scope: !595)
!599 = !DILocation(line: 562, column: 39, scope: !595)
!600 = !DILocation(line: 562, column: 49, scope: !595)
!601 = !DILocation(line: 563, column: 11, scope: !602)
!602 = distinct !DILexicalBlock(scope: !595, file: !33, line: 563, column: 11)
!603 = !DILocation(line: 563, column: 17, scope: !602)
!604 = !DILocation(line: 563, column: 24, scope: !602)
!605 = !DILocation(line: 563, column: 27, scope: !606)
!606 = !DILexicalBlockFile(scope: !602, file: !33, discriminator: 1)
!607 = !DILocation(line: 563, column: 33, scope: !606)
!608 = !DILocation(line: 563, column: 11, scope: !606)
!609 = !DILocation(line: 564, column: 10, scope: !610)
!610 = distinct !DILexicalBlock(scope: !602, file: !33, line: 563, column: 44)
!611 = !DILocation(line: 564, column: 16, scope: !610)
!612 = !DILocation(line: 564, column: 33, scope: !610)
!613 = !DILocation(line: 564, column: 38, scope: !610)
!614 = !DILocation(line: 564, column: 44, scope: !610)
!615 = !DILocation(line: 565, column: 7, scope: !610)
!616 = !DILocation(line: 566, column: 4, scope: !595)
!617 = !DILocation(line: 561, column: 42, scope: !618)
!618 = !DILexicalBlockFile(scope: !589, file: !33, discriminator: 2)
!619 = !DILocation(line: 561, column: 4, scope: !618)
!620 = distinct !{!620, !621}
!621 = !DILocation(line: 561, column: 4, scope: !574)
!622 = !DILocation(line: 569, column: 15, scope: !623)
!623 = distinct !DILexicalBlock(scope: !574, file: !33, line: 569, column: 8)
!624 = !DILocation(line: 569, column: 20, scope: !623)
!625 = !DILocation(line: 569, column: 8, scope: !574)
!626 = !DILocation(line: 570, column: 33, scope: !627)
!627 = distinct !DILexicalBlock(scope: !623, file: !33, line: 569, column: 28)
!628 = !DILocation(line: 570, column: 7, scope: !627)
!629 = !DILocation(line: 571, column: 4, scope: !627)
!630 = !DILocation(line: 574, column: 11, scope: !631)
!631 = distinct !DILexicalBlock(scope: !574, file: !33, line: 574, column: 4)
!632 = !DILocation(line: 574, column: 9, scope: !631)
!633 = !DILocation(line: 574, column: 16, scope: !634)
!634 = !DILexicalBlockFile(scope: !635, file: !33, discriminator: 1)
!635 = distinct !DILexicalBlock(scope: !631, file: !33, line: 574, column: 4)
!636 = !DILocation(line: 574, column: 27, scope: !634)
!637 = !DILocation(line: 574, column: 36, scope: !634)
!638 = !DILocation(line: 574, column: 18, scope: !634)
!639 = !DILocation(line: 574, column: 4, scope: !634)
!640 = !DILocalVariable(name: "task", scope: !641, file: !33, line: 575, type: !473)
!641 = distinct !DILexicalBlock(scope: !635, file: !33, line: 574, column: 46)
!642 = !DILocation(line: 575, column: 23, scope: !641)
!643 = !DILocation(line: 575, column: 56, scope: !641)
!644 = !DILocation(line: 575, column: 30, scope: !641)
!645 = !DILocation(line: 575, column: 39, scope: !641)
!646 = !DILocation(line: 575, column: 49, scope: !641)
!647 = !DILocation(line: 576, column: 34, scope: !641)
!648 = !DILocation(line: 576, column: 7, scope: !641)
!649 = !DILocation(line: 577, column: 4, scope: !641)
!650 = !DILocation(line: 574, column: 42, scope: !651)
!651 = !DILexicalBlockFile(scope: !635, file: !33, discriminator: 2)
!652 = !DILocation(line: 574, column: 4, scope: !651)
!653 = distinct !{!653, !654}
!654 = !DILocation(line: 574, column: 4, scope: !574)
!655 = !DILocation(line: 580, column: 4, scope: !574)
!656 = !DILocalVariable(name: "task", scope: !657, file: !33, line: 581, type: !296)
!657 = distinct !DILexicalBlock(scope: !574, file: !33, line: 580, column: 14)
!658 = !DILocation(line: 581, column: 19, scope: !657)
!659 = !DILocation(line: 581, column: 50, scope: !657)
!660 = !DILocation(line: 581, column: 26, scope: !657)
!661 = !DILocation(line: 582, column: 11, scope: !662)
!662 = distinct !DILexicalBlock(scope: !657, file: !33, line: 582, column: 11)
!663 = !DILocation(line: 582, column: 16, scope: !662)
!664 = !DILocation(line: 582, column: 11, scope: !657)
!665 = !DILocation(line: 583, column: 35, scope: !666)
!666 = distinct !DILexicalBlock(scope: !662, file: !33, line: 582, column: 24)
!667 = !DILocation(line: 583, column: 10, scope: !666)
!668 = !DILocation(line: 584, column: 7, scope: !666)
!669 = !DILocation(line: 585, column: 10, scope: !670)
!670 = distinct !DILexicalBlock(scope: !662, file: !33, line: 584, column: 14)
!671 = !DILocation(line: 580, column: 4, scope: !672)
!672 = !DILexicalBlockFile(scope: !574, file: !33, discriminator: 1)
!673 = distinct !{!673, !655}
!674 = !DILocation(line: 590, column: 28, scope: !574)
!675 = !DILocation(line: 590, column: 4, scope: !574)
!676 = !DILocation(line: 591, column: 24, scope: !574)
!677 = !DILocation(line: 591, column: 4, scope: !574)
!678 = !DILocation(line: 592, column: 24, scope: !574)
!679 = !DILocation(line: 592, column: 4, scope: !574)
!680 = !DILocation(line: 593, column: 4, scope: !574)
!681 = !DILocation(line: 594, column: 17, scope: !574)
!682 = !DILocation(line: 594, column: 22, scope: !574)
!683 = !DILocation(line: 594, column: 4, scope: !574)
!684 = !DILocation(line: 595, column: 1, scope: !574)
!685 = distinct !DISubprogram(name: "ToolsCorePoolDestroyThread", scope: !33, file: !33, line: 116, type: !91, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !160)
!686 = !DILocalVariable(name: "data", arg: 1, scope: !685, file: !33, line: 116, type: !84)
!687 = !DILocation(line: 116, column: 37, scope: !685)
!688 = !DILocalVariable(name: "task", scope: !685, file: !33, line: 118, type: !473)
!689 = !DILocation(line: 118, column: 20, scope: !685)
!690 = !DILocation(line: 118, column: 27, scope: !685)
!691 = !DILocation(line: 119, column: 18, scope: !685)
!692 = !DILocation(line: 119, column: 24, scope: !685)
!693 = !DILocation(line: 119, column: 4, scope: !685)
!694 = !DILocation(line: 120, column: 8, scope: !695)
!695 = distinct !DILexicalBlock(scope: !685, file: !33, line: 120, column: 8)
!696 = !DILocation(line: 120, column: 14, scope: !695)
!697 = !DILocation(line: 120, column: 19, scope: !695)
!698 = !DILocation(line: 120, column: 8, scope: !685)
!699 = !DILocation(line: 121, column: 7, scope: !700)
!700 = distinct !DILexicalBlock(scope: !695, file: !33, line: 120, column: 27)
!701 = !DILocation(line: 121, column: 13, scope: !700)
!702 = !DILocation(line: 121, column: 18, scope: !700)
!703 = !DILocation(line: 121, column: 24, scope: !700)
!704 = !DILocation(line: 122, column: 4, scope: !700)
!705 = !DILocation(line: 123, column: 11, scope: !685)
!706 = !DILocation(line: 123, column: 4, scope: !685)
!707 = !DILocation(line: 124, column: 1, scope: !685)
!708 = distinct !DISubprogram(name: "ToolsCorePoolDestroyTask", scope: !33, file: !33, line: 140, type: !91, isLocal: true, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !160)
!709 = !DILocalVariable(name: "data", arg: 1, scope: !708, file: !33, line: 140, type: !84)
!710 = !DILocation(line: 140, column: 35, scope: !708)
!711 = !DILocalVariable(name: "work", scope: !708, file: !33, line: 142, type: !296)
!712 = !DILocation(line: 142, column: 16, scope: !708)
!713 = !DILocation(line: 142, column: 23, scope: !708)
!714 = !DILocation(line: 143, column: 8, scope: !715)
!715 = distinct !DILexicalBlock(scope: !708, file: !33, line: 143, column: 8)
!716 = !DILocation(line: 143, column: 14, scope: !715)
!717 = !DILocation(line: 143, column: 19, scope: !715)
!718 = !DILocation(line: 143, column: 8, scope: !708)
!719 = !DILocation(line: 144, column: 7, scope: !720)
!720 = distinct !DILexicalBlock(scope: !715, file: !33, line: 143, column: 27)
!721 = !DILocation(line: 144, column: 13, scope: !720)
!722 = !DILocation(line: 144, column: 18, scope: !720)
!723 = !DILocation(line: 144, column: 24, scope: !720)
!724 = !DILocation(line: 145, column: 4, scope: !720)
!725 = !DILocation(line: 146, column: 11, scope: !708)
!726 = !DILocation(line: 146, column: 4, scope: !708)
!727 = !DILocation(line: 147, column: 1, scope: !708)
!728 = distinct !DISubprogram(name: "ToolsCorePoolDoWork", scope: !33, file: !33, line: 164, type: !729, isLocal: true, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !160)
!729 = !DISubroutineType(types: !730)
!730 = !{!60, !84}
!731 = !DILocalVariable(name: "data", arg: 1, scope: !728, file: !33, line: 164, type: !84)
!732 = !DILocation(line: 164, column: 30, scope: !728)
!733 = !DILocalVariable(name: "work", scope: !728, file: !33, line: 166, type: !296)
!734 = !DILocation(line: 166, column: 16, scope: !728)
!735 = !DILocation(line: 166, column: 23, scope: !728)
!736 = !DILocation(line: 172, column: 15, scope: !737)
!737 = distinct !DILexicalBlock(scope: !728, file: !33, line: 172, column: 8)
!738 = !DILocation(line: 172, column: 20, scope: !737)
!739 = !DILocation(line: 172, column: 8, scope: !728)
!740 = !DILocation(line: 173, column: 27, scope: !741)
!741 = distinct !DILexicalBlock(scope: !737, file: !33, line: 172, column: 28)
!742 = !DILocation(line: 173, column: 7, scope: !741)
!743 = !DILocation(line: 174, column: 29, scope: !741)
!744 = !DILocation(line: 174, column: 40, scope: !741)
!745 = !DILocation(line: 174, column: 7, scope: !741)
!746 = !DILocation(line: 175, column: 29, scope: !741)
!747 = !DILocation(line: 175, column: 7, scope: !741)
!748 = !DILocation(line: 176, column: 4, scope: !741)
!749 = !DILocation(line: 178, column: 4, scope: !728)
!750 = !DILocation(line: 178, column: 10, scope: !728)
!751 = !DILocation(line: 178, column: 20, scope: !728)
!752 = !DILocation(line: 178, column: 25, scope: !728)
!753 = !DILocation(line: 178, column: 31, scope: !728)
!754 = !DILocation(line: 179, column: 4, scope: !728)
!755 = distinct !DISubprogram(name: "ToolsCorePoolCompareTask", scope: !33, file: !33, line: 85, type: !756, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !160)
!756 = !DISubroutineType(types: !757)
!757 = !{!61, !758, !758}
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !47, line: 78, baseType: !759)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64, align: 64)
!760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!761 = !DILocalVariable(name: "p1", arg: 1, scope: !755, file: !33, line: 85, type: !758)
!762 = !DILocation(line: 85, column: 40, scope: !755)
!763 = !DILocalVariable(name: "p2", arg: 2, scope: !755, file: !33, line: 86, type: !758)
!764 = !DILocation(line: 86, column: 40, scope: !755)
!765 = !DILocalVariable(name: "t1", scope: !755, file: !33, line: 88, type: !766)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64, align: 64)
!767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!768 = !DILocation(line: 88, column: 22, scope: !755)
!769 = !DILocation(line: 88, column: 27, scope: !755)
!770 = !DILocalVariable(name: "t2", scope: !755, file: !33, line: 89, type: !766)
!771 = !DILocation(line: 89, column: 22, scope: !755)
!772 = !DILocation(line: 89, column: 27, scope: !755)
!773 = !DILocation(line: 91, column: 8, scope: !774)
!774 = distinct !DILexicalBlock(scope: !755, file: !33, line: 91, column: 8)
!775 = !DILocation(line: 91, column: 11, scope: !774)
!776 = !DILocation(line: 91, column: 18, scope: !774)
!777 = !DILocation(line: 91, column: 21, scope: !778)
!778 = !DILexicalBlockFile(scope: !774, file: !33, discriminator: 1)
!779 = !DILocation(line: 91, column: 24, scope: !778)
!780 = !DILocation(line: 91, column: 8, scope: !778)
!781 = !DILocation(line: 92, column: 15, scope: !782)
!782 = distinct !DILexicalBlock(scope: !774, file: !33, line: 91, column: 33)
!783 = !DILocation(line: 92, column: 19, scope: !782)
!784 = !DILocation(line: 92, column: 24, scope: !782)
!785 = !DILocation(line: 92, column: 28, scope: !782)
!786 = !DILocation(line: 92, column: 22, scope: !782)
!787 = !DILocation(line: 92, column: 7, scope: !782)
!788 = !DILocation(line: 95, column: 8, scope: !789)
!789 = distinct !DILexicalBlock(scope: !755, file: !33, line: 95, column: 8)
!790 = !DILocation(line: 95, column: 11, scope: !789)
!791 = !DILocation(line: 95, column: 18, scope: !789)
!792 = !DILocation(line: 95, column: 21, scope: !793)
!793 = !DILexicalBlockFile(scope: !789, file: !33, discriminator: 1)
!794 = !DILocation(line: 95, column: 24, scope: !793)
!795 = !DILocation(line: 95, column: 8, scope: !793)
!796 = !DILocation(line: 96, column: 7, scope: !797)
!797 = distinct !DILexicalBlock(scope: !789, file: !33, line: 95, column: 33)
!798 = !DILocation(line: 99, column: 12, scope: !755)
!799 = !DILocation(line: 99, column: 15, scope: !755)
!800 = !DILocation(line: 99, column: 11, scope: !755)
!801 = !DILocation(line: 99, column: 4, scope: !755)
!802 = !DILocation(line: 100, column: 1, scope: !755)
!803 = distinct !DISubprogram(name: "ToolsCorePoolRunThread", scope: !33, file: !33, line: 219, type: !489, isLocal: true, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !160)
!804 = !DILocalVariable(name: "data", arg: 1, scope: !803, file: !33, line: 219, type: !84)
!805 = !DILocation(line: 219, column: 33, scope: !803)
!806 = !DILocalVariable(name: "task", scope: !803, file: !33, line: 221, type: !473)
!807 = !DILocation(line: 221, column: 20, scope: !803)
!808 = !DILocation(line: 221, column: 27, scope: !803)
!809 = !DILocation(line: 223, column: 4, scope: !803)
!810 = !DILocation(line: 223, column: 10, scope: !803)
!811 = !DILocation(line: 223, column: 20, scope: !803)
!812 = !DILocation(line: 223, column: 25, scope: !803)
!813 = !DILocation(line: 223, column: 31, scope: !803)
!814 = !DILocation(line: 224, column: 4, scope: !803)
!815 = !DILocation(line: 224, column: 10, scope: !803)
!816 = !DILocation(line: 224, column: 17, scope: !803)
!817 = !DILocation(line: 226, column: 24, scope: !803)
!818 = !DILocation(line: 226, column: 4, scope: !803)
!819 = !DILocation(line: 228, column: 15, scope: !820)
!820 = distinct !DILexicalBlock(scope: !803, file: !33, line: 228, column: 8)
!821 = !DILocation(line: 228, column: 8, scope: !820)
!822 = !DILocation(line: 228, column: 8, scope: !803)
!823 = !DILocation(line: 229, column: 33, scope: !824)
!824 = distinct !DILexicalBlock(scope: !820, file: !33, line: 228, column: 23)
!825 = !DILocation(line: 229, column: 42, scope: !824)
!826 = !DILocation(line: 229, column: 7, scope: !824)
!827 = !DILocation(line: 232, column: 23, scope: !824)
!828 = !DILocation(line: 230, column: 7, scope: !824)
!829 = !DILocation(line: 234, column: 4, scope: !824)
!830 = !DILocation(line: 235, column: 26, scope: !803)
!831 = !DILocation(line: 235, column: 4, scope: !803)
!832 = !DILocation(line: 237, column: 4, scope: !803)
!833 = distinct !DISubprogram(name: "ToolsCorePoolNoOp", scope: !33, file: !33, line: 198, type: !729, isLocal: true, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !160)
!834 = !DILocalVariable(name: "data", arg: 1, scope: !833, file: !33, line: 198, type: !84)
!835 = !DILocation(line: 198, column: 28, scope: !833)
!836 = !DILocation(line: 200, column: 4, scope: !833)
