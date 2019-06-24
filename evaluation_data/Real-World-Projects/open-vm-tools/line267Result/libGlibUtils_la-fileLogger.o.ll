; ModuleID = './libGlibUtils_la-fileLogger.o.i'
source_filename = "./libGlibUtils_la-fileLogger.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GlibLogger = type { i32, i32, void (i8*, i32, i8*, i8*)*, void (i8*)* }
%struct.FileLogger = type { %struct.GlibLogger, %struct._GIOChannel*, i8*, i32, i64, i32, i32, i32, %struct.GStaticMutex }
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct.GStaticMutex = type { %union._GMutex*, %union.pthread_mutex_t }
%union._GMutex = type { i8* }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._GPtrArray = type { i8**, i32 }

@__func__.GlibUtils_CreateFileLogger = private unnamed_addr constant [27 x i8] c"GlibUtils_CreateFileLogger\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"path != NULL\00", align 1
@__func__.FileLoggerOpen = private unnamed_addr constant [15 x i8] c"FileLoggerOpen\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"${USER}\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"${PID}\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"${IDX}\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"%s.%d.%s\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1

; Function Attrs: nounwind uwtable
define i8* @GlibGetUserName() #0 !dbg !321 {
  %1 = call i8* @g_get_user_name(), !dbg !325
  ret i8* %1, !dbg !326
}

declare i8* @g_get_user_name() #1

; Function Attrs: nounwind uwtable
define %struct.GlibLogger* @GlibUtils_CreateFileLogger(i8*, i32, i32, i32) #0 !dbg !327 {
  %5 = alloca %struct.GlibLogger*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.FileLogger*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !331, metadata !332), !dbg !333
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !334, metadata !332), !dbg !335
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !336, metadata !332), !dbg !337
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !338, metadata !332), !dbg !339
  call void @llvm.dbg.declare(metadata %struct.FileLogger** %10, metadata !340, metadata !332), !dbg !341
  store %struct.FileLogger* null, %struct.FileLogger** %10, align 8, !dbg !341
  br label %11, !dbg !342, !llvm.loop !343

; <label>:11:                                     ; preds = %4
  %12 = load i8*, i8** %6, align 8, !dbg !344
  %13 = icmp ne i8* %12, null, !dbg !348
  br i1 %13, label %14, label %15, !dbg !344

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !349

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.GlibUtils_CreateFileLogger, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !352
  store %struct.GlibLogger* null, %struct.GlibLogger** %5, align 8, !dbg !355
  br label %61, !dbg !355

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !356

; <label>:17:                                     ; preds = %16
  %18 = call noalias i8* @g_malloc0_n(i64 1, i64 120), !dbg !358
  %19 = bitcast i8* %18 to %struct.FileLogger*, !dbg !359
  store %struct.FileLogger* %19, %struct.FileLogger** %10, align 8, !dbg !360
  %20 = load %struct.FileLogger*, %struct.FileLogger** %10, align 8, !dbg !361
  %21 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %20, i32 0, i32 0, !dbg !362
  %22 = getelementptr inbounds %struct.GlibLogger, %struct.GlibLogger* %21, i32 0, i32 1, !dbg !363
  store i32 0, i32* %22, align 4, !dbg !364
  %23 = load %struct.FileLogger*, %struct.FileLogger** %10, align 8, !dbg !365
  %24 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %23, i32 0, i32 0, !dbg !366
  %25 = getelementptr inbounds %struct.GlibLogger, %struct.GlibLogger* %24, i32 0, i32 0, !dbg !367
  store i32 0, i32* %25, align 8, !dbg !368
  %26 = load %struct.FileLogger*, %struct.FileLogger** %10, align 8, !dbg !369
  %27 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %26, i32 0, i32 0, !dbg !370
  %28 = getelementptr inbounds %struct.GlibLogger, %struct.GlibLogger* %27, i32 0, i32 2, !dbg !371
  store void (i8*, i32, i8*, i8*)* @FileLoggerLog, void (i8*, i32, i8*, i8*)** %28, align 8, !dbg !372
  %29 = load %struct.FileLogger*, %struct.FileLogger** %10, align 8, !dbg !373
  %30 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %29, i32 0, i32 0, !dbg !374
  %31 = getelementptr inbounds %struct.GlibLogger, %struct.GlibLogger* %30, i32 0, i32 3, !dbg !375
  store void (i8*)* @FileLoggerDestroy, void (i8*)** %31, align 8, !dbg !376
  %32 = load i8*, i8** %6, align 8, !dbg !377
  %33 = call noalias i8* @g_filename_from_utf8(i8* %32, i64 -1, i64* null, i64* null, %struct._GError** null), !dbg !378
  %34 = load %struct.FileLogger*, %struct.FileLogger** %10, align 8, !dbg !379
  %35 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %34, i32 0, i32 2, !dbg !380
  store i8* %33, i8** %35, align 8, !dbg !381
  %36 = load %struct.FileLogger*, %struct.FileLogger** %10, align 8, !dbg !382
  %37 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %36, i32 0, i32 2, !dbg !384
  %38 = load i8*, i8** %37, align 8, !dbg !384
  %39 = icmp eq i8* %38, null, !dbg !385
  br i1 %39, label %40, label %43, !dbg !386

; <label>:40:                                     ; preds = %17
  %41 = load %struct.FileLogger*, %struct.FileLogger** %10, align 8, !dbg !387
  %42 = bitcast %struct.FileLogger* %41 to i8*, !dbg !387
  call void @g_free(i8* %42), !dbg !389
  store %struct.GlibLogger* null, %struct.GlibLogger** %5, align 8, !dbg !390
  br label %61, !dbg !390

; <label>:43:                                     ; preds = %17
  %44 = load i32, i32* %7, align 4, !dbg !391
  %45 = load %struct.FileLogger*, %struct.FileLogger** %10, align 8, !dbg !392
  %46 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %45, i32 0, i32 6, !dbg !393
  store i32 %44, i32* %46, align 4, !dbg !394
  %47 = load i32, i32* %8, align 4, !dbg !395
  %48 = mul i32 %47, 1024, !dbg !396
  %49 = mul i32 %48, 1024, !dbg !397
  %50 = zext i32 %49 to i64, !dbg !395
  %51 = load %struct.FileLogger*, %struct.FileLogger** %10, align 8, !dbg !398
  %52 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %51, i32 0, i32 4, !dbg !399
  store i64 %50, i64* %52, align 8, !dbg !400
  %53 = load i32, i32* %9, align 4, !dbg !401
  %54 = add i32 %53, 1, !dbg !402
  %55 = load %struct.FileLogger*, %struct.FileLogger** %10, align 8, !dbg !403
  %56 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %55, i32 0, i32 5, !dbg !404
  store i32 %54, i32* %56, align 8, !dbg !405
  %57 = load %struct.FileLogger*, %struct.FileLogger** %10, align 8, !dbg !406
  %58 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %57, i32 0, i32 8, !dbg !407
  call void @g_static_mutex_init(%struct.GStaticMutex* %58), !dbg !408
  %59 = load %struct.FileLogger*, %struct.FileLogger** %10, align 8, !dbg !409
  %60 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %59, i32 0, i32 0, !dbg !410
  store %struct.GlibLogger* %60, %struct.GlibLogger** %5, align 8, !dbg !411
  br label %61, !dbg !411

; <label>:61:                                     ; preds = %43, %40, %15
  %62 = load %struct.GlibLogger*, %struct.GlibLogger** %5, align 8, !dbg !412
  ret %struct.GlibLogger* %62, !dbg !412
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @FileLoggerLog(i8*, i32, i8*, i8*) #0 !dbg !413 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.FileLogger*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !414, metadata !332), !dbg !415
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !416, metadata !332), !dbg !417
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !418, metadata !332), !dbg !419
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !420, metadata !332), !dbg !421
  call void @llvm.dbg.declare(metadata %struct.FileLogger** %9, metadata !422, metadata !332), !dbg !423
  %11 = load i8*, i8** %8, align 8, !dbg !424
  %12 = bitcast i8* %11 to %struct.FileLogger*, !dbg !424
  store %struct.FileLogger* %12, %struct.FileLogger** %9, align 8, !dbg !423
  call void @llvm.dbg.declare(metadata i64* %10, metadata !425, metadata !332), !dbg !426
  %13 = load %struct.FileLogger*, %struct.FileLogger** %9, align 8, !dbg !427
  %14 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %13, i32 0, i32 8, !dbg !428
  %15 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %14), !dbg !429
  call void @g_mutex_lock(%union._GMutex* %15), !dbg !430
  %16 = load %struct.FileLogger*, %struct.FileLogger** %9, align 8, !dbg !432
  %17 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %16, i32 0, i32 7, !dbg !434
  %18 = load i32, i32* %17, align 8, !dbg !434
  %19 = icmp ne i32 %18, 0, !dbg !432
  br i1 %19, label %20, label %21, !dbg !435

; <label>:20:                                     ; preds = %4
  br label %103, !dbg !436

; <label>:21:                                     ; preds = %4
  %22 = load %struct.FileLogger*, %struct.FileLogger** %9, align 8, !dbg !438
  %23 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %22, i32 0, i32 1, !dbg !440
  %24 = load %struct._GIOChannel*, %struct._GIOChannel** %23, align 8, !dbg !440
  %25 = icmp eq %struct._GIOChannel* %24, null, !dbg !441
  br i1 %25, label %26, label %46, !dbg !442

; <label>:26:                                     ; preds = %21
  %27 = load %struct.FileLogger*, %struct.FileLogger** %9, align 8, !dbg !443
  %28 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %27, i32 0, i32 1, !dbg !446
  %29 = load %struct._GIOChannel*, %struct._GIOChannel** %28, align 8, !dbg !446
  %30 = icmp eq %struct._GIOChannel* %29, null, !dbg !447
  br i1 %30, label %31, label %37, !dbg !448

; <label>:31:                                     ; preds = %26
  %32 = load i8*, i8** %8, align 8, !dbg !449
  %33 = bitcast i8* %32 to %struct.FileLogger*, !dbg !449
  %34 = call %struct._GIOChannel* @FileLoggerOpen(%struct.FileLogger* %33), !dbg !451
  %35 = load %struct.FileLogger*, %struct.FileLogger** %9, align 8, !dbg !452
  %36 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %35, i32 0, i32 1, !dbg !453
  store %struct._GIOChannel* %34, %struct._GIOChannel** %36, align 8, !dbg !454
  br label %37, !dbg !455

; <label>:37:                                     ; preds = %31, %26
  %38 = load %struct.FileLogger*, %struct.FileLogger** %9, align 8, !dbg !456
  %39 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %38, i32 0, i32 1, !dbg !458
  %40 = load %struct._GIOChannel*, %struct._GIOChannel** %39, align 8, !dbg !458
  %41 = icmp eq %struct._GIOChannel* %40, null, !dbg !459
  br i1 %41, label %42, label %45, !dbg !460

; <label>:42:                                     ; preds = %37
  %43 = load %struct.FileLogger*, %struct.FileLogger** %9, align 8, !dbg !461
  %44 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %43, i32 0, i32 7, !dbg !463
  store i32 1, i32* %44, align 8, !dbg !464
  br label %103, !dbg !465

; <label>:45:                                     ; preds = %37
  br label %46, !dbg !466

; <label>:46:                                     ; preds = %45, %21
  %47 = load %struct.FileLogger*, %struct.FileLogger** %9, align 8, !dbg !467
  %48 = call i32 @FileLoggerIsValid(%struct.FileLogger* %47), !dbg !469
  %49 = icmp ne i32 %48, 0, !dbg !469
  br i1 %49, label %53, label %50, !dbg !470

; <label>:50:                                     ; preds = %46
  %51 = load %struct.FileLogger*, %struct.FileLogger** %9, align 8, !dbg !471
  %52 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %51, i32 0, i32 7, !dbg !473
  store i32 1, i32* %52, align 8, !dbg !474
  br label %103, !dbg !475

; <label>:53:                                     ; preds = %46
  %54 = load %struct.FileLogger*, %struct.FileLogger** %9, align 8, !dbg !476
  %55 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %54, i32 0, i32 1, !dbg !478
  %56 = load %struct._GIOChannel*, %struct._GIOChannel** %55, align 8, !dbg !478
  %57 = load i8*, i8** %7, align 8, !dbg !479
  %58 = call i32 @g_io_channel_write_chars(%struct._GIOChannel* %56, i8* %57, i64 -1, i64* %10, %struct._GError** null), !dbg !480
  %59 = icmp eq i32 %58, 1, !dbg !481
  br i1 %59, label %60, label %102, !dbg !482

; <label>:60:                                     ; preds = %53
  %61 = load %struct.FileLogger*, %struct.FileLogger** %9, align 8, !dbg !483
  %62 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %61, i32 0, i32 4, !dbg !486
  %63 = load i64, i64* %62, align 8, !dbg !486
  %64 = icmp ugt i64 %63, 0, !dbg !487
  br i1 %64, label %65, label %96, !dbg !488

; <label>:65:                                     ; preds = %60
  %66 = load i64, i64* %10, align 8, !dbg !489
  %67 = trunc i64 %66 to i32, !dbg !491
  %68 = load %struct.FileLogger*, %struct.FileLogger** %9, align 8, !dbg !492
  %69 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %68, i32 0, i32 3, !dbg !493
  %70 = load i32, i32* %69, align 8, !dbg !494
  %71 = add nsw i32 %70, %67, !dbg !494
  store i32 %71, i32* %69, align 8, !dbg !494
  %72 = load %struct.FileLogger*, %struct.FileLogger** %9, align 8, !dbg !495
  %73 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %72, i32 0, i32 3, !dbg !497
  %74 = load i32, i32* %73, align 8, !dbg !497
  %75 = sext i32 %74 to i64, !dbg !495
  %76 = load %struct.FileLogger*, %struct.FileLogger** %9, align 8, !dbg !498
  %77 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %76, i32 0, i32 4, !dbg !499
  %78 = load i64, i64* %77, align 8, !dbg !499
  %79 = icmp uge i64 %75, %78, !dbg !500
  br i1 %79, label %80, label %90, !dbg !501

