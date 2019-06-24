; ModuleID = './pollGtk.o.i'
source_filename = "./pollGtk.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PollImpl = type { void ()*, void ()*, void (i8, i8*, i32, i32)*, i32 (i64, i32, void (i8*)*, i8*, i32, i64, %struct.MXUserRecLock*)*, i8 (i64, i32, void (i8*)*, i8*, i32)*, i8 (i64, i32, void (i8*)*, i32, i8**)*, i8 ()*, void (i64)* }
%struct.MXUserRecLock = type opaque
%struct.Poll = type { %struct.MXUserExclLock*, %struct._GHashTable*, %struct._GHashTable* }
%struct.MXUserExclLock = type opaque
%struct._GHashTable = type opaque
%struct.PollClassSet = type { i64 }
%struct.PollGtkEntry = type { %struct.PollEntryInfo, %struct.PollEntryInfo, i32, i64, i32, %struct._GIOChannel* }
%struct.PollEntryInfo = type { i32, void (i8*)*, i8*, %struct.PollClassSet, %struct.MXUserRecLock*, i32 }
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
%struct.PollGtkFindEntryData = type { i32, void (i8*)*, i8*, %struct.PollClassSet, i32, i8 }

@Poll_InitGtk.inited = internal global i64 0, align 8
@Poll_InitGtk.gtkImpl = internal constant %struct.PollImpl { void ()* @PollGtkInit, void ()* @PollGtkExit, void (i8, i8*, i32, i32)* @PollGtkLoopTimeout, i32 (i64, i32, void (i8*)*, i8*, i32, i64, %struct.MXUserRecLock*)* @PollGtkCallback, i8 (i64, i32, void (i8*)*, i8*, i32)* @PollGtkCallbackRemove, i8 (i64, i32, void (i8*)*, i32, i8**)* @PollGtkCallbackRemoveOneByCB, i8 ()* @PollLockingAlwaysEnabled, void (i64)* null }, align 8
@pollState = internal global %struct.Poll* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"pollGtkLock\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"NOT_IMPLEMENTED %s:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"pollGtk.c\00", align 1

; Function Attrs: nounwind uwtable
define void @Poll_InitGtk() #0 !dbg !314 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = call i32 (i64*, i32, ...) bitcast (i32 (...)* @__atomic_load_8 to i32 (i64*, i32, ...)*)(i64* @Poll_InitGtk.inited, i32 5), !dbg !358
  %5 = sext i32 %4 to i64, !dbg !362
  %6 = inttoptr i64 %5 to i8*, !dbg !362
  store i8* %6, i8** %2, align 8, !dbg !363
  %7 = load i8*, i8** %2, align 8, !dbg !364
  %8 = icmp ne i8* %7, null, !dbg !365
  br i1 %8, label %12, label %9, !dbg !366

; <label>:9:                                      ; preds = %0
  %10 = call i32 @g_once_init_enter(i8* bitcast (i64* @Poll_InitGtk.inited to i8*)), !dbg !367
  %11 = icmp ne i32 %10, 0, !dbg !369
  br label %12

; <label>:12:                                     ; preds = %9, %0
  %13 = phi i1 [ false, %0 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32, !dbg !370
  store i32 %14, i32* %1, align 4, !dbg !372
  %15 = load i32, i32* %1, align 4, !dbg !373
  %16 = icmp ne i32 %15, 0, !dbg !374
  br i1 %16, label %17, label %19, !dbg !375

; <label>:17:                                     ; preds = %12
  call void @llvm.dbg.declare(metadata i64* %3, metadata !376, metadata !378), !dbg !379
  store i64 1, i64* %3, align 8, !dbg !379
  call void @Poll_InitWithImpl(%struct.PollImpl* @Poll_InitGtk.gtkImpl), !dbg !380
  %18 = load i64, i64* %3, align 8, !dbg !381
  call void @g_once_init_leave(i8* bitcast (i64* @Poll_InitGtk.inited to i8*), i64 %18), !dbg !383
  br label %19, !dbg !384

; <label>:19:                                     ; preds = %17, %12
  ret void, !dbg !385
}

; Function Attrs: nounwind uwtable
define internal void @PollGtkInit() #0 !dbg !386 {
  %1 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !387
  %2 = bitcast i8* %1 to %struct.Poll*, !dbg !388
  store %struct.Poll* %2, %struct.Poll** @pollState, align 8, !dbg !389
  %3 = call %struct.MXUserExclLock* @MXUser_CreateExclLock(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 -268406704), !dbg !390
  %4 = load %struct.Poll*, %struct.Poll** @pollState, align 8, !dbg !391
  %5 = getelementptr inbounds %struct.Poll, %struct.Poll* %4, i32 0, i32 0, !dbg !392
  store %struct.MXUserExclLock* %3, %struct.MXUserExclLock** %5, align 8, !dbg !393
  %6 = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_direct_hash, i32 (i8*, i8*)* @g_direct_equal, void (i8*)* null, void (i8*)* @PollGtkRemoveOneCallback), !dbg !394
  %7 = load %struct.Poll*, %struct.Poll** @pollState, align 8, !dbg !395
  %8 = getelementptr inbounds %struct.Poll, %struct.Poll* %7, i32 0, i32 1, !dbg !396
  store %struct._GHashTable* %6, %struct._GHashTable** %8, align 8, !dbg !397
  %9 = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_direct_hash, i32 (i8*, i8*)* @g_direct_equal, void (i8*)* null, void (i8*)* @PollGtkRemoveOneCallback), !dbg !398
  %10 = load %struct.Poll*, %struct.Poll** @pollState, align 8, !dbg !399
  %11 = getelementptr inbounds %struct.Poll, %struct.Poll* %10, i32 0, i32 2, !dbg !400
  store %struct._GHashTable* %9, %struct._GHashTable** %11, align 8, !dbg !401
  ret void, !dbg !402
}

; Function Attrs: nounwind uwtable
define internal void @PollGtkExit() #0 !dbg !403 {
  %1 = alloca %struct.Poll*, align 8
  call void @llvm.dbg.declare(metadata %struct.Poll** %1, metadata !404, metadata !378), !dbg !405
  %2 = load %struct.Poll*, %struct.Poll** @pollState, align 8, !dbg !406
  store %struct.Poll* %2, %struct.Poll** %1, align 8, !dbg !405
  call void @PollGtkLock(), !dbg !407
  %3 = load %struct.Poll*, %struct.Poll** %1, align 8, !dbg !408
  %4 = getelementptr inbounds %struct.Poll, %struct.Poll* %3, i32 0, i32 1, !dbg !409
  %5 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !409
  call void @g_hash_table_destroy(%struct._GHashTable* %5), !dbg !410
  %6 = load %struct.Poll*, %struct.Poll** %1, align 8, !dbg !411
  %7 = getelementptr inbounds %struct.Poll, %struct.Poll* %6, i32 0, i32 2, !dbg !412
  %8 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !412
  call void @g_hash_table_destroy(%struct._GHashTable* %8), !dbg !413
  %9 = load %struct.Poll*, %struct.Poll** %1, align 8, !dbg !414
  %10 = getelementptr inbounds %struct.Poll, %struct.Poll* %9, i32 0, i32 1, !dbg !415
  store %struct._GHashTable* null, %struct._GHashTable** %10, align 8, !dbg !416
  %11 = load %struct.Poll*, %struct.Poll** %1, align 8, !dbg !417
  %12 = getelementptr inbounds %struct.Poll, %struct.Poll* %11, i32 0, i32 2, !dbg !418
  store %struct._GHashTable* null, %struct._GHashTable** %12, align 8, !dbg !419
  call void @PollGtkUnlock(), !dbg !420
  %13 = load %struct.Poll*, %struct.Poll** %1, align 8, !dbg !421
  %14 = getelementptr inbounds %struct.Poll, %struct.Poll* %13, i32 0, i32 0, !dbg !422
  %15 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %14, align 8, !dbg !422
  call void @MXUser_DestroyExclLock(%struct.MXUserExclLock* %15), !dbg !423
  %16 = load %struct.Poll*, %struct.Poll** %1, align 8, !dbg !424
  %17 = bitcast %struct.Poll* %16 to i8*, !dbg !424
  call void @g_free(i8* %17), !dbg !425
  store %struct.Poll* null, %struct.Poll** @pollState, align 8, !dbg !426
  ret void, !dbg !427
}

; Function Attrs: nounwind uwtable
define internal void @PollGtkLoopTimeout(i8 signext, i8*, i32, i32) #0 !dbg !428 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8 %0, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !429, metadata !378), !dbg !430
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !431, metadata !378), !dbg !432
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !433, metadata !378), !dbg !434
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !435, metadata !378), !dbg !436
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 327) #7, !dbg !437
  unreachable, !dbg !437
                                                  ; No predecessors!
  ret void, !dbg !438
}

; Function Attrs: nounwind uwtable
define internal i32 @PollGtkCallback(i64, i32, void (i8*)*, i8*, i32, i64, %struct.MXUserRecLock*) #0 !dbg !439 {
  %8 = alloca %struct.PollClassSet, align 8
  %9 = alloca i32, align 4
  %10 = alloca void (i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.MXUserRecLock*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.Poll*, align 8
  %17 = alloca %struct.PollGtkEntry*, align 8
  %18 = alloca %struct.PollGtkEntry*, align 8
  %19 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %8, i32 0, i32 0
  store i64 %0, i64* %19, align 8
  call void @llvm.dbg.declare(metadata %struct.PollClassSet* %8, metadata !440, metadata !378), !dbg !441
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !442, metadata !378), !dbg !443
  store void (i8*)* %2, void (i8*)** %10, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %10, metadata !444, metadata !378), !dbg !445
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !446, metadata !378), !dbg !447
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !448, metadata !378), !dbg !449
  store i64 %5, i64* %13, align 8
  call void @llvm.dbg.declare(metadata i64* %13, metadata !450, metadata !378), !dbg !451
  store %struct.MXUserRecLock* %6, %struct.MXUserRecLock** %14, align 8
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %14, metadata !452, metadata !378), !dbg !453
  call void @llvm.dbg.declare(metadata i32* %15, metadata !454, metadata !378), !dbg !455
  call void @llvm.dbg.declare(metadata %struct.Poll** %16, metadata !456, metadata !378), !dbg !457
  %20 = load %struct.Poll*, %struct.Poll** @pollState, align 8, !dbg !458
  store %struct.Poll* %20, %struct.Poll** %16, align 8, !dbg !457
  call void @llvm.dbg.declare(metadata %struct.PollGtkEntry** %17, metadata !459, metadata !378), !dbg !460
  %21 = call noalias i8* @g_malloc0_n(i64 1, i64 128), !dbg !461
  %22 = bitcast i8* %21 to %struct.PollGtkEntry*, !dbg !462
  store %struct.PollGtkEntry* %22, %struct.PollGtkEntry** %17, align 8, !dbg !463
  %23 = load i32, i32* %12, align 4, !dbg !464
  %24 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %17, align 8, !dbg !465
  %25 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %24, i32 0, i32 2, !dbg !466
  store i32 %23, i32* %25, align 8, !dbg !467
  %26 = load i32, i32* %9, align 4, !dbg !468
  %27 = and i32 %26, 8, !dbg !470
  %28 = icmp ne i32 %27, 0, !dbg !470
  br i1 %28, label %29, label %53, !dbg !471

; <label>:29:                                     ; preds = %7
  %30 = load i32, i32* %9, align 4, !dbg !472
  %31 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %17, align 8, !dbg !474
  %32 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %31, i32 0, i32 1, !dbg !475
  %33 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %32, i32 0, i32 0, !dbg !476
  store i32 %30, i32* %33, align 8, !dbg !477
  %34 = load void (i8*)*, void (i8*)** %10, align 8, !dbg !478
  %35 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %17, align 8, !dbg !479
  %36 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %35, i32 0, i32 1, !dbg !480
  %37 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %36, i32 0, i32 1, !dbg !481
  store void (i8*)* %34, void (i8*)** %37, align 8, !dbg !482
  %38 = load i8*, i8** %11, align 8, !dbg !483
  %39 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %17, align 8, !dbg !484
  %40 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %39, i32 0, i32 1, !dbg !485
  %41 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %40, i32 0, i32 2, !dbg !486
  store i8* %38, i8** %41, align 8, !dbg !487
  %42 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %14, align 8, !dbg !488
  %43 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %17, align 8, !dbg !489
  %44 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %43, i32 0, i32 1, !dbg !490
  %45 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %44, i32 0, i32 4, !dbg !491
  store %struct.MXUserRecLock* %42, %struct.MXUserRecLock** %45, align 8, !dbg !492
  %46 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %17, align 8, !dbg !493
  %47 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %46, i32 0, i32 1, !dbg !494
  %48 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %47, i32 0, i32 3, !dbg !495
  %49 = bitcast %struct.PollClassSet* %48 to i8*, !dbg !496
  %50 = bitcast %struct.PollClassSet* %8 to i8*, !dbg !496
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 8, i32 8, i1 false), !dbg !496
  br label %51, !dbg !497, !llvm.loop !498

; <label>:51:                                     ; preds = %29
  br label %52, !dbg !499

; <label>:52:                                     ; preds = %51
  br label %77, !dbg !502

; <label>:53:                                     ; preds = %7
  %54 = load i32, i32* %9, align 4, !dbg !503
  %55 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %17, align 8, !dbg !505
  %56 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %55, i32 0, i32 0, !dbg !506
  %57 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %56, i32 0, i32 0, !dbg !507
  store i32 %54, i32* %57, align 8, !dbg !508
  %58 = load void (i8*)*, void (i8*)** %10, align 8, !dbg !509
  %59 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %17, align 8, !dbg !510
  %60 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %59, i32 0, i32 0, !dbg !511
  %61 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %60, i32 0, i32 1, !dbg !512
  store void (i8*)* %58, void (i8*)** %61, align 8, !dbg !513
  %62 = load i8*, i8** %11, align 8, !dbg !514
  %63 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %17, align 8, !dbg !515
  %64 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %63, i32 0, i32 0, !dbg !516
  %65 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %64, i32 0, i32 2, !dbg !517
  store i8* %62, i8** %65, align 8, !dbg !518
  %66 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %14, align 8, !dbg !519
  %67 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %17, align 8, !dbg !520
  %68 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %67, i32 0, i32 0, !dbg !521
  %69 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %68, i32 0, i32 4, !dbg !522
  store %struct.MXUserRecLock* %66, %struct.MXUserRecLock** %69, align 8, !dbg !523
  %70 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %17, align 8, !dbg !524
  %71 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %70, i32 0, i32 0, !dbg !525
  %72 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %71, i32 0, i32 3, !dbg !526
  %73 = bitcast %struct.PollClassSet* %72 to i8*, !dbg !527
  %74 = bitcast %struct.PollClassSet* %8 to i8*, !dbg !527
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 8, i32 8, i1 false), !dbg !527
  br label %75, !dbg !528, !llvm.loop !529

; <label>:75:                                     ; preds = %53
  br label %76, !dbg !530

; <label>:76:                                     ; preds = %75
  br label %77

; <label>:77:                                     ; preds = %76, %52
  call void @PollGtkLock(), !dbg !533
  %78 = load i32, i32* %12, align 4, !dbg !534
  %79 = icmp eq i32 %78, 2, !dbg !536
  br i1 %79, label %80, label %121, !dbg !537

; <label>:80:                                     ; preds = %77
  call void @llvm.dbg.declare(metadata %struct.PollGtkEntry** %18, metadata !538, metadata !378), !dbg !540
  %81 = load %struct.Poll*, %struct.Poll** %16, align 8, !dbg !541
  %82 = getelementptr inbounds %struct.Poll, %struct.Poll* %81, i32 0, i32 1, !dbg !542
  %83 = load %struct._GHashTable*, %struct._GHashTable** %82, align 8, !dbg !542
  %84 = load i64, i64* %13, align 8, !dbg !543
  %85 = inttoptr i64 %84 to i8*, !dbg !544
  %86 = call i8* @g_hash_table_lookup(%struct._GHashTable* %83, i8* %85), !dbg !545
  %87 = bitcast i8* %86 to %struct.PollGtkEntry*, !dbg !545
  store %struct.PollGtkEntry* %87, %struct.PollGtkEntry** %18, align 8, !dbg !546
  %88 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %18, align 8, !dbg !547
  %89 = icmp ne %struct.PollGtkEntry* %88, null, !dbg !547
  br i1 %89, label %90, label %119, !dbg !549

; <label>:90:                                     ; preds = %80
  %91 = load i32, i32* %9, align 4, !dbg !550
  %92 = and i32 %91, 8, !dbg !553
  %93 = icmp ne i32 %92, 0, !dbg !553
  br i1 %93, label %94, label %103, !dbg !554

; <label>:94:                                     ; preds = %90
  %95 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %17, align 8, !dbg !555
  %96 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %95, i32 0, i32 0, !dbg !557
  %97 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %18, align 8, !dbg !558
  %98 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %97, i32 0, i32 0, !dbg !559
  %99 = bitcast %struct.PollEntryInfo* %96 to i8*, !dbg !559
  %100 = bitcast %struct.PollEntryInfo* %98 to i8*, !dbg !559
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %99, i8* %100, i64 48, i32 8, i1 false), !dbg !559
  br label %101, !dbg !560, !llvm.loop !561

; <label>:101:                                    ; preds = %94
  br label %102, !dbg !562

; <label>:102:                                    ; preds = %101
  br label %112, !dbg !565

; <label>:103:                                    ; preds = %90
  %104 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %17, align 8, !dbg !566
  %105 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %104, i32 0, i32 1, !dbg !568
  %106 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %18, align 8, !dbg !569
  %107 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %106, i32 0, i32 1, !dbg !570
  %108 = bitcast %struct.PollEntryInfo* %105 to i8*, !dbg !570
  %109 = bitcast %struct.PollEntryInfo* %107 to i8*, !dbg !570
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %108, i8* %109, i64 48, i32 8, i1 false), !dbg !570
  br label %110, !dbg !571, !llvm.loop !572

; <label>:110:                                    ; preds = %103
  br label %111, !dbg !573

; <label>:111:                                    ; preds = %110
  br label %112

; <label>:112:                                    ; preds = %111, %102
  %113 = load %struct.Poll*, %struct.Poll** %16, align 8, !dbg !576
  %114 = getelementptr inbounds %struct.Poll, %struct.Poll* %113, i32 0, i32 1, !dbg !577
  %115 = load %struct._GHashTable*, %struct._GHashTable** %114, align 8, !dbg !577
  %116 = load i64, i64* %13, align 8, !dbg !578
  %117 = inttoptr i64 %116 to i8*, !dbg !579
  %118 = call i32 @g_hash_table_remove(%struct._GHashTable* %115, i8* %117), !dbg !580
  br label %120, !dbg !581

; <label>:119:                                    ; preds = %80
  br label %120

; <label>:120:                                    ; preds = %119, %112
  br label %121, !dbg !582

; <label>:121:                                    ; preds = %120, %77
  %122 = load i32, i32* %12, align 4, !dbg !583
  switch i32 %122, label %154 [
    i32 3, label %123
    i32 1, label %124
    i32 2, label %148
    i32 -1, label %153
    i32 0, label %153
  ], !dbg !584

; <label>:123:                                    ; preds = %121
  br label %124, !dbg !585

; <label>:124:                                    ; preds = %121, %123
  %125 = load i64, i64* %13, align 8, !dbg !587
  %126 = sdiv i64 %125, 1000, !dbg !588
  store i64 %126, i64* %13, align 8, !dbg !589
  %127 = load i64, i64* %13, align 8, !dbg !590
  %128 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %17, align 8, !dbg !591
  %129 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %128, i32 0, i32 3, !dbg !592
  store i64 %127, i64* %129, align 8, !dbg !593
  %130 = load i64, i64* %13, align 8, !dbg !594
  %131 = trunc i64 %130 to i32, !dbg !594
  %132 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %17, align 8, !dbg !595
  %133 = bitcast %struct.PollGtkEntry* %132 to i8*, !dbg !595
  %134 = call i32 @g_timeout_add(i32 %131, i32 (i8*)* @PollGtkBasicCallback, i8* %133), !dbg !596
  %135 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %17, align 8, !dbg !597
  %136 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %135, i32 0, i32 4, !dbg !598
  store i32 %134, i32* %136, align 8, !dbg !599
  %137 = load %struct.Poll*, %struct.Poll** %16, align 8, !dbg !600
  %138 = getelementptr inbounds %struct.Poll, %struct.Poll* %137, i32 0, i32 2, !dbg !601
  %139 = load %struct._GHashTable*, %struct._GHashTable** %138, align 8, !dbg !601
  %140 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %17, align 8, !dbg !602
  %141 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %140, i32 0, i32 4, !dbg !603
  %142 = load i32, i32* %141, align 8, !dbg !603
  %143 = zext i32 %142 to i64, !dbg !604
  %144 = inttoptr i64 %143 to i8*, !dbg !605
  %145 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %17, align 8, !dbg !606
  %146 = bitcast %struct.PollGtkEntry* %145 to i8*, !dbg !606
  %147 = call i32 @g_hash_table_insert(%struct._GHashTable* %139, i8* %144, i8* %146), !dbg !607
  br label %155, !dbg !608

; <label>:148:                                    ; preds = %121
  %149 = load i64, i64* %13, align 8, !dbg !609
  %150 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %17, align 8, !dbg !610
  %151 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %150, i32 0, i32 3, !dbg !611
  store i64 %149, i64* %151, align 8, !dbg !612
  %152 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %17, align 8, !dbg !613
  call void @PollGtkDeviceCallback(%struct.PollGtkEntry* %152), !dbg !614
  br label %155, !dbg !615

; <label>:153:                                    ; preds = %121, %121
  br label %154, !dbg !616

; <label>:154:                                    ; preds = %121, %153
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 1143) #7, !dbg !618
  unreachable, !dbg !618

; <label>:155:                                    ; preds = %148, %124
  store i32 0, i32* %15, align 4, !dbg !619
  call void @PollGtkUnlock(), !dbg !620
  %156 = load i32, i32* %15, align 4, !dbg !621
  ret i32 %156, !dbg !622
}

; Function Attrs: nounwind uwtable
define internal signext i8 @PollGtkCallbackRemove(i64, i32, void (i8*)*, i8*, i32) #0 !dbg !623 {
  %6 = alloca %struct.PollClassSet, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %6, i32 0, i32 0
  store i64 %0, i64* %12, align 8
  call void @llvm.dbg.declare(metadata %struct.PollClassSet* %6, metadata !624, metadata !378), !dbg !625
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !626, metadata !378), !dbg !627
  store void (i8*)* %2, void (i8*)** %8, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %8, metadata !628, metadata !378), !dbg !629
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !630, metadata !378), !dbg !631
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !632, metadata !378), !dbg !633
  call void @llvm.dbg.declare(metadata i8** %11, metadata !634, metadata !378), !dbg !635
  %13 = load i32, i32* %7, align 4, !dbg !636
  %14 = load void (i8*)*, void (i8*)** %8, align 8, !dbg !637
  %15 = load i8*, i8** %9, align 8, !dbg !638
  %16 = load i32, i32* %10, align 4, !dbg !639
  %17 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %6, i32 0, i32 0, !dbg !640
  %18 = load i64, i64* %17, align 8, !dbg !640
  %19 = call signext i8 @PollGtkCallbackRemoveInt(i64 %18, i32 %13, void (i8*)* %14, i8* %15, i8 signext 0, i32 %16, i8** %11), !dbg !640
  ret i8 %19, !dbg !641
}

; Function Attrs: nounwind uwtable
define internal signext i8 @PollGtkCallbackRemoveOneByCB(i64, i32, void (i8*)*, i32, i8**) #0 !dbg !642 {
  %6 = alloca %struct.PollClassSet, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (i8*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %6, i32 0, i32 0
  store i64 %0, i64* %11, align 8
  call void @llvm.dbg.declare(metadata %struct.PollClassSet* %6, metadata !643, metadata !378), !dbg !644
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !645, metadata !378), !dbg !646
  store void (i8*)* %2, void (i8*)** %8, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %8, metadata !647, metadata !378), !dbg !648
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !649, metadata !378), !dbg !650
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !651, metadata !378), !dbg !652
  %12 = load i32, i32* %7, align 4, !dbg !653
  %13 = load void (i8*)*, void (i8*)** %8, align 8, !dbg !654
  %14 = load i32, i32* %9, align 4, !dbg !655
  %15 = load i8**, i8*** %10, align 8, !dbg !656
  %16 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %6, i32 0, i32 0, !dbg !657
  %17 = load i64, i64* %16, align 8, !dbg !657
  %18 = call signext i8 @PollGtkCallbackRemoveInt(i64 %17, i32 %12, void (i8*)* %13, i8* null, i8 signext 1, i32 %14, i8** %15), !dbg !657
  ret i8 %18, !dbg !658
}

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @PollLockingAlwaysEnabled() #1 !dbg !659 {
  ret i8 1, !dbg !660
}

declare i32 @__atomic_load_8(...) #2

