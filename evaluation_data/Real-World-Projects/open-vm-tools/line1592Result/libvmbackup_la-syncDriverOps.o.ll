; ModuleID = './libvmbackup_la-syncDriverOps.o.i'
source_filename = "./libvmbackup_la-syncDriverOps.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VmBackupSyncProvider = type { void (%struct.ToolsAppCtx*, i8*)*, i8 (%struct.VmBackupState*, i8*)*, void (%struct.VmBackupSyncProvider*)*, i8* }
%struct.ToolsAppCtx = type { i32, i8*, i32, i32, %struct._GMainLoop*, %struct._RpcChannel*, %struct._GKeyFile*, i32, i32, i8**, i8* }
%struct._GMainLoop = type opaque
%struct._RpcChannel = type opaque
%struct._GKeyFile = type opaque
%struct.VmBackupState = type { %struct.ToolsAppCtx*, %struct.VmBackupOp*, i8*, %struct.GStaticMutex, i8*, i8*, i32, %struct._GSource*, %struct._GSource*, %struct._GSource*, i8 (%struct.VmBackupState*)*, i8, i8, i8, i8, i8*, i8, i8, i8, i8, i8*, i32, i8*, i8*, i8*, i64, i8*, i32, i32, %struct.VmBackupSyncProvider*, %struct.VmBackupSyncCompleter*, i32, i32, i8, i8, i8 }
%struct.VmBackupOp = type { i32 (%struct.VmBackupOp*)*, void (%struct.VmBackupOp*)*, void (%struct.VmBackupOp*)* }
%struct.GStaticMutex = type { %union._GMutex*, %union.pthread_mutex_t }
%union._GMutex = type { i8* }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct.VmBackupSyncCompleter = type { {}*, {}*, void (%struct.VmBackupSyncCompleter*)*, i8* }
%struct.VmBackupDriverOp = type { %struct.VmBackupOp, i8*, i8, i8, %struct.SyncHandle**, %struct.SyncManifest* }
%struct.SyncHandle = type opaque
%struct.SyncManifest = type { i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"vmbackup\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Error initializing the sync driver.\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"*** %s\0A\00", align 1
@__FUNCTION__.VmBackupSyncDriverStart = private unnamed_addr constant [24 x i8] c"VmBackupSyncDriverStart\00", align 1
@__func__.VmBackupNewDriverOp = private unnamed_addr constant [20 x i8] c"VmBackupNewDriverOp\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"(handle == NULL || *handle == SYNCDRIVER_INVALID_HANDLE) || !freeze\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Error %s filesystems.\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"freezing\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"thawing\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"SyncDriver status: %d\0A\00", align 1
@__FUNCTION__.VmBackupSyncDriverReadyForSnapshot = private unnamed_addr constant [35 x i8] c"VmBackupSyncDriverReadyForSnapshot\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"prov.snapshotCommit\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"VMX state changed; thawing filesystems.\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Error thawing filesystems.\0A\00", align 1
@__FUNCTION__.VmBackupSyncDriverSnapshotDone = private unnamed_addr constant [31 x i8] c"VmBackupSyncDriverSnapshotDone\00", align 1
@__FUNCTION__.VmBackupSyncDriverOnlyStart = private unnamed_addr constant [28 x i8] c"VmBackupSyncDriverOnlyStart\00", align 1
@__FUNCTION__.VmBackupSyncDriverOnlySnapshotDone = private unnamed_addr constant [35 x i8] c"VmBackupSyncDriverOnlySnapshotDone\00", align 1

; Function Attrs: nounwind uwtable
define %struct.VmBackupSyncProvider* @VmBackup_NewSyncDriverProvider() #0 !dbg !338 {
  %1 = call %struct.VmBackupSyncProvider* @VmBackup_NewSyncDriverProviderInternal(i8 signext 1), !dbg !344
  ret %struct.VmBackupSyncProvider* %1, !dbg !345
}

; Function Attrs: nounwind uwtable
define internal %struct.VmBackupSyncProvider* @VmBackup_NewSyncDriverProviderInternal(i8 signext) #0 !dbg !346 {
  %2 = alloca %struct.VmBackupSyncProvider*, align 8
  %3 = alloca i8, align 1
  %4 = alloca %struct.VmBackupSyncProvider*, align 8
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !349, metadata !350), !dbg !351
  call void @llvm.dbg.declare(metadata %struct.VmBackupSyncProvider** %4, metadata !352, metadata !350), !dbg !353
  %5 = call signext i8 @SyncDriver_Init(), !dbg !354
  %6 = icmp ne i8 %5, 0, !dbg !354
  br i1 %6, label %8, label %7, !dbg !356

; <label>:7:                                      ; preds = %1
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0)), !dbg !357
  store %struct.VmBackupSyncProvider* null, %struct.VmBackupSyncProvider** %2, align 8, !dbg !359
  br label %29, !dbg !359

; <label>:8:                                      ; preds = %1
  %9 = call i8* @UtilSafeMalloc0(i64 32), !dbg !360
  %10 = bitcast i8* %9 to %struct.VmBackupSyncProvider*, !dbg !360
  store %struct.VmBackupSyncProvider* %10, %struct.VmBackupSyncProvider** %4, align 8, !dbg !361
  %11 = load i8, i8* %3, align 1, !dbg !362
  %12 = icmp ne i8 %11, 0, !dbg !362
  br i1 %12, label %13, label %18, !dbg !364

; <label>:13:                                     ; preds = %8
  %14 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %4, align 8, !dbg !365
  %15 = getelementptr inbounds %struct.VmBackupSyncProvider, %struct.VmBackupSyncProvider* %14, i32 0, i32 0, !dbg !367
  store void (%struct.ToolsAppCtx*, i8*)* @VmBackupSyncDriverStart, void (%struct.ToolsAppCtx*, i8*)** %15, align 8, !dbg !368
  %16 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %4, align 8, !dbg !369
  %17 = getelementptr inbounds %struct.VmBackupSyncProvider, %struct.VmBackupSyncProvider* %16, i32 0, i32 1, !dbg !370
  store i8 (%struct.VmBackupState*, i8*)* @VmBackupSyncDriverSnapshotDone, i8 (%struct.VmBackupState*, i8*)** %17, align 8, !dbg !371
  br label %23, !dbg !372

; <label>:18:                                     ; preds = %8
  %19 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %4, align 8, !dbg !373
  %20 = getelementptr inbounds %struct.VmBackupSyncProvider, %struct.VmBackupSyncProvider* %19, i32 0, i32 0, !dbg !375
  store void (%struct.ToolsAppCtx*, i8*)* @VmBackupSyncDriverOnlyStart, void (%struct.ToolsAppCtx*, i8*)** %20, align 8, !dbg !376
  %21 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %4, align 8, !dbg !377
  %22 = getelementptr inbounds %struct.VmBackupSyncProvider, %struct.VmBackupSyncProvider* %21, i32 0, i32 1, !dbg !378
  store i8 (%struct.VmBackupState*, i8*)* @VmBackupSyncDriverOnlySnapshotDone, i8 (%struct.VmBackupState*, i8*)** %22, align 8, !dbg !379
  br label %23

; <label>:23:                                     ; preds = %18, %13
  %24 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %4, align 8, !dbg !380
  %25 = getelementptr inbounds %struct.VmBackupSyncProvider, %struct.VmBackupSyncProvider* %24, i32 0, i32 2, !dbg !381
  store void (%struct.VmBackupSyncProvider*)* @VmBackupSyncDriverRelease, void (%struct.VmBackupSyncProvider*)** %25, align 8, !dbg !382
  %26 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %4, align 8, !dbg !383
  %27 = getelementptr inbounds %struct.VmBackupSyncProvider, %struct.VmBackupSyncProvider* %26, i32 0, i32 3, !dbg !384
  store i8* null, i8** %27, align 8, !dbg !385
  %28 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %4, align 8, !dbg !386
  store %struct.VmBackupSyncProvider* %28, %struct.VmBackupSyncProvider** %2, align 8, !dbg !387
  br label %29, !dbg !387

; <label>:29:                                     ; preds = %23, %7
  %30 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %2, align 8, !dbg !388
  ret %struct.VmBackupSyncProvider* %30, !dbg !388
}

; Function Attrs: nounwind uwtable
define %struct.VmBackupSyncProvider* @VmBackup_NewSyncDriverOnlyProvider() #0 !dbg !389 {
  %1 = call %struct.VmBackupSyncProvider* @VmBackup_NewSyncDriverProviderInternal(i8 signext 0), !dbg !390
  ret %struct.VmBackupSyncProvider* %1, !dbg !391
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare signext i8 @SyncDriver_Init() #2

declare void @g_log(i8*, i32, i8*, ...) #2

declare i8* @UtilSafeMalloc0(i64) #2

; Function Attrs: nounwind uwtable
define internal void @VmBackupSyncDriverStart(%struct.ToolsAppCtx*, i8*) #0 !dbg !392 {
  %3 = alloca %struct.ToolsAppCtx*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.VmBackupDriverOp*, align 8
  %6 = alloca %struct.VmBackupState*, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %3, metadata !395, metadata !350), !dbg !396
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !397, metadata !350), !dbg !398
  call void @llvm.dbg.declare(metadata %struct.VmBackupDriverOp** %5, metadata !399, metadata !350), !dbg !400
  call void @llvm.dbg.declare(metadata %struct.VmBackupState** %6, metadata !401, metadata !350), !dbg !402
  %7 = load i8*, i8** %4, align 8, !dbg !403
  %8 = bitcast i8* %7 to %struct.VmBackupState*, !dbg !404
  store %struct.VmBackupState* %8, %struct.VmBackupState** %6, align 8, !dbg !402
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.VmBackupSyncDriverStart, i32 0, i32 0)), !dbg !405
  %9 = load %struct.VmBackupState*, %struct.VmBackupState** %6, align 8, !dbg !406
  %10 = load %struct.VmBackupState*, %struct.VmBackupState** %6, align 8, !dbg !407
  %11 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %10, i32 0, i32 4, !dbg !408
  %12 = load i8*, i8** %11, align 8, !dbg !408
  %13 = call %struct.VmBackupDriverOp* @VmBackupNewDriverOp(%struct.VmBackupState* %9, i8 signext 1, %struct.SyncHandle** null, i8* %12, i8 signext 1), !dbg !409
  store %struct.VmBackupDriverOp* %13, %struct.VmBackupDriverOp** %5, align 8, !dbg !410
  %14 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %5, align 8, !dbg !411
  %15 = icmp ne %struct.VmBackupDriverOp* %14, null, !dbg !413
  br i1 %15, label %16, label %23, !dbg !414

; <label>:16:                                     ; preds = %2
  %17 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %5, align 8, !dbg !415
  %18 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %17, i32 0, i32 4, !dbg !417
  %19 = load %struct.SyncHandle**, %struct.SyncHandle*** %18, align 8, !dbg !417
  %20 = bitcast %struct.SyncHandle** %19 to i8*, !dbg !415
  %21 = load %struct.VmBackupState*, %struct.VmBackupState** %6, align 8, !dbg !418
  %22 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %21, i32 0, i32 22, !dbg !419
  store i8* %20, i8** %22, align 8, !dbg !420
  br label %23, !dbg !421

; <label>:23:                                     ; preds = %16, %2
  %24 = load %struct.VmBackupState*, %struct.VmBackupState** %6, align 8, !dbg !422
  %25 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %5, align 8, !dbg !423
  %26 = bitcast %struct.VmBackupDriverOp* %25 to %struct.VmBackupOp*, !dbg !424
  %27 = call signext i8 @VmBackup_SetCurrentOp(%struct.VmBackupState* %24, %struct.VmBackupOp* %26, i8 (%struct.VmBackupState*)* @VmBackupSyncDriverReadyForSnapshot, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.VmBackupSyncDriverStart, i32 0, i32 0)), !dbg !425
  ret void, !dbg !426
}

; Function Attrs: nounwind uwtable
define internal signext i8 @VmBackupSyncDriverSnapshotDone(%struct.VmBackupState*, i8*) #0 !dbg !427 {
  %3 = alloca %struct.VmBackupState*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.VmBackupDriverOp*, align 8
  store %struct.VmBackupState* %0, %struct.VmBackupState** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupState** %3, metadata !428, metadata !350), !dbg !429
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !430, metadata !350), !dbg !431
  call void @llvm.dbg.declare(metadata %struct.VmBackupDriverOp** %5, metadata !432, metadata !350), !dbg !433
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__FUNCTION__.VmBackupSyncDriverSnapshotDone, i32 0, i32 0)), !dbg !434
  %6 = load %struct.VmBackupState*, %struct.VmBackupState** %3, align 8, !dbg !435
  %7 = load %struct.VmBackupState*, %struct.VmBackupState** %3, align 8, !dbg !436
  %8 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %7, i32 0, i32 22, !dbg !437
  %9 = load i8*, i8** %8, align 8, !dbg !437
  %10 = bitcast i8* %9 to %struct.SyncHandle**, !dbg !436
  %11 = call %struct.VmBackupDriverOp* @VmBackupNewDriverOp(%struct.VmBackupState* %6, i8 signext 0, %struct.SyncHandle** %10, i8* null, i8 signext 1), !dbg !438
  store %struct.VmBackupDriverOp* %11, %struct.VmBackupDriverOp** %5, align 8, !dbg !439
  %12 = load %struct.VmBackupState*, %struct.VmBackupState** %3, align 8, !dbg !440
  %13 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %12, i32 0, i32 22, !dbg !441
  %14 = load i8*, i8** %13, align 8, !dbg !441
  call void @g_free(i8* %14), !dbg !442
  %15 = load %struct.VmBackupState*, %struct.VmBackupState** %3, align 8, !dbg !443
  %16 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %15, i32 0, i32 22, !dbg !444
  store i8* null, i8** %16, align 8, !dbg !445
  %17 = load %struct.VmBackupState*, %struct.VmBackupState** %3, align 8, !dbg !446
  %18 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %5, align 8, !dbg !447
  %19 = bitcast %struct.VmBackupDriverOp* %18 to %struct.VmBackupOp*, !dbg !448
  %20 = call signext i8 @VmBackup_SetCurrentOp(%struct.VmBackupState* %17, %struct.VmBackupOp* %19, i8 (%struct.VmBackupState*)* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__FUNCTION__.VmBackupSyncDriverSnapshotDone, i32 0, i32 0)), !dbg !449
  ret i8 %20, !dbg !450
}