; <label>:80:                                     ; preds = %65
  %81 = load %struct.FileLogger*, %struct.FileLogger** %9, align 8, !dbg !502
  %82 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %81, i32 0, i32 1, !dbg !504
  %83 = load %struct._GIOChannel*, %struct._GIOChannel** %82, align 8, !dbg !504
  call void @g_io_channel_unref(%struct._GIOChannel* %83), !dbg !505
  %84 = load %struct.FileLogger*, %struct.FileLogger** %9, align 8, !dbg !506
  %85 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %84, i32 0, i32 6, !dbg !507
  store i32 0, i32* %85, align 4, !dbg !508
  %86 = load %struct.FileLogger*, %struct.FileLogger** %9, align 8, !dbg !509
  %87 = call %struct._GIOChannel* @FileLoggerOpen(%struct.FileLogger* %86), !dbg !510
  %88 = load %struct.FileLogger*, %struct.FileLogger** %9, align 8, !dbg !511
  %89 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %88, i32 0, i32 1, !dbg !512
  store %struct._GIOChannel* %87, %struct._GIOChannel** %89, align 8, !dbg !513
  br label %95, !dbg !514

; <label>:90:                                     ; preds = %65
  %91 = load %struct.FileLogger*, %struct.FileLogger** %9, align 8, !dbg !515
  %92 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %91, i32 0, i32 1, !dbg !517
  %93 = load %struct._GIOChannel*, %struct._GIOChannel** %92, align 8, !dbg !517
  %94 = call i32 @g_io_channel_flush(%struct._GIOChannel* %93, %struct._GError** null), !dbg !518
  br label %95

; <label>:95:                                     ; preds = %90, %80
  br label %101, !dbg !519

; <label>:96:                                     ; preds = %60
  %97 = load %struct.FileLogger*, %struct.FileLogger** %9, align 8, !dbg !520
  %98 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %97, i32 0, i32 1, !dbg !522
  %99 = load %struct._GIOChannel*, %struct._GIOChannel** %98, align 8, !dbg !522
  %100 = call i32 @g_io_channel_flush(%struct._GIOChannel* %99, %struct._GError** null), !dbg !523
  br label %101

; <label>:101:                                    ; preds = %96, %95
  br label %102, !dbg !524

; <label>:102:                                    ; preds = %101, %53
  br label %103, !dbg !525

; <label>:103:                                    ; preds = %102, %50, %42, %20
  %104 = load %struct.FileLogger*, %struct.FileLogger** %9, align 8, !dbg !526
  %105 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %104, i32 0, i32 8, !dbg !527
  %106 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %105), !dbg !528
  call void @g_mutex_unlock(%union._GMutex* %106), !dbg !529
  ret void, !dbg !530
}

; Function Attrs: nounwind uwtable
define internal void @FileLoggerDestroy(i8*) #0 !dbg !531 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.FileLogger*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !532, metadata !332), !dbg !533
  call void @llvm.dbg.declare(metadata %struct.FileLogger** %3, metadata !534, metadata !332), !dbg !535
  %4 = load i8*, i8** %2, align 8, !dbg !536
  %5 = bitcast i8* %4 to %struct.FileLogger*, !dbg !536
  store %struct.FileLogger* %5, %struct.FileLogger** %3, align 8, !dbg !535
  %6 = load %struct.FileLogger*, %struct.FileLogger** %3, align 8, !dbg !537
  %7 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %6, i32 0, i32 1, !dbg !539
  %8 = load %struct._GIOChannel*, %struct._GIOChannel** %7, align 8, !dbg !539
  %9 = icmp ne %struct._GIOChannel* %8, null, !dbg !540
  br i1 %9, label %10, label %14, !dbg !541

; <label>:10:                                     ; preds = %1
  %11 = load %struct.FileLogger*, %struct.FileLogger** %3, align 8, !dbg !542
  %12 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %11, i32 0, i32 1, !dbg !544
  %13 = load %struct._GIOChannel*, %struct._GIOChannel** %12, align 8, !dbg !544
  call void @g_io_channel_unref(%struct._GIOChannel* %13), !dbg !545
  br label %14, !dbg !546

; <label>:14:                                     ; preds = %10, %1
  %15 = load %struct.FileLogger*, %struct.FileLogger** %3, align 8, !dbg !547
  %16 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %15, i32 0, i32 8, !dbg !548
  call void @g_static_mutex_free(%struct.GStaticMutex* %16), !dbg !549
  %17 = load %struct.FileLogger*, %struct.FileLogger** %3, align 8, !dbg !550
  %18 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %17, i32 0, i32 2, !dbg !551
  %19 = load i8*, i8** %18, align 8, !dbg !551
  call void @g_free(i8* %19), !dbg !552
  %20 = load %struct.FileLogger*, %struct.FileLogger** %3, align 8, !dbg !553
  %21 = bitcast %struct.FileLogger* %20 to i8*, !dbg !553
  call void @g_free(i8* %21), !dbg !554
  ret void, !dbg !555
}

declare noalias i8* @g_filename_from_utf8(i8*, i64, i64*, i64*, %struct._GError**) #1

declare void @g_free(i8*) #1

declare void @g_static_mutex_init(%struct.GStaticMutex*) #1

declare void @g_mutex_lock(%union._GMutex*) #1

declare %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GIOChannel* @FileLoggerOpen(%struct.FileLogger*) #0 !dbg !556 {
  %2 = alloca %struct._GIOChannel*, align 8
  %3 = alloca %struct.FileLogger*, align 8
  %4 = alloca %struct._GIOChannel*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._GPtrArray*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.FileLogger* %0, %struct.FileLogger** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.FileLogger** %3, metadata !559, metadata !332), !dbg !560
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %4, metadata !561, metadata !332), !dbg !562
  store %struct._GIOChannel* null, %struct._GIOChannel** %4, align 8, !dbg !562
  call void @llvm.dbg.declare(metadata i8** %5, metadata !563, metadata !332), !dbg !564
  br label %12, !dbg !565, !llvm.loop !566

; <label>:12:                                     ; preds = %1
  %13 = load %struct.FileLogger*, %struct.FileLogger** %3, align 8, !dbg !567
  %14 = icmp ne %struct.FileLogger* %13, null, !dbg !571
  br i1 %14, label %15, label %16, !dbg !567

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !572

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.FileLoggerOpen, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)), !dbg !575
  store %struct._GIOChannel* null, %struct._GIOChannel** %2, align 8, !dbg !578
  br label %158, !dbg !578

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !579

; <label>:18:                                     ; preds = %17
  %19 = load %struct.FileLogger*, %struct.FileLogger** %3, align 8, !dbg !581
  %20 = call i8* @FileLoggerGetPath(%struct.FileLogger* %19, i32 0), !dbg !582
  store i8* %20, i8** %5, align 8, !dbg !583
  %21 = load i8*, i8** %5, align 8, !dbg !584
  %22 = call i32 @g_file_test(i8* %21, i32 16), !dbg !586
  %23 = icmp ne i32 %22, 0, !dbg !586
  br i1 %23, label %24, label %142, !dbg !587

; <label>:24:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata %struct.stat* %6, metadata !588, metadata !332), !dbg !630
  %25 = load i8*, i8** %5, align 8, !dbg !631
  %26 = call i32 @stat64(i8* %25, %struct.stat* %6) #5, !dbg !633
  %27 = icmp sgt i32 %26, -1, !dbg !634
  br i1 %27, label %28, label %34, !dbg !635

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 8, !dbg !636
  %30 = load i64, i64* %29, align 8, !dbg !636
  %31 = trunc i64 %30 to i32, !dbg !638
  %32 = load %struct.FileLogger*, %struct.FileLogger** %3, align 8, !dbg !639
  %33 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %32, i32 0, i32 3, !dbg !640
  store i32 %31, i32* %33, align 8, !dbg !641
  br label %34, !dbg !642

; <label>:34:                                     ; preds = %28, %24
  %35 = load %struct.FileLogger*, %struct.FileLogger** %3, align 8, !dbg !643
  %36 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %35, i32 0, i32 6, !dbg !645
  %37 = load i32, i32* %36, align 4, !dbg !645
  %38 = icmp ne i32 %37, 0, !dbg !643
  br i1 %38, label %39, label %48, !dbg !646

; <label>:39:                                     ; preds = %34
  %40 = load %struct.FileLogger*, %struct.FileLogger** %3, align 8, !dbg !647
  %41 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %40, i32 0, i32 3, !dbg !649
  %42 = load i32, i32* %41, align 8, !dbg !649
  %43 = sext i32 %42 to i64, !dbg !647
  %44 = load %struct.FileLogger*, %struct.FileLogger** %3, align 8, !dbg !650
  %45 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %44, i32 0, i32 4, !dbg !651
  %46 = load i64, i64* %45, align 8, !dbg !651
  %47 = icmp uge i64 %43, %46, !dbg !652
  br i1 %47, label %48, label %141, !dbg !653

; <label>:48:                                     ; preds = %39, %34
  call void @llvm.dbg.declare(metadata i8** %7, metadata !654, metadata !332), !dbg !656
  call void @llvm.dbg.declare(metadata i32* %8, metadata !657, metadata !332), !dbg !658
  call void @llvm.dbg.declare(metadata %struct._GPtrArray** %9, metadata !659, metadata !332), !dbg !667
  %49 = call %struct._GPtrArray* @g_ptr_array_new(), !dbg !668
  store %struct._GPtrArray* %49, %struct._GPtrArray** %9, align 8, !dbg !667
  store i32 0, i32* %8, align 4, !dbg !669
  br label %50, !dbg !671

; <label>:50:                                     ; preds = %67, %48
  %51 = load i32, i32* %8, align 4, !dbg !672
  %52 = load %struct.FileLogger*, %struct.FileLogger** %3, align 8, !dbg !675
  %53 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %52, i32 0, i32 5, !dbg !676
  %54 = load i32, i32* %53, align 8, !dbg !676
  %55 = icmp ult i32 %51, %54, !dbg !677
  br i1 %55, label %56, label %70, !dbg !678

; <label>:56:                                     ; preds = %50
  %57 = load %struct.FileLogger*, %struct.FileLogger** %3, align 8, !dbg !679
  %58 = load i32, i32* %8, align 4, !dbg !681
  %59 = call i8* @FileLoggerGetPath(%struct.FileLogger* %57, i32 %58), !dbg !682
  store i8* %59, i8** %7, align 8, !dbg !683
  %60 = load %struct._GPtrArray*, %struct._GPtrArray** %9, align 8, !dbg !684
  %61 = load i8*, i8** %7, align 8, !dbg !685
  call void @g_ptr_array_add(%struct._GPtrArray* %60, i8* %61), !dbg !686
  %62 = load i8*, i8** %7, align 8, !dbg !687
  %63 = call i32 @g_file_test(i8* %62, i32 1), !dbg !689
  %64 = icmp ne i32 %63, 0, !dbg !689
  br i1 %64, label %66, label %65, !dbg !690

; <label>:65:                                     ; preds = %56
  br label %70, !dbg !691

; <label>:66:                                     ; preds = %56
  br label %67, !dbg !693

; <label>:67:                                     ; preds = %66
  %68 = load i32, i32* %8, align 4, !dbg !694
  %69 = add i32 %68, 1, !dbg !694
  store i32 %69, i32* %8, align 4, !dbg !694
  br label %50, !dbg !696, !llvm.loop !697

; <label>:70:                                     ; preds = %65, %50
  %71 = load %struct._GPtrArray*, %struct._GPtrArray** %9, align 8, !dbg !699
  %72 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %71, i32 0, i32 1, !dbg !701
  %73 = load i32, i32* %72, align 8, !dbg !701
  %74 = sub i32 %73, 1, !dbg !702
  store i32 %74, i32* %8, align 4, !dbg !703
  br label %75, !dbg !704

; <label>:75:                                     ; preds = %113, %70
  %76 = load i32, i32* %8, align 4, !dbg !705
  %77 = icmp ugt i32 %76, 0, !dbg !708
  br i1 %77, label %78, label %116, !dbg !709

; <label>:78:                                     ; preds = %75
  call void @llvm.dbg.declare(metadata i8** %10, metadata !710, metadata !332), !dbg !712
  %79 = load i32, i32* %8, align 4, !dbg !713
  %80 = zext i32 %79 to i64, !dbg !714
  %81 = load %struct._GPtrArray*, %struct._GPtrArray** %9, align 8, !dbg !715
  %82 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %81, i32 0, i32 0, !dbg !716
  %83 = load i8**, i8*** %82, align 8, !dbg !716
  %84 = getelementptr inbounds i8*, i8** %83, i64 %80, !dbg !714
  %85 = load i8*, i8** %84, align 8, !dbg !714
  store i8* %85, i8** %10, align 8, !dbg !712
  call void @llvm.dbg.declare(metadata i8** %11, metadata !717, metadata !332), !dbg !718
  %86 = load i32, i32* %8, align 4, !dbg !719
  %87 = sub i32 %86, 1, !dbg !720
  %88 = zext i32 %87 to i64, !dbg !721
  %89 = load %struct._GPtrArray*, %struct._GPtrArray** %9, align 8, !dbg !722
  %90 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %89, i32 0, i32 0, !dbg !723
  %91 = load i8**, i8*** %90, align 8, !dbg !723
  %92 = getelementptr inbounds i8*, i8** %91, i64 %88, !dbg !721
  %93 = load i8*, i8** %92, align 8, !dbg !721
  store i8* %93, i8** %11, align 8, !dbg !718
  %94 = load i8*, i8** %10, align 8, !dbg !724
  %95 = call i32 @g_file_test(i8* %94, i32 4), !dbg !726
  %96 = icmp ne i32 %95, 0, !dbg !726
  br i1 %96, label %109, label %97, !dbg !727