declare i32 @g_once_init_enter(i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

declare void @Poll_InitWithImpl(%struct.PollImpl*) #2

declare void @g_once_init_leave(i8*, i64) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare %struct.MXUserExclLock* @MXUser_CreateExclLock(i8*, i32) #2

declare %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, void (i8*)*) #2

; Function Attrs: nounwind readnone
declare i32 @g_direct_hash(i8*) #4

; Function Attrs: nounwind readnone
declare i32 @g_direct_equal(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @PollGtkRemoveOneCallback(i8*) #0 !dbg !661 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.PollGtkEntry*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !662, metadata !378), !dbg !663
  call void @llvm.dbg.declare(metadata %struct.PollGtkEntry** %3, metadata !664, metadata !378), !dbg !665
  %4 = load i8*, i8** %2, align 8, !dbg !666
  %5 = bitcast i8* %4 to %struct.PollGtkEntry*, !dbg !666
  store %struct.PollGtkEntry* %5, %struct.PollGtkEntry** %3, align 8, !dbg !665
  %6 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %3, align 8, !dbg !667
  %7 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %6, i32 0, i32 2, !dbg !668
  %8 = load i32, i32* %7, align 8, !dbg !668
  switch i32 %8, label %25 [
    i32 1, label %9
    i32 3, label %9
    i32 2, label %14
    i32 -1, label %24
    i32 0, label %24
  ], !dbg !669

; <label>:9:                                      ; preds = %1, %1
  %10 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %3, align 8, !dbg !670
  %11 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %10, i32 0, i32 4, !dbg !672
  %12 = load i32, i32* %11, align 8, !dbg !672
  %13 = call i32 @g_source_remove(i32 %12), !dbg !673
  br label %26, !dbg !674

; <label>:14:                                     ; preds = %1
  %15 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %3, align 8, !dbg !675
  %16 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %15, i32 0, i32 4, !dbg !676
  %17 = load i32, i32* %16, align 8, !dbg !676
  %18 = call i32 @g_source_remove(i32 %17), !dbg !677
  %19 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %3, align 8, !dbg !678
  %20 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %19, i32 0, i32 5, !dbg !679
  %21 = load %struct._GIOChannel*, %struct._GIOChannel** %20, align 8, !dbg !679
  call void @g_io_channel_unref(%struct._GIOChannel* %21), !dbg !680
  %22 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %3, align 8, !dbg !681
  %23 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %22, i32 0, i32 5, !dbg !682
  store %struct._GIOChannel* null, %struct._GIOChannel** %23, align 8, !dbg !683
  br label %26, !dbg !684

; <label>:24:                                     ; preds = %1, %1
  br label %25, !dbg !685

; <label>:25:                                     ; preds = %1, %24
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 975) #7, !dbg !687
  unreachable, !dbg !687

; <label>:26:                                     ; preds = %14, %9
  %27 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %3, align 8, !dbg !688
  %28 = bitcast %struct.PollGtkEntry* %27 to i8*, !dbg !688
  call void @g_free(i8* %28), !dbg !689
  ret void, !dbg !690
}

declare i32 @g_source_remove(i32) #2

declare void @g_io_channel_unref(%struct._GIOChannel*) #2

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #5

declare void @g_free(i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @PollGtkLock() #1 !dbg !691 {
  %1 = load %struct.Poll*, %struct.Poll** @pollState, align 8, !dbg !692
  %2 = getelementptr inbounds %struct.Poll, %struct.Poll* %1, i32 0, i32 0, !dbg !693
  %3 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %2, align 8, !dbg !693
  call void @MXUser_AcquireExclLock(%struct.MXUserExclLock* %3), !dbg !694
  ret void, !dbg !695
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @PollGtkUnlock() #1 !dbg !696 {
  %1 = load %struct.Poll*, %struct.Poll** @pollState, align 8, !dbg !697
  %2 = getelementptr inbounds %struct.Poll, %struct.Poll* %1, i32 0, i32 0, !dbg !698
  %3 = load %struct.MXUserExclLock*, %struct.MXUserExclLock** %2, align 8, !dbg !698
  call void @MXUser_ReleaseExclLock(%struct.MXUserExclLock* %3), !dbg !699
  ret void, !dbg !700
}

declare void @MXUser_DestroyExclLock(%struct.MXUserExclLock*) #2

declare void @MXUser_AcquireExclLock(%struct.MXUserExclLock*) #2

declare void @MXUser_ReleaseExclLock(%struct.MXUserExclLock*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #2

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @PollGtkBasicCallback(i8*) #0 !dbg !701 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !702, metadata !378), !dbg !703
  %3 = load i8*, i8** %2, align 8, !dbg !704
  %4 = call i32 @PollGtkEventCallback(%struct._GIOChannel* null, i32 1, i8* %3), !dbg !705
  ret i32 %4, !dbg !706
}

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @PollGtkDeviceCallback(%struct.PollGtkEntry*) #0 !dbg !707 {
  %2 = alloca %struct.PollGtkEntry*, align 8
  %3 = alloca %struct.Poll*, align 8
  %4 = alloca i32, align 4
  store %struct.PollGtkEntry* %0, %struct.PollGtkEntry** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.PollGtkEntry** %2, metadata !710, metadata !378), !dbg !711
  call void @llvm.dbg.declare(metadata %struct.Poll** %3, metadata !712, metadata !378), !dbg !713
  %5 = load %struct.Poll*, %struct.Poll** @pollState, align 8, !dbg !714
  store %struct.Poll* %5, %struct.Poll** %3, align 8, !dbg !713
  call void @llvm.dbg.declare(metadata i32* %4, metadata !715, metadata !378), !dbg !716
  store i32 56, i32* %4, align 4, !dbg !717
  %6 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %2, align 8, !dbg !718
  %7 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %6, i32 0, i32 0, !dbg !720
  %8 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %7, i32 0, i32 0, !dbg !721
  %9 = load i32, i32* %8, align 8, !dbg !721
  %10 = and i32 4, %9, !dbg !722
  %11 = icmp ne i32 %10, 0, !dbg !722
  br i1 %11, label %12, label %15, !dbg !723

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* %4, align 4, !dbg !724
  %14 = or i32 %13, 3, !dbg !724
  store i32 %14, i32* %4, align 4, !dbg !724
  br label %15, !dbg !726

; <label>:15:                                     ; preds = %12, %1
  %16 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %2, align 8, !dbg !727
  %17 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %16, i32 0, i32 1, !dbg !729
  %18 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %17, i32 0, i32 0, !dbg !730
  %19 = load i32, i32* %18, align 8, !dbg !730
  %20 = and i32 8, %19, !dbg !731
  %21 = icmp ne i32 %20, 0, !dbg !731
  br i1 %21, label %22, label %25, !dbg !732

; <label>:22:                                     ; preds = %15
  %23 = load i32, i32* %4, align 4, !dbg !733
  %24 = or i32 %23, 4, !dbg !733
  store i32 %24, i32* %4, align 4, !dbg !733
  br label %25, !dbg !735

; <label>:25:                                     ; preds = %22, %15
  %26 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %2, align 8, !dbg !736
  %27 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %26, i32 0, i32 3, !dbg !737
  %28 = load i64, i64* %27, align 8, !dbg !737
  %29 = trunc i64 %28 to i32, !dbg !736
  %30 = call %struct._GIOChannel* @g_io_channel_unix_new(i32 %29), !dbg !738
  %31 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %2, align 8, !dbg !739
  %32 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %31, i32 0, i32 5, !dbg !740
  store %struct._GIOChannel* %30, %struct._GIOChannel** %32, align 8, !dbg !741
  %33 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %2, align 8, !dbg !742
  %34 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %33, i32 0, i32 5, !dbg !743
  %35 = load %struct._GIOChannel*, %struct._GIOChannel** %34, align 8, !dbg !743
  %36 = load i32, i32* %4, align 4, !dbg !744
  %37 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %2, align 8, !dbg !745
  %38 = bitcast %struct.PollGtkEntry* %37 to i8*, !dbg !745
  %39 = call i32 @g_io_add_watch(%struct._GIOChannel* %35, i32 %36, i32 (%struct._GIOChannel*, i32, i8*)* @PollGtkEventCallback, i8* %38), !dbg !746
  %40 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %2, align 8, !dbg !747
  %41 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %40, i32 0, i32 4, !dbg !748
  store i32 %39, i32* %41, align 8, !dbg !749
  %42 = load %struct.Poll*, %struct.Poll** %3, align 8, !dbg !750
  %43 = getelementptr inbounds %struct.Poll, %struct.Poll* %42, i32 0, i32 1, !dbg !751
  %44 = load %struct._GHashTable*, %struct._GHashTable** %43, align 8, !dbg !751
  %45 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %2, align 8, !dbg !752
  %46 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %45, i32 0, i32 3, !dbg !753
  %47 = load i64, i64* %46, align 8, !dbg !753
  %48 = inttoptr i64 %47 to i8*, !dbg !754
  %49 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %2, align 8, !dbg !755
  %50 = bitcast %struct.PollGtkEntry* %49 to i8*, !dbg !755
  %51 = call i32 @g_hash_table_insert(%struct._GHashTable* %44, i8* %48, i8* %50), !dbg !756
  ret void, !dbg !757
}

; Function Attrs: nounwind uwtable
define internal i32 @PollGtkEventCallback(%struct._GIOChannel*, i32, i8*) #0 !dbg !758 {
  %4 = alloca %struct._GIOChannel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store %struct._GIOChannel* %0, %struct._GIOChannel** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %4, metadata !761, metadata !378), !dbg !762
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !763, metadata !378), !dbg !764
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !765, metadata !378), !dbg !766
  call void @llvm.dbg.declare(metadata i8* %7, metadata !767, metadata !378), !dbg !768
  %8 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !769
  %9 = load i32, i32* %5, align 4, !dbg !770
  %10 = load i8*, i8** %6, align 8, !dbg !771
  %11 = call i32 @PollGtkEventCallbackWork(%struct._GIOChannel* %8, i32 %9, i8* %10, i8 signext 0, i8* %7), !dbg !772
  ret i32 %11, !dbg !773
}

; Function Attrs: nounwind uwtable
define internal i32 @PollGtkEventCallbackWork(%struct._GIOChannel*, i32, i8*, i8 signext, i8*) #0 !dbg !774 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._GIOChannel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca %struct.PollGtkEntry*, align 8
  %13 = alloca void (i8*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.MXUserRecLock*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct._GIOChannel*, align 8
  %21 = alloca %struct.PollGtkEntry*, align 8
  store %struct._GIOChannel* %0, %struct._GIOChannel** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %7, metadata !777, metadata !378), !dbg !778
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !779, metadata !378), !dbg !780
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !781, metadata !378), !dbg !782
  store i8 %3, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !783, metadata !378), !dbg !784
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !785, metadata !378), !dbg !786
  call void @llvm.dbg.declare(metadata %struct.PollGtkEntry** %12, metadata !787, metadata !378), !dbg !788
  call void @llvm.dbg.declare(metadata void (i8*)** %13, metadata !789, metadata !378), !dbg !790
  call void @llvm.dbg.declare(metadata i8** %14, metadata !791, metadata !378), !dbg !792
  call void @llvm.dbg.declare(metadata %struct.MXUserRecLock** %15, metadata !793, metadata !378), !dbg !794
  call void @llvm.dbg.declare(metadata i8* %16, metadata !795, metadata !378), !dbg !796
  store i8 0, i8* %16, align 1, !dbg !796
  call void @llvm.dbg.declare(metadata i8* %17, metadata !797, metadata !378), !dbg !798
  call void @llvm.dbg.declare(metadata i64* %18, metadata !799, metadata !378), !dbg !800
  store i64 -1, i64* %18, align 8, !dbg !800
  call void @llvm.dbg.declare(metadata i32* %19, metadata !801, metadata !378), !dbg !802
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %20, metadata !803, metadata !378), !dbg !804
  %22 = load i8*, i8** %11, align 8, !dbg !805
  store i8 0, i8* %22, align 1, !dbg !806
  %23 = load i8, i8* %10, align 1, !dbg !807
  %24 = icmp ne i8 %23, 0, !dbg !807
  br i1 %24, label %26, label %25, !dbg !809

; <label>:25:                                     ; preds = %5
  call void @PollGtkLock(), !dbg !810
  br label %26, !dbg !812

; <label>:26:                                     ; preds = %25, %5
  %27 = call %struct._GSource* @g_main_current_source(), !dbg !813
  %28 = call i32 @g_source_is_destroyed(%struct._GSource* %27), !dbg !815
  %29 = icmp ne i32 %28, 0, !dbg !817
  br i1 %29, label %30, label %31, !dbg !818

; <label>:30:                                     ; preds = %26
  store i32 0, i32* %19, align 4, !dbg !819
  br label %380, !dbg !821

; <label>:31:                                     ; preds = %26
  %32 = load i8*, i8** %9, align 8, !dbg !822
  %33 = bitcast i8* %32 to %struct.PollGtkEntry*, !dbg !822
  store %struct.PollGtkEntry* %33, %struct.PollGtkEntry** %12, align 8, !dbg !823
  %34 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !824
  %35 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %34, i32 0, i32 5, !dbg !825
  %36 = load %struct._GIOChannel*, %struct._GIOChannel** %35, align 8, !dbg !825
  store %struct._GIOChannel* %36, %struct._GIOChannel** %20, align 8, !dbg !826
  %37 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !827
  %38 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %37, i32 0, i32 0, !dbg !829
  %39 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %38, i32 0, i32 1, !dbg !830
  %40 = load void (i8*)*, void (i8*)** %39, align 8, !dbg !830
  %41 = icmp ne void (i8*)* %40, null, !dbg !827
  br i1 %41, label %42, label %80, !dbg !831

; <label>:42:                                     ; preds = %31
  %43 = load i32, i32* %8, align 4, !dbg !832
  %44 = and i32 %43, 59, !dbg !833
  %45 = icmp ne i32 %44, 0, !dbg !833
  br i1 %45, label %46, label %80, !dbg !834

; <label>:46:                                     ; preds = %42
  %47 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !836
  %48 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %47, i32 0, i32 0, !dbg !838
  %49 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %48, i32 0, i32 1, !dbg !839
  %50 = load void (i8*)*, void (i8*)** %49, align 8, !dbg !839
  store void (i8*)* %50, void (i8*)** %13, align 8, !dbg !840
  %51 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !841
  %52 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %51, i32 0, i32 0, !dbg !842
  %53 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %52, i32 0, i32 2, !dbg !843
  %54 = load i8*, i8** %53, align 8, !dbg !843
  store i8* %54, i8** %14, align 8, !dbg !844
  %55 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !845
  %56 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %55, i32 0, i32 0, !dbg !846
  %57 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %56, i32 0, i32 4, !dbg !847
  %58 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %57, align 8, !dbg !847
  store %struct.MXUserRecLock* %58, %struct.MXUserRecLock** %15, align 8, !dbg !848
  %59 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !849
  %60 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %59, i32 0, i32 0, !dbg !850
  %61 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %60, i32 0, i32 0, !dbg !851
  %62 = load i32, i32* %61, align 8, !dbg !851
  %63 = and i32 %62, 1, !dbg !852
  %64 = icmp ne i32 %63, 0, !dbg !853
  %65 = zext i1 %64 to i32, !dbg !853
  store i32 %65, i32* %19, align 4, !dbg !854
  store i8 0, i8* %17, align 1, !dbg !855
  %66 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !856
  %67 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %66, i32 0, i32 3, !dbg !857
  %68 = load i64, i64* %67, align 8, !dbg !857
  store i64 %68, i64* %18, align 8, !dbg !858
  %69 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !859
  %70 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %69, i32 0, i32 1, !dbg !861
  %71 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %70, i32 0, i32 1, !dbg !862
  %72 = load void (i8*)*, void (i8*)** %71, align 8, !dbg !862
  %73 = icmp ne void (i8*)* %72, null, !dbg !859
  br i1 %73, label %74, label %79, !dbg !863

; <label>:74:                                     ; preds = %46
  %75 = load i32, i32* %8, align 4, !dbg !864
  %76 = and i32 %75, 4, !dbg !866
  %77 = icmp ne i32 %76, 0, !dbg !866
  br i1 %77, label %78, label %79, !dbg !867

; <label>:78:                                     ; preds = %74
  store i8 1, i8* %16, align 1, !dbg !868
  br label %79, !dbg !870

; <label>:79:                                     ; preds = %78, %74, %46
  br label %115, !dbg !871

; <label>:80:                                     ; preds = %42, %31
  %81 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !872
  %82 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %81, i32 0, i32 1, !dbg !875
  %83 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %82, i32 0, i32 1, !dbg !876
  %84 = load void (i8*)*, void (i8*)** %83, align 8, !dbg !876
  %85 = icmp ne void (i8*)* %84, null, !dbg !872
  br i1 %85, label %86, label %113, !dbg !877

; <label>:86:                                     ; preds = %80
  %87 = load i32, i32* %8, align 4, !dbg !878
  %88 = and i32 %87, 60, !dbg !879
  %89 = icmp ne i32 %88, 0, !dbg !879
  br i1 %89, label %90, label %113, !dbg !880

; <label>:90:                                     ; preds = %86
  %91 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !882
  %92 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %91, i32 0, i32 1, !dbg !884
  %93 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %92, i32 0, i32 1, !dbg !885
  %94 = load void (i8*)*, void (i8*)** %93, align 8, !dbg !885
  store void (i8*)* %94, void (i8*)** %13, align 8, !dbg !886
  %95 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !887
  %96 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %95, i32 0, i32 1, !dbg !888
  %97 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %96, i32 0, i32 2, !dbg !889
  %98 = load i8*, i8** %97, align 8, !dbg !889
  store i8* %98, i8** %14, align 8, !dbg !890
  %99 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !891
  %100 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %99, i32 0, i32 1, !dbg !892
  %101 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %100, i32 0, i32 4, !dbg !893
  %102 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %101, align 8, !dbg !893
  store %struct.MXUserRecLock* %102, %struct.MXUserRecLock** %15, align 8, !dbg !894
  %103 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !895
  %104 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %103, i32 0, i32 1, !dbg !896
  %105 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %104, i32 0, i32 0, !dbg !897
  %106 = load i32, i32* %105, align 8, !dbg !897
  %107 = and i32 %106, 1, !dbg !898
  %108 = icmp ne i32 %107, 0, !dbg !899
  %109 = zext i1 %108 to i32, !dbg !899
  store i32 %109, i32* %19, align 4, !dbg !900
  store i8 1, i8* %17, align 1, !dbg !901
  %110 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !902
  %111 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %110, i32 0, i32 3, !dbg !903
  %112 = load i64, i64* %111, align 8, !dbg !903
  store i64 %112, i64* %18, align 8, !dbg !904
  br label %114, !dbg !905

; <label>:113:                                    ; preds = %86, %80
  store i32 1, i32* %19, align 4, !dbg !906
  br label %380, !dbg !908

; <label>:114:                                    ; preds = %90
  br label %115

; <label>:115:                                    ; preds = %114, %79
  %116 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %15, align 8, !dbg !909
  %117 = icmp ne %struct.MXUserRecLock* %116, null, !dbg !909
  br i1 %117, label %118, label %208, !dbg !911

; <label>:118:                                    ; preds = %115
  %119 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %15, align 8, !dbg !912
  %120 = call signext i8 @MXUser_TryAcquireRecLock(%struct.MXUserRecLock* %119), !dbg !914
  %121 = icmp ne i8 %120, 0, !dbg !914
  br i1 %121, label %208, label %122, !dbg !915

; <label>:122:                                    ; preds = %118
  br label %123, !dbg !916, !llvm.loop !918

; <label>:123:                                    ; preds = %122
  %124 = load i8, i8* %17, align 1, !dbg !919
  %125 = icmp ne i8 %124, 0, !dbg !919
  br i1 %125, label %126, label %127, !dbg !919

; <label>:126:                                    ; preds = %123
  br label %128, !dbg !923

; <label>:127:                                    ; preds = %123
  br label %128

; <label>:128:                                    ; preds = %127, %126
  br label %129, !dbg !926

; <label>:129:                                    ; preds = %128
  %130 = load i8, i8* %17, align 1, !dbg !928
  %131 = icmp ne i8 %130, 0, !dbg !928
  br i1 %131, label %132, label %138, !dbg !930

; <label>:132:                                    ; preds = %129
  %133 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !931
  %134 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %133, i32 0, i32 1, !dbg !933
  %135 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %134, i32 0, i32 5, !dbg !934
  %136 = load i32, i32* %135, align 8, !dbg !935
  %137 = add i32 %136, 1, !dbg !935
  store i32 %137, i32* %135, align 8, !dbg !935
  br label %144, !dbg !936

; <label>:138:                                    ; preds = %129
  %139 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !937
  %140 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %139, i32 0, i32 0, !dbg !939
  %141 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %140, i32 0, i32 5, !dbg !940
  %142 = load i32, i32* %141, align 8, !dbg !941
  %143 = add i32 %142, 1, !dbg !941
  store i32 %143, i32* %141, align 8, !dbg !941
  br label %144

; <label>:144:                                    ; preds = %138, %132
  %145 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !942
  %146 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %145, i32 0, i32 2, !dbg !944
  %147 = load i32, i32* %146, align 8, !dbg !944
  %148 = icmp eq i32 %147, 2, !dbg !945
  br i1 %148, label %149, label %150, !dbg !946

; <label>:149:                                    ; preds = %144
  br label %207, !dbg !947

; <label>:150:                                    ; preds = %144
  %151 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !949
  %152 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %151, i32 0, i32 2, !dbg !952
  %153 = load i32, i32* %152, align 8, !dbg !952
  %154 = icmp eq i32 %153, 1, !dbg !953
  br i1 %154, label %155, label %203, !dbg !954

; <label>:155:                                    ; preds = %150
  %156 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !955
  %157 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %156, i32 0, i32 3, !dbg !957
  %158 = load i64, i64* %157, align 8, !dbg !957
  %159 = icmp ne i64 %158, 0, !dbg !958
  br i1 %159, label %160, label %203, !dbg !959

; <label>:160:                                    ; preds = %155
  %161 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !960
  %162 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %161, i32 0, i32 0, !dbg !961
  %163 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %162, i32 0, i32 5, !dbg !962
  %164 = load i32, i32* %163, align 8, !dbg !962
  %165 = icmp eq i32 %164, 1, !dbg !963
  br i1 %165, label %166, label %203, !dbg !964

; <label>:166:                                    ; preds = %160
  %167 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !966
  %168 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %167, i32 0, i32 4, !dbg !968
  %169 = load i32, i32* %168, align 8, !dbg !968
  %170 = call i32 @g_source_remove(i32 %169), !dbg !969
  %171 = load %struct.Poll*, %struct.Poll** @pollState, align 8, !dbg !970
  %172 = getelementptr inbounds %struct.Poll, %struct.Poll* %171, i32 0, i32 2, !dbg !972
  %173 = load %struct._GHashTable*, %struct._GHashTable** %172, align 8, !dbg !972
  %174 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !973
  %175 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %174, i32 0, i32 4, !dbg !974
  %176 = load i32, i32* %175, align 8, !dbg !974
  %177 = zext i32 %176 to i64, !dbg !975
  %178 = inttoptr i64 %177 to i8*, !dbg !976
  %179 = call i32 @g_hash_table_steal(%struct._GHashTable* %173, i8* %178), !dbg !977
  %180 = icmp ne i32 %179, 0, !dbg !977
  br i1 %180, label %184, label %181, !dbg !978

; <label>:181:                                    ; preds = %166
  br label %182, !dbg !979, !llvm.loop !981

; <label>:182:                                    ; preds = %181
  br label %183, !dbg !982

; <label>:183:                                    ; preds = %182
  br label %184, !dbg !985

; <label>:184:                                    ; preds = %183, %166
  %185 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !986
  %186 = bitcast %struct.PollGtkEntry* %185 to i8*, !dbg !986
  %187 = call i32 @g_timeout_add(i32 0, i32 (i8*)* @PollGtkBasicCallback, i8* %186), !dbg !987
  %188 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !988
  %189 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %188, i32 0, i32 4, !dbg !989
  store i32 %187, i32* %189, align 8, !dbg !990
  %190 = load %struct.Poll*, %struct.Poll** @pollState, align 8, !dbg !991
  %191 = getelementptr inbounds %struct.Poll, %struct.Poll* %190, i32 0, i32 2, !dbg !992
  %192 = load %struct._GHashTable*, %struct._GHashTable** %191, align 8, !dbg !992
  %193 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !993
  %194 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %193, i32 0, i32 4, !dbg !994
  %195 = load i32, i32* %194, align 8, !dbg !994
  %196 = zext i32 %195 to i64, !dbg !995
  %197 = inttoptr i64 %196 to i8*, !dbg !996
  %198 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !997
  %199 = bitcast %struct.PollGtkEntry* %198 to i8*, !dbg !997
  %200 = call i32 @g_hash_table_insert(%struct._GHashTable* %192, i8* %197, i8* %199), !dbg !998
  br label %201, !dbg !999, !llvm.loop !1000

; <label>:201:                                    ; preds = %184
  br label %202, !dbg !1001

; <label>:202:                                    ; preds = %201
  store i32 0, i32* %19, align 4, !dbg !1004
  br label %206, !dbg !1005