; Function Attrs: nounwind uwtable
define internal void @VmBackupSyncDriverOnlyStart(%struct.ToolsAppCtx*, i8*) #0 !dbg !451 {
  %3 = alloca %struct.ToolsAppCtx*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.VmBackupDriverOp*, align 8
  %6 = alloca %struct.VmBackupState*, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %3, metadata !452, metadata !350), !dbg !453
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !454, metadata !350), !dbg !455
  call void @llvm.dbg.declare(metadata %struct.VmBackupDriverOp** %5, metadata !456, metadata !350), !dbg !457
  call void @llvm.dbg.declare(metadata %struct.VmBackupState** %6, metadata !458, metadata !350), !dbg !459
  %7 = load i8*, i8** %4, align 8, !dbg !460
  %8 = bitcast i8* %7 to %struct.VmBackupState*, !dbg !461
  store %struct.VmBackupState* %8, %struct.VmBackupState** %6, align 8, !dbg !459
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.VmBackupSyncDriverOnlyStart, i32 0, i32 0)), !dbg !462
  %9 = load %struct.VmBackupState*, %struct.VmBackupState** %6, align 8, !dbg !463
  %10 = load %struct.VmBackupState*, %struct.VmBackupState** %6, align 8, !dbg !464
  %11 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %10, i32 0, i32 4, !dbg !465
  %12 = load i8*, i8** %11, align 8, !dbg !465
  %13 = call %struct.VmBackupDriverOp* @VmBackupNewDriverOp(%struct.VmBackupState* %9, i8 signext 1, %struct.SyncHandle** null, i8* %12, i8 signext 0), !dbg !466
  store %struct.VmBackupDriverOp* %13, %struct.VmBackupDriverOp** %5, align 8, !dbg !467
  %14 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %5, align 8, !dbg !468
  %15 = icmp ne %struct.VmBackupDriverOp* %14, null, !dbg !470
  br i1 %15, label %16, label %23, !dbg !471

; <label>:16:                                     ; preds = %2
  %17 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %5, align 8, !dbg !472
  %18 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %17, i32 0, i32 4, !dbg !474
  %19 = load %struct.SyncHandle**, %struct.SyncHandle*** %18, align 8, !dbg !474
  %20 = bitcast %struct.SyncHandle** %19 to i8*, !dbg !472
  %21 = load %struct.VmBackupState*, %struct.VmBackupState** %6, align 8, !dbg !475
  %22 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %21, i32 0, i32 22, !dbg !476
  store i8* %20, i8** %22, align 8, !dbg !477
  br label %23, !dbg !478

; <label>:23:                                     ; preds = %16, %2
  %24 = load %struct.VmBackupState*, %struct.VmBackupState** %6, align 8, !dbg !479
  %25 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %5, align 8, !dbg !480
  %26 = bitcast %struct.VmBackupDriverOp* %25 to %struct.VmBackupOp*, !dbg !481
  %27 = call signext i8 @VmBackup_SetCurrentOp(%struct.VmBackupState* %24, %struct.VmBackupOp* %26, i8 (%struct.VmBackupState*)* @VmBackupSyncDriverReadyForSnapshot, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.VmBackupSyncDriverOnlyStart, i32 0, i32 0)), !dbg !482
  ret void, !dbg !483
}

; Function Attrs: nounwind uwtable
define internal signext i8 @VmBackupSyncDriverOnlySnapshotDone(%struct.VmBackupState*, i8*) #0 !dbg !484 {
  %3 = alloca %struct.VmBackupState*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.VmBackupDriverOp*, align 8
  store %struct.VmBackupState* %0, %struct.VmBackupState** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupState** %3, metadata !485, metadata !350), !dbg !486
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !487, metadata !350), !dbg !488
  call void @llvm.dbg.declare(metadata %struct.VmBackupDriverOp** %5, metadata !489, metadata !350), !dbg !490
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__FUNCTION__.VmBackupSyncDriverOnlySnapshotDone, i32 0, i32 0)), !dbg !491
  %6 = load %struct.VmBackupState*, %struct.VmBackupState** %3, align 8, !dbg !492
  %7 = load %struct.VmBackupState*, %struct.VmBackupState** %3, align 8, !dbg !493
  %8 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %7, i32 0, i32 22, !dbg !494
  %9 = load i8*, i8** %8, align 8, !dbg !494
  %10 = bitcast i8* %9 to %struct.SyncHandle**, !dbg !493
  %11 = call %struct.VmBackupDriverOp* @VmBackupNewDriverOp(%struct.VmBackupState* %6, i8 signext 0, %struct.SyncHandle** %10, i8* null, i8 signext 0), !dbg !495
  store %struct.VmBackupDriverOp* %11, %struct.VmBackupDriverOp** %5, align 8, !dbg !496
  %12 = load %struct.VmBackupState*, %struct.VmBackupState** %3, align 8, !dbg !497
  %13 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %12, i32 0, i32 22, !dbg !498
  %14 = load i8*, i8** %13, align 8, !dbg !498
  call void @g_free(i8* %14), !dbg !499
  %15 = load %struct.VmBackupState*, %struct.VmBackupState** %3, align 8, !dbg !500
  %16 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %15, i32 0, i32 22, !dbg !501
  store i8* null, i8** %16, align 8, !dbg !502
  %17 = load %struct.VmBackupState*, %struct.VmBackupState** %3, align 8, !dbg !503
  %18 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %5, align 8, !dbg !504
  %19 = bitcast %struct.VmBackupDriverOp* %18 to %struct.VmBackupOp*, !dbg !505
  %20 = call signext i8 @VmBackup_SetCurrentOp(%struct.VmBackupState* %17, %struct.VmBackupOp* %19, i8 (%struct.VmBackupState*)* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__FUNCTION__.VmBackupSyncDriverOnlySnapshotDone, i32 0, i32 0)), !dbg !506
  ret i8 %20, !dbg !507
}

; Function Attrs: nounwind uwtable
define internal void @VmBackupSyncDriverRelease(%struct.VmBackupSyncProvider*) #0 !dbg !508 {
  %2 = alloca %struct.VmBackupSyncProvider*, align 8
  store %struct.VmBackupSyncProvider* %0, %struct.VmBackupSyncProvider** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupSyncProvider** %2, metadata !509, metadata !350), !dbg !510
  %3 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %2, align 8, !dbg !511
  %4 = bitcast %struct.VmBackupSyncProvider* %3 to i8*, !dbg !511
  call void @free(i8* %4) #6, !dbg !512
  ret void, !dbg !513
}

; Function Attrs: nounwind uwtable
define internal %struct.VmBackupDriverOp* @VmBackupNewDriverOp(%struct.VmBackupState*, i8 signext, %struct.SyncHandle**, i8*, i8 signext) #0 !dbg !514 {
  %6 = alloca %struct.VmBackupDriverOp*, align 8
  %7 = alloca %struct.VmBackupState*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.SyncHandle**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca %struct.VmBackupDriverOp*, align 8
  store %struct.VmBackupState* %0, %struct.VmBackupState** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupState** %7, metadata !517, metadata !350), !dbg !518
  store i8 %1, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !519, metadata !350), !dbg !520
  store %struct.SyncHandle** %2, %struct.SyncHandle*** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.SyncHandle*** %9, metadata !521, metadata !350), !dbg !522
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !523, metadata !350), !dbg !524
  store i8 %4, i8* %11, align 1
  call void @llvm.dbg.declare(metadata i8* %11, metadata !525, metadata !350), !dbg !526
  call void @llvm.dbg.declare(metadata i8* %12, metadata !527, metadata !350), !dbg !528
  call void @llvm.dbg.declare(metadata %struct.VmBackupDriverOp** %13, metadata !529, metadata !350), !dbg !530
  store %struct.VmBackupDriverOp* null, %struct.VmBackupDriverOp** %13, align 8, !dbg !530
  br label %14, !dbg !531, !llvm.loop !532

; <label>:14:                                     ; preds = %5
  %15 = load %struct.SyncHandle**, %struct.SyncHandle*** %9, align 8, !dbg !533
  %16 = icmp eq %struct.SyncHandle** %15, null, !dbg !537
  br i1 %16, label %24, label %17, !dbg !538

; <label>:17:                                     ; preds = %14
  %18 = load %struct.SyncHandle**, %struct.SyncHandle*** %9, align 8, !dbg !539
  %19 = load %struct.SyncHandle*, %struct.SyncHandle** %18, align 8, !dbg !541
  %20 = icmp eq %struct.SyncHandle* %19, null, !dbg !542
  br i1 %20, label %24, label %21, !dbg !543

; <label>:21:                                     ; preds = %17
  %22 = load i8, i8* %8, align 1, !dbg !544
  %23 = icmp ne i8 %22, 0, !dbg !544
  br i1 %23, label %25, label %24, !dbg !546

; <label>:24:                                     ; preds = %21, %17, %14
  br label %26, !dbg !547

; <label>:25:                                     ; preds = %21
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.VmBackupNewDriverOp, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i32 0, i32 0)), !dbg !550
  store %struct.VmBackupDriverOp* null, %struct.VmBackupDriverOp** %6, align 8, !dbg !553
  br label %119, !dbg !553

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !554

; <label>:27:                                     ; preds = %26
  %28 = call i8* @UtilSafeMalloc0(i64 56), !dbg !556
  %29 = bitcast i8* %28 to %struct.VmBackupDriverOp*, !dbg !556
  store %struct.VmBackupDriverOp* %29, %struct.VmBackupDriverOp** %13, align 8, !dbg !557
  %30 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %13, align 8, !dbg !558
  %31 = bitcast %struct.VmBackupDriverOp* %30 to i8*, !dbg !559
  call void @llvm.memset.p0i8.i64(i8* %31, i8 0, i64 56, i32 8, i1 false), !dbg !559
  %32 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %13, align 8, !dbg !560
  %33 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %32, i32 0, i32 0, !dbg !561
  %34 = getelementptr inbounds %struct.VmBackupOp, %struct.VmBackupOp* %33, i32 0, i32 0, !dbg !562
  store i32 (%struct.VmBackupOp*)* @VmBackupDriverOpQuery, i32 (%struct.VmBackupOp*)** %34, align 8, !dbg !563
  %35 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %13, align 8, !dbg !564
  %36 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %35, i32 0, i32 0, !dbg !565
  %37 = getelementptr inbounds %struct.VmBackupOp, %struct.VmBackupOp* %36, i32 0, i32 2, !dbg !566
  store void (%struct.VmBackupOp*)* @VmBackupDriverOpCancel, void (%struct.VmBackupOp*)** %37, align 8, !dbg !567
  %38 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %13, align 8, !dbg !568
  %39 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %38, i32 0, i32 0, !dbg !569
  %40 = getelementptr inbounds %struct.VmBackupOp, %struct.VmBackupOp* %39, i32 0, i32 1, !dbg !570
  store void (%struct.VmBackupOp*)* @VmBackupDriverOpRelease, void (%struct.VmBackupOp*)** %40, align 8, !dbg !571
  %41 = load i8, i8* %8, align 1, !dbg !572
  %42 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %13, align 8, !dbg !573
  %43 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %42, i32 0, i32 2, !dbg !574
  store i8 %41, i8* %43, align 8, !dbg !575
  %44 = load i8*, i8** %10, align 8, !dbg !576
  %45 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %13, align 8, !dbg !577
  %46 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %45, i32 0, i32 1, !dbg !578
  store i8* %44, i8** %46, align 8, !dbg !579
  %47 = call noalias i8* @g_malloc0_n(i64 1, i64 8), !dbg !580
  %48 = bitcast i8* %47 to %struct.SyncHandle**, !dbg !581
  %49 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %13, align 8, !dbg !582
  %50 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %49, i32 0, i32 4, !dbg !583
  store %struct.SyncHandle** %48, %struct.SyncHandle*** %50, align 8, !dbg !584
  %51 = load %struct.SyncHandle**, %struct.SyncHandle*** %9, align 8, !dbg !585
  %52 = icmp ne %struct.SyncHandle** %51, null, !dbg !586
  br i1 %52, label %53, label %56, !dbg !587

; <label>:53:                                     ; preds = %27
  %54 = load %struct.SyncHandle**, %struct.SyncHandle*** %9, align 8, !dbg !588
  %55 = load %struct.SyncHandle*, %struct.SyncHandle** %54, align 8, !dbg !590
  br label %57, !dbg !591

; <label>:56:                                     ; preds = %27
  br label %57, !dbg !592