; <label>:97:                                     ; preds = %78
  %98 = load i8*, i8** %10, align 8, !dbg !728
  %99 = call i32 @g_file_test(i8* %98, i32 16), !dbg !729
  %100 = icmp ne i32 %99, 0, !dbg !729
  br i1 %100, label %101, label %105, !dbg !730

; <label>:101:                                    ; preds = %97
  %102 = load i8*, i8** %10, align 8, !dbg !731
  %103 = call i32 @g_unlink(i8* %102), !dbg !732
  %104 = icmp eq i32 %103, 0, !dbg !733
  br i1 %104, label %105, label %109, !dbg !734

; <label>:105:                                    ; preds = %101, %97
  %106 = load i8*, i8** %11, align 8, !dbg !736
  %107 = load i8*, i8** %10, align 8, !dbg !738
  %108 = call i32 @rename(i8* %106, i8* %107) #5, !dbg !739
  br label %112, !dbg !740

; <label>:109:                                    ; preds = %101, %78
  %110 = load i8*, i8** %11, align 8, !dbg !741
  %111 = call i32 @g_unlink(i8* %110), !dbg !743
  br label %112

; <label>:112:                                    ; preds = %109, %105
  br label %113, !dbg !744

; <label>:113:                                    ; preds = %112
  %114 = load i32, i32* %8, align 4, !dbg !745
  %115 = add i32 %114, -1, !dbg !745
  store i32 %115, i32* %8, align 4, !dbg !745
  br label %75, !dbg !747, !llvm.loop !748

; <label>:116:                                    ; preds = %75
  store i32 0, i32* %8, align 4, !dbg !750
  br label %117, !dbg !752

; <label>:117:                                    ; preds = %131, %116
  %118 = load i32, i32* %8, align 4, !dbg !753
  %119 = load %struct._GPtrArray*, %struct._GPtrArray** %9, align 8, !dbg !756
  %120 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %119, i32 0, i32 1, !dbg !757
  %121 = load i32, i32* %120, align 8, !dbg !757
  %122 = icmp ult i32 %118, %121, !dbg !758
  br i1 %122, label %123, label %134, !dbg !759

; <label>:123:                                    ; preds = %117
  %124 = load i32, i32* %8, align 4, !dbg !760
  %125 = zext i32 %124 to i64, !dbg !762
  %126 = load %struct._GPtrArray*, %struct._GPtrArray** %9, align 8, !dbg !763
  %127 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %126, i32 0, i32 0, !dbg !764
  %128 = load i8**, i8*** %127, align 8, !dbg !764
  %129 = getelementptr inbounds i8*, i8** %128, i64 %125, !dbg !762
  %130 = load i8*, i8** %129, align 8, !dbg !762
  call void @g_free(i8* %130), !dbg !765
  br label %131, !dbg !766

; <label>:131:                                    ; preds = %123
  %132 = load i32, i32* %8, align 4, !dbg !767
  %133 = add i32 %132, 1, !dbg !767
  store i32 %133, i32* %8, align 4, !dbg !767
  br label %117, !dbg !769, !llvm.loop !770

; <label>:134:                                    ; preds = %117
  %135 = load %struct._GPtrArray*, %struct._GPtrArray** %9, align 8, !dbg !772
  %136 = call i8** @g_ptr_array_free(%struct._GPtrArray* %135, i32 1), !dbg !773
  %137 = load %struct.FileLogger*, %struct.FileLogger** %3, align 8, !dbg !774
  %138 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %137, i32 0, i32 3, !dbg !775
  store i32 0, i32* %138, align 8, !dbg !776
  %139 = load %struct.FileLogger*, %struct.FileLogger** %3, align 8, !dbg !777
  %140 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %139, i32 0, i32 6, !dbg !778
  store i32 0, i32* %140, align 4, !dbg !779
  br label %141, !dbg !780

; <label>:141:                                    ; preds = %134, %39
  br label %142, !dbg !781

; <label>:142:                                    ; preds = %141, %18
  %143 = load i8*, i8** %5, align 8, !dbg !782
  %144 = load %struct.FileLogger*, %struct.FileLogger** %3, align 8, !dbg !783
  %145 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %144, i32 0, i32 6, !dbg !784
  %146 = load i32, i32* %145, align 4, !dbg !784
  %147 = icmp ne i32 %146, 0, !dbg !783
  %148 = select i1 %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), !dbg !783
  %149 = call %struct._GIOChannel* @g_io_channel_new_file(i8* %143, i8* %148, %struct._GError** null), !dbg !785
  store %struct._GIOChannel* %149, %struct._GIOChannel** %4, align 8, !dbg !786
  %150 = load i8*, i8** %5, align 8, !dbg !787
  call void @g_free(i8* %150), !dbg !788
  %151 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !789
  %152 = icmp ne %struct._GIOChannel* %151, null, !dbg !791
  br i1 %152, label %153, label %156, !dbg !792

; <label>:153:                                    ; preds = %142
  %154 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !793
  %155 = call i32 @g_io_channel_set_encoding(%struct._GIOChannel* %154, i8* null, %struct._GError** null), !dbg !795
  br label %156, !dbg !796

; <label>:156:                                    ; preds = %153, %142
  %157 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !797
  store %struct._GIOChannel* %157, %struct._GIOChannel** %2, align 8, !dbg !798
  br label %158, !dbg !798

; <label>:158:                                    ; preds = %156, %16
  %159 = load %struct._GIOChannel*, %struct._GIOChannel** %2, align 8, !dbg !799
  ret %struct._GIOChannel* %159, !dbg !799
}

; Function Attrs: nounwind uwtable
define internal i32 @FileLoggerIsValid(%struct.FileLogger*) #0 !dbg !800 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.FileLogger*, align 8
  %4 = alloca i32, align 4
  store %struct.FileLogger* %0, %struct.FileLogger** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.FileLogger** %3, metadata !803, metadata !332), !dbg !804
  %5 = load %struct.FileLogger*, %struct.FileLogger** %3, align 8, !dbg !805
  %6 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %5, i32 0, i32 1, !dbg !807
  %7 = load %struct._GIOChannel*, %struct._GIOChannel** %6, align 8, !dbg !807
  %8 = icmp ne %struct._GIOChannel* %7, null, !dbg !808
  br i1 %8, label %9, label %18, !dbg !809

; <label>:9:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %4, metadata !810, metadata !332), !dbg !812
  %10 = load %struct.FileLogger*, %struct.FileLogger** %3, align 8, !dbg !813
  %11 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %10, i32 0, i32 1, !dbg !814
  %12 = load %struct._GIOChannel*, %struct._GIOChannel** %11, align 8, !dbg !814
  %13 = call i32 @g_io_channel_unix_get_fd(%struct._GIOChannel* %12), !dbg !815
  store i32 %13, i32* %4, align 4, !dbg !812
  %14 = load i32, i32* %4, align 4, !dbg !816
  %15 = call i32 (i32, i32, ...) @fcntl(i32 %14, i32 1), !dbg !817
  %16 = icmp sge i32 %15, 0, !dbg !818
  %17 = zext i1 %16 to i32, !dbg !818
  store i32 %17, i32* %2, align 4, !dbg !819
  br label %19, !dbg !819

; <label>:18:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !820
  br label %19, !dbg !820

; <label>:19:                                     ; preds = %18, %9
  %20 = load i32, i32* %2, align 4, !dbg !821
  ret i32 %20, !dbg !821
}

declare i32 @g_io_channel_write_chars(%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**) #1

declare void @g_io_channel_unref(%struct._GIOChannel*) #1

declare i32 @g_io_channel_flush(%struct._GIOChannel*, %struct._GError**) #1

declare void @g_mutex_unlock(%union._GMutex*) #1

; Function Attrs: nounwind uwtable
define internal i8* @FileLoggerGetPath(%struct.FileLogger*, i32) #0 !dbg !822 {
  %3 = alloca %struct.FileLogger*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [11 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca [6 x i8*], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.FileLogger* %0, %struct.FileLogger** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.FileLogger** %3, metadata !825, metadata !332), !dbg !826
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !827, metadata !332), !dbg !828
  call void @llvm.dbg.declare(metadata i32* %5, metadata !829, metadata !332), !dbg !830
  store i32 0, i32* %5, align 4, !dbg !830
  call void @llvm.dbg.declare(metadata [11 x i8]* %6, metadata !831, metadata !332), !dbg !835
  call void @llvm.dbg.declare(metadata i8** %7, metadata !836, metadata !332), !dbg !837
  call void @llvm.dbg.declare(metadata [6 x i8*]* %8, metadata !838, metadata !332), !dbg !840
  %18 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i64 0, i64 0, !dbg !841
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8** %18, align 8, !dbg !841
  %19 = getelementptr inbounds i8*, i8** %18, i64 1, !dbg !841
  store i8* null, i8** %19, align 8, !dbg !841
  %20 = getelementptr inbounds i8*, i8** %19, i64 1, !dbg !841
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8** %20, align 8, !dbg !841
  %21 = getelementptr inbounds i8*, i8** %20, i64 1, !dbg !841
  store i8* null, i8** %21, align 8, !dbg !841
  %22 = getelementptr inbounds i8*, i8** %21, i64 1, !dbg !841
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8** %22, align 8, !dbg !841
  %23 = getelementptr inbounds i8*, i8** %22, i64 1, !dbg !841
  %24 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i32 0, i32 0, !dbg !842
  store i8* %24, i8** %23, align 8, !dbg !841
  call void @llvm.dbg.declare(metadata i8** %9, metadata !843, metadata !332), !dbg !844
  call void @llvm.dbg.declare(metadata i64* %10, metadata !845, metadata !332), !dbg !848
  %25 = load %struct.FileLogger*, %struct.FileLogger** %3, align 8, !dbg !849
  %26 = getelementptr inbounds %struct.FileLogger, %struct.FileLogger* %25, i32 0, i32 2, !dbg !850
  %27 = load i8*, i8** %26, align 8, !dbg !850
  %28 = call noalias i8* @g_strdup(i8* %27), !dbg !851
  store i8* %28, i8** %7, align 8, !dbg !852
  %29 = call i8* @GlibGetUserName(), !dbg !853
  %30 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i64 0, i64 1, !dbg !854
  store i8* %29, i8** %30, align 8, !dbg !855
  %31 = call i32 @getpid() #5, !dbg !856
  %32 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 %31), !dbg !857
  %33 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i64 0, i64 3, !dbg !859
  store i8* %32, i8** %33, align 8, !dbg !860
  %34 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i32 0, i32 0, !dbg !861
  %35 = load i32, i32* %4, align 4, !dbg !862
  %36 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %34, i64 11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 %35), !dbg !863
  store i64 0, i64* %10, align 8, !dbg !864
  br label %37, !dbg !866

; <label>:37:                                     ; preds = %85, %2
  %38 = load i64, i64* %10, align 8, !dbg !867
  %39 = icmp ult i64 %38, 6, !dbg !870
  br i1 %39, label %40, label %88, !dbg !871

; <label>:40:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata i8** %11, metadata !872, metadata !332), !dbg !874
  %41 = load i8*, i8** %7, align 8, !dbg !875
  store i8* %41, i8** %11, align 8, !dbg !874
  call void @llvm.dbg.declare(metadata i8** %12, metadata !876, metadata !332), !dbg !877
  br label %42, !dbg !878

; <label>:42:                                     ; preds = %83, %40
  %43 = load i8*, i8** %11, align 8, !dbg !879
  %44 = load i64, i64* %10, align 8, !dbg !881
  %45 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i64 0, i64 %44, !dbg !882
  %46 = load i8*, i8** %45, align 8, !dbg !882
  %47 = call i8* @strstr(i8* %43, i8* %46) #6, !dbg !883
  store i8* %47, i8** %12, align 8, !dbg !884
  %48 = icmp ne i8* %47, null, !dbg !885
  br i1 %48, label %49, label %84, !dbg !886

; <label>:49:                                     ; preds = %42
  call void @llvm.dbg.declare(metadata i8** %13, metadata !887, metadata !332), !dbg !889
  call void @llvm.dbg.declare(metadata i8** %14, metadata !890, metadata !332), !dbg !891
  %50 = load i8*, i8** %12, align 8, !dbg !892
  %51 = load i64, i64* %10, align 8, !dbg !893
  %52 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i64 0, i64 %51, !dbg !894
  %53 = load i8*, i8** %52, align 8, !dbg !894
  %54 = call i64 @strlen(i8* %53) #6, !dbg !895
  %55 = getelementptr inbounds i8, i8* %50, i64 %54, !dbg !896
  store i8* %55, i8** %14, align 8, !dbg !891
  call void @llvm.dbg.declare(metadata i64* %15, metadata !897, metadata !332), !dbg !898
  %56 = load i8*, i8** %12, align 8, !dbg !899
  %57 = load i8*, i8** %11, align 8, !dbg !900
  %58 = ptrtoint i8* %56 to i64, !dbg !901
  %59 = ptrtoint i8* %57 to i64, !dbg !901
  %60 = sub i64 %58, %59, !dbg !901
  %61 = load i64, i64* %10, align 8, !dbg !902
  %62 = add i64 %61, 1, !dbg !903
  %63 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i64 0, i64 %62, !dbg !904
  %64 = load i8*, i8** %63, align 8, !dbg !904
  %65 = call i64 @strlen(i8* %64) #6, !dbg !905
  %66 = add i64 %60, %65, !dbg !906
  store i64 %66, i64* %15, align 8, !dbg !898
  %67 = load i8*, i8** %12, align 8, !dbg !907
  store i8 0, i8* %67, align 1, !dbg !908
  %68 = load i8*, i8** %7, align 8, !dbg !909
  %69 = load i64, i64* %10, align 8, !dbg !910
  %70 = add i64 %69, 1, !dbg !911
  %71 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i64 0, i64 %70, !dbg !912
  %72 = load i8*, i8** %71, align 8, !dbg !912
  %73 = load i8*, i8** %14, align 8, !dbg !913
  %74 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* %68, i8* %72, i8* %73), !dbg !914
  store i8* %74, i8** %13, align 8, !dbg !915
  %75 = load i8*, i8** %7, align 8, !dbg !916
  call void @g_free(i8* %75), !dbg !917
  %76 = load i8*, i8** %13, align 8, !dbg !918
  store i8* %76, i8** %7, align 8, !dbg !919
  %77 = load i8*, i8** %7, align 8, !dbg !920
  %78 = load i64, i64* %15, align 8, !dbg !921
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !922
  store i8* %79, i8** %11, align 8, !dbg !923
  %80 = load i64, i64* %10, align 8, !dbg !924
  %81 = icmp eq i64 %80, 4, !dbg !926
  br i1 %81, label %82, label %83, !dbg !927

