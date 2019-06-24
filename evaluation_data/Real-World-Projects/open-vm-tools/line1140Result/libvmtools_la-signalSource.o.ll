; ModuleID = './libvmtools_la-signalSource.o.i'
source_filename = "./libvmtools_la-signalSource.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%union._GMutex = type { i8* }
%struct.SignalHandler = type { i32, [2 x i32], %struct.sigaction, %struct._GPollFD, [65 x i32], %struct.siginfo_t }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }
%struct._GPollFD = type { i32, i16, i16 }
%struct.siginfo_t = type { i32, i32, i32, %union.anon.0 }
%union.anon.0 = type { %struct.anon.3, [80 x i8] }
%struct.anon.3 = type { i32, i32, i32, i64, i64 }
%struct.SignalSource = type { %struct._GSource, i32 }

@VMTools_NewSignalSource.srcFuncs = internal global %struct._GSourceFuncs { i32 (%struct._GSource*, i32*)* @SignalSourcePrepare, i32 (%struct._GSource*)* @SignalSourceCheck, i32 (%struct._GSource*, i32 (i8*)*, i8*)* @SignalSourceDispatch, void (%struct._GSource*)* @SignalSourceFinalize, i32 (i8*)* null, void ()* null }, align 8
@g__gLock_lock = internal global %union._GMutex zeroinitializer, align 8
@gHandler = internal global %struct.SignalHandler zeroinitializer, align 8
@.str = private unnamed_addr constant [31 x i8] c"Cannot set signal handler: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Signal source: reading from wake up fd failed.\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Too many signals queued, this shouldn't happen.\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Could not queue signal %d (error %d: %s)\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GSource* @VMTools_NewSignalSource(i32) #0 !dbg !207 {
  %2 = alloca %struct._GSource*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.SignalSource*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !277, metadata !278), !dbg !279
  call void @llvm.dbg.declare(metadata %struct.SignalSource** %4, metadata !280, metadata !278), !dbg !281
  call void @g_mutex_lock(%union._GMutex* @g__gLock_lock), !dbg !282
  %5 = load i32, i32* getelementptr inbounds (%struct.SignalHandler, %struct.SignalHandler* @gHandler, i32 0, i32 0), align 8, !dbg !283
  %6 = icmp ne i32 %5, 0, !dbg !285
  br i1 %6, label %21, label %7, !dbg !286

; <label>:7:                                      ; preds = %1
  %8 = call i32 @pipe(i32* getelementptr inbounds (%struct.SignalHandler, %struct.SignalHandler* @gHandler, i32 0, i32 1, i32 0)) #7, !dbg !287
  %9 = icmp eq i32 %8, -1, !dbg !290
  br i1 %9, label %18, label %10, !dbg !291

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* getelementptr inbounds (%struct.SignalHandler, %struct.SignalHandler* @gHandler, i32 0, i32 1, i64 0), align 4, !dbg !292
  %12 = call i32 (i32, i32, ...) @fcntl(i32 %11, i32 4, i32 2048), !dbg !293
  %13 = icmp slt i32 %12, 0, !dbg !294
  br i1 %13, label %18, label %14, !dbg !295

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* getelementptr inbounds (%struct.SignalHandler, %struct.SignalHandler* @gHandler, i32 0, i32 1, i64 1), align 4, !dbg !296
  %16 = call i32 (i32, i32, ...) @fcntl(i32 %15, i32 4, i32 2049), !dbg !297
  %17 = icmp slt i32 %16, 0, !dbg !298
  br i1 %17, label %18, label %19, !dbg !299

; <label>:18:                                     ; preds = %14, %10, %7
  br label %19, !dbg !301

; <label>:19:                                     ; preds = %18, %14
  %20 = load i32, i32* getelementptr inbounds (%struct.SignalHandler, %struct.SignalHandler* @gHandler, i32 0, i32 1, i64 0), align 4, !dbg !303
  store i32 %20, i32* getelementptr inbounds (%struct.SignalHandler, %struct.SignalHandler* @gHandler, i32 0, i32 3, i32 0), align 8, !dbg !304
  store i16 9, i16* getelementptr inbounds (%struct.SignalHandler, %struct.SignalHandler* @gHandler, i32 0, i32 3, i32 1), align 4, !dbg !305
  store void (i32, %struct.siginfo_t*, i8*)* @SignalSourceSigHandler, void (i32, %struct.siginfo_t*, i8*)** bitcast (%union.anon* getelementptr inbounds (%struct.SignalHandler, %struct.SignalHandler* @gHandler, i32 0, i32 2, i32 0) to void (i32, %struct.siginfo_t*, i8*)**), align 8, !dbg !306
  store i32 4, i32* getelementptr inbounds (%struct.SignalHandler, %struct.SignalHandler* @gHandler, i32 0, i32 2, i32 2), align 8, !dbg !307
  store i32 1, i32* getelementptr inbounds (%struct.SignalHandler, %struct.SignalHandler* @gHandler, i32 0, i32 0), align 8, !dbg !308
  br label %21, !dbg !309

; <label>:21:                                     ; preds = %19, %1
  call void @g_mutex_unlock(%union._GMutex* @g__gLock_lock), !dbg !310
  %22 = load i32, i32* %3, align 4, !dbg !311
  %23 = sext i32 %22 to i64, !dbg !313
  %24 = getelementptr inbounds [65 x i32], [65 x i32]* getelementptr inbounds (%struct.SignalHandler, %struct.SignalHandler* @gHandler, i32 0, i32 4), i64 0, i64 %23, !dbg !313
  %25 = load i32, i32* %24, align 4, !dbg !313
  %26 = icmp eq i32 %25, 0, !dbg !314
  br i1 %26, label %27, label %39, !dbg !315

; <label>:27:                                     ; preds = %21
  %28 = load i32, i32* %3, align 4, !dbg !316
  %29 = call i32 @sigaction(i32 %28, %struct.sigaction* getelementptr inbounds (%struct.SignalHandler, %struct.SignalHandler* @gHandler, i32 0, i32 2), %struct.sigaction* null) #7, !dbg !319
  %30 = icmp eq i32 %29, -1, !dbg !320
  br i1 %30, label %31, label %35, !dbg !321

; <label>:31:                                     ; preds = %27
  %32 = call i32* @__errno_location() #1, !dbg !322
  %33 = load i32, i32* %32, align 4, !dbg !324
  %34 = call i8* @strerror(i32 %33) #7, !dbg !325
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* %34), !dbg !327
  store %struct._GSource* null, %struct._GSource** %2, align 8, !dbg !329
  br label %49, !dbg !329