; <label>:203:                                    ; preds = %160, %155, %150
  br label %204, !dbg !1006, !llvm.loop !1008

; <label>:204:                                    ; preds = %203
  br label %205, !dbg !1009

; <label>:205:                                    ; preds = %204
  store i32 1, i32* %19, align 4, !dbg !1012
  br label %206

; <label>:206:                                    ; preds = %205, %202
  br label %380, !dbg !1013

; <label>:207:                                    ; preds = %149
  br label %310, !dbg !1014

; <label>:208:                                    ; preds = %118, %115
  br label %209, !dbg !1015, !llvm.loop !1017

; <label>:209:                                    ; preds = %208
  %210 = load i8, i8* %17, align 1, !dbg !1018
  %211 = icmp ne i8 %210, 0, !dbg !1018
  br i1 %211, label %212, label %213, !dbg !1018

; <label>:212:                                    ; preds = %209
  br label %214, !dbg !1022

; <label>:213:                                    ; preds = %209
  br label %214

; <label>:214:                                    ; preds = %213, %212
  br label %215, !dbg !1025

; <label>:215:                                    ; preds = %214
  %216 = load i8*, i8** %11, align 8, !dbg !1027
  store i8 1, i8* %216, align 1, !dbg !1028
  %217 = load i32, i32* %19, align 4, !dbg !1029
  %218 = icmp ne i32 %217, 0, !dbg !1029
  br i1 %218, label %222, label %219, !dbg !1031

; <label>:219:                                    ; preds = %215
  %220 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !1032
  %221 = load i8, i8* %17, align 1, !dbg !1034
  call void @PollGtkCallbackRemoveEntry(%struct.PollGtkEntry* %220, i8 signext %221), !dbg !1035
  br label %295, !dbg !1036

; <label>:222:                                    ; preds = %215
  %223 = load i8, i8* %17, align 1, !dbg !1037
  %224 = icmp ne i8 %223, 0, !dbg !1037
  br i1 %224, label %225, label %229, !dbg !1037

; <label>:225:                                    ; preds = %222
  %226 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !1040
  %227 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %226, i32 0, i32 1, !dbg !1042
  %228 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %227, i32 0, i32 5, !dbg !1043
  store i32 0, i32* %228, align 8, !dbg !1044
  br label %294, !dbg !1045

; <label>:229:                                    ; preds = %222
  %230 = load i8, i8* %17, align 1, !dbg !1046
  %231 = icmp ne i8 %230, 0, !dbg !1046
  br i1 %231, label %293, label %232, !dbg !1049

; <label>:232:                                    ; preds = %229
  %233 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !1050
  %234 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %233, i32 0, i32 0, !dbg !1052
  %235 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %234, i32 0, i32 5, !dbg !1053
  %236 = load i32, i32* %235, align 8, !dbg !1053
  %237 = icmp ugt i32 %236, 0, !dbg !1054
  br i1 %237, label %238, label %293, !dbg !1055

; <label>:238:                                    ; preds = %232
  %239 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !1056
  %240 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %239, i32 0, i32 0, !dbg !1058
  %241 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %240, i32 0, i32 5, !dbg !1059
  store i32 0, i32* %241, align 8, !dbg !1060
  %242 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !1061
  %243 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %242, i32 0, i32 2, !dbg !1063
  %244 = load i32, i32* %243, align 8, !dbg !1063
  %245 = icmp eq i32 %244, 1, !dbg !1064
  br i1 %245, label %246, label %292, !dbg !1065

; <label>:246:                                    ; preds = %238
  %247 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !1066
  %248 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %247, i32 0, i32 3, !dbg !1068
  %249 = load i64, i64* %248, align 8, !dbg !1068
  %250 = icmp ne i64 %249, 0, !dbg !1069
  br i1 %250, label %251, label %292, !dbg !1070

; <label>:251:                                    ; preds = %246
  %252 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !1071
  %253 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %252, i32 0, i32 4, !dbg !1073
  %254 = load i32, i32* %253, align 8, !dbg !1073
  %255 = call i32 @g_source_remove(i32 %254), !dbg !1074
  %256 = load %struct.Poll*, %struct.Poll** @pollState, align 8, !dbg !1075
  %257 = getelementptr inbounds %struct.Poll, %struct.Poll* %256, i32 0, i32 2, !dbg !1077
  %258 = load %struct._GHashTable*, %struct._GHashTable** %257, align 8, !dbg !1077
  %259 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !1078
  %260 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %259, i32 0, i32 4, !dbg !1079
  %261 = load i32, i32* %260, align 8, !dbg !1079
  %262 = zext i32 %261 to i64, !dbg !1080
  %263 = inttoptr i64 %262 to i8*, !dbg !1081
  %264 = call i32 @g_hash_table_steal(%struct._GHashTable* %258, i8* %263), !dbg !1082
  %265 = icmp ne i32 %264, 0, !dbg !1082
  br i1 %265, label %269, label %266, !dbg !1083

; <label>:266:                                    ; preds = %251
  br label %267, !dbg !1084, !llvm.loop !1086

; <label>:267:                                    ; preds = %266
  br label %268, !dbg !1087

; <label>:268:                                    ; preds = %267
  br label %269, !dbg !1090

; <label>:269:                                    ; preds = %268, %251
  %270 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !1091
  %271 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %270, i32 0, i32 3, !dbg !1092
  %272 = load i64, i64* %271, align 8, !dbg !1092
  %273 = trunc i64 %272 to i32, !dbg !1093
  %274 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !1094
  %275 = bitcast %struct.PollGtkEntry* %274 to i8*, !dbg !1094
  %276 = call i32 @g_timeout_add(i32 %273, i32 (i8*)* @PollGtkBasicCallback, i8* %275), !dbg !1095
  %277 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !1096
  %278 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %277, i32 0, i32 4, !dbg !1097
  store i32 %276, i32* %278, align 8, !dbg !1098
  %279 = load %struct.Poll*, %struct.Poll** @pollState, align 8, !dbg !1099
  %280 = getelementptr inbounds %struct.Poll, %struct.Poll* %279, i32 0, i32 2, !dbg !1100
  %281 = load %struct._GHashTable*, %struct._GHashTable** %280, align 8, !dbg !1100
  %282 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !1101
  %283 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %282, i32 0, i32 4, !dbg !1102
  %284 = load i32, i32* %283, align 8, !dbg !1102
  %285 = zext i32 %284 to i64, !dbg !1103
  %286 = inttoptr i64 %285 to i8*, !dbg !1104
  %287 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %12, align 8, !dbg !1105
  %288 = bitcast %struct.PollGtkEntry* %287 to i8*, !dbg !1105
  %289 = call i32 @g_hash_table_insert(%struct._GHashTable* %281, i8* %286, i8* %288), !dbg !1106
  br label %290, !dbg !1107, !llvm.loop !1108

; <label>:290:                                    ; preds = %269
  br label %291, !dbg !1109

; <label>:291:                                    ; preds = %290
  br label %292, !dbg !1112

; <label>:292:                                    ; preds = %291, %246, %238
  br label %293, !dbg !1113

; <label>:293:                                    ; preds = %292, %232, %229
  br label %294

; <label>:294:                                    ; preds = %293, %225
  br label %295

; <label>:295:                                    ; preds = %294, %219
  call void @PollGtkUnlock(), !dbg !1114
  %296 = load void (i8*)*, void (i8*)** %13, align 8, !dbg !1115
  %297 = bitcast void (i8*)* %296 to void (i8*, %struct._GIOChannel*)*, !dbg !1116
  %298 = load i8*, i8** %14, align 8, !dbg !1117
  %299 = load %struct._GIOChannel*, %struct._GIOChannel** %20, align 8, !dbg !1118
  call void %297(i8* %298, %struct._GIOChannel* %299), !dbg !1119
  %300 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %15, align 8, !dbg !1120
  %301 = icmp ne %struct.MXUserRecLock* %300, null, !dbg !1120
  br i1 %301, label %302, label %304, !dbg !1122

; <label>:302:                                    ; preds = %295
  %303 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %15, align 8, !dbg !1123
  call void @MXUser_ReleaseRecLock(%struct.MXUserRecLock* %303), !dbg !1125
  br label %304, !dbg !1126

; <label>:304:                                    ; preds = %302, %295
  %305 = load i8, i8* %16, align 1, !dbg !1127
  %306 = icmp ne i8 %305, 0, !dbg !1127
  br i1 %306, label %307, label %308, !dbg !1129

; <label>:307:                                    ; preds = %304
  call void @PollGtkLock(), !dbg !1130
  br label %309, !dbg !1132

; <label>:308:                                    ; preds = %304
  br label %386, !dbg !1133

; <label>:309:                                    ; preds = %307
  br label %310

; <label>:310:                                    ; preds = %309, %207
  %311 = load i8, i8* %16, align 1, !dbg !1135
  %312 = icmp ne i8 %311, 0, !dbg !1135
  br i1 %312, label %313, label %379, !dbg !1137

; <label>:313:                                    ; preds = %310
  call void @llvm.dbg.declare(metadata %struct.PollGtkEntry** %21, metadata !1138, metadata !378), !dbg !1140
  store void (i8*)* null, void (i8*)** %13, align 8, !dbg !1141
  store %struct.MXUserRecLock* null, %struct.MXUserRecLock** %15, align 8, !dbg !1142
  %314 = load %struct.Poll*, %struct.Poll** @pollState, align 8, !dbg !1143
  %315 = getelementptr inbounds %struct.Poll, %struct.Poll* %314, i32 0, i32 1, !dbg !1144
  %316 = load %struct._GHashTable*, %struct._GHashTable** %315, align 8, !dbg !1144
  %317 = load i64, i64* %18, align 8, !dbg !1145
  %318 = inttoptr i64 %317 to i8*, !dbg !1146
  %319 = call i8* @g_hash_table_lookup(%struct._GHashTable* %316, i8* %318), !dbg !1147
  %320 = bitcast i8* %319 to %struct.PollGtkEntry*, !dbg !1147
  store %struct.PollGtkEntry* %320, %struct.PollGtkEntry** %21, align 8, !dbg !1148
  %321 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %21, align 8, !dbg !1149
  %322 = icmp ne %struct.PollGtkEntry* %321, null, !dbg !1149
  br i1 %322, label %323, label %378, !dbg !1151

; <label>:323:                                    ; preds = %313
  %324 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %21, align 8, !dbg !1152
  %325 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %324, i32 0, i32 1, !dbg !1154
  %326 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %325, i32 0, i32 1, !dbg !1155
  %327 = load void (i8*)*, void (i8*)** %326, align 8, !dbg !1155
  store void (i8*)* %327, void (i8*)** %13, align 8, !dbg !1156
  %328 = icmp ne void (i8*)* %327, null, !dbg !1157
  br i1 %328, label %329, label %378, !dbg !1158

; <label>:329:                                    ; preds = %323
  %330 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %21, align 8, !dbg !1159
  %331 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %330, i32 0, i32 1, !dbg !1161
  %332 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %331, i32 0, i32 4, !dbg !1162
  %333 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %332, align 8, !dbg !1162
  store %struct.MXUserRecLock* %333, %struct.MXUserRecLock** %15, align 8, !dbg !1163
  %334 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %21, align 8, !dbg !1164
  %335 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %334, i32 0, i32 1, !dbg !1165
  %336 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %335, i32 0, i32 2, !dbg !1166
  %337 = load i8*, i8** %336, align 8, !dbg !1166
  store i8* %337, i8** %14, align 8, !dbg !1167
  %338 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %15, align 8, !dbg !1168
  %339 = icmp ne %struct.MXUserRecLock* %338, null, !dbg !1168
  br i1 %339, label %340, label %345, !dbg !1170

; <label>:340:                                    ; preds = %329
  %341 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %15, align 8, !dbg !1171
  %342 = call signext i8 @MXUser_TryAcquireRecLock(%struct.MXUserRecLock* %341), !dbg !1173
  %343 = sext i8 %342 to i32, !dbg !1173
  %344 = icmp ne i32 %343, 0, !dbg !1173
  br i1 %344, label %345, label %368, !dbg !1174

; <label>:345:                                    ; preds = %340, %329
  br label %346, !dbg !1175, !llvm.loop !1177

; <label>:346:                                    ; preds = %345
  br label %347, !dbg !1178

; <label>:347:                                    ; preds = %346
  %348 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %21, align 8, !dbg !1181
  %349 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %348, i32 0, i32 1, !dbg !1183
  %350 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %349, i32 0, i32 0, !dbg !1184
  %351 = load i32, i32* %350, align 8, !dbg !1184
  %352 = and i32 %351, 1, !dbg !1185
  %353 = icmp ne i32 %352, 0, !dbg !1185
  br i1 %353, label %356, label %354, !dbg !1186

; <label>:354:                                    ; preds = %347
  %355 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %21, align 8, !dbg !1187
  call void @PollGtkCallbackRemoveEntry(%struct.PollGtkEntry* %355, i8 signext 1), !dbg !1189
  store i32 0, i32* %19, align 4, !dbg !1190
  br label %360, !dbg !1191

; <label>:356:                                    ; preds = %347
  %357 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %21, align 8, !dbg !1192
  %358 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %357, i32 0, i32 1, !dbg !1194
  %359 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %358, i32 0, i32 5, !dbg !1195
  store i32 0, i32* %359, align 8, !dbg !1196
  br label %360

; <label>:360:                                    ; preds = %356, %354
  call void @PollGtkUnlock(), !dbg !1197
  %361 = load void (i8*)*, void (i8*)** %13, align 8, !dbg !1198
  %362 = load i8*, i8** %14, align 8, !dbg !1199
  call void %361(i8* %362), !dbg !1198
  %363 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %15, align 8, !dbg !1200
  %364 = icmp ne %struct.MXUserRecLock* %363, null, !dbg !1200
  br i1 %364, label %365, label %367, !dbg !1202

; <label>:365:                                    ; preds = %360
  %366 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %15, align 8, !dbg !1203
  call void @MXUser_ReleaseRecLock(%struct.MXUserRecLock* %366), !dbg !1205
  br label %367, !dbg !1206

; <label>:367:                                    ; preds = %365, %360
  br label %386, !dbg !1207

; <label>:368:                                    ; preds = %340
  br label %369, !dbg !1208, !llvm.loop !1210

; <label>:369:                                    ; preds = %368
  br label %370, !dbg !1211

; <label>:370:                                    ; preds = %369
  %371 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %21, align 8, !dbg !1214
  %372 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %371, i32 0, i32 1, !dbg !1215
  %373 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %372, i32 0, i32 5, !dbg !1216
  %374 = load i32, i32* %373, align 8, !dbg !1217
  %375 = add i32 %374, 1, !dbg !1217
  store i32 %375, i32* %373, align 8, !dbg !1217
  %376 = load i8*, i8** %11, align 8, !dbg !1218
  store i8 0, i8* %376, align 1, !dbg !1219
  br label %377

; <label>:377:                                    ; preds = %370
  br label %378, !dbg !1220

; <label>:378:                                    ; preds = %377, %323, %313
  br label %379, !dbg !1221

; <label>:379:                                    ; preds = %378, %310
  br label %380, !dbg !1222

; <label>:380:                                    ; preds = %379, %206, %113, %30
  %381 = load i8, i8* %10, align 1, !dbg !1224
  %382 = icmp ne i8 %381, 0, !dbg !1224
  br i1 %382, label %384, label %383, !dbg !1226

; <label>:383:                                    ; preds = %380
  call void @PollGtkUnlock(), !dbg !1227
  br label %384, !dbg !1229

; <label>:384:                                    ; preds = %383, %380
  %385 = load i32, i32* %19, align 4, !dbg !1230
  store i32 %385, i32* %6, align 4, !dbg !1231
  br label %392, !dbg !1231

; <label>:386:                                    ; preds = %367, %308
  %387 = load i8, i8* %10, align 1, !dbg !1232
  %388 = icmp ne i8 %387, 0, !dbg !1232
  br i1 %388, label %389, label %390, !dbg !1234

; <label>:389:                                    ; preds = %386
  call void @PollGtkLock(), !dbg !1235
  br label %390, !dbg !1237

; <label>:390:                                    ; preds = %389, %386
  %391 = load i32, i32* %19, align 4, !dbg !1238
  store i32 %391, i32* %6, align 4, !dbg !1239
  br label %392, !dbg !1239

; <label>:392:                                    ; preds = %390, %384
  %393 = load i32, i32* %6, align 4, !dbg !1240
  ret i32 %393, !dbg !1240
}

declare i32 @g_source_is_destroyed(%struct._GSource*) #2

declare %struct._GSource* @g_main_current_source() #2

declare signext i8 @MXUser_TryAcquireRecLock(%struct.MXUserRecLock*) #2

declare i32 @g_hash_table_steal(%struct._GHashTable*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @PollGtkCallbackRemoveEntry(%struct.PollGtkEntry*, i8 signext) #0 !dbg !1241 {
  %3 = alloca %struct.PollGtkEntry*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.Poll*, align 8
  %6 = alloca %struct.PollGtkEntry*, align 8
  %7 = alloca i64, align 8
  store %struct.PollGtkEntry* %0, %struct.PollGtkEntry** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.PollGtkEntry** %3, metadata !1244, metadata !378), !dbg !1245
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1246, metadata !378), !dbg !1247
  call void @llvm.dbg.declare(metadata %struct.Poll** %5, metadata !1248, metadata !378), !dbg !1249
  %8 = load %struct.Poll*, %struct.Poll** @pollState, align 8, !dbg !1250
  store %struct.Poll* %8, %struct.Poll** %5, align 8, !dbg !1249
  %9 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %3, align 8, !dbg !1251
  %10 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %9, i32 0, i32 2, !dbg !1253
  %11 = load i32, i32* %10, align 8, !dbg !1253
  %12 = icmp eq i32 %11, 2, !dbg !1254
  br i1 %12, label %13, label %78, !dbg !1255

; <label>:13:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.PollGtkEntry** %6, metadata !1256, metadata !378), !dbg !1258
  store %struct.PollGtkEntry* null, %struct.PollGtkEntry** %6, align 8, !dbg !1258
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1259, metadata !378), !dbg !1260
  %14 = load i8, i8* %4, align 1, !dbg !1261
  %15 = icmp ne i8 %14, 0, !dbg !1261
  br i1 %15, label %16, label %37, !dbg !1263

; <label>:16:                                     ; preds = %13
  %17 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %3, align 8, !dbg !1264
  %18 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %17, i32 0, i32 0, !dbg !1267
  %19 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %18, i32 0, i32 0, !dbg !1268
  %20 = load i32, i32* %19, align 8, !dbg !1268
  %21 = icmp ne i32 %20, 0, !dbg !1264
  br i1 %21, label %22, label %33, !dbg !1269

; <label>:22:                                     ; preds = %16
  %23 = call noalias i8* @g_malloc0_n(i64 1, i64 128), !dbg !1270
  %24 = bitcast i8* %23 to %struct.PollGtkEntry*, !dbg !1272
  store %struct.PollGtkEntry* %24, %struct.PollGtkEntry** %6, align 8, !dbg !1273
  %25 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %6, align 8, !dbg !1274
  %26 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %25, i32 0, i32 0, !dbg !1275
  %27 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %3, align 8, !dbg !1276
  %28 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %27, i32 0, i32 0, !dbg !1277
  %29 = bitcast %struct.PollEntryInfo* %26 to i8*, !dbg !1277
  %30 = bitcast %struct.PollEntryInfo* %28 to i8*, !dbg !1277
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 48, i32 8, i1 false), !dbg !1277
  br label %31, !dbg !1278, !llvm.loop !1279

; <label>:31:                                     ; preds = %22
  br label %32, !dbg !1280

; <label>:32:                                     ; preds = %31
  br label %36, !dbg !1283

; <label>:33:                                     ; preds = %16
  br label %34, !dbg !1284, !llvm.loop !1286

; <label>:34:                                     ; preds = %33
  br label %35, !dbg !1287

; <label>:35:                                     ; preds = %34
  br label %36

; <label>:36:                                     ; preds = %35, %32
  br label %58, !dbg !1290

; <label>:37:                                     ; preds = %13
  %38 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %3, align 8, !dbg !1291
  %39 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %38, i32 0, i32 1, !dbg !1294
  %40 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %39, i32 0, i32 0, !dbg !1295
  %41 = load i32, i32* %40, align 8, !dbg !1295
  %42 = icmp ne i32 %41, 0, !dbg !1291
  br i1 %42, label %43, label %54, !dbg !1296

; <label>:43:                                     ; preds = %37
  %44 = call noalias i8* @g_malloc0_n(i64 1, i64 128), !dbg !1297
  %45 = bitcast i8* %44 to %struct.PollGtkEntry*, !dbg !1299
  store %struct.PollGtkEntry* %45, %struct.PollGtkEntry** %6, align 8, !dbg !1300
  %46 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %6, align 8, !dbg !1301
  %47 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %46, i32 0, i32 1, !dbg !1302
  %48 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %3, align 8, !dbg !1303
  %49 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %48, i32 0, i32 1, !dbg !1304
  %50 = bitcast %struct.PollEntryInfo* %47 to i8*, !dbg !1304
  %51 = bitcast %struct.PollEntryInfo* %49 to i8*, !dbg !1304
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 48, i32 8, i1 false), !dbg !1304
  br label %52, !dbg !1305, !llvm.loop !1306

; <label>:52:                                     ; preds = %43
  br label %53, !dbg !1307

; <label>:53:                                     ; preds = %52
  br label %57, !dbg !1310

; <label>:54:                                     ; preds = %37
  br label %55, !dbg !1311, !llvm.loop !1313

; <label>:55:                                     ; preds = %54
  br label %56, !dbg !1314

; <label>:56:                                     ; preds = %55
  br label %57

; <label>:57:                                     ; preds = %56, %53
  br label %58

; <label>:58:                                     ; preds = %57, %36
  %59 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %3, align 8, !dbg !1317
  %60 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %59, i32 0, i32 3, !dbg !1318
  %61 = load i64, i64* %60, align 8, !dbg !1318
  store i64 %61, i64* %7, align 8, !dbg !1319
  %62 = load %struct.Poll*, %struct.Poll** %5, align 8, !dbg !1320
  %63 = getelementptr inbounds %struct.Poll, %struct.Poll* %62, i32 0, i32 1, !dbg !1321
  %64 = load %struct._GHashTable*, %struct._GHashTable** %63, align 8, !dbg !1321
  %65 = load i64, i64* %7, align 8, !dbg !1322
  %66 = inttoptr i64 %65 to i8*, !dbg !1323
  %67 = call i32 @g_hash_table_remove(%struct._GHashTable* %64, i8* %66), !dbg !1324
  %68 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %6, align 8, !dbg !1325
  %69 = icmp ne %struct.PollGtkEntry* %68, null, !dbg !1325
  br i1 %69, label %70, label %77, !dbg !1327

; <label>:70:                                     ; preds = %58
  %71 = load i64, i64* %7, align 8, !dbg !1328
  %72 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %6, align 8, !dbg !1330
  %73 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %72, i32 0, i32 3, !dbg !1331
  store i64 %71, i64* %73, align 8, !dbg !1332
  %74 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %6, align 8, !dbg !1333
  %75 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %74, i32 0, i32 2, !dbg !1334
  store i32 2, i32* %75, align 8, !dbg !1335
  %76 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %6, align 8, !dbg !1336
  call void @PollGtkDeviceCallback(%struct.PollGtkEntry* %76), !dbg !1337
  br label %77, !dbg !1338

; <label>:77:                                     ; preds = %70, %58
  br label %93, !dbg !1339

; <label>:78:                                     ; preds = %2
  br label %79, !dbg !1340, !llvm.loop !1342

; <label>:79:                                     ; preds = %78
  br label %80, !dbg !1343

; <label>:80:                                     ; preds = %79
  %81 = load %struct.Poll*, %struct.Poll** %5, align 8, !dbg !1346
  %82 = getelementptr inbounds %struct.Poll, %struct.Poll* %81, i32 0, i32 2, !dbg !1348
  %83 = load %struct._GHashTable*, %struct._GHashTable** %82, align 8, !dbg !1348
  %84 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %3, align 8, !dbg !1349
  %85 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %84, i32 0, i32 4, !dbg !1350
  %86 = load i32, i32* %85, align 8, !dbg !1350
  %87 = zext i32 %86 to i64, !dbg !1351
  %88 = inttoptr i64 %87 to i8*, !dbg !1352
  %89 = call i32 @g_hash_table_remove(%struct._GHashTable* %83, i8* %88), !dbg !1353
  %90 = icmp ne i32 %89, 0, !dbg !1353
  br i1 %90, label %92, label %91, !dbg !1354

; <label>:91:                                     ; preds = %80
  br label %92, !dbg !1355

; <label>:92:                                     ; preds = %91, %80
  br label %93

; <label>:93:                                     ; preds = %92, %77
  ret void, !dbg !1357
}

declare void @MXUser_ReleaseRecLock(%struct.MXUserRecLock*) #2

declare %struct._GIOChannel* @g_io_channel_unix_new(i32) #2