; <label>:82:                                     ; preds = %49
  store i32 1, i32* %5, align 4, !dbg !928
  br label %83, !dbg !930

; <label>:83:                                     ; preds = %82, %49
  br label %42, !dbg !931, !llvm.loop !933

; <label>:84:                                     ; preds = %42
  br label %85, !dbg !934

; <label>:85:                                     ; preds = %84
  %86 = load i64, i64* %10, align 8, !dbg !935
  %87 = add i64 %86, 2, !dbg !935
  store i64 %87, i64* %10, align 8, !dbg !935
  br label %37, !dbg !937, !llvm.loop !938

; <label>:88:                                     ; preds = %37
  %89 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i64 0, i64 3, !dbg !940
  %90 = load i8*, i8** %89, align 8, !dbg !940
  call void @g_free(i8* %90), !dbg !941
  %91 = load i32, i32* %4, align 4, !dbg !942
  %92 = icmp ne i32 %91, 0, !dbg !944
  br i1 %92, label %93, label %128, !dbg !945

; <label>:93:                                     ; preds = %88
  %94 = load i32, i32* %5, align 4, !dbg !946
  %95 = icmp ne i32 %94, 0, !dbg !946
  br i1 %95, label %128, label %96, !dbg !948

; <label>:96:                                     ; preds = %93
  call void @llvm.dbg.declare(metadata i8** %16, metadata !949, metadata !332), !dbg !951
  %97 = load i8*, i8** %7, align 8, !dbg !952
  %98 = call i8* @strrchr(i8* %97, i32 46) #6, !dbg !953
  store i8* %98, i8** %16, align 8, !dbg !951
  call void @llvm.dbg.declare(metadata i8** %17, metadata !954, metadata !332), !dbg !955
  %99 = load i8*, i8** %7, align 8, !dbg !956
  %100 = call i8* @strrchr(i8* %99, i32 47) #6, !dbg !957
  store i8* %100, i8** %17, align 8, !dbg !955
  %101 = load i8*, i8** %17, align 8, !dbg !958
  %102 = icmp eq i8* %101, null, !dbg !960
  br i1 %102, label %103, label %106, !dbg !961

; <label>:103:                                    ; preds = %96
  %104 = load i8*, i8** %7, align 8, !dbg !962
  %105 = call i8* @strrchr(i8* %104, i32 92) #6, !dbg !964
  store i8* %105, i8** %17, align 8, !dbg !965
  br label %106, !dbg !966

; <label>:106:                                    ; preds = %103, %96
  %107 = load i8*, i8** %16, align 8, !dbg !967
  %108 = icmp ne i8* %107, null, !dbg !969
  br i1 %108, label %109, label %121, !dbg !970

; <label>:109:                                    ; preds = %106
  %110 = load i8*, i8** %16, align 8, !dbg !971
  %111 = load i8*, i8** %17, align 8, !dbg !973
  %112 = icmp ugt i8* %110, %111, !dbg !974
  br i1 %112, label %113, label %121, !dbg !975

; <label>:113:                                    ; preds = %109
  %114 = load i8*, i8** %16, align 8, !dbg !976
  store i8 0, i8* %114, align 1, !dbg !978
  %115 = load i8*, i8** %16, align 8, !dbg !979
  %116 = getelementptr inbounds i8, i8* %115, i32 1, !dbg !979
  store i8* %116, i8** %16, align 8, !dbg !979
  %117 = load i8*, i8** %7, align 8, !dbg !980
  %118 = load i32, i32* %4, align 4, !dbg !981
  %119 = load i8*, i8** %16, align 8, !dbg !982
  %120 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* %117, i32 %118, i8* %119), !dbg !983
  store i8* %120, i8** %9, align 8, !dbg !984
  br label %125, !dbg !985

; <label>:121:                                    ; preds = %109, %106
  %122 = load i8*, i8** %7, align 8, !dbg !986
  %123 = load i32, i32* %4, align 4, !dbg !988
  %124 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* %122, i32 %123), !dbg !989
  store i8* %124, i8** %9, align 8, !dbg !990
  br label %125

; <label>:125:                                    ; preds = %121, %113
  %126 = load i8*, i8** %7, align 8, !dbg !991
  call void @g_free(i8* %126), !dbg !992
  %127 = load i8*, i8** %9, align 8, !dbg !993
  store i8* %127, i8** %7, align 8, !dbg !994
  br label %128, !dbg !995

; <label>:128:                                    ; preds = %125, %93, %88
  %129 = load i8*, i8** %7, align 8, !dbg !996
  ret i8* %129, !dbg !997
}

declare i32 @g_file_test(i8*, i32) #1

; Function Attrs: nounwind
declare i32 @stat64(i8*, %struct.stat*) #3

declare %struct._GPtrArray* @g_ptr_array_new() #1

declare void @g_ptr_array_add(%struct._GPtrArray*, i8*) #1

declare i32 @g_unlink(i8*) #1

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #3

declare i8** @g_ptr_array_free(%struct._GPtrArray*, i32) #1

declare %struct._GIOChannel* @g_io_channel_new_file(i8*, i8*, %struct._GError**) #1

declare i32 @g_io_channel_set_encoding(%struct._GIOChannel*, i8*, %struct._GError**) #1