; <label>:35:                                     ; preds = %27
  %36 = load i32, i32* %3, align 4, !dbg !330
  %37 = sext i32 %36 to i64, !dbg !331
  %38 = getelementptr inbounds [65 x i32], [65 x i32]* getelementptr inbounds (%struct.SignalHandler, %struct.SignalHandler* @gHandler, i32 0, i32 4), i64 0, i64 %37, !dbg !331
  store i32 1, i32* %38, align 4, !dbg !332
  br label %39, !dbg !333

; <label>:39:                                     ; preds = %35, %21
  %40 = call %struct._GSource* @g_source_new(%struct._GSourceFuncs* @VMTools_NewSignalSource.srcFuncs, i32 104), !dbg !334
  %41 = bitcast %struct._GSource* %40 to %struct.SignalSource*, !dbg !335
  store %struct.SignalSource* %41, %struct.SignalSource** %4, align 8, !dbg !336
  %42 = load i32, i32* %3, align 4, !dbg !337
  %43 = load %struct.SignalSource*, %struct.SignalSource** %4, align 8, !dbg !338
  %44 = getelementptr inbounds %struct.SignalSource, %struct.SignalSource* %43, i32 0, i32 1, !dbg !339
  store i32 %42, i32* %44, align 8, !dbg !340
  %45 = load %struct.SignalSource*, %struct.SignalSource** %4, align 8, !dbg !341
  %46 = getelementptr inbounds %struct.SignalSource, %struct.SignalSource* %45, i32 0, i32 0, !dbg !342
  call void @g_source_add_poll(%struct._GSource* %46, %struct._GPollFD* getelementptr inbounds (%struct.SignalHandler, %struct.SignalHandler* @gHandler, i32 0, i32 3)), !dbg !343
  %47 = load %struct.SignalSource*, %struct.SignalSource** %4, align 8, !dbg !344
  %48 = getelementptr inbounds %struct.SignalSource, %struct.SignalSource* %47, i32 0, i32 0, !dbg !345
  store %struct._GSource* %48, %struct._GSource** %2, align 8, !dbg !346
  br label %49, !dbg !346

; <label>:49:                                     ; preds = %39, %31
  %50 = load %struct._GSource*, %struct._GSource** %2, align 8, !dbg !347
  ret %struct._GSource* %50, !dbg !347
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i32 @SignalSourcePrepare(%struct._GSource*, i32*) #0 !dbg !348 {
  %3 = alloca %struct._GSource*, align 8
  %4 = alloca i32*, align 8
  store %struct._GSource* %0, %struct._GSource** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GSource** %3, metadata !349, metadata !278), !dbg !350
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !351, metadata !278), !dbg !352
  %5 = load i32*, i32** %4, align 8, !dbg !353
  store i32 -1, i32* %5, align 4, !dbg !354
  ret i32 0, !dbg !355
}

; Function Attrs: nounwind uwtable
define internal i32 @SignalSourceCheck(%struct._GSource*) #0 !dbg !356 {
  %2 = alloca %struct._GSource*, align 8
  %3 = alloca %struct.SignalSource*, align 8
  store %struct._GSource* %0, %struct._GSource** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._GSource** %2, metadata !357, metadata !278), !dbg !358
  call void @llvm.dbg.declare(metadata %struct.SignalSource** %3, metadata !359, metadata !278), !dbg !360
  %4 = load %struct._GSource*, %struct._GSource** %2, align 8, !dbg !361
  %5 = bitcast %struct._GSource* %4 to %struct.SignalSource*, !dbg !362
  store %struct.SignalSource* %5, %struct.SignalSource** %3, align 8, !dbg !360
  call void @SignalSourceReadSigInfo(), !dbg !363
  %6 = load %struct.SignalSource*, %struct.SignalSource** %3, align 8, !dbg !364
  %7 = getelementptr inbounds %struct.SignalSource, %struct.SignalSource* %6, i32 0, i32 1, !dbg !365
  %8 = load i32, i32* %7, align 8, !dbg !365
  %9 = sext i32 %8 to i64, !dbg !366
  %10 = getelementptr inbounds [65 x i32], [65 x i32]* getelementptr inbounds (%struct.SignalHandler, %struct.SignalHandler* @gHandler, i32 0, i32 4), i64 0, i64 %9, !dbg !366
  %11 = load i32, i32* %10, align 4, !dbg !366
  %12 = icmp eq i32 %11, 2, !dbg !367
  %13 = zext i1 %12 to i32, !dbg !367
  ret i32 %13, !dbg !368
}

; Function Attrs: nounwind uwtable
define internal i32 @SignalSourceDispatch(%struct._GSource*, i32 (i8*)*, i8*) #0 !dbg !369 {
  %4 = alloca %struct._GSource*, align 8
  %5 = alloca i32 (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (%struct.siginfo_t*, i8*)*, align 8
  %8 = alloca %struct.SignalSource*, align 8
  store %struct._GSource* %0, %struct._GSource** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GSource** %4, metadata !370, metadata !278), !dbg !371
  store i32 (i8*)* %1, i32 (i8*)** %5, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*)** %5, metadata !372, metadata !278), !dbg !373
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !374, metadata !278), !dbg !375
  call void @llvm.dbg.declare(metadata i32 (%struct.siginfo_t*, i8*)** %7, metadata !376, metadata !278), !dbg !377
  %9 = load i32 (i8*)*, i32 (i8*)** %5, align 8, !dbg !378
  %10 = bitcast i32 (i8*)* %9 to i32 (%struct.siginfo_t*, i8*)*, !dbg !379
  store i32 (%struct.siginfo_t*, i8*)* %10, i32 (%struct.siginfo_t*, i8*)** %7, align 8, !dbg !377
  call void @llvm.dbg.declare(metadata %struct.SignalSource** %8, metadata !380, metadata !278), !dbg !381
  %11 = load %struct._GSource*, %struct._GSource** %4, align 8, !dbg !382
  %12 = bitcast %struct._GSource* %11 to %struct.SignalSource*, !dbg !383
  store %struct.SignalSource* %12, %struct.SignalSource** %8, align 8, !dbg !381
  %13 = load %struct.SignalSource*, %struct.SignalSource** %8, align 8, !dbg !384
  %14 = getelementptr inbounds %struct.SignalSource, %struct.SignalSource* %13, i32 0, i32 1, !dbg !385
  %15 = load i32, i32* %14, align 8, !dbg !385
  %16 = sext i32 %15 to i64, !dbg !386
  %17 = getelementptr inbounds [65 x i32], [65 x i32]* getelementptr inbounds (%struct.SignalHandler, %struct.SignalHandler* @gHandler, i32 0, i32 4), i64 0, i64 %16, !dbg !386
  store i32 1, i32* %17, align 4, !dbg !387
  %18 = load i32 (%struct.siginfo_t*, i8*)*, i32 (%struct.siginfo_t*, i8*)** %7, align 8, !dbg !388
  %19 = icmp ne i32 (%struct.siginfo_t*, i8*)* %18, null, !dbg !389
  br i1 %19, label %20, label %24, !dbg !390

