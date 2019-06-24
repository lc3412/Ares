; ModuleID = './libvmbackup_la-nullProvider.o.i'
source_filename = "./libvmbackup_la-nullProvider.o.i"
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

@.str = private unnamed_addr constant [9 x i8] c"vmbackup\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"*** %s\0A\00", align 1
@__FUNCTION__.VmBackupNullStart = private unnamed_addr constant [18 x i8] c"VmBackupNullStart\00", align 1
@__FUNCTION__.VmBackupNullReadyForSnapshot = private unnamed_addr constant [29 x i8] c"VmBackupNullReadyForSnapshot\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"prov.snapshotCommit\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to send commit event to host\00", align 1
@__FUNCTION__.VmBackupNullSnapshotDone = private unnamed_addr constant [25 x i8] c"VmBackupNullSnapshotDone\00", align 1

; Function Attrs: nounwind uwtable
define %struct.VmBackupSyncProvider* @VmBackup_NewNullProvider() #0 !dbg !312 {
  %1 = alloca %struct.VmBackupSyncProvider*, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupSyncProvider** %1, metadata !317, metadata !318), !dbg !319
  %2 = call noalias i8* @g_malloc_n(i64 1, i64 32), !dbg !320
  %3 = bitcast i8* %2 to %struct.VmBackupSyncProvider*, !dbg !321
  store %struct.VmBackupSyncProvider* %3, %struct.VmBackupSyncProvider** %1, align 8, !dbg !322
  %4 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %1, align 8, !dbg !323
  %5 = getelementptr inbounds %struct.VmBackupSyncProvider, %struct.VmBackupSyncProvider* %4, i32 0, i32 0, !dbg !324
  store void (%struct.ToolsAppCtx*, i8*)* @VmBackupNullStart, void (%struct.ToolsAppCtx*, i8*)** %5, align 8, !dbg !325
  %6 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %1, align 8, !dbg !326
  %7 = getelementptr inbounds %struct.VmBackupSyncProvider, %struct.VmBackupSyncProvider* %6, i32 0, i32 1, !dbg !327
  store i8 (%struct.VmBackupState*, i8*)* @VmBackupNullSnapshotDone, i8 (%struct.VmBackupState*, i8*)** %7, align 8, !dbg !328
  %8 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %1, align 8, !dbg !329
  %9 = getelementptr inbounds %struct.VmBackupSyncProvider, %struct.VmBackupSyncProvider* %8, i32 0, i32 2, !dbg !330
  store void (%struct.VmBackupSyncProvider*)* @VmBackupNullRelease, void (%struct.VmBackupSyncProvider*)** %9, align 8, !dbg !331
  %10 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %1, align 8, !dbg !332
  %11 = getelementptr inbounds %struct.VmBackupSyncProvider, %struct.VmBackupSyncProvider* %10, i32 0, i32 3, !dbg !333
  store i8* null, i8** %11, align 8, !dbg !334
  %12 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %1, align 8, !dbg !335
  ret %struct.VmBackupSyncProvider* %12, !dbg !336
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare noalias i8* @g_malloc_n(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @VmBackupNullStart(%struct.ToolsAppCtx*, i8*) #0 !dbg !337 {
  %3 = alloca %struct.ToolsAppCtx*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.VmBackupOp*, align 8
  %6 = alloca %struct.VmBackupState*, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %3, metadata !340, metadata !318), !dbg !341
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !342, metadata !318), !dbg !343
  call void @llvm.dbg.declare(metadata %struct.VmBackupOp** %5, metadata !344, metadata !318), !dbg !345
  call void @llvm.dbg.declare(metadata %struct.VmBackupState** %6, metadata !346, metadata !318), !dbg !347
  %7 = load i8*, i8** %4, align 8, !dbg !348
  %8 = bitcast i8* %7 to %struct.VmBackupState*, !dbg !349
  store %struct.VmBackupState* %8, %struct.VmBackupState** %6, align 8, !dbg !347
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.VmBackupNullStart, i32 0, i32 0)), !dbg !350
  %9 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !351
  %10 = bitcast i8* %9 to %struct.VmBackupOp*, !dbg !352
  store %struct.VmBackupOp* %10, %struct.VmBackupOp** %5, align 8, !dbg !353
  %11 = load %struct.VmBackupOp*, %struct.VmBackupOp** %5, align 8, !dbg !354
  %12 = getelementptr inbounds %struct.VmBackupOp, %struct.VmBackupOp* %11, i32 0, i32 0, !dbg !355
  store i32 (%struct.VmBackupOp*)* @VmBackupNullOpQuery, i32 (%struct.VmBackupOp*)** %12, align 8, !dbg !356
  %13 = load %struct.VmBackupOp*, %struct.VmBackupOp** %5, align 8, !dbg !357
  %14 = getelementptr inbounds %struct.VmBackupOp, %struct.VmBackupOp* %13, i32 0, i32 2, !dbg !358
  store void (%struct.VmBackupOp*)* @VmBackupNullOpCancel, void (%struct.VmBackupOp*)** %14, align 8, !dbg !359
  %15 = load %struct.VmBackupOp*, %struct.VmBackupOp** %5, align 8, !dbg !360
  %16 = getelementptr inbounds %struct.VmBackupOp, %struct.VmBackupOp* %15, i32 0, i32 1, !dbg !361
  store void (%struct.VmBackupOp*)* @VmBackupNullOpRelease, void (%struct.VmBackupOp*)** %16, align 8, !dbg !362
  call void @sync() #5, !dbg !363
  %17 = load %struct.VmBackupState*, %struct.VmBackupState** %6, align 8, !dbg !364
  %18 = load %struct.VmBackupOp*, %struct.VmBackupOp** %5, align 8, !dbg !365
  %19 = call signext i8 @VmBackup_SetCurrentOp(%struct.VmBackupState* %17, %struct.VmBackupOp* %18, i8 (%struct.VmBackupState*)* @VmBackupNullReadyForSnapshot, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.VmBackupNullStart, i32 0, i32 0)), !dbg !366
  ret void, !dbg !367
}