; <label>:57:                                     ; preds = %56, %53
  %58 = phi %struct.SyncHandle* [ %55, %53 ], [ null, %56 ], !dbg !594
  %59 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %13, align 8, !dbg !596
  %60 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %59, i32 0, i32 4, !dbg !597
  %61 = load %struct.SyncHandle**, %struct.SyncHandle*** %60, align 8, !dbg !597
  store %struct.SyncHandle* %58, %struct.SyncHandle** %61, align 8, !dbg !598
  %62 = load i8, i8* %8, align 1, !dbg !599
  %63 = icmp ne i8 %62, 0, !dbg !599
  br i1 %63, label %64, label %87, !dbg !601

; <label>:64:                                     ; preds = %57
  %65 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %13, align 8, !dbg !602
  %66 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %65, i32 0, i32 1, !dbg !604
  %67 = load i8*, i8** %66, align 8, !dbg !604
  %68 = load i8, i8* %11, align 1, !dbg !605
  %69 = sext i8 %68 to i32, !dbg !605
  %70 = icmp ne i32 %69, 0, !dbg !605
  br i1 %70, label %71, label %76, !dbg !605

; <label>:71:                                     ; preds = %64
  %72 = load %struct.VmBackupState*, %struct.VmBackupState** %7, align 8, !dbg !606
  %73 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %72, i32 0, i32 18, !dbg !607
  %74 = load i8, i8* %73, align 2, !dbg !607
  %75 = sext i8 %74 to i32, !dbg !606
  br label %77, !dbg !608

; <label>:76:                                     ; preds = %64
  br label %77, !dbg !610

; <label>:77:                                     ; preds = %76, %71
  %78 = phi i32 [ %75, %71 ], [ 0, %76 ], !dbg !612
  %79 = trunc i32 %78 to i8, !dbg !612
  %80 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %13, align 8, !dbg !614
  %81 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %80, i32 0, i32 4, !dbg !615
  %82 = load %struct.SyncHandle**, %struct.SyncHandle*** %81, align 8, !dbg !615
  %83 = load %struct.VmBackupState*, %struct.VmBackupState** %7, align 8, !dbg !616
  %84 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %83, i32 0, i32 15, !dbg !617
  %85 = load i8*, i8** %84, align 8, !dbg !617
  %86 = call signext i8 @SyncDriver_Freeze(i8* %67, i8 signext %79, %struct.SyncHandle** %82, i8* %85), !dbg !618
  store i8 %86, i8* %12, align 1, !dbg !619
  br label %100, !dbg !620

; <label>:87:                                     ; preds = %57
  %88 = load %struct.VmBackupState*, %struct.VmBackupState** %7, align 8, !dbg !621
  %89 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %13, align 8, !dbg !623
  %90 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %89, i32 0, i32 4, !dbg !624
  %91 = load %struct.SyncHandle**, %struct.SyncHandle*** %90, align 8, !dbg !624
  %92 = load %struct.SyncHandle*, %struct.SyncHandle** %91, align 8, !dbg !625
  %93 = call %struct.SyncManifest* @SyncNewManifest(%struct.VmBackupState* %88, %struct.SyncHandle* %92), !dbg !626
  %94 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %13, align 8, !dbg !627
  %95 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %94, i32 0, i32 5, !dbg !628
  store %struct.SyncManifest* %93, %struct.SyncManifest** %95, align 8, !dbg !629
  %96 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %13, align 8, !dbg !630
  %97 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %96, i32 0, i32 4, !dbg !631
  %98 = load %struct.SyncHandle**, %struct.SyncHandle*** %97, align 8, !dbg !631
  %99 = call signext i8 @VmBackupDriverThaw(%struct.SyncHandle** %98), !dbg !632
  store i8 %99, i8* %12, align 1, !dbg !633
  br label %100

; <label>:100:                                    ; preds = %87, %77
  %101 = load i8, i8* %12, align 1, !dbg !634
  %102 = icmp ne i8 %101, 0, !dbg !634
  br i1 %102, label %117, label %103, !dbg !636

; <label>:103:                                    ; preds = %100
  %104 = load i8, i8* %8, align 1, !dbg !637
  %105 = sext i8 %104 to i32, !dbg !637
  %106 = icmp ne i32 %105, 0, !dbg !637
  %107 = select i1 %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), !dbg !637
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i8* %107), !dbg !639
  %108 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %13, align 8, !dbg !640
  %109 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %108, i32 0, i32 4, !dbg !641
  %110 = load %struct.SyncHandle**, %struct.SyncHandle*** %109, align 8, !dbg !641
  %111 = bitcast %struct.SyncHandle** %110 to i8*, !dbg !640
  call void @g_free(i8* %111), !dbg !642
  %112 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %13, align 8, !dbg !643
  %113 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %112, i32 0, i32 5, !dbg !644
  %114 = load %struct.SyncManifest*, %struct.SyncManifest** %113, align 8, !dbg !644
  call void @SyncManifestRelease(%struct.SyncManifest* %114), !dbg !645
  %115 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %13, align 8, !dbg !646
  %116 = bitcast %struct.VmBackupDriverOp* %115 to i8*, !dbg !646
  call void @free(i8* %116) #6, !dbg !647
  store %struct.VmBackupDriverOp* null, %struct.VmBackupDriverOp** %13, align 8, !dbg !648
  br label %117, !dbg !649

; <label>:117:                                    ; preds = %103, %100
  %118 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %13, align 8, !dbg !650
  store %struct.VmBackupDriverOp* %118, %struct.VmBackupDriverOp** %6, align 8, !dbg !651
  br label %119, !dbg !651

; <label>:119:                                    ; preds = %117, %25
  %120 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %6, align 8, !dbg !652
  ret %struct.VmBackupDriverOp* %120, !dbg !652
}

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @VmBackup_SetCurrentOp(%struct.VmBackupState*, %struct.VmBackupOp*, i8 (%struct.VmBackupState*)*, i8*) #3 !dbg !653 {
  %5 = alloca %struct.VmBackupState*, align 8
  %6 = alloca %struct.VmBackupOp*, align 8
  %7 = alloca i8 (%struct.VmBackupState*)*, align 8
  %8 = alloca i8*, align 8
  store %struct.VmBackupState* %0, %struct.VmBackupState** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupState** %5, metadata !660, metadata !350), !dbg !661
  store %struct.VmBackupOp* %1, %struct.VmBackupOp** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupOp** %6, metadata !662, metadata !350), !dbg !663
  store i8 (%struct.VmBackupState*)* %2, i8 (%struct.VmBackupState*)** %7, align 8
  call void @llvm.dbg.declare(metadata i8 (%struct.VmBackupState*)** %7, metadata !664, metadata !350), !dbg !665
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !666, metadata !350), !dbg !667
  %9 = load %struct.VmBackupState*, %struct.VmBackupState** %5, align 8, !dbg !668
  %10 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %9, i32 0, i32 3, !dbg !669
  %11 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %10), !dbg !670
  call void @g_mutex_lock(%union._GMutex* %11), !dbg !671
  %12 = load %struct.VmBackupOp*, %struct.VmBackupOp** %6, align 8, !dbg !673
  %13 = load %struct.VmBackupState*, %struct.VmBackupState** %5, align 8, !dbg !674
  %14 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %13, i32 0, i32 1, !dbg !675
  store %struct.VmBackupOp* %12, %struct.VmBackupOp** %14, align 8, !dbg !676
  %15 = load i8 (%struct.VmBackupState*)*, i8 (%struct.VmBackupState*)** %7, align 8, !dbg !677
  %16 = load %struct.VmBackupState*, %struct.VmBackupState** %5, align 8, !dbg !678
  %17 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %16, i32 0, i32 10, !dbg !679
  store i8 (%struct.VmBackupState*)* %15, i8 (%struct.VmBackupState*)** %17, align 8, !dbg !680
  %18 = load i8*, i8** %8, align 8, !dbg !681
  %19 = load %struct.VmBackupState*, %struct.VmBackupState** %5, align 8, !dbg !682
  %20 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %19, i32 0, i32 2, !dbg !683
  store i8* %18, i8** %20, align 8, !dbg !684
  %21 = load i8 (%struct.VmBackupState*)*, i8 (%struct.VmBackupState*)** %7, align 8, !dbg !685
  %22 = icmp ne i8 (%struct.VmBackupState*)* %21, null, !dbg !686
  br i1 %22, label %23, label %26, !dbg !687

; <label>:23:                                     ; preds = %4
  %24 = load %struct.VmBackupOp*, %struct.VmBackupOp** %6, align 8, !dbg !688
  %25 = icmp eq %struct.VmBackupOp* %24, null, !dbg !689
  br label %26

; <label>:26:                                     ; preds = %23, %4
  %27 = phi i1 [ false, %4 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32, !dbg !690
  %29 = trunc i32 %28 to i8, !dbg !692
  %30 = load %struct.VmBackupState*, %struct.VmBackupState** %5, align 8, !dbg !693
  %31 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %30, i32 0, i32 11, !dbg !694
  store i8 %29, i8* %31, align 8, !dbg !695
  %32 = load %struct.VmBackupState*, %struct.VmBackupState** %5, align 8, !dbg !696
  %33 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %32, i32 0, i32 3, !dbg !697
  %34 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %33), !dbg !698
  call void @g_mutex_unlock(%union._GMutex* %34), !dbg !699
  %35 = load %struct.VmBackupOp*, %struct.VmBackupOp** %6, align 8, !dbg !700
  %36 = icmp ne %struct.VmBackupOp* %35, null, !dbg !701
  %37 = zext i1 %36 to i32, !dbg !701
  %38 = trunc i32 %37 to i8, !dbg !702
  ret i8 %38, !dbg !703
}

; Function Attrs: nounwind uwtable
define internal signext i8 @VmBackupSyncDriverReadyForSnapshot(%struct.VmBackupState*) #0 !dbg !704 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.VmBackupState*, align 8
  %4 = alloca %struct.SyncHandle**, align 8
  %5 = alloca i8, align 1
  store %struct.VmBackupState* %0, %struct.VmBackupState** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupState** %3, metadata !705, metadata !350), !dbg !706
  call void @llvm.dbg.declare(metadata %struct.SyncHandle*** %4, metadata !707, metadata !350), !dbg !708
  %6 = load %struct.VmBackupState*, %struct.VmBackupState** %3, align 8, !dbg !709
  %7 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %6, i32 0, i32 22, !dbg !710
  %8 = load i8*, i8** %7, align 8, !dbg !710
  %9 = bitcast i8* %8 to %struct.SyncHandle**, !dbg !709
  store %struct.SyncHandle** %9, %struct.SyncHandle*** %4, align 8, !dbg !708
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__FUNCTION__.VmBackupSyncDriverReadyForSnapshot, i32 0, i32 0)), !dbg !711
  %10 = load %struct.SyncHandle**, %struct.SyncHandle*** %4, align 8, !dbg !712
  %11 = icmp ne %struct.SyncHandle** %10, null, !dbg !714
  br i1 %11, label %12, label %33, !dbg !715

; <label>:12:                                     ; preds = %1
  %13 = load %struct.SyncHandle**, %struct.SyncHandle*** %4, align 8, !dbg !716
  %14 = load %struct.SyncHandle*, %struct.SyncHandle** %13, align 8, !dbg !718
  %15 = icmp ne %struct.SyncHandle* %14, null, !dbg !719
  br i1 %15, label %16, label %33, !dbg !720

; <label>:16:                                     ; preds = %12
  call void @llvm.dbg.declare(metadata i8* %5, metadata !721, metadata !350), !dbg !723
  %17 = call signext i8 @VmBackup_SendEvent(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0)), !dbg !724
  store i8 %17, i8* %5, align 1, !dbg !725
  %18 = load i8, i8* %5, align 1, !dbg !726
  %19 = icmp ne i8 %18, 0, !dbg !726
  br i1 %19, label %20, label %23, !dbg !728

; <label>:20:                                     ; preds = %16
  %21 = load %struct.VmBackupState*, %struct.VmBackupState** %3, align 8, !dbg !729
  %22 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %21, i32 0, i32 28, !dbg !731
  store i32 1, i32* %22, align 4, !dbg !732
  br label %31, !dbg !733

; <label>:23:                                     ; preds = %16
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0)), !dbg !734
  %24 = load %struct.SyncHandle**, %struct.SyncHandle*** %4, align 8, !dbg !736
  %25 = call signext i8 @VmBackupDriverThaw(%struct.SyncHandle** %24), !dbg !738
  %26 = icmp ne i8 %25, 0, !dbg !738
  br i1 %26, label %28, label %27, !dbg !739

; <label>:27:                                     ; preds = %23
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0)), !dbg !740
  br label %28, !dbg !742

; <label>:28:                                     ; preds = %27, %23
  %29 = load %struct.VmBackupState*, %struct.VmBackupState** %3, align 8, !dbg !743
  %30 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %29, i32 0, i32 28, !dbg !744
  store i32 3, i32* %30, align 4, !dbg !745
  br label %31

; <label>:31:                                     ; preds = %28, %20
  %32 = load i8, i8* %5, align 1, !dbg !746
  store i8 %32, i8* %2, align 1, !dbg !747
  br label %36, !dbg !747

; <label>:33:                                     ; preds = %12, %1
  %34 = load %struct.VmBackupState*, %struct.VmBackupState** %3, align 8, !dbg !748
  %35 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %34, i32 0, i32 28, !dbg !749
  store i32 3, i32* %35, align 4, !dbg !750
  store i8 1, i8* %2, align 1, !dbg !751
  br label %36, !dbg !751