declare i32 @g_io_add_watch(%struct._GIOChannel*, i32, i32 (%struct._GIOChannel*, i32, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal signext i8 @PollGtkCallbackRemoveInt(i64, i32, void (i8*)*, i8*, i8 signext, i32, i8**) #0 !dbg !1358 {
  %8 = alloca %struct.PollClassSet, align 8
  %9 = alloca i32, align 4
  %10 = alloca void (i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca %struct.Poll*, align 8
  %16 = alloca %struct._GHashTable*, align 8
  %17 = alloca %struct.PollGtkFindEntryData, align 8
  %18 = alloca %struct.PollGtkEntry*, align 8
  %19 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %8, i32 0, i32 0
  store i64 %0, i64* %19, align 8
  call void @llvm.dbg.declare(metadata %struct.PollClassSet* %8, metadata !1361, metadata !378), !dbg !1362
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1363, metadata !378), !dbg !1364
  store void (i8*)* %2, void (i8*)** %10, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %10, metadata !1365, metadata !378), !dbg !1366
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1367, metadata !378), !dbg !1368
  store i8 %4, i8* %12, align 1
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1369, metadata !378), !dbg !1370
  store i32 %5, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1371, metadata !378), !dbg !1372
  store i8** %6, i8*** %14, align 8
  call void @llvm.dbg.declare(metadata i8*** %14, metadata !1373, metadata !378), !dbg !1374
  call void @llvm.dbg.declare(metadata %struct.Poll** %15, metadata !1375, metadata !378), !dbg !1376
  %20 = load %struct.Poll*, %struct.Poll** @pollState, align 8, !dbg !1377
  store %struct.Poll* %20, %struct.Poll** %15, align 8, !dbg !1376
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %16, metadata !1378, metadata !378), !dbg !1379
  call void @llvm.dbg.declare(metadata %struct.PollGtkFindEntryData* %17, metadata !1380, metadata !378), !dbg !1390
  call void @llvm.dbg.declare(metadata %struct.PollGtkEntry** %18, metadata !1391, metadata !378), !dbg !1392
  %21 = getelementptr inbounds %struct.PollGtkFindEntryData, %struct.PollGtkFindEntryData* %17, i32 0, i32 3, !dbg !1393
  %22 = bitcast %struct.PollClassSet* %21 to i8*, !dbg !1394
  %23 = bitcast %struct.PollClassSet* %8 to i8*, !dbg !1394
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 8, i32 8, i1 false), !dbg !1394
  %24 = load i32, i32* %9, align 4, !dbg !1395
  %25 = getelementptr inbounds %struct.PollGtkFindEntryData, %struct.PollGtkFindEntryData* %17, i32 0, i32 0, !dbg !1396
  store i32 %24, i32* %25, align 8, !dbg !1397
  %26 = load void (i8*)*, void (i8*)** %10, align 8, !dbg !1398
  %27 = getelementptr inbounds %struct.PollGtkFindEntryData, %struct.PollGtkFindEntryData* %17, i32 0, i32 1, !dbg !1399
  store void (i8*)* %26, void (i8*)** %27, align 8, !dbg !1400
  %28 = load i8*, i8** %11, align 8, !dbg !1401
  %29 = getelementptr inbounds %struct.PollGtkFindEntryData, %struct.PollGtkFindEntryData* %17, i32 0, i32 2, !dbg !1402
  store i8* %28, i8** %29, align 8, !dbg !1403
  %30 = load i32, i32* %13, align 4, !dbg !1404
  %31 = getelementptr inbounds %struct.PollGtkFindEntryData, %struct.PollGtkFindEntryData* %17, i32 0, i32 4, !dbg !1405
  store i32 %30, i32* %31, align 8, !dbg !1406
  %32 = load i8, i8* %12, align 1, !dbg !1407
  %33 = getelementptr inbounds %struct.PollGtkFindEntryData, %struct.PollGtkFindEntryData* %17, i32 0, i32 5, !dbg !1408
  store i8 %32, i8* %33, align 4, !dbg !1409
  %34 = load i32, i32* %13, align 4, !dbg !1410
  switch i32 %34, label %44 [
    i32 1, label %35
    i32 3, label %35
    i32 2, label %39
    i32 -1, label %43
    i32 0, label %43
  ], !dbg !1411

; <label>:35:                                     ; preds = %7, %7
  %36 = load %struct.Poll*, %struct.Poll** %15, align 8, !dbg !1412
  %37 = getelementptr inbounds %struct.Poll, %struct.Poll* %36, i32 0, i32 2, !dbg !1414
  %38 = load %struct._GHashTable*, %struct._GHashTable** %37, align 8, !dbg !1414
  store %struct._GHashTable* %38, %struct._GHashTable** %16, align 8, !dbg !1415
  br label %45, !dbg !1416

; <label>:39:                                     ; preds = %7
  %40 = load %struct.Poll*, %struct.Poll** %15, align 8, !dbg !1417
  %41 = getelementptr inbounds %struct.Poll, %struct.Poll* %40, i32 0, i32 1, !dbg !1418
  %42 = load %struct._GHashTable*, %struct._GHashTable** %41, align 8, !dbg !1418
  store %struct._GHashTable* %42, %struct._GHashTable** %16, align 8, !dbg !1419
  br label %45, !dbg !1420

; <label>:43:                                     ; preds = %7, %7
  br label %44, !dbg !1421

; <label>:44:                                     ; preds = %7, %43
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 854) #7, !dbg !1423
  unreachable, !dbg !1423

; <label>:45:                                     ; preds = %39, %35
  call void @PollGtkLock(), !dbg !1424
  %46 = load i32, i32* %9, align 4, !dbg !1425
  %47 = and i32 %46, 8, !dbg !1427
  %48 = icmp ne i32 %47, 0, !dbg !1427
  br i1 %48, label %49, label %54, !dbg !1428

; <label>:49:                                     ; preds = %45
  %50 = load %struct._GHashTable*, %struct._GHashTable** %16, align 8, !dbg !1429
  %51 = bitcast %struct.PollGtkFindEntryData* %17 to i8*, !dbg !1431
  %52 = call i8* @g_hash_table_find(%struct._GHashTable* %50, i32 (i8*, i8*, i8*)* @PollGtkFindWritePredicate, i8* %51), !dbg !1432
  %53 = bitcast i8* %52 to %struct.PollGtkEntry*, !dbg !1432
  store %struct.PollGtkEntry* %53, %struct.PollGtkEntry** %18, align 8, !dbg !1433
  br label %59, !dbg !1434

; <label>:54:                                     ; preds = %45
  %55 = load %struct._GHashTable*, %struct._GHashTable** %16, align 8, !dbg !1435
  %56 = bitcast %struct.PollGtkFindEntryData* %17 to i8*, !dbg !1437
  %57 = call i8* @g_hash_table_find(%struct._GHashTable* %55, i32 (i8*, i8*, i8*)* @PollGtkFindReadPredicate, i8* %56), !dbg !1438
  %58 = bitcast i8* %57 to %struct.PollGtkEntry*, !dbg !1438
  store %struct.PollGtkEntry* %58, %struct.PollGtkEntry** %18, align 8, !dbg !1439
  br label %59

; <label>:59:                                     ; preds = %54, %49
  %60 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %18, align 8, !dbg !1440
  %61 = icmp ne %struct.PollGtkEntry* %60, null, !dbg !1440
  br i1 %61, label %62, label %81, !dbg !1442

; <label>:62:                                     ; preds = %59
  %63 = load i32, i32* %9, align 4, !dbg !1443
  %64 = and i32 %63, 8, !dbg !1446
  %65 = icmp ne i32 %64, 0, !dbg !1446
  br i1 %65, label %66, label %73, !dbg !1447

; <label>:66:                                     ; preds = %62
  %67 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %18, align 8, !dbg !1448
  %68 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %67, i32 0, i32 1, !dbg !1450
  %69 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %68, i32 0, i32 2, !dbg !1451
  %70 = load i8*, i8** %69, align 8, !dbg !1451
  %71 = load i8**, i8*** %14, align 8, !dbg !1452
  store i8* %70, i8** %71, align 8, !dbg !1453
  %72 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %18, align 8, !dbg !1454
  call void @PollGtkCallbackRemoveEntry(%struct.PollGtkEntry* %72, i8 signext 1), !dbg !1455
  br label %80, !dbg !1456

; <label>:73:                                     ; preds = %62
  %74 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %18, align 8, !dbg !1457
  %75 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %74, i32 0, i32 0, !dbg !1459
  %76 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %75, i32 0, i32 2, !dbg !1460
  %77 = load i8*, i8** %76, align 8, !dbg !1460
  %78 = load i8**, i8*** %14, align 8, !dbg !1461
  store i8* %77, i8** %78, align 8, !dbg !1462
  %79 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %18, align 8, !dbg !1463
  call void @PollGtkCallbackRemoveEntry(%struct.PollGtkEntry* %79, i8 signext 0), !dbg !1464
  br label %80

; <label>:80:                                     ; preds = %73, %66
  br label %82, !dbg !1465

; <label>:81:                                     ; preds = %59
  br label %82

; <label>:82:                                     ; preds = %81, %80
  call void @PollGtkUnlock(), !dbg !1466
  %83 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %18, align 8, !dbg !1467
  %84 = icmp ne %struct.PollGtkEntry* %83, null, !dbg !1468
  %85 = zext i1 %84 to i32, !dbg !1468
  %86 = trunc i32 %85 to i8, !dbg !1467
  ret i8 %86, !dbg !1469
}

declare i8* @g_hash_table_find(%struct._GHashTable*, i32 (i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @PollGtkFindWritePredicate(i8*, i8*, i8*) #0 !dbg !1470 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.PollGtkEntry*, align 8
  %8 = alloca %struct.PollGtkFindEntryData*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1473, metadata !378), !dbg !1474
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1475, metadata !378), !dbg !1476
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1477, metadata !378), !dbg !1478
  call void @llvm.dbg.declare(metadata %struct.PollGtkEntry** %7, metadata !1479, metadata !378), !dbg !1482
  %9 = load i8*, i8** %5, align 8, !dbg !1483
  %10 = bitcast i8* %9 to %struct.PollGtkEntry*, !dbg !1483
  store %struct.PollGtkEntry* %10, %struct.PollGtkEntry** %7, align 8, !dbg !1482
  call void @llvm.dbg.declare(metadata %struct.PollGtkFindEntryData** %8, metadata !1484, metadata !378), !dbg !1487
  %11 = load i8*, i8** %6, align 8, !dbg !1488
  %12 = bitcast i8* %11 to %struct.PollGtkFindEntryData*, !dbg !1488
  store %struct.PollGtkFindEntryData* %12, %struct.PollGtkFindEntryData** %8, align 8, !dbg !1487
  %13 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %7, align 8, !dbg !1489
  %14 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %13, i32 0, i32 2, !dbg !1490
  %15 = load i32, i32* %14, align 8, !dbg !1490
  %16 = load %struct.PollGtkFindEntryData*, %struct.PollGtkFindEntryData** %8, align 8, !dbg !1491
  %17 = getelementptr inbounds %struct.PollGtkFindEntryData, %struct.PollGtkFindEntryData* %16, i32 0, i32 4, !dbg !1492
  %18 = load i32, i32* %17, align 8, !dbg !1492
  %19 = icmp eq i32 %15, %18, !dbg !1493
  br i1 %19, label %20, label %26, !dbg !1494

; <label>:20:                                     ; preds = %3
  %21 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %7, align 8, !dbg !1495
  %22 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %21, i32 0, i32 1, !dbg !1496
  %23 = load %struct.PollGtkFindEntryData*, %struct.PollGtkFindEntryData** %8, align 8, !dbg !1497
  %24 = call i32 @PollGtkEntryInfoMatches(%struct.PollEntryInfo* %22, %struct.PollGtkFindEntryData* %23), !dbg !1498
  %25 = icmp ne i32 %24, 0, !dbg !1499
  br label %26

; <label>:26:                                     ; preds = %20, %3
  %27 = phi i1 [ false, %3 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32, !dbg !1501
  ret i32 %28, !dbg !1503
}

; Function Attrs: nounwind uwtable
define internal i32 @PollGtkFindReadPredicate(i8*, i8*, i8*) #0 !dbg !1504 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.PollGtkEntry*, align 8
  %8 = alloca %struct.PollGtkFindEntryData*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1505, metadata !378), !dbg !1506
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1507, metadata !378), !dbg !1508
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1509, metadata !378), !dbg !1510
  call void @llvm.dbg.declare(metadata %struct.PollGtkEntry** %7, metadata !1511, metadata !378), !dbg !1512
  %9 = load i8*, i8** %5, align 8, !dbg !1513
  %10 = bitcast i8* %9 to %struct.PollGtkEntry*, !dbg !1513
  store %struct.PollGtkEntry* %10, %struct.PollGtkEntry** %7, align 8, !dbg !1512
  call void @llvm.dbg.declare(metadata %struct.PollGtkFindEntryData** %8, metadata !1514, metadata !378), !dbg !1515
  %11 = load i8*, i8** %6, align 8, !dbg !1516
  %12 = bitcast i8* %11 to %struct.PollGtkFindEntryData*, !dbg !1516
  store %struct.PollGtkFindEntryData* %12, %struct.PollGtkFindEntryData** %8, align 8, !dbg !1515
  %13 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %7, align 8, !dbg !1517
  %14 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %13, i32 0, i32 2, !dbg !1518
  %15 = load i32, i32* %14, align 8, !dbg !1518
  %16 = load %struct.PollGtkFindEntryData*, %struct.PollGtkFindEntryData** %8, align 8, !dbg !1519
  %17 = getelementptr inbounds %struct.PollGtkFindEntryData, %struct.PollGtkFindEntryData* %16, i32 0, i32 4, !dbg !1520
  %18 = load i32, i32* %17, align 8, !dbg !1520
  %19 = icmp eq i32 %15, %18, !dbg !1521
  br i1 %19, label %20, label %26, !dbg !1522

; <label>:20:                                     ; preds = %3
  %21 = load %struct.PollGtkEntry*, %struct.PollGtkEntry** %7, align 8, !dbg !1523
  %22 = getelementptr inbounds %struct.PollGtkEntry, %struct.PollGtkEntry* %21, i32 0, i32 0, !dbg !1524
  %23 = load %struct.PollGtkFindEntryData*, %struct.PollGtkFindEntryData** %8, align 8, !dbg !1525
  %24 = call i32 @PollGtkEntryInfoMatches(%struct.PollEntryInfo* %22, %struct.PollGtkFindEntryData* %23), !dbg !1526
  %25 = icmp ne i32 %24, 0, !dbg !1527
  br label %26

; <label>:26:                                     ; preds = %20, %3
  %27 = phi i1 [ false, %3 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32, !dbg !1529
  ret i32 %28, !dbg !1531
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @PollGtkEntryInfoMatches(%struct.PollEntryInfo*, %struct.PollGtkFindEntryData*) #1 !dbg !1532 {
  %3 = alloca %struct.PollEntryInfo*, align 8
  %4 = alloca %struct.PollGtkFindEntryData*, align 8
  store %struct.PollEntryInfo* %0, %struct.PollEntryInfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.PollEntryInfo** %3, metadata !1537, metadata !378), !dbg !1538
  store %struct.PollGtkFindEntryData* %1, %struct.PollGtkFindEntryData** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.PollGtkFindEntryData** %4, metadata !1539, metadata !378), !dbg !1540
  %5 = load %struct.PollEntryInfo*, %struct.PollEntryInfo** %3, align 8, !dbg !1541
  %6 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %5, i32 0, i32 3, !dbg !1542
  %7 = load %struct.PollGtkFindEntryData*, %struct.PollGtkFindEntryData** %4, align 8, !dbg !1543
  %8 = getelementptr inbounds %struct.PollGtkFindEntryData, %struct.PollGtkFindEntryData* %7, i32 0, i32 3, !dbg !1544
  %9 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %6, i32 0, i32 0, !dbg !1545
  %10 = load i64, i64* %9, align 8, !dbg !1545
  %11 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %8, i32 0, i32 0, !dbg !1545
  %12 = load i64, i64* %11, align 8, !dbg !1545
  %13 = call signext i8 @PollClassSet_Equals(i64 %10, i64 %12), !dbg !1545
  %14 = sext i8 %13 to i32, !dbg !1545
  %15 = icmp ne i32 %14, 0, !dbg !1545
  br i1 %15, label %16, label %48, !dbg !1546

; <label>:16:                                     ; preds = %2
  %17 = load %struct.PollEntryInfo*, %struct.PollEntryInfo** %3, align 8, !dbg !1547
  %18 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %17, i32 0, i32 1, !dbg !1548
  %19 = load void (i8*)*, void (i8*)** %18, align 8, !dbg !1548
  %20 = load %struct.PollGtkFindEntryData*, %struct.PollGtkFindEntryData** %4, align 8, !dbg !1549
  %21 = getelementptr inbounds %struct.PollGtkFindEntryData, %struct.PollGtkFindEntryData* %20, i32 0, i32 1, !dbg !1550
  %22 = load void (i8*)*, void (i8*)** %21, align 8, !dbg !1550
  %23 = icmp eq void (i8*)* %19, %22, !dbg !1551
  br i1 %23, label %24, label %48, !dbg !1552

; <label>:24:                                     ; preds = %16
  %25 = load %struct.PollEntryInfo*, %struct.PollEntryInfo** %3, align 8, !dbg !1553
  %26 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %25, i32 0, i32 0, !dbg !1555
  %27 = load i32, i32* %26, align 8, !dbg !1555
  %28 = load %struct.PollGtkFindEntryData*, %struct.PollGtkFindEntryData** %4, align 8, !dbg !1556
  %29 = getelementptr inbounds %struct.PollGtkFindEntryData, %struct.PollGtkFindEntryData* %28, i32 0, i32 0, !dbg !1557
  %30 = load i32, i32* %29, align 8, !dbg !1557
  %31 = icmp eq i32 %27, %30, !dbg !1558
  br i1 %31, label %32, label %48, !dbg !1559

; <label>:32:                                     ; preds = %24
  %33 = load %struct.PollGtkFindEntryData*, %struct.PollGtkFindEntryData** %4, align 8, !dbg !1560
  %34 = getelementptr inbounds %struct.PollGtkFindEntryData, %struct.PollGtkFindEntryData* %33, i32 0, i32 5, !dbg !1561
  %35 = load i8, i8* %34, align 4, !dbg !1561
  %36 = sext i8 %35 to i32, !dbg !1560
  %37 = icmp ne i32 %36, 0, !dbg !1560
  br i1 %37, label %46, label %38, !dbg !1562

; <label>:38:                                     ; preds = %32
  %39 = load %struct.PollEntryInfo*, %struct.PollEntryInfo** %3, align 8, !dbg !1563
  %40 = getelementptr inbounds %struct.PollEntryInfo, %struct.PollEntryInfo* %39, i32 0, i32 2, !dbg !1564
  %41 = load i8*, i8** %40, align 8, !dbg !1564
  %42 = load %struct.PollGtkFindEntryData*, %struct.PollGtkFindEntryData** %4, align 8, !dbg !1565
  %43 = getelementptr inbounds %struct.PollGtkFindEntryData, %struct.PollGtkFindEntryData* %42, i32 0, i32 2, !dbg !1566
  %44 = load i8*, i8** %43, align 8, !dbg !1566
  %45 = icmp eq i8* %41, %44, !dbg !1567
  br label %46, !dbg !1568

; <label>:46:                                     ; preds = %38, %32
  %47 = phi i1 [ true, %32 ], [ %45, %38 ]
  br label %48