; <label>:20:                                     ; preds = %3
  %21 = load i32 (%struct.siginfo_t*, i8*)*, i32 (%struct.siginfo_t*, i8*)** %7, align 8, !dbg !391
  %22 = load i8*, i8** %6, align 8, !dbg !393
  %23 = call i32 %21(%struct.siginfo_t* getelementptr inbounds (%struct.SignalHandler, %struct.SignalHandler* @gHandler, i32 0, i32 5), i8* %22), !dbg !391
  br label %25, !dbg !394

; <label>:24:                                     ; preds = %3
  br label %25, !dbg !395

; <label>:25:                                     ; preds = %24, %20
  %26 = phi i32 [ %23, %20 ], [ 0, %24 ], !dbg !397
  ret i32 %26, !dbg !399
}

; Function Attrs: nounwind uwtable
define internal void @SignalSourceFinalize(%struct._GSource*) #0 !dbg !400 {
  %2 = alloca %struct._GSource*, align 8
  store %struct._GSource* %0, %struct._GSource** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._GSource** %2, metadata !401, metadata !278), !dbg !402
  ret void, !dbg !403
}

declare void @g_mutex_lock(%union._GMutex*) #2

; Function Attrs: nounwind
declare i32 @pipe(i32*) #3

declare i32 @fcntl(i32, i32, ...) #2

; Function Attrs: nounwind uwtable
define internal void @SignalSourceSigHandler(i32, %struct.siginfo_t*, i8*) #0 !dbg !404 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.siginfo_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.siginfo_t, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !405, metadata !278), !dbg !406
  store %struct.siginfo_t* %1, %struct.siginfo_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.siginfo_t** %5, metadata !407, metadata !278), !dbg !408
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !409, metadata !278), !dbg !410
  call void @llvm.dbg.declare(metadata i64* %7, metadata !411, metadata !278), !dbg !415
  call void @llvm.dbg.declare(metadata %struct.siginfo_t* %8, metadata !416, metadata !278), !dbg !417
  %9 = load i32, i32* %4, align 4, !dbg !418
  %10 = icmp sge i32 %9, 65, !dbg !420
  br i1 %10, label %14, label %11, !dbg !421

; <label>:11:                                     ; preds = %3
  %12 = load i32, i32* %4, align 4, !dbg !422
  %13 = icmp slt i32 %12, 0, !dbg !424
  br i1 %13, label %14, label %15, !dbg !425

; <label>:14:                                     ; preds = %11, %3
  br label %42, !dbg !426

; <label>:15:                                     ; preds = %11
  %16 = load %struct.siginfo_t*, %struct.siginfo_t** %5, align 8, !dbg !428
  %17 = icmp eq %struct.siginfo_t* %16, null, !dbg !430
  br i1 %17, label %18, label %22, !dbg !431

; <label>:18:                                     ; preds = %15
  %19 = bitcast %struct.siginfo_t* %8 to i8*, !dbg !432
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 128, i32 8, i1 false), !dbg !432
  %20 = load i32, i32* %4, align 4, !dbg !434
  %21 = getelementptr inbounds %struct.siginfo_t, %struct.siginfo_t* %8, i32 0, i32 0, !dbg !435
  store i32 %20, i32* %21, align 8, !dbg !436
  store %struct.siginfo_t* %8, %struct.siginfo_t** %5, align 8, !dbg !437
  br label %22, !dbg !438

; <label>:22:                                     ; preds = %18, %15
  %23 = load i32, i32* getelementptr inbounds (%struct.SignalHandler, %struct.SignalHandler* @gHandler, i32 0, i32 1, i64 1), align 4, !dbg !439
  %24 = load %struct.siginfo_t*, %struct.siginfo_t** %5, align 8, !dbg !440
  %25 = bitcast %struct.siginfo_t* %24 to i8*, !dbg !440
  %26 = call i64 @write(i32 %23, i8* %25, i64 128), !dbg !441
  store i64 %26, i64* %7, align 8, !dbg !442
  %27 = load i64, i64* %7, align 8, !dbg !443
  %28 = icmp eq i64 %27, -1, !dbg !445
  br i1 %28, label %29, label %42, !dbg !446

; <label>:29:                                     ; preds = %22
  %30 = call i32* @__errno_location() #1, !dbg !447
  %31 = load i32, i32* %30, align 4, !dbg !450
  %32 = icmp eq i32 %31, 11, !dbg !451
  br i1 %32, label %33, label %34, !dbg !452

; <label>:33:                                     ; preds = %29
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0)), !dbg !453
  br label %41, !dbg !455

; <label>:34:                                     ; preds = %29
  %35 = load i32, i32* %4, align 4, !dbg !456
  %36 = call i32* @__errno_location() #1, !dbg !458
  %37 = load i32, i32* %36, align 4, !dbg !459
  %38 = call i32* @__errno_location() #1, !dbg !460
  %39 = load i32, i32* %38, align 4, !dbg !459
  %40 = call i8* @strerror(i32 %39) #7, !dbg !462
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i32 %35, i32 %37, i8* %40), !dbg !464
  br label %41

; <label>:41:                                     ; preds = %34, %33
  br label %42, !dbg !466

; <label>:42:                                     ; preds = %14, %41, %22
  ret void, !dbg !467
}

declare void @g_mutex_unlock(%union._GMutex*) #2

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #3