; <label>:36:                                     ; preds = %33, %31
  %37 = load i8, i8* %2, align 1, !dbg !752
  ret i8 %37, !dbg !752
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal i32 @VmBackupDriverOpQuery(%struct.VmBackupOp*) #0 !dbg !753 {
  %2 = alloca %struct.VmBackupOp*, align 8
  %3 = alloca %struct.VmBackupDriverOp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.VmBackupOp* %0, %struct.VmBackupOp** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupOp** %2, metadata !756, metadata !350), !dbg !757
  call void @llvm.dbg.declare(metadata %struct.VmBackupDriverOp** %3, metadata !758, metadata !350), !dbg !759
  %6 = load %struct.VmBackupOp*, %struct.VmBackupOp** %2, align 8, !dbg !760
  %7 = bitcast %struct.VmBackupOp* %6 to %struct.VmBackupDriverOp*, !dbg !761
  store %struct.VmBackupDriverOp* %7, %struct.VmBackupDriverOp** %3, align 8, !dbg !759
  call void @llvm.dbg.declare(metadata i32* %4, metadata !762, metadata !350), !dbg !763
  %8 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %3, align 8, !dbg !764
  %9 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %8, i32 0, i32 2, !dbg !766
  %10 = load i8, i8* %9, align 8, !dbg !766
  %11 = icmp ne i8 %10, 0, !dbg !764
  br i1 %11, label %12, label %46, !dbg !767

; <label>:12:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %5, metadata !768, metadata !350), !dbg !771
  %13 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %3, align 8, !dbg !772
  %14 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %13, i32 0, i32 4, !dbg !773
  %15 = load %struct.SyncHandle**, %struct.SyncHandle*** %14, align 8, !dbg !773
  %16 = load %struct.SyncHandle*, %struct.SyncHandle** %15, align 8, !dbg !774
  %17 = call i32 @SyncDriver_QueryStatus(%struct.SyncHandle* %16, i32 0), !dbg !775
  store i32 %17, i32* %5, align 4, !dbg !771
  %18 = load i32, i32* %5, align 4, !dbg !776
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 %18), !dbg !777
  %19 = load i32, i32* %5, align 4, !dbg !778
  switch i32 %19, label %40 [
    i32 1, label %20
    i32 0, label %21
  ], !dbg !779

; <label>:20:                                     ; preds = %12
  store i32 0, i32* %4, align 4, !dbg !780
  br label %45, !dbg !782

; <label>:21:                                     ; preds = %12
  %22 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %3, align 8, !dbg !783
  %23 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %22, i32 0, i32 3, !dbg !785
  %24 = load i8, i8* %23, align 1, !dbg !785
  %25 = icmp ne i8 %24, 0, !dbg !783
  br i1 %25, label %26, label %31, !dbg !786

; <label>:26:                                     ; preds = %21
  %27 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %3, align 8, !dbg !787
  %28 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %27, i32 0, i32 4, !dbg !789
  %29 = load %struct.SyncHandle**, %struct.SyncHandle*** %28, align 8, !dbg !789
  %30 = call signext i8 @VmBackupDriverThaw(%struct.SyncHandle** %29), !dbg !790
  br label %31, !dbg !791

; <label>:31:                                     ; preds = %26, %21
  %32 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %3, align 8, !dbg !792
  %33 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %32, i32 0, i32 4, !dbg !793
  store %struct.SyncHandle** null, %struct.SyncHandle*** %33, align 8, !dbg !794
  %34 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %3, align 8, !dbg !795
  %35 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %34, i32 0, i32 3, !dbg !796
  %36 = load i8, i8* %35, align 1, !dbg !796
  %37 = sext i8 %36 to i32, !dbg !797
  %38 = icmp ne i32 %37, 0, !dbg !797
  %39 = select i1 %38, i32 2, i32 1, !dbg !797
  store i32 %39, i32* %4, align 4, !dbg !798
  br label %45, !dbg !799

; <label>:40:                                     ; preds = %12
  %41 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %3, align 8, !dbg !800
  %42 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %41, i32 0, i32 4, !dbg !801
  %43 = load %struct.SyncHandle**, %struct.SyncHandle*** %42, align 8, !dbg !801
  %44 = call signext i8 @VmBackupDriverThaw(%struct.SyncHandle** %43), !dbg !802
  store i32 3, i32* %4, align 4, !dbg !803
  br label %45, !dbg !804

; <label>:45:                                     ; preds = %40, %31, %20
  br label %57, !dbg !805

; <label>:46:                                     ; preds = %1
  %47 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %3, align 8, !dbg !806
  %48 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %47, i32 0, i32 5, !dbg !809
  %49 = load %struct.SyncManifest*, %struct.SyncManifest** %48, align 8, !dbg !809
  %50 = icmp ne %struct.SyncManifest* %49, null, !dbg !810
  br i1 %50, label %51, label %56, !dbg !811

; <label>:51:                                     ; preds = %46
  %52 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %3, align 8, !dbg !812
  %53 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %52, i32 0, i32 5, !dbg !814
  %54 = load %struct.SyncManifest*, %struct.SyncManifest** %53, align 8, !dbg !814
  %55 = call signext i8 @SyncManifestSend(%struct.SyncManifest* %54), !dbg !815
  br label %56, !dbg !816

; <label>:56:                                     ; preds = %51, %46
  store i32 1, i32* %4, align 4, !dbg !817
  br label %57

; <label>:57:                                     ; preds = %56, %45
  %58 = load i32, i32* %4, align 4, !dbg !818
  ret i32 %58, !dbg !819
}

; Function Attrs: nounwind uwtable
define internal void @VmBackupDriverOpCancel(%struct.VmBackupOp*) #0 !dbg !820 {
  %2 = alloca %struct.VmBackupOp*, align 8
  %3 = alloca %struct.VmBackupDriverOp*, align 8
  store %struct.VmBackupOp* %0, %struct.VmBackupOp** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupOp** %2, metadata !823, metadata !350), !dbg !824
  call void @llvm.dbg.declare(metadata %struct.VmBackupDriverOp** %3, metadata !825, metadata !350), !dbg !826
  %4 = load %struct.VmBackupOp*, %struct.VmBackupOp** %2, align 8, !dbg !827
  %5 = bitcast %struct.VmBackupOp* %4 to %struct.VmBackupDriverOp*, !dbg !828
  store %struct.VmBackupDriverOp* %5, %struct.VmBackupDriverOp** %3, align 8, !dbg !826
  %6 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %3, align 8, !dbg !829
  %7 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %6, i32 0, i32 3, !dbg !830
  store i8 1, i8* %7, align 1, !dbg !831
  ret void, !dbg !832
}

; Function Attrs: nounwind uwtable
define internal void @VmBackupDriverOpRelease(%struct.VmBackupOp*) #0 !dbg !833 {
  %2 = alloca %struct.VmBackupOp*, align 8
  %3 = alloca %struct.VmBackupDriverOp*, align 8
  store %struct.VmBackupOp* %0, %struct.VmBackupOp** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupOp** %2, metadata !834, metadata !350), !dbg !835
  call void @llvm.dbg.declare(metadata %struct.VmBackupDriverOp** %3, metadata !836, metadata !350), !dbg !837
  %4 = load %struct.VmBackupOp*, %struct.VmBackupOp** %2, align 8, !dbg !838
  %5 = bitcast %struct.VmBackupOp* %4 to %struct.VmBackupDriverOp*, !dbg !839
  store %struct.VmBackupDriverOp* %5, %struct.VmBackupDriverOp** %3, align 8, !dbg !837
  %6 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %3, align 8, !dbg !840
  %7 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %6, i32 0, i32 4, !dbg !841
  %8 = load %struct.SyncHandle**, %struct.SyncHandle*** %7, align 8, !dbg !841
  %9 = bitcast %struct.SyncHandle** %8 to i8*, !dbg !840
  call void @g_free(i8* %9), !dbg !842
  %10 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %3, align 8, !dbg !843
  %11 = getelementptr inbounds %struct.VmBackupDriverOp, %struct.VmBackupDriverOp* %10, i32 0, i32 5, !dbg !844
  %12 = load %struct.SyncManifest*, %struct.SyncManifest** %11, align 8, !dbg !844
  call void @SyncManifestRelease(%struct.SyncManifest* %12), !dbg !845
  %13 = load %struct.VmBackupDriverOp*, %struct.VmBackupDriverOp** %3, align 8, !dbg !846
  %14 = bitcast %struct.VmBackupDriverOp* %13 to i8*, !dbg !846
  call void @free(i8* %14) #6, !dbg !847
  ret void, !dbg !848
}

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare signext i8 @SyncDriver_Freeze(i8*, i8 signext, %struct.SyncHandle**, i8*) #2

declare %struct.SyncManifest* @SyncNewManifest(%struct.VmBackupState*, %struct.SyncHandle*) #2

; Function Attrs: nounwind uwtable
define internal signext i8 @VmBackupDriverThaw(%struct.SyncHandle**) #0 !dbg !849 {
  %2 = alloca %struct.SyncHandle**, align 8
  %3 = alloca i8, align 1
  store %struct.SyncHandle** %0, %struct.SyncHandle*** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SyncHandle*** %2, metadata !852, metadata !350), !dbg !853
  call void @llvm.dbg.declare(metadata i8* %3, metadata !854, metadata !350), !dbg !855
  %4 = load %struct.SyncHandle**, %struct.SyncHandle*** %2, align 8, !dbg !856
  %5 = load %struct.SyncHandle*, %struct.SyncHandle** %4, align 8, !dbg !857
  %6 = call signext i8 @SyncDriver_Thaw(%struct.SyncHandle* %5), !dbg !858
  store i8 %6, i8* %3, align 1, !dbg !855
  %7 = load %struct.SyncHandle**, %struct.SyncHandle*** %2, align 8, !dbg !859
  call void @SyncDriver_CloseHandle(%struct.SyncHandle** %7), !dbg !860
  %8 = load i8, i8* %3, align 1, !dbg !861
  ret i8 %8, !dbg !862
}

declare void @g_free(i8*) #2

declare void @SyncManifestRelease(%struct.SyncManifest*) #2

; Function Attrs: nounwind
declare void @free(i8*) #5

declare i32 @SyncDriver_QueryStatus(%struct.SyncHandle*, i32) #2

declare signext i8 @SyncManifestSend(%struct.SyncManifest*) #2

declare signext i8 @SyncDriver_Thaw(%struct.SyncHandle*) #2

declare void @SyncDriver_CloseHandle(%struct.SyncHandle**) #2

declare void @g_mutex_lock(%union._GMutex*) #2

declare %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex*) #2

declare void @g_mutex_unlock(%union._GMutex*) #2