; Function Attrs: nounwind uwtable
define internal signext i8 @VmBackupNullSnapshotDone(%struct.VmBackupState*, i8*) #0 !dbg !368 {
  %3 = alloca %struct.VmBackupState*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.VmBackupOp*, align 8
  store %struct.VmBackupState* %0, %struct.VmBackupState** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupState** %3, metadata !369, metadata !318), !dbg !370
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !371, metadata !318), !dbg !372
  call void @llvm.dbg.declare(metadata %struct.VmBackupOp** %5, metadata !373, metadata !318), !dbg !374
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.VmBackupNullSnapshotDone, i32 0, i32 0)), !dbg !375
  %6 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !376
  %7 = bitcast i8* %6 to %struct.VmBackupOp*, !dbg !377
  store %struct.VmBackupOp* %7, %struct.VmBackupOp** %5, align 8, !dbg !378
  %8 = load %struct.VmBackupOp*, %struct.VmBackupOp** %5, align 8, !dbg !379
  %9 = getelementptr inbounds %struct.VmBackupOp, %struct.VmBackupOp* %8, i32 0, i32 0, !dbg !380
  store i32 (%struct.VmBackupOp*)* @VmBackupNullOpQuery, i32 (%struct.VmBackupOp*)** %9, align 8, !dbg !381
  %10 = load %struct.VmBackupOp*, %struct.VmBackupOp** %5, align 8, !dbg !382
  %11 = getelementptr inbounds %struct.VmBackupOp, %struct.VmBackupOp* %10, i32 0, i32 2, !dbg !383
  store void (%struct.VmBackupOp*)* @VmBackupNullOpCancel, void (%struct.VmBackupOp*)** %11, align 8, !dbg !384
  %12 = load %struct.VmBackupOp*, %struct.VmBackupOp** %5, align 8, !dbg !385
  %13 = getelementptr inbounds %struct.VmBackupOp, %struct.VmBackupOp* %12, i32 0, i32 1, !dbg !386
  store void (%struct.VmBackupOp*)* @VmBackupNullOpRelease, void (%struct.VmBackupOp*)** %13, align 8, !dbg !387
  %14 = load %struct.VmBackupState*, %struct.VmBackupState** %3, align 8, !dbg !388
  %15 = load %struct.VmBackupOp*, %struct.VmBackupOp** %5, align 8, !dbg !389
  %16 = call signext i8 @VmBackup_SetCurrentOp(%struct.VmBackupState* %14, %struct.VmBackupOp* %15, i8 (%struct.VmBackupState*)* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.VmBackupNullSnapshotDone, i32 0, i32 0)), !dbg !390
  ret i8 1, !dbg !391
}

; Function Attrs: nounwind uwtable
define internal void @VmBackupNullRelease(%struct.VmBackupSyncProvider*) #0 !dbg !392 {
  %2 = alloca %struct.VmBackupSyncProvider*, align 8
  store %struct.VmBackupSyncProvider* %0, %struct.VmBackupSyncProvider** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupSyncProvider** %2, metadata !395, metadata !318), !dbg !396
  %3 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %2, align 8, !dbg !397
  %4 = bitcast %struct.VmBackupSyncProvider* %3 to i8*, !dbg !397
  call void @g_free(i8* %4), !dbg !398
  ret void, !dbg !399
}

declare void @g_log(i8*, i32, i8*, ...) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @VmBackupNullOpQuery(%struct.VmBackupOp*) #0 !dbg !400 {
  %2 = alloca %struct.VmBackupOp*, align 8
  store %struct.VmBackupOp* %0, %struct.VmBackupOp** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupOp** %2, metadata !403, metadata !318), !dbg !404
  ret i32 1, !dbg !405
}

; Function Attrs: nounwind uwtable
define internal void @VmBackupNullOpCancel(%struct.VmBackupOp*) #0 !dbg !406 {
  %2 = alloca %struct.VmBackupOp*, align 8
  store %struct.VmBackupOp* %0, %struct.VmBackupOp** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupOp** %2, metadata !409, metadata !318), !dbg !410
  ret void, !dbg !411
}

; Function Attrs: nounwind uwtable
define internal void @VmBackupNullOpRelease(%struct.VmBackupOp*) #0 !dbg !412 {
  %2 = alloca %struct.VmBackupOp*, align 8
  store %struct.VmBackupOp* %0, %struct.VmBackupOp** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupOp** %2, metadata !413, metadata !318), !dbg !414
  %3 = load %struct.VmBackupOp*, %struct.VmBackupOp** %2, align 8, !dbg !415
  %4 = bitcast %struct.VmBackupOp* %3 to i8*, !dbg !415
  call void @g_free(i8* %4), !dbg !416
  ret void, !dbg !417
}