; <label>:48:                                     ; preds = %46, %24, %16, %2
  %49 = phi i1 [ false, %24 ], [ false, %16 ], [ false, %2 ], [ %47, %46 ]
  %50 = zext i1 %49 to i32, !dbg !1569
  ret i32 %50, !dbg !1571
}

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @PollClassSet_Equals(i64, i64) #1 !dbg !1572 {
  %3 = alloca %struct.PollClassSet, align 8
  %4 = alloca %struct.PollClassSet, align 8
  %5 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %3, i32 0, i32 0
  store i64 %0, i64* %5, align 8
  %6 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %4, i32 0, i32 0
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata %struct.PollClassSet* %3, metadata !1575, metadata !378), !dbg !1576
  call void @llvm.dbg.declare(metadata %struct.PollClassSet* %4, metadata !1577, metadata !378), !dbg !1578
  %7 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %3, i32 0, i32 0, !dbg !1579
  %8 = load i64, i64* %7, align 8, !dbg !1579
  %9 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %4, i32 0, i32 0, !dbg !1580
  %10 = load i64, i64* %9, align 8, !dbg !1580
  %11 = icmp eq i64 %8, %10, !dbg !1581
  %12 = zext i1 %11 to i32, !dbg !1581
  %13 = trunc i32 %12 to i8, !dbg !1582
  ret i8 %13, !dbg !1583
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!355, !356}
!llvm.ident = !{!357}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !62, globals: !312)
!1 = !DIFile(filename: "pollGtk.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line88")
!2 = !{!3, !14, !22, !30, !37, !42, !51}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PollClass", file: !4, line: 103, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/poll.h", directory: "/home/lichi/Desktop/open-vm-tools/line88")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13}
!6 = !DIEnumerator(name: "POLL_CLASS_MAIN", value: 0)
!7 = !DIEnumerator(name: "POLL_CLASS_PAUSE", value: 1)
!8 = !DIEnumerator(name: "POLL_CLASS_IPC", value: 2)
!9 = !DIEnumerator(name: "POLL_CLASS_CPT", value: 3)
!10 = !DIEnumerator(name: "POLL_CLASS_MKS", value: 4)
!11 = !DIEnumerator(name: "POLL_FIXED_CLASSES", value: 5)
!12 = !DIEnumerator(name: "POLL_DEFAULT_FIXED_CLASSES", value: 6)
!13 = !DIEnumerator(name: "POLL_MAX_CLASSES", value: 31)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "VMwareStatus", file: !15, line: 85, size: 32, align: 32, elements: !16)
!15 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware.h", directory: "/home/lichi/Desktop/open-vm-tools/line88")
!16 = !{!17, !18, !19, !20, !21}
!17 = !DIEnumerator(name: "VMWARE_STATUS_SUCCESS", value: 0)
!18 = !DIEnumerator(name: "VMWARE_STATUS_ERROR", value: 1)
!19 = !DIEnumerator(name: "VMWARE_STATUS_NOMEM", value: 2)
!20 = !DIEnumerator(name: "VMWARE_STATUS_INSUFFICIENT_RESOURCES", value: 3)
!21 = !DIEnumerator(name: "VMWARE_STATUS_INVALID_ARGS", value: 4)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 83, size: 32, align: 32, elements: !23)
!23 = !{!24, !25, !26, !27, !28, !29}
!24 = !DIEnumerator(name: "POLL_VIRTUALREALTIME", value: -1)
!25 = !DIEnumerator(name: "POLL_VTIME", value: 0)
!26 = !DIEnumerator(name: "POLL_REALTIME", value: 1)
!27 = !DIEnumerator(name: "POLL_DEVICE", value: 2)
!28 = !DIEnumerator(name: "POLL_MAIN_LOOP", value: 3)
!29 = !DIEnumerator(name: "POLL_NUM_QUEUES", value: 4)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 69, size: 32, align: 32, elements: !32)
!31 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/open-vm-tools/line88")
!32 = !{!33, !34, !35, !36}
!33 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!34 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!35 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!36 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 77, size: 32, align: 32, elements: !38)
!38 = !{!39, !40, !41}
!39 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!40 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!41 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !43, line: 31, size: 32, align: 32, elements: !44)
!43 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line88")
!44 = !{!45, !46, !47, !48, !49, !50}
!45 = !DIEnumerator(name: "G_IO_IN", value: 1)
!46 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!47 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!48 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!49 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!50 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 84, size: 32, align: 32, elements: !52)
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61}
!53 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!54 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!55 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!56 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!57 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!58 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!59 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!60 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!61 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!62 = !{!63, !66, !69, !85, !307, !127, !308, !65}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !64, line: 77, baseType: !65)
!64 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line88")
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !67, line: 66, baseType: !68)
!67 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/open-vm-tools/line88")
!68 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "Poll", file: !71, line: 127, baseType: !72)
!71 = !DIFile(filename: "pollGtk.c", directory: "/home/lichi/Desktop/open-vm-tools/line88")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Poll", file: !71, line: 116, size: 192, align: 64, elements: !73)
!73 = !{!74, !79, !84}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !72, file: !71, line: 117, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserExclLock", file: !77, line: 38, baseType: !78)
!77 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/userlock.h", directory: "/home/lichi/Desktop/open-vm-tools/line88")
!78 = !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserExclLock", file: !77, line: 38, flags: DIFlagFwdDecl)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "deviceTable", scope: !72, file: !71, line: 119, baseType: !80, size: 64, align: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !82, line: 37, baseType: !83)
!82 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/open-vm-tools/line88")
!83 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !82, line: 37, flags: DIFlagFwdDecl)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "timerTable", scope: !72, file: !71, line: 120, baseType: !80, size: 64, align: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "PollGtkEntry", file: !71, line: 97, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PollGtkEntry", file: !71, line: 79, size: 1024, align: 64, elements: !88)
!88 = !{!89, !117, !118, !120, !126, !128}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !87, file: !71, line: 80, baseType: !90, size: 384, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "PollEntryInfo", file: !71, line: 77, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 70, size: 384, align: 64, elements: !92)
!92 = !{!93, !95, !100, !101, !108, !112}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !91, file: !71, line: 71, baseType: !94, size: 32, align: 32)
!94 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !91, file: !71, line: 72, baseType: !96, size: 64, align: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "PollerFunction", file: !4, line: 221, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !65}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !91, file: !71, line: 73, baseType: !65, size: 64, align: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "classSet", scope: !91, file: !71, line: 74, baseType: !102, size: 64, align: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "PollClassSet", file: !4, line: 128, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PollClassSet", file: !4, line: 126, size: 64, align: 64, elements: !104)
!104 = !{!105}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !103, file: !4, line: 127, baseType: !106, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !107, line: 122, baseType: !68)
!107 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line88")
!108 = !DIDerivedType(tag: DW_TAG_member, name: "cbLock", scope: !91, file: !71, line: 75, baseType: !109, size: 64, align: 64, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserRecLock", file: !77, line: 39, baseType: !111)
!111 = !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserRecLock", file: !77, line: 39, flags: DIFlagFwdDecl)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "timesNotFired", scope: !91, file: !71, line: 76, baseType: !113, size: 32, align: 32, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !114, line: 173, baseType: !115)
!114 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line88")
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !107, line: 51, baseType: !116)
!116 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !87, file: !71, line: 81, baseType: !90, size: 384, align: 64, offset: 384)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !87, file: !71, line: 83, baseType: !119, size: 32, align: 32, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "PollEventType", file: !4, line: 93, baseType: !22)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !87, file: !71, line: 84, baseType: !121, size: 64, align: 64, offset: 832)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "PollDevHandle", file: !114, line: 1130, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !114, line: 172, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !124, line: 197, baseType: !125)
!124 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line88")
!125 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "gtkInputId", scope: !87, file: !71, line: 86, baseType: !127, size: 32, align: 32, offset: 896)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !64, line: 55, baseType: !116)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !87, file: !71, line: 96, baseType: !129, size: 64, align: 64, offset: 960)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !31, line: 41, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !31, line: 97, size: 896, align: 64, elements: !132)
!132 = !{!133, !135, !274, !275, !280, !281, !282, !283, !284, !293, !294, !295, !299, !300, !301, !302, !303, !304, !305, !306}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !131, file: !31, line: 100, baseType: !134, size: 32, align: 32)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !64, line: 49, baseType: !94)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !131, file: !31, line: 101, baseType: !136, size: 64, align: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !31, line: 42, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !31, line: 131, size: 512, align: 64, elements: !139)
!139 = !{!140, !161, !167, !173, !177, !261, !265, !270}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !138, file: !31, line: 133, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!144, !129, !145, !66, !148, !149}
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !31, line: 75, baseType: !30)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !64, line: 46, baseType: !147)
!147 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !152, line: 42, baseType: !153)
!152 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/open-vm-tools/line88")
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !152, line: 44, size: 128, align: 64, elements: !154)
!154 = !{!155, !159, !160}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !153, file: !152, line: 46, baseType: !156, size: 32, align: 32)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !157, line: 36, baseType: !158)
!157 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/open-vm-tools/line88")
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !67, line: 45, baseType: !116)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !153, file: !152, line: 47, baseType: !134, size: 32, align: 32, offset: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !153, file: !152, line: 48, baseType: !145, size: 64, align: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !138, file: !31, line: 138, baseType: !162, size: 64, align: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!144, !129, !165, !66, !148, !149}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !138, file: !31, line: 143, baseType: !168, size: 64, align: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!144, !129, !171, !172, !149}
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !67, line: 51, baseType: !125)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !31, line: 82, baseType: !37)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !138, file: !31, line: 147, baseType: !174, size: 64, align: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!144, !129, !149}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !138, file: !31, line: 149, baseType: !178, size: 64, align: 64, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!181, !129, !260}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !43, line: 64, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !43, line: 171, size: 768, align: 64, elements: !184)
!184 = !{!185, !186, !207, !236, !237, !241, !242, !243, !244, !252, !253, !254, !256}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !183, file: !43, line: 174, baseType: !63, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !183, file: !43, line: 175, baseType: !187, size: 64, align: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !43, line: 77, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !43, line: 196, size: 192, align: 64, elements: !190)
!190 = !{!191, !195, !196}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !189, file: !43, line: 198, baseType: !192, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !63}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !189, file: !43, line: 199, baseType: !192, size: 64, align: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !189, file: !43, line: 200, baseType: !197, size: 64, align: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !63, !181, !200, !206}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !43, line: 155, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!205, !63}
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !64, line: 50, baseType: !134)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !183, file: !43, line: 177, baseType: !208, size: 64, align: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !43, line: 130, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !43, line: 214, size: 384, align: 64, elements: !212)
!212 = !{!213, !218, !222, !226, !230, !231}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !211, file: !43, line: 216, baseType: !214, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!205, !181, !217}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !211, file: !43, line: 218, baseType: !219, size: 64, align: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!205, !181}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !211, file: !43, line: 219, baseType: !223, size: 64, align: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!205, !181, !201, !63}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !211, file: !43, line: 222, baseType: !227, size: 64, align: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !181}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !211, file: !43, line: 226, baseType: !201, size: 64, align: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !211, file: !43, line: 227, baseType: !232, size: 64, align: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !43, line: 212, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{null}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !183, file: !43, line: 178, baseType: !127, size: 32, align: 32, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !183, file: !43, line: 180, baseType: !238, size: 64, align: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !43, line: 48, baseType: !240)
!240 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !43, line: 48, flags: DIFlagFwdDecl)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !183, file: !43, line: 182, baseType: !134, size: 32, align: 32, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !183, file: !43, line: 183, baseType: !127, size: 32, align: 32, offset: 352)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !183, file: !43, line: 184, baseType: !127, size: 32, align: 32, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !183, file: !43, line: 186, baseType: !245, size: 64, align: 64, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !247, line: 37, baseType: !248)
!247 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/open-vm-tools/line88")
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !247, line: 39, size: 128, align: 64, elements: !249)
!249 = !{!250, !251}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !248, file: !247, line: 41, baseType: !63, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !248, file: !247, line: 42, baseType: !245, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !183, file: !43, line: 188, baseType: !181, size: 64, align: 64, offset: 512)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !183, file: !43, line: 189, baseType: !181, size: 64, align: 64, offset: 576)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !183, file: !43, line: 191, baseType: !255, size: 64, align: 64, offset: 640)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !183, file: !43, line: 193, baseType: !257, size: 64, align: 64, offset: 704)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !43, line: 65, baseType: !259)
!259 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !43, line: 65, flags: DIFlagFwdDecl)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !43, line: 39, baseType: !42)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !138, file: !31, line: 151, baseType: !262, size: 64, align: 64, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !129}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !138, file: !31, line: 152, baseType: !266, size: 64, align: 64, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!144, !129, !269, !149}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !31, line: 95, baseType: !51)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !138, file: !31, line: 155, baseType: !271, size: 64, align: 64, offset: 448)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!269, !129}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !131, file: !31, line: 103, baseType: !145, size: 64, align: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !131, file: !31, line: 104, baseType: !276, size: 64, align: 64, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !277, line: 77, baseType: !278)
!277 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/open-vm-tools/line88")
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !277, line: 77, flags: DIFlagFwdDecl)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !131, file: !31, line: 105, baseType: !276, size: 64, align: 64, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !131, file: !31, line: 106, baseType: !145, size: 64, align: 64, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !131, file: !31, line: 107, baseType: !127, size: 32, align: 32, offset: 384)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !131, file: !31, line: 109, baseType: !66, size: 64, align: 64, offset: 448)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !131, file: !31, line: 110, baseType: !285, size: 64, align: 64, offset: 512)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !287, line: 39, baseType: !288)
!287 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/open-vm-tools/line88")
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !287, line: 41, size: 192, align: 64, elements: !289)
!289 = !{!290, !291, !292}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !288, file: !287, line: 43, baseType: !145, size: 64, align: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !288, file: !287, line: 44, baseType: !66, size: 64, align: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !288, file: !287, line: 45, baseType: !66, size: 64, align: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !131, file: !31, line: 111, baseType: !285, size: 64, align: 64, offset: 576)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !131, file: !31, line: 112, baseType: !285, size: 64, align: 64, offset: 640)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !131, file: !31, line: 113, baseType: !296, size: 48, align: 8, offset: 704)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 48, align: 8, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 6)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !131, file: !31, line: 117, baseType: !127, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !131, file: !31, line: 118, baseType: !127, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !131, file: !31, line: 119, baseType: !127, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !131, file: !31, line: 120, baseType: !127, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !131, file: !31, line: 121, baseType: !127, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !131, file: !31, line: 122, baseType: !127, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !131, file: !31, line: 124, baseType: !63, size: 64, align: 64, offset: 768)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !131, file: !31, line: 125, baseType: !63, size: 64, align: 64, offset: 832)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !107, line: 119, baseType: !125)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "PollerFunctionGtk", file: !71, line: 177, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !65, !129}
!312 = !{!313, !317, !354}
!313 = distinct !DIGlobalVariable(name: "inited", scope: !314, file: !71, line: 1476, type: !316, isLocal: true, isDefinition: true, variable: i64* @Poll_InitGtk.inited)
!314 = distinct !DISubprogram(name: "Poll_InitGtk", scope: !71, file: !71, line: 1474, type: !234, isLocal: false, isDefinition: true, scopeLine: 1475, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!315 = !{}
!316 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !66)
!317 = distinct !DIGlobalVariable(name: "gtkImpl", scope: !314, file: !71, line: 1478, type: !318, isLocal: true, isDefinition: true, variable: %struct.PollImpl* @Poll_InitGtk.gtkImpl)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "PollImpl", file: !320, line: 79, baseType: !321)
!320 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/pollImpl.h", directory: "/home/lichi/Desktop/open-vm-tools/line88")
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PollImpl", file: !320, line: 61, size: 512, align: 64, elements: !322)
!322 = !{!323, !324, !325, !332, !337, !341, !346, !350}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "Init", scope: !321, file: !320, line: 62, baseType: !233, size: 64, align: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "Exit", scope: !321, file: !320, line: 63, baseType: !233, size: 64, align: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "LoopTimeout", scope: !321, file: !320, line: 64, baseType: !326, size: 64, align: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !329, !330, !331, !94}
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !114, line: 230, baseType: !147)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "PollClass", file: !4, line: 113, baseType: !3)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "Callback", scope: !321, file: !320, line: 66, baseType: !333, size: 64, align: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, align: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!336, !102, !94, !96, !65, !119, !121, !109}
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "VMwareStatus", file: !15, line: 91, baseType: !14)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "CallbackRemove", scope: !321, file: !320, line: 71, baseType: !338, size: 64, align: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!329, !102, !94, !96, !65, !119}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "CallbackRemoveOneByCB", scope: !321, file: !320, line: 74, baseType: !342, size: 64, align: 64, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!329, !102, !94, !96, !119, !345}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "LockingEnabled", scope: !321, file: !320, line: 77, baseType: !347, size: 64, align: 64, offset: 384)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!329}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "NotifyChange", scope: !321, file: !320, line: 78, baseType: !351, size: 64, align: 64, offset: 448)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !102}
!354 = distinct !DIGlobalVariable(name: "pollState", scope: !0, file: !71, line: 129, type: !69, isLocal: true, isDefinition: true, variable: %struct.Poll** @pollState)
!355 = !{i32 2, !"Dwarf Version", i32 4}
!356 = !{i32 2, !"Debug Info Version", i32 3}
!357 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!358 = !DILocation(line: 1489, column: 357, scope: !359)
!359 = distinct !DILexicalBlock(scope: !360, file: !71, line: 1489, column: 214)
!360 = distinct !DILexicalBlock(scope: !361, file: !71, line: 1489, column: 24)
!361 = distinct !DILexicalBlock(scope: !314, file: !71, line: 1489, column: 8)
!362 = !DILocation(line: 1489, column: 346, scope: !359)
!363 = !DILocation(line: 1489, column: 216, scope: !359)
!364 = !DILocation(line: 1489, column: 389, scope: !359)
!365 = !DILocation(line: 1489, column: 213, scope: !360)
!366 = !DILocation(line: 1489, column: 393, scope: !360)
!367 = !DILocation(line: 1489, column: 396, scope: !368)
!368 = !DILexicalBlockFile(scope: !360, file: !71, discriminator: 1)
!369 = !DILocation(line: 1489, column: 393, scope: !368)
!370 = !DILocation(line: 1489, column: 393, scope: !371)
!371 = !DILexicalBlockFile(scope: !360, file: !71, discriminator: 2)
!372 = !DILocation(line: 1489, column: 156, scope: !371)
!373 = !DILocation(line: 1489, column: 426, scope: !371)
!374 = !DILocation(line: 1489, column: 23, scope: !371)
!375 = !DILocation(line: 1489, column: 8, scope: !371)
!376 = !DILocalVariable(name: "didInit", scope: !377, file: !71, line: 1490, type: !66)
!377 = distinct !DILexicalBlock(scope: !361, file: !71, line: 1489, column: 431)
!378 = !DIExpression()
!379 = !DILocation(line: 1490, column: 13, scope: !377)
!380 = !DILocation(line: 1491, column: 7, scope: !377)
!381 = !DILocation(line: 1492, column: 235, scope: !382)
!382 = distinct !DILexicalBlock(scope: !377, file: !71, line: 1492, column: 23)
!383 = !DILocation(line: 1492, column: 196, scope: !382)
!384 = !DILocation(line: 1493, column: 4, scope: !377)
!385 = !DILocation(line: 1494, column: 1, scope: !314)
!386 = distinct !DISubprogram(name: "PollGtkInit", scope: !71, file: !71, line: 228, type: !234, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!387 = !DILocation(line: 231, column: 26, scope: !386)
!388 = !DILocation(line: 231, column: 17, scope: !386)
!389 = !DILocation(line: 231, column: 14, scope: !386)
!390 = !DILocation(line: 233, column: 22, scope: !386)
!391 = !DILocation(line: 233, column: 4, scope: !386)
!392 = !DILocation(line: 233, column: 15, scope: !386)
!393 = !DILocation(line: 233, column: 20, scope: !386)
!394 = !DILocation(line: 236, column: 29, scope: !386)
!395 = !DILocation(line: 236, column: 4, scope: !386)
!396 = !DILocation(line: 236, column: 15, scope: !386)
!397 = !DILocation(line: 236, column: 27, scope: !386)
!398 = !DILocation(line: 242, column: 28, scope: !386)
!399 = !DILocation(line: 242, column: 4, scope: !386)
!400 = !DILocation(line: 242, column: 15, scope: !386)
!401 = !DILocation(line: 242, column: 26, scope: !386)
!402 = !DILocation(line: 253, column: 1, scope: !386)
!403 = distinct !DISubprogram(name: "PollGtkExit", scope: !71, file: !71, line: 273, type: !234, isLocal: true, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!404 = !DILocalVariable(name: "poll", scope: !403, file: !71, line: 275, type: !69)
!405 = !DILocation(line: 275, column: 10, scope: !403)
!406 = !DILocation(line: 275, column: 17, scope: !403)
!407 = !DILocation(line: 279, column: 4, scope: !403)
!408 = !DILocation(line: 280, column: 25, scope: !403)
!409 = !DILocation(line: 280, column: 31, scope: !403)
!410 = !DILocation(line: 280, column: 4, scope: !403)
!411 = !DILocation(line: 281, column: 25, scope: !403)
!412 = !DILocation(line: 281, column: 31, scope: !403)
!413 = !DILocation(line: 281, column: 4, scope: !403)
!414 = !DILocation(line: 282, column: 4, scope: !403)
!415 = !DILocation(line: 282, column: 10, scope: !403)
!416 = !DILocation(line: 282, column: 22, scope: !403)
!417 = !DILocation(line: 283, column: 4, scope: !403)
!418 = !DILocation(line: 283, column: 10, scope: !403)
!419 = !DILocation(line: 283, column: 21, scope: !403)
!420 = !DILocation(line: 294, column: 4, scope: !403)
!421 = !DILocation(line: 296, column: 27, scope: !403)
!422 = !DILocation(line: 296, column: 33, scope: !403)
!423 = !DILocation(line: 296, column: 4, scope: !403)
!424 = !DILocation(line: 298, column: 11, scope: !403)
!425 = !DILocation(line: 298, column: 4, scope: !403)
!426 = !DILocation(line: 299, column: 14, scope: !403)
!427 = !DILocation(line: 300, column: 1, scope: !403)
!428 = distinct !DISubprogram(name: "PollGtkLoopTimeout", scope: !71, file: !71, line: 322, type: !327, isLocal: true, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!429 = !DILocalVariable(name: "loop", arg: 1, scope: !428, file: !71, line: 322, type: !329)
!430 = !DILocation(line: 322, column: 25, scope: !428)
!431 = !DILocalVariable(name: "exit", arg: 2, scope: !428, file: !71, line: 323, type: !330)
!432 = !DILocation(line: 323, column: 26, scope: !428)
!433 = !DILocalVariable(name: "class", arg: 3, scope: !428, file: !71, line: 324, type: !331)
!434 = !DILocation(line: 324, column: 30, scope: !428)
!435 = !DILocalVariable(name: "timeout", arg: 4, scope: !428, file: !71, line: 325, type: !94)
!436 = !DILocation(line: 325, column: 24, scope: !428)
!437 = !DILocation(line: 327, column: 4, scope: !428)
!438 = !DILocation(line: 328, column: 1, scope: !428)
!439 = distinct !DISubprogram(name: "PollGtkCallback", scope: !71, file: !71, line: 1001, type: !334, isLocal: true, isDefinition: true, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!440 = !DILocalVariable(name: "classSet", arg: 1, scope: !439, file: !71, line: 1001, type: !102)
!441 = !DILocation(line: 1001, column: 30, scope: !439)
!442 = !DILocalVariable(name: "flags", arg: 2, scope: !439, file: !71, line: 1002, type: !94)
!443 = !DILocation(line: 1002, column: 21, scope: !439)
!444 = !DILocalVariable(name: "f", arg: 3, scope: !439, file: !71, line: 1003, type: !96)
!445 = !DILocation(line: 1003, column: 32, scope: !439)
!446 = !DILocalVariable(name: "clientData", arg: 4, scope: !439, file: !71, line: 1004, type: !65)
!447 = !DILocation(line: 1004, column: 23, scope: !439)
!448 = !DILocalVariable(name: "type", arg: 5, scope: !439, file: !71, line: 1005, type: !119)
!449 = !DILocation(line: 1005, column: 31, scope: !439)
!450 = !DILocalVariable(name: "info", arg: 6, scope: !439, file: !71, line: 1006, type: !121)
!451 = !DILocation(line: 1006, column: 31, scope: !439)
!452 = !DILocalVariable(name: "lock", arg: 7, scope: !439, file: !71, line: 1007, type: !109)
!453 = !DILocation(line: 1007, column: 32, scope: !439)
!454 = !DILocalVariable(name: "result", scope: !439, file: !71, line: 1009, type: !336)
!455 = !DILocation(line: 1009, column: 17, scope: !439)
!456 = !DILocalVariable(name: "poll", scope: !439, file: !71, line: 1010, type: !69)
!457 = !DILocation(line: 1010, column: 10, scope: !439)
!458 = !DILocation(line: 1010, column: 17, scope: !439)
!459 = !DILocalVariable(name: "newEntry", scope: !439, file: !71, line: 1011, type: !85)
!460 = !DILocation(line: 1011, column: 18, scope: !439)
!461 = !DILocation(line: 1015, column: 33, scope: !439)
!462 = !DILocation(line: 1015, column: 16, scope: !439)
!463 = !DILocation(line: 1015, column: 13, scope: !439)
!464 = !DILocation(line: 1016, column: 21, scope: !439)
!465 = !DILocation(line: 1016, column: 4, scope: !439)
!466 = !DILocation(line: 1016, column: 14, scope: !439)
!467 = !DILocation(line: 1016, column: 19, scope: !439)
!468 = !DILocation(line: 1017, column: 8, scope: !469)
!469 = distinct !DILexicalBlock(scope: !439, file: !71, line: 1017, column: 8)
!470 = !DILocation(line: 1017, column: 14, scope: !469)
!471 = !DILocation(line: 1017, column: 8, scope: !439)
!472 = !DILocation(line: 1018, column: 31, scope: !473)
!473 = distinct !DILexicalBlock(scope: !469, file: !71, line: 1017, column: 22)
!474 = !DILocation(line: 1018, column: 7, scope: !473)
!475 = !DILocation(line: 1018, column: 17, scope: !473)
!476 = !DILocation(line: 1018, column: 23, scope: !473)
!477 = !DILocation(line: 1018, column: 29, scope: !473)
!478 = !DILocation(line: 1019, column: 28, scope: !473)
!479 = !DILocation(line: 1019, column: 7, scope: !473)
!480 = !DILocation(line: 1019, column: 17, scope: !473)
!481 = !DILocation(line: 1019, column: 23, scope: !473)
!482 = !DILocation(line: 1019, column: 26, scope: !473)
!483 = !DILocation(line: 1020, column: 36, scope: !473)
!484 = !DILocation(line: 1020, column: 7, scope: !473)
!485 = !DILocation(line: 1020, column: 17, scope: !473)
!486 = !DILocation(line: 1020, column: 23, scope: !473)
!487 = !DILocation(line: 1020, column: 34, scope: !473)
!488 = !DILocation(line: 1021, column: 32, scope: !473)
!489 = !DILocation(line: 1021, column: 7, scope: !473)
!490 = !DILocation(line: 1021, column: 17, scope: !473)
!491 = !DILocation(line: 1021, column: 23, scope: !473)
!492 = !DILocation(line: 1021, column: 30, scope: !473)
!493 = !DILocation(line: 1022, column: 7, scope: !473)
!494 = !DILocation(line: 1022, column: 17, scope: !473)
!495 = !DILocation(line: 1022, column: 23, scope: !473)
!496 = !DILocation(line: 1022, column: 34, scope: !473)
!497 = !DILocation(line: 1023, column: 7, scope: !473)
!498 = distinct !{!498, !497}
!499 = !DILocation(line: 1023, column: 41, scope: !500)
!500 = !DILexicalBlockFile(scope: !501, file: !71, discriminator: 1)
!501 = distinct !DILexicalBlock(scope: !473, file: !71, line: 1023, column: 10)
!502 = !DILocation(line: 1024, column: 4, scope: !473)
!503 = !DILocation(line: 1025, column: 30, scope: !504)
!504 = distinct !DILexicalBlock(scope: !469, file: !71, line: 1024, column: 11)
!505 = !DILocation(line: 1025, column: 7, scope: !504)
!506 = !DILocation(line: 1025, column: 17, scope: !504)
!507 = !DILocation(line: 1025, column: 22, scope: !504)
!508 = !DILocation(line: 1025, column: 28, scope: !504)
!509 = !DILocation(line: 1026, column: 27, scope: !504)
!510 = !DILocation(line: 1026, column: 7, scope: !504)
!511 = !DILocation(line: 1026, column: 17, scope: !504)
!512 = !DILocation(line: 1026, column: 22, scope: !504)
!513 = !DILocation(line: 1026, column: 25, scope: !504)
!514 = !DILocation(line: 1027, column: 35, scope: !504)
!515 = !DILocation(line: 1027, column: 7, scope: !504)
!516 = !DILocation(line: 1027, column: 17, scope: !504)
!517 = !DILocation(line: 1027, column: 22, scope: !504)
!518 = !DILocation(line: 1027, column: 33, scope: !504)
!519 = !DILocation(line: 1028, column: 31, scope: !504)
!520 = !DILocation(line: 1028, column: 7, scope: !504)
!521 = !DILocation(line: 1028, column: 17, scope: !504)
!522 = !DILocation(line: 1028, column: 22, scope: !504)
!523 = !DILocation(line: 1028, column: 29, scope: !504)
!524 = !DILocation(line: 1029, column: 7, scope: !504)
!525 = !DILocation(line: 1029, column: 17, scope: !504)
!526 = !DILocation(line: 1029, column: 22, scope: !504)
!527 = !DILocation(line: 1029, column: 33, scope: !504)
!528 = !DILocation(line: 1030, column: 7, scope: !504)
!529 = distinct !{!529, !528}
!530 = !DILocation(line: 1030, column: 38, scope: !531)
!531 = !DILexicalBlockFile(scope: !532, file: !71, discriminator: 1)
!532 = distinct !DILexicalBlock(scope: !504, file: !71, line: 1030, column: 10)
!533 = !DILocation(line: 1033, column: 4, scope: !439)
!534 = !DILocation(line: 1035, column: 8, scope: !535)
!535 = distinct !DILexicalBlock(scope: !439, file: !71, line: 1035, column: 8)
!536 = !DILocation(line: 1035, column: 13, scope: !535)
!537 = !DILocation(line: 1035, column: 8, scope: !439)
!538 = !DILocalVariable(name: "foundEntry", scope: !539, file: !71, line: 1036, type: !85)
!539 = distinct !DILexicalBlock(scope: !535, file: !71, line: 1035, column: 29)
!540 = !DILocation(line: 1036, column: 21, scope: !539)
!541 = !DILocation(line: 1038, column: 40, scope: !539)
!542 = !DILocation(line: 1038, column: 46, scope: !539)
!543 = !DILocation(line: 1039, column: 60, scope: !539)
!544 = !DILocation(line: 1039, column: 40, scope: !539)
!545 = !DILocation(line: 1038, column: 20, scope: !539)
!546 = !DILocation(line: 1038, column: 18, scope: !539)
!547 = !DILocation(line: 1040, column: 11, scope: !548)
!548 = distinct !DILexicalBlock(scope: !539, file: !71, line: 1040, column: 11)
!549 = !DILocation(line: 1040, column: 11, scope: !539)
!550 = !DILocation(line: 1052, column: 14, scope: !551)
!551 = distinct !DILexicalBlock(scope: !552, file: !71, line: 1052, column: 14)
!552 = distinct !DILexicalBlock(scope: !548, file: !71, line: 1040, column: 23)
!553 = !DILocation(line: 1052, column: 20, scope: !551)
!554 = !DILocation(line: 1052, column: 14, scope: !552)
!555 = !DILocation(line: 1056, column: 13, scope: !556)
!556 = distinct !DILexicalBlock(scope: !551, file: !71, line: 1052, column: 28)
!557 = !DILocation(line: 1056, column: 23, scope: !556)
!558 = !DILocation(line: 1056, column: 30, scope: !556)
!559 = !DILocation(line: 1056, column: 42, scope: !556)
!560 = !DILocation(line: 1057, column: 13, scope: !556)
!561 = distinct !{!561, !560}
!562 = !DILocation(line: 1057, column: 44, scope: !563)
!563 = !DILexicalBlockFile(scope: !564, file: !71, discriminator: 1)
!564 = distinct !DILexicalBlock(scope: !556, file: !71, line: 1057, column: 16)
!565 = !DILocation(line: 1058, column: 10, scope: !556)
!566 = !DILocation(line: 1062, column: 13, scope: !567)
!567 = distinct !DILexicalBlock(scope: !551, file: !71, line: 1058, column: 17)
!568 = !DILocation(line: 1062, column: 23, scope: !567)
!569 = !DILocation(line: 1062, column: 31, scope: !567)
!570 = !DILocation(line: 1062, column: 43, scope: !567)
!571 = !DILocation(line: 1063, column: 13, scope: !567)
!572 = distinct !{!572, !571}
!573 = !DILocation(line: 1063, column: 47, scope: !574)
!574 = !DILexicalBlockFile(scope: !575, file: !71, discriminator: 1)
!575 = distinct !DILexicalBlock(scope: !567, file: !71, line: 1063, column: 16)
!576 = !DILocation(line: 1072, column: 30, scope: !552)
!577 = !DILocation(line: 1072, column: 36, scope: !552)
!578 = !DILocation(line: 1072, column: 69, scope: !552)
!579 = !DILocation(line: 1072, column: 49, scope: !552)
!580 = !DILocation(line: 1072, column: 10, scope: !552)
!581 = !DILocation(line: 1073, column: 7, scope: !552)
!582 = !DILocation(line: 1099, column: 4, scope: !539)
!583 = !DILocation(line: 1109, column: 11, scope: !439)
!584 = !DILocation(line: 1109, column: 4, scope: !439)
!585 = !DILocation(line: 1111, column: 7, scope: !586)
!586 = distinct !DILexicalBlock(scope: !439, file: !71, line: 1109, column: 17)
!587 = !DILocation(line: 1114, column: 14, scope: !586)
!588 = !DILocation(line: 1114, column: 19, scope: !586)
!589 = !DILocation(line: 1114, column: 12, scope: !586)
!590 = !DILocation(line: 1118, column: 25, scope: !586)
!591 = !DILocation(line: 1118, column: 7, scope: !586)
!592 = !DILocation(line: 1118, column: 17, scope: !586)
!593 = !DILocation(line: 1118, column: 23, scope: !586)
!594 = !DILocation(line: 1124, column: 44, scope: !586)
!595 = !DILocation(line: 1126, column: 44, scope: !586)
!596 = !DILocation(line: 1124, column: 30, scope: !586)
!597 = !DILocation(line: 1124, column: 7, scope: !586)
!598 = !DILocation(line: 1124, column: 17, scope: !586)
!599 = !DILocation(line: 1124, column: 28, scope: !586)
!600 = !DILocation(line: 1127, column: 27, scope: !586)
!601 = !DILocation(line: 1127, column: 33, scope: !586)
!602 = !DILocation(line: 1127, column: 65, scope: !586)
!603 = !DILocation(line: 1127, column: 75, scope: !586)
!604 = !DILocation(line: 1127, column: 55, scope: !586)
!605 = !DILocation(line: 1127, column: 45, scope: !586)
!606 = !DILocation(line: 1128, column: 27, scope: !586)
!607 = !DILocation(line: 1127, column: 7, scope: !586)
!608 = !DILocation(line: 1129, column: 7, scope: !586)
!609 = !DILocation(line: 1135, column: 25, scope: !586)
!610 = !DILocation(line: 1135, column: 7, scope: !586)
!611 = !DILocation(line: 1135, column: 17, scope: !586)
!612 = !DILocation(line: 1135, column: 23, scope: !586)
!613 = !DILocation(line: 1137, column: 29, scope: !586)
!614 = !DILocation(line: 1137, column: 7, scope: !586)
!615 = !DILocation(line: 1138, column: 7, scope: !586)
!616 = !DILocation(line: 1138, column: 7, scope: !617)
!617 = !DILexicalBlockFile(scope: !586, file: !71, discriminator: 1)
!618 = !DILocation(line: 1143, column: 7, scope: !586)
!619 = !DILocation(line: 1146, column: 11, scope: !439)
!620 = !DILocation(line: 1148, column: 4, scope: !439)
!621 = !DILocation(line: 1150, column: 11, scope: !439)
!622 = !DILocation(line: 1150, column: 4, scope: !439)
!623 = distinct !DISubprogram(name: "PollGtkCallbackRemove", scope: !71, file: !71, line: 903, type: !339, isLocal: true, isDefinition: true, scopeLine: 908, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!624 = !DILocalVariable(name: "classSet", arg: 1, scope: !623, file: !71, line: 903, type: !102)
!625 = !DILocation(line: 903, column: 36, scope: !623)
!626 = !DILocalVariable(name: "flags", arg: 2, scope: !623, file: !71, line: 904, type: !94)
!627 = !DILocation(line: 904, column: 27, scope: !623)
!628 = !DILocalVariable(name: "f", arg: 3, scope: !623, file: !71, line: 905, type: !96)
!629 = !DILocation(line: 905, column: 38, scope: !623)
!630 = !DILocalVariable(name: "clientData", arg: 4, scope: !623, file: !71, line: 906, type: !65)
!631 = !DILocation(line: 906, column: 29, scope: !623)
!632 = !DILocalVariable(name: "type", arg: 5, scope: !623, file: !71, line: 907, type: !119)
!633 = !DILocation(line: 907, column: 37, scope: !623)
!634 = !DILocalVariable(name: "foundClientData", scope: !623, file: !71, line: 909, type: !65)
!635 = !DILocation(line: 909, column: 10, scope: !623)
!636 = !DILocation(line: 911, column: 46, scope: !623)
!637 = !DILocation(line: 911, column: 53, scope: !623)
!638 = !DILocation(line: 911, column: 56, scope: !623)
!639 = !DILocation(line: 911, column: 73, scope: !623)
!640 = !DILocation(line: 911, column: 11, scope: !623)
!641 = !DILocation(line: 911, column: 4, scope: !623)
!642 = distinct !DISubprogram(name: "PollGtkCallbackRemoveOneByCB", scope: !71, file: !71, line: 933, type: !343, isLocal: true, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!643 = !DILocalVariable(name: "classSet", arg: 1, scope: !642, file: !71, line: 933, type: !102)
!644 = !DILocation(line: 933, column: 43, scope: !642)
!645 = !DILocalVariable(name: "flags", arg: 2, scope: !642, file: !71, line: 934, type: !94)
!646 = !DILocation(line: 934, column: 34, scope: !642)
!647 = !DILocalVariable(name: "f", arg: 3, scope: !642, file: !71, line: 935, type: !96)
!648 = !DILocation(line: 935, column: 45, scope: !642)
!649 = !DILocalVariable(name: "type", arg: 4, scope: !642, file: !71, line: 936, type: !119)
!650 = !DILocation(line: 936, column: 44, scope: !642)
!651 = !DILocalVariable(name: "clientData", arg: 5, scope: !642, file: !71, line: 937, type: !345)
!652 = !DILocation(line: 937, column: 37, scope: !642)
!653 = !DILocation(line: 939, column: 46, scope: !642)
!654 = !DILocation(line: 939, column: 53, scope: !642)
!655 = !DILocation(line: 939, column: 69, scope: !642)
!656 = !DILocation(line: 939, column: 75, scope: !642)
!657 = !DILocation(line: 939, column: 11, scope: !642)
!658 = !DILocation(line: 939, column: 4, scope: !642)
!659 = distinct !DISubprogram(name: "PollLockingAlwaysEnabled", scope: !320, file: !320, line: 142, type: !348, isLocal: true, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!660 = !DILocation(line: 144, column: 4, scope: !659)
!661 = distinct !DISubprogram(name: "PollGtkRemoveOneCallback", scope: !71, file: !71, line: 958, type: !193, isLocal: true, isDefinition: true, scopeLine: 959, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!662 = !DILocalVariable(name: "data", arg: 1, scope: !661, file: !71, line: 958, type: !63)
!663 = !DILocation(line: 958, column: 35, scope: !661)
!664 = !DILocalVariable(name: "eventEntry", scope: !661, file: !71, line: 960, type: !85)
!665 = !DILocation(line: 960, column: 18, scope: !661)
!666 = !DILocation(line: 960, column: 31, scope: !661)
!667 = !DILocation(line: 962, column: 11, scope: !661)
!668 = !DILocation(line: 962, column: 23, scope: !661)
!669 = !DILocation(line: 962, column: 4, scope: !661)
!670 = !DILocation(line: 965, column: 23, scope: !671)
!671 = distinct !DILexicalBlock(scope: !661, file: !71, line: 962, column: 29)
!672 = !DILocation(line: 965, column: 35, scope: !671)
!673 = !DILocation(line: 965, column: 7, scope: !671)
!674 = !DILocation(line: 966, column: 7, scope: !671)
!675 = !DILocation(line: 968, column: 23, scope: !671)
!676 = !DILocation(line: 968, column: 35, scope: !671)
!677 = !DILocation(line: 968, column: 7, scope: !671)
!678 = !DILocation(line: 969, column: 26, scope: !671)
!679 = !DILocation(line: 969, column: 38, scope: !671)
!680 = !DILocation(line: 969, column: 7, scope: !671)
!681 = !DILocation(line: 970, column: 7, scope: !671)
!682 = !DILocation(line: 970, column: 19, scope: !671)
!683 = !DILocation(line: 970, column: 27, scope: !671)
!684 = !DILocation(line: 971, column: 7, scope: !671)
!685 = !DILocation(line: 971, column: 7, scope: !686)
!686 = !DILexicalBlockFile(scope: !671, file: !71, discriminator: 1)
!687 = !DILocation(line: 975, column: 7, scope: !671)
!688 = !DILocation(line: 978, column: 11, scope: !661)
!689 = !DILocation(line: 978, column: 4, scope: !661)
!690 = !DILocation(line: 979, column: 1, scope: !661)
!691 = distinct !DISubprogram(name: "PollGtkLock", scope: !71, file: !71, line: 198, type: !234, isLocal: true, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!692 = !DILocation(line: 200, column: 27, scope: !691)
!693 = !DILocation(line: 200, column: 38, scope: !691)
!694 = !DILocation(line: 200, column: 4, scope: !691)
!695 = !DILocation(line: 201, column: 1, scope: !691)
!696 = distinct !DISubprogram(name: "PollGtkUnlock", scope: !71, file: !71, line: 205, type: !234, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!697 = !DILocation(line: 207, column: 27, scope: !696)
!698 = !DILocation(line: 207, column: 38, scope: !696)
!699 = !DILocation(line: 207, column: 4, scope: !696)
!700 = !DILocation(line: 208, column: 1, scope: !696)
!701 = distinct !DISubprogram(name: "PollGtkBasicCallback", scope: !71, file: !71, line: 1450, type: !203, isLocal: true, isDefinition: true, scopeLine: 1451, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!702 = !DILocalVariable(name: "data", arg: 1, scope: !701, file: !71, line: 1450, type: !63)
!703 = !DILocation(line: 1450, column: 31, scope: !701)
!704 = !DILocation(line: 1452, column: 46, scope: !701)
!705 = !DILocation(line: 1452, column: 11, scope: !701)
!706 = !DILocation(line: 1452, column: 4, scope: !701)
!707 = distinct !DISubprogram(name: "PollGtkDeviceCallback", scope: !71, file: !71, line: 684, type: !708, isLocal: true, isDefinition: true, scopeLine: 685, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!708 = !DISubroutineType(types: !709)
!709 = !{null, !85}
!710 = !DILocalVariable(name: "entry", arg: 1, scope: !707, file: !71, line: 684, type: !85)
!711 = !DILocation(line: 684, column: 37, scope: !707)
!712 = !DILocalVariable(name: "poll", scope: !707, file: !71, line: 686, type: !69)
!713 = !DILocation(line: 686, column: 10, scope: !707)
!714 = !DILocation(line: 686, column: 17, scope: !707)
!715 = !DILocalVariable(name: "conditionFlags", scope: !707, file: !71, line: 687, type: !94)
!716 = !DILocation(line: 687, column: 8, scope: !707)
!717 = !DILocation(line: 690, column: 19, scope: !707)
!718 = !DILocation(line: 691, column: 15, scope: !719)
!719 = distinct !DILexicalBlock(scope: !707, file: !71, line: 691, column: 8)
!720 = !DILocation(line: 691, column: 22, scope: !719)
!721 = !DILocation(line: 691, column: 27, scope: !719)
!722 = !DILocation(line: 691, column: 13, scope: !719)
!723 = !DILocation(line: 691, column: 8, scope: !707)
!724 = !DILocation(line: 692, column: 22, scope: !725)
!725 = distinct !DILexicalBlock(scope: !719, file: !71, line: 691, column: 34)
!726 = !DILocation(line: 693, column: 4, scope: !725)
!727 = !DILocation(line: 694, column: 15, scope: !728)
!728 = distinct !DILexicalBlock(scope: !707, file: !71, line: 694, column: 8)
!729 = !DILocation(line: 694, column: 22, scope: !728)
!730 = !DILocation(line: 694, column: 28, scope: !728)
!731 = !DILocation(line: 694, column: 13, scope: !728)
!732 = !DILocation(line: 694, column: 8, scope: !707)
!733 = !DILocation(line: 695, column: 22, scope: !734)
!734 = distinct !DILexicalBlock(scope: !728, file: !71, line: 694, column: 35)
!735 = !DILocation(line: 696, column: 4, scope: !734)
!736 = !DILocation(line: 719, column: 43, scope: !707)
!737 = !DILocation(line: 719, column: 50, scope: !707)
!738 = !DILocation(line: 719, column: 21, scope: !707)
!739 = !DILocation(line: 719, column: 4, scope: !707)
!740 = !DILocation(line: 719, column: 11, scope: !707)
!741 = !DILocation(line: 719, column: 19, scope: !707)
!742 = !DILocation(line: 721, column: 39, scope: !707)
!743 = !DILocation(line: 721, column: 46, scope: !707)
!744 = !DILocation(line: 722, column: 39, scope: !707)
!745 = !DILocation(line: 724, column: 39, scope: !707)
!746 = !DILocation(line: 721, column: 24, scope: !707)
!747 = !DILocation(line: 721, column: 4, scope: !707)
!748 = !DILocation(line: 721, column: 11, scope: !707)
!749 = !DILocation(line: 721, column: 22, scope: !707)
!750 = !DILocation(line: 726, column: 24, scope: !707)
!751 = !DILocation(line: 726, column: 30, scope: !707)
!752 = !DILocation(line: 726, column: 63, scope: !707)
!753 = !DILocation(line: 726, column: 70, scope: !707)
!754 = !DILocation(line: 726, column: 43, scope: !707)
!755 = !DILocation(line: 727, column: 24, scope: !707)
!756 = !DILocation(line: 726, column: 4, scope: !707)
!757 = !DILocation(line: 728, column: 1, scope: !707)
!758 = distinct !DISubprogram(name: "PollGtkEventCallback", scope: !71, file: !71, line: 1175, type: !759, isLocal: true, isDefinition: true, scopeLine: 1181, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!759 = !DISubroutineType(types: !760)
!760 = !{!205, !129, !260, !63}
!761 = !DILocalVariable(name: "source", arg: 1, scope: !758, file: !71, line: 1175, type: !129)
!762 = !DILocation(line: 1175, column: 34, scope: !758)
!763 = !DILocalVariable(name: "condition", arg: 2, scope: !758, file: !71, line: 1177, type: !260)
!764 = !DILocation(line: 1177, column: 35, scope: !758)
!765 = !DILocalVariable(name: "data", arg: 3, scope: !758, file: !71, line: 1180, type: !63)
!766 = !DILocation(line: 1180, column: 31, scope: !758)
!767 = !DILocalVariable(name: "fired", scope: !758, file: !71, line: 1182, type: !329)
!768 = !DILocation(line: 1182, column: 9, scope: !758)
!769 = !DILocation(line: 1184, column: 36, scope: !758)
!770 = !DILocation(line: 1184, column: 44, scope: !758)
!771 = !DILocation(line: 1184, column: 55, scope: !758)
!772 = !DILocation(line: 1184, column: 11, scope: !758)
!773 = !DILocation(line: 1184, column: 4, scope: !758)
!774 = distinct !DISubprogram(name: "PollGtkEventCallbackWork", scope: !71, file: !71, line: 1189, type: !775, isLocal: true, isDefinition: true, scopeLine: 1194, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!775 = !DISubroutineType(types: !776)
!776 = !{!205, !129, !260, !63, !329, !330}
!777 = !DILocalVariable(name: "source", arg: 1, scope: !774, file: !71, line: 1189, type: !129)
!778 = !DILocation(line: 1189, column: 38, scope: !774)
!779 = !DILocalVariable(name: "condition", arg: 2, scope: !774, file: !71, line: 1190, type: !260)
!780 = !DILocation(line: 1190, column: 39, scope: !774)
!781 = !DILocalVariable(name: "data", arg: 3, scope: !774, file: !71, line: 1191, type: !63)
!782 = !DILocation(line: 1191, column: 35, scope: !774)
!783 = !DILocalVariable(name: "hasPollLock", arg: 4, scope: !774, file: !71, line: 1192, type: !329)
!784 = !DILocation(line: 1192, column: 31, scope: !774)
!785 = !DILocalVariable(name: "firedAll", arg: 5, scope: !774, file: !71, line: 1193, type: !330)
!786 = !DILocation(line: 1193, column: 32, scope: !774)
!787 = !DILocalVariable(name: "eventEntry", scope: !774, file: !71, line: 1195, type: !85)
!788 = !DILocation(line: 1195, column: 18, scope: !774)
!789 = !DILocalVariable(name: "cbFunc", scope: !774, file: !71, line: 1196, type: !96)
!790 = !DILocation(line: 1196, column: 19, scope: !774)
!791 = !DILocalVariable(name: "clientData", scope: !774, file: !71, line: 1197, type: !65)
!792 = !DILocation(line: 1197, column: 10, scope: !774)
!793 = !DILocalVariable(name: "cbLock", scope: !774, file: !71, line: 1198, type: !109)
!794 = !DILocation(line: 1198, column: 19, scope: !774)
!795 = !DILocalVariable(name: "needReadAndWrite", scope: !774, file: !71, line: 1199, type: !329)
!796 = !DILocation(line: 1199, column: 9, scope: !774)
!797 = !DILocalVariable(name: "fireWriteCallback", scope: !774, file: !71, line: 1200, type: !329)
!798 = !DILocation(line: 1200, column: 9, scope: !774)
!799 = !DILocalVariable(name: "fd", scope: !774, file: !71, line: 1201, type: !121)
!800 = !DILocation(line: 1201, column: 18, scope: !774)
!801 = !DILocalVariable(name: "ret", scope: !774, file: !71, line: 1202, type: !205)
!802 = !DILocation(line: 1202, column: 13, scope: !774)
!803 = !DILocalVariable(name: "channel", scope: !774, file: !71, line: 1203, type: !129)
!804 = !DILocation(line: 1203, column: 16, scope: !774)
!805 = !DILocation(line: 1205, column: 5, scope: !774)
!806 = !DILocation(line: 1205, column: 14, scope: !774)
!807 = !DILocation(line: 1207, column: 9, scope: !808)
!808 = distinct !DILexicalBlock(scope: !774, file: !71, line: 1207, column: 8)
!809 = !DILocation(line: 1207, column: 8, scope: !774)
!810 = !DILocation(line: 1208, column: 7, scope: !811)
!811 = distinct !DILexicalBlock(scope: !808, file: !71, line: 1207, column: 22)
!812 = !DILocation(line: 1209, column: 4, scope: !811)
!813 = !DILocation(line: 1211, column: 30, scope: !814)
!814 = distinct !DILexicalBlock(scope: !774, file: !71, line: 1211, column: 8)
!815 = !DILocation(line: 1211, column: 8, scope: !816)
!816 = !DILexicalBlockFile(scope: !814, file: !71, discriminator: 1)
!817 = !DILocation(line: 1211, column: 8, scope: !814)
!818 = !DILocation(line: 1211, column: 8, scope: !774)
!819 = !DILocation(line: 1212, column: 11, scope: !820)
!820 = distinct !DILexicalBlock(scope: !814, file: !71, line: 1211, column: 56)
!821 = !DILocation(line: 1213, column: 7, scope: !820)
!822 = !DILocation(line: 1216, column: 17, scope: !774)
!823 = !DILocation(line: 1216, column: 15, scope: !774)
!824 = !DILocation(line: 1223, column: 14, scope: !774)
!825 = !DILocation(line: 1223, column: 26, scope: !774)
!826 = !DILocation(line: 1223, column: 12, scope: !774)
!827 = !DILocation(line: 1225, column: 8, scope: !828)
!828 = distinct !DILexicalBlock(scope: !774, file: !71, line: 1225, column: 8)
!829 = !DILocation(line: 1225, column: 20, scope: !828)
!830 = !DILocation(line: 1225, column: 25, scope: !828)
!831 = !DILocation(line: 1225, column: 28, scope: !828)
!832 = !DILocation(line: 1226, column: 9, scope: !828)
!833 = !DILocation(line: 1226, column: 19, scope: !828)
!834 = !DILocation(line: 1225, column: 8, scope: !835)
!835 = !DILexicalBlockFile(scope: !774, file: !71, discriminator: 1)
!836 = !DILocation(line: 1227, column: 16, scope: !837)
!837 = distinct !DILexicalBlock(scope: !828, file: !71, line: 1226, column: 78)
!838 = !DILocation(line: 1227, column: 28, scope: !837)
!839 = !DILocation(line: 1227, column: 33, scope: !837)
!840 = !DILocation(line: 1227, column: 14, scope: !837)
!841 = !DILocation(line: 1228, column: 20, scope: !837)
!842 = !DILocation(line: 1228, column: 32, scope: !837)
!843 = !DILocation(line: 1228, column: 37, scope: !837)
!844 = !DILocation(line: 1228, column: 18, scope: !837)
!845 = !DILocation(line: 1229, column: 16, scope: !837)
!846 = !DILocation(line: 1229, column: 28, scope: !837)
!847 = !DILocation(line: 1229, column: 33, scope: !837)
!848 = !DILocation(line: 1229, column: 14, scope: !837)
!849 = !DILocation(line: 1230, column: 14, scope: !837)
!850 = !DILocation(line: 1230, column: 26, scope: !837)
!851 = !DILocation(line: 1230, column: 31, scope: !837)
!852 = !DILocation(line: 1230, column: 37, scope: !837)
!853 = !DILocation(line: 1230, column: 45, scope: !837)
!854 = !DILocation(line: 1230, column: 11, scope: !837)
!855 = !DILocation(line: 1231, column: 25, scope: !837)
!856 = !DILocation(line: 1232, column: 12, scope: !837)
!857 = !DILocation(line: 1232, column: 24, scope: !837)
!858 = !DILocation(line: 1232, column: 10, scope: !837)
!859 = !DILocation(line: 1233, column: 11, scope: !860)
!860 = distinct !DILexicalBlock(scope: !837, file: !71, line: 1233, column: 11)
!861 = !DILocation(line: 1233, column: 23, scope: !860)
!862 = !DILocation(line: 1233, column: 29, scope: !860)
!863 = !DILocation(line: 1233, column: 32, scope: !860)
!864 = !DILocation(line: 1233, column: 36, scope: !865)
!865 = !DILexicalBlockFile(scope: !860, file: !71, discriminator: 1)
!866 = !DILocation(line: 1233, column: 46, scope: !865)
!867 = !DILocation(line: 1233, column: 11, scope: !865)
!868 = !DILocation(line: 1234, column: 27, scope: !869)
!869 = distinct !DILexicalBlock(scope: !860, file: !71, line: 1233, column: 59)
!870 = !DILocation(line: 1235, column: 7, scope: !869)
!871 = !DILocation(line: 1236, column: 4, scope: !837)
!872 = !DILocation(line: 1236, column: 15, scope: !873)
!873 = !DILexicalBlockFile(scope: !874, file: !71, discriminator: 1)
!874 = distinct !DILexicalBlock(scope: !828, file: !71, line: 1236, column: 15)
!875 = !DILocation(line: 1236, column: 27, scope: !873)
!876 = !DILocation(line: 1236, column: 33, scope: !873)
!877 = !DILocation(line: 1236, column: 36, scope: !873)
!878 = !DILocation(line: 1237, column: 16, scope: !874)
!879 = !DILocation(line: 1237, column: 26, scope: !874)
!880 = !DILocation(line: 1236, column: 15, scope: !881)
!881 = !DILexicalBlockFile(scope: !828, file: !71, discriminator: 2)
!882 = !DILocation(line: 1238, column: 16, scope: !883)
!883 = distinct !DILexicalBlock(scope: !874, file: !71, line: 1237, column: 75)
!884 = !DILocation(line: 1238, column: 28, scope: !883)
!885 = !DILocation(line: 1238, column: 34, scope: !883)
!886 = !DILocation(line: 1238, column: 14, scope: !883)
!887 = !DILocation(line: 1239, column: 20, scope: !883)
!888 = !DILocation(line: 1239, column: 32, scope: !883)
!889 = !DILocation(line: 1239, column: 38, scope: !883)
!890 = !DILocation(line: 1239, column: 18, scope: !883)
!891 = !DILocation(line: 1240, column: 16, scope: !883)
!892 = !DILocation(line: 1240, column: 28, scope: !883)
!893 = !DILocation(line: 1240, column: 34, scope: !883)
!894 = !DILocation(line: 1240, column: 14, scope: !883)
!895 = !DILocation(line: 1241, column: 14, scope: !883)
!896 = !DILocation(line: 1241, column: 26, scope: !883)
!897 = !DILocation(line: 1241, column: 32, scope: !883)
!898 = !DILocation(line: 1241, column: 38, scope: !883)
!899 = !DILocation(line: 1241, column: 46, scope: !883)
!900 = !DILocation(line: 1241, column: 11, scope: !883)
!901 = !DILocation(line: 1242, column: 25, scope: !883)
!902 = !DILocation(line: 1243, column: 12, scope: !883)
!903 = !DILocation(line: 1243, column: 24, scope: !883)
!904 = !DILocation(line: 1243, column: 10, scope: !883)
!905 = !DILocation(line: 1244, column: 4, scope: !883)
!906 = !DILocation(line: 1246, column: 11, scope: !907)
!907 = distinct !DILexicalBlock(scope: !874, file: !71, line: 1244, column: 11)
!908 = !DILocation(line: 1247, column: 7, scope: !907)
!909 = !DILocation(line: 1250, column: 8, scope: !910)
!910 = distinct !DILexicalBlock(scope: !774, file: !71, line: 1250, column: 8)
!911 = !DILocation(line: 1250, column: 15, scope: !910)
!912 = !DILocation(line: 1250, column: 44, scope: !913)
!913 = !DILexicalBlockFile(scope: !910, file: !71, discriminator: 1)
!914 = !DILocation(line: 1250, column: 19, scope: !913)
!915 = !DILocation(line: 1250, column: 8, scope: !913)
!916 = !DILocation(line: 1263, column: 7, scope: !917)
!917 = distinct !DILexicalBlock(scope: !910, file: !71, line: 1250, column: 53)
!918 = distinct !{!918, !916}
!919 = !DILocation(line: 1263, column: 16, scope: !920)
!920 = !DILexicalBlockFile(scope: !921, file: !71, discriminator: 1)
!921 = distinct !DILexicalBlock(scope: !922, file: !71, line: 1263, column: 16)
!922 = distinct !DILexicalBlock(scope: !917, file: !71, line: 1263, column: 10)
!923 = !DILocation(line: 1263, column: 39, scope: !924)
!924 = !DILexicalBlockFile(scope: !925, file: !71, discriminator: 2)
!925 = distinct !DILexicalBlock(scope: !921, file: !71, line: 1263, column: 35)
!926 = !DILocation(line: 1263, column: 52, scope: !927)
!927 = !DILexicalBlockFile(scope: !922, file: !71, discriminator: 3)
!928 = !DILocation(line: 1264, column: 11, scope: !929)
!929 = distinct !DILexicalBlock(scope: !917, file: !71, line: 1264, column: 11)
!930 = !DILocation(line: 1264, column: 11, scope: !917)
!931 = !DILocation(line: 1265, column: 10, scope: !932)
!932 = distinct !DILexicalBlock(scope: !929, file: !71, line: 1264, column: 30)
!933 = !DILocation(line: 1265, column: 22, scope: !932)
!934 = !DILocation(line: 1265, column: 28, scope: !932)
!935 = !DILocation(line: 1265, column: 41, scope: !932)
!936 = !DILocation(line: 1266, column: 7, scope: !932)
!937 = !DILocation(line: 1267, column: 10, scope: !938)
!938 = distinct !DILexicalBlock(scope: !929, file: !71, line: 1266, column: 14)
!939 = !DILocation(line: 1267, column: 22, scope: !938)
!940 = !DILocation(line: 1267, column: 27, scope: !938)
!941 = !DILocation(line: 1267, column: 40, scope: !938)
!942 = !DILocation(line: 1270, column: 11, scope: !943)
!943 = distinct !DILexicalBlock(scope: !917, file: !71, line: 1270, column: 11)
!944 = !DILocation(line: 1270, column: 23, scope: !943)
!945 = !DILocation(line: 1270, column: 28, scope: !943)
!946 = !DILocation(line: 1270, column: 11, scope: !917)
!947 = !DILocation(line: 1274, column: 7, scope: !948)
!948 = distinct !DILexicalBlock(scope: !943, file: !71, line: 1270, column: 44)
!949 = !DILocation(line: 1275, column: 14, scope: !950)
!950 = distinct !DILexicalBlock(scope: !951, file: !71, line: 1275, column: 14)
!951 = distinct !DILexicalBlock(scope: !943, file: !71, line: 1274, column: 14)
!952 = !DILocation(line: 1275, column: 26, scope: !950)
!953 = !DILocation(line: 1275, column: 31, scope: !950)
!954 = !DILocation(line: 1275, column: 48, scope: !950)
!955 = !DILocation(line: 1275, column: 51, scope: !956)
!956 = !DILexicalBlockFile(scope: !950, file: !71, discriminator: 1)
!957 = !DILocation(line: 1275, column: 63, scope: !956)
!958 = !DILocation(line: 1275, column: 69, scope: !956)
!959 = !DILocation(line: 1275, column: 74, scope: !956)
!960 = !DILocation(line: 1276, column: 14, scope: !950)
!961 = !DILocation(line: 1276, column: 26, scope: !950)
!962 = !DILocation(line: 1276, column: 31, scope: !950)
!963 = !DILocation(line: 1276, column: 45, scope: !950)
!964 = !DILocation(line: 1275, column: 14, scope: !965)
!965 = !DILexicalBlockFile(scope: !951, file: !71, discriminator: 2)
!966 = !DILocation(line: 1278, column: 29, scope: !967)
!967 = distinct !DILexicalBlock(scope: !950, file: !71, line: 1276, column: 51)
!968 = !DILocation(line: 1278, column: 41, scope: !967)
!969 = !DILocation(line: 1278, column: 13, scope: !967)
!970 = !DILocation(line: 1279, column: 37, scope: !971)
!971 = distinct !DILexicalBlock(scope: !967, file: !71, line: 1279, column: 17)
!972 = !DILocation(line: 1279, column: 48, scope: !971)
!973 = !DILocation(line: 1280, column: 57, scope: !971)
!974 = !DILocation(line: 1280, column: 69, scope: !971)
!975 = !DILocation(line: 1280, column: 47, scope: !971)
!976 = !DILocation(line: 1280, column: 37, scope: !971)
!977 = !DILocation(line: 1279, column: 18, scope: !971)
!978 = !DILocation(line: 1279, column: 17, scope: !967)
!979 = !DILocation(line: 1281, column: 16, scope: !980)
!980 = distinct !DILexicalBlock(scope: !971, file: !71, line: 1280, column: 82)
!981 = distinct !{!981, !979}
!982 = !DILocation(line: 1281, column: 47, scope: !983)
!983 = !DILexicalBlockFile(scope: !984, file: !71, discriminator: 1)
!984 = distinct !DILexicalBlock(scope: !980, file: !71, line: 1281, column: 19)
!985 = !DILocation(line: 1283, column: 13, scope: !980)
!986 = !DILocation(line: 1285, column: 52, scope: !967)
!987 = !DILocation(line: 1284, column: 38, scope: !967)
!988 = !DILocation(line: 1284, column: 13, scope: !967)
!989 = !DILocation(line: 1284, column: 25, scope: !967)
!990 = !DILocation(line: 1284, column: 36, scope: !967)
!991 = !DILocation(line: 1286, column: 33, scope: !967)
!992 = !DILocation(line: 1286, column: 44, scope: !967)
!993 = !DILocation(line: 1287, column: 53, scope: !967)
!994 = !DILocation(line: 1287, column: 65, scope: !967)
!995 = !DILocation(line: 1287, column: 43, scope: !967)
!996 = !DILocation(line: 1287, column: 33, scope: !967)
!997 = !DILocation(line: 1288, column: 33, scope: !967)
!998 = !DILocation(line: 1286, column: 13, scope: !967)
!999 = !DILocation(line: 1289, column: 13, scope: !967)
!1000 = distinct !{!1000, !999}
!1001 = !DILocation(line: 1289, column: 44, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !1003, file: !71, discriminator: 1)
!1003 = distinct !DILexicalBlock(scope: !967, file: !71, line: 1289, column: 16)
!1004 = !DILocation(line: 1290, column: 17, scope: !967)
!1005 = !DILocation(line: 1291, column: 10, scope: !967)
!1006 = !DILocation(line: 1293, column: 13, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !950, file: !71, line: 1291, column: 17)
!1008 = distinct !{!1008, !1006}
!1009 = !DILocation(line: 1293, column: 44, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !1011, file: !71, discriminator: 1)
!1011 = distinct !DILexicalBlock(scope: !1007, file: !71, line: 1293, column: 16)
!1012 = !DILocation(line: 1294, column: 17, scope: !1007)
!1013 = !DILocation(line: 1297, column: 10, scope: !951)
!1014 = !DILocation(line: 1299, column: 4, scope: !917)
!1015 = !DILocation(line: 1309, column: 7, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !910, file: !71, line: 1299, column: 11)
!1017 = distinct !{!1017, !1015}
!1018 = !DILocation(line: 1309, column: 16, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !1020, file: !71, discriminator: 1)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !71, line: 1309, column: 16)
!1021 = distinct !DILexicalBlock(scope: !1016, file: !71, line: 1309, column: 10)
!1022 = !DILocation(line: 1309, column: 39, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !1024, file: !71, discriminator: 2)
!1024 = distinct !DILexicalBlock(scope: !1020, file: !71, line: 1309, column: 35)
!1025 = !DILocation(line: 1309, column: 52, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !1021, file: !71, discriminator: 3)
!1027 = !DILocation(line: 1310, column: 8, scope: !1016)
!1028 = !DILocation(line: 1310, column: 17, scope: !1016)
!1029 = !DILocation(line: 1312, column: 12, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1016, file: !71, line: 1312, column: 11)
!1031 = !DILocation(line: 1312, column: 11, scope: !1016)
!1032 = !DILocation(line: 1313, column: 37, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1030, file: !71, line: 1312, column: 17)
!1034 = !DILocation(line: 1313, column: 49, scope: !1033)
!1035 = !DILocation(line: 1313, column: 10, scope: !1033)
!1036 = !DILocation(line: 1314, column: 7, scope: !1033)
!1037 = !DILocation(line: 1314, column: 18, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1039, file: !71, discriminator: 1)
!1039 = distinct !DILexicalBlock(scope: !1030, file: !71, line: 1314, column: 18)
!1040 = !DILocation(line: 1315, column: 10, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1039, file: !71, line: 1314, column: 37)
!1042 = !DILocation(line: 1315, column: 22, scope: !1041)
!1043 = !DILocation(line: 1315, column: 28, scope: !1041)
!1044 = !DILocation(line: 1315, column: 42, scope: !1041)
!1045 = !DILocation(line: 1316, column: 7, scope: !1041)
!1046 = !DILocation(line: 1316, column: 19, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !1048, file: !71, discriminator: 1)
!1048 = distinct !DILexicalBlock(scope: !1039, file: !71, line: 1316, column: 18)
!1049 = !DILocation(line: 1316, column: 37, scope: !1047)
!1050 = !DILocation(line: 1316, column: 40, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1048, file: !71, discriminator: 2)
!1052 = !DILocation(line: 1316, column: 52, scope: !1051)
!1053 = !DILocation(line: 1316, column: 57, scope: !1051)
!1054 = !DILocation(line: 1316, column: 71, scope: !1051)
!1055 = !DILocation(line: 1316, column: 18, scope: !1051)
!1056 = !DILocation(line: 1317, column: 10, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1048, file: !71, line: 1316, column: 76)
!1058 = !DILocation(line: 1317, column: 22, scope: !1057)
!1059 = !DILocation(line: 1317, column: 27, scope: !1057)
!1060 = !DILocation(line: 1317, column: 41, scope: !1057)
!1061 = !DILocation(line: 1318, column: 14, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1057, file: !71, line: 1318, column: 14)
!1063 = !DILocation(line: 1318, column: 26, scope: !1062)
!1064 = !DILocation(line: 1318, column: 31, scope: !1062)
!1065 = !DILocation(line: 1318, column: 48, scope: !1062)
!1066 = !DILocation(line: 1318, column: 51, scope: !1067)
!1067 = !DILexicalBlockFile(scope: !1062, file: !71, discriminator: 1)
!1068 = !DILocation(line: 1318, column: 63, scope: !1067)
!1069 = !DILocation(line: 1318, column: 69, scope: !1067)
!1070 = !DILocation(line: 1318, column: 14, scope: !1067)
!1071 = !DILocation(line: 1320, column: 29, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1062, file: !71, line: 1318, column: 75)
!1073 = !DILocation(line: 1320, column: 41, scope: !1072)
!1074 = !DILocation(line: 1320, column: 13, scope: !1072)
!1075 = !DILocation(line: 1321, column: 37, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1072, file: !71, line: 1321, column: 17)
!1077 = !DILocation(line: 1321, column: 48, scope: !1076)
!1078 = !DILocation(line: 1322, column: 57, scope: !1076)
!1079 = !DILocation(line: 1322, column: 69, scope: !1076)
!1080 = !DILocation(line: 1322, column: 47, scope: !1076)
!1081 = !DILocation(line: 1322, column: 37, scope: !1076)
!1082 = !DILocation(line: 1321, column: 18, scope: !1076)
!1083 = !DILocation(line: 1321, column: 17, scope: !1072)
!1084 = !DILocation(line: 1323, column: 16, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1076, file: !71, line: 1322, column: 82)
!1086 = distinct !{!1086, !1084}
!1087 = !DILocation(line: 1323, column: 47, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1089, file: !71, discriminator: 1)
!1089 = distinct !DILexicalBlock(scope: !1085, file: !71, line: 1323, column: 19)
!1090 = !DILocation(line: 1325, column: 13, scope: !1085)
!1091 = !DILocation(line: 1326, column: 59, scope: !1072)
!1092 = !DILocation(line: 1326, column: 71, scope: !1072)
!1093 = !DILocation(line: 1326, column: 52, scope: !1072)
!1094 = !DILocation(line: 1328, column: 52, scope: !1072)
!1095 = !DILocation(line: 1326, column: 38, scope: !1072)
!1096 = !DILocation(line: 1326, column: 13, scope: !1072)
!1097 = !DILocation(line: 1326, column: 25, scope: !1072)
!1098 = !DILocation(line: 1326, column: 36, scope: !1072)
!1099 = !DILocation(line: 1329, column: 33, scope: !1072)
!1100 = !DILocation(line: 1329, column: 44, scope: !1072)
!1101 = !DILocation(line: 1330, column: 53, scope: !1072)
!1102 = !DILocation(line: 1330, column: 65, scope: !1072)
!1103 = !DILocation(line: 1330, column: 43, scope: !1072)
!1104 = !DILocation(line: 1330, column: 33, scope: !1072)
!1105 = !DILocation(line: 1331, column: 33, scope: !1072)
!1106 = !DILocation(line: 1329, column: 13, scope: !1072)
!1107 = !DILocation(line: 1332, column: 13, scope: !1072)
!1108 = distinct !{!1108, !1107}
!1109 = !DILocation(line: 1332, column: 44, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !1111, file: !71, discriminator: 1)
!1111 = distinct !DILexicalBlock(scope: !1072, file: !71, line: 1332, column: 16)
!1112 = !DILocation(line: 1334, column: 10, scope: !1072)
!1113 = !DILocation(line: 1335, column: 7, scope: !1057)
!1114 = !DILocation(line: 1337, column: 7, scope: !1016)
!1115 = !DILocation(line: 1338, column: 27, scope: !1016)
!1116 = !DILocation(line: 1338, column: 8, scope: !1016)
!1117 = !DILocation(line: 1338, column: 35, scope: !1016)
!1118 = !DILocation(line: 1338, column: 47, scope: !1016)
!1119 = !DILocation(line: 1338, column: 7, scope: !1016)
!1120 = !DILocation(line: 1339, column: 11, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1016, file: !71, line: 1339, column: 11)
!1122 = !DILocation(line: 1339, column: 11, scope: !1016)
!1123 = !DILocation(line: 1340, column: 32, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1121, file: !71, line: 1339, column: 19)
!1125 = !DILocation(line: 1340, column: 10, scope: !1124)
!1126 = !DILocation(line: 1341, column: 7, scope: !1124)
!1127 = !DILocation(line: 1357, column: 11, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1016, file: !71, line: 1357, column: 11)
!1129 = !DILocation(line: 1357, column: 11, scope: !1016)
!1130 = !DILocation(line: 1358, column: 10, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1128, file: !71, line: 1357, column: 29)
!1132 = !DILocation(line: 1359, column: 7, scope: !1131)
!1133 = !DILocation(line: 1360, column: 10, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1128, file: !71, line: 1359, column: 14)
!1135 = !DILocation(line: 1369, column: 8, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !774, file: !71, line: 1369, column: 8)
!1137 = !DILocation(line: 1369, column: 8, scope: !774)
!1138 = !DILocalVariable(name: "foundEntry", scope: !1139, file: !71, line: 1370, type: !85)
!1139 = distinct !DILexicalBlock(scope: !1136, file: !71, line: 1369, column: 26)
!1140 = !DILocation(line: 1370, column: 21, scope: !1139)
!1141 = !DILocation(line: 1372, column: 14, scope: !1139)
!1142 = !DILocation(line: 1373, column: 14, scope: !1139)
!1143 = !DILocation(line: 1375, column: 40, scope: !1139)
!1144 = !DILocation(line: 1375, column: 51, scope: !1139)
!1145 = !DILocation(line: 1376, column: 60, scope: !1139)
!1146 = !DILocation(line: 1376, column: 40, scope: !1139)
!1147 = !DILocation(line: 1375, column: 20, scope: !1139)
!1148 = !DILocation(line: 1375, column: 18, scope: !1139)
!1149 = !DILocation(line: 1377, column: 11, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1139, file: !71, line: 1377, column: 11)
!1151 = !DILocation(line: 1377, column: 22, scope: !1150)
!1152 = !DILocation(line: 1377, column: 35, scope: !1153)
!1153 = !DILexicalBlockFile(scope: !1150, file: !71, discriminator: 1)
!1154 = !DILocation(line: 1377, column: 47, scope: !1153)
!1155 = !DILocation(line: 1377, column: 53, scope: !1153)
!1156 = !DILocation(line: 1377, column: 33, scope: !1153)
!1157 = !DILocation(line: 1377, column: 57, scope: !1153)
!1158 = !DILocation(line: 1377, column: 11, scope: !1153)
!1159 = !DILocation(line: 1378, column: 19, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1150, file: !71, line: 1377, column: 65)
!1161 = !DILocation(line: 1378, column: 31, scope: !1160)
!1162 = !DILocation(line: 1378, column: 37, scope: !1160)
!1163 = !DILocation(line: 1378, column: 17, scope: !1160)
!1164 = !DILocation(line: 1379, column: 23, scope: !1160)
!1165 = !DILocation(line: 1379, column: 35, scope: !1160)
!1166 = !DILocation(line: 1379, column: 41, scope: !1160)
!1167 = !DILocation(line: 1379, column: 21, scope: !1160)
!1168 = !DILocation(line: 1380, column: 15, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1160, file: !71, line: 1380, column: 14)
!1170 = !DILocation(line: 1380, column: 22, scope: !1169)
!1171 = !DILocation(line: 1380, column: 50, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1169, file: !71, discriminator: 1)
!1173 = !DILocation(line: 1380, column: 25, scope: !1172)
!1174 = !DILocation(line: 1380, column: 14, scope: !1172)
!1175 = !DILocation(line: 1381, column: 13, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1169, file: !71, line: 1380, column: 59)
!1177 = distinct !{!1177, !1175}
!1178 = !DILocation(line: 1381, column: 47, scope: !1179)
!1179 = !DILexicalBlockFile(scope: !1180, file: !71, discriminator: 1)
!1180 = distinct !DILexicalBlock(scope: !1176, file: !71, line: 1381, column: 16)
!1181 = !DILocation(line: 1382, column: 19, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1176, file: !71, line: 1382, column: 17)
!1183 = !DILocation(line: 1382, column: 31, scope: !1182)
!1184 = !DILocation(line: 1382, column: 37, scope: !1182)
!1185 = !DILocation(line: 1382, column: 43, scope: !1182)
!1186 = !DILocation(line: 1382, column: 17, scope: !1176)
!1187 = !DILocation(line: 1383, column: 43, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1182, file: !71, line: 1382, column: 52)
!1189 = !DILocation(line: 1383, column: 16, scope: !1188)
!1190 = !DILocation(line: 1384, column: 20, scope: !1188)
!1191 = !DILocation(line: 1385, column: 13, scope: !1188)
!1192 = !DILocation(line: 1386, column: 16, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1182, file: !71, line: 1385, column: 20)
!1194 = !DILocation(line: 1386, column: 28, scope: !1193)
!1195 = !DILocation(line: 1386, column: 34, scope: !1193)
!1196 = !DILocation(line: 1386, column: 48, scope: !1193)
!1197 = !DILocation(line: 1388, column: 13, scope: !1176)
!1198 = !DILocation(line: 1389, column: 13, scope: !1176)
!1199 = !DILocation(line: 1389, column: 20, scope: !1176)
!1200 = !DILocation(line: 1390, column: 17, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1176, file: !71, line: 1390, column: 17)
!1202 = !DILocation(line: 1390, column: 17, scope: !1176)
!1203 = !DILocation(line: 1391, column: 38, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1201, file: !71, line: 1390, column: 25)
!1205 = !DILocation(line: 1391, column: 16, scope: !1204)
!1206 = !DILocation(line: 1392, column: 13, scope: !1204)
!1207 = !DILocation(line: 1403, column: 13, scope: !1176)
!1208 = !DILocation(line: 1406, column: 13, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1169, file: !71, line: 1405, column: 17)
!1210 = distinct !{!1210, !1208}
!1211 = !DILocation(line: 1406, column: 47, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !1213, file: !71, discriminator: 1)
!1213 = distinct !DILexicalBlock(scope: !1209, file: !71, line: 1406, column: 16)
!1214 = !DILocation(line: 1407, column: 13, scope: !1209)
!1215 = !DILocation(line: 1407, column: 25, scope: !1209)
!1216 = !DILocation(line: 1407, column: 31, scope: !1209)
!1217 = !DILocation(line: 1407, column: 44, scope: !1209)
!1218 = !DILocation(line: 1408, column: 14, scope: !1209)
!1219 = !DILocation(line: 1408, column: 23, scope: !1209)
!1220 = !DILocation(line: 1413, column: 7, scope: !1160)
!1221 = !DILocation(line: 1414, column: 4, scope: !1139)
!1222 = !DILocation(line: 1369, column: 8, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !1136, file: !71, discriminator: 1)
!1224 = !DILocation(line: 1417, column: 9, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !774, file: !71, line: 1417, column: 8)
!1226 = !DILocation(line: 1417, column: 8, scope: !774)
!1227 = !DILocation(line: 1418, column: 7, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1225, file: !71, line: 1417, column: 22)
!1229 = !DILocation(line: 1419, column: 4, scope: !1228)
!1230 = !DILocation(line: 1420, column: 11, scope: !774)
!1231 = !DILocation(line: 1420, column: 4, scope: !774)
!1232 = !DILocation(line: 1424, column: 8, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !774, file: !71, line: 1424, column: 8)
!1234 = !DILocation(line: 1424, column: 8, scope: !774)
!1235 = !DILocation(line: 1425, column: 7, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1233, file: !71, line: 1424, column: 21)
!1237 = !DILocation(line: 1426, column: 4, scope: !1236)
!1238 = !DILocation(line: 1427, column: 11, scope: !774)
!1239 = !DILocation(line: 1427, column: 4, scope: !774)
!1240 = !DILocation(line: 1429, column: 1, scope: !774)
!1241 = distinct !DISubprogram(name: "PollGtkCallbackRemoveEntry", scope: !71, file: !71, line: 748, type: !1242, isLocal: true, isDefinition: true, scopeLine: 750, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null, !85, !329}
!1244 = !DILocalVariable(name: "foundEntry", arg: 1, scope: !1241, file: !71, line: 748, type: !85)
!1245 = !DILocation(line: 748, column: 42, scope: !1241)
!1246 = !DILocalVariable(name: "removeWrite", arg: 2, scope: !1241, file: !71, line: 749, type: !329)
!1247 = !DILocation(line: 749, column: 33, scope: !1241)
!1248 = !DILocalVariable(name: "poll", scope: !1241, file: !71, line: 751, type: !69)
!1249 = !DILocation(line: 751, column: 10, scope: !1241)
!1250 = !DILocation(line: 751, column: 17, scope: !1241)
!1251 = !DILocation(line: 754, column: 8, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1241, file: !71, line: 754, column: 8)
!1253 = !DILocation(line: 754, column: 20, scope: !1252)
!1254 = !DILocation(line: 754, column: 25, scope: !1252)
!1255 = !DILocation(line: 754, column: 8, scope: !1241)
!1256 = !DILocalVariable(name: "newEntry", scope: !1257, file: !71, line: 755, type: !85)
!1257 = distinct !DILexicalBlock(scope: !1252, file: !71, line: 754, column: 41)
!1258 = !DILocation(line: 755, column: 21, scope: !1257)
!1259 = !DILocalVariable(name: "key", scope: !1257, file: !71, line: 756, type: !307)
!1260 = !DILocation(line: 756, column: 16, scope: !1257)
!1261 = !DILocation(line: 758, column: 11, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1257, file: !71, line: 758, column: 11)
!1263 = !DILocation(line: 758, column: 11, scope: !1257)
!1264 = !DILocation(line: 759, column: 14, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !71, line: 759, column: 14)
!1266 = distinct !DILexicalBlock(scope: !1262, file: !71, line: 758, column: 24)
!1267 = !DILocation(line: 759, column: 26, scope: !1265)
!1268 = !DILocation(line: 759, column: 31, scope: !1265)
!1269 = !DILocation(line: 759, column: 14, scope: !1266)
!1270 = !DILocation(line: 760, column: 42, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1265, file: !71, line: 759, column: 38)
!1272 = !DILocation(line: 760, column: 25, scope: !1271)
!1273 = !DILocation(line: 760, column: 22, scope: !1271)
!1274 = !DILocation(line: 761, column: 13, scope: !1271)
!1275 = !DILocation(line: 761, column: 23, scope: !1271)
!1276 = !DILocation(line: 761, column: 30, scope: !1271)
!1277 = !DILocation(line: 761, column: 42, scope: !1271)
!1278 = !DILocation(line: 762, column: 13, scope: !1271)
!1279 = distinct !{!1279, !1278}
!1280 = !DILocation(line: 762, column: 47, scope: !1281)
!1281 = !DILexicalBlockFile(scope: !1282, file: !71, discriminator: 1)
!1282 = distinct !DILexicalBlock(scope: !1271, file: !71, line: 762, column: 16)
!1283 = !DILocation(line: 763, column: 10, scope: !1271)
!1284 = !DILocation(line: 764, column: 13, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1265, file: !71, line: 763, column: 17)
!1286 = distinct !{!1286, !1284}
!1287 = !DILocation(line: 764, column: 47, scope: !1288)
!1288 = !DILexicalBlockFile(scope: !1289, file: !71, discriminator: 1)
!1289 = distinct !DILexicalBlock(scope: !1285, file: !71, line: 764, column: 16)
!1290 = !DILocation(line: 766, column: 7, scope: !1266)
!1291 = !DILocation(line: 767, column: 14, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !71, line: 767, column: 14)
!1293 = distinct !DILexicalBlock(scope: !1262, file: !71, line: 766, column: 14)
!1294 = !DILocation(line: 767, column: 26, scope: !1292)
!1295 = !DILocation(line: 767, column: 32, scope: !1292)
!1296 = !DILocation(line: 767, column: 14, scope: !1293)
!1297 = !DILocation(line: 768, column: 42, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1292, file: !71, line: 767, column: 39)
!1299 = !DILocation(line: 768, column: 25, scope: !1298)
!1300 = !DILocation(line: 768, column: 22, scope: !1298)
!1301 = !DILocation(line: 769, column: 13, scope: !1298)
!1302 = !DILocation(line: 769, column: 23, scope: !1298)
!1303 = !DILocation(line: 769, column: 31, scope: !1298)
!1304 = !DILocation(line: 769, column: 43, scope: !1298)
!1305 = !DILocation(line: 770, column: 13, scope: !1298)
!1306 = distinct !{!1306, !1305}
!1307 = !DILocation(line: 770, column: 44, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1309, file: !71, discriminator: 1)
!1309 = distinct !DILexicalBlock(scope: !1298, file: !71, line: 770, column: 16)
!1310 = !DILocation(line: 772, column: 10, scope: !1298)
!1311 = !DILocation(line: 773, column: 13, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1292, file: !71, line: 772, column: 17)
!1313 = distinct !{!1313, !1311}
!1314 = !DILocation(line: 773, column: 44, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !1316, file: !71, discriminator: 1)
!1316 = distinct !DILexicalBlock(scope: !1312, file: !71, line: 773, column: 16)
!1317 = !DILocation(line: 777, column: 13, scope: !1257)
!1318 = !DILocation(line: 777, column: 25, scope: !1257)
!1319 = !DILocation(line: 777, column: 11, scope: !1257)
!1320 = !DILocation(line: 778, column: 27, scope: !1257)
!1321 = !DILocation(line: 778, column: 33, scope: !1257)
!1322 = !DILocation(line: 778, column: 56, scope: !1257)
!1323 = !DILocation(line: 778, column: 46, scope: !1257)
!1324 = !DILocation(line: 778, column: 7, scope: !1257)
!1325 = !DILocation(line: 784, column: 11, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1257, file: !71, line: 784, column: 11)
!1327 = !DILocation(line: 784, column: 11, scope: !1257)
!1328 = !DILocation(line: 785, column: 28, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1326, file: !71, line: 784, column: 21)
!1330 = !DILocation(line: 785, column: 10, scope: !1329)
!1331 = !DILocation(line: 785, column: 20, scope: !1329)
!1332 = !DILocation(line: 785, column: 26, scope: !1329)
!1333 = !DILocation(line: 786, column: 10, scope: !1329)
!1334 = !DILocation(line: 786, column: 20, scope: !1329)
!1335 = !DILocation(line: 786, column: 25, scope: !1329)
!1336 = !DILocation(line: 787, column: 32, scope: !1329)
!1337 = !DILocation(line: 787, column: 10, scope: !1329)
!1338 = !DILocation(line: 788, column: 7, scope: !1329)
!1339 = !DILocation(line: 789, column: 4, scope: !1257)
!1340 = !DILocation(line: 792, column: 7, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1252, file: !71, line: 789, column: 11)
!1342 = distinct !{!1342, !1340}
!1343 = !DILocation(line: 792, column: 38, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1345, file: !71, discriminator: 1)
!1345 = distinct !DILexicalBlock(scope: !1341, file: !71, line: 792, column: 10)
!1346 = !DILocation(line: 793, column: 32, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1341, file: !71, line: 793, column: 11)
!1348 = !DILocation(line: 793, column: 38, scope: !1347)
!1349 = !DILocation(line: 794, column: 52, scope: !1347)
!1350 = !DILocation(line: 794, column: 64, scope: !1347)
!1351 = !DILocation(line: 794, column: 42, scope: !1347)
!1352 = !DILocation(line: 794, column: 32, scope: !1347)
!1353 = !DILocation(line: 793, column: 12, scope: !1347)
!1354 = !DILocation(line: 793, column: 11, scope: !1341)
!1355 = !DILocation(line: 796, column: 7, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1347, file: !71, line: 794, column: 77)
!1357 = !DILocation(line: 798, column: 1, scope: !1241)
!1358 = distinct !DISubprogram(name: "PollGtkCallbackRemoveInt", scope: !71, file: !71, line: 818, type: !1359, isLocal: true, isDefinition: true, scopeLine: 825, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!329, !102, !94, !96, !65, !329, !119, !345}
!1361 = !DILocalVariable(name: "classSet", arg: 1, scope: !1358, file: !71, line: 818, type: !102)
!1362 = !DILocation(line: 818, column: 39, scope: !1358)
!1363 = !DILocalVariable(name: "flags", arg: 2, scope: !1358, file: !71, line: 819, type: !94)
!1364 = !DILocation(line: 819, column: 30, scope: !1358)
!1365 = !DILocalVariable(name: "f", arg: 3, scope: !1358, file: !71, line: 820, type: !96)
!1366 = !DILocation(line: 820, column: 41, scope: !1358)
!1367 = !DILocalVariable(name: "clientData", arg: 4, scope: !1358, file: !71, line: 821, type: !65)
!1368 = !DILocation(line: 821, column: 32, scope: !1358)
!1369 = !DILocalVariable(name: "matchAnyClientData", arg: 5, scope: !1358, file: !71, line: 822, type: !329)
!1370 = !DILocation(line: 822, column: 31, scope: !1358)
!1371 = !DILocalVariable(name: "type", arg: 6, scope: !1358, file: !71, line: 823, type: !119)
!1372 = !DILocation(line: 823, column: 40, scope: !1358)
!1373 = !DILocalVariable(name: "foundClientData", arg: 7, scope: !1358, file: !71, line: 824, type: !345)
!1374 = !DILocation(line: 824, column: 33, scope: !1358)
!1375 = !DILocalVariable(name: "poll", scope: !1358, file: !71, line: 826, type: !69)
!1376 = !DILocation(line: 826, column: 10, scope: !1358)
!1377 = !DILocation(line: 826, column: 17, scope: !1358)
!1378 = !DILocalVariable(name: "searchTable", scope: !1358, file: !71, line: 827, type: !80)
!1379 = !DILocation(line: 827, column: 16, scope: !1358)
!1380 = !DILocalVariable(name: "searchEntry", scope: !1358, file: !71, line: 828, type: !1381)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "PollGtkFindEntryData", file: !71, line: 110, baseType: !1382)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 103, size: 320, align: 64, elements: !1383)
!1383 = !{!1384, !1385, !1386, !1387, !1388, !1389}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1382, file: !71, line: 104, baseType: !94, size: 32, align: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1382, file: !71, line: 105, baseType: !96, size: 64, align: 64, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !1382, file: !71, line: 106, baseType: !65, size: 64, align: 64, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "classSet", scope: !1382, file: !71, line: 107, baseType: !102, size: 64, align: 64, offset: 192)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1382, file: !71, line: 108, baseType: !119, size: 32, align: 32, offset: 256)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "matchAnyClientData", scope: !1382, file: !71, line: 109, baseType: !329, size: 8, align: 8, offset: 288)
!1390 = !DILocation(line: 828, column: 25, scope: !1358)
!1391 = !DILocalVariable(name: "foundEntry", scope: !1358, file: !71, line: 829, type: !85)
!1392 = !DILocation(line: 829, column: 18, scope: !1358)
!1393 = !DILocation(line: 836, column: 16, scope: !1358)
!1394 = !DILocation(line: 836, column: 27, scope: !1358)
!1395 = !DILocation(line: 837, column: 24, scope: !1358)
!1396 = !DILocation(line: 837, column: 16, scope: !1358)
!1397 = !DILocation(line: 837, column: 22, scope: !1358)
!1398 = !DILocation(line: 838, column: 21, scope: !1358)
!1399 = !DILocation(line: 838, column: 16, scope: !1358)
!1400 = !DILocation(line: 838, column: 19, scope: !1358)
!1401 = !DILocation(line: 839, column: 29, scope: !1358)
!1402 = !DILocation(line: 839, column: 16, scope: !1358)
!1403 = !DILocation(line: 839, column: 27, scope: !1358)
!1404 = !DILocation(line: 840, column: 23, scope: !1358)
!1405 = !DILocation(line: 840, column: 16, scope: !1358)
!1406 = !DILocation(line: 840, column: 21, scope: !1358)
!1407 = !DILocation(line: 841, column: 37, scope: !1358)
!1408 = !DILocation(line: 841, column: 16, scope: !1358)
!1409 = !DILocation(line: 841, column: 35, scope: !1358)
!1410 = !DILocation(line: 843, column: 12, scope: !1358)
!1411 = !DILocation(line: 843, column: 4, scope: !1358)
!1412 = !DILocation(line: 846, column: 21, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1358, file: !71, line: 843, column: 18)
!1414 = !DILocation(line: 846, column: 27, scope: !1413)
!1415 = !DILocation(line: 846, column: 19, scope: !1413)
!1416 = !DILocation(line: 847, column: 7, scope: !1413)
!1417 = !DILocation(line: 849, column: 21, scope: !1413)
!1418 = !DILocation(line: 849, column: 27, scope: !1413)
!1419 = !DILocation(line: 849, column: 19, scope: !1413)
!1420 = !DILocation(line: 850, column: 7, scope: !1413)
!1421 = !DILocation(line: 850, column: 7, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1413, file: !71, discriminator: 1)
!1423 = !DILocation(line: 854, column: 7, scope: !1413)
!1424 = !DILocation(line: 857, column: 4, scope: !1358)
!1425 = !DILocation(line: 859, column: 8, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1358, file: !71, line: 859, column: 8)
!1427 = !DILocation(line: 859, column: 14, scope: !1426)
!1428 = !DILocation(line: 859, column: 8, scope: !1358)
!1429 = !DILocation(line: 860, column: 38, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1426, file: !71, line: 859, column: 22)
!1431 = !DILocation(line: 862, column: 38, scope: !1430)
!1432 = !DILocation(line: 860, column: 20, scope: !1430)
!1433 = !DILocation(line: 860, column: 18, scope: !1430)
!1434 = !DILocation(line: 863, column: 4, scope: !1430)
!1435 = !DILocation(line: 864, column: 38, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1426, file: !71, line: 863, column: 11)
!1437 = !DILocation(line: 866, column: 38, scope: !1436)
!1438 = !DILocation(line: 864, column: 20, scope: !1436)
!1439 = !DILocation(line: 864, column: 18, scope: !1436)
!1440 = !DILocation(line: 868, column: 8, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1358, file: !71, line: 868, column: 8)
!1442 = !DILocation(line: 868, column: 8, scope: !1358)
!1443 = !DILocation(line: 869, column: 11, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !71, line: 869, column: 11)
!1445 = distinct !DILexicalBlock(scope: !1441, file: !71, line: 868, column: 20)
!1446 = !DILocation(line: 869, column: 17, scope: !1444)
!1447 = !DILocation(line: 869, column: 11, scope: !1445)
!1448 = !DILocation(line: 870, column: 29, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1444, file: !71, line: 869, column: 25)
!1450 = !DILocation(line: 870, column: 41, scope: !1449)
!1451 = !DILocation(line: 870, column: 47, scope: !1449)
!1452 = !DILocation(line: 870, column: 11, scope: !1449)
!1453 = !DILocation(line: 870, column: 27, scope: !1449)
!1454 = !DILocation(line: 871, column: 37, scope: !1449)
!1455 = !DILocation(line: 871, column: 10, scope: !1449)
!1456 = !DILocation(line: 872, column: 7, scope: !1449)
!1457 = !DILocation(line: 873, column: 29, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1444, file: !71, line: 872, column: 14)
!1459 = !DILocation(line: 873, column: 41, scope: !1458)
!1460 = !DILocation(line: 873, column: 46, scope: !1458)
!1461 = !DILocation(line: 873, column: 11, scope: !1458)
!1462 = !DILocation(line: 873, column: 27, scope: !1458)
!1463 = !DILocation(line: 874, column: 37, scope: !1458)
!1464 = !DILocation(line: 874, column: 10, scope: !1458)
!1465 = !DILocation(line: 876, column: 4, scope: !1445)
!1466 = !DILocation(line: 881, column: 4, scope: !1358)
!1467 = !DILocation(line: 882, column: 11, scope: !1358)
!1468 = !DILocation(line: 882, column: 22, scope: !1358)
!1469 = !DILocation(line: 882, column: 4, scope: !1358)
!1470 = distinct !DISubprogram(name: "PollGtkFindWritePredicate", scope: !71, file: !71, line: 407, type: !1471, isLocal: true, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!205, !63, !63, !63}
!1473 = !DILocalVariable(name: "key", arg: 1, scope: !1470, file: !71, line: 407, type: !63)
!1474 = !DILocation(line: 407, column: 36, scope: !1470)
!1475 = !DILocalVariable(name: "value", arg: 2, scope: !1470, file: !71, line: 408, type: !63)
!1476 = !DILocation(line: 408, column: 36, scope: !1470)
!1477 = !DILocalVariable(name: "data", arg: 3, scope: !1470, file: !71, line: 409, type: !63)
!1478 = !DILocation(line: 409, column: 36, scope: !1470)
!1479 = !DILocalVariable(name: "current", scope: !1470, file: !71, line: 411, type: !1480)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64, align: 64)
!1481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!1482 = !DILocation(line: 411, column: 24, scope: !1470)
!1483 = !DILocation(line: 411, column: 34, scope: !1470)
!1484 = !DILocalVariable(name: "search", scope: !1470, file: !71, line: 412, type: !1485)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64, align: 64)
!1486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1381)
!1487 = !DILocation(line: 412, column: 32, scope: !1470)
!1488 = !DILocation(line: 412, column: 41, scope: !1470)
!1489 = !DILocation(line: 415, column: 11, scope: !1470)
!1490 = !DILocation(line: 415, column: 20, scope: !1470)
!1491 = !DILocation(line: 415, column: 28, scope: !1470)
!1492 = !DILocation(line: 415, column: 36, scope: !1470)
!1493 = !DILocation(line: 415, column: 25, scope: !1470)
!1494 = !DILocation(line: 415, column: 41, scope: !1470)
!1495 = !DILocation(line: 416, column: 36, scope: !1470)
!1496 = !DILocation(line: 416, column: 45, scope: !1470)
!1497 = !DILocation(line: 416, column: 52, scope: !1470)
!1498 = !DILocation(line: 416, column: 11, scope: !1470)
!1499 = !DILocation(line: 415, column: 41, scope: !1500)
!1500 = !DILexicalBlockFile(scope: !1470, file: !71, discriminator: 1)
!1501 = !DILocation(line: 415, column: 41, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1470, file: !71, discriminator: 2)
!1503 = !DILocation(line: 415, column: 4, scope: !1502)
!1504 = distinct !DISubprogram(name: "PollGtkFindReadPredicate", scope: !71, file: !71, line: 376, type: !1471, isLocal: true, isDefinition: true, scopeLine: 379, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!1505 = !DILocalVariable(name: "key", arg: 1, scope: !1504, file: !71, line: 376, type: !63)
!1506 = !DILocation(line: 376, column: 35, scope: !1504)
!1507 = !DILocalVariable(name: "value", arg: 2, scope: !1504, file: !71, line: 377, type: !63)
!1508 = !DILocation(line: 377, column: 35, scope: !1504)
!1509 = !DILocalVariable(name: "data", arg: 3, scope: !1504, file: !71, line: 378, type: !63)
!1510 = !DILocation(line: 378, column: 35, scope: !1504)
!1511 = !DILocalVariable(name: "current", scope: !1504, file: !71, line: 380, type: !1480)
!1512 = !DILocation(line: 380, column: 24, scope: !1504)
!1513 = !DILocation(line: 380, column: 34, scope: !1504)
!1514 = !DILocalVariable(name: "search", scope: !1504, file: !71, line: 381, type: !1485)
!1515 = !DILocation(line: 381, column: 32, scope: !1504)
!1516 = !DILocation(line: 381, column: 41, scope: !1504)
!1517 = !DILocation(line: 384, column: 11, scope: !1504)
!1518 = !DILocation(line: 384, column: 20, scope: !1504)
!1519 = !DILocation(line: 384, column: 28, scope: !1504)
!1520 = !DILocation(line: 384, column: 36, scope: !1504)
!1521 = !DILocation(line: 384, column: 25, scope: !1504)
!1522 = !DILocation(line: 384, column: 41, scope: !1504)
!1523 = !DILocation(line: 385, column: 36, scope: !1504)
!1524 = !DILocation(line: 385, column: 45, scope: !1504)
!1525 = !DILocation(line: 385, column: 51, scope: !1504)
!1526 = !DILocation(line: 385, column: 11, scope: !1504)
!1527 = !DILocation(line: 384, column: 41, scope: !1528)
!1528 = !DILexicalBlockFile(scope: !1504, file: !71, discriminator: 1)
!1529 = !DILocation(line: 384, column: 41, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !1504, file: !71, discriminator: 2)
!1531 = !DILocation(line: 384, column: 4, scope: !1530)
!1532 = distinct !DISubprogram(name: "PollGtkEntryInfoMatches", scope: !71, file: !71, line: 349, type: !1533, isLocal: true, isDefinition: true, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!205, !1535, !1485}
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64, align: 64)
!1536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!1537 = !DILocalVariable(name: "entry", arg: 1, scope: !1532, file: !71, line: 349, type: !1535)
!1538 = !DILocation(line: 349, column: 46, scope: !1532)
!1539 = !DILocalVariable(name: "search", arg: 2, scope: !1532, file: !71, line: 350, type: !1485)
!1540 = !DILocation(line: 350, column: 53, scope: !1532)
!1541 = !DILocation(line: 352, column: 31, scope: !1532)
!1542 = !DILocation(line: 352, column: 38, scope: !1532)
!1543 = !DILocation(line: 352, column: 48, scope: !1532)
!1544 = !DILocation(line: 352, column: 56, scope: !1532)
!1545 = !DILocation(line: 352, column: 11, scope: !1532)
!1546 = !DILocation(line: 352, column: 66, scope: !1532)
!1547 = !DILocation(line: 353, column: 11, scope: !1532)
!1548 = !DILocation(line: 353, column: 18, scope: !1532)
!1549 = !DILocation(line: 353, column: 24, scope: !1532)
!1550 = !DILocation(line: 353, column: 32, scope: !1532)
!1551 = !DILocation(line: 353, column: 21, scope: !1532)
!1552 = !DILocation(line: 353, column: 35, scope: !1532)
!1553 = !DILocation(line: 353, column: 38, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !1532, file: !71, discriminator: 1)
!1555 = !DILocation(line: 353, column: 45, scope: !1554)
!1556 = !DILocation(line: 353, column: 54, scope: !1554)
!1557 = !DILocation(line: 353, column: 62, scope: !1554)
!1558 = !DILocation(line: 353, column: 51, scope: !1554)
!1559 = !DILocation(line: 353, column: 68, scope: !1554)
!1560 = !DILocation(line: 354, column: 12, scope: !1532)
!1561 = !DILocation(line: 354, column: 20, scope: !1532)
!1562 = !DILocation(line: 354, column: 39, scope: !1532)
!1563 = !DILocation(line: 354, column: 42, scope: !1554)
!1564 = !DILocation(line: 354, column: 49, scope: !1554)
!1565 = !DILocation(line: 354, column: 63, scope: !1554)
!1566 = !DILocation(line: 354, column: 71, scope: !1554)
!1567 = !DILocation(line: 354, column: 60, scope: !1554)
!1568 = !DILocation(line: 354, column: 39, scope: !1554)
!1569 = !DILocation(line: 353, column: 68, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1532, file: !71, discriminator: 2)
!1571 = !DILocation(line: 352, column: 4, scope: !1554)
!1572 = distinct !DISubprogram(name: "PollClassSet_Equals", scope: !320, file: !320, line: 93, type: !1573, isLocal: true, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !315)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!329, !102, !102}
!1575 = !DILocalVariable(name: "lhs", arg: 1, scope: !1572, file: !320, line: 93, type: !102)
!1576 = !DILocation(line: 93, column: 34, scope: !1572)
!1577 = !DILocalVariable(name: "rhs", arg: 2, scope: !1572, file: !320, line: 93, type: !102)
!1578 = !DILocation(line: 93, column: 52, scope: !1572)
!1579 = !DILocation(line: 95, column: 15, scope: !1572)
!1580 = !DILocation(line: 95, column: 27, scope: !1572)
!1581 = !DILocation(line: 95, column: 20, scope: !1572)
!1582 = !DILocation(line: 95, column: 11, scope: !1572)
!1583 = !DILocation(line: 95, column: 4, scope: !1572)