declare signext i8 @VmBackup_SendEvent(i8*, i32, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!335, !336}
!llvm.ident = !{!337}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !49)
!1 = !DIFile(filename: "libvmbackup_la-syncDriverOps.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1592")
!2 = !{!3, !7, !14, !25, !31, !43}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 232, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/plugin.h", directory: "/home/lichi/Desktop/open-vm-tools/line1592")
!5 = !{!6}
!6 = !DIEnumerator(name: "TOOLS_CORE_API_V1", value: 1)
!7 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !8, line: 43, size: 32, align: 32, elements: !9)
!8 = !DIFile(filename: "vmBackupInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line1592")
!9 = !{!10, !11, !12, !13}
!10 = !DIEnumerator(name: "VMBACKUP_STATUS_PENDING", value: 0)
!11 = !DIEnumerator(name: "VMBACKUP_STATUS_FINISHED", value: 1)
!12 = !DIEnumerator(name: "VMBACKUP_STATUS_CANCELED", value: 2)
!13 = !DIEnumerator(name: "VMBACKUP_STATUS_ERROR", value: 3)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !8, line: 63, size: 32, align: 32, elements: !15)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24}
!16 = !DIEnumerator(name: "VMBACKUP_MSTATE_IDLE", value: 0)
!17 = !DIEnumerator(name: "VMBACKUP_MSTATE_SCRIPT_FREEZE", value: 1)
!18 = !DIEnumerator(name: "VMBACKUP_MSTATE_SYNC_FREEZE_WAIT", value: 2)
!19 = !DIEnumerator(name: "VMBACKUP_MSTATE_SYNC_FREEZE", value: 3)
!20 = !DIEnumerator(name: "VMBACKUP_MSTATE_SYNC_THAW", value: 4)
!21 = !DIEnumerator(name: "VMBACKUP_MSTATE_SCRIPT_THAW", value: 5)
!22 = !DIEnumerator(name: "VMBACKUP_MSTATE_COMPLETE_WAIT", value: 6)
!23 = !DIEnumerator(name: "VMBACKUP_MSTATE_SCRIPT_ERROR", value: 7)
!24 = !DIEnumerator(name: "VMBACKUP_MSTATE_SYNC_ERROR", value: 8)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !8, line: 50, size: 32, align: 32, elements: !26)
!26 = !{!27, !28, !29, !30}
!27 = !DIEnumerator(name: "VMBACKUP_FREEZE_PENDING", value: 0)
!28 = !DIEnumerator(name: "VMBACKUP_FREEZE_FINISHED", value: 1)
!29 = !DIEnumerator(name: "VMBACKUP_FREEZE_CANCELED", value: 2)
!30 = !DIEnumerator(name: "VMBACKUP_FREEZE_ERROR", value: 3)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !32, line: 51, size: 32, align: 32, elements: !33)
!32 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1592")
!33 = !{!34, !35, !36, !37, !38, !39, !40, !41, !42}
!34 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!35 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!36 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!37 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!38 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!39 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!40 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!41 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!42 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !44, line: 45, size: 32, align: 32, elements: !45)
!44 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/syncDriver.h", directory: "/home/lichi/Desktop/open-vm-tools/line1592")
!45 = !{!46, !47, !48}
!46 = !DIEnumerator(name: "SYNCDRIVER_IDLE", value: 0)
!47 = !DIEnumerator(name: "SYNCDRIVER_BUSY", value: 1)
!48 = !DIEnumerator(name: "SYNCDRIVER_ERROR", value: 2)
!49 = !{!50, !51, !97, !92, !313, !317}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupState", file: !8, line: 141, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmBackupState", file: !8, line: 104, size: 1984, align: 64, elements: !54)
!54 = !{!55, !96, !112, !113, !160, !162, !163, !164, !242, !243, !244, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !262, !263, !264, !265, !266, !271, !272, !274, !276, !296, !308, !309, !310, !311, !312}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !53, file: !8, line: 105, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppCtx", file: !4, line: 274, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppCtx", file: !4, line: 241, size: 576, align: 64, elements: !59)
!59 = !{!60, !62, !68, !72, !73, !78, !83, !88, !89, !90, !94}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !58, file: !4, line: 243, baseType: !61, size: 32, align: 32)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCoreAPI", file: !4, line: 234, baseType: !3)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !58, file: !4, line: 245, baseType: !63, size: 64, align: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !66, line: 46, baseType: !67)
!66 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1592")
!67 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "isVMware", scope: !58, file: !4, line: 247, baseType: !69, size: 32, align: 32, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !66, line: 50, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !66, line: 49, baseType: !71)
!71 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "errorCode", scope: !58, file: !4, line: 249, baseType: !71, size: 32, align: 32, offset: 160)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "mainLoop", scope: !58, file: !4, line: 251, baseType: !74, size: 64, align: 64, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainLoop", file: !76, line: 56, baseType: !77)
!76 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line1592")
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainLoop", file: !76, line: 56, flags: DIFlagFwdDecl)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !58, file: !4, line: 253, baseType: !79, size: 64, align: 64, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !81, line: 48, baseType: !82)
!81 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line1592")
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !81, line: 48, flags: DIFlagFwdDecl)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !58, file: !4, line: 255, baseType: !84, size: 64, align: 64, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !86, line: 48, baseType: !87)
!86 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1592")
!87 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !86, line: 48, flags: DIFlagFwdDecl)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "blockFD", scope: !58, file: !4, line: 261, baseType: !71, size: 32, align: 32, offset: 384)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "uinputFD", scope: !58, file: !4, line: 263, baseType: !71, size: 32, align: 32, offset: 416)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !58, file: !4, line: 265, baseType: !91, size: 64, align: 64, offset: 448)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "serviceObj", scope: !58, file: !4, line: 273, baseType: !95, size: 64, align: 64, offset: 512)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !66, line: 77, baseType: !50)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "currentOp", scope: !53, file: !8, line: 106, baseType: !97, size: 64, align: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupOp", file: !8, line: 86, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmBackupOp", file: !8, line: 82, size: 192, align: 64, elements: !100)
!100 = !{!101, !107, !111}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "queryFn", scope: !99, file: !8, line: 83, baseType: !102, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupOpStatus", file: !8, line: 48, baseType: !7)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "releaseFn", scope: !99, file: !8, line: 84, baseType: !108, size: 64, align: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !106}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "cancelFn", scope: !99, file: !8, line: 85, baseType: !108, size: 64, align: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "currentOpName", scope: !53, file: !8, line: 107, baseType: !92, size: 64, align: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "opLock", scope: !53, file: !8, line: 108, baseType: !114, size: 384, align: 64, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "GStaticMutex", file: !115, line: 140, baseType: !116)
!115 = !DIFile(filename: "/usr/include/glib-2.0/glib/deprecated/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line1592")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !115, line: 133, size: 384, align: 64, elements: !117)
!117 = !{!118, !131}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !116, file: !115, line: 135, baseType: !119, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMutex", file: !121, line: 51, baseType: !122)
!121 = !DIFile(filename: "/usr/include/glib-2.0/glib/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line1592")
!122 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_GMutex", file: !121, line: 58, size: 64, align: 64, elements: !123)
!123 = !{!124, !125}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !122, file: !121, line: 61, baseType: !95, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !122, file: !121, line: 62, baseType: !126, size: 64, align: 32)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 64, align: 32, elements: !129)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !66, line: 55, baseType: !128)
!128 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!129 = !{!130}
!130 = !DISubrange(count: 2)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !116, file: !115, line: 138, baseType: !132, size: 320, align: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !133, line: 128, baseType: !134)
!133 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1592")
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !133, line: 90, size: 320, align: 64, elements: !135)
!135 = !{!136, !154, !158}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !134, file: !133, line: 125, baseType: !137, size: 320, align: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !133, line: 92, size: 320, align: 64, elements: !138)
!138 = !{!139, !140, !141, !142, !143, !144, !146, !147}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !137, file: !133, line: 94, baseType: !71, size: 32, align: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !137, file: !133, line: 95, baseType: !128, size: 32, align: 32, offset: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !137, file: !133, line: 96, baseType: !71, size: 32, align: 32, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !137, file: !133, line: 98, baseType: !128, size: 32, align: 32, offset: 96)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !137, file: !133, line: 102, baseType: !71, size: 32, align: 32, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !137, file: !133, line: 104, baseType: !145, size: 16, align: 16, offset: 160)
!145 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !137, file: !133, line: 105, baseType: !145, size: 16, align: 16, offset: 176)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !137, file: !133, line: 106, baseType: !148, size: 128, align: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !133, line: 79, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !133, line: 75, size: 128, align: 64, elements: !150)
!150 = !{!151, !153}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !149, file: !133, line: 77, baseType: !152, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !149, file: !133, line: 78, baseType: !152, size: 64, align: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !134, file: !133, line: 126, baseType: !155, size: 320, align: 8)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 320, align: 8, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 40)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !134, file: !133, line: 127, baseType: !159, size: 64, align: 64)
!159 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "volumes", scope: !53, file: !8, line: 109, baseType: !161, size: 64, align: 64, offset: 576)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "snapshots", scope: !53, file: !8, line: 110, baseType: !161, size: 64, align: 64, offset: 640)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "pollPeriod", scope: !53, file: !8, line: 111, baseType: !127, size: 32, align: 32, offset: 704)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "abortTimer", scope: !53, file: !8, line: 112, baseType: !165, size: 64, align: 64, offset: 768)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !76, line: 64, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !76, line: 171, size: 768, align: 64, elements: !168)
!168 = !{!169, !170, !190, !219, !220, !224, !225, !226, !227, !235, !236, !237, !238}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !167, file: !76, line: 174, baseType: !95, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !167, file: !76, line: 175, baseType: !171, size: 64, align: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !76, line: 77, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !76, line: 196, size: 192, align: 64, elements: !174)
!174 = !{!175, !179, !180}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !173, file: !76, line: 198, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !95}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !173, file: !76, line: 199, baseType: !176, size: 64, align: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !173, file: !76, line: 200, baseType: !181, size: 64, align: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !95, !165, !184, !189}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !76, line: 155, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!69, !95}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !167, file: !76, line: 177, baseType: !191, size: 64, align: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !76, line: 130, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !76, line: 214, size: 384, align: 64, elements: !195)
!195 = !{!196, !201, !205, !209, !213, !214}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !194, file: !76, line: 216, baseType: !197, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!69, !165, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !194, file: !76, line: 218, baseType: !202, size: 64, align: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!69, !165}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !194, file: !76, line: 219, baseType: !206, size: 64, align: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!69, !165, !185, !95}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !194, file: !76, line: 222, baseType: !210, size: 64, align: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !165}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !194, file: !76, line: 226, baseType: !185, size: 64, align: 64, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !194, file: !76, line: 227, baseType: !215, size: 64, align: 64, offset: 320)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !76, line: 212, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{null}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !167, file: !76, line: 178, baseType: !127, size: 32, align: 32, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !167, file: !76, line: 180, baseType: !221, size: 64, align: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !76, line: 48, baseType: !223)
!223 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !76, line: 48, flags: DIFlagFwdDecl)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !167, file: !76, line: 182, baseType: !70, size: 32, align: 32, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !167, file: !76, line: 183, baseType: !127, size: 32, align: 32, offset: 352)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !167, file: !76, line: 184, baseType: !127, size: 32, align: 32, offset: 384)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !167, file: !76, line: 186, baseType: !228, size: 64, align: 64, offset: 448)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !230, line: 37, baseType: !231)
!230 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/open-vm-tools/line1592")
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !230, line: 39, size: 128, align: 64, elements: !232)
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !231, file: !230, line: 41, baseType: !95, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !231, file: !230, line: 42, baseType: !228, size: 64, align: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !167, file: !76, line: 188, baseType: !165, size: 64, align: 64, offset: 512)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !167, file: !76, line: 189, baseType: !165, size: 64, align: 64, offset: 576)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !167, file: !76, line: 191, baseType: !161, size: 64, align: 64, offset: 640)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !167, file: !76, line: 193, baseType: !239, size: 64, align: 64, offset: 704)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !76, line: 65, baseType: !241)
!241 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !76, line: 65, flags: DIFlagFwdDecl)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "timerEvent", scope: !53, file: !8, line: 113, baseType: !165, size: 64, align: 64, offset: 832)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "keepAlive", scope: !53, file: !8, line: 114, baseType: !165, size: 64, align: 64, offset: 896)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !53, file: !8, line: 115, baseType: !245, size: 64, align: 64, offset: 960)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!248, !250}
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !249, line: 230, baseType: !67)
!249 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1592")
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "forceRequeue", scope: !53, file: !8, line: 116, baseType: !248, size: 8, align: 8, offset: 1024)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "generateManifests", scope: !53, file: !8, line: 117, baseType: !248, size: 8, align: 8, offset: 1032)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "quiesceApps", scope: !53, file: !8, line: 118, baseType: !248, size: 8, align: 8, offset: 1040)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "quiesceFS", scope: !53, file: !8, line: 119, baseType: !248, size: 8, align: 8, offset: 1048)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "excludedFileSystems", scope: !53, file: !8, line: 120, baseType: !161, size: 64, align: 64, offset: 1088)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "allowHWProvider", scope: !53, file: !8, line: 121, baseType: !248, size: 8, align: 8, offset: 1152)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "execScripts", scope: !53, file: !8, line: 122, baseType: !248, size: 8, align: 8, offset: 1160)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "enableNullDriver", scope: !53, file: !8, line: 123, baseType: !248, size: 8, align: 8, offset: 1168)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "needsPriv", scope: !53, file: !8, line: 124, baseType: !248, size: 8, align: 8, offset: 1176)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "scriptArg", scope: !53, file: !8, line: 125, baseType: !261, size: 64, align: 64, offset: 1216)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !53, file: !8, line: 126, baseType: !127, size: 32, align: 32, offset: 1280)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !53, file: !8, line: 127, baseType: !95, size: 64, align: 64, offset: 1344)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "scripts", scope: !53, file: !8, line: 128, baseType: !50, size: 64, align: 64, offset: 1408)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "configDir", scope: !53, file: !8, line: 129, baseType: !92, size: 64, align: 64, offset: 1472)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "currentScript", scope: !53, file: !8, line: 130, baseType: !267, size: 64, align: 64, offset: 1536)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !268, line: 109, baseType: !269)
!268 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1592")
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !270, line: 172, baseType: !159)
!270 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1592")
!271 = !DIDerivedType(tag: DW_TAG_member, name: "errorMsg", scope: !53, file: !8, line: 131, baseType: !261, size: 64, align: 64, offset: 1600)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "machineState", scope: !53, file: !8, line: 132, baseType: !273, size: 32, align: 32, offset: 1664)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupMState", file: !8, line: 73, baseType: !14)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "freezeStatus", scope: !53, file: !8, line: 133, baseType: !275, size: 32, align: 32, offset: 1696)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupFreezeStatus", file: !8, line: 55, baseType: !25)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "provider", scope: !53, file: !8, line: 134, baseType: !277, size: 64, align: 64, offset: 1728)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmBackupSyncProvider", file: !8, line: 154, size: 256, align: 64, elements: !279)
!279 = !{!280, !286, !291, !295}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !278, file: !8, line: 158, baseType: !281, size: 64, align: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCorePoolCb", file: !282, line: 54, baseType: !283)
!282 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/threadPool.h", directory: "/home/lichi/Desktop/open-vm-tools/line1592")
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !56, !95}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "snapshotDone", scope: !278, file: !8, line: 160, baseType: !287, size: 64, align: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupProviderCallback", file: !8, line: 144, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!248, !51, !50}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !278, file: !8, line: 161, baseType: !292, size: 64, align: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !277}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !278, file: !8, line: 162, baseType: !50, size: 64, align: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "completer", scope: !53, file: !8, line: 135, baseType: !297, size: 64, align: 64, offset: 1792)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmBackupSyncCompleter", file: !8, line: 171, size: 256, align: 64, elements: !299)
!299 = !{!300, !302, !303, !307}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !298, file: !8, line: 172, baseType: !301, size: 64, align: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupCompleterCallback", file: !8, line: 145, baseType: !288)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "snapshotCompleted", scope: !298, file: !8, line: 173, baseType: !301, size: 64, align: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !298, file: !8, line: 174, baseType: !304, size: 64, align: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !297}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !298, file: !8, line: 175, baseType: !50, size: 64, align: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "vssBackupContext", scope: !53, file: !8, line: 136, baseType: !70, size: 32, align: 32, offset: 1856)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "vssBackupType", scope: !53, file: !8, line: 137, baseType: !70, size: 32, align: 32, offset: 1888)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "vssBootableSystemState", scope: !53, file: !8, line: 138, baseType: !248, size: 8, align: 8, offset: 1920)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "vssPartialFileSupport", scope: !53, file: !8, line: 139, baseType: !248, size: 8, align: 8, offset: 1928)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "vssUseDefault", scope: !53, file: !8, line: 140, baseType: !248, size: 8, align: 8, offset: 1936)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyncDriverHandle", file: !44, line: 41, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, align: 64)
!316 = !DICompositeType(tag: DW_TAG_structure_type, name: "SyncHandle", file: !44, line: 41, flags: DIFlagFwdDecl)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupDriverOp", file: !319, line: 45, baseType: !320)
!319 = !DIFile(filename: "syncDriverOps.c", directory: "/home/lichi/Desktop/open-vm-tools/line1592")
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmBackupDriverOp", file: !319, line: 38, size: 448, align: 64, elements: !321)
!321 = !{!322, !323, !324, !325, !326, !327}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "callbacks", scope: !320, file: !319, line: 39, baseType: !98, size: 192, align: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "volumes", scope: !320, file: !319, line: 40, baseType: !92, size: 64, align: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !320, file: !319, line: 41, baseType: !248, size: 8, align: 8, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "canceled", scope: !320, file: !319, line: 42, baseType: !248, size: 8, align: 8, offset: 264)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "syncHandle", scope: !320, file: !319, line: 43, baseType: !313, size: 64, align: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "manifest", scope: !320, file: !319, line: 44, baseType: !328, size: 64, align: 64, offset: 384)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyncManifest", file: !330, line: 37, baseType: !331)
!330 = !DIFile(filename: "syncManifest.h", directory: "/home/lichi/Desktop/open-vm-tools/line1592")
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !330, line: 34, size: 128, align: 64, elements: !332)
!332 = !{!333, !334}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !331, file: !330, line: 35, baseType: !161, size: 64, align: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "providerName", scope: !331, file: !330, line: 36, baseType: !161, size: 64, align: 64, offset: 64)
!335 = !{i32 2, !"Dwarf Version", i32 4}
!336 = !{i32 2, !"Debug Info Version", i32 3}
!337 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!338 = distinct !DISubprogram(name: "VmBackup_NewSyncDriverProvider", scope: !319, file: !319, line: 612, type: !339, isLocal: false, isDefinition: true, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !343)
!339 = !DISubroutineType(types: !340)
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupSyncProvider", file: !8, line: 163, baseType: !278)
!343 = !{}
!344 = !DILocation(line: 614, column: 11, scope: !338)
!345 = !DILocation(line: 614, column: 4, scope: !338)
!346 = distinct !DISubprogram(name: "VmBackup_NewSyncDriverProviderInternal", scope: !319, file: !319, line: 569, type: !347, isLocal: true, isDefinition: true, scopeLine: 570, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !343)
!347 = !DISubroutineType(types: !348)
!348 = !{!341, !248}
!349 = !DILocalVariable(name: "useNullDriverPrefs", arg: 1, scope: !346, file: !319, line: 569, type: !248)
!350 = !DIExpression()
!351 = !DILocation(line: 569, column: 45, scope: !346)
!352 = !DILocalVariable(name: "provider", scope: !346, file: !319, line: 571, type: !341)
!353 = !DILocation(line: 571, column: 26, scope: !346)
!354 = !DILocation(line: 573, column: 9, scope: !355)
!355 = distinct !DILexicalBlock(scope: !346, file: !319, line: 573, column: 8)
!356 = !DILocation(line: 573, column: 8, scope: !346)
!357 = !DILocation(line: 574, column: 7, scope: !358)
!358 = distinct !DILexicalBlock(scope: !355, file: !319, line: 573, column: 28)
!359 = !DILocation(line: 575, column: 7, scope: !358)
!360 = !DILocation(line: 578, column: 15, scope: !346)
!361 = !DILocation(line: 578, column: 13, scope: !346)
!362 = !DILocation(line: 579, column: 8, scope: !363)
!363 = distinct !DILexicalBlock(scope: !346, file: !319, line: 579, column: 8)
!364 = !DILocation(line: 579, column: 8, scope: !346)
!365 = !DILocation(line: 580, column: 7, scope: !366)
!366 = distinct !DILexicalBlock(scope: !363, file: !319, line: 579, column: 28)
!367 = !DILocation(line: 580, column: 17, scope: !366)
!368 = !DILocation(line: 580, column: 23, scope: !366)
!369 = !DILocation(line: 581, column: 7, scope: !366)
!370 = !DILocation(line: 581, column: 17, scope: !366)
!371 = !DILocation(line: 581, column: 30, scope: !366)
!372 = !DILocation(line: 582, column: 4, scope: !366)
!373 = !DILocation(line: 583, column: 7, scope: !374)
!374 = distinct !DILexicalBlock(scope: !363, file: !319, line: 582, column: 11)
!375 = !DILocation(line: 583, column: 17, scope: !374)
!376 = !DILocation(line: 583, column: 23, scope: !374)
!377 = !DILocation(line: 584, column: 7, scope: !374)
!378 = !DILocation(line: 584, column: 17, scope: !374)
!379 = !DILocation(line: 584, column: 30, scope: !374)
!380 = !DILocation(line: 586, column: 4, scope: !346)
!381 = !DILocation(line: 586, column: 14, scope: !346)
!382 = !DILocation(line: 586, column: 22, scope: !346)
!383 = !DILocation(line: 587, column: 4, scope: !346)
!384 = !DILocation(line: 587, column: 14, scope: !346)
!385 = !DILocation(line: 587, column: 25, scope: !346)
!386 = !DILocation(line: 589, column: 11, scope: !346)
!387 = !DILocation(line: 589, column: 4, scope: !346)
!388 = !DILocation(line: 590, column: 1, scope: !346)
!389 = distinct !DISubprogram(name: "VmBackup_NewSyncDriverOnlyProvider", scope: !319, file: !319, line: 639, type: !339, isLocal: false, isDefinition: true, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !343)
!390 = !DILocation(line: 641, column: 11, scope: !389)
!391 = !DILocation(line: 641, column: 4, scope: !389)
!392 = distinct !DISubprogram(name: "VmBackupSyncDriverStart", scope: !319, file: !319, line: 400, type: !393, isLocal: true, isDefinition: true, scopeLine: 402, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !343)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !56, !50}
!395 = !DILocalVariable(name: "ctx", arg: 1, scope: !392, file: !319, line: 400, type: !56)
!396 = !DILocation(line: 400, column: 38, scope: !392)
!397 = !DILocalVariable(name: "clientData", arg: 2, scope: !392, file: !319, line: 401, type: !50)
!398 = !DILocation(line: 401, column: 31, scope: !392)
!399 = !DILocalVariable(name: "op", scope: !392, file: !319, line: 403, type: !317)
!400 = !DILocation(line: 403, column: 22, scope: !392)
!401 = !DILocalVariable(name: "state", scope: !392, file: !319, line: 404, type: !51)
!402 = !DILocation(line: 404, column: 19, scope: !392)
!403 = !DILocation(line: 404, column: 44, scope: !392)
!404 = !DILocation(line: 404, column: 27, scope: !392)
!405 = !DILocation(line: 406, column: 4, scope: !392)
!406 = !DILocation(line: 407, column: 29, scope: !392)
!407 = !DILocation(line: 407, column: 47, scope: !392)
!408 = !DILocation(line: 407, column: 54, scope: !392)
!409 = !DILocation(line: 407, column: 9, scope: !392)
!410 = !DILocation(line: 407, column: 7, scope: !392)
!411 = !DILocation(line: 409, column: 8, scope: !412)
!412 = distinct !DILexicalBlock(scope: !392, file: !319, line: 409, column: 8)
!413 = !DILocation(line: 409, column: 11, scope: !412)
!414 = !DILocation(line: 409, column: 8, scope: !392)
!415 = !DILocation(line: 410, column: 27, scope: !416)
!416 = distinct !DILexicalBlock(scope: !412, file: !319, line: 409, column: 19)
!417 = !DILocation(line: 410, column: 31, scope: !416)
!418 = !DILocation(line: 410, column: 7, scope: !416)
!419 = !DILocation(line: 410, column: 14, scope: !416)
!420 = !DILocation(line: 410, column: 25, scope: !416)
!421 = !DILocation(line: 411, column: 4, scope: !416)
!422 = !DILocation(line: 413, column: 26, scope: !392)
!423 = !DILocation(line: 414, column: 41, scope: !392)
!424 = !DILocation(line: 414, column: 26, scope: !392)
!425 = !DILocation(line: 413, column: 4, scope: !392)
!426 = !DILocation(line: 417, column: 1, scope: !392)
!427 = distinct !DISubprogram(name: "VmBackupSyncDriverSnapshotDone", scope: !319, file: !319, line: 476, type: !289, isLocal: true, isDefinition: true, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !343)
!428 = !DILocalVariable(name: "state", arg: 1, scope: !427, file: !319, line: 476, type: !51)
!429 = !DILocation(line: 476, column: 47, scope: !427)
!430 = !DILocalVariable(name: "clientData", arg: 2, scope: !427, file: !319, line: 477, type: !50)
!431 = !DILocation(line: 477, column: 38, scope: !427)
!432 = !DILocalVariable(name: "op", scope: !427, file: !319, line: 479, type: !317)
!433 = !DILocation(line: 479, column: 22, scope: !427)
!434 = !DILocation(line: 481, column: 4, scope: !427)
!435 = !DILocation(line: 483, column: 29, scope: !427)
!436 = !DILocation(line: 483, column: 41, scope: !427)
!437 = !DILocation(line: 483, column: 48, scope: !427)
!438 = !DILocation(line: 483, column: 9, scope: !427)
!439 = !DILocation(line: 483, column: 7, scope: !427)
!440 = !DILocation(line: 484, column: 11, scope: !427)
!441 = !DILocation(line: 484, column: 18, scope: !427)
!442 = !DILocation(line: 484, column: 4, scope: !427)
!443 = !DILocation(line: 485, column: 4, scope: !427)
!444 = !DILocation(line: 485, column: 11, scope: !427)
!445 = !DILocation(line: 485, column: 22, scope: !427)
!446 = !DILocation(line: 487, column: 33, scope: !427)
!447 = !DILocation(line: 487, column: 55, scope: !427)
!448 = !DILocation(line: 487, column: 40, scope: !427)
!449 = !DILocation(line: 487, column: 11, scope: !427)
!450 = !DILocation(line: 487, column: 4, scope: !427)
!451 = distinct !DISubprogram(name: "VmBackupSyncDriverOnlyStart", scope: !319, file: !319, line: 438, type: !393, isLocal: true, isDefinition: true, scopeLine: 440, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !343)
!452 = !DILocalVariable(name: "ctx", arg: 1, scope: !451, file: !319, line: 438, type: !56)
!453 = !DILocation(line: 438, column: 42, scope: !451)
!454 = !DILocalVariable(name: "clientData", arg: 2, scope: !451, file: !319, line: 439, type: !50)
!455 = !DILocation(line: 439, column: 35, scope: !451)
!456 = !DILocalVariable(name: "op", scope: !451, file: !319, line: 441, type: !317)
!457 = !DILocation(line: 441, column: 22, scope: !451)
!458 = !DILocalVariable(name: "state", scope: !451, file: !319, line: 442, type: !51)
!459 = !DILocation(line: 442, column: 19, scope: !451)
!460 = !DILocation(line: 442, column: 44, scope: !451)
!461 = !DILocation(line: 442, column: 27, scope: !451)
!462 = !DILocation(line: 444, column: 4, scope: !451)
!463 = !DILocation(line: 445, column: 29, scope: !451)
!464 = !DILocation(line: 445, column: 47, scope: !451)
!465 = !DILocation(line: 445, column: 54, scope: !451)
!466 = !DILocation(line: 445, column: 9, scope: !451)
!467 = !DILocation(line: 445, column: 7, scope: !451)
!468 = !DILocation(line: 447, column: 8, scope: !469)
!469 = distinct !DILexicalBlock(scope: !451, file: !319, line: 447, column: 8)
!470 = !DILocation(line: 447, column: 11, scope: !469)
!471 = !DILocation(line: 447, column: 8, scope: !451)
!472 = !DILocation(line: 448, column: 27, scope: !473)
!473 = distinct !DILexicalBlock(scope: !469, file: !319, line: 447, column: 19)
!474 = !DILocation(line: 448, column: 31, scope: !473)
!475 = !DILocation(line: 448, column: 7, scope: !473)
!476 = !DILocation(line: 448, column: 14, scope: !473)
!477 = !DILocation(line: 448, column: 25, scope: !473)
!478 = !DILocation(line: 449, column: 4, scope: !473)
!479 = !DILocation(line: 451, column: 26, scope: !451)
!480 = !DILocation(line: 452, column: 41, scope: !451)
!481 = !DILocation(line: 452, column: 26, scope: !451)
!482 = !DILocation(line: 451, column: 4, scope: !451)
!483 = !DILocation(line: 455, column: 1, scope: !451)
!484 = distinct !DISubprogram(name: "VmBackupSyncDriverOnlySnapshotDone", scope: !319, file: !319, line: 509, type: !289, isLocal: true, isDefinition: true, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !343)
!485 = !DILocalVariable(name: "state", arg: 1, scope: !484, file: !319, line: 509, type: !51)
!486 = !DILocation(line: 509, column: 51, scope: !484)
!487 = !DILocalVariable(name: "clientData", arg: 2, scope: !484, file: !319, line: 510, type: !50)
!488 = !DILocation(line: 510, column: 42, scope: !484)
!489 = !DILocalVariable(name: "op", scope: !484, file: !319, line: 512, type: !317)
!490 = !DILocation(line: 512, column: 22, scope: !484)
!491 = !DILocation(line: 514, column: 4, scope: !484)
!492 = !DILocation(line: 516, column: 29, scope: !484)
!493 = !DILocation(line: 516, column: 41, scope: !484)
!494 = !DILocation(line: 516, column: 48, scope: !484)
!495 = !DILocation(line: 516, column: 9, scope: !484)
!496 = !DILocation(line: 516, column: 7, scope: !484)
!497 = !DILocation(line: 517, column: 11, scope: !484)
!498 = !DILocation(line: 517, column: 18, scope: !484)
!499 = !DILocation(line: 517, column: 4, scope: !484)
!500 = !DILocation(line: 518, column: 4, scope: !484)
!501 = !DILocation(line: 518, column: 11, scope: !484)
!502 = !DILocation(line: 518, column: 22, scope: !484)
!503 = !DILocation(line: 520, column: 33, scope: !484)
!504 = !DILocation(line: 520, column: 55, scope: !484)
!505 = !DILocation(line: 520, column: 40, scope: !484)
!506 = !DILocation(line: 520, column: 11, scope: !484)
!507 = !DILocation(line: 520, column: 4, scope: !484)
!508 = distinct !DISubprogram(name: "VmBackupSyncDriverRelease", scope: !319, file: !319, line: 541, type: !293, isLocal: true, isDefinition: true, scopeLine: 542, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !343)
!509 = !DILocalVariable(name: "provider", arg: 1, scope: !508, file: !319, line: 541, type: !277)
!510 = !DILocation(line: 541, column: 56, scope: !508)
!511 = !DILocation(line: 543, column: 9, scope: !508)
!512 = !DILocation(line: 543, column: 4, scope: !508)
!513 = !DILocation(line: 544, column: 1, scope: !508)
!514 = distinct !DISubprogram(name: "VmBackupNewDriverOp", scope: !319, file: !319, line: 210, type: !515, isLocal: true, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !343)
!515 = !DISubroutineType(types: !516)
!516 = !{!317, !51, !248, !313, !92, !248}
!517 = !DILocalVariable(name: "state", arg: 1, scope: !514, file: !319, line: 210, type: !51)
!518 = !DILocation(line: 210, column: 36, scope: !514)
!519 = !DILocalVariable(name: "freeze", arg: 2, scope: !514, file: !319, line: 211, type: !248)
!520 = !DILocation(line: 211, column: 26, scope: !514)
!521 = !DILocalVariable(name: "handle", arg: 3, scope: !514, file: !319, line: 212, type: !313)
!522 = !DILocation(line: 212, column: 39, scope: !514)
!523 = !DILocalVariable(name: "volumes", arg: 4, scope: !514, file: !319, line: 213, type: !92)
!524 = !DILocation(line: 213, column: 33, scope: !514)
!525 = !DILocalVariable(name: "useNullDriverPrefs", arg: 5, scope: !514, file: !319, line: 214, type: !248)
!526 = !DILocation(line: 214, column: 26, scope: !514)
!527 = !DILocalVariable(name: "success", scope: !514, file: !319, line: 216, type: !248)
!528 = !DILocation(line: 216, column: 9, scope: !514)
!529 = !DILocalVariable(name: "op", scope: !514, file: !319, line: 217, type: !317)
!530 = !DILocation(line: 217, column: 22, scope: !514)
!531 = !DILocation(line: 219, column: 4, scope: !514)
!532 = distinct !{!532, !531}
!533 = !DILocation(line: 219, column: 13, scope: !534)
!534 = !DILexicalBlockFile(scope: !535, file: !319, discriminator: 1)
!535 = distinct !DILexicalBlock(scope: !536, file: !319, line: 219, column: 12)
!536 = distinct !DILexicalBlock(scope: !514, file: !319, line: 219, column: 6)
!537 = !DILocation(line: 219, column: 20, scope: !534)
!538 = !DILocation(line: 219, column: 3, scope: !534)
!539 = !DILocation(line: 219, column: 7, scope: !540)
!540 = !DILexicalBlockFile(scope: !535, file: !319, discriminator: 2)
!541 = !DILocation(line: 219, column: 6, scope: !540)
!542 = !DILocation(line: 219, column: 14, scope: !540)
!543 = !DILocation(line: 219, column: 5, scope: !540)
!544 = !DILocation(line: 219, column: 9, scope: !545)
!545 = !DILexicalBlockFile(scope: !535, file: !319, discriminator: 3)
!546 = !DILocation(line: 219, column: 12, scope: !545)
!547 = !DILocation(line: 219, column: 19, scope: !548)
!548 = !DILexicalBlockFile(scope: !549, file: !319, discriminator: 4)
!549 = distinct !DILexicalBlock(scope: !535, file: !319, line: 219, column: 17)
!550 = !DILocation(line: 219, column: 28, scope: !551)
!551 = !DILexicalBlockFile(scope: !552, file: !319, discriminator: 5)
!552 = distinct !DILexicalBlock(scope: !535, file: !319, line: 219, column: 26)
!553 = !DILocation(line: 219, column: 166, scope: !551)
!554 = !DILocation(line: 219, column: 9, scope: !555)
!555 = !DILexicalBlockFile(scope: !536, file: !319, discriminator: 6)
!556 = !DILocation(line: 223, column: 9, scope: !514)
!557 = !DILocation(line: 223, column: 7, scope: !514)
!558 = !DILocation(line: 224, column: 11, scope: !514)
!559 = !DILocation(line: 224, column: 4, scope: !514)
!560 = !DILocation(line: 226, column: 4, scope: !514)
!561 = !DILocation(line: 226, column: 8, scope: !514)
!562 = !DILocation(line: 226, column: 18, scope: !514)
!563 = !DILocation(line: 226, column: 26, scope: !514)
!564 = !DILocation(line: 227, column: 4, scope: !514)
!565 = !DILocation(line: 227, column: 8, scope: !514)
!566 = !DILocation(line: 227, column: 18, scope: !514)
!567 = !DILocation(line: 227, column: 27, scope: !514)
!568 = !DILocation(line: 228, column: 4, scope: !514)
!569 = !DILocation(line: 228, column: 8, scope: !514)
!570 = !DILocation(line: 228, column: 18, scope: !514)
!571 = !DILocation(line: 228, column: 28, scope: !514)
!572 = !DILocation(line: 229, column: 17, scope: !514)
!573 = !DILocation(line: 229, column: 4, scope: !514)
!574 = !DILocation(line: 229, column: 8, scope: !514)
!575 = !DILocation(line: 229, column: 15, scope: !514)
!576 = !DILocation(line: 230, column: 18, scope: !514)
!577 = !DILocation(line: 230, column: 4, scope: !514)
!578 = !DILocation(line: 230, column: 8, scope: !514)
!579 = !DILocation(line: 230, column: 16, scope: !514)
!580 = !DILocation(line: 232, column: 43, scope: !514)
!581 = !DILocation(line: 232, column: 22, scope: !514)
!582 = !DILocation(line: 232, column: 4, scope: !514)
!583 = !DILocation(line: 232, column: 8, scope: !514)
!584 = !DILocation(line: 232, column: 19, scope: !514)
!585 = !DILocation(line: 233, column: 23, scope: !514)
!586 = !DILocation(line: 233, column: 30, scope: !514)
!587 = !DILocation(line: 233, column: 22, scope: !514)
!588 = !DILocation(line: 233, column: 41, scope: !589)
!589 = !DILexicalBlockFile(scope: !514, file: !319, discriminator: 1)
!590 = !DILocation(line: 233, column: 40, scope: !589)
!591 = !DILocation(line: 233, column: 22, scope: !589)
!592 = !DILocation(line: 233, column: 22, scope: !593)
!593 = !DILexicalBlockFile(scope: !514, file: !319, discriminator: 2)
!594 = !DILocation(line: 233, column: 22, scope: !595)
!595 = !DILexicalBlockFile(scope: !514, file: !319, discriminator: 3)
!596 = !DILocation(line: 233, column: 5, scope: !595)
!597 = !DILocation(line: 233, column: 9, scope: !595)
!598 = !DILocation(line: 233, column: 20, scope: !595)
!599 = !DILocation(line: 235, column: 8, scope: !600)
!600 = distinct !DILexicalBlock(scope: !514, file: !319, line: 235, column: 8)
!601 = !DILocation(line: 235, column: 8, scope: !514)
!602 = !DILocation(line: 236, column: 35, scope: !603)
!603 = distinct !DILexicalBlock(scope: !600, file: !319, line: 235, column: 16)
!604 = !DILocation(line: 236, column: 39, scope: !603)
!605 = !DILocation(line: 237, column: 35, scope: !603)
!606 = !DILocation(line: 238, column: 35, scope: !603)
!607 = !DILocation(line: 238, column: 42, scope: !603)
!608 = !DILocation(line: 237, column: 35, scope: !609)
!609 = !DILexicalBlockFile(scope: !603, file: !319, discriminator: 1)
!610 = !DILocation(line: 237, column: 35, scope: !611)
!611 = !DILexicalBlockFile(scope: !603, file: !319, discriminator: 2)
!612 = !DILocation(line: 237, column: 35, scope: !613)
!613 = !DILexicalBlockFile(scope: !603, file: !319, discriminator: 3)
!614 = !DILocation(line: 239, column: 35, scope: !603)
!615 = !DILocation(line: 239, column: 39, scope: !603)
!616 = !DILocation(line: 240, column: 35, scope: !603)
!617 = !DILocation(line: 240, column: 42, scope: !603)
!618 = !DILocation(line: 236, column: 17, scope: !609)
!619 = !DILocation(line: 236, column: 15, scope: !609)
!620 = !DILocation(line: 241, column: 4, scope: !603)
!621 = !DILocation(line: 242, column: 38, scope: !622)
!622 = distinct !DILexicalBlock(scope: !600, file: !319, line: 241, column: 11)
!623 = !DILocation(line: 242, column: 46, scope: !622)
!624 = !DILocation(line: 242, column: 50, scope: !622)
!625 = !DILocation(line: 242, column: 45, scope: !622)
!626 = !DILocation(line: 242, column: 22, scope: !622)
!627 = !DILocation(line: 242, column: 7, scope: !622)
!628 = !DILocation(line: 242, column: 11, scope: !622)
!629 = !DILocation(line: 242, column: 20, scope: !622)
!630 = !DILocation(line: 243, column: 36, scope: !622)
!631 = !DILocation(line: 243, column: 40, scope: !622)
!632 = !DILocation(line: 243, column: 17, scope: !622)
!633 = !DILocation(line: 243, column: 15, scope: !622)
!634 = !DILocation(line: 245, column: 9, scope: !635)
!635 = distinct !DILexicalBlock(scope: !514, file: !319, line: 245, column: 8)
!636 = !DILocation(line: 245, column: 8, scope: !514)
!637 = !DILocation(line: 246, column: 72, scope: !638)
!638 = distinct !DILexicalBlock(scope: !635, file: !319, line: 245, column: 18)
!639 = !DILocation(line: 246, column: 7, scope: !638)
!640 = !DILocation(line: 247, column: 14, scope: !638)
!641 = !DILocation(line: 247, column: 18, scope: !638)
!642 = !DILocation(line: 247, column: 7, scope: !638)
!643 = !DILocation(line: 248, column: 27, scope: !638)
!644 = !DILocation(line: 248, column: 31, scope: !638)
!645 = !DILocation(line: 248, column: 7, scope: !638)
!646 = !DILocation(line: 249, column: 12, scope: !638)
!647 = !DILocation(line: 249, column: 7, scope: !638)
!648 = !DILocation(line: 250, column: 10, scope: !638)
!649 = !DILocation(line: 251, column: 4, scope: !638)
!650 = !DILocation(line: 252, column: 11, scope: !514)
!651 = !DILocation(line: 252, column: 4, scope: !514)
!652 = !DILocation(line: 253, column: 1, scope: !514)
!653 = distinct !DISubprogram(name: "VmBackup_SetCurrentOp", scope: !8, file: !8, line: 193, type: !654, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !343)
!654 = !DISubroutineType(types: !655)
!655 = !{!248, !51, !97, !656, !92}
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupCallback", file: !8, line: 143, baseType: !657)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64, align: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!248, !51}
!660 = !DILocalVariable(name: "state", arg: 1, scope: !653, file: !8, line: 193, type: !51)
!661 = !DILocation(line: 193, column: 38, scope: !653)
!662 = !DILocalVariable(name: "op", arg: 2, scope: !653, file: !8, line: 194, type: !97)
!663 = !DILocation(line: 194, column: 35, scope: !653)
!664 = !DILocalVariable(name: "callback", arg: 3, scope: !653, file: !8, line: 195, type: !656)
!665 = !DILocation(line: 195, column: 40, scope: !653)
!666 = !DILocalVariable(name: "currentOpName", arg: 4, scope: !653, file: !8, line: 196, type: !92)
!667 = !DILocation(line: 196, column: 35, scope: !653)
!668 = !DILocation(line: 202, column: 50, scope: !653)
!669 = !DILocation(line: 202, column: 57, scope: !653)
!670 = !DILocation(line: 202, column: 18, scope: !653)
!671 = !DILocation(line: 202, column: 4, scope: !672)
!672 = !DILexicalBlockFile(scope: !653, file: !8, discriminator: 1)
!673 = !DILocation(line: 204, column: 23, scope: !653)
!674 = !DILocation(line: 204, column: 4, scope: !653)
!675 = !DILocation(line: 204, column: 11, scope: !653)
!676 = !DILocation(line: 204, column: 21, scope: !653)
!677 = !DILocation(line: 205, column: 22, scope: !653)
!678 = !DILocation(line: 205, column: 4, scope: !653)
!679 = !DILocation(line: 205, column: 11, scope: !653)
!680 = !DILocation(line: 205, column: 20, scope: !653)
!681 = !DILocation(line: 206, column: 27, scope: !653)
!682 = !DILocation(line: 206, column: 4, scope: !653)
!683 = !DILocation(line: 206, column: 11, scope: !653)
!684 = !DILocation(line: 206, column: 25, scope: !653)
!685 = !DILocation(line: 207, column: 27, scope: !653)
!686 = !DILocation(line: 207, column: 36, scope: !653)
!687 = !DILocation(line: 207, column: 43, scope: !653)
!688 = !DILocation(line: 207, column: 46, scope: !672)
!689 = !DILocation(line: 207, column: 49, scope: !672)
!690 = !DILocation(line: 207, column: 43, scope: !691)
!691 = !DILexicalBlockFile(scope: !653, file: !8, discriminator: 2)
!692 = !DILocation(line: 207, column: 26, scope: !691)
!693 = !DILocation(line: 207, column: 4, scope: !691)
!694 = !DILocation(line: 207, column: 11, scope: !691)
!695 = !DILocation(line: 207, column: 24, scope: !691)
!696 = !DILocation(line: 209, column: 52, scope: !653)
!697 = !DILocation(line: 209, column: 59, scope: !653)
!698 = !DILocation(line: 209, column: 20, scope: !653)
!699 = !DILocation(line: 209, column: 4, scope: !672)
!700 = !DILocation(line: 211, column: 12, scope: !653)
!701 = !DILocation(line: 211, column: 15, scope: !653)
!702 = !DILocation(line: 211, column: 11, scope: !653)
!703 = !DILocation(line: 211, column: 4, scope: !653)
!704 = distinct !DISubprogram(name: "VmBackupSyncDriverReadyForSnapshot", scope: !319, file: !319, line: 275, type: !658, isLocal: true, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !343)
!705 = !DILocalVariable(name: "state", arg: 1, scope: !704, file: !319, line: 275, type: !51)
!706 = !DILocation(line: 275, column: 51, scope: !704)
!707 = !DILocalVariable(name: "handle", scope: !704, file: !319, line: 277, type: !313)
!708 = !DILocation(line: 277, column: 22, scope: !704)
!709 = !DILocation(line: 277, column: 31, scope: !704)
!710 = !DILocation(line: 277, column: 38, scope: !704)
!711 = !DILocation(line: 279, column: 4, scope: !704)
!712 = !DILocation(line: 280, column: 8, scope: !713)
!713 = distinct !DILexicalBlock(scope: !704, file: !319, line: 280, column: 8)
!714 = !DILocation(line: 280, column: 15, scope: !713)
!715 = !DILocation(line: 280, column: 22, scope: !713)
!716 = !DILocation(line: 280, column: 26, scope: !717)
!717 = !DILexicalBlockFile(scope: !713, file: !319, discriminator: 1)
!718 = !DILocation(line: 280, column: 25, scope: !717)
!719 = !DILocation(line: 280, column: 33, scope: !717)
!720 = !DILocation(line: 280, column: 8, scope: !717)
!721 = !DILocalVariable(name: "success", scope: !722, file: !319, line: 281, type: !248)
!722 = distinct !DILexicalBlock(scope: !713, file: !319, line: 280, column: 63)
!723 = !DILocation(line: 281, column: 12, scope: !722)
!724 = !DILocation(line: 282, column: 17, scope: !722)
!725 = !DILocation(line: 282, column: 15, scope: !722)
!726 = !DILocation(line: 283, column: 11, scope: !727)
!727 = distinct !DILexicalBlock(scope: !722, file: !319, line: 283, column: 11)
!728 = !DILocation(line: 283, column: 11, scope: !722)
!729 = !DILocation(line: 284, column: 10, scope: !730)
!730 = distinct !DILexicalBlock(scope: !727, file: !319, line: 283, column: 20)
!731 = !DILocation(line: 284, column: 17, scope: !730)
!732 = !DILocation(line: 284, column: 30, scope: !730)
!733 = !DILocation(line: 285, column: 7, scope: !730)
!734 = !DILocation(line: 291, column: 10, scope: !735)
!735 = distinct !DILexicalBlock(scope: !727, file: !319, line: 285, column: 14)
!736 = !DILocation(line: 292, column: 34, scope: !737)
!737 = distinct !DILexicalBlock(scope: !735, file: !319, line: 292, column: 14)
!738 = !DILocation(line: 292, column: 15, scope: !737)
!739 = !DILocation(line: 292, column: 14, scope: !735)
!740 = !DILocation(line: 293, column: 13, scope: !741)
!741 = distinct !DILexicalBlock(scope: !737, file: !319, line: 292, column: 43)
!742 = !DILocation(line: 294, column: 10, scope: !741)
!743 = !DILocation(line: 295, column: 10, scope: !735)
!744 = !DILocation(line: 295, column: 17, scope: !735)
!745 = !DILocation(line: 295, column: 30, scope: !735)
!746 = !DILocation(line: 297, column: 14, scope: !722)
!747 = !DILocation(line: 297, column: 7, scope: !722)
!748 = !DILocation(line: 301, column: 4, scope: !704)
!749 = !DILocation(line: 301, column: 11, scope: !704)
!750 = !DILocation(line: 301, column: 24, scope: !704)
!751 = !DILocation(line: 302, column: 4, scope: !704)
!752 = !DILocation(line: 303, column: 1, scope: !704)
!753 = distinct !DISubprogram(name: "VmBackupDriverOpQuery", scope: !319, file: !319, line: 95, type: !754, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !343)
!754 = !DISubroutineType(types: !755)
!755 = !{!105, !97}
!756 = !DILocalVariable(name: "_op", arg: 1, scope: !753, file: !319, line: 95, type: !97)
!757 = !DILocation(line: 95, column: 35, scope: !753)
!758 = !DILocalVariable(name: "op", scope: !753, file: !319, line: 97, type: !317)
!759 = !DILocation(line: 97, column: 22, scope: !753)
!760 = !DILocation(line: 97, column: 48, scope: !753)
!761 = !DILocation(line: 97, column: 27, scope: !753)
!762 = !DILocalVariable(name: "ret", scope: !753, file: !319, line: 98, type: !105)
!763 = !DILocation(line: 98, column: 21, scope: !753)
!764 = !DILocation(line: 100, column: 8, scope: !765)
!765 = distinct !DILexicalBlock(scope: !753, file: !319, line: 100, column: 8)
!766 = !DILocation(line: 100, column: 12, scope: !765)
!767 = !DILocation(line: 100, column: 8, scope: !753)
!768 = !DILocalVariable(name: "st", scope: !769, file: !319, line: 101, type: !770)
!769 = distinct !DILexicalBlock(scope: !765, file: !319, line: 100, column: 20)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyncDriverStatus", file: !44, line: 49, baseType: !43)
!771 = !DILocation(line: 101, column: 24, scope: !769)
!772 = !DILocation(line: 101, column: 53, scope: !769)
!773 = !DILocation(line: 101, column: 57, scope: !769)
!774 = !DILocation(line: 101, column: 52, scope: !769)
!775 = !DILocation(line: 101, column: 29, scope: !769)
!776 = !DILocation(line: 103, column: 72, scope: !769)
!777 = !DILocation(line: 103, column: 7, scope: !769)
!778 = !DILocation(line: 104, column: 14, scope: !769)
!779 = !DILocation(line: 104, column: 7, scope: !769)
!780 = !DILocation(line: 106, column: 14, scope: !781)
!781 = distinct !DILexicalBlock(scope: !769, file: !319, line: 104, column: 18)
!782 = !DILocation(line: 107, column: 10, scope: !781)
!783 = !DILocation(line: 110, column: 14, scope: !784)
!784 = distinct !DILexicalBlock(scope: !781, file: !319, line: 110, column: 14)
!785 = !DILocation(line: 110, column: 18, scope: !784)
!786 = !DILocation(line: 110, column: 14, scope: !781)
!787 = !DILocation(line: 111, column: 32, scope: !788)
!788 = distinct !DILexicalBlock(scope: !784, file: !319, line: 110, column: 28)
!789 = !DILocation(line: 111, column: 36, scope: !788)
!790 = !DILocation(line: 111, column: 13, scope: !788)
!791 = !DILocation(line: 112, column: 10, scope: !788)
!792 = !DILocation(line: 117, column: 10, scope: !781)
!793 = !DILocation(line: 117, column: 14, scope: !781)
!794 = !DILocation(line: 117, column: 25, scope: !781)
!795 = !DILocation(line: 118, column: 17, scope: !781)
!796 = !DILocation(line: 118, column: 21, scope: !781)
!797 = !DILocation(line: 118, column: 16, scope: !781)
!798 = !DILocation(line: 118, column: 14, scope: !781)
!799 = !DILocation(line: 119, column: 10, scope: !781)
!800 = !DILocation(line: 122, column: 29, scope: !781)
!801 = !DILocation(line: 122, column: 33, scope: !781)
!802 = !DILocation(line: 122, column: 10, scope: !781)
!803 = !DILocation(line: 123, column: 14, scope: !781)
!804 = !DILocation(line: 124, column: 10, scope: !781)
!805 = !DILocation(line: 126, column: 4, scope: !769)
!806 = !DILocation(line: 127, column: 11, scope: !807)
!807 = distinct !DILexicalBlock(scope: !808, file: !319, line: 127, column: 11)
!808 = distinct !DILexicalBlock(scope: !765, file: !319, line: 126, column: 11)
!809 = !DILocation(line: 127, column: 15, scope: !807)
!810 = !DILocation(line: 127, column: 24, scope: !807)
!811 = !DILocation(line: 127, column: 11, scope: !808)
!812 = !DILocation(line: 128, column: 27, scope: !813)
!813 = distinct !DILexicalBlock(scope: !807, file: !319, line: 127, column: 32)
!814 = !DILocation(line: 128, column: 31, scope: !813)
!815 = !DILocation(line: 128, column: 10, scope: !813)
!816 = !DILocation(line: 129, column: 7, scope: !813)
!817 = !DILocation(line: 130, column: 11, scope: !808)
!818 = !DILocation(line: 133, column: 11, scope: !753)
!819 = !DILocation(line: 133, column: 4, scope: !753)
!820 = distinct !DISubprogram(name: "VmBackupDriverOpCancel", scope: !319, file: !319, line: 184, type: !821, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !343)
!821 = !DISubroutineType(types: !822)
!822 = !{null, !97}
!823 = !DILocalVariable(name: "_op", arg: 1, scope: !820, file: !319, line: 184, type: !97)
!824 = !DILocation(line: 184, column: 36, scope: !820)
!825 = !DILocalVariable(name: "op", scope: !820, file: !319, line: 186, type: !317)
!826 = !DILocation(line: 186, column: 22, scope: !820)
!827 = !DILocation(line: 186, column: 48, scope: !820)
!828 = !DILocation(line: 186, column: 27, scope: !820)
!829 = !DILocation(line: 187, column: 4, scope: !820)
!830 = !DILocation(line: 187, column: 8, scope: !820)
!831 = !DILocation(line: 187, column: 17, scope: !820)
!832 = !DILocation(line: 188, column: 1, scope: !820)
!833 = distinct !DISubprogram(name: "VmBackupDriverOpRelease", scope: !319, file: !319, line: 154, type: !821, isLocal: true, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !343)
!834 = !DILocalVariable(name: "_op", arg: 1, scope: !833, file: !319, line: 154, type: !97)
!835 = !DILocation(line: 154, column: 37, scope: !833)
!836 = !DILocalVariable(name: "op", scope: !833, file: !319, line: 156, type: !317)
!837 = !DILocation(line: 156, column: 22, scope: !833)
!838 = !DILocation(line: 156, column: 48, scope: !833)
!839 = !DILocation(line: 156, column: 27, scope: !833)
!840 = !DILocation(line: 158, column: 11, scope: !833)
!841 = !DILocation(line: 158, column: 15, scope: !833)
!842 = !DILocation(line: 158, column: 4, scope: !833)
!843 = !DILocation(line: 159, column: 24, scope: !833)
!844 = !DILocation(line: 159, column: 28, scope: !833)
!845 = !DILocation(line: 159, column: 4, scope: !833)
!846 = !DILocation(line: 160, column: 9, scope: !833)
!847 = !DILocation(line: 160, column: 4, scope: !833)
!848 = !DILocation(line: 161, column: 1, scope: !833)
!849 = distinct !DISubprogram(name: "VmBackupDriverThaw", scope: !319, file: !319, line: 66, type: !850, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !343)
!850 = !DISubroutineType(types: !851)
!851 = !{!248, !313}
!852 = !DILocalVariable(name: "handle", arg: 1, scope: !849, file: !319, line: 66, type: !313)
!853 = !DILocation(line: 66, column: 38, scope: !849)
!854 = !DILocalVariable(name: "success", scope: !849, file: !319, line: 68, type: !248)
!855 = !DILocation(line: 68, column: 9, scope: !849)
!856 = !DILocation(line: 68, column: 36, scope: !849)
!857 = !DILocation(line: 68, column: 35, scope: !849)
!858 = !DILocation(line: 68, column: 19, scope: !849)
!859 = !DILocation(line: 69, column: 27, scope: !849)
!860 = !DILocation(line: 69, column: 4, scope: !849)
!861 = !DILocation(line: 70, column: 11, scope: !849)
!862 = !DILocation(line: 70, column: 4, scope: !849)