; Function Attrs: nounwind
declare void @sync() #3

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @VmBackup_SetCurrentOp(%struct.VmBackupState*, %struct.VmBackupOp*, i8 (%struct.VmBackupState*)*, i8*) #4 !dbg !418 {
  %5 = alloca %struct.VmBackupState*, align 8
  %6 = alloca %struct.VmBackupOp*, align 8
  %7 = alloca i8 (%struct.VmBackupState*)*, align 8
  %8 = alloca i8*, align 8
  store %struct.VmBackupState* %0, %struct.VmBackupState** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupState** %5, metadata !425, metadata !318), !dbg !426
  store %struct.VmBackupOp* %1, %struct.VmBackupOp** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupOp** %6, metadata !427, metadata !318), !dbg !428
  store i8 (%struct.VmBackupState*)* %2, i8 (%struct.VmBackupState*)** %7, align 8
  call void @llvm.dbg.declare(metadata i8 (%struct.VmBackupState*)** %7, metadata !429, metadata !318), !dbg !430
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !431, metadata !318), !dbg !432
  %9 = load %struct.VmBackupState*, %struct.VmBackupState** %5, align 8, !dbg !433
  %10 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %9, i32 0, i32 3, !dbg !434
  %11 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %10), !dbg !435
  call void @g_mutex_lock(%union._GMutex* %11), !dbg !436
  %12 = load %struct.VmBackupOp*, %struct.VmBackupOp** %6, align 8, !dbg !438
  %13 = load %struct.VmBackupState*, %struct.VmBackupState** %5, align 8, !dbg !439
  %14 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %13, i32 0, i32 1, !dbg !440
  store %struct.VmBackupOp* %12, %struct.VmBackupOp** %14, align 8, !dbg !441
  %15 = load i8 (%struct.VmBackupState*)*, i8 (%struct.VmBackupState*)** %7, align 8, !dbg !442
  %16 = load %struct.VmBackupState*, %struct.VmBackupState** %5, align 8, !dbg !443
  %17 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %16, i32 0, i32 10, !dbg !444
  store i8 (%struct.VmBackupState*)* %15, i8 (%struct.VmBackupState*)** %17, align 8, !dbg !445
  %18 = load i8*, i8** %8, align 8, !dbg !446
  %19 = load %struct.VmBackupState*, %struct.VmBackupState** %5, align 8, !dbg !447
  %20 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %19, i32 0, i32 2, !dbg !448
  store i8* %18, i8** %20, align 8, !dbg !449
  %21 = load i8 (%struct.VmBackupState*)*, i8 (%struct.VmBackupState*)** %7, align 8, !dbg !450
  %22 = icmp ne i8 (%struct.VmBackupState*)* %21, null, !dbg !451
  br i1 %22, label %23, label %26, !dbg !452

; <label>:23:                                     ; preds = %4
  %24 = load %struct.VmBackupOp*, %struct.VmBackupOp** %6, align 8, !dbg !453
  %25 = icmp eq %struct.VmBackupOp* %24, null, !dbg !454
  br label %26

; <label>:26:                                     ; preds = %23, %4
  %27 = phi i1 [ false, %4 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32, !dbg !455
  %29 = trunc i32 %28 to i8, !dbg !457
  %30 = load %struct.VmBackupState*, %struct.VmBackupState** %5, align 8, !dbg !458
  %31 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %30, i32 0, i32 11, !dbg !459
  store i8 %29, i8* %31, align 8, !dbg !460
  %32 = load %struct.VmBackupState*, %struct.VmBackupState** %5, align 8, !dbg !461
  %33 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %32, i32 0, i32 3, !dbg !462
  %34 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %33), !dbg !463
  call void @g_mutex_unlock(%union._GMutex* %34), !dbg !464
  %35 = load %struct.VmBackupOp*, %struct.VmBackupOp** %6, align 8, !dbg !465
  %36 = icmp ne %struct.VmBackupOp* %35, null, !dbg !466
  %37 = zext i1 %36 to i32, !dbg !466
  %38 = trunc i32 %37 to i8, !dbg !467
  ret i8 %38, !dbg !468
}

; Function Attrs: nounwind uwtable
define internal signext i8 @VmBackupNullReadyForSnapshot(%struct.VmBackupState*) #0 !dbg !469 {
  %2 = alloca %struct.VmBackupState*, align 8
  %3 = alloca i8, align 1
  store %struct.VmBackupState* %0, %struct.VmBackupState** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupState** %2, metadata !470, metadata !318), !dbg !471
  call void @llvm.dbg.declare(metadata i8* %3, metadata !472, metadata !318), !dbg !473
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.VmBackupNullReadyForSnapshot, i32 0, i32 0)), !dbg !474
  %4 = call signext i8 @VmBackup_SendEvent(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)), !dbg !475
  store i8 %4, i8* %3, align 1, !dbg !476
  %5 = load i8, i8* %3, align 1, !dbg !477
  %6 = icmp ne i8 %5, 0, !dbg !477
  br i1 %6, label %7, label %10, !dbg !479

; <label>:7:                                      ; preds = %1
  %8 = load %struct.VmBackupState*, %struct.VmBackupState** %2, align 8, !dbg !480
  %9 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %8, i32 0, i32 28, !dbg !482
  store i32 1, i32* %9, align 4, !dbg !483
  br label %13, !dbg !484

; <label>:10:                                     ; preds = %1
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0)), !dbg !485
  %11 = load %struct.VmBackupState*, %struct.VmBackupState** %2, align 8, !dbg !487
  %12 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %11, i32 0, i32 28, !dbg !488
  store i32 3, i32* %12, align 4, !dbg !489
  br label %13

; <label>:13:                                     ; preds = %10, %7
  %14 = load i8, i8* %3, align 1, !dbg !490
  ret i8 %14, !dbg !491
}

declare void @g_free(i8*) #2

declare void @g_mutex_lock(%union._GMutex*) #2

declare %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex*) #2