declare noalias i8* @g_strdup(i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind
declare i32 @getpid() #3

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

declare i32 @g_io_channel_unix_get_fd(%struct._GIOChannel*) #1

declare i32 @fcntl(i32, i32, ...) #1

declare void @g_static_mutex_free(%struct.GStaticMutex*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!318, !319}
!llvm.ident = !{!320}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !55)
!1 = !DIFile(filename: "libGlibUtils_la-fileLogger.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line267")
!2 = !{!3, !15, !22, !27, !36, !47}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 51, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line267")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!7 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!8 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!9 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!10 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!11 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!12 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!13 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!14 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 69, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/open-vm-tools/line267")
!17 = !{!18, !19, !20, !21}
!18 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!19 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!20 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!21 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 77, size: 32, align: 32, elements: !23)
!23 = !{!24, !25, !26}
!24 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!25 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!26 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 31, size: 32, align: 32, elements: !29)
!28 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line267")
!29 = !{!30, !31, !32, !33, !34, !35}
!30 = !DIEnumerator(name: "G_IO_IN", value: 1)
!31 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!32 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!33 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!34 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!35 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 84, size: 32, align: 32, elements: !37)
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46}
!38 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!39 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!40 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!41 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!42 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!43 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!44 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!45 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!46 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !48, line: 66, size: 32, align: 32, elements: !49)
!48 = !DIFile(filename: "/usr/include/glib-2.0/glib/gfileutils.h", directory: "/home/lichi/Desktop/open-vm-tools/line267")
!49 = !{!50, !51, !52, !53, !54}
!50 = !DIEnumerator(name: "G_FILE_TEST_IS_REGULAR", value: 1)
!51 = !DIEnumerator(name: "G_FILE_TEST_IS_SYMLINK", value: 2)
!52 = !DIEnumerator(name: "G_FILE_TEST_IS_DIR", value: 4)
!53 = !DIEnumerator(name: "G_FILE_TEST_IS_EXECUTABLE", value: 8)
!54 = !DIEnumerator(name: "G_FILE_TEST_EXISTS", value: 16)
!55 = !{!56, !57, !61, !63, !75, !215, !122}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !59, line: 46, baseType: !60)
!59 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line267")
!60 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "FileLogger", file: !65, line: 48, baseType: !66)
!65 = !DIFile(filename: "fileLogger.c", directory: "/home/lichi/Desktop/open-vm-tools/line267")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FileLogger", file: !65, line: 38, size: 960, align: 64, elements: !67)
!67 = !{!68, !92, !267, !268, !269, !271, !272, !273, !274}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !66, file: !65, line: 39, baseType: !69, size: 192, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "GlibLogger", file: !70, line: 57, baseType: !71)
!70 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/glibUtils.h", directory: "/home/lichi/Desktop/open-vm-tools/line267")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GlibLogger", file: !70, line: 52, size: 192, align: 64, elements: !72)
!72 = !{!73, !77, !78, !87}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !71, file: !70, line: 53, baseType: !74, size: 32, align: 32)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !59, line: 50, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !59, line: 49, baseType: !76)
!76 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "addsTimestamp", scope: !71, file: !70, line: 54, baseType: !74, size: 32, align: 32, offset: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "logfn", scope: !71, file: !70, line: 55, baseType: !79, size: 64, align: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLogFunc", file: !4, line: 71, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !83, !85, !83, !86}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLogLevelFlags", file: !4, line: 66, baseType: !3)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !59, line: 77, baseType: !56)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "dtor", scope: !71, file: !70, line: 56, baseType: !88, size: 64, align: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "GDestroyNotify", file: !59, line: 87, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !86}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !66, file: !65, line: 40, baseType: !93, size: 64, align: 64, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !16, line: 41, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !16, line: 97, size: 896, align: 64, elements: !96)
!96 = !{!97, !98, !234, !235, !240, !241, !242, !243, !244, !253, !254, !255, !259, !260, !261, !262, !263, !264, !265, !266}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !95, file: !16, line: 100, baseType: !75, size: 32, align: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !95, file: !16, line: 101, baseType: !99, size: 64, align: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !16, line: 42, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !16, line: 131, size: 512, align: 64, elements: !102)
!102 = !{!103, !125, !129, !136, !140, !221, !225, !230}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !101, file: !16, line: 133, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!107, !93, !57, !108, !111, !112}
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !16, line: 75, baseType: !15)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !109, line: 66, baseType: !110)
!109 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/open-vm-tools/line267")
!110 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !115, line: 42, baseType: !116)
!115 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/open-vm-tools/line267")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !115, line: 44, size: 128, align: 64, elements: !117)
!117 = !{!118, !123, !124}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !116, file: !115, line: 46, baseType: !119, size: 32, align: 32)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !120, line: 36, baseType: !121)
!120 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/open-vm-tools/line267")
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !109, line: 45, baseType: !122)
!122 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !116, file: !115, line: 47, baseType: !75, size: 32, align: 32, offset: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !116, file: !115, line: 48, baseType: !57, size: 64, align: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !101, file: !16, line: 138, baseType: !126, size: 64, align: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!107, !93, !83, !108, !111, !112}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !101, file: !16, line: 143, baseType: !130, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!107, !93, !133, !135, !112}
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !109, line: 51, baseType: !134)
!134 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !16, line: 82, baseType: !22)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !101, file: !16, line: 147, baseType: !137, size: 64, align: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!107, !93, !112}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !101, file: !16, line: 149, baseType: !141, size: 64, align: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!144, !93, !220}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !28, line: 64, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !28, line: 171, size: 768, align: 64, elements: !147)
!147 = !{!148, !149, !166, !195, !197, !201, !202, !203, !204, !212, !213, !214, !216}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !146, file: !28, line: 174, baseType: !86, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !146, file: !28, line: 175, baseType: !150, size: 64, align: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !28, line: 77, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !28, line: 196, size: 192, align: 64, elements: !153)
!153 = !{!154, !155, !156}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !152, file: !28, line: 198, baseType: !89, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !152, file: !28, line: 199, baseType: !89, size: 64, align: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !152, file: !28, line: 200, baseType: !157, size: 64, align: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !86, !144, !160, !165}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !28, line: 155, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!74, !86}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !146, file: !28, line: 177, baseType: !167, size: 64, align: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !28, line: 130, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !28, line: 214, size: 384, align: 64, elements: !171)
!171 = !{!172, !177, !181, !185, !189, !190}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !170, file: !28, line: 216, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!74, !144, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !170, file: !28, line: 218, baseType: !178, size: 64, align: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!74, !144}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !170, file: !28, line: 219, baseType: !182, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!74, !144, !161, !86}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !170, file: !28, line: 222, baseType: !186, size: 64, align: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !144}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !170, file: !28, line: 226, baseType: !161, size: 64, align: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !170, file: !28, line: 227, baseType: !191, size: 64, align: 64, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !28, line: 212, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{null}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !146, file: !28, line: 178, baseType: !196, size: 32, align: 32, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !59, line: 55, baseType: !122)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !146, file: !28, line: 180, baseType: !198, size: 64, align: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !28, line: 48, baseType: !200)
!200 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !28, line: 48, flags: DIFlagFwdDecl)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !146, file: !28, line: 182, baseType: !75, size: 32, align: 32, offset: 320)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !146, file: !28, line: 183, baseType: !196, size: 32, align: 32, offset: 352)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !146, file: !28, line: 184, baseType: !196, size: 32, align: 32, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !146, file: !28, line: 186, baseType: !205, size: 64, align: 64, offset: 448)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !207, line: 37, baseType: !208)
!207 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/open-vm-tools/line267")
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !207, line: 39, size: 128, align: 64, elements: !209)
!209 = !{!210, !211}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !208, file: !207, line: 41, baseType: !86, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !208, file: !207, line: 42, baseType: !205, size: 64, align: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !146, file: !28, line: 188, baseType: !144, size: 64, align: 64, offset: 512)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !146, file: !28, line: 189, baseType: !144, size: 64, align: 64, offset: 576)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !146, file: !28, line: 191, baseType: !215, size: 64, align: 64, offset: 640)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !146, file: !28, line: 193, baseType: !217, size: 64, align: 64, offset: 704)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !28, line: 65, baseType: !219)
!219 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !28, line: 65, flags: DIFlagFwdDecl)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !28, line: 39, baseType: !27)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !101, file: !16, line: 151, baseType: !222, size: 64, align: 64, offset: 320)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !93}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !101, file: !16, line: 152, baseType: !226, size: 64, align: 64, offset: 384)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!107, !93, !229, !112}
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !16, line: 95, baseType: !36)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !101, file: !16, line: 155, baseType: !231, size: 64, align: 64, offset: 448)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!229, !93}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !95, file: !16, line: 103, baseType: !57, size: 64, align: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !95, file: !16, line: 104, baseType: !236, size: 64, align: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !237, line: 77, baseType: !238)
!237 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/open-vm-tools/line267")
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !237, line: 77, flags: DIFlagFwdDecl)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !95, file: !16, line: 105, baseType: !236, size: 64, align: 64, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !95, file: !16, line: 106, baseType: !57, size: 64, align: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !95, file: !16, line: 107, baseType: !196, size: 32, align: 32, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !95, file: !16, line: 109, baseType: !108, size: 64, align: 64, offset: 448)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !95, file: !16, line: 110, baseType: !245, size: 64, align: 64, offset: 512)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !247, line: 39, baseType: !248)
!247 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/open-vm-tools/line267")
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !247, line: 41, size: 192, align: 64, elements: !249)
!249 = !{!250, !251, !252}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !248, file: !247, line: 43, baseType: !57, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !248, file: !247, line: 44, baseType: !108, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !248, file: !247, line: 45, baseType: !108, size: 64, align: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !95, file: !16, line: 111, baseType: !245, size: 64, align: 64, offset: 576)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !95, file: !16, line: 112, baseType: !245, size: 64, align: 64, offset: 640)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !95, file: !16, line: 113, baseType: !256, size: 48, align: 8, offset: 704)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 48, align: 8, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 6)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !95, file: !16, line: 117, baseType: !196, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !95, file: !16, line: 118, baseType: !196, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !95, file: !16, line: 119, baseType: !196, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !95, file: !16, line: 120, baseType: !196, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !95, file: !16, line: 121, baseType: !196, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !95, file: !16, line: 122, baseType: !196, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !95, file: !16, line: 124, baseType: !86, size: 64, align: 64, offset: 768)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !95, file: !16, line: 125, baseType: !86, size: 64, align: 64, offset: 832)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !66, file: !65, line: 41, baseType: !57, size: 64, align: 64, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "logSize", scope: !66, file: !65, line: 42, baseType: !75, size: 32, align: 32, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "maxSize", scope: !66, file: !65, line: 43, baseType: !270, size: 64, align: 64, offset: 384)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint64", file: !109, line: 52, baseType: !110)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "maxFiles", scope: !66, file: !65, line: 44, baseType: !196, size: 32, align: 32, offset: 448)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "append", scope: !66, file: !65, line: 45, baseType: !74, size: 32, align: 32, offset: 480)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !66, file: !65, line: 46, baseType: !74, size: 32, align: 32, offset: 512)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !66, file: !65, line: 47, baseType: !275, size: 384, align: 64, offset: 576)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "GStaticMutex", file: !276, line: 140, baseType: !277)
!276 = !DIFile(filename: "/usr/include/glib-2.0/glib/deprecated/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line267")
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !276, line: 133, size: 384, align: 64, elements: !278)
!278 = !{!279, !290}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !277, file: !276, line: 135, baseType: !280, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMutex", file: !282, line: 51, baseType: !283)
!282 = !DIFile(filename: "/usr/include/glib-2.0/glib/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line267")
!283 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_GMutex", file: !282, line: 58, size: 64, align: 64, elements: !284)
!284 = !{!285, !286}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !283, file: !282, line: 61, baseType: !86, size: 64, align: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !283, file: !282, line: 62, baseType: !287, size: 64, align: 32)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 64, align: 32, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 2)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !277, file: !276, line: 138, baseType: !291, size: 320, align: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !292, line: 128, baseType: !293)
!292 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line267")
!293 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !292, line: 90, size: 320, align: 64, elements: !294)
!294 = !{!295, !313, !317}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !293, file: !292, line: 125, baseType: !296, size: 320, align: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !292, line: 92, size: 320, align: 64, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303, !305, !306}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !296, file: !292, line: 94, baseType: !76, size: 32, align: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !296, file: !292, line: 95, baseType: !122, size: 32, align: 32, offset: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !296, file: !292, line: 96, baseType: !76, size: 32, align: 32, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !296, file: !292, line: 98, baseType: !122, size: 32, align: 32, offset: 96)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !296, file: !292, line: 102, baseType: !76, size: 32, align: 32, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !296, file: !292, line: 104, baseType: !304, size: 16, align: 16, offset: 160)
!304 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !296, file: !292, line: 105, baseType: !304, size: 16, align: 16, offset: 176)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !296, file: !292, line: 106, baseType: !307, size: 128, align: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !292, line: 79, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !292, line: 75, size: 128, align: 64, elements: !309)
!309 = !{!310, !312}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !308, file: !292, line: 77, baseType: !311, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !308, file: !292, line: 78, baseType: !311, size: 64, align: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !293, file: !292, line: 126, baseType: !314, size: 320, align: 8)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 320, align: 8, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 40)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !293, file: !292, line: 127, baseType: !134, size: 64, align: 64)
!318 = !{i32 2, !"Dwarf Version", i32 4}
!319 = !{i32 2, !"Debug Info Version", i32 3}
!320 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!321 = distinct !DISubprogram(name: "GlibGetUserName", scope: !65, file: !65, line: 107, type: !322, isLocal: false, isDefinition: true, scopeLine: 108, isOptimized: false, unit: !0, variables: !324)
!322 = !DISubroutineType(types: !323)
!323 = !{!61}
!324 = !{}
!325 = !DILocation(line: 110, column: 11, scope: !321)
!326 = !DILocation(line: 110, column: 4, scope: !321)
!327 = distinct !DISubprogram(name: "GlibUtils_CreateFileLogger", scope: !65, file: !65, line: 420, type: !328, isLocal: false, isDefinition: true, scopeLine: 424, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !324)
!328 = !DISubroutineType(types: !329)
!329 = !{!330, !61, !74, !196, !196}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!331 = !DILocalVariable(name: "path", arg: 1, scope: !327, file: !65, line: 420, type: !61)
!332 = !DIExpression()
!333 = !DILocation(line: 420, column: 40, scope: !327)
!334 = !DILocalVariable(name: "append", arg: 2, scope: !327, file: !65, line: 421, type: !74)
!335 = !DILocation(line: 421, column: 37, scope: !327)
!336 = !DILocalVariable(name: "maxSize", arg: 3, scope: !327, file: !65, line: 422, type: !196)
!337 = !DILocation(line: 422, column: 34, scope: !327)
!338 = !DILocalVariable(name: "maxFiles", arg: 4, scope: !327, file: !65, line: 423, type: !196)
!339 = !DILocation(line: 423, column: 34, scope: !327)
!340 = !DILocalVariable(name: "data", scope: !327, file: !65, line: 425, type: !63)
!341 = !DILocation(line: 425, column: 16, scope: !327)
!342 = !DILocation(line: 427, column: 4, scope: !327)
!343 = distinct !{!343, !342}
!344 = !DILocation(line: 427, column: 12, scope: !345)
!345 = !DILexicalBlockFile(scope: !346, file: !65, discriminator: 1)
!346 = distinct !DILexicalBlock(scope: !347, file: !65, line: 427, column: 12)
!347 = distinct !DILexicalBlock(scope: !327, file: !65, line: 427, column: 6)
!348 = !DILocation(line: 427, column: 17, scope: !345)
!349 = !DILocation(line: 427, column: 7, scope: !350)
!350 = !DILexicalBlockFile(scope: !351, file: !65, discriminator: 2)
!351 = distinct !DILexicalBlock(scope: !346, file: !65, line: 427, column: 5)
!352 = !DILocation(line: 427, column: 16, scope: !353)
!353 = !DILexicalBlockFile(scope: !354, file: !65, discriminator: 3)
!354 = distinct !DILexicalBlock(scope: !346, file: !65, line: 427, column: 14)
!355 = !DILocation(line: 427, column: 101, scope: !353)
!356 = !DILocation(line: 427, column: 9, scope: !357)
!357 = !DILexicalBlockFile(scope: !347, file: !65, discriminator: 4)
!358 = !DILocation(line: 429, column: 27, scope: !327)
!359 = !DILocation(line: 429, column: 12, scope: !327)
!360 = !DILocation(line: 429, column: 9, scope: !327)
!361 = !DILocation(line: 430, column: 4, scope: !327)
!362 = !DILocation(line: 430, column: 10, scope: !327)
!363 = !DILocation(line: 430, column: 18, scope: !327)
!364 = !DILocation(line: 430, column: 32, scope: !327)
!365 = !DILocation(line: 431, column: 4, scope: !327)
!366 = !DILocation(line: 431, column: 10, scope: !327)
!367 = !DILocation(line: 431, column: 18, scope: !327)
!368 = !DILocation(line: 431, column: 25, scope: !327)
!369 = !DILocation(line: 432, column: 4, scope: !327)
!370 = !DILocation(line: 432, column: 10, scope: !327)
!371 = !DILocation(line: 432, column: 18, scope: !327)
!372 = !DILocation(line: 432, column: 24, scope: !327)
!373 = !DILocation(line: 433, column: 4, scope: !327)
!374 = !DILocation(line: 433, column: 10, scope: !327)
!375 = !DILocation(line: 433, column: 18, scope: !327)
!376 = !DILocation(line: 433, column: 23, scope: !327)
!377 = !DILocation(line: 435, column: 38, scope: !327)
!378 = !DILocation(line: 435, column: 17, scope: !327)
!379 = !DILocation(line: 435, column: 4, scope: !327)
!380 = !DILocation(line: 435, column: 10, scope: !327)
!381 = !DILocation(line: 435, column: 15, scope: !327)
!382 = !DILocation(line: 436, column: 8, scope: !383)
!383 = distinct !DILexicalBlock(scope: !327, file: !65, line: 436, column: 8)
!384 = !DILocation(line: 436, column: 14, scope: !383)
!385 = !DILocation(line: 436, column: 19, scope: !383)
!386 = !DILocation(line: 436, column: 8, scope: !327)
!387 = !DILocation(line: 437, column: 14, scope: !388)
!388 = distinct !DILexicalBlock(scope: !383, file: !65, line: 436, column: 27)
!389 = !DILocation(line: 437, column: 7, scope: !388)
!390 = !DILocation(line: 438, column: 7, scope: !388)
!391 = !DILocation(line: 441, column: 19, scope: !327)
!392 = !DILocation(line: 441, column: 4, scope: !327)
!393 = !DILocation(line: 441, column: 10, scope: !327)
!394 = !DILocation(line: 441, column: 17, scope: !327)
!395 = !DILocation(line: 442, column: 20, scope: !327)
!396 = !DILocation(line: 442, column: 28, scope: !327)
!397 = !DILocation(line: 442, column: 35, scope: !327)
!398 = !DILocation(line: 442, column: 4, scope: !327)
!399 = !DILocation(line: 442, column: 10, scope: !327)
!400 = !DILocation(line: 442, column: 18, scope: !327)
!401 = !DILocation(line: 443, column: 21, scope: !327)
!402 = !DILocation(line: 443, column: 30, scope: !327)
!403 = !DILocation(line: 443, column: 4, scope: !327)
!404 = !DILocation(line: 443, column: 10, scope: !327)
!405 = !DILocation(line: 443, column: 19, scope: !327)
!406 = !DILocation(line: 444, column: 25, scope: !327)
!407 = !DILocation(line: 444, column: 31, scope: !327)
!408 = !DILocation(line: 444, column: 4, scope: !327)
!409 = !DILocation(line: 446, column: 12, scope: !327)
!410 = !DILocation(line: 446, column: 18, scope: !327)
!411 = !DILocation(line: 446, column: 4, scope: !327)
!412 = !DILocation(line: 447, column: 1, scope: !327)
!413 = distinct !DISubprogram(name: "FileLoggerLog", scope: !65, file: !65, line: 328, type: !81, isLocal: true, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !324)
!414 = !DILocalVariable(name: "domain", arg: 1, scope: !413, file: !65, line: 328, type: !83)
!415 = !DILocation(line: 328, column: 28, scope: !413)
!416 = !DILocalVariable(name: "level", arg: 2, scope: !413, file: !65, line: 329, type: !85)
!417 = !DILocation(line: 329, column: 30, scope: !413)
!418 = !DILocalVariable(name: "message", arg: 3, scope: !413, file: !65, line: 330, type: !83)
!419 = !DILocation(line: 330, column: 28, scope: !413)
!420 = !DILocalVariable(name: "data", arg: 4, scope: !413, file: !65, line: 331, type: !86)
!421 = !DILocation(line: 331, column: 24, scope: !413)
!422 = !DILocalVariable(name: "logger", scope: !413, file: !65, line: 333, type: !63)
!423 = !DILocation(line: 333, column: 16, scope: !413)
!424 = !DILocation(line: 333, column: 25, scope: !413)
!425 = !DILocalVariable(name: "written", scope: !413, file: !65, line: 334, type: !108)
!426 = !DILocation(line: 334, column: 10, scope: !413)
!427 = !DILocation(line: 336, column: 50, scope: !413)
!428 = !DILocation(line: 336, column: 58, scope: !413)
!429 = !DILocation(line: 336, column: 18, scope: !413)
!430 = !DILocation(line: 336, column: 4, scope: !431)
!431 = !DILexicalBlockFile(scope: !413, file: !65, discriminator: 1)
!432 = !DILocation(line: 338, column: 8, scope: !433)
!433 = distinct !DILexicalBlock(scope: !413, file: !65, line: 338, column: 8)
!434 = !DILocation(line: 338, column: 16, scope: !433)
!435 = !DILocation(line: 338, column: 8, scope: !413)
!436 = !DILocation(line: 339, column: 7, scope: !437)
!437 = distinct !DILexicalBlock(scope: !433, file: !65, line: 338, column: 23)
!438 = !DILocation(line: 342, column: 8, scope: !439)
!439 = distinct !DILexicalBlock(scope: !413, file: !65, line: 342, column: 8)
!440 = !DILocation(line: 342, column: 16, scope: !439)
!441 = !DILocation(line: 342, column: 21, scope: !439)
!442 = !DILocation(line: 342, column: 8, scope: !413)
!443 = !DILocation(line: 343, column: 11, scope: !444)
!444 = distinct !DILexicalBlock(scope: !445, file: !65, line: 343, column: 11)
!445 = distinct !DILexicalBlock(scope: !439, file: !65, line: 342, column: 29)
!446 = !DILocation(line: 343, column: 19, scope: !444)
!447 = !DILocation(line: 343, column: 24, scope: !444)
!448 = !DILocation(line: 343, column: 11, scope: !445)
!449 = !DILocation(line: 344, column: 40, scope: !450)
!450 = distinct !DILexicalBlock(scope: !444, file: !65, line: 343, column: 32)
!451 = !DILocation(line: 344, column: 25, scope: !450)
!452 = !DILocation(line: 344, column: 10, scope: !450)
!453 = !DILocation(line: 344, column: 18, scope: !450)
!454 = !DILocation(line: 344, column: 23, scope: !450)
!455 = !DILocation(line: 345, column: 7, scope: !450)
!456 = !DILocation(line: 346, column: 11, scope: !457)
!457 = distinct !DILexicalBlock(scope: !445, file: !65, line: 346, column: 11)
!458 = !DILocation(line: 346, column: 19, scope: !457)
!459 = !DILocation(line: 346, column: 24, scope: !457)
!460 = !DILocation(line: 346, column: 11, scope: !445)
!461 = !DILocation(line: 347, column: 10, scope: !462)
!462 = distinct !DILexicalBlock(scope: !457, file: !65, line: 346, column: 32)
!463 = !DILocation(line: 347, column: 18, scope: !462)
!464 = !DILocation(line: 347, column: 24, scope: !462)
!465 = !DILocation(line: 348, column: 10, scope: !462)
!466 = !DILocation(line: 350, column: 4, scope: !445)
!467 = !DILocation(line: 352, column: 27, scope: !468)
!468 = distinct !DILexicalBlock(scope: !413, file: !65, line: 352, column: 8)
!469 = !DILocation(line: 352, column: 9, scope: !468)
!470 = !DILocation(line: 352, column: 8, scope: !413)
!471 = !DILocation(line: 353, column: 7, scope: !472)
!472 = distinct !DILexicalBlock(scope: !468, file: !65, line: 352, column: 36)
!473 = !DILocation(line: 353, column: 15, scope: !472)
!474 = !DILocation(line: 353, column: 21, scope: !472)
!475 = !DILocation(line: 354, column: 7, scope: !472)
!476 = !DILocation(line: 358, column: 33, scope: !477)
!477 = distinct !DILexicalBlock(scope: !413, file: !65, line: 358, column: 8)
!478 = !DILocation(line: 358, column: 41, scope: !477)
!479 = !DILocation(line: 358, column: 47, scope: !477)
!480 = !DILocation(line: 358, column: 8, scope: !477)
!481 = !DILocation(line: 358, column: 75, scope: !477)
!482 = !DILocation(line: 358, column: 8, scope: !413)
!483 = !DILocation(line: 360, column: 11, scope: !484)
!484 = distinct !DILexicalBlock(scope: !485, file: !65, line: 360, column: 11)
!485 = distinct !DILexicalBlock(scope: !477, file: !65, line: 359, column: 28)
!486 = !DILocation(line: 360, column: 19, scope: !484)
!487 = !DILocation(line: 360, column: 27, scope: !484)
!488 = !DILocation(line: 360, column: 11, scope: !485)
!489 = !DILocation(line: 361, column: 36, scope: !490)
!490 = distinct !DILexicalBlock(scope: !484, file: !65, line: 360, column: 32)
!491 = !DILocation(line: 361, column: 29, scope: !490)
!492 = !DILocation(line: 361, column: 10, scope: !490)
!493 = !DILocation(line: 361, column: 18, scope: !490)
!494 = !DILocation(line: 361, column: 26, scope: !490)
!495 = !DILocation(line: 362, column: 14, scope: !496)
!496 = distinct !DILexicalBlock(scope: !490, file: !65, line: 362, column: 14)
!497 = !DILocation(line: 362, column: 22, scope: !496)
!498 = !DILocation(line: 362, column: 33, scope: !496)
!499 = !DILocation(line: 362, column: 41, scope: !496)
!500 = !DILocation(line: 362, column: 30, scope: !496)
!501 = !DILocation(line: 362, column: 14, scope: !490)
!502 = !DILocation(line: 363, column: 32, scope: !503)
!503 = distinct !DILexicalBlock(scope: !496, file: !65, line: 362, column: 50)
!504 = !DILocation(line: 363, column: 40, scope: !503)
!505 = !DILocation(line: 363, column: 13, scope: !503)
!506 = !DILocation(line: 364, column: 13, scope: !503)
!507 = !DILocation(line: 364, column: 21, scope: !503)
!508 = !DILocation(line: 364, column: 28, scope: !503)
!509 = !DILocation(line: 365, column: 43, scope: !503)
!510 = !DILocation(line: 365, column: 28, scope: !503)
!511 = !DILocation(line: 365, column: 13, scope: !503)
!512 = !DILocation(line: 365, column: 21, scope: !503)
!513 = !DILocation(line: 365, column: 26, scope: !503)
!514 = !DILocation(line: 366, column: 10, scope: !503)
!515 = !DILocation(line: 367, column: 32, scope: !516)
!516 = distinct !DILexicalBlock(scope: !496, file: !65, line: 366, column: 17)
!517 = !DILocation(line: 367, column: 40, scope: !516)
!518 = !DILocation(line: 367, column: 13, scope: !516)
!519 = !DILocation(line: 369, column: 7, scope: !490)
!520 = !DILocation(line: 370, column: 29, scope: !521)
!521 = distinct !DILexicalBlock(scope: !484, file: !65, line: 369, column: 14)
!522 = !DILocation(line: 370, column: 37, scope: !521)
!523 = !DILocation(line: 370, column: 10, scope: !521)
!524 = !DILocation(line: 372, column: 4, scope: !485)
!525 = !DILocation(line: 359, column: 8, scope: !477)
!526 = !DILocation(line: 375, column: 52, scope: !413)
!527 = !DILocation(line: 375, column: 60, scope: !413)
!528 = !DILocation(line: 375, column: 20, scope: !413)
!529 = !DILocation(line: 375, column: 4, scope: !431)
!530 = !DILocation(line: 376, column: 1, scope: !413)
!531 = distinct !DISubprogram(name: "FileLoggerDestroy", scope: !65, file: !65, line: 391, type: !90, isLocal: true, isDefinition: true, scopeLine: 392, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !324)
!532 = !DILocalVariable(name: "data", arg: 1, scope: !531, file: !65, line: 391, type: !86)
!533 = !DILocation(line: 391, column: 28, scope: !531)
!534 = !DILocalVariable(name: "logger", scope: !531, file: !65, line: 393, type: !63)
!535 = !DILocation(line: 393, column: 16, scope: !531)
!536 = !DILocation(line: 393, column: 25, scope: !531)
!537 = !DILocation(line: 394, column: 8, scope: !538)
!538 = distinct !DILexicalBlock(scope: !531, file: !65, line: 394, column: 8)
!539 = !DILocation(line: 394, column: 16, scope: !538)
!540 = !DILocation(line: 394, column: 21, scope: !538)
!541 = !DILocation(line: 394, column: 8, scope: !531)
!542 = !DILocation(line: 395, column: 26, scope: !543)
!543 = distinct !DILexicalBlock(scope: !538, file: !65, line: 394, column: 29)
!544 = !DILocation(line: 395, column: 34, scope: !543)
!545 = !DILocation(line: 395, column: 7, scope: !543)
!546 = !DILocation(line: 396, column: 4, scope: !543)
!547 = !DILocation(line: 397, column: 25, scope: !531)
!548 = !DILocation(line: 397, column: 33, scope: !531)
!549 = !DILocation(line: 397, column: 4, scope: !531)
!550 = !DILocation(line: 398, column: 11, scope: !531)
!551 = !DILocation(line: 398, column: 19, scope: !531)
!552 = !DILocation(line: 398, column: 4, scope: !531)
!553 = !DILocation(line: 399, column: 11, scope: !531)
!554 = !DILocation(line: 399, column: 4, scope: !531)
!555 = !DILocation(line: 400, column: 1, scope: !531)
!556 = distinct !DISubprogram(name: "FileLoggerOpen", scope: !65, file: !65, line: 233, type: !557, isLocal: true, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !324)
!557 = !DISubroutineType(types: !558)
!558 = !{!93, !63}
!559 = !DILocalVariable(name: "data", arg: 1, scope: !556, file: !65, line: 233, type: !63)
!560 = !DILocation(line: 233, column: 28, scope: !556)
!561 = !DILocalVariable(name: "logfile", scope: !556, file: !65, line: 235, type: !93)
!562 = !DILocation(line: 235, column: 16, scope: !556)
!563 = !DILocalVariable(name: "path", scope: !556, file: !65, line: 236, type: !57)
!564 = !DILocation(line: 236, column: 11, scope: !556)
!565 = !DILocation(line: 238, column: 4, scope: !556)
!566 = distinct !{!566, !565}
!567 = !DILocation(line: 238, column: 12, scope: !568)
!568 = !DILexicalBlockFile(scope: !569, file: !65, discriminator: 1)
!569 = distinct !DILexicalBlock(scope: !570, file: !65, line: 238, column: 12)
!570 = distinct !DILexicalBlock(scope: !556, file: !65, line: 238, column: 6)
!571 = !DILocation(line: 238, column: 17, scope: !568)
!572 = !DILocation(line: 238, column: 7, scope: !573)
!573 = !DILexicalBlockFile(scope: !574, file: !65, discriminator: 2)
!574 = distinct !DILexicalBlock(scope: !569, file: !65, line: 238, column: 5)
!575 = !DILocation(line: 238, column: 16, scope: !576)
!576 = !DILexicalBlockFile(scope: !577, file: !65, discriminator: 3)
!577 = distinct !DILexicalBlock(scope: !569, file: !65, line: 238, column: 14)
!578 = !DILocation(line: 238, column: 101, scope: !576)
!579 = !DILocation(line: 238, column: 9, scope: !580)
!580 = !DILexicalBlockFile(scope: !570, file: !65, discriminator: 4)
!581 = !DILocation(line: 239, column: 29, scope: !556)
!582 = !DILocation(line: 239, column: 11, scope: !556)
!583 = !DILocation(line: 239, column: 9, scope: !556)
!584 = !DILocation(line: 241, column: 20, scope: !585)
!585 = distinct !DILexicalBlock(scope: !556, file: !65, line: 241, column: 8)
!586 = !DILocation(line: 241, column: 8, scope: !585)
!587 = !DILocation(line: 241, column: 8, scope: !556)
!588 = !DILocalVariable(name: "fstats", scope: !589, file: !65, line: 244, type: !590)
!589 = distinct !DILexicalBlock(scope: !585, file: !65, line: 241, column: 47)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "GStatBuf", file: !591, line: 50, baseType: !592)
!591 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line267")
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !593, line: 46, size: 1152, align: 64, elements: !594)
!593 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/open-vm-tools/line267")
!594 = !{!595, !598, !600, !602, !604, !606, !608, !609, !610, !612, !614, !616, !624, !625, !626}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !592, file: !593, line: 48, baseType: !596, size: 64, align: 64)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !597, line: 124, baseType: !110)
!597 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line267")
!598 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !592, file: !593, line: 53, baseType: !599, size: 64, align: 64, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !597, line: 127, baseType: !110)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !592, file: !593, line: 61, baseType: !601, size: 64, align: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !597, line: 130, baseType: !110)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !592, file: !593, line: 62, baseType: !603, size: 32, align: 32, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !597, line: 129, baseType: !122)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !592, file: !593, line: 64, baseType: !605, size: 32, align: 32, offset: 224)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !597, line: 125, baseType: !122)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !592, file: !593, line: 65, baseType: !607, size: 32, align: 32, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !597, line: 126, baseType: !122)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !592, file: !593, line: 67, baseType: !76, size: 32, align: 32, offset: 288)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !592, file: !593, line: 69, baseType: !596, size: 64, align: 64, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !592, file: !593, line: 74, baseType: !611, size: 64, align: 64, offset: 384)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !597, line: 131, baseType: !134)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !592, file: !593, line: 78, baseType: !613, size: 64, align: 64, offset: 448)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !597, line: 153, baseType: !134)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !592, file: !593, line: 80, baseType: !615, size: 64, align: 64, offset: 512)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !597, line: 158, baseType: !134)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !592, file: !593, line: 91, baseType: !617, size: 128, align: 64, offset: 576)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !618, line: 120, size: 128, align: 64, elements: !619)
!618 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line267")
!619 = !{!620, !622}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !617, file: !618, line: 122, baseType: !621, size: 64, align: 64)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !597, line: 139, baseType: !134)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !617, file: !618, line: 123, baseType: !623, size: 64, align: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !597, line: 175, baseType: !134)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !592, file: !593, line: 92, baseType: !617, size: 128, align: 64, offset: 704)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !592, file: !593, line: 93, baseType: !617, size: 128, align: 64, offset: 832)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !592, file: !593, line: 106, baseType: !627, size: 192, align: 64, offset: 960)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !623, size: 192, align: 64, elements: !628)
!628 = !{!629}
!629 = !DISubrange(count: 3)
!630 = !DILocation(line: 244, column: 16, scope: !589)
!631 = !DILocation(line: 249, column: 16, scope: !632)
!632 = distinct !DILexicalBlock(scope: !589, file: !65, line: 249, column: 11)
!633 = !DILocation(line: 249, column: 11, scope: !632)
!634 = !DILocation(line: 249, column: 31, scope: !632)
!635 = !DILocation(line: 249, column: 11, scope: !589)
!636 = !DILocation(line: 250, column: 40, scope: !637)
!637 = distinct !DILexicalBlock(scope: !632, file: !65, line: 249, column: 37)
!638 = !DILocation(line: 250, column: 26, scope: !637)
!639 = !DILocation(line: 250, column: 10, scope: !637)
!640 = !DILocation(line: 250, column: 16, scope: !637)
!641 = !DILocation(line: 250, column: 24, scope: !637)
!642 = !DILocation(line: 251, column: 7, scope: !637)
!643 = !DILocation(line: 253, column: 12, scope: !644)
!644 = distinct !DILexicalBlock(scope: !589, file: !65, line: 253, column: 11)
!645 = !DILocation(line: 253, column: 18, scope: !644)
!646 = !DILocation(line: 253, column: 25, scope: !644)
!647 = !DILocation(line: 253, column: 28, scope: !648)
!648 = !DILexicalBlockFile(scope: !644, file: !65, discriminator: 1)
!649 = !DILocation(line: 253, column: 34, scope: !648)
!650 = !DILocation(line: 253, column: 45, scope: !648)
!651 = !DILocation(line: 253, column: 51, scope: !648)
!652 = !DILocation(line: 253, column: 42, scope: !648)
!653 = !DILocation(line: 253, column: 11, scope: !648)
!654 = !DILocalVariable(name: "log", scope: !655, file: !65, line: 260, type: !57)
!655 = distinct !DILexicalBlock(scope: !644, file: !65, line: 253, column: 60)
!656 = !DILocation(line: 260, column: 17, scope: !655)
!657 = !DILocalVariable(name: "id", scope: !655, file: !65, line: 261, type: !196)
!658 = !DILocation(line: 261, column: 16, scope: !655)
!659 = !DILocalVariable(name: "logfiles", scope: !655, file: !65, line: 262, type: !660)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64, align: 64)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPtrArray", file: !662, line: 39, baseType: !663)
!662 = !DIFile(filename: "/usr/include/glib-2.0/glib/garray.h", directory: "/home/lichi/Desktop/open-vm-tools/line267")
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GPtrArray", file: !662, line: 53, size: 128, align: 64, elements: !664)
!664 = !{!665, !666}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "pdata", scope: !663, file: !662, line: 55, baseType: !165, size: 64, align: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !663, file: !662, line: 56, baseType: !196, size: 32, align: 32, offset: 64)
!667 = !DILocation(line: 262, column: 21, scope: !655)
!668 = !DILocation(line: 262, column: 32, scope: !655)
!669 = !DILocation(line: 269, column: 18, scope: !670)
!670 = distinct !DILexicalBlock(scope: !655, file: !65, line: 269, column: 10)
!671 = !DILocation(line: 269, column: 15, scope: !670)
!672 = !DILocation(line: 269, column: 23, scope: !673)
!673 = !DILexicalBlockFile(scope: !674, file: !65, discriminator: 1)
!674 = distinct !DILexicalBlock(scope: !670, file: !65, line: 269, column: 10)
!675 = !DILocation(line: 269, column: 28, scope: !673)
!676 = !DILocation(line: 269, column: 34, scope: !673)
!677 = !DILocation(line: 269, column: 26, scope: !673)
!678 = !DILocation(line: 269, column: 10, scope: !673)
!679 = !DILocation(line: 270, column: 37, scope: !680)
!680 = distinct !DILexicalBlock(scope: !674, file: !65, line: 269, column: 50)
!681 = !DILocation(line: 270, column: 43, scope: !680)
!682 = !DILocation(line: 270, column: 19, scope: !680)
!683 = !DILocation(line: 270, column: 17, scope: !680)
!684 = !DILocation(line: 271, column: 29, scope: !680)
!685 = !DILocation(line: 271, column: 39, scope: !680)
!686 = !DILocation(line: 271, column: 13, scope: !680)
!687 = !DILocation(line: 272, column: 30, scope: !688)
!688 = distinct !DILexicalBlock(scope: !680, file: !65, line: 272, column: 17)
!689 = !DILocation(line: 272, column: 18, scope: !688)
!690 = !DILocation(line: 272, column: 17, scope: !680)
!691 = !DILocation(line: 273, column: 16, scope: !692)
!692 = distinct !DILexicalBlock(scope: !688, file: !65, line: 272, column: 60)
!693 = !DILocation(line: 275, column: 10, scope: !680)
!694 = !DILocation(line: 269, column: 46, scope: !695)
!695 = !DILexicalBlockFile(scope: !674, file: !65, discriminator: 2)
!696 = !DILocation(line: 269, column: 10, scope: !695)
!697 = distinct !{!697, !698}
!698 = !DILocation(line: 269, column: 10, scope: !655)
!699 = !DILocation(line: 278, column: 20, scope: !700)
!700 = distinct !DILexicalBlock(scope: !655, file: !65, line: 278, column: 10)
!701 = !DILocation(line: 278, column: 30, scope: !700)
!702 = !DILocation(line: 278, column: 34, scope: !700)
!703 = !DILocation(line: 278, column: 18, scope: !700)
!704 = !DILocation(line: 278, column: 15, scope: !700)
!705 = !DILocation(line: 278, column: 39, scope: !706)
!706 = !DILexicalBlockFile(scope: !707, file: !65, discriminator: 1)
!707 = distinct !DILexicalBlock(scope: !700, file: !65, line: 278, column: 10)
!708 = !DILocation(line: 278, column: 42, scope: !706)
!709 = !DILocation(line: 278, column: 10, scope: !706)
!710 = !DILocalVariable(name: "dest", scope: !711, file: !65, line: 279, type: !57)
!711 = distinct !DILexicalBlock(scope: !707, file: !65, line: 278, column: 53)
!712 = !DILocation(line: 279, column: 20, scope: !711)
!713 = !DILocation(line: 279, column: 47, scope: !711)
!714 = !DILocation(line: 279, column: 27, scope: !711)
!715 = !DILocation(line: 279, column: 29, scope: !711)
!716 = !DILocation(line: 279, column: 40, scope: !711)
!717 = !DILocalVariable(name: "src", scope: !711, file: !65, line: 280, type: !57)
!718 = !DILocation(line: 280, column: 20, scope: !711)
!719 = !DILocation(line: 280, column: 46, scope: !711)
!720 = !DILocation(line: 280, column: 49, scope: !711)
!721 = !DILocation(line: 280, column: 26, scope: !711)
!722 = !DILocation(line: 280, column: 28, scope: !711)
!723 = !DILocation(line: 280, column: 39, scope: !711)
!724 = !DILocation(line: 282, column: 30, scope: !725)
!725 = distinct !DILexicalBlock(scope: !711, file: !65, line: 282, column: 17)
!726 = !DILocation(line: 282, column: 18, scope: !725)
!727 = !DILocation(line: 282, column: 56, scope: !725)
!728 = !DILocation(line: 283, column: 31, scope: !725)
!729 = !DILocation(line: 283, column: 19, scope: !725)
!730 = !DILocation(line: 283, column: 57, scope: !725)
!731 = !DILocation(line: 284, column: 27, scope: !725)
!732 = !DILocation(line: 284, column: 18, scope: !725)
!733 = !DILocation(line: 284, column: 33, scope: !725)
!734 = !DILocation(line: 282, column: 17, scope: !735)
!735 = !DILexicalBlockFile(scope: !711, file: !65, discriminator: 1)
!736 = !DILocation(line: 285, column: 23, scope: !737)
!737 = distinct !DILexicalBlock(scope: !725, file: !65, line: 284, column: 40)
!738 = !DILocation(line: 285, column: 28, scope: !737)
!739 = !DILocation(line: 285, column: 16, scope: !737)
!740 = !DILocation(line: 286, column: 13, scope: !737)
!741 = !DILocation(line: 287, column: 25, scope: !742)
!742 = distinct !DILexicalBlock(scope: !725, file: !65, line: 286, column: 20)
!743 = !DILocation(line: 287, column: 16, scope: !742)
!744 = !DILocation(line: 289, column: 10, scope: !711)
!745 = !DILocation(line: 278, column: 49, scope: !746)
!746 = !DILexicalBlockFile(scope: !707, file: !65, discriminator: 2)
!747 = !DILocation(line: 278, column: 10, scope: !746)
!748 = distinct !{!748, !749}
!749 = !DILocation(line: 278, column: 10, scope: !655)
!750 = !DILocation(line: 292, column: 18, scope: !751)
!751 = distinct !DILexicalBlock(scope: !655, file: !65, line: 292, column: 10)
!752 = !DILocation(line: 292, column: 15, scope: !751)
!753 = !DILocation(line: 292, column: 23, scope: !754)
!754 = !DILexicalBlockFile(scope: !755, file: !65, discriminator: 1)
!755 = distinct !DILexicalBlock(scope: !751, file: !65, line: 292, column: 10)
!756 = !DILocation(line: 292, column: 28, scope: !754)
!757 = !DILocation(line: 292, column: 38, scope: !754)
!758 = !DILocation(line: 292, column: 26, scope: !754)
!759 = !DILocation(line: 292, column: 10, scope: !754)
!760 = !DILocation(line: 293, column: 40, scope: !761)
!761 = distinct !DILexicalBlock(scope: !755, file: !65, line: 292, column: 49)
!762 = !DILocation(line: 293, column: 20, scope: !761)
!763 = !DILocation(line: 293, column: 22, scope: !761)
!764 = !DILocation(line: 293, column: 33, scope: !761)
!765 = !DILocation(line: 293, column: 13, scope: !761)
!766 = !DILocation(line: 294, column: 10, scope: !761)
!767 = !DILocation(line: 292, column: 45, scope: !768)
!768 = !DILexicalBlockFile(scope: !755, file: !65, discriminator: 2)
!769 = !DILocation(line: 292, column: 10, scope: !768)
!770 = distinct !{!770, !771}
!771 = !DILocation(line: 292, column: 10, scope: !655)
!772 = !DILocation(line: 295, column: 27, scope: !655)
!773 = !DILocation(line: 295, column: 10, scope: !655)
!774 = !DILocation(line: 296, column: 10, scope: !655)
!775 = !DILocation(line: 296, column: 16, scope: !655)
!776 = !DILocation(line: 296, column: 24, scope: !655)
!777 = !DILocation(line: 297, column: 10, scope: !655)
!778 = !DILocation(line: 297, column: 16, scope: !655)
!779 = !DILocation(line: 297, column: 23, scope: !655)
!780 = !DILocation(line: 298, column: 7, scope: !655)
!781 = !DILocation(line: 299, column: 4, scope: !589)
!782 = !DILocation(line: 301, column: 36, scope: !556)
!783 = !DILocation(line: 301, column: 42, scope: !556)
!784 = !DILocation(line: 301, column: 48, scope: !556)
!785 = !DILocation(line: 301, column: 14, scope: !556)
!786 = !DILocation(line: 301, column: 12, scope: !556)
!787 = !DILocation(line: 302, column: 11, scope: !556)
!788 = !DILocation(line: 302, column: 4, scope: !556)
!789 = !DILocation(line: 304, column: 8, scope: !790)
!790 = distinct !DILexicalBlock(scope: !556, file: !65, line: 304, column: 8)
!791 = !DILocation(line: 304, column: 16, scope: !790)
!792 = !DILocation(line: 304, column: 8, scope: !556)
!793 = !DILocation(line: 305, column: 33, scope: !794)
!794 = distinct !DILexicalBlock(scope: !790, file: !65, line: 304, column: 24)
!795 = !DILocation(line: 305, column: 7, scope: !794)
!796 = !DILocation(line: 306, column: 4, scope: !794)
!797 = !DILocation(line: 308, column: 11, scope: !556)
!798 = !DILocation(line: 308, column: 4, scope: !556)
!799 = !DILocation(line: 309, column: 1, scope: !556)
!800 = distinct !DISubprogram(name: "FileLoggerIsValid", scope: !65, file: !65, line: 84, type: !801, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !324)
!801 = !DISubroutineType(types: !802)
!802 = !{!74, !63}
!803 = !DILocalVariable(name: "logger", arg: 1, scope: !800, file: !65, line: 84, type: !63)
!804 = !DILocation(line: 84, column: 31, scope: !800)
!805 = !DILocation(line: 86, column: 8, scope: !806)
!806 = distinct !DILexicalBlock(scope: !800, file: !65, line: 86, column: 8)
!807 = !DILocation(line: 86, column: 16, scope: !806)
!808 = !DILocation(line: 86, column: 21, scope: !806)
!809 = !DILocation(line: 86, column: 8, scope: !800)
!810 = !DILocalVariable(name: "fd", scope: !811, file: !65, line: 87, type: !76)
!811 = distinct !DILexicalBlock(scope: !806, file: !65, line: 86, column: 29)
!812 = !DILocation(line: 87, column: 11, scope: !811)
!813 = !DILocation(line: 87, column: 41, scope: !811)
!814 = !DILocation(line: 87, column: 49, scope: !811)
!815 = !DILocation(line: 87, column: 16, scope: !811)
!816 = !DILocation(line: 88, column: 20, scope: !811)
!817 = !DILocation(line: 88, column: 14, scope: !811)
!818 = !DILocation(line: 88, column: 32, scope: !811)
!819 = !DILocation(line: 88, column: 7, scope: !811)
!820 = !DILocation(line: 91, column: 4, scope: !800)
!821 = !DILocation(line: 92, column: 1, scope: !800)
!822 = distinct !DISubprogram(name: "FileLoggerGetPath", scope: !65, file: !65, line: 147, type: !823, isLocal: true, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !324)
!823 = !DISubroutineType(types: !824)
!824 = !{!57, !63, !75}
!825 = !DILocalVariable(name: "data", arg: 1, scope: !822, file: !65, line: 147, type: !63)
!826 = !DILocation(line: 147, column: 31, scope: !822)
!827 = !DILocalVariable(name: "index", arg: 2, scope: !822, file: !65, line: 148, type: !75)
!828 = !DILocation(line: 148, column: 24, scope: !822)
!829 = !DILocalVariable(name: "hasIndex", scope: !822, file: !65, line: 150, type: !74)
!830 = !DILocation(line: 150, column: 13, scope: !822)
!831 = !DILocalVariable(name: "indexStr", scope: !822, file: !65, line: 151, type: !832)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 88, align: 8, elements: !833)
!833 = !{!834}
!834 = !DISubrange(count: 11)
!835 = !DILocation(line: 151, column: 10, scope: !822)
!836 = !DILocalVariable(name: "logpath", scope: !822, file: !65, line: 152, type: !57)
!837 = !DILocation(line: 152, column: 11, scope: !822)
!838 = !DILocalVariable(name: "vars", scope: !822, file: !65, line: 153, type: !839)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 384, align: 64, elements: !257)
!840 = !DILocation(line: 153, column: 11, scope: !822)
!841 = !DILocation(line: 153, column: 20, scope: !822)
!842 = !DILocation(line: 156, column: 17, scope: !822)
!843 = !DILocalVariable(name: "tmp", scope: !822, file: !65, line: 158, type: !57)
!844 = !DILocation(line: 158, column: 11, scope: !822)
!845 = !DILocalVariable(name: "i", scope: !822, file: !65, line: 159, type: !846)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !847, line: 216, baseType: !110)
!847 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line267")
!848 = !DILocation(line: 159, column: 11, scope: !822)
!849 = !DILocation(line: 161, column: 23, scope: !822)
!850 = !DILocation(line: 161, column: 29, scope: !822)
!851 = !DILocation(line: 161, column: 14, scope: !822)
!852 = !DILocation(line: 161, column: 12, scope: !822)
!853 = !DILocation(line: 162, column: 23, scope: !822)
!854 = !DILocation(line: 162, column: 4, scope: !822)
!855 = !DILocation(line: 162, column: 12, scope: !822)
!856 = !DILocation(line: 163, column: 51, scope: !822)
!857 = !DILocation(line: 163, column: 14, scope: !858)
!858 = !DILexicalBlockFile(scope: !822, file: !65, discriminator: 1)
!859 = !DILocation(line: 163, column: 4, scope: !822)
!860 = !DILocation(line: 163, column: 12, scope: !822)
!861 = !DILocation(line: 164, column: 15, scope: !822)
!862 = !DILocation(line: 164, column: 48, scope: !822)
!863 = !DILocation(line: 164, column: 4, scope: !822)
!864 = !DILocation(line: 166, column: 11, scope: !865)
!865 = distinct !DILexicalBlock(scope: !822, file: !65, line: 166, column: 4)
!866 = !DILocation(line: 166, column: 9, scope: !865)
!867 = !DILocation(line: 166, column: 16, scope: !868)
!868 = !DILexicalBlockFile(scope: !869, file: !65, discriminator: 1)
!869 = distinct !DILexicalBlock(scope: !865, file: !65, line: 166, column: 4)
!870 = !DILocation(line: 166, column: 18, scope: !868)
!871 = !DILocation(line: 166, column: 4, scope: !868)
!872 = !DILocalVariable(name: "last", scope: !873, file: !65, line: 167, type: !215)
!873 = distinct !DILexicalBlock(scope: !869, file: !65, line: 166, column: 66)
!874 = !DILocation(line: 167, column: 13, scope: !873)
!875 = !DILocation(line: 167, column: 20, scope: !873)
!876 = !DILocalVariable(name: "start", scope: !873, file: !65, line: 168, type: !215)
!877 = !DILocation(line: 168, column: 13, scope: !873)
!878 = !DILocation(line: 169, column: 7, scope: !873)
!879 = !DILocation(line: 169, column: 30, scope: !880)
!880 = !DILexicalBlockFile(scope: !873, file: !65, discriminator: 1)
!881 = !DILocation(line: 169, column: 41, scope: !880)
!882 = !DILocation(line: 169, column: 36, scope: !880)
!883 = !DILocation(line: 169, column: 23, scope: !880)
!884 = !DILocation(line: 169, column: 21, scope: !880)
!885 = !DILocation(line: 169, column: 46, scope: !880)
!886 = !DILocation(line: 169, column: 7, scope: !880)
!887 = !DILocalVariable(name: "tmp", scope: !888, file: !65, line: 170, type: !57)
!888 = distinct !DILexicalBlock(scope: !873, file: !65, line: 169, column: 54)
!889 = !DILocation(line: 170, column: 17, scope: !888)
!890 = !DILocalVariable(name: "end", scope: !888, file: !65, line: 171, type: !215)
!891 = !DILocation(line: 171, column: 16, scope: !888)
!892 = !DILocation(line: 171, column: 22, scope: !888)
!893 = !DILocation(line: 171, column: 42, scope: !888)
!894 = !DILocation(line: 171, column: 37, scope: !888)
!895 = !DILocation(line: 171, column: 30, scope: !888)
!896 = !DILocation(line: 171, column: 28, scope: !888)
!897 = !DILocalVariable(name: "offset", scope: !888, file: !65, line: 172, type: !846)
!898 = !DILocation(line: 172, column: 17, scope: !888)
!899 = !DILocation(line: 172, column: 27, scope: !888)
!900 = !DILocation(line: 172, column: 35, scope: !888)
!901 = !DILocation(line: 172, column: 33, scope: !888)
!902 = !DILocation(line: 172, column: 55, scope: !888)
!903 = !DILocation(line: 172, column: 56, scope: !888)
!904 = !DILocation(line: 172, column: 50, scope: !888)
!905 = !DILocation(line: 172, column: 43, scope: !888)
!906 = !DILocation(line: 172, column: 41, scope: !888)
!907 = !DILocation(line: 174, column: 11, scope: !888)
!908 = !DILocation(line: 174, column: 17, scope: !888)
!909 = !DILocation(line: 175, column: 42, scope: !888)
!910 = !DILocation(line: 175, column: 56, scope: !888)
!911 = !DILocation(line: 175, column: 57, scope: !888)
!912 = !DILocation(line: 175, column: 51, scope: !888)
!913 = !DILocation(line: 175, column: 62, scope: !888)
!914 = !DILocation(line: 175, column: 16, scope: !888)
!915 = !DILocation(line: 175, column: 14, scope: !888)
!916 = !DILocation(line: 176, column: 17, scope: !888)
!917 = !DILocation(line: 176, column: 10, scope: !888)
!918 = !DILocation(line: 177, column: 20, scope: !888)
!919 = !DILocation(line: 177, column: 18, scope: !888)
!920 = !DILocation(line: 178, column: 17, scope: !888)
!921 = !DILocation(line: 178, column: 27, scope: !888)
!922 = !DILocation(line: 178, column: 25, scope: !888)
!923 = !DILocation(line: 178, column: 15, scope: !888)
!924 = !DILocation(line: 181, column: 14, scope: !925)
!925 = distinct !DILexicalBlock(scope: !888, file: !65, line: 181, column: 14)
!926 = !DILocation(line: 181, column: 16, scope: !925)
!927 = !DILocation(line: 181, column: 14, scope: !888)
!928 = !DILocation(line: 182, column: 22, scope: !929)
!929 = distinct !DILexicalBlock(scope: !925, file: !65, line: 181, column: 22)
!930 = !DILocation(line: 183, column: 10, scope: !929)
!931 = !DILocation(line: 169, column: 7, scope: !932)
!932 = !DILexicalBlockFile(scope: !873, file: !65, discriminator: 2)
!933 = distinct !{!933, !878}
!934 = !DILocation(line: 185, column: 4, scope: !873)
!935 = !DILocation(line: 166, column: 60, scope: !936)
!936 = !DILexicalBlockFile(scope: !869, file: !65, discriminator: 2)
!937 = !DILocation(line: 166, column: 4, scope: !936)
!938 = distinct !{!938, !939}
!939 = !DILocation(line: 166, column: 4, scope: !822)
!940 = !DILocation(line: 187, column: 11, scope: !822)
!941 = !DILocation(line: 187, column: 4, scope: !822)
!942 = !DILocation(line: 193, column: 8, scope: !943)
!943 = distinct !DILexicalBlock(scope: !822, file: !65, line: 193, column: 8)
!944 = !DILocation(line: 193, column: 14, scope: !943)
!945 = !DILocation(line: 193, column: 19, scope: !943)
!946 = !DILocation(line: 193, column: 23, scope: !947)
!947 = !DILexicalBlockFile(scope: !943, file: !65, discriminator: 1)
!948 = !DILocation(line: 193, column: 8, scope: !947)
!949 = !DILocalVariable(name: "sep", scope: !950, file: !65, line: 194, type: !215)
!950 = distinct !DILexicalBlock(scope: !943, file: !65, line: 193, column: 33)
!951 = !DILocation(line: 194, column: 13, scope: !950)
!952 = !DILocation(line: 194, column: 27, scope: !950)
!953 = !DILocation(line: 194, column: 19, scope: !950)
!954 = !DILocalVariable(name: "pathsep", scope: !950, file: !65, line: 195, type: !215)
!955 = !DILocation(line: 195, column: 13, scope: !950)
!956 = !DILocation(line: 195, column: 31, scope: !950)
!957 = !DILocation(line: 195, column: 23, scope: !950)
!958 = !DILocation(line: 197, column: 11, scope: !959)
!959 = distinct !DILexicalBlock(scope: !950, file: !65, line: 197, column: 11)
!960 = !DILocation(line: 197, column: 19, scope: !959)
!961 = !DILocation(line: 197, column: 11, scope: !950)
!962 = !DILocation(line: 198, column: 28, scope: !963)
!963 = distinct !DILexicalBlock(scope: !959, file: !65, line: 197, column: 27)
!964 = !DILocation(line: 198, column: 20, scope: !963)
!965 = !DILocation(line: 198, column: 18, scope: !963)
!966 = !DILocation(line: 199, column: 7, scope: !963)
!967 = !DILocation(line: 201, column: 11, scope: !968)
!968 = distinct !DILexicalBlock(scope: !950, file: !65, line: 201, column: 11)
!969 = !DILocation(line: 201, column: 15, scope: !968)
!970 = !DILocation(line: 201, column: 22, scope: !968)
!971 = !DILocation(line: 201, column: 25, scope: !972)
!972 = !DILexicalBlockFile(scope: !968, file: !65, discriminator: 1)
!973 = !DILocation(line: 201, column: 31, scope: !972)
!974 = !DILocation(line: 201, column: 29, scope: !972)
!975 = !DILocation(line: 201, column: 11, scope: !972)
!976 = !DILocation(line: 202, column: 11, scope: !977)
!977 = distinct !DILexicalBlock(scope: !968, file: !65, line: 201, column: 40)
!978 = !DILocation(line: 202, column: 15, scope: !977)
!979 = !DILocation(line: 203, column: 13, scope: !977)
!980 = !DILocation(line: 204, column: 44, scope: !977)
!981 = !DILocation(line: 204, column: 53, scope: !977)
!982 = !DILocation(line: 204, column: 60, scope: !977)
!983 = !DILocation(line: 204, column: 16, scope: !977)
!984 = !DILocation(line: 204, column: 14, scope: !977)
!985 = !DILocation(line: 205, column: 7, scope: !977)
!986 = !DILocation(line: 206, column: 41, scope: !987)
!987 = distinct !DILexicalBlock(scope: !968, file: !65, line: 205, column: 14)
!988 = !DILocation(line: 206, column: 50, scope: !987)
!989 = !DILocation(line: 206, column: 16, scope: !987)
!990 = !DILocation(line: 206, column: 14, scope: !987)
!991 = !DILocation(line: 208, column: 14, scope: !950)
!992 = !DILocation(line: 208, column: 7, scope: !950)
!993 = !DILocation(line: 209, column: 17, scope: !950)
!994 = !DILocation(line: 209, column: 15, scope: !950)
!995 = !DILocation(line: 210, column: 4, scope: !950)
!996 = !DILocation(line: 212, column: 11, scope: !822)
!997 = !DILocation(line: 212, column: 4, scope: !822)