declare void @g_log(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare %struct._GSource* @g_source_new(%struct._GSourceFuncs*, i32) #2

declare void @g_source_add_poll(%struct._GSource*, %struct._GPollFD*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @SignalSourceReadSigInfo() #5 !dbg !468 {
  %1 = alloca %struct.siginfo_t, align 8
  %2 = alloca i64, align 8
  %3 = load i16, i16* getelementptr inbounds (%struct.SignalHandler, %struct.SignalHandler* @gHandler, i32 0, i32 3, i32 2), align 2, !dbg !469
  %4 = zext i16 %3 to i32, !dbg !471
  %5 = and i32 %4, 1, !dbg !472
  %6 = icmp ne i32 %5, 0, !dbg !472
  br i1 %6, label %7, label %21, !dbg !473

; <label>:7:                                      ; preds = %0
  call void @llvm.dbg.declare(metadata %struct.siginfo_t* %1, metadata !474, metadata !278), !dbg !476
  call void @llvm.dbg.declare(metadata i64* %2, metadata !477, metadata !278), !dbg !478
  %8 = load i32, i32* getelementptr inbounds (%struct.SignalHandler, %struct.SignalHandler* @gHandler, i32 0, i32 3, i32 0), align 8, !dbg !479
  %9 = bitcast %struct.siginfo_t* %1 to i8*, !dbg !480
  %10 = call i64 @read(i32 %8, i8* %9, i64 128), !dbg !481
  store i64 %10, i64* %2, align 8, !dbg !478
  %11 = load i64, i64* %2, align 8, !dbg !482
  %12 = icmp eq i64 %11, -1, !dbg !484
  br i1 %12, label %13, label %14, !dbg !485

; <label>:13:                                     ; preds = %7
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0)), !dbg !486
  br label %21, !dbg !488

; <label>:14:                                     ; preds = %7
  br label %15

; <label>:15:                                     ; preds = %14
  %16 = bitcast %struct.siginfo_t* %1 to i8*, !dbg !489
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.siginfo_t* getelementptr inbounds (%struct.SignalHandler, %struct.SignalHandler* @gHandler, i32 0, i32 5) to i8*), i8* %16, i64 128, i32 8, i1 false), !dbg !489
  %17 = getelementptr inbounds %struct.siginfo_t, %struct.siginfo_t* %1, i32 0, i32 0, !dbg !490
  %18 = load i32, i32* %17, align 8, !dbg !490
  %19 = sext i32 %18 to i64, !dbg !491
  %20 = getelementptr inbounds [65 x i32], [65 x i32]* getelementptr inbounds (%struct.SignalHandler, %struct.SignalHandler* @gHandler, i32 0, i32 4), i64 0, i64 %19, !dbg !491
  store i32 2, i32* %20, align 4, !dbg !492
  store i16 0, i16* getelementptr inbounds (%struct.SignalHandler, %struct.SignalHandler* @gHandler, i32 0, i32 3, i32 2), align 2, !dbg !493
  br label %21, !dbg !494

; <label>:21:                                     ; preds = %13, %15, %0
  ret void, !dbg !495
}