declare void @g_mutex_unlock(%union._GMutex*) #2

declare signext i8 @VmBackup_SendEvent(i8*, i32, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!309, !310}
!llvm.ident = !{!311}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !43)
!1 = !DIFile(filename: "libvmbackup_la-nullProvider.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1574")
!2 = !{!3, !7, !14, !25, !31}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 232, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/plugin.h", directory: "/home/lichi/Desktop/open-vm-tools/line1574")
!5 = !{!6}
!6 = !DIEnumerator(name: "TOOLS_CORE_API_V1", value: 1)
!7 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !8, line: 43, size: 32, align: 32, elements: !9)
!8 = !DIFile(filename: "vmBackupInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line1574")
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
!32 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1574")
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
!43 = !{!44, !94, !102, !108}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupSyncProvider", file: !8, line: 163, baseType: !46)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmBackupSyncProvider", file: !8, line: 154, size: 256, align: 64, elements: !47)
!47 = !{!48, !95, !304, !308}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !46, file: !8, line: 158, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCorePoolCb", file: !50, line: 54, baseType: !51)
!50 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/threadPool.h", directory: "/home/lichi/Desktop/open-vm-tools/line1574")
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !54, !93}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppCtx", file: !4, line: 274, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppCtx", file: !4, line: 241, size: 576, align: 64, elements: !57)
!57 = !{!58, !60, !66, !70, !71, !76, !81, !86, !87, !88, !92}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !56, file: !4, line: 243, baseType: !59, size: 32, align: 32)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCoreAPI", file: !4, line: 234, baseType: !3)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !56, file: !4, line: 245, baseType: !61, size: 64, align: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !64, line: 46, baseType: !65)
!64 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1574")
!65 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "isVMware", scope: !56, file: !4, line: 247, baseType: !67, size: 32, align: 32, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !64, line: 50, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !64, line: 49, baseType: !69)
!69 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "errorCode", scope: !56, file: !4, line: 249, baseType: !69, size: 32, align: 32, offset: 160)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "mainLoop", scope: !56, file: !4, line: 251, baseType: !72, size: 64, align: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainLoop", file: !74, line: 56, baseType: !75)
!74 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line1574")
!75 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainLoop", file: !74, line: 56, flags: DIFlagFwdDecl)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !56, file: !4, line: 253, baseType: !77, size: 64, align: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !79, line: 48, baseType: !80)
!79 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line1574")
!80 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !79, line: 48, flags: DIFlagFwdDecl)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !56, file: !4, line: 255, baseType: !82, size: 64, align: 64, offset: 320)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !84, line: 48, baseType: !85)
!84 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1574")
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !84, line: 48, flags: DIFlagFwdDecl)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "blockFD", scope: !56, file: !4, line: 261, baseType: !69, size: 32, align: 32, offset: 384)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "uinputFD", scope: !56, file: !4, line: 263, baseType: !69, size: 32, align: 32, offset: 416)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !56, file: !4, line: 265, baseType: !89, size: 64, align: 64, offset: 448)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "serviceObj", scope: !56, file: !4, line: 273, baseType: !93, size: 64, align: 64, offset: 512)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !64, line: 77, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "snapshotDone", scope: !46, file: !8, line: 160, baseType: !96, size: 64, align: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupProviderCallback", file: !8, line: 144, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{!100, !102, !94}
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !101, line: 230, baseType: !65)
!101 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1574")
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupState", file: !8, line: 141, baseType: !104)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmBackupState", file: !8, line: 104, size: 1984, align: 64, elements: !105)
!105 = !{!106, !107, !123, !124, !171, !173, !174, !175, !253, !254, !255, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !271, !272, !273, !274, !275, !280, !281, !283, !285, !287, !299, !300, !301, !302, !303}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !104, file: !8, line: 105, baseType: !54, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "currentOp", scope: !104, file: !8, line: 106, baseType: !108, size: 64, align: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupOp", file: !8, line: 86, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmBackupOp", file: !8, line: 82, size: 192, align: 64, elements: !111)
!111 = !{!112, !118, !122}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "queryFn", scope: !110, file: !8, line: 83, baseType: !113, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!116, !117}
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupOpStatus", file: !8, line: 48, baseType: !7)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "releaseFn", scope: !110, file: !8, line: 84, baseType: !119, size: 64, align: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !117}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "cancelFn", scope: !110, file: !8, line: 85, baseType: !119, size: 64, align: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "currentOpName", scope: !104, file: !8, line: 107, baseType: !90, size: 64, align: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "opLock", scope: !104, file: !8, line: 108, baseType: !125, size: 384, align: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "GStaticMutex", file: !126, line: 140, baseType: !127)
!126 = !DIFile(filename: "/usr/include/glib-2.0/glib/deprecated/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line1574")
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 133, size: 384, align: 64, elements: !128)
!128 = !{!129, !142}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !127, file: !126, line: 135, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMutex", file: !132, line: 51, baseType: !133)
!132 = !DIFile(filename: "/usr/include/glib-2.0/glib/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line1574")
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_GMutex", file: !132, line: 58, size: 64, align: 64, elements: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !133, file: !132, line: 61, baseType: !93, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !133, file: !132, line: 62, baseType: !137, size: 64, align: 32)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, align: 32, elements: !140)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !64, line: 55, baseType: !139)
!139 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!140 = !{!141}
!141 = !DISubrange(count: 2)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !127, file: !126, line: 138, baseType: !143, size: 320, align: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !144, line: 128, baseType: !145)
!144 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1574")
!145 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !144, line: 90, size: 320, align: 64, elements: !146)
!146 = !{!147, !165, !169}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !145, file: !144, line: 125, baseType: !148, size: 320, align: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !144, line: 92, size: 320, align: 64, elements: !149)
!149 = !{!150, !151, !152, !153, !154, !155, !157, !158}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !148, file: !144, line: 94, baseType: !69, size: 32, align: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !148, file: !144, line: 95, baseType: !139, size: 32, align: 32, offset: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !148, file: !144, line: 96, baseType: !69, size: 32, align: 32, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !148, file: !144, line: 98, baseType: !139, size: 32, align: 32, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !148, file: !144, line: 102, baseType: !69, size: 32, align: 32, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !148, file: !144, line: 104, baseType: !156, size: 16, align: 16, offset: 160)
!156 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !148, file: !144, line: 105, baseType: !156, size: 16, align: 16, offset: 176)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !148, file: !144, line: 106, baseType: !159, size: 128, align: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !144, line: 79, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !144, line: 75, size: 128, align: 64, elements: !161)
!161 = !{!162, !164}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !160, file: !144, line: 77, baseType: !163, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !160, file: !144, line: 78, baseType: !163, size: 64, align: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !145, file: !144, line: 126, baseType: !166, size: 320, align: 8)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 320, align: 8, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 40)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !145, file: !144, line: 127, baseType: !170, size: 64, align: 64)
!170 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "volumes", scope: !104, file: !8, line: 109, baseType: !172, size: 64, align: 64, offset: 576)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "snapshots", scope: !104, file: !8, line: 110, baseType: !172, size: 64, align: 64, offset: 640)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "pollPeriod", scope: !104, file: !8, line: 111, baseType: !138, size: 32, align: 32, offset: 704)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "abortTimer", scope: !104, file: !8, line: 112, baseType: !176, size: 64, align: 64, offset: 768)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !74, line: 64, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !74, line: 171, size: 768, align: 64, elements: !179)
!179 = !{!180, !181, !201, !230, !231, !235, !236, !237, !238, !246, !247, !248, !249}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !178, file: !74, line: 174, baseType: !93, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !178, file: !74, line: 175, baseType: !182, size: 64, align: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !74, line: 77, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !74, line: 196, size: 192, align: 64, elements: !185)
!185 = !{!186, !190, !191}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !184, file: !74, line: 198, baseType: !187, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !93}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !184, file: !74, line: 199, baseType: !187, size: 64, align: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !184, file: !74, line: 200, baseType: !192, size: 64, align: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !93, !176, !195, !200}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !74, line: 155, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!67, !93}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !178, file: !74, line: 177, baseType: !202, size: 64, align: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !74, line: 130, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !74, line: 214, size: 384, align: 64, elements: !206)
!206 = !{!207, !212, !216, !220, !224, !225}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !205, file: !74, line: 216, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!67, !176, !211}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !205, file: !74, line: 218, baseType: !213, size: 64, align: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!67, !176}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !205, file: !74, line: 219, baseType: !217, size: 64, align: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!67, !176, !196, !93}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !205, file: !74, line: 222, baseType: !221, size: 64, align: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !176}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !205, file: !74, line: 226, baseType: !196, size: 64, align: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !205, file: !74, line: 227, baseType: !226, size: 64, align: 64, offset: 320)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !74, line: 212, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{null}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !178, file: !74, line: 178, baseType: !138, size: 32, align: 32, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !178, file: !74, line: 180, baseType: !232, size: 64, align: 64, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !74, line: 48, baseType: !234)
!234 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !74, line: 48, flags: DIFlagFwdDecl)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !178, file: !74, line: 182, baseType: !68, size: 32, align: 32, offset: 320)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !178, file: !74, line: 183, baseType: !138, size: 32, align: 32, offset: 352)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !178, file: !74, line: 184, baseType: !138, size: 32, align: 32, offset: 384)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !178, file: !74, line: 186, baseType: !239, size: 64, align: 64, offset: 448)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !241, line: 37, baseType: !242)
!241 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/open-vm-tools/line1574")
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !241, line: 39, size: 128, align: 64, elements: !243)
!243 = !{!244, !245}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !242, file: !241, line: 41, baseType: !93, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !242, file: !241, line: 42, baseType: !239, size: 64, align: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !178, file: !74, line: 188, baseType: !176, size: 64, align: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !178, file: !74, line: 189, baseType: !176, size: 64, align: 64, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !178, file: !74, line: 191, baseType: !172, size: 64, align: 64, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !178, file: !74, line: 193, baseType: !250, size: 64, align: 64, offset: 704)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !74, line: 65, baseType: !252)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !74, line: 65, flags: DIFlagFwdDecl)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "timerEvent", scope: !104, file: !8, line: 113, baseType: !176, size: 64, align: 64, offset: 832)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "keepAlive", scope: !104, file: !8, line: 114, baseType: !176, size: 64, align: 64, offset: 896)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !104, file: !8, line: 115, baseType: !256, size: 64, align: 64, offset: 960)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!100, !259}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "forceRequeue", scope: !104, file: !8, line: 116, baseType: !100, size: 8, align: 8, offset: 1024)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "generateManifests", scope: !104, file: !8, line: 117, baseType: !100, size: 8, align: 8, offset: 1032)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "quiesceApps", scope: !104, file: !8, line: 118, baseType: !100, size: 8, align: 8, offset: 1040)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "quiesceFS", scope: !104, file: !8, line: 119, baseType: !100, size: 8, align: 8, offset: 1048)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "excludedFileSystems", scope: !104, file: !8, line: 120, baseType: !172, size: 64, align: 64, offset: 1088)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "allowHWProvider", scope: !104, file: !8, line: 121, baseType: !100, size: 8, align: 8, offset: 1152)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "execScripts", scope: !104, file: !8, line: 122, baseType: !100, size: 8, align: 8, offset: 1160)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "enableNullDriver", scope: !104, file: !8, line: 123, baseType: !100, size: 8, align: 8, offset: 1168)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "needsPriv", scope: !104, file: !8, line: 124, baseType: !100, size: 8, align: 8, offset: 1176)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "scriptArg", scope: !104, file: !8, line: 125, baseType: !270, size: 64, align: 64, offset: 1216)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !104, file: !8, line: 126, baseType: !138, size: 32, align: 32, offset: 1280)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !104, file: !8, line: 127, baseType: !93, size: 64, align: 64, offset: 1344)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "scripts", scope: !104, file: !8, line: 128, baseType: !94, size: 64, align: 64, offset: 1408)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "configDir", scope: !104, file: !8, line: 129, baseType: !90, size: 64, align: 64, offset: 1472)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "currentScript", scope: !104, file: !8, line: 130, baseType: !276, size: 64, align: 64, offset: 1536)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !277, line: 223, baseType: !278)
!277 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/lichi/Desktop/open-vm-tools/line1574")
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !279, line: 172, baseType: !170)
!279 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1574")
!280 = !DIDerivedType(tag: DW_TAG_member, name: "errorMsg", scope: !104, file: !8, line: 131, baseType: !270, size: 64, align: 64, offset: 1600)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "machineState", scope: !104, file: !8, line: 132, baseType: !282, size: 32, align: 32, offset: 1664)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupMState", file: !8, line: 73, baseType: !14)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "freezeStatus", scope: !104, file: !8, line: 133, baseType: !284, size: 32, align: 32, offset: 1696)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupFreezeStatus", file: !8, line: 55, baseType: !25)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "provider", scope: !104, file: !8, line: 134, baseType: !286, size: 64, align: 64, offset: 1728)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "completer", scope: !104, file: !8, line: 135, baseType: !288, size: 64, align: 64, offset: 1792)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmBackupSyncCompleter", file: !8, line: 171, size: 256, align: 64, elements: !290)
!290 = !{!291, !293, !294, !298}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !289, file: !8, line: 172, baseType: !292, size: 64, align: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupCompleterCallback", file: !8, line: 145, baseType: !97)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "snapshotCompleted", scope: !289, file: !8, line: 173, baseType: !292, size: 64, align: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !289, file: !8, line: 174, baseType: !295, size: 64, align: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !288}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !289, file: !8, line: 175, baseType: !94, size: 64, align: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "vssBackupContext", scope: !104, file: !8, line: 136, baseType: !68, size: 32, align: 32, offset: 1856)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "vssBackupType", scope: !104, file: !8, line: 137, baseType: !68, size: 32, align: 32, offset: 1888)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "vssBootableSystemState", scope: !104, file: !8, line: 138, baseType: !100, size: 8, align: 8, offset: 1920)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "vssPartialFileSupport", scope: !104, file: !8, line: 139, baseType: !100, size: 8, align: 8, offset: 1928)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "vssUseDefault", scope: !104, file: !8, line: 140, baseType: !100, size: 8, align: 8, offset: 1936)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !46, file: !8, line: 161, baseType: !305, size: 64, align: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !286}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !46, file: !8, line: 162, baseType: !94, size: 64, align: 64, offset: 192)
!309 = !{i32 2, !"Dwarf Version", i32 4}
!310 = !{i32 2, !"Debug Info Version", i32 3}
!311 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!312 = distinct !DISubprogram(name: "VmBackup_NewNullProvider", scope: !313, file: !313, line: 278, type: !314, isLocal: false, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !316)
!313 = !DIFile(filename: "nullProvider.c", directory: "/home/lichi/Desktop/open-vm-tools/line1574")
!314 = !DISubroutineType(types: !315)
!315 = !{!44}
!316 = !{}
!317 = !DILocalVariable(name: "provider", scope: !312, file: !313, line: 280, type: !44)
!318 = !DIExpression()
!319 = !DILocation(line: 280, column: 26, scope: !312)
!320 = !DILocation(line: 282, column: 41, scope: !312)
!321 = !DILocation(line: 282, column: 16, scope: !312)
!322 = !DILocation(line: 282, column: 13, scope: !312)
!323 = !DILocation(line: 283, column: 4, scope: !312)
!324 = !DILocation(line: 283, column: 14, scope: !312)
!325 = !DILocation(line: 283, column: 20, scope: !312)
!326 = !DILocation(line: 284, column: 4, scope: !312)
!327 = !DILocation(line: 284, column: 14, scope: !312)
!328 = !DILocation(line: 284, column: 27, scope: !312)
!329 = !DILocation(line: 285, column: 4, scope: !312)
!330 = !DILocation(line: 285, column: 14, scope: !312)
!331 = !DILocation(line: 285, column: 22, scope: !312)
!332 = !DILocation(line: 286, column: 4, scope: !312)
!333 = !DILocation(line: 286, column: 14, scope: !312)
!334 = !DILocation(line: 286, column: 25, scope: !312)
!335 = !DILocation(line: 288, column: 11, scope: !312)
!336 = !DILocation(line: 288, column: 4, scope: !312)
!337 = distinct !DISubprogram(name: "VmBackupNullStart", scope: !313, file: !313, line: 188, type: !338, isLocal: true, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !316)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !54, !94}
!340 = !DILocalVariable(name: "ctx", arg: 1, scope: !337, file: !313, line: 188, type: !54)
!341 = !DILocation(line: 188, column: 32, scope: !337)
!342 = !DILocalVariable(name: "clientData", arg: 2, scope: !337, file: !313, line: 189, type: !94)
!343 = !DILocation(line: 189, column: 25, scope: !337)
!344 = !DILocalVariable(name: "op", scope: !337, file: !313, line: 191, type: !108)
!345 = !DILocation(line: 191, column: 16, scope: !337)
!346 = !DILocalVariable(name: "state", scope: !337, file: !313, line: 192, type: !102)
!347 = !DILocation(line: 192, column: 19, scope: !337)
!348 = !DILocation(line: 192, column: 44, scope: !337)
!349 = !DILocation(line: 192, column: 27, scope: !337)
!350 = !DILocation(line: 194, column: 4, scope: !337)
!351 = !DILocation(line: 196, column: 25, scope: !337)
!352 = !DILocation(line: 196, column: 10, scope: !337)
!353 = !DILocation(line: 196, column: 7, scope: !337)
!354 = !DILocation(line: 197, column: 4, scope: !337)
!355 = !DILocation(line: 197, column: 8, scope: !337)
!356 = !DILocation(line: 197, column: 16, scope: !337)
!357 = !DILocation(line: 198, column: 4, scope: !337)
!358 = !DILocation(line: 198, column: 8, scope: !337)
!359 = !DILocation(line: 198, column: 17, scope: !337)
!360 = !DILocation(line: 199, column: 4, scope: !337)
!361 = !DILocation(line: 199, column: 8, scope: !337)
!362 = !DILocation(line: 199, column: 18, scope: !337)
!363 = !DILocation(line: 205, column: 4, scope: !337)
!364 = !DILocation(line: 207, column: 26, scope: !337)
!365 = !DILocation(line: 208, column: 26, scope: !337)
!366 = !DILocation(line: 207, column: 4, scope: !337)
!367 = !DILocation(line: 211, column: 1, scope: !337)
!368 = distinct !DISubprogram(name: "VmBackupNullSnapshotDone", scope: !313, file: !313, line: 230, type: !98, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !316)
!369 = !DILocalVariable(name: "state", arg: 1, scope: !368, file: !313, line: 230, type: !102)
!370 = !DILocation(line: 230, column: 41, scope: !368)
!371 = !DILocalVariable(name: "clientData", arg: 2, scope: !368, file: !313, line: 231, type: !94)
!372 = !DILocation(line: 231, column: 32, scope: !368)
!373 = !DILocalVariable(name: "op", scope: !368, file: !313, line: 233, type: !108)
!374 = !DILocation(line: 233, column: 16, scope: !368)
!375 = !DILocation(line: 235, column: 4, scope: !368)
!376 = !DILocation(line: 237, column: 25, scope: !368)
!377 = !DILocation(line: 237, column: 10, scope: !368)
!378 = !DILocation(line: 237, column: 7, scope: !368)
!379 = !DILocation(line: 238, column: 4, scope: !368)
!380 = !DILocation(line: 238, column: 8, scope: !368)
!381 = !DILocation(line: 238, column: 16, scope: !368)
!382 = !DILocation(line: 239, column: 4, scope: !368)
!383 = !DILocation(line: 239, column: 8, scope: !368)
!384 = !DILocation(line: 239, column: 17, scope: !368)
!385 = !DILocation(line: 240, column: 4, scope: !368)
!386 = !DILocation(line: 240, column: 8, scope: !368)
!387 = !DILocation(line: 240, column: 18, scope: !368)
!388 = !DILocation(line: 242, column: 26, scope: !368)
!389 = !DILocation(line: 242, column: 33, scope: !368)
!390 = !DILocation(line: 242, column: 4, scope: !368)
!391 = !DILocation(line: 243, column: 4, scope: !368)
!392 = distinct !DISubprogram(name: "VmBackupNullRelease", scope: !313, file: !313, line: 260, type: !393, isLocal: true, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !316)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !44}
!395 = !DILocalVariable(name: "provider", arg: 1, scope: !392, file: !313, line: 260, type: !44)
!396 = !DILocation(line: 260, column: 43, scope: !392)
!397 = !DILocation(line: 262, column: 11, scope: !392)
!398 = !DILocation(line: 262, column: 4, scope: !392)
!399 = !DILocation(line: 263, column: 1, scope: !392)
!400 = distinct !DISubprogram(name: "VmBackupNullOpQuery", scope: !313, file: !313, line: 131, type: !401, isLocal: true, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !316)
!401 = !DISubroutineType(types: !402)
!402 = !{!116, !108}
!403 = !DILocalVariable(name: "op", arg: 1, scope: !400, file: !313, line: 131, type: !108)
!404 = !DILocation(line: 131, column: 33, scope: !400)
!405 = !DILocation(line: 133, column: 4, scope: !400)
!406 = distinct !DISubprogram(name: "VmBackupNullOpCancel", scope: !313, file: !313, line: 168, type: !407, isLocal: true, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !316)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !108}
!409 = !DILocalVariable(name: "op", arg: 1, scope: !406, file: !313, line: 168, type: !108)
!410 = !DILocation(line: 168, column: 34, scope: !406)
!411 = !DILocation(line: 171, column: 1, scope: !406)
!412 = distinct !DISubprogram(name: "VmBackupNullOpRelease", scope: !313, file: !313, line: 149, type: !407, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !316)
!413 = !DILocalVariable(name: "op", arg: 1, scope: !412, file: !313, line: 149, type: !108)
!414 = !DILocation(line: 149, column: 35, scope: !412)
!415 = !DILocation(line: 151, column: 11, scope: !412)
!416 = !DILocation(line: 151, column: 4, scope: !412)
!417 = !DILocation(line: 152, column: 1, scope: !412)
!418 = distinct !DISubprogram(name: "VmBackup_SetCurrentOp", scope: !8, file: !8, line: 193, type: !419, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !316)
!419 = !DISubroutineType(types: !420)
!420 = !{!100, !102, !108, !421, !90}
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupCallback", file: !8, line: 143, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!100, !102}
!425 = !DILocalVariable(name: "state", arg: 1, scope: !418, file: !8, line: 193, type: !102)
!426 = !DILocation(line: 193, column: 38, scope: !418)
!427 = !DILocalVariable(name: "op", arg: 2, scope: !418, file: !8, line: 194, type: !108)
!428 = !DILocation(line: 194, column: 35, scope: !418)
!429 = !DILocalVariable(name: "callback", arg: 3, scope: !418, file: !8, line: 195, type: !421)
!430 = !DILocation(line: 195, column: 40, scope: !418)
!431 = !DILocalVariable(name: "currentOpName", arg: 4, scope: !418, file: !8, line: 196, type: !90)
!432 = !DILocation(line: 196, column: 35, scope: !418)
!433 = !DILocation(line: 202, column: 50, scope: !418)
!434 = !DILocation(line: 202, column: 57, scope: !418)
!435 = !DILocation(line: 202, column: 18, scope: !418)
!436 = !DILocation(line: 202, column: 4, scope: !437)
!437 = !DILexicalBlockFile(scope: !418, file: !8, discriminator: 1)
!438 = !DILocation(line: 204, column: 23, scope: !418)
!439 = !DILocation(line: 204, column: 4, scope: !418)
!440 = !DILocation(line: 204, column: 11, scope: !418)
!441 = !DILocation(line: 204, column: 21, scope: !418)
!442 = !DILocation(line: 205, column: 22, scope: !418)
!443 = !DILocation(line: 205, column: 4, scope: !418)
!444 = !DILocation(line: 205, column: 11, scope: !418)
!445 = !DILocation(line: 205, column: 20, scope: !418)
!446 = !DILocation(line: 206, column: 27, scope: !418)
!447 = !DILocation(line: 206, column: 4, scope: !418)
!448 = !DILocation(line: 206, column: 11, scope: !418)
!449 = !DILocation(line: 206, column: 25, scope: !418)
!450 = !DILocation(line: 207, column: 27, scope: !418)
!451 = !DILocation(line: 207, column: 36, scope: !418)
!452 = !DILocation(line: 207, column: 43, scope: !418)
!453 = !DILocation(line: 207, column: 46, scope: !437)
!454 = !DILocation(line: 207, column: 49, scope: !437)
!455 = !DILocation(line: 207, column: 43, scope: !456)
!456 = !DILexicalBlockFile(scope: !418, file: !8, discriminator: 2)
!457 = !DILocation(line: 207, column: 26, scope: !456)
!458 = !DILocation(line: 207, column: 4, scope: !456)
!459 = !DILocation(line: 207, column: 11, scope: !456)
!460 = !DILocation(line: 207, column: 24, scope: !456)
!461 = !DILocation(line: 209, column: 52, scope: !418)
!462 = !DILocation(line: 209, column: 59, scope: !418)
!463 = !DILocation(line: 209, column: 20, scope: !418)
!464 = !DILocation(line: 209, column: 4, scope: !437)
!465 = !DILocation(line: 211, column: 12, scope: !418)
!466 = !DILocation(line: 211, column: 15, scope: !418)
!467 = !DILocation(line: 211, column: 11, scope: !418)
!468 = !DILocation(line: 211, column: 4, scope: !418)
!469 = distinct !DISubprogram(name: "VmBackupNullReadyForSnapshot", scope: !313, file: !313, line: 99, type: !423, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !316)
!470 = !DILocalVariable(name: "state", arg: 1, scope: !469, file: !313, line: 99, type: !102)
!471 = !DILocation(line: 99, column: 45, scope: !469)
!472 = !DILocalVariable(name: "success", scope: !469, file: !313, line: 101, type: !100)
!473 = !DILocation(line: 101, column: 9, scope: !469)
!474 = !DILocation(line: 103, column: 4, scope: !469)
!475 = !DILocation(line: 104, column: 14, scope: !469)
!476 = !DILocation(line: 104, column: 12, scope: !469)
!477 = !DILocation(line: 105, column: 8, scope: !478)
!478 = distinct !DILexicalBlock(scope: !469, file: !313, line: 105, column: 8)
!479 = !DILocation(line: 105, column: 8, scope: !469)
!480 = !DILocation(line: 106, column: 7, scope: !481)
!481 = distinct !DILexicalBlock(scope: !478, file: !313, line: 105, column: 17)
!482 = !DILocation(line: 106, column: 14, scope: !481)
!483 = !DILocation(line: 106, column: 27, scope: !481)
!484 = !DILocation(line: 107, column: 4, scope: !481)
!485 = !DILocation(line: 108, column: 7, scope: !486)
!486 = distinct !DILexicalBlock(scope: !478, file: !313, line: 107, column: 11)
!487 = !DILocation(line: 109, column: 7, scope: !486)
!488 = !DILocation(line: 109, column: 14, scope: !486)
!489 = !DILocation(line: 109, column: 27, scope: !486)
!490 = !DILocation(line: 111, column: 11, scope: !469)
!491 = !DILocation(line: 111, column: 4, scope: !469)