declare i64 @read(i32, i8*, i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

declare i64 @write(i32, i8*, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!274, !275}
!llvm.ident = !{!276}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !30, globals: !205)
!1 = !DIFile(filename: "libvmtools_la-signalSource.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1140")
!2 = !{!3, !12, !18}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 31, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line1140")
!5 = !{!6, !7, !8, !9, !10, !11}
!6 = !DIEnumerator(name: "G_IO_IN", value: 1)
!7 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!8 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!9 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!10 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!11 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 37, size: 32, align: 32, elements: !14)
!13 = !DIFile(filename: "signalSource.c", directory: "/home/lichi/Desktop/open-vm-tools/line1140")
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "SIG_SRC_UNHANDLED", value: 0)
!16 = !DIEnumerator(name: "SIG_SRC_IDLE", value: 1)
!17 = !DIEnumerator(name: "SIG_SRC_SIGNALED", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 51, size: 32, align: 32, elements: !20)
!19 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1140")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29}
!21 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!22 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!23 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!24 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!25 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!26 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!27 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!28 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!29 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!30 = !{!31, !35, !126, !45}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !33, line: 46, baseType: !34)
!33 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1140")
!34 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "SignalSource", file: !13, line: 65, baseType: !37)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SignalSource", file: !13, line: 62, size: 832, align: 64, elements: !38)
!38 = !{!39, !125}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !37, file: !13, line: 63, baseType: !40, size: 768, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !4, line: 64, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !4, line: 171, size: 768, align: 64, elements: !42)
!42 = !{!43, !46, !70, !99, !102, !106, !107, !108, !109, !117, !118, !119, !121}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !41, file: !4, line: 174, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !33, line: 77, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !41, file: !4, line: 175, baseType: !47, size: 64, align: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !4, line: 77, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !4, line: 196, size: 192, align: 64, elements: !50)
!50 = !{!51, !55, !56}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !49, file: !4, line: 198, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !44}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !49, file: !4, line: 199, baseType: !52, size: 64, align: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !49, file: !4, line: 200, baseType: !57, size: 64, align: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !44, !60, !61, !69}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !4, line: 155, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!66, !44}
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !33, line: 50, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !33, line: 49, baseType: !68)
!68 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !41, file: !4, line: 177, baseType: !71, size: 64, align: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !4, line: 130, baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !4, line: 214, size: 384, align: 64, elements: !75)
!75 = !{!76, !81, !85, !89, !93, !94}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !74, file: !4, line: 216, baseType: !77, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{!66, !60, !80}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !74, file: !4, line: 218, baseType: !82, size: 64, align: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{!66, !60}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !74, file: !4, line: 219, baseType: !86, size: 64, align: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{!66, !60, !62, !44}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !74, file: !4, line: 222, baseType: !90, size: 64, align: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !60}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !74, file: !4, line: 226, baseType: !62, size: 64, align: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !74, file: !4, line: 227, baseType: !95, size: 64, align: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !4, line: 212, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DISubroutineType(types: !98)
!98 = !{null}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !41, file: !4, line: 178, baseType: !100, size: 32, align: 32, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !33, line: 55, baseType: !101)
!101 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !41, file: !4, line: 180, baseType: !103, size: 64, align: 64, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !4, line: 48, baseType: !105)
!105 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !4, line: 48, flags: DIFlagFwdDecl)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !41, file: !4, line: 182, baseType: !67, size: 32, align: 32, offset: 320)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !41, file: !4, line: 183, baseType: !100, size: 32, align: 32, offset: 352)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !41, file: !4, line: 184, baseType: !100, size: 32, align: 32, offset: 384)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !41, file: !4, line: 186, baseType: !110, size: 64, align: 64, offset: 448)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !112, line: 37, baseType: !113)
!112 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/open-vm-tools/line1140")
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !112, line: 39, size: 128, align: 64, elements: !114)
!114 = !{!115, !116}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !113, file: !112, line: 41, baseType: !44, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !113, file: !112, line: 42, baseType: !110, size: 64, align: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !41, file: !4, line: 188, baseType: !60, size: 64, align: 64, offset: 512)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !41, file: !4, line: 189, baseType: !60, size: 64, align: 64, offset: 576)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !41, file: !4, line: 191, baseType: !120, size: 64, align: 64, offset: 640)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !41, file: !4, line: 193, baseType: !122, size: 64, align: 64, offset: 704)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !4, line: 65, baseType: !124)
!124 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !4, line: 65, flags: DIFlagFwdDecl)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !37, file: !13, line: 64, baseType: !68, size: 32, align: 32, offset: 768)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "SignalSourceCb", file: !127, line: 157, baseType: !128)
!127 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/utils.h", directory: "/home/lichi/Desktop/open-vm-tools/line1140")
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!66, !131, !44}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !134, line: 133, baseType: !135)
!134 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/siginfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line1140")
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 62, size: 1024, align: 64, elements: !136)
!136 = !{!137, !138, !139, !140}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !135, file: !134, line: 64, baseType: !68, size: 32, align: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !135, file: !134, line: 65, baseType: !68, size: 32, align: 32, offset: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !135, file: !134, line: 67, baseType: !68, size: 32, align: 32, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !135, file: !134, line: 132, baseType: !141, size: 896, align: 64, offset: 128)
!141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !135, file: !134, line: 69, size: 896, align: 64, elements: !142)
!142 = !{!143, !147, !155, !166, !172, !183, !194, !199}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !141, file: !134, line: 71, baseType: !144, size: 896, align: 32)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 896, align: 32, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 28)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !141, file: !134, line: 78, baseType: !148, size: 64, align: 32)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !141, file: !134, line: 74, size: 64, align: 32, elements: !149)
!149 = !{!150, !153}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !148, file: !134, line: 76, baseType: !151, size: 32, align: 32)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !152, line: 133, baseType: !68)
!152 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1140")
!153 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !148, file: !134, line: 77, baseType: !154, size: 32, align: 32, offset: 32)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !152, line: 125, baseType: !101)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !141, file: !134, line: 86, baseType: !156, size: 128, align: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !141, file: !134, line: 81, size: 128, align: 64, elements: !157)
!157 = !{!158, !159, !160}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !156, file: !134, line: 83, baseType: !68, size: 32, align: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !156, file: !134, line: 84, baseType: !68, size: 32, align: 32, offset: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !156, file: !134, line: 85, baseType: !161, size: 64, align: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !134, line: 36, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !134, line: 32, size: 64, align: 64, elements: !163)
!163 = !{!164, !165}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !162, file: !134, line: 34, baseType: !68, size: 32, align: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !162, file: !134, line: 35, baseType: !45, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !141, file: !134, line: 94, baseType: !167, size: 128, align: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !141, file: !134, line: 89, size: 128, align: 64, elements: !168)
!168 = !{!169, !170, !171}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !167, file: !134, line: 91, baseType: !151, size: 32, align: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !167, file: !134, line: 92, baseType: !154, size: 32, align: 32, offset: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !167, file: !134, line: 93, baseType: !161, size: 64, align: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !141, file: !134, line: 104, baseType: !173, size: 256, align: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !141, file: !134, line: 97, size: 256, align: 64, elements: !174)
!174 = !{!175, !176, !177, !178, !182}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !173, file: !134, line: 99, baseType: !151, size: 32, align: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !173, file: !134, line: 100, baseType: !154, size: 32, align: 32, offset: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !173, file: !134, line: 101, baseType: !68, size: 32, align: 32, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !173, file: !134, line: 102, baseType: !179, size: 64, align: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigchld_clock_t", file: !134, line: 58, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !152, line: 135, baseType: !181)
!181 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !173, file: !134, line: 103, baseType: !179, size: 64, align: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !141, file: !134, line: 116, baseType: !184, size: 256, align: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !141, file: !134, line: 107, size: 256, align: 64, elements: !185)
!185 = !{!186, !187, !189}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !184, file: !134, line: 109, baseType: !45, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !184, file: !134, line: 110, baseType: !188, size: 16, align: 16, offset: 64)
!188 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_bnd", scope: !184, file: !134, line: 115, baseType: !190, size: 128, align: 64, offset: 128)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !184, file: !134, line: 111, size: 128, align: 64, elements: !191)
!191 = !{!192, !193}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !190, file: !134, line: 113, baseType: !45, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !190, file: !134, line: 114, baseType: !45, size: 64, align: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !141, file: !134, line: 123, baseType: !195, size: 128, align: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !141, file: !134, line: 119, size: 128, align: 64, elements: !196)
!196 = !{!197, !198}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !195, file: !134, line: 121, baseType: !181, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !195, file: !134, line: 122, baseType: !68, size: 32, align: 32, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !141, file: !134, line: 131, baseType: !200, size: 128, align: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !141, file: !134, line: 126, size: 128, align: 64, elements: !201)
!201 = !{!202, !203, !204}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !200, file: !134, line: 128, baseType: !45, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !200, file: !134, line: 129, baseType: !68, size: 32, align: 32, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !200, file: !134, line: 130, baseType: !101, size: 32, align: 32, offset: 96)
!205 = !{!206, !211, !266}
!206 = distinct !DIGlobalVariable(name: "srcFuncs", scope: !207, file: !13, line: 259, type: !73, isLocal: true, isDefinition: true, variable: %struct._GSourceFuncs* @VMTools_NewSignalSource.srcFuncs)
!207 = distinct !DISubprogram(name: "VMTools_NewSignalSource", scope: !13, file: !13, line: 257, type: !208, isLocal: false, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !210)
!208 = !DISubroutineType(types: !209)
!209 = !{!60, !68}
!210 = !{}
!211 = distinct !DIGlobalVariable(name: "gHandler", scope: !0, file: !13, line: 59, type: !212, isLocal: true, isDefinition: true, variable: %struct.SignalHandler* @gHandler)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "SignalHandler", file: !13, line: 57, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SignalHandler", file: !13, line: 50, size: 4544, align: 64, elements: !214)
!214 = !{!215, !216, !220, !250, !260, !265}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !213, file: !13, line: 51, baseType: !66, size: 32, align: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "wakeupPipe", scope: !213, file: !13, line: 52, baseType: !217, size: 64, align: 32, offset: 32)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 64, align: 32, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 2)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !213, file: !13, line: 53, baseType: !221, size: 1216, align: 64, offset: 128)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !222, line: 24, size: 1216, align: 64, elements: !223)
!222 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigaction.h", directory: "/home/lichi/Desktop/open-vm-tools/line1140")
!223 = !{!224, !238, !248, !249}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !221, file: !222, line: 35, baseType: !225, size: 64, align: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !221, file: !222, line: 28, size: 64, align: 64, elements: !226)
!226 = !{!227, !233}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !225, file: !222, line: 31, baseType: !228, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !229, line: 85, baseType: !230)
!229 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/open-vm-tools/line1140")
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !68}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !225, file: !222, line: 33, baseType: !234, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !68, !237, !45}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !221, file: !222, line: 43, baseType: !239, size: 1024, align: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !240, line: 30, baseType: !241)
!240 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigset.h", directory: "/home/lichi/Desktop/open-vm-tools/line1140")
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !240, line: 27, size: 1024, align: 64, elements: !242)
!242 = !{!243}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !241, file: !240, line: 29, baseType: !244, size: 1024, align: 64)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 1024, align: 64, elements: !246)
!245 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!246 = !{!247}
!247 = !DISubrange(count: 16)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !221, file: !222, line: 46, baseType: !68, size: 32, align: 32, offset: 1088)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !221, file: !222, line: 49, baseType: !96, size: 64, align: 64, offset: 1152)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "wakeupFd", scope: !213, file: !13, line: 54, baseType: !251, size: 64, align: 32, offset: 1344)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPollFD", file: !252, line: 59, baseType: !253)
!252 = !DIFile(filename: "/usr/include/glib-2.0/glib/gpoll.h", directory: "/home/lichi/Desktop/open-vm-tools/line1140")
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GPollFD", file: !252, line: 91, size: 64, align: 32, elements: !254)
!254 = !{!255, !256, !259}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !253, file: !252, line: 98, baseType: !67, size: 32, align: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !253, file: !252, line: 100, baseType: !257, size: 16, align: 16, offset: 32)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "gushort", file: !33, line: 53, baseType: !258)
!258 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !253, file: !252, line: 101, baseType: !257, size: 16, align: 16, offset: 48)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "signals", scope: !213, file: !13, line: 55, baseType: !261, size: 2080, align: 32, offset: 1408)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 2080, align: 32, elements: !263)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "SignalState", file: !13, line: 41, baseType: !12)
!263 = !{!264}
!264 = !DISubrange(count: 65)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "currSignal", scope: !213, file: !13, line: 56, baseType: !133, size: 1024, align: 64, offset: 3520)
!266 = distinct !DIGlobalVariable(name: "g__gLock_lock", scope: !0, file: !13, line: 60, type: !267, isLocal: true, isDefinition: true, variable: %union._GMutex* @g__gLock_lock)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMutex", file: !268, line: 51, baseType: !269)
!268 = !DIFile(filename: "/usr/include/glib-2.0/glib/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line1140")
!269 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_GMutex", file: !268, line: 58, size: 64, align: 64, elements: !270)
!270 = !{!271, !272}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !269, file: !268, line: 61, baseType: !44, size: 64, align: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !269, file: !268, line: 62, baseType: !273, size: 64, align: 32)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 64, align: 32, elements: !218)
!274 = !{i32 2, !"Dwarf Version", i32 4}
!275 = !{i32 2, !"Debug Info Version", i32 3}
!276 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!277 = !DILocalVariable(name: "signum", arg: 1, scope: !207, file: !13, line: 257, type: !68)
!278 = !DIExpression()
!279 = !DILocation(line: 257, column: 29, scope: !207)
!280 = !DILocalVariable(name: "ret", scope: !207, file: !13, line: 267, type: !35)
!281 = !DILocation(line: 267, column: 18, scope: !207)
!282 = !DILocation(line: 272, column: 4, scope: !207)
!283 = !DILocation(line: 273, column: 18, scope: !284)
!284 = distinct !DILexicalBlock(scope: !207, file: !13, line: 273, column: 8)
!285 = !DILocation(line: 273, column: 9, scope: !284)
!286 = !DILocation(line: 273, column: 8, scope: !207)
!287 = !DILocation(line: 274, column: 11, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !13, line: 274, column: 11)
!289 = distinct !DILexicalBlock(scope: !284, file: !13, line: 273, column: 31)
!290 = !DILocation(line: 274, column: 37, scope: !288)
!291 = !DILocation(line: 274, column: 43, scope: !288)
!292 = !DILocation(line: 275, column: 17, scope: !288)
!293 = !DILocation(line: 275, column: 11, scope: !288)
!294 = !DILocation(line: 275, column: 72, scope: !288)
!295 = !DILocation(line: 275, column: 76, scope: !288)
!296 = !DILocation(line: 276, column: 17, scope: !288)
!297 = !DILocation(line: 276, column: 11, scope: !288)
!298 = !DILocation(line: 276, column: 72, scope: !288)
!299 = !DILocation(line: 274, column: 11, scope: !300)
!300 = !DILexicalBlockFile(scope: !289, file: !13, discriminator: 1)
!301 = !DILocation(line: 278, column: 7, scope: !302)
!302 = distinct !DILexicalBlock(scope: !288, file: !13, line: 276, column: 77)
!303 = !DILocation(line: 279, column: 30, scope: !289)
!304 = !DILocation(line: 279, column: 28, scope: !289)
!305 = !DILocation(line: 280, column: 32, scope: !289)
!306 = !DILocation(line: 281, column: 36, scope: !289)
!307 = !DILocation(line: 282, column: 33, scope: !289)
!308 = !DILocation(line: 283, column: 28, scope: !289)
!309 = !DILocation(line: 284, column: 4, scope: !289)
!310 = !DILocation(line: 285, column: 4, scope: !207)
!311 = !DILocation(line: 292, column: 25, scope: !312)
!312 = distinct !DILexicalBlock(scope: !207, file: !13, line: 292, column: 8)
!313 = !DILocation(line: 292, column: 8, scope: !312)
!314 = !DILocation(line: 292, column: 33, scope: !312)
!315 = !DILocation(line: 292, column: 8, scope: !207)
!316 = !DILocation(line: 293, column: 21, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !13, line: 293, column: 11)
!318 = distinct !DILexicalBlock(scope: !312, file: !13, line: 292, column: 55)
!319 = !DILocation(line: 293, column: 11, scope: !317)
!320 = !DILocation(line: 293, column: 53, scope: !317)
!321 = !DILocation(line: 293, column: 11, scope: !318)
!322 = !DILocation(line: 294, column: 11, scope: !323)
!323 = distinct !DILexicalBlock(scope: !317, file: !13, line: 293, column: 60)
!324 = !DILocation(line: 294, column: 10, scope: !323)
!325 = !DILocation(line: 294, column: 87, scope: !326)
!326 = !DILexicalBlockFile(scope: !323, file: !13, discriminator: 1)
!327 = !DILocation(line: 294, column: 10, scope: !328)
!328 = !DILexicalBlockFile(scope: !323, file: !13, discriminator: 2)
!329 = !DILocation(line: 295, column: 10, scope: !323)
!330 = !DILocation(line: 297, column: 24, scope: !318)
!331 = !DILocation(line: 297, column: 7, scope: !318)
!332 = !DILocation(line: 297, column: 32, scope: !318)
!333 = !DILocation(line: 298, column: 4, scope: !318)
!334 = !DILocation(line: 300, column: 27, scope: !207)
!335 = !DILocation(line: 300, column: 10, scope: !207)
!336 = !DILocation(line: 300, column: 8, scope: !207)
!337 = !DILocation(line: 301, column: 18, scope: !207)
!338 = !DILocation(line: 301, column: 4, scope: !207)
!339 = !DILocation(line: 301, column: 9, scope: !207)
!340 = !DILocation(line: 301, column: 16, scope: !207)
!341 = !DILocation(line: 303, column: 23, scope: !207)
!342 = !DILocation(line: 303, column: 28, scope: !207)
!343 = !DILocation(line: 303, column: 4, scope: !207)
!344 = !DILocation(line: 304, column: 12, scope: !207)
!345 = !DILocation(line: 304, column: 17, scope: !207)
!346 = !DILocation(line: 304, column: 4, scope: !207)
!347 = !DILocation(line: 305, column: 1, scope: !207)
!348 = distinct !DISubprogram(name: "SignalSourcePrepare", scope: !13, file: !13, line: 157, type: !78, isLocal: true, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !210)
!349 = !DILocalVariable(name: "_src", arg: 1, scope: !348, file: !13, line: 157, type: !60)
!350 = !DILocation(line: 157, column: 30, scope: !348)
!351 = !DILocalVariable(name: "timeout", arg: 2, scope: !348, file: !13, line: 158, type: !80)
!352 = !DILocation(line: 158, column: 27, scope: !348)
!353 = !DILocation(line: 160, column: 5, scope: !348)
!354 = !DILocation(line: 160, column: 13, scope: !348)
!355 = !DILocation(line: 161, column: 4, scope: !348)
!356 = distinct !DISubprogram(name: "SignalSourceCheck", scope: !13, file: !13, line: 174, type: !83, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !210)
!357 = !DILocalVariable(name: "_src", arg: 1, scope: !356, file: !13, line: 174, type: !60)
!358 = !DILocation(line: 174, column: 28, scope: !356)
!359 = !DILocalVariable(name: "src", scope: !356, file: !13, line: 176, type: !35)
!360 = !DILocation(line: 176, column: 18, scope: !356)
!361 = !DILocation(line: 176, column: 41, scope: !356)
!362 = !DILocation(line: 176, column: 24, scope: !356)
!363 = !DILocation(line: 177, column: 4, scope: !356)
!364 = !DILocation(line: 178, column: 29, scope: !356)
!365 = !DILocation(line: 178, column: 34, scope: !356)
!366 = !DILocation(line: 178, column: 12, scope: !356)
!367 = !DILocation(line: 178, column: 42, scope: !356)
!368 = !DILocation(line: 178, column: 4, scope: !356)
!369 = distinct !DISubprogram(name: "SignalSourceDispatch", scope: !13, file: !13, line: 194, type: !87, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !210)
!370 = !DILocalVariable(name: "_src", arg: 1, scope: !369, file: !13, line: 194, type: !60)
!371 = !DILocation(line: 194, column: 31, scope: !369)
!372 = !DILocalVariable(name: "_callback", arg: 2, scope: !369, file: !13, line: 195, type: !62)
!373 = !DILocation(line: 195, column: 34, scope: !369)
!374 = !DILocalVariable(name: "data", arg: 3, scope: !369, file: !13, line: 196, type: !44)
!375 = !DILocation(line: 196, column: 31, scope: !369)
!376 = !DILocalVariable(name: "callback", scope: !369, file: !13, line: 198, type: !126)
!377 = !DILocation(line: 198, column: 19, scope: !369)
!378 = !DILocation(line: 198, column: 47, scope: !369)
!379 = !DILocation(line: 198, column: 30, scope: !369)
!380 = !DILocalVariable(name: "src", scope: !369, file: !13, line: 199, type: !35)
!381 = !DILocation(line: 199, column: 18, scope: !369)
!382 = !DILocation(line: 199, column: 41, scope: !369)
!383 = !DILocation(line: 199, column: 24, scope: !369)
!384 = !DILocation(line: 200, column: 21, scope: !369)
!385 = !DILocation(line: 200, column: 26, scope: !369)
!386 = !DILocation(line: 200, column: 4, scope: !369)
!387 = !DILocation(line: 200, column: 34, scope: !369)
!388 = !DILocation(line: 201, column: 12, scope: !369)
!389 = !DILocation(line: 201, column: 21, scope: !369)
!390 = !DILocation(line: 201, column: 11, scope: !369)
!391 = !DILocation(line: 201, column: 31, scope: !392)
!392 = !DILexicalBlockFile(scope: !369, file: !13, discriminator: 1)
!393 = !DILocation(line: 201, column: 62, scope: !392)
!394 = !DILocation(line: 201, column: 11, scope: !392)
!395 = !DILocation(line: 201, column: 11, scope: !396)
!396 = !DILexicalBlockFile(scope: !369, file: !13, discriminator: 2)
!397 = !DILocation(line: 201, column: 11, scope: !398)
!398 = !DILexicalBlockFile(scope: !369, file: !13, discriminator: 3)
!399 = !DILocation(line: 201, column: 4, scope: !398)
!400 = distinct !DISubprogram(name: "SignalSourceFinalize", scope: !13, file: !13, line: 213, type: !91, isLocal: true, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !210)
!401 = !DILocalVariable(name: "src", arg: 1, scope: !400, file: !13, line: 213, type: !60)
!402 = !DILocation(line: 213, column: 31, scope: !400)
!403 = !DILocation(line: 215, column: 1, scope: !400)
!404 = distinct !DISubprogram(name: "SignalSourceSigHandler", scope: !13, file: !13, line: 108, type: !235, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !210)
!405 = !DILocalVariable(name: "signum", arg: 1, scope: !404, file: !13, line: 108, type: !68)
!406 = !DILocation(line: 108, column: 28, scope: !404)
!407 = !DILocalVariable(name: "info", arg: 2, scope: !404, file: !13, line: 109, type: !237)
!408 = !DILocation(line: 109, column: 35, scope: !404)
!409 = !DILocalVariable(name: "context", arg: 3, scope: !404, file: !13, line: 110, type: !45)
!410 = !DILocation(line: 110, column: 30, scope: !404)
!411 = !DILocalVariable(name: "bytes", scope: !404, file: !13, line: 112, type: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !413, line: 109, baseType: !414)
!413 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1140")
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !152, line: 172, baseType: !181)
!415 = !DILocation(line: 112, column: 12, scope: !404)
!416 = !DILocalVariable(name: "dummy", scope: !404, file: !13, line: 113, type: !133)
!417 = !DILocation(line: 113, column: 14, scope: !404)
!418 = !DILocation(line: 114, column: 8, scope: !419)
!419 = distinct !DILexicalBlock(scope: !404, file: !13, line: 114, column: 8)
!420 = !DILocation(line: 114, column: 15, scope: !419)
!421 = !DILocation(line: 114, column: 29, scope: !419)
!422 = !DILocation(line: 114, column: 32, scope: !423)
!423 = !DILexicalBlockFile(scope: !419, file: !13, discriminator: 1)
!424 = !DILocation(line: 114, column: 39, scope: !423)
!425 = !DILocation(line: 114, column: 8, scope: !423)
!426 = !DILocation(line: 115, column: 7, scope: !427)
!427 = distinct !DILexicalBlock(scope: !419, file: !13, line: 114, column: 44)
!428 = !DILocation(line: 118, column: 8, scope: !429)
!429 = distinct !DILexicalBlock(scope: !404, file: !13, line: 118, column: 8)
!430 = !DILocation(line: 118, column: 13, scope: !429)
!431 = !DILocation(line: 118, column: 8, scope: !404)
!432 = !DILocation(line: 125, column: 7, scope: !433)
!433 = distinct !DILexicalBlock(scope: !429, file: !13, line: 118, column: 21)
!434 = !DILocation(line: 126, column: 24, scope: !433)
!435 = !DILocation(line: 126, column: 13, scope: !433)
!436 = !DILocation(line: 126, column: 22, scope: !433)
!437 = !DILocation(line: 127, column: 12, scope: !433)
!438 = !DILocation(line: 128, column: 4, scope: !433)
!439 = !DILocation(line: 129, column: 18, scope: !404)
!440 = !DILocation(line: 129, column: 42, scope: !404)
!441 = !DILocation(line: 129, column: 12, scope: !404)
!442 = !DILocation(line: 129, column: 10, scope: !404)
!443 = !DILocation(line: 131, column: 8, scope: !444)
!444 = distinct !DILexicalBlock(scope: !404, file: !13, line: 131, column: 8)
!445 = !DILocation(line: 131, column: 14, scope: !444)
!446 = !DILocation(line: 131, column: 8, scope: !404)
!447 = !DILocation(line: 132, column: 12, scope: !448)
!448 = distinct !DILexicalBlock(scope: !449, file: !13, line: 132, column: 10)
!449 = distinct !DILexicalBlock(scope: !444, file: !13, line: 131, column: 21)
!450 = !DILocation(line: 132, column: 11, scope: !448)
!451 = !DILocation(line: 132, column: 16, scope: !448)
!452 = !DILocation(line: 132, column: 10, scope: !449)
!453 = !DILocation(line: 137, column: 10, scope: !454)
!454 = distinct !DILexicalBlock(scope: !448, file: !13, line: 132, column: 27)
!455 = !DILocation(line: 139, column: 7, scope: !454)
!456 = !DILocation(line: 140, column: 98, scope: !457)
!457 = distinct !DILexicalBlock(scope: !448, file: !13, line: 139, column: 14)
!458 = !DILocation(line: 140, column: 11, scope: !457)
!459 = !DILocation(line: 140, column: 10, scope: !457)
!460 = !DILocation(line: 140, column: 11, scope: !461)
!461 = !DILexicalBlockFile(scope: !457, file: !13, discriminator: 1)
!462 = !DILocation(line: 140, column: 11, scope: !463)
!463 = !DILexicalBlockFile(scope: !457, file: !13, discriminator: 2)
!464 = !DILocation(line: 140, column: 10, scope: !465)
!465 = !DILexicalBlockFile(scope: !457, file: !13, discriminator: 3)
!466 = !DILocation(line: 143, column: 4, scope: !449)
!467 = !DILocation(line: 144, column: 1, scope: !404)
!468 = distinct !DISubprogram(name: "SignalSourceReadSigInfo", scope: !13, file: !13, line: 76, type: !97, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !210)
!469 = !DILocation(line: 78, column: 26, scope: !470)
!470 = distinct !DILexicalBlock(scope: !468, file: !13, line: 78, column: 8)
!471 = !DILocation(line: 78, column: 8, scope: !470)
!472 = !DILocation(line: 78, column: 34, scope: !470)
!473 = !DILocation(line: 78, column: 8, scope: !468)
!474 = !DILocalVariable(name: "info", scope: !475, file: !13, line: 79, type: !133)
!475 = distinct !DILexicalBlock(scope: !470, file: !13, line: 78, column: 45)
!476 = !DILocation(line: 79, column: 17, scope: !475)
!477 = !DILocalVariable(name: "nbytes", scope: !475, file: !13, line: 80, type: !412)
!478 = !DILocation(line: 80, column: 15, scope: !475)
!479 = !DILocation(line: 80, column: 47, scope: !475)
!480 = !DILocation(line: 80, column: 51, scope: !475)
!481 = !DILocation(line: 80, column: 24, scope: !475)
!482 = !DILocation(line: 81, column: 11, scope: !483)
!483 = distinct !DILexicalBlock(scope: !475, file: !13, line: 81, column: 11)
!484 = !DILocation(line: 81, column: 18, scope: !483)
!485 = !DILocation(line: 81, column: 11, scope: !475)
!486 = !DILocation(line: 82, column: 10, scope: !487)
!487 = distinct !DILexicalBlock(scope: !483, file: !13, line: 81, column: 25)
!488 = !DILocation(line: 83, column: 10, scope: !487)
!489 = !DILocation(line: 88, column: 7, scope: !475)
!490 = !DILocation(line: 90, column: 29, scope: !475)
!491 = !DILocation(line: 90, column: 7, scope: !475)
!492 = !DILocation(line: 90, column: 39, scope: !475)
!493 = !DILocation(line: 91, column: 33, scope: !475)
!494 = !DILocation(line: 92, column: 4, scope: !475)
!495 = !DILocation(line: 93, column: 1, scope: !468)
