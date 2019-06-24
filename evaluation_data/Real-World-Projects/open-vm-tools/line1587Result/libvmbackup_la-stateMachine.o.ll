; ModuleID = './libvmbackup_la-stateMachine.o.i'
source_filename = "./libvmbackup_la-stateMachine.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VmBackupState = type { %struct.ToolsAppCtx*, %struct.VmBackupOp*, i8*, %struct.GStaticMutex, i8*, i8*, i32, %struct._GSource*, %struct._GSource*, %struct._GSource*, i8 (%struct.VmBackupState*)*, i8, i8, i8, i8, i8*, i8, i8, i8, i8, i8*, i32, i8*, i8*, i8*, i64, i8*, i32, i32, %struct.VmBackupSyncProvider*, %struct.VmBackupSyncCompleter*, i32, i32, i8, i8, i8 }
%struct.ToolsAppCtx = type { i32, i8*, i32, i32, %struct._GMainLoop*, %struct._RpcChannel*, %struct._GKeyFile*, i32, i32, i8**, i8* }
%struct._GMainLoop = type opaque
%struct._RpcChannel = type opaque
%struct._GKeyFile = type opaque
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
%struct.VmBackupSyncProvider = type { void (%struct.ToolsAppCtx*, i8*)*, i8 (%struct.VmBackupState*, i8*)*, void (%struct.VmBackupSyncProvider*)*, i8* }
%struct.VmBackupSyncCompleter = type { i8 (%struct.VmBackupState*, i8*)*, i8 (%struct.VmBackupState*, i8*)*, void (%struct.VmBackupSyncCompleter*)*, i8* }
%struct.ToolsPluginData = type { i8*, %struct._GArray*, i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)*, i8* }
%struct._GArray = type { i8*, i32 }
%struct.RpcChannelCallback = type { i8*, i32 (%struct.RpcInData*)*, i8*, i8*, i8*, i64 }
%struct.RpcInData = type { i8*, i8*, i64, i8*, i64, i32, i8*, i8* }
%struct.SyncProvider = type { %struct.VmBackupSyncProvider* ()*, i8* }
%struct.ToolsPluginSignalCb = type { i8*, i8*, i8* }
%struct.ToolsAppReg = type { i32, %struct._GArray* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon.0] }
%union.anon.0 = type { i64 }
%struct.GuestQuiesceParams = type { i32, %union.anon }
%union.anon = type { %struct.GuestQuiesceParamsV1* }
%struct.GuestQuiesceParamsV1 = type { i8, i8, i8, i8, i8, i8*, i32, i8* }
%struct.GuestQuiesceParamsV2 = type { %struct.GuestQuiesceParamsV1, i32, i32, i8, i8 }
%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct.ToolsCorePool = type { i32 (%struct.ToolsAppCtx*, void (%struct.ToolsAppCtx*, i8*)*, i8*, void (i8*)*)*, void (i32)*, i32 (%struct.ToolsAppCtx*, void (%struct.ToolsAppCtx*, i8*)*, void (%struct.ToolsAppCtx*, i8*)*, i8*, void (i8*)*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@vm_version = constant [20 x i8] c"version=10.3.0.5330\00", section ".modinfo", align 16
@.str = private unnamed_addr constant [9 x i8] c"vmbackup\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"*** %s\0A\00", align 1
@__FUNCTION__.VmBackup_SendEvent = private unnamed_addr constant [19 x i8] c"VmBackup_SendEvent\00", align 1
@gBackupState = internal global %struct.VmBackupState* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"vmbackup.eventSet %s %u %s\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Sending vmbackup event: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Guest is not privileged\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Failed to send event: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Sending event with priv: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Failed to send vmbackup event: %s, result: %s.\0A\00", align 1
@ToolsOnLoad.regData = internal global %struct.ToolsPluginData { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct._GArray* null, i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)* null, i8* null }, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"vmbackup.start\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"vmbackup.startWithOpts\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"vmbackup.abort\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"vmbackup.snapshotCompleted\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"vmbackup.snapshotDone\00", align 1
@ToolsOnLoad.rpcs = private unnamed_addr constant [5 x %struct.RpcChannelCallback] [%struct.RpcChannelCallback { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.RpcInData*)* @VmBackupStart, i8* null, i8* null, i8* null, i64 0 }, %struct.RpcChannelCallback { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.RpcInData*)* @VmBackupStartWithOpts, i8* null, i8* bitcast (i32 (%struct.XDR*, %struct.GuestQuiesceParams*)* @xdr_GuestQuiesceParams to i8*), i8* null, i64 16 }, %struct.RpcChannelCallback { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.RpcInData*)* @VmBackupAbort, i8* null, i8* null, i8* null, i64 0 }, %struct.RpcChannelCallback { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.RpcInData*)* @VmBackupSnapshotCompleted, i8* null, i8* null, i8* null, i64 0 }, %struct.RpcChannelCallback { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.RpcInData*)* @VmBackupSnapshotDone, i8* null, i8* null, i8* null, i64 0 }], align 16
@.str.13 = private unnamed_addr constant [15 x i8] c"tcs_dump_state\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"tcs_reset\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"tcs_shutdown\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"tcs_io_freeze\00", align 1
@__FUNCTION__.VmBackupPrivSendMsg = private unnamed_addr constant [20 x i8] c"VmBackupPrivSendMsg\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Raising the IOPL, oldLevel=%u\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Error raising the IOPL, %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"Error restoring the IOPL, %s\0A\00", align 1
@__FUNCTION__.VmBackupKeepAliveCallback = private unnamed_addr constant [26 x i8] c"VmBackupKeepAliveCallback\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"req.keepAlive\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__FUNCTION__.VmBackupStart = private unnamed_addr constant [14 x i8] c"VmBackupStart\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"Quiesce operation already in progress.\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"quiesceApps\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"quiesceFS\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"allowHWProvider\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"execScripts\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"scriptArg\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"vssUseDefault\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"forceQuiesce\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"enableSyncDriver\00", align 1
@VmBackupStartCommon.providers = private unnamed_addr constant [2 x %struct.SyncProvider] [%struct.SyncProvider { %struct.VmBackupSyncProvider* ()* @VmBackup_NewSyncDriverProvider, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0) }, %struct.SyncProvider { %struct.VmBackupSyncProvider* ()* @VmBackup_NewNullProvider, i8* null }], align 16
@.str.33 = private unnamed_addr constant [43 x i8] c"Requested quiescing cannot be initialized.\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"enableNullDriver\00", align 1
@.str.35 = private unnamed_addr constant [152 x i8] c"Using quiesceApps = %d, quiesceFS = %d, allowHWProvider = %d, execScripts = %d, scriptArg = %s, timeout = %u, enableNullDriver = %d, forceQuiesce = %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"excludedFileSystems\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"Using excludedFileSystems = \22%s\22\0A\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"Quiescing volumes: %s\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"Error getting configuration directory.\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.42 = private unnamed_addr constant [38 x i8] c"Error initializing quiesce operation.\00", align 1
@__FUNCTION__.VmBackupStartScripts = private unnamed_addr constant [21 x i8] c"VmBackupStartScripts\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"VmBackupOnFreeze\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"VmBackupOnFreezeFail\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"VmBackupOnThaw\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"NOT_REACHED %s:%d\0A\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"stateMachine.c\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"req.error\00", align 1
@.str.49 = private unnamed_addr constant [44 x i8] c"Error when starting custom quiesce scripts.\00", align 1
@.str.50 = private unnamed_addr constant [42 x i8] c"Aborting backup operation due to timeout.\00", align 1
@__FUNCTION__.VmBackupDoAbort = private unnamed_addr constant [16 x i8] c"VmBackupDoAbort\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"Quiesce aborted.\00", align 1
@.str.52 = private unnamed_addr constant [43 x i8] c"Guest already quiesced, thawing for abort\0A\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"Thaw during abort failed\0A\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"Quiesce could not be aborted.\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"req.aborted\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"Unexpected machine state on error: %s\0A\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"IDLE\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"SCRIPT_FREEZE\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"SYNC_FREEZE_WAIT\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"SYNC_FREEZE\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"SYNC_THAW\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"SCRIPT_THAW\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"COMPLETE_WAIT\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"SCRIPT_ERROR\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"SYNC_ERROR\00", align 1
@.str.66 = private unnamed_addr constant [23 x i8] c"NOT_IMPLEMENTED %s:%d\0A\00", align 1
@__FUNCTION__.VmBackupFinalize = private unnamed_addr constant [17 x i8] c"VmBackupFinalize\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"req.done\00", align 1
@__FUNCTION__.VmBackupAsyncCallback = private unnamed_addr constant [22 x i8] c"VmBackupAsyncCallback\00", align 1
@.str.68 = private unnamed_addr constant [30 x i8] c"Unexpected machine state: %s\0A\00", align 1
@__FUNCTION__.VmBackupPostProcessCurrentOp = private unnamed_addr constant [29 x i8] c"VmBackupPostProcessCurrentOp\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"%s: checking %s\0A\00", align 1
@.str.70 = private unnamed_addr constant [30 x i8] c"Async request '%s' completed\0A\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"'%s' operation failed: %s\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"'%s' operation failed.\00", align 1
@__FUNCTION__.VmBackupEnableSyncWait = private unnamed_addr constant [23 x i8] c"VmBackupEnableSyncWait\00", align 1
@.str.73 = private unnamed_addr constant [36 x i8] c"Failed to submit backup start task.\00", align 1
@.str.74 = private unnamed_addr constant [39 x i8] c"Error when enabling the sync provider.\00", align 1
@.str.75 = private unnamed_addr constant [29 x i8] c"Submitted backup start task.\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c"tcs_prop_thread_pool\00", align 1
@__FUNCTION__.VmBackupEnableSync = private unnamed_addr constant [19 x i8] c"VmBackupEnableSync\00", align 1
@__FUNCTION__.VmBackupEnableCompleteWait = private unnamed_addr constant [27 x i8] c"VmBackupEnableCompleteWait\00", align 1
@.str.77 = private unnamed_addr constant [29 x i8] c"Using completer timeout: %u\0A\00", align 1
@__FUNCTION__.VmBackupStartWithOpts = private unnamed_addr constant [22 x i8] c"VmBackupStartWithOpts\00", align 1
@.str.78 = private unnamed_addr constant [46 x i8] c"%s: Incompatible quiesce parameter version. \0A\00", align 1
@.str.79 = private unnamed_addr constant [39 x i8] c"Incompatible quiesce parameter version\00", align 1
@__FUNCTION__.VmBackupAbort = private unnamed_addr constant [14 x i8] c"VmBackupAbort\00", align 1
@.str.80 = private unnamed_addr constant [40 x i8] c"Error: no quiesce operation in progress\00", align 1
@__FUNCTION__.VmBackupSnapshotCompleted = private unnamed_addr constant [26 x i8] c"VmBackupSnapshotCompleted\00", align 1
@.str.81 = private unnamed_addr constant [39 x i8] c"Error: no quiesce complete in progress\00", align 1
@.str.82 = private unnamed_addr constant [58 x i8] c"Error: unexpected state for snapshot complete message: %s\00", align 1
@.str.83 = private unnamed_addr constant [46 x i8] c"Error: unexpected state for complete message.\00", align 1
@.str.84 = private unnamed_addr constant [41 x i8] c"Error when notifying the sync completer.\00", align 1
@__FUNCTION__.VmBackupSnapshotDone = private unnamed_addr constant [21 x i8] c"VmBackupSnapshotDone\00", align 1
@.str.85 = private unnamed_addr constant [54 x i8] c"Error: unexpected state for snapshot done message: %s\00", align 1
@.str.86 = private unnamed_addr constant [50 x i8] c"Error: unexpected state for quiesce done message.\00", align 1
@.str.87 = private unnamed_addr constant [40 x i8] c"Error when notifying the sync provider.\00", align 1
@.str.88 = private unnamed_addr constant [17 x i8] c"Backup is idle.\0A\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"Backup is in state: %s\0A\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"%*s%s\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@__FUNCTION__.VmBackupShutdown = private unnamed_addr constant [17 x i8] c"VmBackupShutdown\00", align 1

; Function Attrs: nounwind uwtable
define signext i8 @VmBackup_SendEvent(i8*, i32, i8*) #0 !dbg !415 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct._GSource*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !419, metadata !420), !dbg !421
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !422, metadata !420), !dbg !423
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !424, metadata !420), !dbg !425
  call void @llvm.dbg.declare(metadata i8* %7, metadata !426, metadata !420), !dbg !427
  call void @llvm.dbg.declare(metadata i8** %8, metadata !428, metadata !420), !dbg !429
  store i8* null, i8** %8, align 8, !dbg !429
  call void @llvm.dbg.declare(metadata i64* %9, metadata !430, metadata !420), !dbg !433
  call void @llvm.dbg.declare(metadata i8** %10, metadata !434, metadata !420), !dbg !435
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.VmBackup_SendEvent, i32 0, i32 0)), !dbg !436
  %13 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !437
  %14 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %13, i32 0, i32 9, !dbg !439
  %15 = load %struct._GSource*, %struct._GSource** %14, align 8, !dbg !439
  %16 = icmp ne %struct._GSource* %15, null, !dbg !440
  br i1 %16, label %17, label %24, !dbg !441

; <label>:17:                                     ; preds = %3
  %18 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !442
  %19 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %18, i32 0, i32 9, !dbg !444
  %20 = load %struct._GSource*, %struct._GSource** %19, align 8, !dbg !444
  call void @g_source_destroy(%struct._GSource* %20), !dbg !445
  %21 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !446
  %22 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %21, i32 0, i32 9, !dbg !447
  %23 = load %struct._GSource*, %struct._GSource** %22, align 8, !dbg !447
  call void @g_source_unref(%struct._GSource* %23), !dbg !448
  br label %24, !dbg !449

; <label>:24:                                     ; preds = %17, %3
  %25 = load i8*, i8** %4, align 8, !dbg !450
  %26 = load i32, i32* %5, align 4, !dbg !451
  %27 = load i8*, i8** %6, align 8, !dbg !452
  %28 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i8* %25, i32 %26, i8* %27), !dbg !453
  store i8* %28, i8** %10, align 8, !dbg !454
  %29 = load i8*, i8** %10, align 8, !dbg !455
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i8* %29), !dbg !456
  %30 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !457
  %31 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %30, i32 0, i32 19, !dbg !459
  %32 = load i8, i8* %31, align 1, !dbg !459
  %33 = icmp ne i8 %32, 0, !dbg !457
  br i1 %33, label %34, label %37, !dbg !460

; <label>:34:                                     ; preds = %24
  %35 = load i8*, i8** %10, align 8, !dbg !461
  %36 = call signext i8 @VmBackupPrivSendMsg(i8* %35, i8** %8, i64* %9), !dbg !463
  store i8 %36, i8* %7, align 1, !dbg !464
  br label %76, !dbg !465

; <label>:37:                                     ; preds = %24
  %38 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !466
  %39 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %38, i32 0, i32 0, !dbg !468
  %40 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %39, align 8, !dbg !468
  %41 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %40, i32 0, i32 5, !dbg !469
  %42 = load %struct._RpcChannel*, %struct._RpcChannel** %41, align 8, !dbg !469
  %43 = load i8*, i8** %10, align 8, !dbg !470
  %44 = load i8*, i8** %10, align 8, !dbg !471
  %45 = call i64 @strlen(i8* %44) #10, !dbg !472
  %46 = add i64 %45, 1, !dbg !473
  %47 = call i32 @RpcChannel_Send(%struct._RpcChannel* %42, i8* %43, i64 %46, i8** %8, i64* %9), !dbg !474
  %48 = trunc i32 %47 to i8, !dbg !474
  store i8 %48, i8* %7, align 1, !dbg !475
  %49 = load i8, i8* %7, align 1, !dbg !476
  %50 = icmp ne i8 %49, 0, !dbg !476
  br i1 %50, label %75, label %51, !dbg !478

; <label>:51:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata i8** %11, metadata !479, metadata !420), !dbg !481
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8** %11, align 8, !dbg !481
  %52 = load i64, i64* %9, align 8, !dbg !482
  %53 = load i8*, i8** %11, align 8, !dbg !484
  %54 = call i64 @strlen(i8* %53) #10, !dbg !485
  %55 = icmp ugt i64 %52, %54, !dbg !486
  br i1 %55, label %56, label %71, !dbg !487

; <label>:56:                                     ; preds = %51
  %57 = load i8*, i8** %8, align 8, !dbg !488
  %58 = load i8*, i8** %11, align 8, !dbg !489
  %59 = load i8*, i8** %11, align 8, !dbg !490
  %60 = call i64 @strlen(i8* %59) #10, !dbg !491
  %61 = call i32 @strncmp(i8* %57, i8* %58, i64 %60) #10, !dbg !492
  %62 = icmp eq i32 %61, 0, !dbg !494
  br i1 %62, label %63, label %71, !dbg !495

; <label>:63:                                     ; preds = %56
  %64 = load i8*, i8** %8, align 8, !dbg !497
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0), i8* %64), !dbg !499
  %65 = load i8*, i8** %8, align 8, !dbg !500
  call void @vm_free(i8* %65), !dbg !501
  %66 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !502
  %67 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %66, i32 0, i32 19, !dbg !503
  store i8 1, i8* %67, align 1, !dbg !504
  %68 = load i8*, i8** %10, align 8, !dbg !505
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), i8* %68), !dbg !506
  %69 = load i8*, i8** %10, align 8, !dbg !507
  %70 = call signext i8 @VmBackupPrivSendMsg(i8* %69, i8** %8, i64* %9), !dbg !508
  store i8 %70, i8* %7, align 1, !dbg !509
  br label %74, !dbg !510

; <label>:71:                                     ; preds = %56, %51
  %72 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !511
  %73 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %72, i32 0, i32 19, !dbg !513
  store i8 0, i8* %73, align 1, !dbg !514
  br label %74

; <label>:74:                                     ; preds = %71, %63
  br label %75, !dbg !515

; <label>:75:                                     ; preds = %74, %37
  br label %76

; <label>:76:                                     ; preds = %75, %34
  %77 = load i8, i8* %7, align 1, !dbg !516
  %78 = icmp ne i8 %77, 0, !dbg !516
  br i1 %78, label %82, label %79, !dbg !518

; <label>:79:                                     ; preds = %76
  %80 = load i8*, i8** %10, align 8, !dbg !519
  %81 = load i8*, i8** %8, align 8, !dbg !521
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i32 0, i32 0), i8* %80, i8* %81), !dbg !522
  br label %82, !dbg !523

; <label>:82:                                     ; preds = %79, %76
  %83 = load i8*, i8** %8, align 8, !dbg !524
  call void @vm_free(i8* %83), !dbg !525
  %84 = load i8*, i8** %10, align 8, !dbg !526
  call void @g_free(i8* %84), !dbg !527
  %85 = call %struct._GSource* @g_timeout_source_new(i32 2500), !dbg !528
  %86 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !529
  %87 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %86, i32 0, i32 9, !dbg !530
  store %struct._GSource* %85, %struct._GSource** %87, align 8, !dbg !531
  br label %88, !dbg !532, !llvm.loop !533

; <label>:88:                                     ; preds = %82
  call void @llvm.dbg.declare(metadata %struct._GSource** %12, metadata !534, metadata !420), !dbg !536
  %89 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !537
  %90 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %89, i32 0, i32 9, !dbg !539
  %91 = load %struct._GSource*, %struct._GSource** %90, align 8, !dbg !539
  store %struct._GSource* %91, %struct._GSource** %12, align 8, !dbg !540
  %92 = load %struct._GSource*, %struct._GSource** %12, align 8, !dbg !541
  call void @g_source_set_callback(%struct._GSource* %92, i32 (i8*)* @VmBackupKeepAliveCallback, i8* null, void (i8*)* null), !dbg !542
  %93 = load %struct._GSource*, %struct._GSource** %12, align 8, !dbg !543
  %94 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !544
  %95 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %94, i32 0, i32 0, !dbg !545
  %96 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %95, align 8, !dbg !545
  %97 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %96, i32 0, i32 4, !dbg !541
  %98 = load %struct._GMainLoop*, %struct._GMainLoop** %97, align 8, !dbg !541
  %99 = call %struct._GMainContext* @g_main_loop_get_context(%struct._GMainLoop* %98), !dbg !546
  %100 = call i32 @g_source_attach(%struct._GSource* %93, %struct._GMainContext* %99), !dbg !548
  br label %101, !dbg !550

; <label>:101:                                    ; preds = %88
  %102 = load i8, i8* %7, align 1, !dbg !551
  ret i8 %102, !dbg !552
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_log(i8*, i32, i8*, ...) #2

declare void @g_source_destroy(%struct._GSource*) #2

declare void @g_source_unref(%struct._GSource*) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal signext i8 @VmBackupPrivSendMsg(i8*, i8**, i64*) #0 !dbg !553 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !558, metadata !420), !dbg !559
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !560, metadata !420), !dbg !561
  store i64* %2, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !562, metadata !420), !dbg !563
  call void @llvm.dbg.declare(metadata i8* %7, metadata !564, metadata !420), !dbg !565
  call void @llvm.dbg.declare(metadata i32* %8, metadata !566, metadata !420), !dbg !567
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.VmBackupPrivSendMsg, i32 0, i32 0)), !dbg !568
  %9 = call i32 @GetCallerEFlags(), !dbg !569
  %10 = lshr i32 %9, 12, !dbg !570
  %11 = icmp ne i32 %10, 0, !dbg !570
  br i1 %11, label %12, label %13, !dbg !571

; <label>:12:                                     ; preds = %3
  br label %13

; <label>:13:                                     ; preds = %12, %3
  %14 = phi i1 [ false, %3 ], [ true, %12 ]
  %15 = zext i1 %14 to i32, !dbg !572
  store i32 %15, i32* %8, align 4, !dbg !574
  %16 = load i32, i32* %8, align 4, !dbg !575
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i32 0, i32 0), i32 %16), !dbg !576
  %17 = call i32 @iopl(i32 3) #9, !dbg !577
  %18 = icmp slt i32 %17, 0, !dbg !579
  br i1 %18, label %19, label %23, !dbg !580

; <label>:19:                                     ; preds = %13
  %20 = call i32* @__errno_location() #1, !dbg !581
  %21 = load i32, i32* %20, align 4, !dbg !583
  %22 = call i8* @strerror(i32 %21) #9, !dbg !584
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0), i8* %22), !dbg !586
  br label %23, !dbg !588

; <label>:23:                                     ; preds = %19, %13
  %24 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !589
  %25 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %24, i32 0, i32 0, !dbg !590
  %26 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %25, align 8, !dbg !590
  %27 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %26, i32 0, i32 5, !dbg !591
  %28 = load %struct._RpcChannel*, %struct._RpcChannel** %27, align 8, !dbg !591
  %29 = load i8*, i8** %4, align 8, !dbg !592
  %30 = load i8*, i8** %4, align 8, !dbg !593
  %31 = call i64 @strlen(i8* %30) #10, !dbg !594
  %32 = add i64 %31, 1, !dbg !595
  %33 = load i8**, i8*** %5, align 8, !dbg !596
  %34 = load i64*, i64** %6, align 8, !dbg !597
  %35 = call i32 @RpcChannel_Send(%struct._RpcChannel* %28, i8* %29, i64 %32, i8** %33, i64* %34), !dbg !598
  %36 = trunc i32 %35 to i8, !dbg !598
  store i8 %36, i8* %7, align 1, !dbg !599
  %37 = load i32, i32* %8, align 4, !dbg !600
  %38 = call i32 @iopl(i32 %37) #9, !dbg !602
  %39 = icmp slt i32 %38, 0, !dbg !603
  br i1 %39, label %40, label %44, !dbg !604

; <label>:40:                                     ; preds = %23
  %41 = call i32* @__errno_location() #1, !dbg !605
  %42 = load i32, i32* %41, align 4, !dbg !607
  %43 = call i8* @strerror(i32 %42) #9, !dbg !608
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0), i8* %43), !dbg !610
  br label %44, !dbg !612

; <label>:44:                                     ; preds = %40, %23
  %45 = load i8, i8* %7, align 1, !dbg !613
  ret i8 %45, !dbg !614
}

declare i32 @RpcChannel_Send(%struct._RpcChannel*, i8*, i64, i8**, i64*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare void @vm_free(i8*) #2

declare void @g_free(i8*) #2

declare %struct._GSource* @g_timeout_source_new(i32) #2

declare void @g_source_set_callback(%struct._GSource*, i32 (i8*)*, i8*, void (i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @VmBackupKeepAliveCallback(i8*) #0 !dbg !615 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !618, metadata !420), !dbg !619
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.VmBackupKeepAliveCallback, i32 0, i32 0)), !dbg !620
  %3 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !621
  %4 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %3, i32 0, i32 9, !dbg !622
  %5 = load %struct._GSource*, %struct._GSource** %4, align 8, !dbg !622
  call void @g_source_unref(%struct._GSource* %5), !dbg !623
  %6 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !624
  %7 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %6, i32 0, i32 9, !dbg !625
  store %struct._GSource* null, %struct._GSource** %7, align 8, !dbg !626
  %8 = call signext i8 @VmBackup_SendEvent(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0)), !dbg !627
  ret i32 0, !dbg !628
}

declare i32 @g_source_attach(%struct._GSource*, %struct._GMainContext*) #2

declare %struct._GMainContext* @g_main_loop_get_context(%struct._GMainLoop*) #2

; Function Attrs: nounwind uwtable
define %struct.ToolsPluginData* @ToolsOnLoad(%struct.ToolsAppCtx*) #0 !dbg !387 {
  %2 = alloca %struct.ToolsAppCtx*, align 8
  %3 = alloca [5 x %struct.RpcChannelCallback], align 16
  %4 = alloca [3 x %struct.ToolsPluginSignalCb], align 16
  %5 = alloca [2 x %struct.ToolsAppReg], align 16
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %2, metadata !629, metadata !420), !dbg !630
  call void @llvm.dbg.declare(metadata [5 x %struct.RpcChannelCallback]* %3, metadata !631, metadata !420), !dbg !660
  %6 = bitcast [5 x %struct.RpcChannelCallback]* %3 to i8*, !dbg !660
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast ([5 x %struct.RpcChannelCallback]* @ToolsOnLoad.rpcs to i8*), i64 240, i32 16, i1 false), !dbg !660
  call void @llvm.dbg.declare(metadata [3 x %struct.ToolsPluginSignalCb]* %4, metadata !661, metadata !420), !dbg !671
  %7 = bitcast [3 x %struct.ToolsPluginSignalCb]* %4 to i8*, !dbg !671
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 72, i32 16, i1 false), !dbg !671
  %8 = bitcast i8* %7 to [3 x %struct.ToolsPluginSignalCb]*, !dbg !671
  %9 = getelementptr [3 x %struct.ToolsPluginSignalCb], [3 x %struct.ToolsPluginSignalCb]* %8, i32 0, i32 0, !dbg !671
  %10 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %9, i32 0, i32 0, !dbg !671
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8** %10, !dbg !671
  %11 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %9, i32 0, i32 1, !dbg !671
  store i8* bitcast (void (i8*, %struct.ToolsAppCtx*, i8*)* @VmBackupDumpState to i8*), i8** %11, !dbg !671
  %12 = getelementptr [3 x %struct.ToolsPluginSignalCb], [3 x %struct.ToolsPluginSignalCb]* %8, i32 0, i32 1, !dbg !671
  %13 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %12, i32 0, i32 0, !dbg !671
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8** %13, !dbg !671
  %14 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %12, i32 0, i32 1, !dbg !671
  store i8* bitcast (void (i8*, %struct.ToolsAppCtx*, i8*)* @VmBackupReset to i8*), i8** %14, !dbg !671
  %15 = getelementptr [3 x %struct.ToolsPluginSignalCb], [3 x %struct.ToolsPluginSignalCb]* %8, i32 0, i32 2, !dbg !671
  %16 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %15, i32 0, i32 0, !dbg !671
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8** %16, !dbg !671
  %17 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %15, i32 0, i32 1, !dbg !671
  store i8* bitcast (void (i8*, %struct.ToolsAppCtx*, i8*)* @VmBackupShutdown to i8*), i8** %17, !dbg !671
  call void @llvm.dbg.declare(metadata [2 x %struct.ToolsAppReg]* %5, metadata !672, metadata !420), !dbg !679
  %18 = getelementptr inbounds [2 x %struct.ToolsAppReg], [2 x %struct.ToolsAppReg]* %5, i64 0, i64 0, !dbg !680
  %19 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %18, i32 0, i32 0, !dbg !681
  store i32 1, i32* %19, align 16, !dbg !681
  %20 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %18, i32 0, i32 1, !dbg !681
  %21 = getelementptr inbounds [5 x %struct.RpcChannelCallback], [5 x %struct.RpcChannelCallback]* %3, i32 0, i32 0, !dbg !682
  %22 = bitcast %struct.RpcChannelCallback* %21 to i8*, !dbg !682
  %23 = call %struct._GArray* @VMTools_WrapArray(i8* %22, i32 48, i32 5), !dbg !683
  store %struct._GArray* %23, %struct._GArray** %20, align 8, !dbg !681
  %24 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %18, i64 1, !dbg !680
  %25 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %24, i32 0, i32 0, !dbg !684
  store i32 2, i32* %25, align 16, !dbg !684
  %26 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %24, i32 0, i32 1, !dbg !684
  %27 = getelementptr inbounds [3 x %struct.ToolsPluginSignalCb], [3 x %struct.ToolsPluginSignalCb]* %4, i32 0, i32 0, !dbg !685
  %28 = bitcast %struct.ToolsPluginSignalCb* %27 to i8*, !dbg !685
  %29 = call %struct._GArray* @VMTools_WrapArray(i8* %28, i32 24, i32 3), !dbg !686
  store %struct._GArray* %29, %struct._GArray** %26, align 8, !dbg !684
  %30 = getelementptr inbounds [2 x %struct.ToolsAppReg], [2 x %struct.ToolsAppReg]* %5, i32 0, i32 0, !dbg !687
  %31 = bitcast %struct.ToolsAppReg* %30 to i8*, !dbg !687
  %32 = call %struct._GArray* @VMTools_WrapArray(i8* %31, i32 16, i32 2), !dbg !688
  store %struct._GArray* %32, %struct._GArray** getelementptr inbounds (%struct.ToolsPluginData, %struct.ToolsPluginData* @ToolsOnLoad.regData, i32 0, i32 1), align 8, !dbg !689
  %33 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %2, align 8, !dbg !690
  %34 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %33, i32 0, i32 10, !dbg !691
  %35 = load i8*, i8** %34, align 8, !dbg !691
  %36 = bitcast i8* %35 to %struct._GTypeInstance*, !dbg !692
  %37 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0, !dbg !693
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %37, align 8, !dbg !693
  %39 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %38, i32 0, i32 0, !dbg !694
  %40 = load i64, i64* %39, align 8, !dbg !694
  %41 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i64 %40, i32 0, i32 0, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_user_marshal_VOID__POINTER_BOOLEAN, i64 4, i32 2, i64 68, i64 20), !dbg !695
  ret %struct.ToolsPluginData* @ToolsOnLoad.regData, !dbg !696
}

; Function Attrs: nounwind uwtable
define internal i32 @VmBackupStart(%struct.RpcInData*) #0 !dbg !697 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.RpcInData*, align 8
  %4 = alloca %struct.ToolsAppCtx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.RpcInData* %0, %struct.RpcInData** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %3, metadata !698, metadata !420), !dbg !699
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %4, metadata !700, metadata !420), !dbg !701
  %7 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !702
  %8 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %7, i32 0, i32 6, !dbg !703
  %9 = load i8*, i8** %8, align 8, !dbg !703
  %10 = bitcast i8* %9 to %struct.ToolsAppCtx*, !dbg !702
  store %struct.ToolsAppCtx* %10, %struct.ToolsAppCtx** %4, align 8, !dbg !701
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.VmBackupStart, i32 0, i32 0)), !dbg !704
  %11 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !705
  %12 = icmp ne %struct.VmBackupState* %11, null, !dbg !707
  br i1 %12, label %13, label %16, !dbg !708

; <label>:13:                                     ; preds = %1
  %14 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !709
  %15 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i32 0, i32 0), i32 0), !dbg !711
  store i32 %15, i32* %2, align 4, !dbg !712
  br label %115, !dbg !712

; <label>:16:                                     ; preds = %1
  %17 = call noalias i8* @g_malloc0_n(i64 1, i64 248), !dbg !713
  %18 = bitcast i8* %17 to %struct.VmBackupState*, !dbg !714
  store %struct.VmBackupState* %18, %struct.VmBackupState** @gBackupState, align 8, !dbg !715
  %19 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !716
  %20 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %19, i32 0, i32 2, !dbg !718
  %21 = load i64, i64* %20, align 8, !dbg !718
  %22 = icmp ugt i64 %21, 0, !dbg !719
  br i1 %22, label %23, label %108, !dbg !720

; <label>:23:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata i32* %5, metadata !721, metadata !420), !dbg !723
  store i32 0, i32* %5, align 4, !dbg !723
  call void @llvm.dbg.declare(metadata i32* %6, metadata !724, metadata !420), !dbg !725
  store i32 0, i32* %6, align 4, !dbg !725
  %24 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !726
  %25 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %24, i32 0, i32 1, !dbg !728
  %26 = load i8*, i8** %25, align 8, !dbg !728
  %27 = call signext i8 @StrUtil_GetNextIntToken(i32* %5, i32* %6, i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0)), !dbg !729
  %28 = icmp ne i8 %27, 0, !dbg !729
  br i1 %28, label %29, label %34, !dbg !730

; <label>:29:                                     ; preds = %23
  %30 = load i32, i32* %5, align 4, !dbg !731
  %31 = trunc i32 %30 to i8, !dbg !731
  %32 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !733
  %33 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %32, i32 0, i32 12, !dbg !734
  store i8 %31, i8* %33, align 1, !dbg !735
  br label %34, !dbg !736

; <label>:34:                                     ; preds = %29, %23
  %35 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %4, align 8, !dbg !737
  %36 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %35, i32 0, i32 6, !dbg !738
  %37 = load %struct._GKeyFile*, %struct._GKeyFile** %36, align 8, !dbg !738
  %38 = call i32 @VMTools_ConfigGetBoolean(%struct._GKeyFile* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 1), !dbg !739
  %39 = trunc i32 %38 to i8, !dbg !739
  %40 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !740
  %41 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %40, i32 0, i32 13, !dbg !741
  store i8 %39, i8* %41, align 2, !dbg !742
  %42 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %4, align 8, !dbg !743
  %43 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %42, i32 0, i32 6, !dbg !744
  %44 = load %struct._GKeyFile*, %struct._GKeyFile** %43, align 8, !dbg !744
  %45 = call i32 @VMTools_ConfigGetBoolean(%struct._GKeyFile* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i32 1), !dbg !745
  %46 = trunc i32 %45 to i8, !dbg !745
  %47 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !746
  %48 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %47, i32 0, i32 14, !dbg !747
  store i8 %46, i8* %48, align 1, !dbg !748
  %49 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %4, align 8, !dbg !749
  %50 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %49, i32 0, i32 6, !dbg !750
  %51 = load %struct._GKeyFile*, %struct._GKeyFile** %50, align 8, !dbg !750
  %52 = call i32 @VMTools_ConfigGetBoolean(%struct._GKeyFile* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), i32 1), !dbg !751
  %53 = trunc i32 %52 to i8, !dbg !751
  %54 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !752
  %55 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %54, i32 0, i32 16, !dbg !753
  store i8 %53, i8* %55, align 8, !dbg !754
  %56 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %4, align 8, !dbg !755
  %57 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %56, i32 0, i32 6, !dbg !756
  %58 = load %struct._GKeyFile*, %struct._GKeyFile** %57, align 8, !dbg !756
  %59 = call i32 @VMTools_ConfigGetBoolean(%struct._GKeyFile* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i32 1), !dbg !757
  %60 = trunc i32 %59 to i8, !dbg !757
  %61 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !758
  %62 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %61, i32 0, i32 17, !dbg !759
  store i8 %60, i8* %62, align 1, !dbg !760
  %63 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %4, align 8, !dbg !761
  %64 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %63, i32 0, i32 6, !dbg !762
  %65 = load %struct._GKeyFile*, %struct._GKeyFile** %64, align 8, !dbg !762
  %66 = call i8* @VMTools_ConfigGetString(%struct._GKeyFile* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* null), !dbg !763
  %67 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !764
  %68 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %67, i32 0, i32 20, !dbg !765
  store i8* %66, i8** %68, align 8, !dbg !766
  %69 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %4, align 8, !dbg !767
  %70 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %69, i32 0, i32 6, !dbg !768
  %71 = load %struct._GKeyFile*, %struct._GKeyFile** %70, align 8, !dbg !768
  %72 = call i32 @VMTools_ConfigGetInteger(%struct._GKeyFile* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i32 0), !dbg !769
  %73 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !770
  %74 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %73, i32 0, i32 21, !dbg !771
  store i32 %72, i32* %74, align 8, !dbg !772
  %75 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %4, align 8, !dbg !773
  %76 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %75, i32 0, i32 6, !dbg !774
  %77 = load %struct._GKeyFile*, %struct._GKeyFile** %76, align 8, !dbg !774
  %78 = call i32 @VMTools_ConfigGetBoolean(%struct._GKeyFile* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i32 1), !dbg !775
  %79 = trunc i32 %78 to i8, !dbg !775
  %80 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !776
  %81 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %80, i32 0, i32 35, !dbg !777
  store i8 %79, i8* %81, align 2, !dbg !778
  %82 = load i32, i32* %6, align 4, !dbg !779
  %83 = zext i32 %82 to i64, !dbg !781
  %84 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !781
  %85 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %84, i32 0, i32 1, !dbg !782
  %86 = load i8*, i8** %85, align 8, !dbg !782
  %87 = getelementptr inbounds i8, i8* %86, i64 %83, !dbg !781
  %88 = load i8, i8* %87, align 1, !dbg !781
  %89 = sext i8 %88 to i32, !dbg !781
  %90 = icmp ne i32 %89, 0, !dbg !783
  br i1 %90, label %91, label %107, !dbg !784

; <label>:91:                                     ; preds = %34
  %92 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !785
  %93 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %92, i32 0, i32 1, !dbg !787
  %94 = load i8*, i8** %93, align 8, !dbg !787
  %95 = load i32, i32* %6, align 4, !dbg !788
  %96 = zext i32 %95 to i64, !dbg !789
  %97 = getelementptr inbounds i8, i8* %94, i64 %96, !dbg !789
  %98 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !790
  %99 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %98, i32 0, i32 2, !dbg !791
  %100 = load i64, i64* %99, align 8, !dbg !791
  %101 = load i32, i32* %6, align 4, !dbg !792
  %102 = zext i32 %101 to i64, !dbg !792
  %103 = sub i64 %100, %102, !dbg !793
  %104 = call noalias i8* @g_strndup(i8* %97, i64 %103), !dbg !794
  %105 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !795
  %106 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %105, i32 0, i32 4, !dbg !796
  store i8* %104, i8** %106, align 8, !dbg !797
  br label %107, !dbg !798

; <label>:107:                                    ; preds = %91, %34
  br label %108, !dbg !799

; <label>:108:                                    ; preds = %107, %16
  %109 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !800
  %110 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %4, align 8, !dbg !801
  %111 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %110, i32 0, i32 6, !dbg !802
  %112 = load %struct._GKeyFile*, %struct._GKeyFile** %111, align 8, !dbg !802
  %113 = call i32 @VMTools_ConfigGetBoolean(%struct._GKeyFile* %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i32 0), !dbg !803
  %114 = call i32 @VmBackupStartCommon(%struct.RpcInData* %109, i32 %113), !dbg !804
  store i32 %114, i32* %2, align 4, !dbg !806
  br label %115, !dbg !806

; <label>:115:                                    ; preds = %108, %13
  %116 = load i32, i32* %2, align 4, !dbg !807
  ret i32 %116, !dbg !807
}

; Function Attrs: nounwind uwtable
define internal i32 @VmBackupStartWithOpts(%struct.RpcInData*) #0 !dbg !808 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.RpcInData*, align 8
  %4 = alloca %struct.ToolsAppCtx*, align 8
  %5 = alloca %struct.GuestQuiesceParams*, align 8
  %6 = alloca %struct.GuestQuiesceParamsV1*, align 8
  %7 = alloca %struct.GuestQuiesceParamsV2*, align 8
  %8 = alloca i32, align 4
  store %struct.RpcInData* %0, %struct.RpcInData** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %3, metadata !809, metadata !420), !dbg !810
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %4, metadata !811, metadata !420), !dbg !812
  %9 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !813
  %10 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %9, i32 0, i32 6, !dbg !814
  %11 = load i8*, i8** %10, align 8, !dbg !814
  %12 = bitcast i8* %11 to %struct.ToolsAppCtx*, !dbg !813
  store %struct.ToolsAppCtx* %12, %struct.ToolsAppCtx** %4, align 8, !dbg !812
  call void @llvm.dbg.declare(metadata %struct.GuestQuiesceParams** %5, metadata !815, metadata !420), !dbg !816
  call void @llvm.dbg.declare(metadata %struct.GuestQuiesceParamsV1** %6, metadata !817, metadata !420), !dbg !820
  store %struct.GuestQuiesceParamsV1* null, %struct.GuestQuiesceParamsV1** %6, align 8, !dbg !820
  call void @llvm.dbg.declare(metadata %struct.GuestQuiesceParamsV2** %7, metadata !821, metadata !420), !dbg !824
  call void @llvm.dbg.declare(metadata i32* %8, metadata !825, metadata !420), !dbg !826
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.VmBackupStartWithOpts, i32 0, i32 0)), !dbg !827
  %13 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !828
  %14 = icmp ne %struct.VmBackupState* %13, null, !dbg !830
  br i1 %14, label %15, label %18, !dbg !831

; <label>:15:                                     ; preds = %1
  %16 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !832
  %17 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i32 0, i32 0), i32 0), !dbg !834
  store i32 %17, i32* %2, align 4, !dbg !835
  br label %151, !dbg !835

; <label>:18:                                     ; preds = %1
  %19 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !836
  %20 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %19, i32 0, i32 1, !dbg !837
  %21 = load i8*, i8** %20, align 8, !dbg !837
  %22 = bitcast i8* %21 to %struct.GuestQuiesceParams*, !dbg !838
  store %struct.GuestQuiesceParams* %22, %struct.GuestQuiesceParams** %5, align 8, !dbg !839
  %23 = load %struct.GuestQuiesceParams*, %struct.GuestQuiesceParams** %5, align 8, !dbg !840
  %24 = getelementptr inbounds %struct.GuestQuiesceParams, %struct.GuestQuiesceParams* %23, i32 0, i32 0, !dbg !842
  %25 = load i32, i32* %24, align 8, !dbg !842
  %26 = icmp ne i32 %25, 1, !dbg !843
  br i1 %26, label %27, label %30, !dbg !844

; <label>:27:                                     ; preds = %18
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.VmBackupStartWithOpts, i32 0, i32 0)), !dbg !845
  %28 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !847
  %29 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.79, i32 0, i32 0), i32 0), !dbg !848
  store i32 %29, i32* %2, align 4, !dbg !849
  br label %151, !dbg !849

; <label>:30:                                     ; preds = %18
  %31 = call noalias i8* @g_malloc0_n(i64 1, i64 248), !dbg !850
  %32 = bitcast i8* %31 to %struct.VmBackupState*, !dbg !851
  store %struct.VmBackupState* %32, %struct.VmBackupState** @gBackupState, align 8, !dbg !852
  %33 = load %struct.GuestQuiesceParams*, %struct.GuestQuiesceParams** %5, align 8, !dbg !853
  %34 = getelementptr inbounds %struct.GuestQuiesceParams, %struct.GuestQuiesceParams* %33, i32 0, i32 0, !dbg !855
  %35 = load i32, i32* %34, align 8, !dbg !855
  %36 = icmp eq i32 %35, 1, !dbg !856
  br i1 %36, label %37, label %49, !dbg !857

; <label>:37:                                     ; preds = %30
  %38 = load %struct.GuestQuiesceParams*, %struct.GuestQuiesceParams** %5, align 8, !dbg !858
  %39 = getelementptr inbounds %struct.GuestQuiesceParams, %struct.GuestQuiesceParams* %38, i32 0, i32 1, !dbg !860
  %40 = bitcast %union.anon* %39 to %struct.GuestQuiesceParamsV1**, !dbg !861
  %41 = load %struct.GuestQuiesceParamsV1*, %struct.GuestQuiesceParamsV1** %40, align 8, !dbg !861
  store %struct.GuestQuiesceParamsV1* %41, %struct.GuestQuiesceParamsV1** %6, align 8, !dbg !862
  %42 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %4, align 8, !dbg !863
  %43 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %42, i32 0, i32 6, !dbg !864
  %44 = load %struct._GKeyFile*, %struct._GKeyFile** %43, align 8, !dbg !864
  %45 = call i32 @VMTools_ConfigGetBoolean(%struct._GKeyFile* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i32 1), !dbg !865
  %46 = trunc i32 %45 to i8, !dbg !865
  %47 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !866
  %48 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %47, i32 0, i32 35, !dbg !867
  store i8 %46, i8* %48, align 2, !dbg !868
  br label %89, !dbg !869

; <label>:49:                                     ; preds = %30
  %50 = load %struct.GuestQuiesceParams*, %struct.GuestQuiesceParams** %5, align 8, !dbg !870
  %51 = getelementptr inbounds %struct.GuestQuiesceParams, %struct.GuestQuiesceParams* %50, i32 0, i32 0, !dbg !873
  %52 = load i32, i32* %51, align 8, !dbg !873
  %53 = icmp eq i32 %52, 2, !dbg !874
  br i1 %53, label %54, label %88, !dbg !870

; <label>:54:                                     ; preds = %49
  %55 = load %struct.GuestQuiesceParams*, %struct.GuestQuiesceParams** %5, align 8, !dbg !875
  %56 = getelementptr inbounds %struct.GuestQuiesceParams, %struct.GuestQuiesceParams* %55, i32 0, i32 1, !dbg !877
  %57 = bitcast %union.anon* %56 to %struct.GuestQuiesceParamsV2**, !dbg !878
  %58 = load %struct.GuestQuiesceParamsV2*, %struct.GuestQuiesceParamsV2** %57, align 8, !dbg !878
  store %struct.GuestQuiesceParamsV2* %58, %struct.GuestQuiesceParamsV2** %7, align 8, !dbg !879
  %59 = load %struct.GuestQuiesceParamsV2*, %struct.GuestQuiesceParamsV2** %7, align 8, !dbg !880
  %60 = getelementptr inbounds %struct.GuestQuiesceParamsV2, %struct.GuestQuiesceParamsV2* %59, i32 0, i32 0, !dbg !881
  store %struct.GuestQuiesceParamsV1* %60, %struct.GuestQuiesceParamsV1** %6, align 8, !dbg !882
  %61 = load %struct.GuestQuiesceParamsV2*, %struct.GuestQuiesceParamsV2** %7, align 8, !dbg !883
  %62 = getelementptr inbounds %struct.GuestQuiesceParamsV2, %struct.GuestQuiesceParamsV2* %61, i32 0, i32 1, !dbg !884
  %63 = load i32, i32* %62, align 8, !dbg !884
  %64 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !885
  %65 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %64, i32 0, i32 31, !dbg !886
  store i32 %63, i32* %65, align 8, !dbg !887
  %66 = load %struct.GuestQuiesceParamsV2*, %struct.GuestQuiesceParamsV2** %7, align 8, !dbg !888
  %67 = getelementptr inbounds %struct.GuestQuiesceParamsV2, %struct.GuestQuiesceParamsV2* %66, i32 0, i32 2, !dbg !889
  %68 = load i32, i32* %67, align 4, !dbg !889
  %69 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !890
  %70 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %69, i32 0, i32 32, !dbg !891
  store i32 %68, i32* %70, align 4, !dbg !892
  %71 = load %struct.GuestQuiesceParamsV2*, %struct.GuestQuiesceParamsV2** %7, align 8, !dbg !893
  %72 = getelementptr inbounds %struct.GuestQuiesceParamsV2, %struct.GuestQuiesceParamsV2* %71, i32 0, i32 3, !dbg !894
  %73 = load i8, i8* %72, align 8, !dbg !894
  %74 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !895
  %75 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %74, i32 0, i32 33, !dbg !896
  store i8 %73, i8* %75, align 8, !dbg !897
  %76 = load %struct.GuestQuiesceParamsV2*, %struct.GuestQuiesceParamsV2** %7, align 8, !dbg !898
  %77 = getelementptr inbounds %struct.GuestQuiesceParamsV2, %struct.GuestQuiesceParamsV2* %76, i32 0, i32 4, !dbg !899
  %78 = load i8, i8* %77, align 1, !dbg !899
  %79 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !900
  %80 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %79, i32 0, i32 34, !dbg !901
  store i8 %78, i8* %80, align 1, !dbg !902
  %81 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %4, align 8, !dbg !903
  %82 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %81, i32 0, i32 6, !dbg !904
  %83 = load %struct._GKeyFile*, %struct._GKeyFile** %82, align 8, !dbg !904
  %84 = call i32 @VMTools_ConfigGetBoolean(%struct._GKeyFile* %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i32 0), !dbg !905
  %85 = trunc i32 %84 to i8, !dbg !905
  %86 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !906
  %87 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %86, i32 0, i32 35, !dbg !907
  store i8 %85, i8* %87, align 2, !dbg !908
  br label %88, !dbg !909

; <label>:88:                                     ; preds = %54, %49
  br label %89

; <label>:89:                                     ; preds = %88, %37
  %90 = load %struct.GuestQuiesceParamsV1*, %struct.GuestQuiesceParamsV1** %6, align 8, !dbg !910
  %91 = icmp ne %struct.GuestQuiesceParamsV1* %90, null, !dbg !912
  br i1 %91, label %92, label %143, !dbg !913

; <label>:92:                                     ; preds = %89
  %93 = load %struct.GuestQuiesceParamsV1*, %struct.GuestQuiesceParamsV1** %6, align 8, !dbg !914
  %94 = getelementptr inbounds %struct.GuestQuiesceParamsV1, %struct.GuestQuiesceParamsV1* %93, i32 0, i32 0, !dbg !916
  %95 = load i8, i8* %94, align 8, !dbg !916
  %96 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !917
  %97 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %96, i32 0, i32 12, !dbg !918
  store i8 %95, i8* %97, align 1, !dbg !919
  %98 = load %struct.GuestQuiesceParamsV1*, %struct.GuestQuiesceParamsV1** %6, align 8, !dbg !920
  %99 = getelementptr inbounds %struct.GuestQuiesceParamsV1, %struct.GuestQuiesceParamsV1* %98, i32 0, i32 1, !dbg !921
  %100 = load i8, i8* %99, align 1, !dbg !921
  %101 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !922
  %102 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %101, i32 0, i32 13, !dbg !923
  store i8 %100, i8* %102, align 2, !dbg !924
  %103 = load %struct.GuestQuiesceParamsV1*, %struct.GuestQuiesceParamsV1** %6, align 8, !dbg !925
  %104 = getelementptr inbounds %struct.GuestQuiesceParamsV1, %struct.GuestQuiesceParamsV1* %103, i32 0, i32 2, !dbg !926
  %105 = load i8, i8* %104, align 2, !dbg !926
  %106 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !927
  %107 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %106, i32 0, i32 14, !dbg !928
  store i8 %105, i8* %107, align 1, !dbg !929
  %108 = load %struct.GuestQuiesceParamsV1*, %struct.GuestQuiesceParamsV1** %6, align 8, !dbg !930
  %109 = getelementptr inbounds %struct.GuestQuiesceParamsV1, %struct.GuestQuiesceParamsV1* %108, i32 0, i32 3, !dbg !931
  %110 = load i8, i8* %109, align 1, !dbg !931
  %111 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !932
  %112 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %111, i32 0, i32 16, !dbg !933
  store i8 %110, i8* %112, align 8, !dbg !934
  %113 = load %struct.GuestQuiesceParamsV1*, %struct.GuestQuiesceParamsV1** %6, align 8, !dbg !935
  %114 = getelementptr inbounds %struct.GuestQuiesceParamsV1, %struct.GuestQuiesceParamsV1* %113, i32 0, i32 4, !dbg !936
  %115 = load i8, i8* %114, align 4, !dbg !936
  %116 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !937
  %117 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %116, i32 0, i32 17, !dbg !938
  store i8 %115, i8* %117, align 1, !dbg !939
  %118 = load %struct.GuestQuiesceParamsV1*, %struct.GuestQuiesceParamsV1** %6, align 8, !dbg !940
  %119 = getelementptr inbounds %struct.GuestQuiesceParamsV1, %struct.GuestQuiesceParamsV1* %118, i32 0, i32 5, !dbg !941
  %120 = load i8*, i8** %119, align 8, !dbg !941
  %121 = load %struct.GuestQuiesceParamsV1*, %struct.GuestQuiesceParamsV1** %6, align 8, !dbg !942
  %122 = getelementptr inbounds %struct.GuestQuiesceParamsV1, %struct.GuestQuiesceParamsV1* %121, i32 0, i32 5, !dbg !943
  %123 = load i8*, i8** %122, align 8, !dbg !943
  %124 = call i64 @strlen(i8* %123) #10, !dbg !944
  %125 = call noalias i8* @g_strndup(i8* %120, i64 %124), !dbg !945
  %126 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !946
  %127 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %126, i32 0, i32 20, !dbg !947
  store i8* %125, i8** %127, align 8, !dbg !948
  %128 = load %struct.GuestQuiesceParamsV1*, %struct.GuestQuiesceParamsV1** %6, align 8, !dbg !949
  %129 = getelementptr inbounds %struct.GuestQuiesceParamsV1, %struct.GuestQuiesceParamsV1* %128, i32 0, i32 6, !dbg !950
  %130 = load i32, i32* %129, align 8, !dbg !950
  %131 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !951
  %132 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %131, i32 0, i32 21, !dbg !952
  store i32 %130, i32* %132, align 8, !dbg !953
  %133 = load %struct.GuestQuiesceParamsV1*, %struct.GuestQuiesceParamsV1** %6, align 8, !dbg !954
  %134 = getelementptr inbounds %struct.GuestQuiesceParamsV1, %struct.GuestQuiesceParamsV1* %133, i32 0, i32 7, !dbg !955
  %135 = load i8*, i8** %134, align 8, !dbg !955
  %136 = load %struct.GuestQuiesceParamsV1*, %struct.GuestQuiesceParamsV1** %6, align 8, !dbg !956
  %137 = getelementptr inbounds %struct.GuestQuiesceParamsV1, %struct.GuestQuiesceParamsV1* %136, i32 0, i32 7, !dbg !957
  %138 = load i8*, i8** %137, align 8, !dbg !957
  %139 = call i64 @strlen(i8* %138) #10, !dbg !958
  %140 = call noalias i8* @g_strndup(i8* %135, i64 %139), !dbg !959
  %141 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !960
  %142 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %141, i32 0, i32 4, !dbg !961
  store i8* %140, i8** %142, align 8, !dbg !962
  br label %143, !dbg !963

; <label>:143:                                    ; preds = %92, %89
  %144 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !964
  %145 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %4, align 8, !dbg !965
  %146 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %145, i32 0, i32 6, !dbg !966
  %147 = load %struct._GKeyFile*, %struct._GKeyFile** %146, align 8, !dbg !966
  %148 = call i32 @VMTools_ConfigGetBoolean(%struct._GKeyFile* %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i32 1), !dbg !967
  %149 = call i32 @VmBackupStartCommon(%struct.RpcInData* %144, i32 %148), !dbg !968
  store i32 %149, i32* %8, align 4, !dbg !970
  %150 = load i32, i32* %8, align 4, !dbg !971
  store i32 %150, i32* %2, align 4, !dbg !972
  br label %151, !dbg !972

; <label>:151:                                    ; preds = %143, %27, %15
  %152 = load i32, i32* %2, align 4, !dbg !973
  ret i32 %152, !dbg !973
}

declare i32 @xdr_GuestQuiesceParams(%struct.XDR*, %struct.GuestQuiesceParams*) #2

; Function Attrs: nounwind uwtable
define internal i32 @VmBackupAbort(%struct.RpcInData*) #0 !dbg !974 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.RpcInData*, align 8
  store %struct.RpcInData* %0, %struct.RpcInData** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %3, metadata !975, metadata !420), !dbg !976
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.VmBackupAbort, i32 0, i32 0)), !dbg !977
  %4 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !978
  %5 = icmp eq %struct.VmBackupState* %4, null, !dbg !980
  br i1 %5, label %6, label %9, !dbg !981

; <label>:6:                                      ; preds = %1
  %7 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !982
  %8 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %7, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.80, i32 0, i32 0), i32 0), !dbg !984
  store i32 %8, i32* %2, align 4, !dbg !985
  br label %12, !dbg !985

; <label>:9:                                      ; preds = %1
  call void @VmBackupDoAbort(), !dbg !986
  %10 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !987
  %11 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), i32 1), !dbg !988
  store i32 %11, i32* %2, align 4, !dbg !989
  br label %12, !dbg !989

; <label>:12:                                     ; preds = %9, %6
  %13 = load i32, i32* %2, align 4, !dbg !990
  ret i32 %13, !dbg !990
}

; Function Attrs: nounwind uwtable
define internal i32 @VmBackupSnapshotCompleted(%struct.RpcInData*) #0 !dbg !991 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.RpcInData*, align 8
  store %struct.RpcInData* %0, %struct.RpcInData** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %3, metadata !992, metadata !420), !dbg !993
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.VmBackupSnapshotCompleted, i32 0, i32 0)), !dbg !994
  %4 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !995
  %5 = icmp eq %struct.VmBackupState* %4, null, !dbg !997
  br i1 %5, label %11, label %6, !dbg !998

; <label>:6:                                      ; preds = %1
  %7 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !999
  %8 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %7, i32 0, i32 30, !dbg !1000
  %9 = load %struct.VmBackupSyncCompleter*, %struct.VmBackupSyncCompleter** %8, align 8, !dbg !1000
  %10 = icmp eq %struct.VmBackupSyncCompleter* %9, null, !dbg !1001
  br i1 %10, label %11, label %14, !dbg !1002

; <label>:11:                                     ; preds = %6, %1
  %12 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !1004
  %13 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.81, i32 0, i32 0), i32 0), !dbg !1006
  store i32 %13, i32* %2, align 4, !dbg !1007
  br label %49, !dbg !1007

; <label>:14:                                     ; preds = %6
  %15 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1008
  %16 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %15, i32 0, i32 27, !dbg !1010
  %17 = load i32, i32* %16, align 8, !dbg !1010
  %18 = icmp ne i32 %17, 6, !dbg !1011
  br i1 %18, label %19, label %26, !dbg !1012

; <label>:19:                                     ; preds = %14
  %20 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1013
  %21 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %20, i32 0, i32 27, !dbg !1015
  %22 = load i32, i32* %21, align 8, !dbg !1015
  %23 = call i8* @VmBackupGetStateName(i32 %22), !dbg !1016
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.82, i32 0, i32 0), i8* %23), !dbg !1017
  %24 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !1019
  %25 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %24, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.83, i32 0, i32 0), i32 0), !dbg !1020
  store i32 %25, i32* %2, align 4, !dbg !1021
  br label %49, !dbg !1021

; <label>:26:                                     ; preds = %14
  %27 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1022
  %28 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %27, i32 0, i32 30, !dbg !1025
  %29 = load %struct.VmBackupSyncCompleter*, %struct.VmBackupSyncCompleter** %28, align 8, !dbg !1025
  %30 = getelementptr inbounds %struct.VmBackupSyncCompleter, %struct.VmBackupSyncCompleter* %29, i32 0, i32 1, !dbg !1026
  %31 = load i8 (%struct.VmBackupState*, i8*)*, i8 (%struct.VmBackupState*, i8*)** %30, align 8, !dbg !1026
  %32 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1027
  %33 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1028
  %34 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %33, i32 0, i32 30, !dbg !1029
  %35 = load %struct.VmBackupSyncCompleter*, %struct.VmBackupSyncCompleter** %34, align 8, !dbg !1029
  %36 = getelementptr inbounds %struct.VmBackupSyncCompleter, %struct.VmBackupSyncCompleter* %35, i32 0, i32 3, !dbg !1030
  %37 = load i8*, i8** %36, align 8, !dbg !1030
  %38 = call signext i8 %31(%struct.VmBackupState* %32, i8* %37), !dbg !1022
  %39 = icmp ne i8 %38, 0, !dbg !1022
  br i1 %39, label %46, label %40, !dbg !1031

; <label>:40:                                     ; preds = %26
  %41 = call signext i8 @VmBackup_SendEvent(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.84, i32 0, i32 0)), !dbg !1032
  %42 = call i32 @VmBackupOnError(), !dbg !1034
  %43 = icmp ne i32 %42, 0, !dbg !1034
  br i1 %43, label %44, label %45, !dbg !1036

; <label>:44:                                     ; preds = %40
  call void @VmBackupFinalize(), !dbg !1037
  br label %45, !dbg !1039

; <label>:45:                                     ; preds = %44, %40
  br label %46, !dbg !1040

; <label>:46:                                     ; preds = %45, %26
  %47 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !1041
  %48 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %47, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), i32 1), !dbg !1042
  store i32 %48, i32* %2, align 4, !dbg !1043
  br label %49, !dbg !1043

; <label>:49:                                     ; preds = %46, %19, %11
  %50 = load i32, i32* %2, align 4, !dbg !1044
  ret i32 %50, !dbg !1044
}

; Function Attrs: nounwind uwtable
define internal i32 @VmBackupSnapshotDone(%struct.RpcInData*) #0 !dbg !1045 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.RpcInData*, align 8
  store %struct.RpcInData* %0, %struct.RpcInData** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %3, metadata !1046, metadata !420), !dbg !1047
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.VmBackupSnapshotDone, i32 0, i32 0)), !dbg !1048
  %4 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1049
  %5 = icmp eq %struct.VmBackupState* %4, null, !dbg !1051
  br i1 %5, label %6, label %9, !dbg !1052

; <label>:6:                                      ; preds = %1
  %7 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !1053
  %8 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %7, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.80, i32 0, i32 0), i32 0), !dbg !1055
  store i32 %8, i32* %2, align 4, !dbg !1056
  br label %64, !dbg !1056

; <label>:9:                                      ; preds = %1
  %10 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1057
  %11 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %10, i32 0, i32 27, !dbg !1059
  %12 = load i32, i32* %11, align 8, !dbg !1059
  %13 = icmp ne i32 %12, 3, !dbg !1060
  br i1 %13, label %14, label %21, !dbg !1061

; <label>:14:                                     ; preds = %9
  %15 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1062
  %16 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %15, i32 0, i32 27, !dbg !1064
  %17 = load i32, i32* %16, align 8, !dbg !1064
  %18 = call i8* @VmBackupGetStateName(i32 %17), !dbg !1065
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.85, i32 0, i32 0), i8* %18), !dbg !1066
  %19 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !1068
  %20 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %19, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.86, i32 0, i32 0), i32 0), !dbg !1069
  store i32 %20, i32* %2, align 4, !dbg !1070
  br label %64, !dbg !1070

; <label>:21:                                     ; preds = %9
  %22 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !1071
  %23 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %22, i32 0, i32 2, !dbg !1074
  %24 = load i64, i64* %23, align 8, !dbg !1074
  %25 = icmp ugt i64 %24, 1, !dbg !1075
  br i1 %25, label %26, label %38, !dbg !1076

; <label>:26:                                     ; preds = %21
  %27 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !1077
  %28 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %27, i32 0, i32 1, !dbg !1079
  %29 = load i8*, i8** %28, align 8, !dbg !1079
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1080
  %31 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !1081
  %32 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %31, i32 0, i32 2, !dbg !1082
  %33 = load i64, i64* %32, align 8, !dbg !1082
  %34 = sub i64 %33, 1, !dbg !1083
  %35 = call noalias i8* @g_strndup(i8* %30, i64 %34), !dbg !1084
  %36 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1085
  %37 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %36, i32 0, i32 5, !dbg !1086
  store i8* %35, i8** %37, align 8, !dbg !1087
  br label %38, !dbg !1088

; <label>:38:                                     ; preds = %26, %21
  %39 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1089
  %40 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %39, i32 0, i32 29, !dbg !1091
  %41 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %40, align 8, !dbg !1091
  %42 = getelementptr inbounds %struct.VmBackupSyncProvider, %struct.VmBackupSyncProvider* %41, i32 0, i32 1, !dbg !1092
  %43 = load i8 (%struct.VmBackupState*, i8*)*, i8 (%struct.VmBackupState*, i8*)** %42, align 8, !dbg !1092
  %44 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1093
  %45 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1094
  %46 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %45, i32 0, i32 29, !dbg !1095
  %47 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %46, align 8, !dbg !1095
  %48 = getelementptr inbounds %struct.VmBackupSyncProvider, %struct.VmBackupSyncProvider* %47, i32 0, i32 3, !dbg !1096
  %49 = load i8*, i8** %48, align 8, !dbg !1096
  %50 = call signext i8 %43(%struct.VmBackupState* %44, i8* %49), !dbg !1089
  %51 = icmp ne i8 %50, 0, !dbg !1089
  br i1 %51, label %58, label %52, !dbg !1097

; <label>:52:                                     ; preds = %38
  %53 = call signext i8 @VmBackup_SendEvent(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.87, i32 0, i32 0)), !dbg !1098
  %54 = call i32 @VmBackupOnError(), !dbg !1100
  %55 = icmp ne i32 %54, 0, !dbg !1100
  br i1 %55, label %56, label %57, !dbg !1102

; <label>:56:                                     ; preds = %52
  call void @VmBackupFinalize(), !dbg !1103
  br label %57, !dbg !1105

; <label>:57:                                     ; preds = %56, %52
  br label %61, !dbg !1106

; <label>:58:                                     ; preds = %38
  %59 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1107
  %60 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %59, i32 0, i32 27, !dbg !1109
  store i32 4, i32* %60, align 8, !dbg !1110
  br label %61

; <label>:61:                                     ; preds = %58, %57
  %62 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !1111
  %63 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %62, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), i32 1), !dbg !1112
  store i32 %63, i32* %2, align 4, !dbg !1113
  br label %64, !dbg !1113

; <label>:64:                                     ; preds = %61, %14, %6
  %65 = load i32, i32* %2, align 4, !dbg !1114
  ret i32 %65, !dbg !1114
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @VmBackupDumpState(i8*, %struct.ToolsAppCtx*, i8*) #0 !dbg !1115 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ToolsAppCtx*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1118, metadata !420), !dbg !1119
  store %struct.ToolsAppCtx* %1, %struct.ToolsAppCtx** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %5, metadata !1120, metadata !420), !dbg !1121
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1122, metadata !420), !dbg !1123
  %7 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1124
  %8 = icmp eq %struct.VmBackupState* %7, null, !dbg !1126
  br i1 %8, label %9, label %10, !dbg !1127

; <label>:9:                                      ; preds = %3
  call void (i32, i8*, ...) @ToolsCore_LogState(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.88, i32 0, i32 0)), !dbg !1128
  br label %15, !dbg !1130

; <label>:10:                                     ; preds = %3
  %11 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1131
  %12 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %11, i32 0, i32 27, !dbg !1133
  %13 = load i32, i32* %12, align 8, !dbg !1133
  %14 = call i8* @VmBackupGetStateName(i32 %13), !dbg !1134
  call void (i32, i8*, ...) @ToolsCore_LogState(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.89, i32 0, i32 0), i8* %14), !dbg !1135
  br label %15

; <label>:15:                                     ; preds = %10, %9
  ret void, !dbg !1136
}

; Function Attrs: nounwind uwtable
define internal void @VmBackupReset(i8*, %struct.ToolsAppCtx*, i8*) #0 !dbg !1137 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ToolsAppCtx*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1138, metadata !420), !dbg !1139
  store %struct.ToolsAppCtx* %1, %struct.ToolsAppCtx** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %5, metadata !1140, metadata !420), !dbg !1141
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1142, metadata !420), !dbg !1143
  ret void, !dbg !1144
}

; Function Attrs: nounwind uwtable
define internal void @VmBackupShutdown(i8*, %struct.ToolsAppCtx*, i8*) #0 !dbg !1145 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ToolsAppCtx*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1146, metadata !420), !dbg !1147
  store %struct.ToolsAppCtx* %1, %struct.ToolsAppCtx** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %5, metadata !1148, metadata !420), !dbg !1149
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1150, metadata !420), !dbg !1151
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.VmBackupShutdown, i32 0, i32 0)), !dbg !1152
  %7 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1153
  %8 = icmp ne %struct.VmBackupState* %7, null, !dbg !1155
  br i1 %8, label %9, label %10, !dbg !1156

; <label>:9:                                      ; preds = %3
  call void @VmBackupFinalize(), !dbg !1157
  br label %10, !dbg !1159

; <label>:10:                                     ; preds = %9, %3
  ret void, !dbg !1160
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

declare %struct._GArray* @VMTools_WrapArray(i8*, i32, i32) #2

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #2

declare void @g_cclosure_user_marshal_VOID__POINTER_BOOLEAN(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @GetCallerEFlags() #5 !dbg !1161 {
  %1 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %1, metadata !1165, metadata !420), !dbg !1166
  %2 = call i64 asm sideeffect "pushf; pop $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1167, !srcloc !1168
  store i64 %2, i64* %1, align 8, !dbg !1167
  %3 = load i64, i64* %1, align 8, !dbg !1169
  %4 = trunc i64 %3 to i32, !dbg !1169
  ret i32 %4, !dbg !1170
}

; Function Attrs: nounwind
declare i32 @iopl(i32) #6

; Function Attrs: nounwind
declare i8* @strerror(i32) #6

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

declare i32 @RpcChannel_SetRetVals(%struct.RpcInData*, i8*, i32) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare signext i8 @StrUtil_GetNextIntToken(i32*, i32*, i8*, i8*) #2

declare i32 @VMTools_ConfigGetBoolean(%struct._GKeyFile*, i8*, i8*, i32) #2

declare i8* @VMTools_ConfigGetString(%struct._GKeyFile*, i8*, i8*, i8*) #2

declare i32 @VMTools_ConfigGetInteger(%struct._GKeyFile*, i8*, i8*, i32) #2

declare noalias i8* @g_strndup(i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @VmBackupStartCommon(%struct.RpcInData*, i32) #0 !dbg !1171 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.RpcInData*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ToolsAppCtx*, align 8
  %7 = alloca %struct.VmBackupSyncProvider*, align 8
  %8 = alloca %struct.VmBackupSyncCompleter*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [2 x %struct.SyncProvider], align 16
  %11 = alloca %struct.SyncProvider*, align 8
  %12 = alloca %struct._GSource*, align 8
  %13 = alloca %struct._GSource*, align 8
  store %struct.RpcInData* %0, %struct.RpcInData** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %4, metadata !1174, metadata !420), !dbg !1175
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1176, metadata !420), !dbg !1177
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %6, metadata !1178, metadata !420), !dbg !1179
  %14 = load %struct.RpcInData*, %struct.RpcInData** %4, align 8, !dbg !1180
  %15 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %14, i32 0, i32 6, !dbg !1181
  %16 = load i8*, i8** %15, align 8, !dbg !1181
  %17 = bitcast i8* %16 to %struct.ToolsAppCtx*, !dbg !1180
  store %struct.ToolsAppCtx* %17, %struct.ToolsAppCtx** %6, align 8, !dbg !1179
  call void @llvm.dbg.declare(metadata %struct.VmBackupSyncProvider** %7, metadata !1182, metadata !420), !dbg !1185
  store %struct.VmBackupSyncProvider* null, %struct.VmBackupSyncProvider** %7, align 8, !dbg !1185
  call void @llvm.dbg.declare(metadata %struct.VmBackupSyncCompleter** %8, metadata !1186, metadata !420), !dbg !1189
  store %struct.VmBackupSyncCompleter* null, %struct.VmBackupSyncCompleter** %8, align 8, !dbg !1189
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1190, metadata !420), !dbg !1191
  call void @llvm.dbg.declare(metadata [2 x %struct.SyncProvider]* %10, metadata !1192, metadata !420), !dbg !1201
  %18 = bitcast [2 x %struct.SyncProvider]* %10 to i8*, !dbg !1201
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* bitcast ([2 x %struct.SyncProvider]* @VmBackupStartCommon.providers to i8*), i64 32, i32 16, i1 false), !dbg !1201
  %19 = load i32, i32* %5, align 4, !dbg !1202
  %20 = icmp ne i32 %19, 0, !dbg !1202
  br i1 %20, label %21, label %51, !dbg !1204

; <label>:21:                                     ; preds = %2
  %22 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1205
  %23 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %22, i32 0, i32 13, !dbg !1208
  %24 = load i8, i8* %23, align 2, !dbg !1208
  %25 = sext i8 %24 to i32, !dbg !1205
  %26 = icmp ne i32 %25, 0, !dbg !1205
  br i1 %26, label %33, label %27, !dbg !1209

; <label>:27:                                     ; preds = %21
  %28 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1210
  %29 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %28, i32 0, i32 14, !dbg !1212
  %30 = load i8, i8* %29, align 1, !dbg !1212
  %31 = sext i8 %30 to i32, !dbg !1210
  %32 = icmp ne i32 %31, 0, !dbg !1210
  br i1 %32, label %33, label %48, !dbg !1213

; <label>:33:                                     ; preds = %27, %21
  %34 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1214
  %35 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %34, i32 0, i32 14, !dbg !1217
  %36 = load i8, i8* %35, align 1, !dbg !1217
  %37 = sext i8 %36 to i32, !dbg !1214
  %38 = icmp ne i32 %37, 0, !dbg !1214
  br i1 %38, label %39, label %47, !dbg !1218

; <label>:39:                                     ; preds = %33
  %40 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %6, align 8, !dbg !1219
  %41 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %40, i32 0, i32 6, !dbg !1220
  %42 = load %struct._GKeyFile*, %struct._GKeyFile** %41, align 8, !dbg !1220
  %43 = call i32 @VMTools_ConfigGetBoolean(%struct._GKeyFile* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0), i32 1), !dbg !1221
  %44 = icmp ne i32 %43, 0, !dbg !1221
  br i1 %44, label %45, label %47, !dbg !1222

; <label>:45:                                     ; preds = %39
  %46 = call %struct.VmBackupSyncProvider* @VmBackup_NewSyncDriverOnlyProvider(), !dbg !1224
  store %struct.VmBackupSyncProvider* %46, %struct.VmBackupSyncProvider** %7, align 8, !dbg !1226
  br label %47, !dbg !1227

; <label>:47:                                     ; preds = %45, %39, %33
  br label %50, !dbg !1228

; <label>:48:                                     ; preds = %27
  %49 = call %struct.VmBackupSyncProvider* @VmBackup_NewNullProvider(), !dbg !1229
  store %struct.VmBackupSyncProvider* %49, %struct.VmBackupSyncProvider** %7, align 8, !dbg !1231
  br label %50

; <label>:50:                                     ; preds = %48, %47
  br label %80, !dbg !1232

; <label>:51:                                     ; preds = %2
  store i64 0, i64* %9, align 8, !dbg !1233
  br label %52, !dbg !1236

; <label>:52:                                     ; preds = %76, %51
  %53 = load i64, i64* %9, align 8, !dbg !1237
  %54 = icmp ult i64 %53, 2, !dbg !1240
  br i1 %54, label %55, label %79, !dbg !1241

; <label>:55:                                     ; preds = %52
  call void @llvm.dbg.declare(metadata %struct.SyncProvider** %11, metadata !1242, metadata !420), !dbg !1245
  %56 = load i64, i64* %9, align 8, !dbg !1246
  %57 = getelementptr inbounds [2 x %struct.SyncProvider], [2 x %struct.SyncProvider]* %10, i64 0, i64 %56, !dbg !1247
  store %struct.SyncProvider* %57, %struct.SyncProvider** %11, align 8, !dbg !1245
  %58 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %6, align 8, !dbg !1248
  %59 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %58, i32 0, i32 6, !dbg !1250
  %60 = load %struct._GKeyFile*, %struct._GKeyFile** %59, align 8, !dbg !1250
  %61 = load %struct.SyncProvider*, %struct.SyncProvider** %11, align 8, !dbg !1251
  %62 = getelementptr inbounds %struct.SyncProvider, %struct.SyncProvider* %61, i32 0, i32 1, !dbg !1252
  %63 = load i8*, i8** %62, align 8, !dbg !1252
  %64 = call i32 @VMTools_ConfigGetBoolean(%struct._GKeyFile* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* %63, i32 1), !dbg !1253
  %65 = icmp ne i32 %64, 0, !dbg !1253
  br i1 %65, label %66, label %75, !dbg !1254

; <label>:66:                                     ; preds = %55
  %67 = load %struct.SyncProvider*, %struct.SyncProvider** %11, align 8, !dbg !1255
  %68 = getelementptr inbounds %struct.SyncProvider, %struct.SyncProvider* %67, i32 0, i32 0, !dbg !1257
  %69 = load %struct.VmBackupSyncProvider* ()*, %struct.VmBackupSyncProvider* ()** %68, align 8, !dbg !1257
  %70 = call %struct.VmBackupSyncProvider* %69(), !dbg !1255
  store %struct.VmBackupSyncProvider* %70, %struct.VmBackupSyncProvider** %7, align 8, !dbg !1258
  %71 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %7, align 8, !dbg !1259
  %72 = icmp ne %struct.VmBackupSyncProvider* %71, null, !dbg !1261
  br i1 %72, label %73, label %74, !dbg !1262

; <label>:73:                                     ; preds = %66
  br label %79, !dbg !1263

; <label>:74:                                     ; preds = %66
  br label %75, !dbg !1265

; <label>:75:                                     ; preds = %74, %55
  br label %76, !dbg !1266

; <label>:76:                                     ; preds = %75
  %77 = load i64, i64* %9, align 8, !dbg !1267
  %78 = add i64 %77, 1, !dbg !1267
  store i64 %78, i64* %9, align 8, !dbg !1267
  br label %52, !dbg !1269, !llvm.loop !1270

; <label>:79:                                     ; preds = %73, %52
  br label %80

; <label>:80:                                     ; preds = %79, %50
  %81 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %7, align 8, !dbg !1272
  %82 = icmp eq %struct.VmBackupSyncProvider* %81, null, !dbg !1274
  br i1 %82, label %83, label %85, !dbg !1275

; <label>:83:                                     ; preds = %80
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.33, i32 0, i32 0)), !dbg !1276
  %84 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !1278
  br label %256, !dbg !1279

; <label>:85:                                     ; preds = %80
  %86 = load %struct.RpcInData*, %struct.RpcInData** %4, align 8, !dbg !1280
  %87 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %86, i32 0, i32 6, !dbg !1281
  %88 = load i8*, i8** %87, align 8, !dbg !1281
  %89 = bitcast i8* %88 to %struct.ToolsAppCtx*, !dbg !1280
  %90 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1282
  %91 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %90, i32 0, i32 0, !dbg !1283
  store %struct.ToolsAppCtx* %89, %struct.ToolsAppCtx** %91, align 8, !dbg !1284
  %92 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1285
  %93 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %92, i32 0, i32 6, !dbg !1286
  store i32 1000, i32* %93, align 8, !dbg !1287
  %94 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1288
  %95 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %94, i32 0, i32 27, !dbg !1289
  store i32 0, i32* %95, align 8, !dbg !1290
  %96 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1291
  %97 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %96, i32 0, i32 28, !dbg !1292
  store i32 1, i32* %97, align 4, !dbg !1293
  %98 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %7, align 8, !dbg !1294
  %99 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1295
  %100 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %99, i32 0, i32 29, !dbg !1296
  store %struct.VmBackupSyncProvider* %98, %struct.VmBackupSyncProvider** %100, align 8, !dbg !1297
  %101 = load %struct.VmBackupSyncCompleter*, %struct.VmBackupSyncCompleter** %8, align 8, !dbg !1298
  %102 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1299
  %103 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %102, i32 0, i32 30, !dbg !1300
  store %struct.VmBackupSyncCompleter* %101, %struct.VmBackupSyncCompleter** %103, align 8, !dbg !1301
  %104 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1302
  %105 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %104, i32 0, i32 19, !dbg !1303
  store i8 0, i8* %105, align 1, !dbg !1304
  %106 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1305
  %107 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %106, i32 0, i32 3, !dbg !1306
  call void @g_static_mutex_init(%struct.GStaticMutex* %107), !dbg !1307
  %108 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %6, align 8, !dbg !1308
  %109 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %108, i32 0, i32 6, !dbg !1309
  %110 = load %struct._GKeyFile*, %struct._GKeyFile** %109, align 8, !dbg !1309
  %111 = call i32 @VMTools_ConfigGetBoolean(%struct._GKeyFile* %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0), i32 1), !dbg !1310
  %112 = trunc i32 %111 to i8, !dbg !1310
  %113 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1311
  %114 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %113, i32 0, i32 18, !dbg !1312
  store i8 %112, i8* %114, align 2, !dbg !1313
  %115 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1314
  %116 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %115, i32 0, i32 13, !dbg !1315
  %117 = load i8, i8* %116, align 2, !dbg !1315
  %118 = sext i8 %117 to i32, !dbg !1314
  %119 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1316
  %120 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %119, i32 0, i32 14, !dbg !1317
  %121 = load i8, i8* %120, align 1, !dbg !1317
  %122 = sext i8 %121 to i32, !dbg !1316
  %123 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1318
  %124 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %123, i32 0, i32 16, !dbg !1319
  %125 = load i8, i8* %124, align 8, !dbg !1319
  %126 = sext i8 %125 to i32, !dbg !1318
  %127 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1320
  %128 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %127, i32 0, i32 17, !dbg !1321
  %129 = load i8, i8* %128, align 1, !dbg !1321
  %130 = sext i8 %129 to i32, !dbg !1320
  %131 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1322
  %132 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %131, i32 0, i32 20, !dbg !1323
  %133 = load i8*, i8** %132, align 8, !dbg !1323
  %134 = icmp ne i8* %133, null, !dbg !1324
  br i1 %134, label %135, label %139, !dbg !1325

; <label>:135:                                    ; preds = %85
  %136 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1326
  %137 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %136, i32 0, i32 20, !dbg !1327
  %138 = load i8*, i8** %137, align 8, !dbg !1327
  br label %140, !dbg !1328

; <label>:139:                                    ; preds = %85
  br label %140, !dbg !1330

; <label>:140:                                    ; preds = %139, %135
  %141 = phi i8* [ %138, %135 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), %139 ], !dbg !1332
  %142 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1334
  %143 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %142, i32 0, i32 21, !dbg !1335
  %144 = load i32, i32* %143, align 8, !dbg !1335
  %145 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1336
  %146 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %145, i32 0, i32 18, !dbg !1337
  %147 = load i8, i8* %146, align 2, !dbg !1337
  %148 = sext i8 %147 to i32, !dbg !1336
  %149 = load i32, i32* %5, align 4, !dbg !1338
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.35, i32 0, i32 0), i32 %118, i32 %122, i32 %126, i32 %130, i8* %141, i32 %144, i32 %148, i32 %149), !dbg !1339
  %150 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %6, align 8, !dbg !1340
  %151 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %150, i32 0, i32 6, !dbg !1341
  %152 = load %struct._GKeyFile*, %struct._GKeyFile** %151, align 8, !dbg !1341
  %153 = call i8* @VMTools_ConfigGetString(%struct._GKeyFile* %152, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0), i8* null), !dbg !1342
  %154 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1343
  %155 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %154, i32 0, i32 15, !dbg !1344
  store i8* %153, i8** %155, align 8, !dbg !1345
  %156 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1346
  %157 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %156, i32 0, i32 15, !dbg !1347
  %158 = load i8*, i8** %157, align 8, !dbg !1347
  %159 = icmp ne i8* %158, null, !dbg !1348
  br i1 %159, label %160, label %164, !dbg !1349

; <label>:160:                                    ; preds = %140
  %161 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1350
  %162 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %161, i32 0, i32 15, !dbg !1351
  %163 = load i8*, i8** %162, align 8, !dbg !1351
  br label %165, !dbg !1352

; <label>:164:                                    ; preds = %140
  br label %165, !dbg !1353

; <label>:165:                                    ; preds = %164, %160
  %166 = phi i8* [ %163, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), %164 ], !dbg !1354
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0), i8* %166), !dbg !1355
  %167 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1356
  %168 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %167, i32 0, i32 4, !dbg !1357
  %169 = load i8*, i8** %168, align 8, !dbg !1357
  %170 = icmp ne i8* %169, null, !dbg !1358
  br i1 %170, label %171, label %175, !dbg !1358

; <label>:171:                                    ; preds = %165
  %172 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1359
  %173 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %172, i32 0, i32 4, !dbg !1360
  %174 = load i8*, i8** %173, align 8, !dbg !1360
  br label %176, !dbg !1361

; <label>:175:                                    ; preds = %165
  br label %176, !dbg !1362

; <label>:176:                                    ; preds = %175, %171
  %177 = phi i8* [ %174, %171 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), %175 ], !dbg !1363
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0), i8* %177), !dbg !1364
  %178 = call i8* @GuestApp_GetConfPath(), !dbg !1365
  %179 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1366
  %180 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %179, i32 0, i32 24, !dbg !1367
  store i8* %178, i8** %180, align 8, !dbg !1368
  %181 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1369
  %182 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %181, i32 0, i32 24, !dbg !1371
  %183 = load i8*, i8** %182, align 8, !dbg !1371
  %184 = icmp eq i8* %183, null, !dbg !1372
  br i1 %184, label %185, label %187, !dbg !1373

; <label>:185:                                    ; preds = %176
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i32 0, i32 0)), !dbg !1374
  %186 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !1376
  br label %256, !dbg !1377

; <label>:187:                                    ; preds = %176
  %188 = call signext i8 @VmBackup_SendEvent(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0)), !dbg !1378
  %189 = call signext i8 @VmBackupStartScripts(i32 0), !dbg !1379
  %190 = icmp ne i8 %189, 0, !dbg !1379
  br i1 %190, label %193, label %191, !dbg !1381

; <label>:191:                                    ; preds = %187
  %192 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !1382
  br label %256, !dbg !1384

; <label>:193:                                    ; preds = %187
  %194 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1385
  %195 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %194, i32 0, i32 21, !dbg !1387
  %196 = load i32, i32* %195, align 8, !dbg !1387
  %197 = icmp eq i32 %196, 0, !dbg !1388
  br i1 %197, label %198, label %205, !dbg !1389

; <label>:198:                                    ; preds = %193
  %199 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %6, align 8, !dbg !1390
  %200 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %199, i32 0, i32 6, !dbg !1392
  %201 = load %struct._GKeyFile*, %struct._GKeyFile** %200, align 8, !dbg !1392
  %202 = call i32 @VMTools_ConfigGetInteger(%struct._GKeyFile* %201, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i32 900), !dbg !1393
  %203 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1394
  %204 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %203, i32 0, i32 21, !dbg !1395
  store i32 %202, i32* %204, align 8, !dbg !1396
  br label %205, !dbg !1397

; <label>:205:                                    ; preds = %198, %193
  %206 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1398
  %207 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %206, i32 0, i32 21, !dbg !1400
  %208 = load i32, i32* %207, align 8, !dbg !1400
  %209 = icmp ne i32 %208, 0, !dbg !1401
  br i1 %209, label %210, label %231, !dbg !1402

; <label>:210:                                    ; preds = %205
  %211 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1403
  %212 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %211, i32 0, i32 21, !dbg !1405
  %213 = load i32, i32* %212, align 8, !dbg !1405
  %214 = call %struct._GSource* @g_timeout_source_new_seconds(i32 %213), !dbg !1406
  %215 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1407
  %216 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %215, i32 0, i32 7, !dbg !1408
  store %struct._GSource* %214, %struct._GSource** %216, align 8, !dbg !1409
  br label %217, !dbg !1410, !llvm.loop !1411

; <label>:217:                                    ; preds = %210
  call void @llvm.dbg.declare(metadata %struct._GSource** %12, metadata !1412, metadata !420), !dbg !1414
  %218 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1415
  %219 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %218, i32 0, i32 7, !dbg !1417
  %220 = load %struct._GSource*, %struct._GSource** %219, align 8, !dbg !1417
  store %struct._GSource* %220, %struct._GSource** %12, align 8, !dbg !1418
  %221 = load %struct._GSource*, %struct._GSource** %12, align 8, !dbg !1419
  call void @g_source_set_callback(%struct._GSource* %221, i32 (i8*)* @VmBackupAbortTimer, i8* null, void (i8*)* null), !dbg !1420
  %222 = load %struct._GSource*, %struct._GSource** %12, align 8, !dbg !1421
  %223 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1422
  %224 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %223, i32 0, i32 0, !dbg !1423
  %225 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %224, align 8, !dbg !1423
  %226 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %225, i32 0, i32 4, !dbg !1424
  %227 = load %struct._GMainLoop*, %struct._GMainLoop** %226, align 8, !dbg !1424
  %228 = call %struct._GMainContext* @g_main_loop_get_context(%struct._GMainLoop* %227), !dbg !1425
  %229 = call i32 @g_source_attach(%struct._GSource* %222, %struct._GMainContext* %228), !dbg !1427
  br label %230, !dbg !1429

; <label>:230:                                    ; preds = %217
  br label %231, !dbg !1430

; <label>:231:                                    ; preds = %230, %205
  br label %232, !dbg !1431, !llvm.loop !1432

; <label>:232:                                    ; preds = %231
  %233 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1433
  %234 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %233, i32 0, i32 6, !dbg !1436
  %235 = load i32, i32* %234, align 8, !dbg !1436
  %236 = call %struct._GSource* @g_timeout_source_new(i32 %235), !dbg !1437
  %237 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1438
  %238 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %237, i32 0, i32 8, !dbg !1439
  store %struct._GSource* %236, %struct._GSource** %238, align 8, !dbg !1440
  br label %239, !dbg !1441, !llvm.loop !1442

; <label>:239:                                    ; preds = %232
  call void @llvm.dbg.declare(metadata %struct._GSource** %13, metadata !1444, metadata !420), !dbg !1446
  %240 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1447
  %241 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %240, i32 0, i32 8, !dbg !1449
  %242 = load %struct._GSource*, %struct._GSource** %241, align 8, !dbg !1449
  store %struct._GSource* %242, %struct._GSource** %13, align 8, !dbg !1450
  %243 = load %struct._GSource*, %struct._GSource** %13, align 8, !dbg !1451
  call void @g_source_set_callback(%struct._GSource* %243, i32 (i8*)* @VmBackupAsyncCallback, i8* null, void (i8*)* null), !dbg !1452
  %244 = load %struct._GSource*, %struct._GSource** %13, align 8, !dbg !1453
  %245 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1454
  %246 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %245, i32 0, i32 0, !dbg !1455
  %247 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %246, align 8, !dbg !1455
  %248 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %247, i32 0, i32 4, !dbg !1456
  %249 = load %struct._GMainLoop*, %struct._GMainLoop** %248, align 8, !dbg !1456
  %250 = call %struct._GMainContext* @g_main_loop_get_context(%struct._GMainLoop* %249), !dbg !1457
  %251 = call i32 @g_source_attach(%struct._GSource* %244, %struct._GMainContext* %250), !dbg !1459
  br label %252, !dbg !1461

; <label>:252:                                    ; preds = %239
  br label %253, !dbg !1462

; <label>:253:                                    ; preds = %252
  %254 = load %struct.RpcInData*, %struct.RpcInData** %4, align 8, !dbg !1464
  %255 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %254, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), i32 1), !dbg !1465
  store i32 %255, i32* %3, align 4, !dbg !1466
  br label %309, !dbg !1466

; <label>:256:                                    ; preds = %191, %185, %83
  %257 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1467
  %258 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %257, i32 0, i32 9, !dbg !1469
  %259 = load %struct._GSource*, %struct._GSource** %258, align 8, !dbg !1469
  %260 = icmp ne %struct._GSource* %259, null, !dbg !1470
  br i1 %260, label %261, label %270, !dbg !1471

; <label>:261:                                    ; preds = %256
  %262 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1472
  %263 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %262, i32 0, i32 9, !dbg !1474
  %264 = load %struct._GSource*, %struct._GSource** %263, align 8, !dbg !1474
  call void @g_source_destroy(%struct._GSource* %264), !dbg !1475
  %265 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1476
  %266 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %265, i32 0, i32 9, !dbg !1477
  %267 = load %struct._GSource*, %struct._GSource** %266, align 8, !dbg !1477
  call void @g_source_unref(%struct._GSource* %267), !dbg !1478
  %268 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1479
  %269 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %268, i32 0, i32 9, !dbg !1480
  store %struct._GSource* null, %struct._GSource** %269, align 8, !dbg !1481
  br label %270, !dbg !1482

; <label>:270:                                    ; preds = %261, %256
  %271 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1483
  %272 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %271, i32 0, i32 29, !dbg !1485
  %273 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %272, align 8, !dbg !1485
  %274 = icmp ne %struct.VmBackupSyncProvider* %273, null, !dbg !1483
  br i1 %274, label %275, label %284, !dbg !1486

; <label>:275:                                    ; preds = %270
  %276 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1487
  %277 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %276, i32 0, i32 29, !dbg !1489
  %278 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %277, align 8, !dbg !1489
  %279 = getelementptr inbounds %struct.VmBackupSyncProvider, %struct.VmBackupSyncProvider* %278, i32 0, i32 2, !dbg !1490
  %280 = load void (%struct.VmBackupSyncProvider*)*, void (%struct.VmBackupSyncProvider*)** %279, align 8, !dbg !1490
  %281 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1491
  %282 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %281, i32 0, i32 29, !dbg !1492
  %283 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %282, align 8, !dbg !1492
  call void %280(%struct.VmBackupSyncProvider* %283), !dbg !1487
  br label %284, !dbg !1493

; <label>:284:                                    ; preds = %275, %270
  %285 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1494
  %286 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %285, i32 0, i32 30, !dbg !1496
  %287 = load %struct.VmBackupSyncCompleter*, %struct.VmBackupSyncCompleter** %286, align 8, !dbg !1496
  %288 = icmp ne %struct.VmBackupSyncCompleter* %287, null, !dbg !1494
  br i1 %288, label %289, label %298, !dbg !1497

; <label>:289:                                    ; preds = %284
  %290 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1498
  %291 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %290, i32 0, i32 30, !dbg !1500
  %292 = load %struct.VmBackupSyncCompleter*, %struct.VmBackupSyncCompleter** %291, align 8, !dbg !1500
  %293 = getelementptr inbounds %struct.VmBackupSyncCompleter, %struct.VmBackupSyncCompleter* %292, i32 0, i32 2, !dbg !1501
  %294 = load void (%struct.VmBackupSyncCompleter*)*, void (%struct.VmBackupSyncCompleter*)** %293, align 8, !dbg !1501
  %295 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1502
  %296 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %295, i32 0, i32 30, !dbg !1503
  %297 = load %struct.VmBackupSyncCompleter*, %struct.VmBackupSyncCompleter** %296, align 8, !dbg !1503
  call void %294(%struct.VmBackupSyncCompleter* %297), !dbg !1498
  br label %298, !dbg !1504

; <label>:298:                                    ; preds = %289, %284
  %299 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1505
  %300 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %299, i32 0, i32 20, !dbg !1506
  %301 = load i8*, i8** %300, align 8, !dbg !1506
  call void @g_free(i8* %301), !dbg !1507
  %302 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1508
  %303 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %302, i32 0, i32 4, !dbg !1509
  %304 = load i8*, i8** %303, align 8, !dbg !1509
  call void @g_free(i8* %304), !dbg !1510
  %305 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1511
  %306 = bitcast %struct.VmBackupState* %305 to i8*, !dbg !1511
  call void @g_free(i8* %306), !dbg !1512
  store %struct.VmBackupState* null, %struct.VmBackupState** @gBackupState, align 8, !dbg !1513
  %307 = load %struct.RpcInData*, %struct.RpcInData** %4, align 8, !dbg !1514
  %308 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %307, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.42, i32 0, i32 0), i32 0), !dbg !1515
  store i32 %308, i32* %3, align 4, !dbg !1516
  br label %309, !dbg !1516

; <label>:309:                                    ; preds = %298, %253
  %310 = load i32, i32* %3, align 4, !dbg !1517
  ret i32 %310, !dbg !1517
}

declare %struct.VmBackupSyncProvider* @VmBackup_NewSyncDriverProvider() #2

declare %struct.VmBackupSyncProvider* @VmBackup_NewNullProvider() #2

declare %struct.VmBackupSyncProvider* @VmBackup_NewSyncDriverOnlyProvider() #2

declare i32 @assert(...) #2

declare void @g_static_mutex_init(%struct.GStaticMutex*) #2

declare i8* @GuestApp_GetConfPath() #2

; Function Attrs: nounwind uwtable
define internal signext i8 @VmBackupStartScripts(i32) #0 !dbg !1518 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1522, metadata !420), !dbg !1523
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1524, metadata !420), !dbg !1525
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1526, metadata !420), !dbg !1527
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.VmBackupStartScripts, i32 0, i32 0)), !dbg !1528
  %6 = load i32, i32* %3, align 4, !dbg !1529
  switch i32 %6, label %10 [
    i32 0, label %7
    i32 1, label %8
    i32 2, label %9
  ], !dbg !1530

; <label>:7:                                      ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i8** %4, align 8, !dbg !1531
  store i32 1, i32* %5, align 4, !dbg !1533
  br label %11, !dbg !1534

; <label>:8:                                      ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i32 0, i32 0), i8** %4, align 8, !dbg !1535
  store i32 7, i32* %5, align 4, !dbg !1536
  br label %11, !dbg !1537

; <label>:9:                                      ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0), i8** %4, align 8, !dbg !1538
  store i32 5, i32* %5, align 4, !dbg !1539
  br label %11, !dbg !1540

; <label>:10:                                     ; preds = %1
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i32 368) #11, !dbg !1541
  unreachable, !dbg !1541

; <label>:11:                                     ; preds = %9, %8, %7
  %12 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1542
  %13 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %12, i32 0, i32 17, !dbg !1544
  %14 = load i8, i8* %13, align 1, !dbg !1544
  %15 = sext i8 %14 to i32, !dbg !1542
  %16 = icmp ne i32 %15, 0, !dbg !1542
  br i1 %16, label %17, label %27, !dbg !1545

; <label>:17:                                     ; preds = %11
  %18 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1546
  %19 = load i32, i32* %3, align 4, !dbg !1547
  %20 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1548
  %21 = call %struct.VmBackupOp* @VmBackup_NewScriptOp(i32 %19, %struct.VmBackupState* %20), !dbg !1549
  %22 = load i8*, i8** %4, align 8, !dbg !1550
  %23 = call signext i8 @VmBackup_SetCurrentOp(%struct.VmBackupState* %18, %struct.VmBackupOp* %21, i8 (%struct.VmBackupState*)* null, i8* %22), !dbg !1551
  %24 = icmp ne i8 %23, 0, !dbg !1551
  br i1 %24, label %27, label %25, !dbg !1552

; <label>:25:                                     ; preds = %17
  %26 = call signext i8 @VmBackup_SendEvent(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.49, i32 0, i32 0)), !dbg !1554
  store i8 0, i8* %2, align 1, !dbg !1556
  br label %31, !dbg !1556

; <label>:27:                                     ; preds = %17, %11
  %28 = load i32, i32* %5, align 4, !dbg !1557
  %29 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1558
  %30 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %29, i32 0, i32 27, !dbg !1559
  store i32 %28, i32* %30, align 8, !dbg !1560
  store i8 1, i8* %2, align 1, !dbg !1561
  br label %31, !dbg !1561

; <label>:31:                                     ; preds = %27, %25
  %32 = load i8, i8* %2, align 1, !dbg !1562
  ret i8 %32, !dbg !1562
}

declare %struct._GSource* @g_timeout_source_new_seconds(i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @VmBackupAbortTimer(i8*) #0 !dbg !1563 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1564, metadata !420), !dbg !1565
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.50, i32 0, i32 0)), !dbg !1566
  %3 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1567
  %4 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %3, i32 0, i32 7, !dbg !1568
  %5 = load %struct._GSource*, %struct._GSource** %4, align 8, !dbg !1568
  call void @g_source_unref(%struct._GSource* %5), !dbg !1569
  %6 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1570
  %7 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %6, i32 0, i32 7, !dbg !1571
  store %struct._GSource* null, %struct._GSource** %7, align 8, !dbg !1572
  call void @VmBackupDoAbort(), !dbg !1573
  ret i32 0, !dbg !1574
}

; Function Attrs: nounwind uwtable
define internal i32 @VmBackupAsyncCallback(i8*) #0 !dbg !1575 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._GSource*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1576, metadata !420), !dbg !1577
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1578, metadata !420), !dbg !1579
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.VmBackupAsyncCallback, i32 0, i32 0)), !dbg !1580
  %5 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1581
  %6 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %5, i32 0, i32 8, !dbg !1582
  %7 = load %struct._GSource*, %struct._GSource** %6, align 8, !dbg !1582
  call void @g_source_unref(%struct._GSource* %7), !dbg !1583
  %8 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1584
  %9 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %8, i32 0, i32 8, !dbg !1585
  store %struct._GSource* null, %struct._GSource** %9, align 8, !dbg !1586
  %10 = call i32 @VmBackupPostProcessCurrentOp(i32* %3), !dbg !1587
  %11 = icmp ne i32 %10, 0, !dbg !1587
  br i1 %11, label %14, label %12, !dbg !1589

; <label>:12:                                     ; preds = %1
  %13 = call i32 @VmBackupOnError(), !dbg !1590
  br label %74, !dbg !1592

; <label>:14:                                     ; preds = %1
  %15 = load i32, i32* %3, align 4, !dbg !1593
  %16 = icmp ne i32 %15, 0, !dbg !1593
  br i1 %16, label %17, label %18, !dbg !1596

; <label>:17:                                     ; preds = %14
  br label %74, !dbg !1597

; <label>:18:                                     ; preds = %14
  br label %19

; <label>:19:                                     ; preds = %18
  %20 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1599
  %21 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %20, i32 0, i32 27, !dbg !1600
  %22 = load i32, i32* %21, align 8, !dbg !1600
  switch i32 %22, label %65 [
    i32 1, label %23
    i32 2, label %29
    i32 3, label %35
    i32 4, label %36
    i32 5, label %50
    i32 7, label %56
    i32 6, label %56
    i32 8, label %59
  ], !dbg !1601

; <label>:23:                                     ; preds = %19
  %24 = call signext i8 @VmBackupEnableSyncWait(), !dbg !1602
  %25 = icmp ne i8 %24, 0, !dbg !1602
  br i1 %25, label %28, label %26, !dbg !1605

; <label>:26:                                     ; preds = %23
  %27 = call i32 @VmBackupOnError(), !dbg !1606
  br label %28, !dbg !1608

; <label>:28:                                     ; preds = %26, %23
  br label %73, !dbg !1609

; <label>:29:                                     ; preds = %19
  %30 = call signext i8 @VmBackupEnableSync(), !dbg !1610
  %31 = icmp ne i8 %30, 0, !dbg !1610
  br i1 %31, label %34, label %32, !dbg !1612

; <label>:32:                                     ; preds = %29
  %33 = call i32 @VmBackupOnError(), !dbg !1613
  br label %34, !dbg !1615

; <label>:34:                                     ; preds = %32, %29
  br label %73, !dbg !1616

; <label>:35:                                     ; preds = %19
  br label %73, !dbg !1617

; <label>:36:                                     ; preds = %19
  %37 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1618
  %38 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %37, i32 0, i32 0, !dbg !1619
  %39 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %38, align 8, !dbg !1619
  %40 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %39, i32 0, i32 10, !dbg !1620
  %41 = load i8*, i8** %40, align 8, !dbg !1620
  %42 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1621
  %43 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %42, i32 0, i32 0, !dbg !1622
  %44 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %43, align 8, !dbg !1622
  call void (i8*, i8*, ...) @g_signal_emit_by_name(i8* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), %struct.ToolsAppCtx* %44, i32 0), !dbg !1623
  %45 = call signext i8 @VmBackupStartScripts(i32 2), !dbg !1624
  %46 = icmp ne i8 %45, 0, !dbg !1624
  br i1 %46, label %49, label %47, !dbg !1626

; <label>:47:                                     ; preds = %36
  %48 = call i32 @VmBackupOnError(), !dbg !1627
  br label %49, !dbg !1629

; <label>:49:                                     ; preds = %47, %36
  br label %73, !dbg !1630

; <label>:50:                                     ; preds = %19
  %51 = call signext i8 @VmBackupEnableCompleteWait(), !dbg !1631
  %52 = icmp ne i8 %51, 0, !dbg !1631
  br i1 %52, label %55, label %53, !dbg !1633

; <label>:53:                                     ; preds = %50
  %54 = call i32 @VmBackupOnError(), !dbg !1634
  br label %55, !dbg !1636

; <label>:55:                                     ; preds = %53, %50
  br label %73, !dbg !1637

; <label>:56:                                     ; preds = %19, %19
  %57 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1638
  %58 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %57, i32 0, i32 27, !dbg !1639
  store i32 0, i32* %58, align 8, !dbg !1640
  br label %73, !dbg !1641

; <label>:59:                                     ; preds = %19
  %60 = call signext i8 @VmBackupStartScripts(i32 1), !dbg !1642
  %61 = icmp ne i8 %60, 0, !dbg !1642
  br i1 %61, label %64, label %62, !dbg !1644

; <label>:62:                                     ; preds = %59
  %63 = call i32 @VmBackupOnError(), !dbg !1645
  br label %64, !dbg !1647

; <label>:64:                                     ; preds = %62, %59
  br label %73, !dbg !1648

; <label>:65:                                     ; preds = %19
  br label %66, !dbg !1649, !llvm.loop !1650

; <label>:66:                                     ; preds = %65
  %67 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1651
  %68 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %67, i32 0, i32 27, !dbg !1654
  %69 = load i32, i32* %68, align 8, !dbg !1654
  %70 = call i8* @VmBackupGetStateName(i32 %69), !dbg !1655
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.68, i32 0, i32 0), i8* %70), !dbg !1656
  br label %71, !dbg !1658

; <label>:71:                                     ; preds = %71, %66
  br label %71, !dbg !1659, !llvm.loop !1663
                                                  ; No predecessors!
  br label %73, !dbg !1665

; <label>:73:                                     ; preds = %72, %64, %56, %55, %49, %35, %34, %28
  br label %74, !dbg !1666

; <label>:74:                                     ; preds = %73, %17, %12
  %75 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1668
  %76 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %75, i32 0, i32 27, !dbg !1670
  %77 = load i32, i32* %76, align 8, !dbg !1670
  %78 = icmp eq i32 %77, 0, !dbg !1671
  br i1 %78, label %79, label %80, !dbg !1672

; <label>:79:                                     ; preds = %74
  call void @VmBackupFinalize(), !dbg !1673
  br label %105, !dbg !1675

; <label>:80:                                     ; preds = %74
  %81 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1676
  %82 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %81, i32 0, i32 11, !dbg !1678
  store i8 0, i8* %82, align 8, !dbg !1679
  br label %83, !dbg !1680, !llvm.loop !1681

; <label>:83:                                     ; preds = %80
  %84 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1682
  %85 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %84, i32 0, i32 6, !dbg !1685
  %86 = load i32, i32* %85, align 8, !dbg !1685
  %87 = call %struct._GSource* @g_timeout_source_new(i32 %86), !dbg !1686
  %88 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1687
  %89 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %88, i32 0, i32 8, !dbg !1688
  store %struct._GSource* %87, %struct._GSource** %89, align 8, !dbg !1689
  br label %90, !dbg !1690, !llvm.loop !1691

; <label>:90:                                     ; preds = %83
  call void @llvm.dbg.declare(metadata %struct._GSource** %4, metadata !1693, metadata !420), !dbg !1695
  %91 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1696
  %92 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %91, i32 0, i32 8, !dbg !1698
  %93 = load %struct._GSource*, %struct._GSource** %92, align 8, !dbg !1698
  store %struct._GSource* %93, %struct._GSource** %4, align 8, !dbg !1699
  %94 = load %struct._GSource*, %struct._GSource** %4, align 8, !dbg !1700
  call void @g_source_set_callback(%struct._GSource* %94, i32 (i8*)* @VmBackupAsyncCallback, i8* null, void (i8*)* null), !dbg !1701
  %95 = load %struct._GSource*, %struct._GSource** %4, align 8, !dbg !1702
  %96 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1703
  %97 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %96, i32 0, i32 0, !dbg !1704
  %98 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %97, align 8, !dbg !1704
  %99 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %98, i32 0, i32 4, !dbg !1705
  %100 = load %struct._GMainLoop*, %struct._GMainLoop** %99, align 8, !dbg !1705
  %101 = call %struct._GMainContext* @g_main_loop_get_context(%struct._GMainLoop* %100), !dbg !1706
  %102 = call i32 @g_source_attach(%struct._GSource* %95, %struct._GMainContext* %101), !dbg !1708
  br label %103, !dbg !1710

; <label>:103:                                    ; preds = %90
  br label %104, !dbg !1711

; <label>:104:                                    ; preds = %103
  br label %105

; <label>:105:                                    ; preds = %104, %79
  ret i32 0, !dbg !1713
}

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #8

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @VmBackup_SetCurrentOp(%struct.VmBackupState*, %struct.VmBackupOp*, i8 (%struct.VmBackupState*)*, i8*) #5 !dbg !1714 {
  %5 = alloca %struct.VmBackupState*, align 8
  %6 = alloca %struct.VmBackupOp*, align 8
  %7 = alloca i8 (%struct.VmBackupState*)*, align 8
  %8 = alloca i8*, align 8
  store %struct.VmBackupState* %0, %struct.VmBackupState** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupState** %5, metadata !1721, metadata !420), !dbg !1722
  store %struct.VmBackupOp* %1, %struct.VmBackupOp** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupOp** %6, metadata !1723, metadata !420), !dbg !1724
  store i8 (%struct.VmBackupState*)* %2, i8 (%struct.VmBackupState*)** %7, align 8
  call void @llvm.dbg.declare(metadata i8 (%struct.VmBackupState*)** %7, metadata !1725, metadata !420), !dbg !1726
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1727, metadata !420), !dbg !1728
  %9 = load %struct.VmBackupState*, %struct.VmBackupState** %5, align 8, !dbg !1729
  %10 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %9, i32 0, i32 3, !dbg !1730
  %11 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %10), !dbg !1731
  call void @g_mutex_lock(%union._GMutex* %11), !dbg !1732
  %12 = load %struct.VmBackupOp*, %struct.VmBackupOp** %6, align 8, !dbg !1734
  %13 = load %struct.VmBackupState*, %struct.VmBackupState** %5, align 8, !dbg !1735
  %14 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %13, i32 0, i32 1, !dbg !1736
  store %struct.VmBackupOp* %12, %struct.VmBackupOp** %14, align 8, !dbg !1737
  %15 = load i8 (%struct.VmBackupState*)*, i8 (%struct.VmBackupState*)** %7, align 8, !dbg !1738
  %16 = load %struct.VmBackupState*, %struct.VmBackupState** %5, align 8, !dbg !1739
  %17 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %16, i32 0, i32 10, !dbg !1740
  store i8 (%struct.VmBackupState*)* %15, i8 (%struct.VmBackupState*)** %17, align 8, !dbg !1741
  %18 = load i8*, i8** %8, align 8, !dbg !1742
  %19 = load %struct.VmBackupState*, %struct.VmBackupState** %5, align 8, !dbg !1743
  %20 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %19, i32 0, i32 2, !dbg !1744
  store i8* %18, i8** %20, align 8, !dbg !1745
  %21 = load i8 (%struct.VmBackupState*)*, i8 (%struct.VmBackupState*)** %7, align 8, !dbg !1746
  %22 = icmp ne i8 (%struct.VmBackupState*)* %21, null, !dbg !1747
  br i1 %22, label %23, label %26, !dbg !1748

; <label>:23:                                     ; preds = %4
  %24 = load %struct.VmBackupOp*, %struct.VmBackupOp** %6, align 8, !dbg !1749
  %25 = icmp eq %struct.VmBackupOp* %24, null, !dbg !1750
  br label %26

; <label>:26:                                     ; preds = %23, %4
  %27 = phi i1 [ false, %4 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32, !dbg !1751
  %29 = trunc i32 %28 to i8, !dbg !1753
  %30 = load %struct.VmBackupState*, %struct.VmBackupState** %5, align 8, !dbg !1754
  %31 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %30, i32 0, i32 11, !dbg !1755
  store i8 %29, i8* %31, align 8, !dbg !1756
  %32 = load %struct.VmBackupState*, %struct.VmBackupState** %5, align 8, !dbg !1757
  %33 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %32, i32 0, i32 3, !dbg !1758
  %34 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %33), !dbg !1759
  call void @g_mutex_unlock(%union._GMutex* %34), !dbg !1760
  %35 = load %struct.VmBackupOp*, %struct.VmBackupOp** %6, align 8, !dbg !1761
  %36 = icmp ne %struct.VmBackupOp* %35, null, !dbg !1762
  %37 = zext i1 %36 to i32, !dbg !1762
  %38 = trunc i32 %37 to i8, !dbg !1763
  ret i8 %38, !dbg !1764
}

declare %struct.VmBackupOp* @VmBackup_NewScriptOp(i32, %struct.VmBackupState*) #2

declare void @g_mutex_lock(%union._GMutex*) #2

declare %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex*) #2

declare void @g_mutex_unlock(%union._GMutex*) #2

; Function Attrs: nounwind uwtable
define internal void @VmBackupDoAbort() #0 !dbg !1765 {
  %1 = alloca i8*, align 8
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.VmBackupDoAbort, i32 0, i32 0)), !dbg !1766
  %2 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1767
  %3 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %2, i32 0, i32 27, !dbg !1769
  %4 = load i32, i32* %3, align 8, !dbg !1769
  %5 = icmp ne i32 %4, 7, !dbg !1770
  br i1 %5, label %6, label %59, !dbg !1771

; <label>:6:                                      ; preds = %0
  %7 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1772
  %8 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %7, i32 0, i32 27, !dbg !1773
  %9 = load i32, i32* %8, align 8, !dbg !1773
  %10 = icmp ne i32 %9, 8, !dbg !1774
  br i1 %10, label %11, label %59, !dbg !1775

; <label>:11:                                     ; preds = %6
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1777, metadata !420), !dbg !1779
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i32 0, i32 0), i8** %1, align 8, !dbg !1779
  %12 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1780
  %13 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %12, i32 0, i32 3, !dbg !1781
  %14 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %13), !dbg !1782
  call void @g_mutex_lock(%union._GMutex* %14), !dbg !1783
  %15 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1785
  %16 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %15, i32 0, i32 1, !dbg !1787
  %17 = load %struct.VmBackupOp*, %struct.VmBackupOp** %16, align 8, !dbg !1787
  %18 = icmp ne %struct.VmBackupOp* %17, null, !dbg !1788
  br i1 %18, label %19, label %28, !dbg !1789

; <label>:19:                                     ; preds = %11
  %20 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1790
  %21 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %20, i32 0, i32 1, !dbg !1792
  %22 = load %struct.VmBackupOp*, %struct.VmBackupOp** %21, align 8, !dbg !1792
  call void @VmBackup_Cancel(%struct.VmBackupOp* %22), !dbg !1793
  %23 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1794
  %24 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %23, i32 0, i32 1, !dbg !1795
  %25 = load %struct.VmBackupOp*, %struct.VmBackupOp** %24, align 8, !dbg !1795
  call void @VmBackup_Release(%struct.VmBackupOp* %25), !dbg !1796
  %26 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1797
  %27 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %26, i32 0, i32 1, !dbg !1798
  store %struct.VmBackupOp* null, %struct.VmBackupOp** %27, align 8, !dbg !1799
  br label %28, !dbg !1800

; <label>:28:                                     ; preds = %19, %11
  %29 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1801
  %30 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %29, i32 0, i32 3, !dbg !1802
  %31 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %30), !dbg !1803
  call void @g_mutex_unlock(%union._GMutex* %31), !dbg !1804
  %32 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1805
  %33 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %32, i32 0, i32 27, !dbg !1807
  %34 = load i32, i32* %33, align 8, !dbg !1807
  %35 = icmp eq i32 %34, 3, !dbg !1808
  br i1 %35, label %36, label %52, !dbg !1809

; <label>:36:                                     ; preds = %28
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.52, i32 0, i32 0)), !dbg !1810
  %37 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1812
  %38 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %37, i32 0, i32 29, !dbg !1814
  %39 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %38, align 8, !dbg !1814
  %40 = getelementptr inbounds %struct.VmBackupSyncProvider, %struct.VmBackupSyncProvider* %39, i32 0, i32 1, !dbg !1815
  %41 = load i8 (%struct.VmBackupState*, i8*)*, i8 (%struct.VmBackupState*, i8*)** %40, align 8, !dbg !1815
  %42 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1816
  %43 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1817
  %44 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %43, i32 0, i32 29, !dbg !1818
  %45 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %44, align 8, !dbg !1818
  %46 = getelementptr inbounds %struct.VmBackupSyncProvider, %struct.VmBackupSyncProvider* %45, i32 0, i32 3, !dbg !1819
  %47 = load i8*, i8** %46, align 8, !dbg !1819
  %48 = call signext i8 %41(%struct.VmBackupState* %42, i8* %47), !dbg !1812
  %49 = icmp ne i8 %48, 0, !dbg !1812
  br i1 %49, label %51, label %50, !dbg !1820

; <label>:50:                                     ; preds = %36
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.53, i32 0, i32 0)), !dbg !1821
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.54, i32 0, i32 0), i8** %1, align 8, !dbg !1823
  br label %51, !dbg !1824

; <label>:51:                                     ; preds = %50, %36
  br label %52, !dbg !1825

; <label>:52:                                     ; preds = %51, %28
  %53 = load i8*, i8** %1, align 8, !dbg !1826
  %54 = call signext i8 @VmBackup_SendEvent(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), i32 4, i8* %53), !dbg !1827
  %55 = call i32 @VmBackupOnError(), !dbg !1828
  %56 = icmp ne i32 %55, 0, !dbg !1828
  br i1 %56, label %57, label %58, !dbg !1830

; <label>:57:                                     ; preds = %52
  call void @VmBackupFinalize(), !dbg !1831
  br label %58, !dbg !1833

; <label>:58:                                     ; preds = %57, %52
  br label %59, !dbg !1834

; <label>:59:                                     ; preds = %58, %6, %0
  ret void, !dbg !1835
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @VmBackup_Cancel(%struct.VmBackupOp*) #5 !dbg !1836 {
  %2 = alloca %struct.VmBackupOp*, align 8
  store %struct.VmBackupOp* %0, %struct.VmBackupOp** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupOp** %2, metadata !1839, metadata !420), !dbg !1840
  %3 = load %struct.VmBackupOp*, %struct.VmBackupOp** %2, align 8, !dbg !1841
  %4 = getelementptr inbounds %struct.VmBackupOp, %struct.VmBackupOp* %3, i32 0, i32 2, !dbg !1842
  %5 = load void (%struct.VmBackupOp*)*, void (%struct.VmBackupOp*)** %4, align 8, !dbg !1842
  %6 = load %struct.VmBackupOp*, %struct.VmBackupOp** %2, align 8, !dbg !1843
  call void %5(%struct.VmBackupOp* %6), !dbg !1841
  ret void, !dbg !1844
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @VmBackup_Release(%struct.VmBackupOp*) #5 !dbg !1845 {
  %2 = alloca %struct.VmBackupOp*, align 8
  store %struct.VmBackupOp* %0, %struct.VmBackupOp** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupOp** %2, metadata !1846, metadata !420), !dbg !1847
  %3 = load %struct.VmBackupOp*, %struct.VmBackupOp** %2, align 8, !dbg !1848
  %4 = icmp ne %struct.VmBackupOp* %3, null, !dbg !1850
  br i1 %4, label %5, label %10, !dbg !1851

; <label>:5:                                      ; preds = %1
  %6 = load %struct.VmBackupOp*, %struct.VmBackupOp** %2, align 8, !dbg !1852
  %7 = getelementptr inbounds %struct.VmBackupOp, %struct.VmBackupOp* %6, i32 0, i32 1, !dbg !1854
  %8 = load void (%struct.VmBackupOp*)*, void (%struct.VmBackupOp*)** %7, align 8, !dbg !1854
  %9 = load %struct.VmBackupOp*, %struct.VmBackupOp** %2, align 8, !dbg !1855
  call void %8(%struct.VmBackupOp* %9), !dbg !1852
  br label %10, !dbg !1856

; <label>:10:                                     ; preds = %5, %1
  ret void, !dbg !1857
}

; Function Attrs: nounwind uwtable
define internal i32 @VmBackupOnError() #0 !dbg !1858 {
  %1 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1861
  %2 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %1, i32 0, i32 27, !dbg !1862
  %3 = load i32, i32* %2, align 8, !dbg !1862
  switch i32 %3, label %27 [
    i32 1, label %4
    i32 8, label %4
    i32 2, label %11
    i32 3, label %11
    i32 4, label %11
    i32 5, label %24
    i32 6, label %24
  ], !dbg !1863

; <label>:4:                                      ; preds = %0, %0
  %5 = call signext i8 @VmBackupStartScripts(i32 1), !dbg !1864
  %6 = icmp ne i8 %5, 0, !dbg !1864
  br i1 %6, label %10, label %7, !dbg !1867

; <label>:7:                                      ; preds = %4
  %8 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1868
  %9 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %8, i32 0, i32 27, !dbg !1870
  store i32 0, i32* %9, align 8, !dbg !1871
  br label %10, !dbg !1872

; <label>:10:                                     ; preds = %7, %4
  br label %35, !dbg !1873

; <label>:11:                                     ; preds = %0, %0, %0
  %12 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1874
  %13 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %12, i32 0, i32 6, !dbg !1875
  store i32 1000, i32* %13, align 8, !dbg !1876
  %14 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1877
  %15 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %14, i32 0, i32 27, !dbg !1878
  store i32 8, i32* %15, align 8, !dbg !1879
  %16 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1880
  %17 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %16, i32 0, i32 0, !dbg !1881
  %18 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %17, align 8, !dbg !1881
  %19 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %18, i32 0, i32 10, !dbg !1882
  %20 = load i8*, i8** %19, align 8, !dbg !1882
  %21 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1883
  %22 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %21, i32 0, i32 0, !dbg !1884
  %23 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %22, align 8, !dbg !1884
  call void (i8*, i8*, ...) @g_signal_emit_by_name(i8* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), %struct.ToolsAppCtx* %23, i32 0), !dbg !1885
  br label %35, !dbg !1886

; <label>:24:                                     ; preds = %0, %0
  %25 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1887
  %26 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %25, i32 0, i32 27, !dbg !1888
  store i32 0, i32* %26, align 8, !dbg !1889
  br label %35, !dbg !1890

; <label>:27:                                     ; preds = %0
  br label %28, !dbg !1891, !llvm.loop !1892

; <label>:28:                                     ; preds = %27
  %29 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1893
  %30 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %29, i32 0, i32 27, !dbg !1896
  %31 = load i32, i32* %30, align 8, !dbg !1896
  %32 = call i8* @VmBackupGetStateName(i32 %31), !dbg !1897
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.56, i32 0, i32 0), i8* %32), !dbg !1898
  br label %33, !dbg !1900

; <label>:33:                                     ; preds = %33, %28
  br label %33, !dbg !1901, !llvm.loop !1905
                                                  ; No predecessors!
  br label %35, !dbg !1907

; <label>:35:                                     ; preds = %34, %24, %11, %10
  %36 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1908
  %37 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %36, i32 0, i32 27, !dbg !1909
  %38 = load i32, i32* %37, align 8, !dbg !1909
  %39 = icmp eq i32 %38, 0, !dbg !1910
  %40 = zext i1 %39 to i32, !dbg !1910
  ret i32 %40, !dbg !1911
}

; Function Attrs: nounwind uwtable
define internal void @VmBackupFinalize() #0 !dbg !1912 {
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.VmBackupFinalize, i32 0, i32 0)), !dbg !1913
  %1 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1914
  %2 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %1, i32 0, i32 7, !dbg !1916
  %3 = load %struct._GSource*, %struct._GSource** %2, align 8, !dbg !1916
  %4 = icmp ne %struct._GSource* %3, null, !dbg !1917
  br i1 %4, label %5, label %12, !dbg !1918

; <label>:5:                                      ; preds = %0
  %6 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1919
  %7 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %6, i32 0, i32 7, !dbg !1921
  %8 = load %struct._GSource*, %struct._GSource** %7, align 8, !dbg !1921
  call void @g_source_destroy(%struct._GSource* %8), !dbg !1922
  %9 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1923
  %10 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %9, i32 0, i32 7, !dbg !1924
  %11 = load %struct._GSource*, %struct._GSource** %10, align 8, !dbg !1924
  call void @g_source_unref(%struct._GSource* %11), !dbg !1925
  br label %12, !dbg !1926

; <label>:12:                                     ; preds = %5, %0
  %13 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1927
  %14 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %13, i32 0, i32 3, !dbg !1928
  %15 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %14), !dbg !1929
  call void @g_mutex_lock(%union._GMutex* %15), !dbg !1930
  %16 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1932
  %17 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %16, i32 0, i32 1, !dbg !1934
  %18 = load %struct.VmBackupOp*, %struct.VmBackupOp** %17, align 8, !dbg !1934
  %19 = icmp ne %struct.VmBackupOp* %18, null, !dbg !1935
  br i1 %19, label %20, label %27, !dbg !1936

; <label>:20:                                     ; preds = %12
  %21 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1937
  %22 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %21, i32 0, i32 1, !dbg !1939
  %23 = load %struct.VmBackupOp*, %struct.VmBackupOp** %22, align 8, !dbg !1939
  call void @VmBackup_Cancel(%struct.VmBackupOp* %23), !dbg !1940
  %24 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1941
  %25 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %24, i32 0, i32 1, !dbg !1942
  %26 = load %struct.VmBackupOp*, %struct.VmBackupOp** %25, align 8, !dbg !1942
  call void @VmBackup_Release(%struct.VmBackupOp* %26), !dbg !1943
  br label %27, !dbg !1944

; <label>:27:                                     ; preds = %20, %12
  %28 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1945
  %29 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %28, i32 0, i32 3, !dbg !1946
  %30 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %29), !dbg !1947
  call void @g_mutex_unlock(%union._GMutex* %30), !dbg !1948
  %31 = call signext i8 @VmBackup_SendEvent(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0)), !dbg !1949
  %32 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1950
  %33 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %32, i32 0, i32 8, !dbg !1952
  %34 = load %struct._GSource*, %struct._GSource** %33, align 8, !dbg !1952
  %35 = icmp ne %struct._GSource* %34, null, !dbg !1953
  br i1 %35, label %36, label %43, !dbg !1954

; <label>:36:                                     ; preds = %27
  %37 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1955
  %38 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %37, i32 0, i32 8, !dbg !1957
  %39 = load %struct._GSource*, %struct._GSource** %38, align 8, !dbg !1957
  call void @g_source_destroy(%struct._GSource* %39), !dbg !1958
  %40 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1959
  %41 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %40, i32 0, i32 8, !dbg !1960
  %42 = load %struct._GSource*, %struct._GSource** %41, align 8, !dbg !1960
  call void @g_source_unref(%struct._GSource* %42), !dbg !1961
  br label %43, !dbg !1962

; <label>:43:                                     ; preds = %36, %27
  %44 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1963
  %45 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %44, i32 0, i32 9, !dbg !1965
  %46 = load %struct._GSource*, %struct._GSource** %45, align 8, !dbg !1965
  %47 = icmp ne %struct._GSource* %46, null, !dbg !1966
  br i1 %47, label %48, label %55, !dbg !1967

; <label>:48:                                     ; preds = %43
  %49 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1968
  %50 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %49, i32 0, i32 9, !dbg !1970
  %51 = load %struct._GSource*, %struct._GSource** %50, align 8, !dbg !1970
  call void @g_source_destroy(%struct._GSource* %51), !dbg !1971
  %52 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1972
  %53 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %52, i32 0, i32 9, !dbg !1973
  %54 = load %struct._GSource*, %struct._GSource** %53, align 8, !dbg !1973
  call void @g_source_unref(%struct._GSource* %54), !dbg !1974
  br label %55, !dbg !1975

; <label>:55:                                     ; preds = %48, %43
  %56 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1976
  %57 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %56, i32 0, i32 29, !dbg !1977
  %58 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %57, align 8, !dbg !1977
  %59 = getelementptr inbounds %struct.VmBackupSyncProvider, %struct.VmBackupSyncProvider* %58, i32 0, i32 2, !dbg !1978
  %60 = load void (%struct.VmBackupSyncProvider*)*, void (%struct.VmBackupSyncProvider*)** %59, align 8, !dbg !1978
  %61 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1979
  %62 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %61, i32 0, i32 29, !dbg !1980
  %63 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %62, align 8, !dbg !1980
  call void %60(%struct.VmBackupSyncProvider* %63), !dbg !1976
  %64 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1981
  %65 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %64, i32 0, i32 30, !dbg !1983
  %66 = load %struct.VmBackupSyncCompleter*, %struct.VmBackupSyncCompleter** %65, align 8, !dbg !1983
  %67 = icmp ne %struct.VmBackupSyncCompleter* %66, null, !dbg !1984
  br i1 %67, label %68, label %77, !dbg !1985

; <label>:68:                                     ; preds = %55
  %69 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1986
  %70 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %69, i32 0, i32 30, !dbg !1988
  %71 = load %struct.VmBackupSyncCompleter*, %struct.VmBackupSyncCompleter** %70, align 8, !dbg !1988
  %72 = getelementptr inbounds %struct.VmBackupSyncCompleter, %struct.VmBackupSyncCompleter* %71, i32 0, i32 2, !dbg !1989
  %73 = load void (%struct.VmBackupSyncCompleter*)*, void (%struct.VmBackupSyncCompleter*)** %72, align 8, !dbg !1989
  %74 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1990
  %75 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %74, i32 0, i32 30, !dbg !1991
  %76 = load %struct.VmBackupSyncCompleter*, %struct.VmBackupSyncCompleter** %75, align 8, !dbg !1991
  call void %73(%struct.VmBackupSyncCompleter* %76), !dbg !1986
  br label %77, !dbg !1992

; <label>:77:                                     ; preds = %68, %55
  %78 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1993
  %79 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %78, i32 0, i32 3, !dbg !1994
  call void @g_static_mutex_free(%struct.GStaticMutex* %79), !dbg !1995
  %80 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1996
  %81 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %80, i32 0, i32 20, !dbg !1997
  %82 = load i8*, i8** %81, align 8, !dbg !1997
  call void @g_free(i8* %82), !dbg !1998
  %83 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !1999
  %84 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %83, i32 0, i32 4, !dbg !2000
  %85 = load i8*, i8** %84, align 8, !dbg !2000
  call void @g_free(i8* %85), !dbg !2001
  %86 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2002
  %87 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %86, i32 0, i32 5, !dbg !2003
  %88 = load i8*, i8** %87, align 8, !dbg !2003
  call void @g_free(i8* %88), !dbg !2004
  %89 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2005
  %90 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %89, i32 0, i32 15, !dbg !2006
  %91 = load i8*, i8** %90, align 8, !dbg !2006
  call void @g_free(i8* %91), !dbg !2007
  %92 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2008
  %93 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %92, i32 0, i32 26, !dbg !2009
  %94 = load i8*, i8** %93, align 8, !dbg !2009
  call void @g_free(i8* %94), !dbg !2010
  %95 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2011
  %96 = bitcast %struct.VmBackupState* %95 to i8*, !dbg !2011
  call void @g_free(i8* %96), !dbg !2012
  store %struct.VmBackupState* null, %struct.VmBackupState** @gBackupState, align 8, !dbg !2013
  ret void, !dbg !2014
}

declare void @g_signal_emit_by_name(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i8* @VmBackupGetStateName(i32) #0 !dbg !2015 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2018, metadata !420), !dbg !2019
  %4 = load i32, i32* %3, align 4, !dbg !2020
  switch i32 %4, label %14 [
    i32 0, label %5
    i32 1, label %6
    i32 2, label %7
    i32 3, label %8
    i32 4, label %9
    i32 5, label %10
    i32 6, label %11
    i32 7, label %12
    i32 8, label %13
  ], !dbg !2021

; <label>:5:                                      ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i8** %2, align 8, !dbg !2022
  br label %15, !dbg !2022

; <label>:6:                                      ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i32 0, i32 0), i8** %2, align 8, !dbg !2024
  br label %15, !dbg !2024

; <label>:7:                                      ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i32 0, i32 0), i8** %2, align 8, !dbg !2025
  br label %15, !dbg !2025

; <label>:8:                                      ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i8** %2, align 8, !dbg !2026
  br label %15, !dbg !2026

; <label>:9:                                      ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i8** %2, align 8, !dbg !2027
  br label %15, !dbg !2027

; <label>:10:                                     ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i32 0, i32 0), i8** %2, align 8, !dbg !2028
  br label %15, !dbg !2028

; <label>:11:                                     ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i32 0, i32 0), i8** %2, align 8, !dbg !2029
  br label %15, !dbg !2029

; <label>:12:                                     ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i32 0, i32 0), i8** %2, align 8, !dbg !2030
  br label %15, !dbg !2030

; <label>:13:                                     ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i8** %2, align 8, !dbg !2031
  br label %15, !dbg !2031

; <label>:14:                                     ; preds = %1
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i32 142) #11, !dbg !2032
  unreachable, !dbg !2032

; <label>:15:                                     ; preds = %13, %12, %11, %10, %9, %8, %7, %6, %5
  %16 = load i8*, i8** %2, align 8, !dbg !2033
  ret i8* %16, !dbg !2033
}

declare void @g_static_mutex_free(%struct.GStaticMutex*) #2

; Function Attrs: nounwind uwtable
define internal i32 @VmBackupPostProcessCurrentOp(i32*) #0 !dbg !2034 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8 (%struct.VmBackupState*)*, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !2038, metadata !420), !dbg !2039
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2040, metadata !420), !dbg !2041
  store i32 1, i32* %3, align 4, !dbg !2041
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2042, metadata !420), !dbg !2043
  store i32 1, i32* %4, align 4, !dbg !2043
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.VmBackupPostProcessCurrentOp, i32 0, i32 0)), !dbg !2044
  %7 = load i32*, i32** %2, align 8, !dbg !2045
  store i32 0, i32* %7, align 4, !dbg !2046
  %8 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2047
  %9 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %8, i32 0, i32 3, !dbg !2048
  %10 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %9), !dbg !2049
  call void @g_mutex_lock(%union._GMutex* %10), !dbg !2050
  %11 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2052
  %12 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %11, i32 0, i32 1, !dbg !2054
  %13 = load %struct.VmBackupOp*, %struct.VmBackupOp** %12, align 8, !dbg !2054
  %14 = icmp ne %struct.VmBackupOp* %13, null, !dbg !2055
  br i1 %14, label %15, label %23, !dbg !2056

; <label>:15:                                     ; preds = %1
  %16 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2057
  %17 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %16, i32 0, i32 2, !dbg !2059
  %18 = load i8*, i8** %17, align 8, !dbg !2059
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.VmBackupPostProcessCurrentOp, i32 0, i32 0), i8* %18), !dbg !2060
  %19 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2061
  %20 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %19, i32 0, i32 1, !dbg !2062
  %21 = load %struct.VmBackupOp*, %struct.VmBackupOp** %20, align 8, !dbg !2062
  %22 = call i32 @VmBackup_QueryStatus(%struct.VmBackupOp* %21), !dbg !2063
  store i32 %22, i32* %4, align 4, !dbg !2064
  br label %23, !dbg !2065

; <label>:23:                                     ; preds = %15, %1
  %24 = load i32, i32* %4, align 4, !dbg !2066
  switch i32 %24, label %44 [
    i32 0, label %25
    i32 1, label %27
  ], !dbg !2067

; <label>:25:                                     ; preds = %23
  %26 = load i32*, i32** %2, align 8, !dbg !2068
  store i32 1, i32* %26, align 4, !dbg !2070
  br label %103, !dbg !2071

; <label>:27:                                     ; preds = %23
  %28 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2072
  %29 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %28, i32 0, i32 2, !dbg !2074
  %30 = load i8*, i8** %29, align 8, !dbg !2074
  %31 = icmp ne i8* %30, null, !dbg !2075
  br i1 %31, label %32, label %41, !dbg !2076

; <label>:32:                                     ; preds = %27
  %33 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2077
  %34 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %33, i32 0, i32 2, !dbg !2079
  %35 = load i8*, i8** %34, align 8, !dbg !2079
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.70, i32 0, i32 0), i8* %35), !dbg !2080
  %36 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2081
  %37 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %36, i32 0, i32 1, !dbg !2082
  %38 = load %struct.VmBackupOp*, %struct.VmBackupOp** %37, align 8, !dbg !2082
  call void @VmBackup_Release(%struct.VmBackupOp* %38), !dbg !2083
  %39 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2084
  %40 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %39, i32 0, i32 2, !dbg !2085
  store i8* null, i8** %40, align 8, !dbg !2086
  br label %41, !dbg !2087

; <label>:41:                                     ; preds = %32, %27
  %42 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2088
  %43 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %42, i32 0, i32 1, !dbg !2089
  store %struct.VmBackupOp* null, %struct.VmBackupOp** %43, align 8, !dbg !2090
  br label %71, !dbg !2091

; <label>:44:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2092, metadata !420), !dbg !2094
  %45 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2095
  %46 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %45, i32 0, i32 26, !dbg !2097
  %47 = load i8*, i8** %46, align 8, !dbg !2097
  %48 = icmp ne i8* %47, null, !dbg !2098
  br i1 %48, label %49, label %57, !dbg !2099

; <label>:49:                                     ; preds = %44
  %50 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2100
  %51 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %50, i32 0, i32 2, !dbg !2102
  %52 = load i8*, i8** %51, align 8, !dbg !2102
  %53 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2103
  %54 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %53, i32 0, i32 26, !dbg !2104
  %55 = load i8*, i8** %54, align 8, !dbg !2104
  %56 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.71, i32 0, i32 0), i8* %52, i8* %55), !dbg !2105
  store i8* %56, i8** %5, align 8, !dbg !2106
  br label %62, !dbg !2107

; <label>:57:                                     ; preds = %44
  %58 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2108
  %59 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %58, i32 0, i32 2, !dbg !2110
  %60 = load i8*, i8** %59, align 8, !dbg !2110
  %61 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.72, i32 0, i32 0), i8* %60), !dbg !2111
  store i8* %61, i8** %5, align 8, !dbg !2112
  br label %62

; <label>:62:                                     ; preds = %57, %49
  %63 = load i8*, i8** %5, align 8, !dbg !2113
  %64 = call signext i8 @VmBackup_SendEvent(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i32 5, i8* %63), !dbg !2114
  %65 = load i8*, i8** %5, align 8, !dbg !2115
  call void @g_free(i8* %65), !dbg !2116
  %66 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2117
  %67 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %66, i32 0, i32 1, !dbg !2118
  %68 = load %struct.VmBackupOp*, %struct.VmBackupOp** %67, align 8, !dbg !2118
  call void @VmBackup_Release(%struct.VmBackupOp* %68), !dbg !2119
  %69 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2120
  %70 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %69, i32 0, i32 1, !dbg !2121
  store %struct.VmBackupOp* null, %struct.VmBackupOp** %70, align 8, !dbg !2122
  store i32 0, i32* %3, align 4, !dbg !2123
  br label %103, !dbg !2124

; <label>:71:                                     ; preds = %41
  br label %72, !dbg !2125

; <label>:72:                                     ; preds = %101, %71
  %73 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2126
  %74 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %73, i32 0, i32 10, !dbg !2127
  %75 = load i8 (%struct.VmBackupState*)*, i8 (%struct.VmBackupState*)** %74, align 8, !dbg !2127
  %76 = icmp ne i8 (%struct.VmBackupState*)* %75, null, !dbg !2128
  br i1 %76, label %77, label %102, !dbg !2129

; <label>:77:                                     ; preds = %72
  call void @llvm.dbg.declare(metadata i8 (%struct.VmBackupState*)** %6, metadata !2130, metadata !420), !dbg !2132
  %78 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2133
  %79 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %78, i32 0, i32 10, !dbg !2134
  %80 = load i8 (%struct.VmBackupState*)*, i8 (%struct.VmBackupState*)** %79, align 8, !dbg !2134
  store i8 (%struct.VmBackupState*)* %80, i8 (%struct.VmBackupState*)** %6, align 8, !dbg !2132
  %81 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2135
  %82 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %81, i32 0, i32 10, !dbg !2136
  store i8 (%struct.VmBackupState*)* null, i8 (%struct.VmBackupState*)** %82, align 8, !dbg !2137
  %83 = load i8 (%struct.VmBackupState*)*, i8 (%struct.VmBackupState*)** %6, align 8, !dbg !2138
  %84 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2140
  %85 = call signext i8 %83(%struct.VmBackupState* %84), !dbg !2138
  %86 = icmp ne i8 %85, 0, !dbg !2138
  br i1 %86, label %87, label %100, !dbg !2141

; <label>:87:                                     ; preds = %77
  %88 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2142
  %89 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %88, i32 0, i32 1, !dbg !2145
  %90 = load %struct.VmBackupOp*, %struct.VmBackupOp** %89, align 8, !dbg !2145
  %91 = icmp ne %struct.VmBackupOp* %90, null, !dbg !2146
  br i1 %91, label %98, label %92, !dbg !2147

; <label>:92:                                     ; preds = %87
  %93 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2148
  %94 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %93, i32 0, i32 11, !dbg !2150
  %95 = load i8, i8* %94, align 8, !dbg !2150
  %96 = sext i8 %95 to i32, !dbg !2148
  %97 = icmp ne i32 %96, 0, !dbg !2148
  br i1 %97, label %98, label %99, !dbg !2151

; <label>:98:                                     ; preds = %92, %87
  br label %103, !dbg !2152

; <label>:99:                                     ; preds = %92
  br label %101, !dbg !2154

; <label>:100:                                    ; preds = %77
  store i32 0, i32* %3, align 4, !dbg !2155
  br label %103, !dbg !2157

; <label>:101:                                    ; preds = %99
  br label %72, !dbg !2158, !llvm.loop !2160

; <label>:102:                                    ; preds = %72
  br label %103, !dbg !2161

; <label>:103:                                    ; preds = %102, %100, %98, %62, %25
  %104 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2163
  %105 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %104, i32 0, i32 3, !dbg !2164
  %106 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %105), !dbg !2165
  call void @g_mutex_unlock(%union._GMutex* %106), !dbg !2166
  %107 = load i32, i32* %3, align 4, !dbg !2167
  ret i32 %107, !dbg !2168
}

; Function Attrs: nounwind uwtable
define internal signext i8 @VmBackupEnableSyncWait() #0 !dbg !2169 {
  %1 = alloca i8, align 1
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.VmBackupEnableSyncWait, i32 0, i32 0)), !dbg !2172
  %2 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2173
  %3 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %2, i32 0, i32 0, !dbg !2174
  %4 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !2174
  %5 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %4, i32 0, i32 10, !dbg !2175
  %6 = load i8*, i8** %5, align 8, !dbg !2175
  %7 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2176
  %8 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %7, i32 0, i32 0, !dbg !2177
  %9 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !2177
  call void (i8*, i8*, ...) @g_signal_emit_by_name(i8* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), %struct.ToolsAppCtx* %9, i32 1), !dbg !2178
  %10 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2179
  %11 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %10, i32 0, i32 28, !dbg !2180
  store i32 0, i32* %11, align 4, !dbg !2181
  %12 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2182
  %13 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %12, i32 0, i32 0, !dbg !2184
  %14 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %13, align 8, !dbg !2184
  %15 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2185
  %16 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %15, i32 0, i32 29, !dbg !2186
  %17 = load %struct.VmBackupSyncProvider*, %struct.VmBackupSyncProvider** %16, align 8, !dbg !2186
  %18 = getelementptr inbounds %struct.VmBackupSyncProvider, %struct.VmBackupSyncProvider* %17, i32 0, i32 0, !dbg !2187
  %19 = load void (%struct.ToolsAppCtx*, i8*)*, void (%struct.ToolsAppCtx*, i8*)** %18, align 8, !dbg !2187
  %20 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2188
  %21 = bitcast %struct.VmBackupState* %20 to i8*, !dbg !2188
  %22 = call i32 @ToolsCorePool_SubmitTask(%struct.ToolsAppCtx* %14, void (%struct.ToolsAppCtx*, i8*)* %19, i8* %21, void (i8*)* null), !dbg !2189
  %23 = icmp ne i32 %22, 0, !dbg !2189
  br i1 %23, label %34, label %24, !dbg !2190

; <label>:24:                                     ; preds = %0
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.73, i32 0, i32 0)), !dbg !2191
  %25 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2193
  %26 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %25, i32 0, i32 0, !dbg !2194
  %27 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %26, align 8, !dbg !2194
  %28 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %27, i32 0, i32 10, !dbg !2195
  %29 = load i8*, i8** %28, align 8, !dbg !2195
  %30 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2196
  %31 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %30, i32 0, i32 0, !dbg !2197
  %32 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %31, align 8, !dbg !2197
  call void (i8*, i8*, ...) @g_signal_emit_by_name(i8* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), %struct.ToolsAppCtx* %32, i32 0), !dbg !2198
  %33 = call signext i8 @VmBackup_SendEvent(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i32 0, i32 0)), !dbg !2199
  store i8 0, i8* %1, align 1, !dbg !2200
  br label %37, !dbg !2200

; <label>:34:                                     ; preds = %0
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.75, i32 0, i32 0)), !dbg !2201
  %35 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2202
  %36 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %35, i32 0, i32 27, !dbg !2203
  store i32 2, i32* %36, align 8, !dbg !2204
  store i8 1, i8* %1, align 1, !dbg !2205
  br label %37, !dbg !2205

; <label>:37:                                     ; preds = %34, %24
  %38 = load i8, i8* %1, align 1, !dbg !2206
  ret i8 %38, !dbg !2206
}

; Function Attrs: nounwind uwtable
define internal signext i8 @VmBackupEnableSync() #0 !dbg !2207 {
  %1 = alloca i8, align 1
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.VmBackupEnableSync, i32 0, i32 0)), !dbg !2208
  %2 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2209
  %3 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %2, i32 0, i32 28, !dbg !2211
  %4 = load i32, i32* %3, align 4, !dbg !2211
  %5 = icmp eq i32 %4, 3, !dbg !2212
  br i1 %5, label %6, label %16, !dbg !2213

; <label>:6:                                      ; preds = %0
  %7 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2214
  %8 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %7, i32 0, i32 0, !dbg !2216
  %9 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !2216
  %10 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %9, i32 0, i32 10, !dbg !2217
  %11 = load i8*, i8** %10, align 8, !dbg !2217
  %12 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2218
  %13 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %12, i32 0, i32 0, !dbg !2219
  %14 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %13, align 8, !dbg !2219
  call void (i8*, i8*, ...) @g_signal_emit_by_name(i8* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), %struct.ToolsAppCtx* %14, i32 0), !dbg !2220
  %15 = call signext i8 @VmBackup_SendEvent(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i32 0, i32 0)), !dbg !2221
  store i8 0, i8* %1, align 1, !dbg !2222
  br label %32, !dbg !2222

; <label>:16:                                     ; preds = %0
  %17 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2223
  %18 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %17, i32 0, i32 28, !dbg !2225
  %19 = load i32, i32* %18, align 4, !dbg !2225
  %20 = icmp eq i32 %19, 2, !dbg !2226
  br i1 %20, label %26, label %21, !dbg !2227

; <label>:21:                                     ; preds = %16
  %22 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2228
  %23 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %22, i32 0, i32 28, !dbg !2229
  %24 = load i32, i32* %23, align 4, !dbg !2229
  %25 = icmp eq i32 %24, 1, !dbg !2230
  br i1 %25, label %26, label %29, !dbg !2231

; <label>:26:                                     ; preds = %21, %16
  %27 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2233
  %28 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %27, i32 0, i32 27, !dbg !2235
  store i32 3, i32* %28, align 8, !dbg !2236
  br label %30, !dbg !2237

; <label>:29:                                     ; preds = %21
  br label %30

; <label>:30:                                     ; preds = %29, %26
  br label %31

; <label>:31:                                     ; preds = %30
  store i8 1, i8* %1, align 1, !dbg !2238
  br label %32, !dbg !2238

; <label>:32:                                     ; preds = %31, %6
  %33 = load i8, i8* %1, align 1, !dbg !2239
  ret i8 %33, !dbg !2239
}

; Function Attrs: nounwind uwtable
define internal signext i8 @VmBackupEnableCompleteWait() #0 !dbg !2240 {
  %1 = alloca i8, align 1
  %2 = alloca %struct._GSource*, align 8
  call void @llvm.dbg.declare(metadata i8* %1, metadata !2241, metadata !420), !dbg !2242
  store i8 1, i8* %1, align 1, !dbg !2242
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.VmBackupEnableCompleteWait, i32 0, i32 0)), !dbg !2243
  %3 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2244
  %4 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %3, i32 0, i32 30, !dbg !2246
  %5 = load %struct.VmBackupSyncCompleter*, %struct.VmBackupSyncCompleter** %4, align 8, !dbg !2246
  %6 = icmp eq %struct.VmBackupSyncCompleter* %5, null, !dbg !2247
  br i1 %6, label %7, label %10, !dbg !2248

; <label>:7:                                      ; preds = %0
  %8 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2249
  %9 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %8, i32 0, i32 27, !dbg !2251
  store i32 0, i32* %9, align 8, !dbg !2252
  br label %79, !dbg !2253

; <label>:10:                                     ; preds = %0
  %11 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2254
  %12 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %11, i32 0, i32 7, !dbg !2256
  %13 = load %struct._GSource*, %struct._GSource** %12, align 8, !dbg !2256
  %14 = icmp ne %struct._GSource* %13, null, !dbg !2257
  br i1 %14, label %15, label %59, !dbg !2258

; <label>:15:                                     ; preds = %10
  %16 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2259
  %17 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %16, i32 0, i32 7, !dbg !2261
  %18 = load %struct._GSource*, %struct._GSource** %17, align 8, !dbg !2261
  call void @g_source_destroy(%struct._GSource* %18), !dbg !2262
  %19 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2263
  %20 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %19, i32 0, i32 7, !dbg !2264
  %21 = load %struct._GSource*, %struct._GSource** %20, align 8, !dbg !2264
  call void @g_source_unref(%struct._GSource* %21), !dbg !2265
  %22 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2266
  %23 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %22, i32 0, i32 21, !dbg !2268
  %24 = load i32, i32* %23, align 8, !dbg !2268
  %25 = icmp ugt i32 %24, 900, !dbg !2269
  br i1 %25, label %26, label %29, !dbg !2270

; <label>:26:                                     ; preds = %15
  %27 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2271
  %28 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %27, i32 0, i32 21, !dbg !2273
  store i32 900, i32* %28, align 8, !dbg !2274
  br label %29, !dbg !2275

; <label>:29:                                     ; preds = %26, %15
  %30 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2276
  %31 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %30, i32 0, i32 21, !dbg !2278
  %32 = load i32, i32* %31, align 8, !dbg !2278
  %33 = icmp ne i32 %32, 0, !dbg !2279
  br i1 %33, label %34, label %58, !dbg !2280

; <label>:34:                                     ; preds = %29
  %35 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2281
  %36 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %35, i32 0, i32 21, !dbg !2283
  %37 = load i32, i32* %36, align 8, !dbg !2283
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.77, i32 0, i32 0), i32 %37), !dbg !2284
  %38 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2285
  %39 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %38, i32 0, i32 21, !dbg !2286
  %40 = load i32, i32* %39, align 8, !dbg !2286
  %41 = call %struct._GSource* @g_timeout_source_new_seconds(i32 %40), !dbg !2287
  %42 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2288
  %43 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %42, i32 0, i32 7, !dbg !2289
  store %struct._GSource* %41, %struct._GSource** %43, align 8, !dbg !2290
  br label %44, !dbg !2291, !llvm.loop !2292

; <label>:44:                                     ; preds = %34
  call void @llvm.dbg.declare(metadata %struct._GSource** %2, metadata !2293, metadata !420), !dbg !2295
  %45 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2296
  %46 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %45, i32 0, i32 7, !dbg !2298
  %47 = load %struct._GSource*, %struct._GSource** %46, align 8, !dbg !2298
  store %struct._GSource* %47, %struct._GSource** %2, align 8, !dbg !2299
  %48 = load %struct._GSource*, %struct._GSource** %2, align 8, !dbg !2300
  call void @g_source_set_callback(%struct._GSource* %48, i32 (i8*)* @VmBackupAbortTimer, i8* null, void (i8*)* null), !dbg !2301
  %49 = load %struct._GSource*, %struct._GSource** %2, align 8, !dbg !2302
  %50 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2303
  %51 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %50, i32 0, i32 0, !dbg !2304
  %52 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %51, align 8, !dbg !2304
  %53 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %52, i32 0, i32 4, !dbg !2305
  %54 = load %struct._GMainLoop*, %struct._GMainLoop** %53, align 8, !dbg !2305
  %55 = call %struct._GMainContext* @g_main_loop_get_context(%struct._GMainLoop* %54), !dbg !2306
  %56 = call i32 @g_source_attach(%struct._GSource* %49, %struct._GMainContext* %55), !dbg !2308
  br label %57, !dbg !2310

; <label>:57:                                     ; preds = %44
  br label %58, !dbg !2311

; <label>:58:                                     ; preds = %57, %29
  br label %59, !dbg !2312

; <label>:59:                                     ; preds = %58, %10
  %60 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2313
  %61 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %60, i32 0, i32 30, !dbg !2315
  %62 = load %struct.VmBackupSyncCompleter*, %struct.VmBackupSyncCompleter** %61, align 8, !dbg !2315
  %63 = getelementptr inbounds %struct.VmBackupSyncCompleter, %struct.VmBackupSyncCompleter* %62, i32 0, i32 0, !dbg !2316
  %64 = load i8 (%struct.VmBackupState*, i8*)*, i8 (%struct.VmBackupState*, i8*)** %63, align 8, !dbg !2316
  %65 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2317
  %66 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2318
  %67 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %66, i32 0, i32 30, !dbg !2319
  %68 = load %struct.VmBackupSyncCompleter*, %struct.VmBackupSyncCompleter** %67, align 8, !dbg !2319
  %69 = getelementptr inbounds %struct.VmBackupSyncCompleter, %struct.VmBackupSyncCompleter* %68, i32 0, i32 3, !dbg !2320
  %70 = load i8*, i8** %69, align 8, !dbg !2320
  %71 = call signext i8 %64(%struct.VmBackupState* %65, i8* %70), !dbg !2313
  %72 = icmp ne i8 %71, 0, !dbg !2313
  br i1 %72, label %73, label %76, !dbg !2321

; <label>:73:                                     ; preds = %59
  %74 = load %struct.VmBackupState*, %struct.VmBackupState** @gBackupState, align 8, !dbg !2322
  %75 = getelementptr inbounds %struct.VmBackupState, %struct.VmBackupState* %74, i32 0, i32 27, !dbg !2324
  store i32 6, i32* %75, align 8, !dbg !2325
  br label %78, !dbg !2326

; <label>:76:                                     ; preds = %59
  %77 = call signext i8 @VmBackup_SendEvent(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i32 0, i32 0)), !dbg !2327
  store i8 0, i8* %1, align 1, !dbg !2329
  br label %78

; <label>:78:                                     ; preds = %76, %73
  br label %79, !dbg !2330

; <label>:79:                                     ; preds = %78, %7
  %80 = load i8, i8* %1, align 1, !dbg !2332
  ret i8 %80, !dbg !2333
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @VmBackup_QueryStatus(%struct.VmBackupOp*) #5 !dbg !2334 {
  %2 = alloca %struct.VmBackupOp*, align 8
  store %struct.VmBackupOp* %0, %struct.VmBackupOp** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VmBackupOp** %2, metadata !2337, metadata !420), !dbg !2338
  %3 = load %struct.VmBackupOp*, %struct.VmBackupOp** %2, align 8, !dbg !2339
  %4 = getelementptr inbounds %struct.VmBackupOp, %struct.VmBackupOp* %3, i32 0, i32 0, !dbg !2340
  %5 = load i32 (%struct.VmBackupOp*)*, i32 (%struct.VmBackupOp*)** %4, align 8, !dbg !2340
  %6 = load %struct.VmBackupOp*, %struct.VmBackupOp** %2, align 8, !dbg !2341
  %7 = call i32 %5(%struct.VmBackupOp* %6), !dbg !2339
  ret i32 %7, !dbg !2342
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ToolsCorePool_SubmitTask(%struct.ToolsAppCtx*, void (%struct.ToolsAppCtx*, i8*)*, i8*, void (i8*)*) #5 !dbg !2343 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ToolsAppCtx*, align 8
  %7 = alloca void (%struct.ToolsAppCtx*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca void (i8*)*, align 8
  %10 = alloca %struct.ToolsCorePool*, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %6, metadata !2347, metadata !420), !dbg !2348
  store void (%struct.ToolsAppCtx*, i8*)* %1, void (%struct.ToolsAppCtx*, i8*)** %7, align 8
  call void @llvm.dbg.declare(metadata void (%struct.ToolsAppCtx*, i8*)** %7, metadata !2349, metadata !420), !dbg !2350
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2351, metadata !420), !dbg !2352
  store void (i8*)* %3, void (i8*)** %9, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %9, metadata !2353, metadata !420), !dbg !2354
  call void @llvm.dbg.declare(metadata %struct.ToolsCorePool** %10, metadata !2355, metadata !420), !dbg !2370
  %11 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %6, align 8, !dbg !2371
  %12 = call %struct.ToolsCorePool* @ToolsCorePool_GetPool(%struct.ToolsAppCtx* %11), !dbg !2372
  store %struct.ToolsCorePool* %12, %struct.ToolsCorePool** %10, align 8, !dbg !2370
  %13 = load %struct.ToolsCorePool*, %struct.ToolsCorePool** %10, align 8, !dbg !2373
  %14 = icmp ne %struct.ToolsCorePool* %13, null, !dbg !2375
  br i1 %14, label %15, label %24, !dbg !2376

; <label>:15:                                     ; preds = %4
  %16 = load %struct.ToolsCorePool*, %struct.ToolsCorePool** %10, align 8, !dbg !2377
  %17 = getelementptr inbounds %struct.ToolsCorePool, %struct.ToolsCorePool* %16, i32 0, i32 0, !dbg !2379
  %18 = load i32 (%struct.ToolsAppCtx*, void (%struct.ToolsAppCtx*, i8*)*, i8*, void (i8*)*)*, i32 (%struct.ToolsAppCtx*, void (%struct.ToolsAppCtx*, i8*)*, i8*, void (i8*)*)** %17, align 8, !dbg !2379
  %19 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %6, align 8, !dbg !2380
  %20 = load void (%struct.ToolsAppCtx*, i8*)*, void (%struct.ToolsAppCtx*, i8*)** %7, align 8, !dbg !2381
  %21 = load i8*, i8** %8, align 8, !dbg !2382
  %22 = load void (i8*)*, void (i8*)** %9, align 8, !dbg !2383
  %23 = call i32 %18(%struct.ToolsAppCtx* %19, void (%struct.ToolsAppCtx*, i8*)* %20, i8* %21, void (i8*)* %22), !dbg !2377
  store i32 %23, i32* %5, align 4, !dbg !2384
  br label %25, !dbg !2384

; <label>:24:                                     ; preds = %4
  store i32 0, i32* %5, align 4, !dbg !2385
  br label %25, !dbg !2385

; <label>:25:                                     ; preds = %24, %15
  %26 = load i32, i32* %5, align 4, !dbg !2386
  ret i32 %26, !dbg !2386
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.ToolsCorePool* @ToolsCorePool_GetPool(%struct.ToolsAppCtx*) #5 !dbg !2387 {
  %2 = alloca %struct.ToolsAppCtx*, align 8
  %3 = alloca %struct.ToolsCorePool*, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %2, metadata !2390, metadata !420), !dbg !2391
  call void @llvm.dbg.declare(metadata %struct.ToolsCorePool** %3, metadata !2392, metadata !420), !dbg !2393
  store %struct.ToolsCorePool* null, %struct.ToolsCorePool** %3, align 8, !dbg !2393
  %4 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %2, align 8, !dbg !2394
  %5 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %4, i32 0, i32 10, !dbg !2395
  %6 = load i8*, i8** %5, align 8, !dbg !2395
  call void (i8*, i8*, ...) @g_object_get(i8* %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.76, i32 0, i32 0), %struct.ToolsCorePool** %3, i8* null), !dbg !2396
  %7 = load %struct.ToolsCorePool*, %struct.ToolsCorePool** %3, align 8, !dbg !2397
  ret %struct.ToolsCorePool* %7, !dbg !2398
}

declare void @g_object_get(i8*, i8*, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @ToolsCore_LogState(i32, i8*, ...) #5 !dbg !2399 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2402, metadata !420), !dbg !2403
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2404, metadata !420), !dbg !2405
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2406, metadata !420), !dbg !2407
  %7 = load i32, i32* %3, align 4, !dbg !2408
  %8 = mul i32 3, %7, !dbg !2409
  %9 = load i8*, i8** %4, align 8, !dbg !2410
  %10 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0), i32 %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), i8* %9), !dbg !2411
  store i8* %10, i8** %5, align 8, !dbg !2407
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %6, metadata !2412, metadata !420), !dbg !2426
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !2427
  %12 = bitcast %struct.__va_list_tag* %11 to i8*, !dbg !2427
  call void @llvm.va_start(i8* %12), !dbg !2427
  %13 = load i8*, i8** %5, align 8, !dbg !2428
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !2429
  call void @g_logv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i32 64, i8* %13, %struct.__va_list_tag* %14), !dbg !2430
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !2431
  %16 = bitcast %struct.__va_list_tag* %15 to i8*, !dbg !2431
  call void @llvm.va_end(i8* %16), !dbg !2431
  %17 = load i8*, i8** %5, align 8, !dbg !2432
  call void @g_free(i8* %17), !dbg !2433
  ret void, !dbg !2434
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!412, !413}
!llvm.ident = !{!414}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !68, globals: !380)
!1 = !DIFile(filename: "libvmbackup_la-stateMachine.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1587")
!2 = !{!3, !15, !19, !25, !32, !43, !49, !58, !63}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 51, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1587")
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
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 232, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/plugin.h", directory: "/home/lichi/Desktop/open-vm-tools/line1587")
!17 = !{!18}
!18 = !DIEnumerator(name: "TOOLS_CORE_API_V1", value: 1)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 339, size: 32, align: 32, elements: !20)
!20 = !{!21, !22, !23, !24}
!21 = !DIEnumerator(name: "TOOLS_APP_GUESTRPC", value: 1)
!22 = !DIEnumerator(name: "TOOLS_APP_SIGNALS", value: 2)
!23 = !DIEnumerator(name: "TOOLS_APP_PROVIDER", value: 3)
!24 = !DIEnumerator(name: "TOOLS_SVC_PROPERTY", value: 4)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 43, size: 32, align: 32, elements: !27)
!26 = !DIFile(filename: "vmBackupInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line1587")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "VMBACKUP_STATUS_PENDING", value: 0)
!29 = !DIEnumerator(name: "VMBACKUP_STATUS_FINISHED", value: 1)
!30 = !DIEnumerator(name: "VMBACKUP_STATUS_CANCELED", value: 2)
!31 = !DIEnumerator(name: "VMBACKUP_STATUS_ERROR", value: 3)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 63, size: 32, align: 32, elements: !33)
!33 = !{!34, !35, !36, !37, !38, !39, !40, !41, !42}
!34 = !DIEnumerator(name: "VMBACKUP_MSTATE_IDLE", value: 0)
!35 = !DIEnumerator(name: "VMBACKUP_MSTATE_SCRIPT_FREEZE", value: 1)
!36 = !DIEnumerator(name: "VMBACKUP_MSTATE_SYNC_FREEZE_WAIT", value: 2)
!37 = !DIEnumerator(name: "VMBACKUP_MSTATE_SYNC_FREEZE", value: 3)
!38 = !DIEnumerator(name: "VMBACKUP_MSTATE_SYNC_THAW", value: 4)
!39 = !DIEnumerator(name: "VMBACKUP_MSTATE_SCRIPT_THAW", value: 5)
!40 = !DIEnumerator(name: "VMBACKUP_MSTATE_COMPLETE_WAIT", value: 6)
!41 = !DIEnumerator(name: "VMBACKUP_MSTATE_SCRIPT_ERROR", value: 7)
!42 = !DIEnumerator(name: "VMBACKUP_MSTATE_SYNC_ERROR", value: 8)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 50, size: 32, align: 32, elements: !44)
!44 = !{!45, !46, !47, !48}
!45 = !DIEnumerator(name: "VMBACKUP_FREEZE_PENDING", value: 0)
!46 = !DIEnumerator(name: "VMBACKUP_FREEZE_FINISHED", value: 1)
!47 = !DIEnumerator(name: "VMBACKUP_FREEZE_CANCELED", value: 2)
!48 = !DIEnumerator(name: "VMBACKUP_FREEZE_ERROR", value: 3)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !50, line: 78, size: 32, align: 32, elements: !51)
!50 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/guestrpc/vmbackup.h", directory: "/home/lichi/Desktop/open-vm-tools/line1587")
!51 = !{!52, !53, !54, !55, !56, !57}
!52 = !DIEnumerator(name: "VMBACKUP_SUCCESS", value: 0)
!53 = !DIEnumerator(name: "VMBACKUP_INVALID_STATE", value: 1)
!54 = !DIEnumerator(name: "VMBACKUP_SCRIPT_ERROR", value: 2)
!55 = !DIEnumerator(name: "VMBACKUP_SYNC_ERROR", value: 3)
!56 = !DIEnumerator(name: "VMBACKUP_REMOTE_ABORT", value: 4)
!57 = !DIEnumerator(name: "VMBACKUP_UNEXPECTED_ERROR", value: 5)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 57, size: 32, align: 32, elements: !59)
!59 = !{!60, !61, !62}
!60 = !DIEnumerator(name: "VMBACKUP_SCRIPT_FREEZE", value: 0)
!61 = !DIEnumerator(name: "VMBACKUP_SCRIPT_FREEZE_FAIL", value: 1)
!62 = !DIEnumerator(name: "VMBACKUP_SCRIPT_THAW", value: 2)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "GuestQuiesceParamsVersion", file: !64, line: 17, size: 32, align: 32, elements: !65)
!64 = !DIFile(filename: "guestQuiesce.h", directory: "/home/lichi/Desktop/open-vm-tools/line1587")
!65 = !{!66, !67}
!66 = !DIEnumerator(name: "GUESTQUIESCEPARAMS_V1", value: 1)
!67 = !DIEnumerator(name: "GUESTQUIESCEPARAMS_V2", value: 2)
!68 = !{!69, !70, !80, !90, !86, !95, !347}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !71, line: 155, baseType: !72)
!71 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line1587")
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!75, !79}
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !76, line: 50, baseType: !77)
!76 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1587")
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !76, line: 49, baseType: !78)
!78 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !76, line: 77, baseType: !69)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTypeClass", file: !82, line: 389, baseType: !83)
!82 = !DIFile(filename: "/usr/include/glib-2.0/gobject/gtype.h", directory: "/home/lichi/Desktop/open-vm-tools/line1587")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTypeClass", file: !82, line: 406, size: 64, align: 64, elements: !84)
!84 = !{!85}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "g_type", scope: !83, file: !82, line: 409, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "GType", file: !82, line: 382, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !88, line: 66, baseType: !89)
!88 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/open-vm-tools/line1587")
!89 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTypeInstance", file: !82, line: 391, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTypeInstance", file: !82, line: 416, size: 64, align: 64, elements: !93)
!93 = !{!94}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "g_class", scope: !92, file: !82, line: 419, baseType: !80, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupState", file: !26, line: 141, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmBackupState", file: !26, line: 104, size: 1984, align: 64, elements: !98)
!98 = !{!99, !134, !150, !151, !198, !200, !201, !202, !276, !277, !278, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !296, !297, !298, !299, !300, !305, !306, !308, !310, !330, !342, !343, !344, !345, !346}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !97, file: !26, line: 105, baseType: !100, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppCtx", file: !16, line: 274, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppCtx", file: !16, line: 241, size: 576, align: 64, elements: !103)
!103 = !{!104, !106, !111, !112, !113, !117, !122, !127, !128, !129, !133}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !102, file: !16, line: 243, baseType: !105, size: 32, align: 32)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCoreAPI", file: !16, line: 234, baseType: !15)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !102, file: !16, line: 245, baseType: !107, size: 64, align: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !76, line: 46, baseType: !110)
!110 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "isVMware", scope: !102, file: !16, line: 247, baseType: !75, size: 32, align: 32, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "errorCode", scope: !102, file: !16, line: 249, baseType: !78, size: 32, align: 32, offset: 160)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "mainLoop", scope: !102, file: !16, line: 251, baseType: !114, size: 64, align: 64, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainLoop", file: !71, line: 56, baseType: !116)
!116 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainLoop", file: !71, line: 56, flags: DIFlagFwdDecl)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !102, file: !16, line: 253, baseType: !118, size: 64, align: 64, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !120, line: 48, baseType: !121)
!120 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line1587")
!121 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !120, line: 48, flags: DIFlagFwdDecl)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !102, file: !16, line: 255, baseType: !123, size: 64, align: 64, offset: 320)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !125, line: 48, baseType: !126)
!125 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1587")
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !125, line: 48, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "blockFD", scope: !102, file: !16, line: 261, baseType: !78, size: 32, align: 32, offset: 384)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "uinputFD", scope: !102, file: !16, line: 263, baseType: !78, size: 32, align: 32, offset: 416)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !102, file: !16, line: 265, baseType: !130, size: 64, align: 64, offset: 448)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "serviceObj", scope: !102, file: !16, line: 273, baseType: !79, size: 64, align: 64, offset: 512)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "currentOp", scope: !97, file: !26, line: 106, baseType: !135, size: 64, align: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupOp", file: !26, line: 86, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmBackupOp", file: !26, line: 82, size: 192, align: 64, elements: !138)
!138 = !{!139, !145, !149}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "queryFn", scope: !137, file: !26, line: 83, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!143, !144}
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupOpStatus", file: !26, line: 48, baseType: !25)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "releaseFn", scope: !137, file: !26, line: 84, baseType: !146, size: 64, align: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !144}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "cancelFn", scope: !137, file: !26, line: 85, baseType: !146, size: 64, align: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "currentOpName", scope: !97, file: !26, line: 107, baseType: !131, size: 64, align: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "opLock", scope: !97, file: !26, line: 108, baseType: !152, size: 384, align: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "GStaticMutex", file: !153, line: 140, baseType: !154)
!153 = !DIFile(filename: "/usr/include/glib-2.0/glib/deprecated/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line1587")
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !153, line: 133, size: 384, align: 64, elements: !155)
!155 = !{!156, !169}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !154, file: !153, line: 135, baseType: !157, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMutex", file: !159, line: 51, baseType: !160)
!159 = !DIFile(filename: "/usr/include/glib-2.0/glib/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line1587")
!160 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_GMutex", file: !159, line: 58, size: 64, align: 64, elements: !161)
!161 = !{!162, !163}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !160, file: !159, line: 61, baseType: !79, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !160, file: !159, line: 62, baseType: !164, size: 64, align: 32)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 64, align: 32, elements: !167)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !76, line: 55, baseType: !166)
!166 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!167 = !{!168}
!168 = !DISubrange(count: 2)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !154, file: !153, line: 138, baseType: !170, size: 320, align: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !171, line: 128, baseType: !172)
!171 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1587")
!172 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !171, line: 90, size: 320, align: 64, elements: !173)
!173 = !{!174, !192, !196}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !172, file: !171, line: 125, baseType: !175, size: 320, align: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !171, line: 92, size: 320, align: 64, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182, !184, !185}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !175, file: !171, line: 94, baseType: !78, size: 32, align: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !175, file: !171, line: 95, baseType: !166, size: 32, align: 32, offset: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !175, file: !171, line: 96, baseType: !78, size: 32, align: 32, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !175, file: !171, line: 98, baseType: !166, size: 32, align: 32, offset: 96)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !175, file: !171, line: 102, baseType: !78, size: 32, align: 32, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !175, file: !171, line: 104, baseType: !183, size: 16, align: 16, offset: 160)
!183 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !175, file: !171, line: 105, baseType: !183, size: 16, align: 16, offset: 176)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !175, file: !171, line: 106, baseType: !186, size: 128, align: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !171, line: 79, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !171, line: 75, size: 128, align: 64, elements: !188)
!188 = !{!189, !191}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !187, file: !171, line: 77, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !187, file: !171, line: 78, baseType: !190, size: 64, align: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !172, file: !171, line: 126, baseType: !193, size: 320, align: 8)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 320, align: 8, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 40)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !172, file: !171, line: 127, baseType: !197, size: 64, align: 64)
!197 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "volumes", scope: !97, file: !26, line: 109, baseType: !199, size: 64, align: 64, offset: 576)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "snapshots", scope: !97, file: !26, line: 110, baseType: !199, size: 64, align: 64, offset: 640)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "pollPeriod", scope: !97, file: !26, line: 111, baseType: !165, size: 32, align: 32, offset: 704)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "abortTimer", scope: !97, file: !26, line: 112, baseType: !203, size: 64, align: 64, offset: 768)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !71, line: 64, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !71, line: 171, size: 768, align: 64, elements: !206)
!206 = !{!207, !208, !224, !253, !254, !258, !259, !260, !261, !269, !270, !271, !272}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !205, file: !71, line: 174, baseType: !79, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !205, file: !71, line: 175, baseType: !209, size: 64, align: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !71, line: 77, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !71, line: 196, size: 192, align: 64, elements: !212)
!212 = !{!213, !217, !218}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !211, file: !71, line: 198, baseType: !214, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !79}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !211, file: !71, line: 199, baseType: !214, size: 64, align: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !211, file: !71, line: 200, baseType: !219, size: 64, align: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !79, !203, !222, !223}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !205, file: !71, line: 177, baseType: !225, size: 64, align: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !71, line: 130, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !71, line: 214, size: 384, align: 64, elements: !229)
!229 = !{!230, !235, !239, !243, !247, !248}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !228, file: !71, line: 216, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!75, !203, !234}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !228, file: !71, line: 218, baseType: !236, size: 64, align: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!75, !203}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !228, file: !71, line: 219, baseType: !240, size: 64, align: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!75, !203, !70, !79}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !228, file: !71, line: 222, baseType: !244, size: 64, align: 64, offset: 192)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !203}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !228, file: !71, line: 226, baseType: !70, size: 64, align: 64, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !228, file: !71, line: 227, baseType: !249, size: 64, align: 64, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !71, line: 212, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{null}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !205, file: !71, line: 178, baseType: !165, size: 32, align: 32, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !205, file: !71, line: 180, baseType: !255, size: 64, align: 64, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !71, line: 48, baseType: !257)
!257 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !71, line: 48, flags: DIFlagFwdDecl)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !205, file: !71, line: 182, baseType: !77, size: 32, align: 32, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !205, file: !71, line: 183, baseType: !165, size: 32, align: 32, offset: 352)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !205, file: !71, line: 184, baseType: !165, size: 32, align: 32, offset: 384)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !205, file: !71, line: 186, baseType: !262, size: 64, align: 64, offset: 448)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !264, line: 37, baseType: !265)
!264 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/open-vm-tools/line1587")
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !264, line: 39, size: 128, align: 64, elements: !266)
!266 = !{!267, !268}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !265, file: !264, line: 41, baseType: !79, size: 64, align: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !265, file: !264, line: 42, baseType: !262, size: 64, align: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !205, file: !71, line: 188, baseType: !203, size: 64, align: 64, offset: 512)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !205, file: !71, line: 189, baseType: !203, size: 64, align: 64, offset: 576)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !205, file: !71, line: 191, baseType: !199, size: 64, align: 64, offset: 640)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !205, file: !71, line: 193, baseType: !273, size: 64, align: 64, offset: 704)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !71, line: 65, baseType: !275)
!275 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !71, line: 65, flags: DIFlagFwdDecl)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "timerEvent", scope: !97, file: !26, line: 113, baseType: !203, size: 64, align: 64, offset: 832)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "keepAlive", scope: !97, file: !26, line: 114, baseType: !203, size: 64, align: 64, offset: 896)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !97, file: !26, line: 115, baseType: !279, size: 64, align: 64, offset: 960)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!282, !284}
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !283, line: 230, baseType: !110)
!283 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1587")
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "forceRequeue", scope: !97, file: !26, line: 116, baseType: !282, size: 8, align: 8, offset: 1024)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "generateManifests", scope: !97, file: !26, line: 117, baseType: !282, size: 8, align: 8, offset: 1032)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "quiesceApps", scope: !97, file: !26, line: 118, baseType: !282, size: 8, align: 8, offset: 1040)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "quiesceFS", scope: !97, file: !26, line: 119, baseType: !282, size: 8, align: 8, offset: 1048)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "excludedFileSystems", scope: !97, file: !26, line: 120, baseType: !199, size: 64, align: 64, offset: 1088)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "allowHWProvider", scope: !97, file: !26, line: 121, baseType: !282, size: 8, align: 8, offset: 1152)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "execScripts", scope: !97, file: !26, line: 122, baseType: !282, size: 8, align: 8, offset: 1160)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "enableNullDriver", scope: !97, file: !26, line: 123, baseType: !282, size: 8, align: 8, offset: 1168)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "needsPriv", scope: !97, file: !26, line: 124, baseType: !282, size: 8, align: 8, offset: 1176)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "scriptArg", scope: !97, file: !26, line: 125, baseType: !295, size: 64, align: 64, offset: 1216)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !97, file: !26, line: 126, baseType: !165, size: 32, align: 32, offset: 1280)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !97, file: !26, line: 127, baseType: !79, size: 64, align: 64, offset: 1344)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "scripts", scope: !97, file: !26, line: 128, baseType: !69, size: 64, align: 64, offset: 1408)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "configDir", scope: !97, file: !26, line: 129, baseType: !131, size: 64, align: 64, offset: 1472)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "currentScript", scope: !97, file: !26, line: 130, baseType: !301, size: 64, align: 64, offset: 1536)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !302, line: 109, baseType: !303)
!302 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1587")
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !304, line: 172, baseType: !197)
!304 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1587")
!305 = !DIDerivedType(tag: DW_TAG_member, name: "errorMsg", scope: !97, file: !26, line: 131, baseType: !295, size: 64, align: 64, offset: 1600)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "machineState", scope: !97, file: !26, line: 132, baseType: !307, size: 32, align: 32, offset: 1664)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupMState", file: !26, line: 73, baseType: !32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "freezeStatus", scope: !97, file: !26, line: 133, baseType: !309, size: 32, align: 32, offset: 1696)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupFreezeStatus", file: !26, line: 55, baseType: !43)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "provider", scope: !97, file: !26, line: 134, baseType: !311, size: 64, align: 64, offset: 1728)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmBackupSyncProvider", file: !26, line: 154, size: 256, align: 64, elements: !313)
!313 = !{!314, !320, !325, !329}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !312, file: !26, line: 158, baseType: !315, size: 64, align: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCorePoolCb", file: !316, line: 54, baseType: !317)
!316 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/threadPool.h", directory: "/home/lichi/Desktop/open-vm-tools/line1587")
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !100, !79}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "snapshotDone", scope: !312, file: !26, line: 160, baseType: !321, size: 64, align: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupProviderCallback", file: !26, line: 144, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!282, !95, !69}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !312, file: !26, line: 161, baseType: !326, size: 64, align: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !311}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !312, file: !26, line: 162, baseType: !69, size: 64, align: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "completer", scope: !97, file: !26, line: 135, baseType: !331, size: 64, align: 64, offset: 1792)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmBackupSyncCompleter", file: !26, line: 171, size: 256, align: 64, elements: !333)
!333 = !{!334, !336, !337, !341}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !332, file: !26, line: 172, baseType: !335, size: 64, align: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupCompleterCallback", file: !26, line: 145, baseType: !322)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "snapshotCompleted", scope: !332, file: !26, line: 173, baseType: !335, size: 64, align: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !332, file: !26, line: 174, baseType: !338, size: 64, align: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !331}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !332, file: !26, line: 175, baseType: !69, size: 64, align: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "vssBackupContext", scope: !97, file: !26, line: 136, baseType: !77, size: 32, align: 32, offset: 1856)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "vssBackupType", scope: !97, file: !26, line: 137, baseType: !77, size: 32, align: 32, offset: 1888)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "vssBootableSystemState", scope: !97, file: !26, line: 138, baseType: !282, size: 8, align: 8, offset: 1920)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "vssPartialFileSupport", scope: !97, file: !26, line: 139, baseType: !282, size: 8, align: 8, offset: 1928)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "vssUseDefault", scope: !97, file: !26, line: 140, baseType: !282, size: 8, align: 8, offset: 1936)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestQuiesceParams", file: !64, line: 53, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestQuiesceParams", file: !64, line: 46, size: 128, align: 64, elements: !350)
!350 = !{!351, !353}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !349, file: !64, line: 47, baseType: !352, size: 32, align: 32)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestQuiesceParamsVersion", file: !64, line: 21, baseType: !63)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "GuestQuiesceParams_u", scope: !349, file: !64, line: 51, baseType: !354, size: 64, align: 64, offset: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !349, file: !64, line: 48, size: 64, align: 64, elements: !355)
!355 = !{!356, !371}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "guestQuiesceParamsV1", scope: !354, file: !64, line: 49, baseType: !357, size: 64, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestQuiesceParamsV1", file: !64, line: 25, size: 256, align: 64, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365, !366, !370}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "createManifest", scope: !358, file: !64, line: 26, baseType: !282, size: 8, align: 8)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "quiesceApps", scope: !358, file: !64, line: 27, baseType: !282, size: 8, align: 8, offset: 8)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "quiesceFS", scope: !358, file: !64, line: 28, baseType: !282, size: 8, align: 8, offset: 16)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "writableSnapshot", scope: !358, file: !64, line: 29, baseType: !282, size: 8, align: 8, offset: 24)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "execScripts", scope: !358, file: !64, line: 30, baseType: !282, size: 8, align: 8, offset: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "scriptArg", scope: !358, file: !64, line: 31, baseType: !199, size: 64, align: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !358, file: !64, line: 32, baseType: !367, size: 32, align: 32, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !283, line: 173, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !369, line: 51, baseType: !166)
!369 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1587")
!370 = !DIDerivedType(tag: DW_TAG_member, name: "diskUuids", scope: !358, file: !64, line: 33, baseType: !199, size: 64, align: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "guestQuiesceParamsV2", scope: !354, file: !64, line: 50, baseType: !372, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64, align: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestQuiesceParamsV2", file: !64, line: 37, size: 384, align: 64, elements: !374)
!374 = !{!375, !376, !377, !378, !379}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "paramsV1", scope: !373, file: !64, line: 38, baseType: !358, size: 256, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "vssBackupContext", scope: !373, file: !64, line: 39, baseType: !367, size: 32, align: 32, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "vssBackupType", scope: !373, file: !64, line: 40, baseType: !367, size: 32, align: 32, offset: 288)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "vssBootableSystemState", scope: !373, file: !64, line: 41, baseType: !282, size: 8, align: 8, offset: 320)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "vssPartialFileSupport", scope: !373, file: !64, line: 42, baseType: !282, size: 8, align: 8, offset: 328)
!380 = !{!381, !386, !411}
!381 = distinct !DIGlobalVariable(name: "vm_version", scope: !0, file: !382, line: 57, type: !383, isLocal: false, isDefinition: true, variable: [20 x i8]* @vm_version)
!382 = !DIFile(filename: "stateMachine.c", directory: "/home/lichi/Desktop/open-vm-tools/line1587")
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 160, align: 8, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 20)
!386 = distinct !DIGlobalVariable(name: "regData", scope: !387, file: !382, line: 1383, type: !391, isLocal: true, isDefinition: true, variable: %struct.ToolsPluginData* @ToolsOnLoad.regData)
!387 = distinct !DISubprogram(name: "ToolsOnLoad", scope: !382, file: !382, line: 1381, type: !388, isLocal: false, isDefinition: true, scopeLine: 1382, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!388 = !DISubroutineType(types: !389)
!389 = !{!390, !100}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsPluginData", file: !16, line: 545, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsPluginData", file: !16, line: 501, size: 256, align: 64, elements: !393)
!393 = !{!394, !395, !403, !409}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !392, file: !16, line: 503, baseType: !131, size: 64, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !392, file: !16, line: 508, baseType: !396, size: 64, align: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "GArray", file: !398, line: 37, baseType: !399)
!398 = !DIFile(filename: "/usr/include/glib-2.0/glib/garray.h", directory: "/home/lichi/Desktop/open-vm-tools/line1587")
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GArray", file: !398, line: 41, size: 128, align: 64, elements: !400)
!400 = !{!401, !402}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !399, file: !398, line: 43, baseType: !295, size: 64, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !399, file: !398, line: 44, baseType: !165, size: 32, align: 32, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "errorCb", scope: !392, file: !16, line: 539, baseType: !404, size: 64, align: 64, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64, align: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!75, !100, !407, !79, !408}
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppType", file: !16, line: 360, baseType: !19)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !392, file: !16, line: 544, baseType: !79, size: 64, align: 64, offset: 192)
!410 = !{}
!411 = distinct !DIGlobalVariable(name: "gBackupState", scope: !0, file: !382, line: 90, type: !95, isLocal: true, isDefinition: true, variable: %struct.VmBackupState** @gBackupState)
!412 = !{i32 2, !"Dwarf Version", i32 4}
!413 = !{i32 2, !"Debug Info Version", i32 3}
!414 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!415 = distinct !DISubprogram(name: "VmBackup_SendEvent", scope: !382, file: !382, line: 212, type: !416, isLocal: false, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!416 = !DISubroutineType(types: !417)
!417 = !{!282, !131, !418, !131}
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!419 = !DILocalVariable(name: "event", arg: 1, scope: !415, file: !382, line: 212, type: !131)
!420 = !DIExpression()
!421 = !DILocation(line: 212, column: 32, scope: !415)
!422 = !DILocalVariable(name: "code", arg: 2, scope: !415, file: !382, line: 213, type: !418)
!423 = !DILocation(line: 213, column: 33, scope: !415)
!424 = !DILocalVariable(name: "desc", arg: 3, scope: !415, file: !382, line: 214, type: !131)
!425 = !DILocation(line: 214, column: 32, scope: !415)
!426 = !DILocalVariable(name: "success", scope: !415, file: !382, line: 216, type: !282)
!427 = !DILocation(line: 216, column: 9, scope: !415)
!428 = !DILocalVariable(name: "result", scope: !415, file: !382, line: 217, type: !199)
!429 = !DILocation(line: 217, column: 10, scope: !415)
!430 = !DILocalVariable(name: "resultLen", scope: !415, file: !382, line: 218, type: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !432, line: 216, baseType: !89)
!432 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1587")
!433 = !DILocation(line: 218, column: 11, scope: !415)
!434 = !DILocalVariable(name: "msg", scope: !415, file: !382, line: 219, type: !295)
!435 = !DILocation(line: 219, column: 11, scope: !415)
!436 = !DILocation(line: 223, column: 4, scope: !415)
!437 = !DILocation(line: 224, column: 8, scope: !438)
!438 = distinct !DILexicalBlock(scope: !415, file: !382, line: 224, column: 8)
!439 = !DILocation(line: 224, column: 22, scope: !438)
!440 = !DILocation(line: 224, column: 32, scope: !438)
!441 = !DILocation(line: 224, column: 8, scope: !415)
!442 = !DILocation(line: 225, column: 24, scope: !443)
!443 = distinct !DILexicalBlock(scope: !438, file: !382, line: 224, column: 40)
!444 = !DILocation(line: 225, column: 38, scope: !443)
!445 = !DILocation(line: 225, column: 7, scope: !443)
!446 = !DILocation(line: 226, column: 22, scope: !443)
!447 = !DILocation(line: 226, column: 36, scope: !443)
!448 = !DILocation(line: 226, column: 7, scope: !443)
!449 = !DILocation(line: 227, column: 4, scope: !443)
!450 = !DILocation(line: 230, column: 26, scope: !415)
!451 = !DILocation(line: 230, column: 33, scope: !415)
!452 = !DILocation(line: 230, column: 39, scope: !415)
!453 = !DILocation(line: 229, column: 10, scope: !415)
!454 = !DILocation(line: 229, column: 8, scope: !415)
!455 = !DILocation(line: 231, column: 74, scope: !415)
!456 = !DILocation(line: 231, column: 4, scope: !415)
!457 = !DILocation(line: 234, column: 8, scope: !458)
!458 = distinct !DILexicalBlock(scope: !415, file: !382, line: 234, column: 8)
!459 = !DILocation(line: 234, column: 22, scope: !458)
!460 = !DILocation(line: 234, column: 8, scope: !415)
!461 = !DILocation(line: 235, column: 37, scope: !462)
!462 = distinct !DILexicalBlock(scope: !458, file: !382, line: 234, column: 33)
!463 = !DILocation(line: 235, column: 17, scope: !462)
!464 = !DILocation(line: 235, column: 15, scope: !462)
!465 = !DILocation(line: 236, column: 4, scope: !462)
!466 = !DILocation(line: 237, column: 33, scope: !467)
!467 = distinct !DILexicalBlock(scope: !458, file: !382, line: 236, column: 11)
!468 = !DILocation(line: 237, column: 47, scope: !467)
!469 = !DILocation(line: 237, column: 52, scope: !467)
!470 = !DILocation(line: 238, column: 33, scope: !467)
!471 = !DILocation(line: 238, column: 45, scope: !467)
!472 = !DILocation(line: 238, column: 38, scope: !467)
!473 = !DILocation(line: 238, column: 50, scope: !467)
!474 = !DILocation(line: 237, column: 17, scope: !467)
!475 = !DILocation(line: 237, column: 15, scope: !467)
!476 = !DILocation(line: 240, column: 12, scope: !477)
!477 = distinct !DILexicalBlock(scope: !467, file: !382, line: 240, column: 11)
!478 = !DILocation(line: 240, column: 11, scope: !467)
!479 = !DILocalVariable(name: "privErr", scope: !480, file: !382, line: 241, type: !131)
!480 = distinct !DILexicalBlock(scope: !477, file: !382, line: 240, column: 21)
!481 = !DILocation(line: 241, column: 22, scope: !480)
!482 = !DILocation(line: 242, column: 14, scope: !483)
!483 = distinct !DILexicalBlock(scope: !480, file: !382, line: 242, column: 14)
!484 = !DILocation(line: 242, column: 33, scope: !483)
!485 = !DILocation(line: 242, column: 26, scope: !483)
!486 = !DILocation(line: 242, column: 24, scope: !483)
!487 = !DILocation(line: 242, column: 42, scope: !483)
!488 = !DILocation(line: 243, column: 22, scope: !483)
!489 = !DILocation(line: 243, column: 30, scope: !483)
!490 = !DILocation(line: 243, column: 46, scope: !483)
!491 = !DILocation(line: 243, column: 39, scope: !483)
!492 = !DILocation(line: 243, column: 14, scope: !493)
!493 = !DILexicalBlockFile(scope: !483, file: !382, discriminator: 1)
!494 = !DILocation(line: 243, column: 56, scope: !483)
!495 = !DILocation(line: 242, column: 14, scope: !496)
!496 = !DILexicalBlockFile(scope: !480, file: !382, discriminator: 1)
!497 = !DILocation(line: 244, column: 81, scope: !498)
!498 = distinct !DILexicalBlock(scope: !483, file: !382, line: 243, column: 62)
!499 = !DILocation(line: 244, column: 13, scope: !498)
!500 = !DILocation(line: 245, column: 21, scope: !498)
!501 = !DILocation(line: 245, column: 13, scope: !498)
!502 = !DILocation(line: 255, column: 13, scope: !498)
!503 = !DILocation(line: 255, column: 27, scope: !498)
!504 = !DILocation(line: 255, column: 37, scope: !498)
!505 = !DILocation(line: 257, column: 84, scope: !498)
!506 = !DILocation(line: 257, column: 13, scope: !498)
!507 = !DILocation(line: 258, column: 43, scope: !498)
!508 = !DILocation(line: 258, column: 23, scope: !498)
!509 = !DILocation(line: 258, column: 21, scope: !498)
!510 = !DILocation(line: 259, column: 10, scope: !498)
!511 = !DILocation(line: 260, column: 13, scope: !512)
!512 = distinct !DILexicalBlock(scope: !483, file: !382, line: 259, column: 17)
!513 = !DILocation(line: 260, column: 27, scope: !512)
!514 = !DILocation(line: 260, column: 37, scope: !512)
!515 = !DILocation(line: 262, column: 7, scope: !480)
!516 = !DILocation(line: 270, column: 9, scope: !517)
!517 = distinct !DILexicalBlock(scope: !415, file: !382, line: 270, column: 8)
!518 = !DILocation(line: 270, column: 8, scope: !415)
!519 = !DILocation(line: 271, column: 99, scope: !520)
!520 = distinct !DILexicalBlock(scope: !517, file: !382, line: 270, column: 18)
!521 = !DILocation(line: 271, column: 104, scope: !520)
!522 = !DILocation(line: 271, column: 7, scope: !520)
!523 = !DILocation(line: 273, column: 4, scope: !520)
!524 = !DILocation(line: 274, column: 12, scope: !415)
!525 = !DILocation(line: 274, column: 4, scope: !415)
!526 = !DILocation(line: 275, column: 11, scope: !415)
!527 = !DILocation(line: 275, column: 4, scope: !415)
!528 = !DILocation(line: 277, column: 30, scope: !415)
!529 = !DILocation(line: 277, column: 4, scope: !415)
!530 = !DILocation(line: 277, column: 18, scope: !415)
!531 = !DILocation(line: 277, column: 28, scope: !415)
!532 = !DILocation(line: 278, column: 4, scope: !415)
!533 = distinct !{!533, !532}
!534 = !DILocalVariable(name: "__src", scope: !535, file: !382, line: 278, type: !203)
!535 = distinct !DILexicalBlock(scope: !415, file: !382, line: 278, column: 7)
!536 = !DILocation(line: 278, column: 18, scope: !535)
!537 = !DILocation(line: 278, column: 27, scope: !538)
!538 = !DILexicalBlockFile(scope: !535, file: !382, discriminator: 1)
!539 = !DILocation(line: 278, column: 41, scope: !538)
!540 = !DILocation(line: 278, column: 18, scope: !538)
!541 = !DILocation(line: 278, column: 75, scope: !538)
!542 = !DILocation(line: 278, column: 53, scope: !538)
!543 = !DILocation(line: 278, column: 23, scope: !538)
!544 = !DILocation(line: 278, column: 55, scope: !538)
!545 = !DILocation(line: 278, column: 69, scope: !538)
!546 = !DILocation(line: 278, column: 30, scope: !547)
!547 = !DILexicalBlockFile(scope: !538, file: !382, discriminator: 2)
!548 = !DILocation(line: 278, column: 7, scope: !549)
!549 = !DILexicalBlockFile(scope: !538, file: !382, discriminator: 3)
!550 = !DILocation(line: 278, column: 87, scope: !538)
!551 = !DILocation(line: 283, column: 11, scope: !415)
!552 = !DILocation(line: 283, column: 4, scope: !415)
!553 = distinct !DISubprogram(name: "VmBackupPrivSendMsg", scope: !382, file: !382, line: 169, type: !554, isLocal: true, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!554 = !DISubroutineType(types: !555)
!555 = !{!282, !295, !556, !557}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64, align: 64)
!558 = !DILocalVariable(name: "msg", arg: 1, scope: !553, file: !382, line: 169, type: !295)
!559 = !DILocation(line: 169, column: 28, scope: !553)
!560 = !DILocalVariable(name: "result", arg: 2, scope: !553, file: !382, line: 170, type: !556)
!561 = !DILocation(line: 170, column: 28, scope: !553)
!562 = !DILocalVariable(name: "resultLen", arg: 3, scope: !553, file: !382, line: 171, type: !557)
!563 = !DILocation(line: 171, column: 29, scope: !553)
!564 = !DILocalVariable(name: "success", scope: !553, file: !382, line: 173, type: !282)
!565 = !DILocation(line: 173, column: 9, scope: !553)
!566 = !DILocalVariable(name: "oldLevel", scope: !553, file: !382, line: 174, type: !166)
!567 = !DILocation(line: 174, column: 17, scope: !553)
!568 = !DILocation(line: 178, column: 4, scope: !553)
!569 = !DILocation(line: 180, column: 17, scope: !553)
!570 = !DILocation(line: 180, column: 35, scope: !553)
!571 = !DILocation(line: 180, column: 42, scope: !553)
!572 = !DILocation(line: 180, column: 42, scope: !573)
!573 = !DILexicalBlockFile(scope: !553, file: !382, discriminator: 1)
!574 = !DILocation(line: 180, column: 13, scope: !573)
!575 = !DILocation(line: 182, column: 77, scope: !553)
!576 = !DILocation(line: 182, column: 4, scope: !553)
!577 = !DILocation(line: 183, column: 8, scope: !578)
!578 = distinct !DILexicalBlock(scope: !553, file: !382, line: 183, column: 8)
!579 = !DILocation(line: 183, column: 16, scope: !578)
!580 = !DILocation(line: 183, column: 8, scope: !553)
!581 = !DILocation(line: 184, column: 8, scope: !582)
!582 = distinct !DILexicalBlock(scope: !578, file: !382, line: 183, column: 21)
!583 = !DILocation(line: 184, column: 7, scope: !582)
!584 = !DILocation(line: 184, column: 79, scope: !585)
!585 = !DILexicalBlockFile(scope: !582, file: !382, discriminator: 1)
!586 = !DILocation(line: 184, column: 7, scope: !587)
!587 = !DILexicalBlockFile(scope: !582, file: !382, discriminator: 2)
!588 = !DILocation(line: 185, column: 4, scope: !582)
!589 = !DILocation(line: 187, column: 30, scope: !553)
!590 = !DILocation(line: 187, column: 44, scope: !553)
!591 = !DILocation(line: 187, column: 49, scope: !553)
!592 = !DILocation(line: 187, column: 54, scope: !553)
!593 = !DILocation(line: 188, column: 37, scope: !553)
!594 = !DILocation(line: 188, column: 30, scope: !553)
!595 = !DILocation(line: 188, column: 42, scope: !553)
!596 = !DILocation(line: 189, column: 30, scope: !553)
!597 = !DILocation(line: 189, column: 38, scope: !553)
!598 = !DILocation(line: 187, column: 14, scope: !553)
!599 = !DILocation(line: 187, column: 12, scope: !553)
!600 = !DILocation(line: 191, column: 13, scope: !601)
!601 = distinct !DILexicalBlock(scope: !553, file: !382, line: 191, column: 8)
!602 = !DILocation(line: 191, column: 8, scope: !601)
!603 = !DILocation(line: 191, column: 23, scope: !601)
!604 = !DILocation(line: 191, column: 8, scope: !553)
!605 = !DILocation(line: 192, column: 8, scope: !606)
!606 = distinct !DILexicalBlock(scope: !601, file: !382, line: 191, column: 28)
!607 = !DILocation(line: 192, column: 7, scope: !606)
!608 = !DILocation(line: 192, column: 81, scope: !609)
!609 = !DILexicalBlockFile(scope: !606, file: !382, discriminator: 1)
!610 = !DILocation(line: 192, column: 7, scope: !611)
!611 = !DILexicalBlockFile(scope: !606, file: !382, discriminator: 2)
!612 = !DILocation(line: 193, column: 4, scope: !606)
!613 = !DILocation(line: 195, column: 11, scope: !553)
!614 = !DILocation(line: 195, column: 4, scope: !553)
!615 = distinct !DISubprogram(name: "VmBackupKeepAliveCallback", scope: !382, file: !382, line: 156, type: !616, isLocal: true, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!616 = !DISubroutineType(types: !617)
!617 = !{!75, !69}
!618 = !DILocalVariable(name: "clientData", arg: 1, scope: !615, file: !382, line: 156, type: !69)
!619 = !DILocation(line: 156, column: 33, scope: !615)
!620 = !DILocation(line: 158, column: 4, scope: !615)
!621 = !DILocation(line: 160, column: 19, scope: !615)
!622 = !DILocation(line: 160, column: 33, scope: !615)
!623 = !DILocation(line: 160, column: 4, scope: !615)
!624 = !DILocation(line: 161, column: 4, scope: !615)
!625 = !DILocation(line: 161, column: 18, scope: !615)
!626 = !DILocation(line: 161, column: 28, scope: !615)
!627 = !DILocation(line: 162, column: 4, scope: !615)
!628 = !DILocation(line: 163, column: 4, scope: !615)
!629 = !DILocalVariable(name: "ctx", arg: 1, scope: !387, file: !382, line: 1381, type: !100)
!630 = !DILocation(line: 1381, column: 26, scope: !387)
!631 = !DILocalVariable(name: "rpcs", scope: !387, file: !382, line: 1389, type: !632)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 1920, align: 64, elements: !658)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannelCallback", file: !120, line: 115, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcChannelCallback", file: !120, line: 94, size: 384, align: 64, elements: !635)
!635 = !{!636, !637, !654, !655, !656, !657}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !634, file: !120, line: 96, baseType: !131, size: 64, align: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !634, file: !120, line: 98, baseType: !638, size: 64, align: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcIn_Callback", file: !120, line: 90, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64, align: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!75, !642}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64, align: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcInData", file: !120, line: 77, baseType: !644)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcInData", file: !120, line: 51, size: 512, align: 64, elements: !645)
!645 = !{!646, !647, !648, !649, !650, !651, !652, !653}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !644, file: !120, line: 53, baseType: !131, size: 64, align: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !644, file: !120, line: 58, baseType: !131, size: 64, align: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "argsSize", scope: !644, file: !120, line: 60, baseType: !431, size: 64, align: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !644, file: !120, line: 65, baseType: !199, size: 64, align: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "resultLen", scope: !644, file: !120, line: 67, baseType: !431, size: 64, align: 64, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "freeResult", scope: !644, file: !120, line: 72, baseType: !75, size: 32, align: 32, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "appCtx", scope: !644, file: !120, line: 74, baseType: !69, size: 64, align: 64, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !644, file: !120, line: 76, baseType: !69, size: 64, align: 64, offset: 448)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !634, file: !120, line: 100, baseType: !79, size: 64, align: 64, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "xdrIn", scope: !634, file: !120, line: 102, baseType: !79, size: 64, align: 64, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "xdrOut", scope: !634, file: !120, line: 109, baseType: !79, size: 64, align: 64, offset: 256)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "xdrInSize", scope: !634, file: !120, line: 114, baseType: !431, size: 64, align: 64, offset: 320)
!658 = !{!659}
!659 = !DISubrange(count: 5)
!660 = !DILocation(line: 1389, column: 23, scope: !387)
!661 = !DILocalVariable(name: "sigs", scope: !387, file: !382, line: 1399, type: !662)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, size: 576, align: 64, elements: !669)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsPluginSignalCb", file: !16, line: 484, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsPluginSignalCb", file: !16, line: 480, size: 192, align: 64, elements: !665)
!665 = !{!666, !667, !668}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "signame", scope: !664, file: !16, line: 481, baseType: !107, size: 64, align: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !664, file: !16, line: 482, baseType: !79, size: 64, align: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !664, file: !16, line: 483, baseType: !79, size: 64, align: 64, offset: 128)
!669 = !{!670}
!670 = !DISubrange(count: 3)
!671 = !DILocation(line: 1399, column: 24, scope: !387)
!672 = !DILocalVariable(name: "regs", scope: !387, file: !382, line: 1404, type: !673)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 256, align: 64, elements: !167)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppReg", file: !16, line: 450, baseType: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppReg", file: !16, line: 447, size: 128, align: 64, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !675, file: !16, line: 448, baseType: !407, size: 32, align: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !675, file: !16, line: 449, baseType: !396, size: 64, align: 64, offset: 64)
!679 = !DILocation(line: 1404, column: 16, scope: !387)
!680 = !DILocation(line: 1404, column: 25, scope: !387)
!681 = !DILocation(line: 1405, column: 7, scope: !387)
!682 = !DILocation(line: 1405, column: 47, scope: !387)
!683 = !DILocation(line: 1405, column: 29, scope: !387)
!684 = !DILocation(line: 1406, column: 7, scope: !387)
!685 = !DILocation(line: 1406, column: 46, scope: !387)
!686 = !DILocation(line: 1406, column: 28, scope: !387)
!687 = !DILocation(line: 1422, column: 37, scope: !387)
!688 = !DILocation(line: 1422, column: 19, scope: !387)
!689 = !DILocation(line: 1422, column: 17, scope: !387)
!690 = !DILocation(line: 1425, column: 55, scope: !387)
!691 = !DILocation(line: 1425, column: 60, scope: !387)
!692 = !DILocation(line: 1425, column: 37, scope: !387)
!693 = !DILocation(line: 1425, column: 74, scope: !387)
!694 = !DILocation(line: 1425, column: 85, scope: !387)
!695 = !DILocation(line: 1424, column: 4, scope: !387)
!696 = !DILocation(line: 1436, column: 4, scope: !387)
!697 = distinct !DISubprogram(name: "VmBackupStart", scope: !382, file: !382, line: 1057, type: !640, isLocal: true, isDefinition: true, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!698 = !DILocalVariable(name: "data", arg: 1, scope: !697, file: !382, line: 1057, type: !642)
!699 = !DILocation(line: 1057, column: 26, scope: !697)
!700 = !DILocalVariable(name: "ctx", scope: !697, file: !382, line: 1059, type: !100)
!701 = !DILocation(line: 1059, column: 17, scope: !697)
!702 = !DILocation(line: 1059, column: 23, scope: !697)
!703 = !DILocation(line: 1059, column: 29, scope: !697)
!704 = !DILocation(line: 1061, column: 4, scope: !697)
!705 = !DILocation(line: 1062, column: 8, scope: !706)
!706 = distinct !DILexicalBlock(scope: !697, file: !382, line: 1062, column: 8)
!707 = !DILocation(line: 1062, column: 21, scope: !706)
!708 = !DILocation(line: 1062, column: 8, scope: !697)
!709 = !DILocation(line: 1063, column: 36, scope: !710)
!710 = distinct !DILexicalBlock(scope: !706, file: !382, line: 1062, column: 29)
!711 = !DILocation(line: 1063, column: 14, scope: !710)
!712 = !DILocation(line: 1063, column: 7, scope: !710)
!713 = !DILocation(line: 1066, column: 38, scope: !697)
!714 = !DILocation(line: 1066, column: 20, scope: !697)
!715 = !DILocation(line: 1066, column: 17, scope: !697)
!716 = !DILocation(line: 1067, column: 8, scope: !717)
!717 = distinct !DILexicalBlock(scope: !697, file: !382, line: 1067, column: 8)
!718 = !DILocation(line: 1067, column: 14, scope: !717)
!719 = !DILocation(line: 1067, column: 23, scope: !717)
!720 = !DILocation(line: 1067, column: 8, scope: !697)
!721 = !DILocalVariable(name: "generateManifests", scope: !722, file: !382, line: 1068, type: !78)
!722 = distinct !DILexicalBlock(scope: !717, file: !382, line: 1067, column: 28)
!723 = !DILocation(line: 1068, column: 11, scope: !722)
!724 = !DILocalVariable(name: "index", scope: !722, file: !382, line: 1069, type: !367)
!725 = !DILocation(line: 1069, column: 14, scope: !722)
!726 = !DILocation(line: 1071, column: 63, scope: !727)
!727 = distinct !DILexicalBlock(scope: !722, file: !382, line: 1071, column: 11)
!728 = !DILocation(line: 1071, column: 69, scope: !727)
!729 = !DILocation(line: 1071, column: 11, scope: !727)
!730 = !DILocation(line: 1071, column: 11, scope: !722)
!731 = !DILocation(line: 1072, column: 44, scope: !732)
!732 = distinct !DILexicalBlock(scope: !727, file: !382, line: 1071, column: 81)
!733 = !DILocation(line: 1072, column: 10, scope: !732)
!734 = !DILocation(line: 1072, column: 24, scope: !732)
!735 = !DILocation(line: 1072, column: 42, scope: !732)
!736 = !DILocation(line: 1073, column: 7, scope: !732)
!737 = !DILocation(line: 1074, column: 60, scope: !722)
!738 = !DILocation(line: 1074, column: 65, scope: !722)
!739 = !DILocation(line: 1074, column: 35, scope: !722)
!740 = !DILocation(line: 1074, column: 7, scope: !722)
!741 = !DILocation(line: 1074, column: 21, scope: !722)
!742 = !DILocation(line: 1074, column: 33, scope: !722)
!743 = !DILocation(line: 1077, column: 58, scope: !722)
!744 = !DILocation(line: 1077, column: 63, scope: !722)
!745 = !DILocation(line: 1077, column: 33, scope: !722)
!746 = !DILocation(line: 1077, column: 7, scope: !722)
!747 = !DILocation(line: 1077, column: 21, scope: !722)
!748 = !DILocation(line: 1077, column: 31, scope: !722)
!749 = !DILocation(line: 1080, column: 64, scope: !722)
!750 = !DILocation(line: 1080, column: 69, scope: !722)
!751 = !DILocation(line: 1080, column: 39, scope: !722)
!752 = !DILocation(line: 1080, column: 7, scope: !722)
!753 = !DILocation(line: 1080, column: 21, scope: !722)
!754 = !DILocation(line: 1080, column: 37, scope: !722)
!755 = !DILocation(line: 1083, column: 60, scope: !722)
!756 = !DILocation(line: 1083, column: 65, scope: !722)
!757 = !DILocation(line: 1083, column: 35, scope: !722)
!758 = !DILocation(line: 1083, column: 7, scope: !722)
!759 = !DILocation(line: 1083, column: 21, scope: !722)
!760 = !DILocation(line: 1083, column: 33, scope: !722)
!761 = !DILocation(line: 1086, column: 57, scope: !722)
!762 = !DILocation(line: 1086, column: 62, scope: !722)
!763 = !DILocation(line: 1086, column: 33, scope: !722)
!764 = !DILocation(line: 1086, column: 7, scope: !722)
!765 = !DILocation(line: 1086, column: 21, scope: !722)
!766 = !DILocation(line: 1086, column: 31, scope: !722)
!767 = !DILocation(line: 1089, column: 56, scope: !722)
!768 = !DILocation(line: 1089, column: 61, scope: !722)
!769 = !DILocation(line: 1089, column: 31, scope: !722)
!770 = !DILocation(line: 1089, column: 7, scope: !722)
!771 = !DILocation(line: 1089, column: 21, scope: !722)
!772 = !DILocation(line: 1089, column: 29, scope: !722)
!773 = !DILocation(line: 1091, column: 62, scope: !722)
!774 = !DILocation(line: 1091, column: 67, scope: !722)
!775 = !DILocation(line: 1091, column: 37, scope: !722)
!776 = !DILocation(line: 1091, column: 7, scope: !722)
!777 = !DILocation(line: 1091, column: 21, scope: !722)
!778 = !DILocation(line: 1091, column: 35, scope: !722)
!779 = !DILocation(line: 1096, column: 22, scope: !780)
!780 = distinct !DILexicalBlock(scope: !722, file: !382, line: 1096, column: 11)
!781 = !DILocation(line: 1096, column: 11, scope: !780)
!782 = !DILocation(line: 1096, column: 17, scope: !780)
!783 = !DILocation(line: 1096, column: 29, scope: !780)
!784 = !DILocation(line: 1096, column: 11, scope: !722)
!785 = !DILocation(line: 1097, column: 44, scope: !786)
!786 = distinct !DILexicalBlock(scope: !780, file: !382, line: 1096, column: 38)
!787 = !DILocation(line: 1097, column: 50, scope: !786)
!788 = !DILocation(line: 1097, column: 57, scope: !786)
!789 = !DILocation(line: 1097, column: 55, scope: !786)
!790 = !DILocation(line: 1098, column: 44, scope: !786)
!791 = !DILocation(line: 1098, column: 50, scope: !786)
!792 = !DILocation(line: 1098, column: 61, scope: !786)
!793 = !DILocation(line: 1098, column: 59, scope: !786)
!794 = !DILocation(line: 1097, column: 34, scope: !786)
!795 = !DILocation(line: 1097, column: 10, scope: !786)
!796 = !DILocation(line: 1097, column: 24, scope: !786)
!797 = !DILocation(line: 1097, column: 32, scope: !786)
!798 = !DILocation(line: 1099, column: 7, scope: !786)
!799 = !DILocation(line: 1100, column: 4, scope: !722)
!800 = !DILocation(line: 1101, column: 31, scope: !697)
!801 = !DILocation(line: 1101, column: 62, scope: !697)
!802 = !DILocation(line: 1101, column: 67, scope: !697)
!803 = !DILocation(line: 1101, column: 37, scope: !697)
!804 = !DILocation(line: 1101, column: 11, scope: !805)
!805 = !DILexicalBlockFile(scope: !697, file: !382, discriminator: 1)
!806 = !DILocation(line: 1101, column: 4, scope: !697)
!807 = !DILocation(line: 1104, column: 1, scope: !697)
!808 = distinct !DISubprogram(name: "VmBackupStartWithOpts", scope: !382, file: !382, line: 1139, type: !640, isLocal: true, isDefinition: true, scopeLine: 1140, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!809 = !DILocalVariable(name: "data", arg: 1, scope: !808, file: !382, line: 1139, type: !642)
!810 = !DILocation(line: 1139, column: 34, scope: !808)
!811 = !DILocalVariable(name: "ctx", scope: !808, file: !382, line: 1141, type: !100)
!812 = !DILocation(line: 1141, column: 17, scope: !808)
!813 = !DILocation(line: 1141, column: 23, scope: !808)
!814 = !DILocation(line: 1141, column: 29, scope: !808)
!815 = !DILocalVariable(name: "params", scope: !808, file: !382, line: 1142, type: !347)
!816 = !DILocation(line: 1142, column: 24, scope: !808)
!817 = !DILocalVariable(name: "paramsV1", scope: !808, file: !382, line: 1143, type: !818)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64, align: 64)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestQuiesceParamsV1", file: !64, line: 35, baseType: !358)
!820 = !DILocation(line: 1143, column: 26, scope: !808)
!821 = !DILocalVariable(name: "paramsV2", scope: !808, file: !382, line: 1144, type: !822)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64, align: 64)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestQuiesceParamsV2", file: !64, line: 44, baseType: !373)
!824 = !DILocation(line: 1144, column: 26, scope: !808)
!825 = !DILocalVariable(name: "retval", scope: !808, file: !382, line: 1145, type: !75)
!826 = !DILocation(line: 1145, column: 13, scope: !808)
!827 = !DILocation(line: 1147, column: 4, scope: !808)
!828 = !DILocation(line: 1148, column: 8, scope: !829)
!829 = distinct !DILexicalBlock(scope: !808, file: !382, line: 1148, column: 8)
!830 = !DILocation(line: 1148, column: 21, scope: !829)
!831 = !DILocation(line: 1148, column: 8, scope: !808)
!832 = !DILocation(line: 1149, column: 36, scope: !833)
!833 = distinct !DILexicalBlock(scope: !829, file: !382, line: 1148, column: 29)
!834 = !DILocation(line: 1149, column: 14, scope: !833)
!835 = !DILocation(line: 1149, column: 7, scope: !833)
!836 = !DILocation(line: 1152, column: 35, scope: !808)
!837 = !DILocation(line: 1152, column: 41, scope: !808)
!838 = !DILocation(line: 1152, column: 13, scope: !808)
!839 = !DILocation(line: 1152, column: 11, scope: !808)
!840 = !DILocation(line: 1162, column: 8, scope: !841)
!841 = distinct !DILexicalBlock(scope: !808, file: !382, line: 1162, column: 8)
!842 = !DILocation(line: 1162, column: 16, scope: !841)
!843 = !DILocation(line: 1162, column: 20, scope: !841)
!844 = !DILocation(line: 1162, column: 8, scope: !808)
!845 = !DILocation(line: 1163, column: 7, scope: !846)
!846 = distinct !DILexicalBlock(scope: !841, file: !382, line: 1162, column: 46)
!847 = !DILocation(line: 1164, column: 36, scope: !846)
!848 = !DILocation(line: 1164, column: 14, scope: !846)
!849 = !DILocation(line: 1164, column: 7, scope: !846)
!850 = !DILocation(line: 1169, column: 38, scope: !808)
!851 = !DILocation(line: 1169, column: 20, scope: !808)
!852 = !DILocation(line: 1169, column: 17, scope: !808)
!853 = !DILocation(line: 1171, column: 8, scope: !854)
!854 = distinct !DILexicalBlock(scope: !808, file: !382, line: 1171, column: 8)
!855 = !DILocation(line: 1171, column: 16, scope: !854)
!856 = !DILocation(line: 1171, column: 20, scope: !854)
!857 = !DILocation(line: 1171, column: 8, scope: !808)
!858 = !DILocation(line: 1172, column: 18, scope: !859)
!859 = distinct !DILexicalBlock(scope: !854, file: !382, line: 1171, column: 46)
!860 = !DILocation(line: 1172, column: 26, scope: !859)
!861 = !DILocation(line: 1172, column: 47, scope: !859)
!862 = !DILocation(line: 1172, column: 16, scope: !859)
!863 = !DILocation(line: 1173, column: 62, scope: !859)
!864 = !DILocation(line: 1173, column: 67, scope: !859)
!865 = !DILocation(line: 1173, column: 37, scope: !859)
!866 = !DILocation(line: 1173, column: 7, scope: !859)
!867 = !DILocation(line: 1173, column: 21, scope: !859)
!868 = !DILocation(line: 1173, column: 35, scope: !859)
!869 = !DILocation(line: 1176, column: 4, scope: !859)
!870 = !DILocation(line: 1176, column: 15, scope: !871)
!871 = !DILexicalBlockFile(scope: !872, file: !382, discriminator: 1)
!872 = distinct !DILexicalBlock(scope: !854, file: !382, line: 1176, column: 15)
!873 = !DILocation(line: 1176, column: 23, scope: !871)
!874 = !DILocation(line: 1176, column: 27, scope: !871)
!875 = !DILocation(line: 1177, column: 18, scope: !876)
!876 = distinct !DILexicalBlock(scope: !872, file: !382, line: 1176, column: 53)
!877 = !DILocation(line: 1177, column: 26, scope: !876)
!878 = !DILocation(line: 1177, column: 47, scope: !876)
!879 = !DILocation(line: 1177, column: 16, scope: !876)
!880 = !DILocation(line: 1178, column: 19, scope: !876)
!881 = !DILocation(line: 1178, column: 29, scope: !876)
!882 = !DILocation(line: 1178, column: 16, scope: !876)
!883 = !DILocation(line: 1179, column: 40, scope: !876)
!884 = !DILocation(line: 1179, column: 50, scope: !876)
!885 = !DILocation(line: 1179, column: 7, scope: !876)
!886 = !DILocation(line: 1179, column: 21, scope: !876)
!887 = !DILocation(line: 1179, column: 38, scope: !876)
!888 = !DILocation(line: 1180, column: 37, scope: !876)
!889 = !DILocation(line: 1180, column: 47, scope: !876)
!890 = !DILocation(line: 1180, column: 7, scope: !876)
!891 = !DILocation(line: 1180, column: 21, scope: !876)
!892 = !DILocation(line: 1180, column: 35, scope: !876)
!893 = !DILocation(line: 1181, column: 46, scope: !876)
!894 = !DILocation(line: 1181, column: 56, scope: !876)
!895 = !DILocation(line: 1181, column: 7, scope: !876)
!896 = !DILocation(line: 1181, column: 21, scope: !876)
!897 = !DILocation(line: 1181, column: 44, scope: !876)
!898 = !DILocation(line: 1182, column: 45, scope: !876)
!899 = !DILocation(line: 1182, column: 55, scope: !876)
!900 = !DILocation(line: 1182, column: 7, scope: !876)
!901 = !DILocation(line: 1182, column: 21, scope: !876)
!902 = !DILocation(line: 1182, column: 43, scope: !876)
!903 = !DILocation(line: 1183, column: 62, scope: !876)
!904 = !DILocation(line: 1183, column: 67, scope: !876)
!905 = !DILocation(line: 1183, column: 37, scope: !876)
!906 = !DILocation(line: 1183, column: 7, scope: !876)
!907 = !DILocation(line: 1183, column: 21, scope: !876)
!908 = !DILocation(line: 1183, column: 35, scope: !876)
!909 = !DILocation(line: 1186, column: 4, scope: !876)
!910 = !DILocation(line: 1188, column: 8, scope: !911)
!911 = distinct !DILexicalBlock(scope: !808, file: !382, line: 1188, column: 8)
!912 = !DILocation(line: 1188, column: 17, scope: !911)
!913 = !DILocation(line: 1188, column: 8, scope: !808)
!914 = !DILocation(line: 1189, column: 41, scope: !915)
!915 = distinct !DILexicalBlock(scope: !911, file: !382, line: 1188, column: 25)
!916 = !DILocation(line: 1189, column: 51, scope: !915)
!917 = !DILocation(line: 1189, column: 7, scope: !915)
!918 = !DILocation(line: 1189, column: 21, scope: !915)
!919 = !DILocation(line: 1189, column: 39, scope: !915)
!920 = !DILocation(line: 1190, column: 35, scope: !915)
!921 = !DILocation(line: 1190, column: 45, scope: !915)
!922 = !DILocation(line: 1190, column: 7, scope: !915)
!923 = !DILocation(line: 1190, column: 21, scope: !915)
!924 = !DILocation(line: 1190, column: 33, scope: !915)
!925 = !DILocation(line: 1191, column: 33, scope: !915)
!926 = !DILocation(line: 1191, column: 43, scope: !915)
!927 = !DILocation(line: 1191, column: 7, scope: !915)
!928 = !DILocation(line: 1191, column: 21, scope: !915)
!929 = !DILocation(line: 1191, column: 31, scope: !915)
!930 = !DILocation(line: 1192, column: 39, scope: !915)
!931 = !DILocation(line: 1192, column: 49, scope: !915)
!932 = !DILocation(line: 1192, column: 7, scope: !915)
!933 = !DILocation(line: 1192, column: 21, scope: !915)
!934 = !DILocation(line: 1192, column: 37, scope: !915)
!935 = !DILocation(line: 1193, column: 35, scope: !915)
!936 = !DILocation(line: 1193, column: 45, scope: !915)
!937 = !DILocation(line: 1193, column: 7, scope: !915)
!938 = !DILocation(line: 1193, column: 21, scope: !915)
!939 = !DILocation(line: 1193, column: 33, scope: !915)
!940 = !DILocation(line: 1194, column: 43, scope: !915)
!941 = !DILocation(line: 1194, column: 53, scope: !915)
!942 = !DILocation(line: 1195, column: 50, scope: !915)
!943 = !DILocation(line: 1195, column: 60, scope: !915)
!944 = !DILocation(line: 1195, column: 43, scope: !915)
!945 = !DILocation(line: 1194, column: 33, scope: !915)
!946 = !DILocation(line: 1194, column: 7, scope: !915)
!947 = !DILocation(line: 1194, column: 21, scope: !915)
!948 = !DILocation(line: 1194, column: 31, scope: !915)
!949 = !DILocation(line: 1196, column: 31, scope: !915)
!950 = !DILocation(line: 1196, column: 41, scope: !915)
!951 = !DILocation(line: 1196, column: 7, scope: !915)
!952 = !DILocation(line: 1196, column: 21, scope: !915)
!953 = !DILocation(line: 1196, column: 29, scope: !915)
!954 = !DILocation(line: 1197, column: 41, scope: !915)
!955 = !DILocation(line: 1197, column: 51, scope: !915)
!956 = !DILocation(line: 1198, column: 48, scope: !915)
!957 = !DILocation(line: 1198, column: 58, scope: !915)
!958 = !DILocation(line: 1198, column: 41, scope: !915)
!959 = !DILocation(line: 1197, column: 31, scope: !915)
!960 = !DILocation(line: 1197, column: 7, scope: !915)
!961 = !DILocation(line: 1197, column: 21, scope: !915)
!962 = !DILocation(line: 1197, column: 29, scope: !915)
!963 = !DILocation(line: 1199, column: 4, scope: !915)
!964 = !DILocation(line: 1201, column: 33, scope: !808)
!965 = !DILocation(line: 1201, column: 64, scope: !808)
!966 = !DILocation(line: 1201, column: 69, scope: !808)
!967 = !DILocation(line: 1201, column: 39, scope: !808)
!968 = !DILocation(line: 1201, column: 13, scope: !969)
!969 = !DILexicalBlockFile(scope: !808, file: !382, discriminator: 1)
!970 = !DILocation(line: 1201, column: 11, scope: !808)
!971 = !DILocation(line: 1204, column: 11, scope: !808)
!972 = !DILocation(line: 1204, column: 4, scope: !808)
!973 = !DILocation(line: 1205, column: 1, scope: !808)
!974 = distinct !DISubprogram(name: "VmBackupAbort", scope: !382, file: !382, line: 1219, type: !640, isLocal: true, isDefinition: true, scopeLine: 1220, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!975 = !DILocalVariable(name: "data", arg: 1, scope: !974, file: !382, line: 1219, type: !642)
!976 = !DILocation(line: 1219, column: 26, scope: !974)
!977 = !DILocation(line: 1221, column: 4, scope: !974)
!978 = !DILocation(line: 1222, column: 8, scope: !979)
!979 = distinct !DILexicalBlock(scope: !974, file: !382, line: 1222, column: 8)
!980 = !DILocation(line: 1222, column: 21, scope: !979)
!981 = !DILocation(line: 1222, column: 8, scope: !974)
!982 = !DILocation(line: 1223, column: 36, scope: !983)
!983 = distinct !DILexicalBlock(scope: !979, file: !382, line: 1222, column: 29)
!984 = !DILocation(line: 1223, column: 14, scope: !983)
!985 = !DILocation(line: 1223, column: 7, scope: !983)
!986 = !DILocation(line: 1227, column: 4, scope: !974)
!987 = !DILocation(line: 1228, column: 33, scope: !974)
!988 = !DILocation(line: 1228, column: 11, scope: !974)
!989 = !DILocation(line: 1228, column: 4, scope: !974)
!990 = !DILocation(line: 1229, column: 1, scope: !974)
!991 = distinct !DISubprogram(name: "VmBackupSnapshotCompleted", scope: !382, file: !382, line: 1283, type: !640, isLocal: true, isDefinition: true, scopeLine: 1284, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!992 = !DILocalVariable(name: "data", arg: 1, scope: !991, file: !382, line: 1283, type: !642)
!993 = !DILocation(line: 1283, column: 38, scope: !991)
!994 = !DILocation(line: 1285, column: 4, scope: !991)
!995 = !DILocation(line: 1287, column: 8, scope: !996)
!996 = distinct !DILexicalBlock(scope: !991, file: !382, line: 1287, column: 8)
!997 = !DILocation(line: 1287, column: 21, scope: !996)
!998 = !DILocation(line: 1287, column: 28, scope: !996)
!999 = !DILocation(line: 1288, column: 8, scope: !996)
!1000 = !DILocation(line: 1288, column: 22, scope: !996)
!1001 = !DILocation(line: 1288, column: 32, scope: !996)
!1002 = !DILocation(line: 1287, column: 8, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !991, file: !382, discriminator: 1)
!1004 = !DILocation(line: 1289, column: 36, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !996, file: !382, line: 1288, column: 40)
!1006 = !DILocation(line: 1289, column: 14, scope: !1005)
!1007 = !DILocation(line: 1289, column: 7, scope: !1005)
!1008 = !DILocation(line: 1291, column: 15, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !996, file: !382, line: 1291, column: 15)
!1010 = !DILocation(line: 1291, column: 29, scope: !1009)
!1011 = !DILocation(line: 1291, column: 42, scope: !1009)
!1012 = !DILocation(line: 1291, column: 15, scope: !996)
!1013 = !DILocation(line: 1292, column: 129, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1009, file: !382, line: 1291, column: 76)
!1015 = !DILocation(line: 1292, column: 143, scope: !1014)
!1016 = !DILocation(line: 1292, column: 108, scope: !1014)
!1017 = !DILocation(line: 1292, column: 7, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !1014, file: !382, discriminator: 1)
!1019 = !DILocation(line: 1294, column: 36, scope: !1014)
!1020 = !DILocation(line: 1294, column: 14, scope: !1014)
!1021 = !DILocation(line: 1294, column: 7, scope: !1014)
!1022 = !DILocation(line: 1298, column: 12, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !382, line: 1298, column: 11)
!1024 = distinct !DILexicalBlock(scope: !1009, file: !382, line: 1297, column: 11)
!1025 = !DILocation(line: 1298, column: 26, scope: !1023)
!1026 = !DILocation(line: 1298, column: 37, scope: !1023)
!1027 = !DILocation(line: 1298, column: 55, scope: !1023)
!1028 = !DILocation(line: 1299, column: 14, scope: !1023)
!1029 = !DILocation(line: 1299, column: 28, scope: !1023)
!1030 = !DILocation(line: 1299, column: 39, scope: !1023)
!1031 = !DILocation(line: 1298, column: 11, scope: !1024)
!1032 = !DILocation(line: 1300, column: 10, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1023, file: !382, line: 1299, column: 52)
!1034 = !DILocation(line: 1303, column: 14, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1033, file: !382, line: 1303, column: 14)
!1036 = !DILocation(line: 1303, column: 14, scope: !1033)
!1037 = !DILocation(line: 1304, column: 13, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1035, file: !382, line: 1303, column: 33)
!1039 = !DILocation(line: 1305, column: 10, scope: !1038)
!1040 = !DILocation(line: 1306, column: 7, scope: !1033)
!1041 = !DILocation(line: 1307, column: 36, scope: !1024)
!1042 = !DILocation(line: 1307, column: 14, scope: !1024)
!1043 = !DILocation(line: 1307, column: 7, scope: !1024)
!1044 = !DILocation(line: 1309, column: 1, scope: !991)
!1045 = distinct !DISubprogram(name: "VmBackupSnapshotDone", scope: !382, file: !382, line: 1242, type: !640, isLocal: true, isDefinition: true, scopeLine: 1243, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!1046 = !DILocalVariable(name: "data", arg: 1, scope: !1045, file: !382, line: 1242, type: !642)
!1047 = !DILocation(line: 1242, column: 33, scope: !1045)
!1048 = !DILocation(line: 1244, column: 4, scope: !1045)
!1049 = !DILocation(line: 1245, column: 8, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1045, file: !382, line: 1245, column: 8)
!1051 = !DILocation(line: 1245, column: 21, scope: !1050)
!1052 = !DILocation(line: 1245, column: 8, scope: !1045)
!1053 = !DILocation(line: 1246, column: 36, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1050, file: !382, line: 1245, column: 29)
!1055 = !DILocation(line: 1246, column: 14, scope: !1054)
!1056 = !DILocation(line: 1246, column: 7, scope: !1054)
!1057 = !DILocation(line: 1247, column: 15, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1050, file: !382, line: 1247, column: 15)
!1059 = !DILocation(line: 1247, column: 29, scope: !1058)
!1060 = !DILocation(line: 1247, column: 42, scope: !1058)
!1061 = !DILocation(line: 1247, column: 15, scope: !1050)
!1062 = !DILocation(line: 1248, column: 125, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1058, file: !382, line: 1247, column: 74)
!1064 = !DILocation(line: 1248, column: 139, scope: !1063)
!1065 = !DILocation(line: 1248, column: 104, scope: !1063)
!1066 = !DILocation(line: 1248, column: 7, scope: !1067)
!1067 = !DILexicalBlockFile(scope: !1063, file: !382, discriminator: 1)
!1068 = !DILocation(line: 1250, column: 36, scope: !1063)
!1069 = !DILocation(line: 1250, column: 14, scope: !1063)
!1070 = !DILocation(line: 1250, column: 7, scope: !1063)
!1071 = !DILocation(line: 1254, column: 11, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !382, line: 1254, column: 11)
!1073 = distinct !DILexicalBlock(scope: !1058, file: !382, line: 1253, column: 11)
!1074 = !DILocation(line: 1254, column: 17, scope: !1072)
!1075 = !DILocation(line: 1254, column: 26, scope: !1072)
!1076 = !DILocation(line: 1254, column: 11, scope: !1073)
!1077 = !DILocation(line: 1255, column: 46, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1072, file: !382, line: 1254, column: 31)
!1079 = !DILocation(line: 1255, column: 52, scope: !1078)
!1080 = !DILocation(line: 1255, column: 57, scope: !1078)
!1081 = !DILocation(line: 1255, column: 62, scope: !1078)
!1082 = !DILocation(line: 1255, column: 68, scope: !1078)
!1083 = !DILocation(line: 1255, column: 77, scope: !1078)
!1084 = !DILocation(line: 1255, column: 36, scope: !1078)
!1085 = !DILocation(line: 1255, column: 10, scope: !1078)
!1086 = !DILocation(line: 1255, column: 24, scope: !1078)
!1087 = !DILocation(line: 1255, column: 34, scope: !1078)
!1088 = !DILocation(line: 1256, column: 7, scope: !1078)
!1089 = !DILocation(line: 1257, column: 12, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1073, file: !382, line: 1257, column: 11)
!1091 = !DILocation(line: 1257, column: 26, scope: !1090)
!1092 = !DILocation(line: 1257, column: 36, scope: !1090)
!1093 = !DILocation(line: 1257, column: 49, scope: !1090)
!1094 = !DILocation(line: 1258, column: 49, scope: !1090)
!1095 = !DILocation(line: 1258, column: 63, scope: !1090)
!1096 = !DILocation(line: 1258, column: 73, scope: !1090)
!1097 = !DILocation(line: 1257, column: 11, scope: !1073)
!1098 = !DILocation(line: 1259, column: 10, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1090, file: !382, line: 1258, column: 86)
!1100 = !DILocation(line: 1262, column: 14, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1099, file: !382, line: 1262, column: 14)
!1102 = !DILocation(line: 1262, column: 14, scope: !1099)
!1103 = !DILocation(line: 1263, column: 13, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1101, file: !382, line: 1262, column: 33)
!1105 = !DILocation(line: 1264, column: 10, scope: !1104)
!1106 = !DILocation(line: 1265, column: 7, scope: !1099)
!1107 = !DILocation(line: 1266, column: 10, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1090, file: !382, line: 1265, column: 14)
!1109 = !DILocation(line: 1266, column: 24, scope: !1108)
!1110 = !DILocation(line: 1266, column: 37, scope: !1108)
!1111 = !DILocation(line: 1268, column: 36, scope: !1073)
!1112 = !DILocation(line: 1268, column: 14, scope: !1073)
!1113 = !DILocation(line: 1268, column: 7, scope: !1073)
!1114 = !DILocation(line: 1270, column: 1, scope: !1045)
!1115 = distinct !DISubprogram(name: "VmBackupDumpState", scope: !382, file: !382, line: 1321, type: !1116, isLocal: true, isDefinition: true, scopeLine: 1324, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{null, !79, !100, !79}
!1118 = !DILocalVariable(name: "src", arg: 1, scope: !1115, file: !382, line: 1321, type: !79)
!1119 = !DILocation(line: 1321, column: 28, scope: !1115)
!1120 = !DILocalVariable(name: "ctx", arg: 2, scope: !1115, file: !382, line: 1322, type: !100)
!1121 = !DILocation(line: 1322, column: 32, scope: !1115)
!1122 = !DILocalVariable(name: "data", arg: 3, scope: !1115, file: !382, line: 1323, type: !79)
!1123 = !DILocation(line: 1323, column: 28, scope: !1115)
!1124 = !DILocation(line: 1325, column: 8, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1115, file: !382, line: 1325, column: 8)
!1126 = !DILocation(line: 1325, column: 21, scope: !1125)
!1127 = !DILocation(line: 1325, column: 8, scope: !1115)
!1128 = !DILocation(line: 1326, column: 7, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1125, file: !382, line: 1325, column: 29)
!1130 = !DILocation(line: 1327, column: 4, scope: !1129)
!1131 = !DILocation(line: 1330, column: 47, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1125, file: !382, line: 1327, column: 11)
!1133 = !DILocation(line: 1330, column: 61, scope: !1132)
!1134 = !DILocation(line: 1330, column: 26, scope: !1132)
!1135 = !DILocation(line: 1328, column: 7, scope: !1132)
!1136 = !DILocation(line: 1332, column: 1, scope: !1115)
!1137 = distinct !DISubprogram(name: "VmBackupReset", scope: !382, file: !382, line: 1344, type: !1116, isLocal: true, isDefinition: true, scopeLine: 1347, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!1138 = !DILocalVariable(name: "src", arg: 1, scope: !1137, file: !382, line: 1344, type: !79)
!1139 = !DILocation(line: 1344, column: 24, scope: !1137)
!1140 = !DILocalVariable(name: "ctx", arg: 2, scope: !1137, file: !382, line: 1345, type: !100)
!1141 = !DILocation(line: 1345, column: 28, scope: !1137)
!1142 = !DILocalVariable(name: "data", arg: 3, scope: !1137, file: !382, line: 1346, type: !79)
!1143 = !DILocation(line: 1346, column: 24, scope: !1137)
!1144 = !DILocation(line: 1348, column: 1, scope: !1137)
!1145 = distinct !DISubprogram(name: "VmBackupShutdown", scope: !382, file: !382, line: 1360, type: !1116, isLocal: true, isDefinition: true, scopeLine: 1363, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!1146 = !DILocalVariable(name: "src", arg: 1, scope: !1145, file: !382, line: 1360, type: !79)
!1147 = !DILocation(line: 1360, column: 27, scope: !1145)
!1148 = !DILocalVariable(name: "ctx", arg: 2, scope: !1145, file: !382, line: 1361, type: !100)
!1149 = !DILocation(line: 1361, column: 31, scope: !1145)
!1150 = !DILocalVariable(name: "data", arg: 3, scope: !1145, file: !382, line: 1362, type: !79)
!1151 = !DILocation(line: 1362, column: 27, scope: !1145)
!1152 = !DILocation(line: 1364, column: 4, scope: !1145)
!1153 = !DILocation(line: 1365, column: 8, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1145, file: !382, line: 1365, column: 8)
!1155 = !DILocation(line: 1365, column: 21, scope: !1154)
!1156 = !DILocation(line: 1365, column: 8, scope: !1145)
!1157 = !DILocation(line: 1366, column: 7, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1154, file: !382, line: 1365, column: 29)
!1159 = !DILocation(line: 1367, column: 4, scope: !1158)
!1160 = !DILocation(line: 1368, column: 1, scope: !1145)
!1161 = distinct !DISubprogram(name: "GetCallerEFlags", scope: !1162, file: !1162, line: 200, type: !1163, isLocal: true, isDefinition: true, scopeLine: 201, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!1162 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_asm_x86_common.h", directory: "/home/lichi/Desktop/open-vm-tools/line1587")
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!166}
!1165 = !DILocalVariable(name: "flags", scope: !1161, file: !1162, line: 202, type: !89)
!1166 = !DILocation(line: 202, column: 18, scope: !1161)
!1167 = !DILocation(line: 203, column: 4, scope: !1161)
!1168 = !{i32 616685}
!1169 = !DILocation(line: 204, column: 11, scope: !1161)
!1170 = !DILocation(line: 204, column: 4, scope: !1161)
!1171 = distinct !DISubprogram(name: "VmBackupStartCommon", scope: !382, file: !382, line: 861, type: !1172, isLocal: true, isDefinition: true, scopeLine: 863, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!75, !642, !75}
!1174 = !DILocalVariable(name: "data", arg: 1, scope: !1171, file: !382, line: 861, type: !642)
!1175 = !DILocation(line: 861, column: 32, scope: !1171)
!1176 = !DILocalVariable(name: "forceQuiesce", arg: 2, scope: !1171, file: !382, line: 862, type: !75)
!1177 = !DILocation(line: 862, column: 30, scope: !1171)
!1178 = !DILocalVariable(name: "ctx", scope: !1171, file: !382, line: 864, type: !100)
!1179 = !DILocation(line: 864, column: 17, scope: !1171)
!1180 = !DILocation(line: 864, column: 23, scope: !1171)
!1181 = !DILocation(line: 864, column: 29, scope: !1171)
!1182 = !DILocalVariable(name: "provider", scope: !1171, file: !382, line: 865, type: !1183)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64, align: 64)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupSyncProvider", file: !26, line: 163, baseType: !312)
!1185 = !DILocation(line: 865, column: 26, scope: !1171)
!1186 = !DILocalVariable(name: "completer", scope: !1171, file: !382, line: 866, type: !1187)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64, align: 64)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupSyncCompleter", file: !26, line: 176, baseType: !332)
!1189 = !DILocation(line: 866, column: 27, scope: !1171)
!1190 = !DILocalVariable(name: "i", scope: !1171, file: !382, line: 868, type: !431)
!1191 = !DILocation(line: 868, column: 11, scope: !1171)
!1192 = !DILocalVariable(name: "providers", scope: !1171, file: !382, line: 874, type: !1193)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1194, size: 256, align: 64, elements: !167)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SyncProvider", scope: !1171, file: !382, line: 871, size: 128, align: 64, elements: !1195)
!1195 = !{!1196, !1200}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "ctor", scope: !1194, file: !382, line: 872, baseType: !1197, size: 64, align: 64)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64, align: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!1183}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "cfgEntry", scope: !1194, file: !382, line: 873, baseType: !107, size: 64, align: 64, offset: 64)
!1201 = !DILocation(line: 874, column: 6, scope: !1171)
!1202 = !DILocation(line: 882, column: 8, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1171, file: !382, line: 882, column: 8)
!1204 = !DILocation(line: 882, column: 8, scope: !1171)
!1205 = !DILocation(line: 883, column: 11, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !382, line: 883, column: 11)
!1207 = distinct !DILexicalBlock(scope: !1203, file: !382, line: 882, column: 22)
!1208 = !DILocation(line: 883, column: 25, scope: !1206)
!1209 = !DILocation(line: 883, column: 37, scope: !1206)
!1210 = !DILocation(line: 883, column: 40, scope: !1211)
!1211 = !DILexicalBlockFile(scope: !1206, file: !382, discriminator: 1)
!1212 = !DILocation(line: 883, column: 54, scope: !1211)
!1213 = !DILocation(line: 883, column: 11, scope: !1211)
!1214 = !DILocation(line: 906, column: 14, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !382, line: 906, column: 14)
!1216 = distinct !DILexicalBlock(scope: !1206, file: !382, line: 883, column: 65)
!1217 = !DILocation(line: 906, column: 28, scope: !1215)
!1218 = !DILocation(line: 906, column: 38, scope: !1215)
!1219 = !DILocation(line: 907, column: 39, scope: !1215)
!1220 = !DILocation(line: 907, column: 44, scope: !1215)
!1221 = !DILocation(line: 907, column: 14, scope: !1215)
!1222 = !DILocation(line: 906, column: 14, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !1216, file: !382, discriminator: 1)
!1224 = !DILocation(line: 908, column: 24, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1215, file: !382, line: 907, column: 93)
!1226 = !DILocation(line: 908, column: 22, scope: !1225)
!1227 = !DILocation(line: 909, column: 10, scope: !1225)
!1228 = !DILocation(line: 911, column: 7, scope: !1216)
!1229 = !DILocation(line: 913, column: 21, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1206, file: !382, line: 911, column: 14)
!1231 = !DILocation(line: 913, column: 19, scope: !1230)
!1232 = !DILocation(line: 915, column: 4, scope: !1207)
!1233 = !DILocation(line: 917, column: 14, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !382, line: 917, column: 7)
!1235 = distinct !DILexicalBlock(scope: !1203, file: !382, line: 915, column: 11)
!1236 = !DILocation(line: 917, column: 12, scope: !1234)
!1237 = !DILocation(line: 917, column: 19, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1239, file: !382, discriminator: 1)
!1239 = distinct !DILexicalBlock(scope: !1234, file: !382, line: 917, column: 7)
!1240 = !DILocation(line: 917, column: 21, scope: !1238)
!1241 = !DILocation(line: 917, column: 7, scope: !1238)
!1242 = !DILocalVariable(name: "sp", scope: !1243, file: !382, line: 918, type: !1244)
!1243 = distinct !DILexicalBlock(scope: !1239, file: !382, line: 917, column: 72)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64, align: 64)
!1245 = !DILocation(line: 918, column: 31, scope: !1243)
!1246 = !DILocation(line: 918, column: 47, scope: !1243)
!1247 = !DILocation(line: 918, column: 37, scope: !1243)
!1248 = !DILocation(line: 920, column: 39, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1243, file: !382, line: 920, column: 14)
!1250 = !DILocation(line: 920, column: 44, scope: !1249)
!1251 = !DILocation(line: 920, column: 64, scope: !1249)
!1252 = !DILocation(line: 920, column: 68, scope: !1249)
!1253 = !DILocation(line: 920, column: 14, scope: !1249)
!1254 = !DILocation(line: 920, column: 14, scope: !1243)
!1255 = !DILocation(line: 921, column: 24, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1249, file: !382, line: 920, column: 87)
!1257 = !DILocation(line: 921, column: 28, scope: !1256)
!1258 = !DILocation(line: 921, column: 22, scope: !1256)
!1259 = !DILocation(line: 922, column: 17, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1256, file: !382, line: 922, column: 17)
!1261 = !DILocation(line: 922, column: 26, scope: !1260)
!1262 = !DILocation(line: 922, column: 17, scope: !1256)
!1263 = !DILocation(line: 936, column: 16, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1260, file: !382, line: 922, column: 34)
!1265 = !DILocation(line: 939, column: 10, scope: !1256)
!1266 = !DILocation(line: 940, column: 7, scope: !1243)
!1267 = !DILocation(line: 917, column: 68, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1239, file: !382, discriminator: 2)
!1269 = !DILocation(line: 917, column: 7, scope: !1268)
!1270 = distinct !{!1270, !1271}
!1271 = !DILocation(line: 917, column: 7, scope: !1235)
!1272 = !DILocation(line: 943, column: 8, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1171, file: !382, line: 943, column: 8)
!1274 = !DILocation(line: 943, column: 17, scope: !1273)
!1275 = !DILocation(line: 943, column: 8, scope: !1171)
!1276 = !DILocation(line: 944, column: 7, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1273, file: !382, line: 943, column: 25)
!1278 = !DILocation(line: 945, column: 1, scope: !1277)
!1279 = !DILocation(line: 946, column: 7, scope: !1277)
!1280 = !DILocation(line: 950, column: 24, scope: !1171)
!1281 = !DILocation(line: 950, column: 30, scope: !1171)
!1282 = !DILocation(line: 950, column: 4, scope: !1171)
!1283 = !DILocation(line: 950, column: 18, scope: !1171)
!1284 = !DILocation(line: 950, column: 22, scope: !1171)
!1285 = !DILocation(line: 951, column: 4, scope: !1171)
!1286 = !DILocation(line: 951, column: 18, scope: !1171)
!1287 = !DILocation(line: 951, column: 29, scope: !1171)
!1288 = !DILocation(line: 952, column: 4, scope: !1171)
!1289 = !DILocation(line: 952, column: 18, scope: !1171)
!1290 = !DILocation(line: 952, column: 31, scope: !1171)
!1291 = !DILocation(line: 953, column: 4, scope: !1171)
!1292 = !DILocation(line: 953, column: 18, scope: !1171)
!1293 = !DILocation(line: 953, column: 31, scope: !1171)
!1294 = !DILocation(line: 954, column: 29, scope: !1171)
!1295 = !DILocation(line: 954, column: 4, scope: !1171)
!1296 = !DILocation(line: 954, column: 18, scope: !1171)
!1297 = !DILocation(line: 954, column: 27, scope: !1171)
!1298 = !DILocation(line: 955, column: 30, scope: !1171)
!1299 = !DILocation(line: 955, column: 4, scope: !1171)
!1300 = !DILocation(line: 955, column: 18, scope: !1171)
!1301 = !DILocation(line: 955, column: 28, scope: !1171)
!1302 = !DILocation(line: 956, column: 4, scope: !1171)
!1303 = !DILocation(line: 956, column: 18, scope: !1171)
!1304 = !DILocation(line: 956, column: 28, scope: !1171)
!1305 = !DILocation(line: 957, column: 25, scope: !1171)
!1306 = !DILocation(line: 957, column: 39, scope: !1171)
!1307 = !DILocation(line: 957, column: 4, scope: !1171)
!1308 = !DILocation(line: 958, column: 62, scope: !1171)
!1309 = !DILocation(line: 958, column: 67, scope: !1171)
!1310 = !DILocation(line: 958, column: 37, scope: !1171)
!1311 = !DILocation(line: 958, column: 4, scope: !1171)
!1312 = !DILocation(line: 958, column: 18, scope: !1171)
!1313 = !DILocation(line: 958, column: 35, scope: !1171)
!1314 = !DILocation(line: 962, column: 204, scope: !1171)
!1315 = !DILocation(line: 962, column: 218, scope: !1171)
!1316 = !DILocation(line: 962, column: 231, scope: !1171)
!1317 = !DILocation(line: 962, column: 245, scope: !1171)
!1318 = !DILocation(line: 962, column: 256, scope: !1171)
!1319 = !DILocation(line: 962, column: 270, scope: !1171)
!1320 = !DILocation(line: 962, column: 287, scope: !1171)
!1321 = !DILocation(line: 962, column: 301, scope: !1171)
!1322 = !DILocation(line: 962, column: 315, scope: !1171)
!1323 = !DILocation(line: 962, column: 329, scope: !1171)
!1324 = !DILocation(line: 962, column: 339, scope: !1171)
!1325 = !DILocation(line: 962, column: 314, scope: !1171)
!1326 = !DILocation(line: 961, column: 7, scope: !1171)
!1327 = !DILocation(line: 961, column: 21, scope: !1171)
!1328 = !DILocation(line: 962, column: 314, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1171, file: !382, discriminator: 1)
!1330 = !DILocation(line: 962, column: 314, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1171, file: !382, discriminator: 2)
!1332 = !DILocation(line: 962, column: 314, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !1171, file: !382, discriminator: 3)
!1334 = !DILocation(line: 961, column: 37, scope: !1329)
!1335 = !DILocation(line: 961, column: 51, scope: !1329)
!1336 = !DILocation(line: 961, column: 60, scope: !1329)
!1337 = !DILocation(line: 961, column: 74, scope: !1329)
!1338 = !DILocation(line: 961, column: 92, scope: !1329)
!1339 = !DILocation(line: 962, column: 4, scope: !1333)
!1340 = !DILocation(line: 970, column: 34, scope: !1171)
!1341 = !DILocation(line: 970, column: 39, scope: !1171)
!1342 = !DILocation(line: 970, column: 10, scope: !1171)
!1343 = !DILocation(line: 969, column: 4, scope: !1171)
!1344 = !DILocation(line: 969, column: 18, scope: !1171)
!1345 = !DILocation(line: 969, column: 38, scope: !1171)
!1346 = !DILocation(line: 971, column: 83, scope: !1171)
!1347 = !DILocation(line: 971, column: 97, scope: !1171)
!1348 = !DILocation(line: 971, column: 117, scope: !1171)
!1349 = !DILocation(line: 971, column: 82, scope: !1171)
!1350 = !DILocation(line: 971, column: 7, scope: !1329)
!1351 = !DILocation(line: 971, column: 21, scope: !1329)
!1352 = !DILocation(line: 971, column: 82, scope: !1329)
!1353 = !DILocation(line: 971, column: 82, scope: !1331)
!1354 = !DILocation(line: 971, column: 82, scope: !1333)
!1355 = !DILocation(line: 971, column: 4, scope: !1333)
!1356 = !DILocation(line: 975, column: 68, scope: !1171)
!1357 = !DILocation(line: 975, column: 82, scope: !1171)
!1358 = !DILocation(line: 975, column: 67, scope: !1171)
!1359 = !DILocation(line: 975, column: 93, scope: !1329)
!1360 = !DILocation(line: 975, column: 107, scope: !1329)
!1361 = !DILocation(line: 975, column: 67, scope: !1329)
!1362 = !DILocation(line: 975, column: 67, scope: !1331)
!1363 = !DILocation(line: 975, column: 67, scope: !1333)
!1364 = !DILocation(line: 975, column: 4, scope: !1333)
!1365 = !DILocation(line: 978, column: 30, scope: !1171)
!1366 = !DILocation(line: 978, column: 4, scope: !1171)
!1367 = !DILocation(line: 978, column: 18, scope: !1171)
!1368 = !DILocation(line: 978, column: 28, scope: !1171)
!1369 = !DILocation(line: 979, column: 8, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1171, file: !382, line: 979, column: 8)
!1371 = !DILocation(line: 979, column: 22, scope: !1370)
!1372 = !DILocation(line: 979, column: 32, scope: !1370)
!1373 = !DILocation(line: 979, column: 8, scope: !1171)
!1374 = !DILocation(line: 980, column: 7, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1370, file: !382, line: 979, column: 40)
!1376 = !DILocation(line: 981, column: 1, scope: !1375)
!1377 = !DILocation(line: 982, column: 7, scope: !1375)
!1378 = !DILocation(line: 985, column: 4, scope: !1171)
!1379 = !DILocation(line: 987, column: 9, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1171, file: !382, line: 987, column: 8)
!1381 = !DILocation(line: 987, column: 8, scope: !1171)
!1382 = !DILocation(line: 988, column: 1, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1380, file: !382, line: 987, column: 55)
!1384 = !DILocation(line: 989, column: 7, scope: !1383)
!1385 = !DILocation(line: 1003, column: 8, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1171, file: !382, line: 1003, column: 8)
!1387 = !DILocation(line: 1003, column: 22, scope: !1386)
!1388 = !DILocation(line: 1003, column: 30, scope: !1386)
!1389 = !DILocation(line: 1003, column: 8, scope: !1171)
!1390 = !DILocation(line: 1004, column: 56, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1386, file: !382, line: 1003, column: 36)
!1392 = !DILocation(line: 1004, column: 61, scope: !1391)
!1393 = !DILocation(line: 1004, column: 31, scope: !1391)
!1394 = !DILocation(line: 1004, column: 7, scope: !1391)
!1395 = !DILocation(line: 1004, column: 21, scope: !1391)
!1396 = !DILocation(line: 1004, column: 29, scope: !1391)
!1397 = !DILocation(line: 1006, column: 4, scope: !1391)
!1398 = !DILocation(line: 1009, column: 8, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1171, file: !382, line: 1009, column: 8)
!1400 = !DILocation(line: 1009, column: 22, scope: !1399)
!1401 = !DILocation(line: 1009, column: 30, scope: !1399)
!1402 = !DILocation(line: 1009, column: 8, scope: !1171)
!1403 = !DILocation(line: 1011, column: 40, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1399, file: !382, line: 1009, column: 36)
!1405 = !DILocation(line: 1011, column: 54, scope: !1404)
!1406 = !DILocation(line: 1011, column: 11, scope: !1404)
!1407 = !DILocation(line: 1010, column: 7, scope: !1404)
!1408 = !DILocation(line: 1010, column: 21, scope: !1404)
!1409 = !DILocation(line: 1010, column: 32, scope: !1404)
!1410 = !DILocation(line: 1012, column: 7, scope: !1404)
!1411 = distinct !{!1411, !1410}
!1412 = !DILocalVariable(name: "__src", scope: !1413, file: !382, line: 1012, type: !203)
!1413 = distinct !DILexicalBlock(scope: !1404, file: !382, line: 1012, column: 10)
!1414 = !DILocation(line: 1012, column: 21, scope: !1413)
!1415 = !DILocation(line: 1012, column: 30, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1413, file: !382, discriminator: 1)
!1417 = !DILocation(line: 1012, column: 44, scope: !1416)
!1418 = !DILocation(line: 1012, column: 21, scope: !1416)
!1419 = !DILocation(line: 1012, column: 79, scope: !1416)
!1420 = !DILocation(line: 1012, column: 57, scope: !1416)
!1421 = !DILocation(line: 1012, column: 26, scope: !1416)
!1422 = !DILocation(line: 1012, column: 58, scope: !1416)
!1423 = !DILocation(line: 1012, column: 72, scope: !1416)
!1424 = !DILocation(line: 1012, column: 78, scope: !1416)
!1425 = !DILocation(line: 1012, column: 33, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1416, file: !382, discriminator: 2)
!1427 = !DILocation(line: 1012, column: 10, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1416, file: !382, discriminator: 3)
!1429 = !DILocation(line: 1012, column: 90, scope: !1416)
!1430 = !DILocation(line: 1017, column: 4, scope: !1404)
!1431 = !DILocation(line: 1019, column: 4, scope: !1171)
!1432 = distinct !{!1432, !1431}
!1433 = !DILocation(line: 1019, column: 57, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !1435, file: !382, discriminator: 1)
!1435 = distinct !DILexicalBlock(scope: !1171, file: !382, line: 1019, column: 7)
!1436 = !DILocation(line: 1019, column: 71, scope: !1434)
!1437 = !DILocation(line: 1019, column: 36, scope: !1434)
!1438 = !DILocation(line: 1019, column: 9, scope: !1434)
!1439 = !DILocation(line: 1019, column: 23, scope: !1434)
!1440 = !DILocation(line: 1019, column: 34, scope: !1434)
!1441 = !DILocation(line: 1019, column: 84, scope: !1434)
!1442 = distinct !{!1442, !1443}
!1443 = !DILocation(line: 1019, column: 84, scope: !1435)
!1444 = !DILocalVariable(name: "__src", scope: !1445, file: !382, line: 1019, type: !203)
!1445 = distinct !DILexicalBlock(scope: !1435, file: !382, line: 1019, column: 87)
!1446 = !DILocation(line: 1019, column: 98, scope: !1445)
!1447 = !DILocation(line: 1019, column: 107, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !1445, file: !382, discriminator: 2)
!1449 = !DILocation(line: 1019, column: 121, scope: !1448)
!1450 = !DILocation(line: 1019, column: 98, scope: !1448)
!1451 = !DILocation(line: 1019, column: 156, scope: !1448)
!1452 = !DILocation(line: 1019, column: 134, scope: !1448)
!1453 = !DILocation(line: 1019, column: 23, scope: !1448)
!1454 = !DILocation(line: 1019, column: 55, scope: !1448)
!1455 = !DILocation(line: 1019, column: 69, scope: !1448)
!1456 = !DILocation(line: 1019, column: 75, scope: !1448)
!1457 = !DILocation(line: 1019, column: 30, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1448, file: !382, discriminator: 4)
!1459 = !DILocation(line: 1019, column: 7, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !1448, file: !382, discriminator: 5)
!1461 = !DILocation(line: 1019, column: 87, scope: !1448)
!1462 = !DILocation(line: 1019, column: 100, scope: !1463)
!1463 = !DILexicalBlockFile(scope: !1435, file: !382, discriminator: 3)
!1464 = !DILocation(line: 1020, column: 33, scope: !1171)
!1465 = !DILocation(line: 1020, column: 11, scope: !1171)
!1466 = !DILocation(line: 1020, column: 4, scope: !1171)
!1467 = !DILocation(line: 1023, column: 8, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1171, file: !382, line: 1023, column: 8)
!1469 = !DILocation(line: 1023, column: 22, scope: !1468)
!1470 = !DILocation(line: 1023, column: 32, scope: !1468)
!1471 = !DILocation(line: 1023, column: 8, scope: !1171)
!1472 = !DILocation(line: 1024, column: 24, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1468, file: !382, line: 1023, column: 40)
!1474 = !DILocation(line: 1024, column: 38, scope: !1473)
!1475 = !DILocation(line: 1024, column: 7, scope: !1473)
!1476 = !DILocation(line: 1025, column: 22, scope: !1473)
!1477 = !DILocation(line: 1025, column: 36, scope: !1473)
!1478 = !DILocation(line: 1025, column: 7, scope: !1473)
!1479 = !DILocation(line: 1026, column: 7, scope: !1473)
!1480 = !DILocation(line: 1026, column: 21, scope: !1473)
!1481 = !DILocation(line: 1026, column: 31, scope: !1473)
!1482 = !DILocation(line: 1027, column: 4, scope: !1473)
!1483 = !DILocation(line: 1028, column: 8, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1171, file: !382, line: 1028, column: 8)
!1485 = !DILocation(line: 1028, column: 22, scope: !1484)
!1486 = !DILocation(line: 1028, column: 8, scope: !1171)
!1487 = !DILocation(line: 1029, column: 7, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1484, file: !382, line: 1028, column: 32)
!1489 = !DILocation(line: 1029, column: 21, scope: !1488)
!1490 = !DILocation(line: 1029, column: 31, scope: !1488)
!1491 = !DILocation(line: 1029, column: 39, scope: !1488)
!1492 = !DILocation(line: 1029, column: 53, scope: !1488)
!1493 = !DILocation(line: 1030, column: 4, scope: !1488)
!1494 = !DILocation(line: 1031, column: 8, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1171, file: !382, line: 1031, column: 8)
!1496 = !DILocation(line: 1031, column: 22, scope: !1495)
!1497 = !DILocation(line: 1031, column: 8, scope: !1171)
!1498 = !DILocation(line: 1032, column: 7, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1495, file: !382, line: 1031, column: 33)
!1500 = !DILocation(line: 1032, column: 21, scope: !1499)
!1501 = !DILocation(line: 1032, column: 32, scope: !1499)
!1502 = !DILocation(line: 1032, column: 40, scope: !1499)
!1503 = !DILocation(line: 1032, column: 54, scope: !1499)
!1504 = !DILocation(line: 1033, column: 4, scope: !1499)
!1505 = !DILocation(line: 1034, column: 11, scope: !1171)
!1506 = !DILocation(line: 1034, column: 25, scope: !1171)
!1507 = !DILocation(line: 1034, column: 4, scope: !1171)
!1508 = !DILocation(line: 1035, column: 11, scope: !1171)
!1509 = !DILocation(line: 1035, column: 25, scope: !1171)
!1510 = !DILocation(line: 1035, column: 4, scope: !1171)
!1511 = !DILocation(line: 1036, column: 11, scope: !1171)
!1512 = !DILocation(line: 1036, column: 4, scope: !1171)
!1513 = !DILocation(line: 1037, column: 17, scope: !1171)
!1514 = !DILocation(line: 1038, column: 33, scope: !1171)
!1515 = !DILocation(line: 1038, column: 11, scope: !1171)
!1516 = !DILocation(line: 1038, column: 4, scope: !1171)
!1517 = !DILocation(line: 1040, column: 1, scope: !1171)
!1518 = distinct !DISubprogram(name: "VmBackupStartScripts", scope: !382, file: !382, line: 345, type: !1519, isLocal: true, isDefinition: true, scopeLine: 346, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!282, !1521}
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupScriptType", file: !26, line: 61, baseType: !58)
!1522 = !DILocalVariable(name: "type", arg: 1, scope: !1518, file: !382, line: 345, type: !1521)
!1523 = !DILocation(line: 345, column: 41, scope: !1518)
!1524 = !DILocalVariable(name: "opName", scope: !1518, file: !382, line: 347, type: !131)
!1525 = !DILocation(line: 347, column: 16, scope: !1518)
!1526 = !DILocalVariable(name: "nextState", scope: !1518, file: !382, line: 348, type: !307)
!1527 = !DILocation(line: 348, column: 19, scope: !1518)
!1528 = !DILocation(line: 349, column: 4, scope: !1518)
!1529 = !DILocation(line: 351, column: 12, scope: !1518)
!1530 = !DILocation(line: 351, column: 4, scope: !1518)
!1531 = !DILocation(line: 353, column: 17, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1518, file: !382, line: 351, column: 18)
!1533 = !DILocation(line: 354, column: 20, scope: !1532)
!1534 = !DILocation(line: 355, column: 10, scope: !1532)
!1535 = !DILocation(line: 358, column: 17, scope: !1532)
!1536 = !DILocation(line: 359, column: 20, scope: !1532)
!1537 = !DILocation(line: 360, column: 10, scope: !1532)
!1538 = !DILocation(line: 363, column: 17, scope: !1532)
!1539 = !DILocation(line: 364, column: 20, scope: !1532)
!1540 = !DILocation(line: 365, column: 10, scope: !1532)
!1541 = !DILocation(line: 368, column: 10, scope: !1532)
!1542 = !DILocation(line: 371, column: 8, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1518, file: !382, line: 371, column: 8)
!1544 = !DILocation(line: 371, column: 22, scope: !1543)
!1545 = !DILocation(line: 371, column: 34, scope: !1543)
!1546 = !DILocation(line: 372, column: 31, scope: !1543)
!1547 = !DILocation(line: 373, column: 52, scope: !1543)
!1548 = !DILocation(line: 373, column: 58, scope: !1543)
!1549 = !DILocation(line: 373, column: 31, scope: !1543)
!1550 = !DILocation(line: 375, column: 31, scope: !1543)
!1551 = !DILocation(line: 372, column: 9, scope: !1543)
!1552 = !DILocation(line: 371, column: 8, scope: !1553)
!1553 = !DILexicalBlockFile(scope: !1518, file: !382, discriminator: 1)
!1554 = !DILocation(line: 376, column: 7, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1543, file: !382, line: 375, column: 40)
!1556 = !DILocation(line: 379, column: 7, scope: !1555)
!1557 = !DILocation(line: 382, column: 33, scope: !1518)
!1558 = !DILocation(line: 382, column: 4, scope: !1518)
!1559 = !DILocation(line: 382, column: 18, scope: !1518)
!1560 = !DILocation(line: 382, column: 31, scope: !1518)
!1561 = !DILocation(line: 383, column: 4, scope: !1518)
!1562 = !DILocation(line: 384, column: 1, scope: !1518)
!1563 = distinct !DISubprogram(name: "VmBackupAbortTimer", scope: !382, file: !382, line: 488, type: !73, isLocal: true, isDefinition: true, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!1564 = !DILocalVariable(name: "data", arg: 1, scope: !1563, file: !382, line: 488, type: !79)
!1565 = !DILocation(line: 488, column: 29, scope: !1563)
!1566 = !DILocation(line: 491, column: 4, scope: !1563)
!1567 = !DILocation(line: 492, column: 19, scope: !1563)
!1568 = !DILocation(line: 492, column: 33, scope: !1563)
!1569 = !DILocation(line: 492, column: 4, scope: !1563)
!1570 = !DILocation(line: 493, column: 4, scope: !1563)
!1571 = !DILocation(line: 493, column: 18, scope: !1563)
!1572 = !DILocation(line: 493, column: 29, scope: !1563)
!1573 = !DILocation(line: 494, column: 4, scope: !1563)
!1574 = !DILocation(line: 495, column: 4, scope: !1563)
!1575 = distinct !DISubprogram(name: "VmBackupAsyncCallback", scope: !382, file: !382, line: 601, type: !616, isLocal: true, isDefinition: true, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!1576 = !DILocalVariable(name: "clientData", arg: 1, scope: !1575, file: !382, line: 601, type: !69)
!1577 = !DILocation(line: 601, column: 29, scope: !1575)
!1578 = !DILocalVariable(name: "opPending", scope: !1575, file: !382, line: 603, type: !75)
!1579 = !DILocation(line: 603, column: 13, scope: !1575)
!1580 = !DILocation(line: 604, column: 4, scope: !1575)
!1581 = !DILocation(line: 607, column: 19, scope: !1575)
!1582 = !DILocation(line: 607, column: 33, scope: !1575)
!1583 = !DILocation(line: 607, column: 4, scope: !1575)
!1584 = !DILocation(line: 608, column: 4, scope: !1575)
!1585 = !DILocation(line: 608, column: 18, scope: !1575)
!1586 = !DILocation(line: 608, column: 29, scope: !1575)
!1587 = !DILocation(line: 614, column: 9, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1575, file: !382, line: 614, column: 8)
!1589 = !DILocation(line: 614, column: 8, scope: !1575)
!1590 = !DILocation(line: 615, column: 7, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1588, file: !382, line: 614, column: 51)
!1592 = !DILocation(line: 616, column: 7, scope: !1591)
!1593 = !DILocation(line: 622, column: 11, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !382, line: 622, column: 11)
!1595 = distinct !DILexicalBlock(scope: !1588, file: !382, line: 617, column: 11)
!1596 = !DILocation(line: 622, column: 11, scope: !1595)
!1597 = !DILocation(line: 623, column: 10, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1594, file: !382, line: 622, column: 22)
!1599 = !DILocation(line: 627, column: 12, scope: !1575)
!1600 = !DILocation(line: 627, column: 26, scope: !1575)
!1601 = !DILocation(line: 627, column: 4, scope: !1575)
!1602 = !DILocation(line: 630, column: 12, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !382, line: 630, column: 11)
!1604 = distinct !DILexicalBlock(scope: !1575, file: !382, line: 627, column: 40)
!1605 = !DILocation(line: 630, column: 11, scope: !1604)
!1606 = !DILocation(line: 631, column: 10, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1603, file: !382, line: 630, column: 38)
!1608 = !DILocation(line: 632, column: 7, scope: !1607)
!1609 = !DILocation(line: 633, column: 7, scope: !1604)
!1610 = !DILocation(line: 637, column: 12, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1604, file: !382, line: 637, column: 11)
!1612 = !DILocation(line: 637, column: 11, scope: !1604)
!1613 = !DILocation(line: 638, column: 10, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1611, file: !382, line: 637, column: 34)
!1615 = !DILocation(line: 639, column: 7, scope: !1614)
!1616 = !DILocation(line: 640, column: 7, scope: !1604)
!1617 = !DILocation(line: 647, column: 7, scope: !1604)
!1618 = !DILocation(line: 651, column: 29, scope: !1604)
!1619 = !DILocation(line: 651, column: 43, scope: !1604)
!1620 = !DILocation(line: 651, column: 48, scope: !1604)
!1621 = !DILocation(line: 653, column: 29, scope: !1604)
!1622 = !DILocation(line: 653, column: 43, scope: !1604)
!1623 = !DILocation(line: 651, column: 7, scope: !1604)
!1624 = !DILocation(line: 655, column: 12, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1604, file: !382, line: 655, column: 11)
!1626 = !DILocation(line: 655, column: 11, scope: !1604)
!1627 = !DILocation(line: 656, column: 10, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1625, file: !382, line: 655, column: 56)
!1629 = !DILocation(line: 657, column: 7, scope: !1628)
!1630 = !DILocation(line: 658, column: 7, scope: !1604)
!1631 = !DILocation(line: 662, column: 12, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1604, file: !382, line: 662, column: 11)
!1633 = !DILocation(line: 662, column: 11, scope: !1604)
!1634 = !DILocation(line: 663, column: 10, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1632, file: !382, line: 662, column: 42)
!1636 = !DILocation(line: 664, column: 7, scope: !1635)
!1637 = !DILocation(line: 665, column: 7, scope: !1604)
!1638 = !DILocation(line: 670, column: 7, scope: !1604)
!1639 = !DILocation(line: 670, column: 21, scope: !1604)
!1640 = !DILocation(line: 670, column: 34, scope: !1604)
!1641 = !DILocation(line: 671, column: 7, scope: !1604)
!1642 = !DILocation(line: 675, column: 12, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1604, file: !382, line: 675, column: 11)
!1644 = !DILocation(line: 675, column: 11, scope: !1604)
!1645 = !DILocation(line: 676, column: 10, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1643, file: !382, line: 675, column: 63)
!1647 = !DILocation(line: 677, column: 7, scope: !1646)
!1648 = !DILocation(line: 678, column: 7, scope: !1604)
!1649 = !DILocation(line: 681, column: 7, scope: !1604)
!1650 = distinct !{!1650, !1649}
!1651 = !DILocation(line: 681, column: 105, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !1653, file: !382, discriminator: 1)
!1653 = distinct !DILexicalBlock(scope: !1604, file: !382, line: 681, column: 10)
!1654 = !DILocation(line: 681, column: 119, scope: !1652)
!1655 = !DILocation(line: 681, column: 84, scope: !1652)
!1656 = !DILocation(line: 681, column: 12, scope: !1657)
!1657 = !DILexicalBlockFile(scope: !1652, file: !382, discriminator: 3)
!1658 = !DILocation(line: 681, column: 135, scope: !1652)
!1659 = !DILocation(line: 681, column: 135, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !1661, file: !382, discriminator: 2)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !382, line: 681, column: 135)
!1662 = distinct !DILexicalBlock(scope: !1653, file: !382, line: 681, column: 135)
!1663 = distinct !{!1663, !1664}
!1664 = !DILocation(line: 681, column: 135, scope: !1653)
!1665 = !DILocation(line: 683, column: 4, scope: !1604)
!1666 = !DILocation(line: 683, column: 4, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1604, file: !382, discriminator: 1)
!1668 = !DILocation(line: 687, column: 8, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1575, file: !382, line: 687, column: 8)
!1670 = !DILocation(line: 687, column: 22, scope: !1669)
!1671 = !DILocation(line: 687, column: 35, scope: !1669)
!1672 = !DILocation(line: 687, column: 8, scope: !1575)
!1673 = !DILocation(line: 688, column: 7, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1669, file: !382, line: 687, column: 60)
!1675 = !DILocation(line: 689, column: 4, scope: !1674)
!1676 = !DILocation(line: 690, column: 7, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1669, file: !382, line: 689, column: 11)
!1678 = !DILocation(line: 690, column: 21, scope: !1677)
!1679 = !DILocation(line: 690, column: 34, scope: !1677)
!1680 = !DILocation(line: 691, column: 7, scope: !1677)
!1681 = distinct !{!1681, !1680}
!1682 = !DILocation(line: 691, column: 60, scope: !1683)
!1683 = !DILexicalBlockFile(scope: !1684, file: !382, discriminator: 1)
!1684 = distinct !DILexicalBlock(scope: !1677, file: !382, line: 691, column: 10)
!1685 = !DILocation(line: 691, column: 74, scope: !1683)
!1686 = !DILocation(line: 691, column: 39, scope: !1683)
!1687 = !DILocation(line: 691, column: 12, scope: !1683)
!1688 = !DILocation(line: 691, column: 26, scope: !1683)
!1689 = !DILocation(line: 691, column: 37, scope: !1683)
!1690 = !DILocation(line: 691, column: 87, scope: !1683)
!1691 = distinct !{!1691, !1692}
!1692 = !DILocation(line: 691, column: 87, scope: !1684)
!1693 = !DILocalVariable(name: "__src", scope: !1694, file: !382, line: 691, type: !203)
!1694 = distinct !DILexicalBlock(scope: !1684, file: !382, line: 691, column: 90)
!1695 = !DILocation(line: 691, column: 101, scope: !1694)
!1696 = !DILocation(line: 691, column: 110, scope: !1697)
!1697 = !DILexicalBlockFile(scope: !1694, file: !382, discriminator: 2)
!1698 = !DILocation(line: 691, column: 124, scope: !1697)
!1699 = !DILocation(line: 691, column: 101, scope: !1697)
!1700 = !DILocation(line: 691, column: 159, scope: !1697)
!1701 = !DILocation(line: 691, column: 137, scope: !1697)
!1702 = !DILocation(line: 691, column: 26, scope: !1697)
!1703 = !DILocation(line: 691, column: 58, scope: !1697)
!1704 = !DILocation(line: 691, column: 72, scope: !1697)
!1705 = !DILocation(line: 691, column: 78, scope: !1697)
!1706 = !DILocation(line: 691, column: 33, scope: !1707)
!1707 = !DILexicalBlockFile(scope: !1697, file: !382, discriminator: 4)
!1708 = !DILocation(line: 691, column: 10, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !1697, file: !382, discriminator: 5)
!1710 = !DILocation(line: 691, column: 90, scope: !1697)
!1711 = !DILocation(line: 691, column: 103, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !1684, file: !382, discriminator: 3)
!1713 = !DILocation(line: 693, column: 4, scope: !1575)
!1714 = distinct !DISubprogram(name: "VmBackup_SetCurrentOp", scope: !26, file: !26, line: 193, type: !1715, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!282, !95, !135, !1717, !131}
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmBackupCallback", file: !26, line: 143, baseType: !1718)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64, align: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!282, !95}
!1721 = !DILocalVariable(name: "state", arg: 1, scope: !1714, file: !26, line: 193, type: !95)
!1722 = !DILocation(line: 193, column: 38, scope: !1714)
!1723 = !DILocalVariable(name: "op", arg: 2, scope: !1714, file: !26, line: 194, type: !135)
!1724 = !DILocation(line: 194, column: 35, scope: !1714)
!1725 = !DILocalVariable(name: "callback", arg: 3, scope: !1714, file: !26, line: 195, type: !1717)
!1726 = !DILocation(line: 195, column: 40, scope: !1714)
!1727 = !DILocalVariable(name: "currentOpName", arg: 4, scope: !1714, file: !26, line: 196, type: !131)
!1728 = !DILocation(line: 196, column: 35, scope: !1714)
!1729 = !DILocation(line: 202, column: 50, scope: !1714)
!1730 = !DILocation(line: 202, column: 57, scope: !1714)
!1731 = !DILocation(line: 202, column: 18, scope: !1714)
!1732 = !DILocation(line: 202, column: 4, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !1714, file: !26, discriminator: 1)
!1734 = !DILocation(line: 204, column: 23, scope: !1714)
!1735 = !DILocation(line: 204, column: 4, scope: !1714)
!1736 = !DILocation(line: 204, column: 11, scope: !1714)
!1737 = !DILocation(line: 204, column: 21, scope: !1714)
!1738 = !DILocation(line: 205, column: 22, scope: !1714)
!1739 = !DILocation(line: 205, column: 4, scope: !1714)
!1740 = !DILocation(line: 205, column: 11, scope: !1714)
!1741 = !DILocation(line: 205, column: 20, scope: !1714)
!1742 = !DILocation(line: 206, column: 27, scope: !1714)
!1743 = !DILocation(line: 206, column: 4, scope: !1714)
!1744 = !DILocation(line: 206, column: 11, scope: !1714)
!1745 = !DILocation(line: 206, column: 25, scope: !1714)
!1746 = !DILocation(line: 207, column: 27, scope: !1714)
!1747 = !DILocation(line: 207, column: 36, scope: !1714)
!1748 = !DILocation(line: 207, column: 43, scope: !1714)
!1749 = !DILocation(line: 207, column: 46, scope: !1733)
!1750 = !DILocation(line: 207, column: 49, scope: !1733)
!1751 = !DILocation(line: 207, column: 43, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !1714, file: !26, discriminator: 2)
!1753 = !DILocation(line: 207, column: 26, scope: !1752)
!1754 = !DILocation(line: 207, column: 4, scope: !1752)
!1755 = !DILocation(line: 207, column: 11, scope: !1752)
!1756 = !DILocation(line: 207, column: 24, scope: !1752)
!1757 = !DILocation(line: 209, column: 52, scope: !1714)
!1758 = !DILocation(line: 209, column: 59, scope: !1714)
!1759 = !DILocation(line: 209, column: 20, scope: !1714)
!1760 = !DILocation(line: 209, column: 4, scope: !1733)
!1761 = !DILocation(line: 211, column: 12, scope: !1714)
!1762 = !DILocation(line: 211, column: 15, scope: !1714)
!1763 = !DILocation(line: 211, column: 11, scope: !1714)
!1764 = !DILocation(line: 211, column: 4, scope: !1714)
!1765 = distinct !DISubprogram(name: "VmBackupDoAbort", scope: !382, file: !382, line: 439, type: !251, isLocal: true, isDefinition: true, scopeLine: 440, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!1766 = !DILocation(line: 441, column: 4, scope: !1765)
!1767 = !DILocation(line: 443, column: 8, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1765, file: !382, line: 443, column: 8)
!1769 = !DILocation(line: 443, column: 22, scope: !1768)
!1770 = !DILocation(line: 443, column: 35, scope: !1768)
!1771 = !DILocation(line: 443, column: 67, scope: !1768)
!1772 = !DILocation(line: 444, column: 8, scope: !1768)
!1773 = !DILocation(line: 444, column: 22, scope: !1768)
!1774 = !DILocation(line: 444, column: 35, scope: !1768)
!1775 = !DILocation(line: 443, column: 8, scope: !1776)
!1776 = !DILexicalBlockFile(scope: !1765, file: !382, discriminator: 1)
!1777 = !DILocalVariable(name: "eventMsg", scope: !1778, file: !382, line: 445, type: !131)
!1778 = distinct !DILexicalBlock(scope: !1768, file: !382, line: 444, column: 66)
!1779 = !DILocation(line: 445, column: 19, scope: !1778)
!1780 = !DILocation(line: 447, column: 53, scope: !1778)
!1781 = !DILocation(line: 447, column: 67, scope: !1778)
!1782 = !DILocation(line: 447, column: 21, scope: !1778)
!1783 = !DILocation(line: 447, column: 7, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1778, file: !382, discriminator: 1)
!1785 = !DILocation(line: 448, column: 11, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1778, file: !382, line: 448, column: 11)
!1787 = !DILocation(line: 448, column: 25, scope: !1786)
!1788 = !DILocation(line: 448, column: 35, scope: !1786)
!1789 = !DILocation(line: 448, column: 11, scope: !1778)
!1790 = !DILocation(line: 449, column: 26, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1786, file: !382, line: 448, column: 43)
!1792 = !DILocation(line: 449, column: 40, scope: !1791)
!1793 = !DILocation(line: 449, column: 10, scope: !1791)
!1794 = !DILocation(line: 450, column: 27, scope: !1791)
!1795 = !DILocation(line: 450, column: 41, scope: !1791)
!1796 = !DILocation(line: 450, column: 10, scope: !1791)
!1797 = !DILocation(line: 451, column: 10, scope: !1791)
!1798 = !DILocation(line: 451, column: 24, scope: !1791)
!1799 = !DILocation(line: 451, column: 34, scope: !1791)
!1800 = !DILocation(line: 452, column: 7, scope: !1791)
!1801 = !DILocation(line: 453, column: 55, scope: !1778)
!1802 = !DILocation(line: 453, column: 69, scope: !1778)
!1803 = !DILocation(line: 453, column: 23, scope: !1778)
!1804 = !DILocation(line: 453, column: 7, scope: !1784)
!1805 = !DILocation(line: 457, column: 11, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1778, file: !382, line: 457, column: 11)
!1807 = !DILocation(line: 457, column: 25, scope: !1806)
!1808 = !DILocation(line: 457, column: 38, scope: !1806)
!1809 = !DILocation(line: 457, column: 11, scope: !1778)
!1810 = !DILocation(line: 458, column: 10, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1806, file: !382, line: 457, column: 70)
!1812 = !DILocation(line: 459, column: 15, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1811, file: !382, line: 459, column: 14)
!1814 = !DILocation(line: 459, column: 29, scope: !1813)
!1815 = !DILocation(line: 459, column: 39, scope: !1813)
!1816 = !DILocation(line: 459, column: 52, scope: !1813)
!1817 = !DILocation(line: 460, column: 39, scope: !1813)
!1818 = !DILocation(line: 460, column: 53, scope: !1813)
!1819 = !DILocation(line: 460, column: 63, scope: !1813)
!1820 = !DILocation(line: 459, column: 14, scope: !1811)
!1821 = !DILocation(line: 461, column: 13, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1813, file: !382, line: 460, column: 76)
!1823 = !DILocation(line: 462, column: 22, scope: !1822)
!1824 = !DILocation(line: 463, column: 10, scope: !1822)
!1825 = !DILocation(line: 464, column: 7, scope: !1811)
!1826 = !DILocation(line: 469, column: 26, scope: !1778)
!1827 = !DILocation(line: 467, column: 7, scope: !1778)
!1828 = !DILocation(line: 472, column: 11, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1778, file: !382, line: 472, column: 11)
!1830 = !DILocation(line: 472, column: 11, scope: !1778)
!1831 = !DILocation(line: 473, column: 10, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1829, file: !382, line: 472, column: 30)
!1833 = !DILocation(line: 474, column: 7, scope: !1832)
!1834 = !DILocation(line: 475, column: 4, scope: !1778)
!1835 = !DILocation(line: 476, column: 1, scope: !1765)
!1836 = distinct !DISubprogram(name: "VmBackup_Cancel", scope: !26, file: !26, line: 241, type: !1837, isLocal: true, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{null, !135}
!1839 = !DILocalVariable(name: "op", arg: 1, scope: !1836, file: !26, line: 241, type: !135)
!1840 = !DILocation(line: 241, column: 29, scope: !1836)
!1841 = !DILocation(line: 244, column: 4, scope: !1836)
!1842 = !DILocation(line: 244, column: 8, scope: !1836)
!1843 = !DILocation(line: 244, column: 17, scope: !1836)
!1844 = !DILocation(line: 245, column: 1, scope: !1836)
!1845 = distinct !DISubprogram(name: "VmBackup_Release", scope: !26, file: !26, line: 258, type: !1837, isLocal: true, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!1846 = !DILocalVariable(name: "op", arg: 1, scope: !1845, file: !26, line: 258, type: !135)
!1847 = !DILocation(line: 258, column: 30, scope: !1845)
!1848 = !DILocation(line: 260, column: 8, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1845, file: !26, line: 260, column: 8)
!1850 = !DILocation(line: 260, column: 11, scope: !1849)
!1851 = !DILocation(line: 260, column: 8, scope: !1845)
!1852 = !DILocation(line: 262, column: 7, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1849, file: !26, line: 260, column: 19)
!1854 = !DILocation(line: 262, column: 11, scope: !1853)
!1855 = !DILocation(line: 262, column: 21, scope: !1853)
!1856 = !DILocation(line: 263, column: 4, scope: !1853)
!1857 = !DILocation(line: 264, column: 1, scope: !1845)
!1858 = distinct !DISubprogram(name: "VmBackupOnError", scope: !382, file: !382, line: 396, type: !1859, isLocal: true, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!75}
!1861 = !DILocation(line: 398, column: 12, scope: !1858)
!1862 = !DILocation(line: 398, column: 26, scope: !1858)
!1863 = !DILocation(line: 398, column: 4, scope: !1858)
!1864 = !DILocation(line: 402, column: 12, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !382, line: 402, column: 11)
!1866 = distinct !DILexicalBlock(scope: !1858, file: !382, line: 398, column: 40)
!1867 = !DILocation(line: 402, column: 11, scope: !1866)
!1868 = !DILocation(line: 403, column: 10, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1865, file: !382, line: 402, column: 63)
!1870 = !DILocation(line: 403, column: 24, scope: !1869)
!1871 = !DILocation(line: 403, column: 37, scope: !1869)
!1872 = !DILocation(line: 404, column: 7, scope: !1869)
!1873 = !DILocation(line: 405, column: 7, scope: !1866)
!1874 = !DILocation(line: 411, column: 7, scope: !1866)
!1875 = !DILocation(line: 411, column: 21, scope: !1866)
!1876 = !DILocation(line: 411, column: 32, scope: !1866)
!1877 = !DILocation(line: 412, column: 7, scope: !1866)
!1878 = !DILocation(line: 412, column: 21, scope: !1866)
!1879 = !DILocation(line: 412, column: 34, scope: !1866)
!1880 = !DILocation(line: 413, column: 29, scope: !1866)
!1881 = !DILocation(line: 413, column: 43, scope: !1866)
!1882 = !DILocation(line: 413, column: 48, scope: !1866)
!1883 = !DILocation(line: 415, column: 29, scope: !1866)
!1884 = !DILocation(line: 415, column: 43, scope: !1866)
!1885 = !DILocation(line: 413, column: 7, scope: !1866)
!1886 = !DILocation(line: 417, column: 7, scope: !1866)
!1887 = !DILocation(line: 422, column: 7, scope: !1866)
!1888 = !DILocation(line: 422, column: 21, scope: !1866)
!1889 = !DILocation(line: 422, column: 34, scope: !1866)
!1890 = !DILocation(line: 423, column: 7, scope: !1866)
!1891 = !DILocation(line: 426, column: 7, scope: !1866)
!1892 = distinct !{!1892, !1891}
!1893 = !DILocation(line: 426, column: 114, scope: !1894)
!1894 = !DILexicalBlockFile(scope: !1895, file: !382, discriminator: 1)
!1895 = distinct !DILexicalBlock(scope: !1866, file: !382, line: 426, column: 10)
!1896 = !DILocation(line: 426, column: 128, scope: !1894)
!1897 = !DILocation(line: 426, column: 93, scope: !1894)
!1898 = !DILocation(line: 426, column: 12, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !1894, file: !382, discriminator: 3)
!1900 = !DILocation(line: 426, column: 144, scope: !1894)
!1901 = !DILocation(line: 426, column: 144, scope: !1902)
!1902 = !DILexicalBlockFile(scope: !1903, file: !382, discriminator: 2)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !382, line: 426, column: 144)
!1904 = distinct !DILexicalBlock(scope: !1895, file: !382, line: 426, column: 144)
!1905 = distinct !{!1905, !1906}
!1906 = !DILocation(line: 426, column: 144, scope: !1895)
!1907 = !DILocation(line: 428, column: 4, scope: !1866)
!1908 = !DILocation(line: 430, column: 12, scope: !1858)
!1909 = !DILocation(line: 430, column: 26, scope: !1858)
!1910 = !DILocation(line: 430, column: 39, scope: !1858)
!1911 = !DILocation(line: 430, column: 4, scope: !1858)
!1912 = distinct !DISubprogram(name: "VmBackupFinalize", scope: !382, file: !382, line: 292, type: !251, isLocal: true, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!1913 = !DILocation(line: 294, column: 4, scope: !1912)
!1914 = !DILocation(line: 297, column: 8, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1912, file: !382, line: 297, column: 8)
!1916 = !DILocation(line: 297, column: 22, scope: !1915)
!1917 = !DILocation(line: 297, column: 33, scope: !1915)
!1918 = !DILocation(line: 297, column: 8, scope: !1912)
!1919 = !DILocation(line: 298, column: 24, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1915, file: !382, line: 297, column: 41)
!1921 = !DILocation(line: 298, column: 38, scope: !1920)
!1922 = !DILocation(line: 298, column: 7, scope: !1920)
!1923 = !DILocation(line: 299, column: 22, scope: !1920)
!1924 = !DILocation(line: 299, column: 36, scope: !1920)
!1925 = !DILocation(line: 299, column: 7, scope: !1920)
!1926 = !DILocation(line: 300, column: 4, scope: !1920)
!1927 = !DILocation(line: 302, column: 50, scope: !1912)
!1928 = !DILocation(line: 302, column: 64, scope: !1912)
!1929 = !DILocation(line: 302, column: 18, scope: !1912)
!1930 = !DILocation(line: 302, column: 4, scope: !1931)
!1931 = !DILexicalBlockFile(scope: !1912, file: !382, discriminator: 1)
!1932 = !DILocation(line: 303, column: 8, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1912, file: !382, line: 303, column: 8)
!1934 = !DILocation(line: 303, column: 22, scope: !1933)
!1935 = !DILocation(line: 303, column: 32, scope: !1933)
!1936 = !DILocation(line: 303, column: 8, scope: !1912)
!1937 = !DILocation(line: 304, column: 23, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1933, file: !382, line: 303, column: 40)
!1939 = !DILocation(line: 304, column: 37, scope: !1938)
!1940 = !DILocation(line: 304, column: 7, scope: !1938)
!1941 = !DILocation(line: 305, column: 24, scope: !1938)
!1942 = !DILocation(line: 305, column: 38, scope: !1938)
!1943 = !DILocation(line: 305, column: 7, scope: !1938)
!1944 = !DILocation(line: 306, column: 4, scope: !1938)
!1945 = !DILocation(line: 307, column: 52, scope: !1912)
!1946 = !DILocation(line: 307, column: 66, scope: !1912)
!1947 = !DILocation(line: 307, column: 20, scope: !1912)
!1948 = !DILocation(line: 307, column: 4, scope: !1931)
!1949 = !DILocation(line: 309, column: 4, scope: !1912)
!1950 = !DILocation(line: 311, column: 8, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1912, file: !382, line: 311, column: 8)
!1952 = !DILocation(line: 311, column: 22, scope: !1951)
!1953 = !DILocation(line: 311, column: 33, scope: !1951)
!1954 = !DILocation(line: 311, column: 8, scope: !1912)
!1955 = !DILocation(line: 312, column: 24, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1951, file: !382, line: 311, column: 41)
!1957 = !DILocation(line: 312, column: 38, scope: !1956)
!1958 = !DILocation(line: 312, column: 7, scope: !1956)
!1959 = !DILocation(line: 313, column: 22, scope: !1956)
!1960 = !DILocation(line: 313, column: 36, scope: !1956)
!1961 = !DILocation(line: 313, column: 7, scope: !1956)
!1962 = !DILocation(line: 314, column: 4, scope: !1956)
!1963 = !DILocation(line: 316, column: 8, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1912, file: !382, line: 316, column: 8)
!1965 = !DILocation(line: 316, column: 22, scope: !1964)
!1966 = !DILocation(line: 316, column: 32, scope: !1964)
!1967 = !DILocation(line: 316, column: 8, scope: !1912)
!1968 = !DILocation(line: 317, column: 24, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1964, file: !382, line: 316, column: 40)
!1970 = !DILocation(line: 317, column: 38, scope: !1969)
!1971 = !DILocation(line: 317, column: 7, scope: !1969)
!1972 = !DILocation(line: 318, column: 22, scope: !1969)
!1973 = !DILocation(line: 318, column: 36, scope: !1969)
!1974 = !DILocation(line: 318, column: 7, scope: !1969)
!1975 = !DILocation(line: 319, column: 4, scope: !1969)
!1976 = !DILocation(line: 321, column: 4, scope: !1912)
!1977 = !DILocation(line: 321, column: 18, scope: !1912)
!1978 = !DILocation(line: 321, column: 28, scope: !1912)
!1979 = !DILocation(line: 321, column: 36, scope: !1912)
!1980 = !DILocation(line: 321, column: 50, scope: !1912)
!1981 = !DILocation(line: 322, column: 8, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1912, file: !382, line: 322, column: 8)
!1983 = !DILocation(line: 322, column: 22, scope: !1982)
!1984 = !DILocation(line: 322, column: 32, scope: !1982)
!1985 = !DILocation(line: 322, column: 8, scope: !1912)
!1986 = !DILocation(line: 323, column: 7, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1982, file: !382, line: 322, column: 40)
!1988 = !DILocation(line: 323, column: 21, scope: !1987)
!1989 = !DILocation(line: 323, column: 32, scope: !1987)
!1990 = !DILocation(line: 323, column: 40, scope: !1987)
!1991 = !DILocation(line: 323, column: 54, scope: !1987)
!1992 = !DILocation(line: 324, column: 4, scope: !1987)
!1993 = !DILocation(line: 325, column: 25, scope: !1912)
!1994 = !DILocation(line: 325, column: 39, scope: !1912)
!1995 = !DILocation(line: 325, column: 4, scope: !1912)
!1996 = !DILocation(line: 326, column: 11, scope: !1912)
!1997 = !DILocation(line: 326, column: 25, scope: !1912)
!1998 = !DILocation(line: 326, column: 4, scope: !1912)
!1999 = !DILocation(line: 327, column: 11, scope: !1912)
!2000 = !DILocation(line: 327, column: 25, scope: !1912)
!2001 = !DILocation(line: 327, column: 4, scope: !1912)
!2002 = !DILocation(line: 328, column: 11, scope: !1912)
!2003 = !DILocation(line: 328, column: 25, scope: !1912)
!2004 = !DILocation(line: 328, column: 4, scope: !1912)
!2005 = !DILocation(line: 329, column: 11, scope: !1912)
!2006 = !DILocation(line: 329, column: 25, scope: !1912)
!2007 = !DILocation(line: 329, column: 4, scope: !1912)
!2008 = !DILocation(line: 330, column: 11, scope: !1912)
!2009 = !DILocation(line: 330, column: 25, scope: !1912)
!2010 = !DILocation(line: 330, column: 4, scope: !1912)
!2011 = !DILocation(line: 331, column: 11, scope: !1912)
!2012 = !DILocation(line: 331, column: 4, scope: !1912)
!2013 = !DILocation(line: 332, column: 17, scope: !1912)
!2014 = !DILocation(line: 333, column: 1, scope: !1912)
!2015 = distinct !DISubprogram(name: "VmBackupGetStateName", scope: !382, file: !382, line: 111, type: !2016, isLocal: true, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!131, !307}
!2018 = !DILocalVariable(name: "state", arg: 1, scope: !2015, file: !382, line: 111, type: !307)
!2019 = !DILocation(line: 111, column: 37, scope: !2015)
!2020 = !DILocation(line: 113, column: 12, scope: !2015)
!2021 = !DILocation(line: 113, column: 4, scope: !2015)
!2022 = !DILocation(line: 115, column: 7, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2015, file: !382, line: 113, column: 19)
!2024 = !DILocation(line: 118, column: 7, scope: !2023)
!2025 = !DILocation(line: 121, column: 7, scope: !2023)
!2026 = !DILocation(line: 124, column: 7, scope: !2023)
!2027 = !DILocation(line: 127, column: 7, scope: !2023)
!2028 = !DILocation(line: 130, column: 7, scope: !2023)
!2029 = !DILocation(line: 133, column: 7, scope: !2023)
!2030 = !DILocation(line: 136, column: 7, scope: !2023)
!2031 = !DILocation(line: 139, column: 7, scope: !2023)
!2032 = !DILocation(line: 142, column: 7, scope: !2023)
!2033 = !DILocation(line: 144, column: 1, scope: !2015)
!2034 = distinct !DISubprogram(name: "VmBackupPostProcessCurrentOp", scope: !382, file: !382, line: 509, type: !2035, isLocal: true, isDefinition: true, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!75, !2037}
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!2038 = !DILocalVariable(name: "pending", arg: 1, scope: !2034, file: !382, line: 509, type: !2037)
!2039 = !DILocation(line: 509, column: 40, scope: !2034)
!2040 = !DILocalVariable(name: "retVal", scope: !2034, file: !382, line: 511, type: !75)
!2041 = !DILocation(line: 511, column: 13, scope: !2034)
!2042 = !DILocalVariable(name: "status", scope: !2034, file: !382, line: 512, type: !143)
!2043 = !DILocation(line: 512, column: 21, scope: !2034)
!2044 = !DILocation(line: 514, column: 4, scope: !2034)
!2045 = !DILocation(line: 517, column: 5, scope: !2034)
!2046 = !DILocation(line: 517, column: 13, scope: !2034)
!2047 = !DILocation(line: 519, column: 50, scope: !2034)
!2048 = !DILocation(line: 519, column: 64, scope: !2034)
!2049 = !DILocation(line: 519, column: 18, scope: !2034)
!2050 = !DILocation(line: 519, column: 4, scope: !2051)
!2051 = !DILexicalBlockFile(scope: !2034, file: !382, discriminator: 1)
!2052 = !DILocation(line: 521, column: 8, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2034, file: !382, line: 521, column: 8)
!2054 = !DILocation(line: 521, column: 22, scope: !2053)
!2055 = !DILocation(line: 521, column: 32, scope: !2053)
!2056 = !DILocation(line: 521, column: 8, scope: !2034)
!2057 = !DILocation(line: 522, column: 80, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2053, file: !382, line: 521, column: 40)
!2059 = !DILocation(line: 522, column: 94, scope: !2058)
!2060 = !DILocation(line: 522, column: 7, scope: !2058)
!2061 = !DILocation(line: 523, column: 37, scope: !2058)
!2062 = !DILocation(line: 523, column: 51, scope: !2058)
!2063 = !DILocation(line: 523, column: 16, scope: !2058)
!2064 = !DILocation(line: 523, column: 14, scope: !2058)
!2065 = !DILocation(line: 524, column: 4, scope: !2058)
!2066 = !DILocation(line: 526, column: 12, scope: !2034)
!2067 = !DILocation(line: 526, column: 4, scope: !2034)
!2068 = !DILocation(line: 528, column: 8, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2034, file: !382, line: 526, column: 20)
!2070 = !DILocation(line: 528, column: 16, scope: !2069)
!2071 = !DILocation(line: 529, column: 7, scope: !2069)
!2072 = !DILocation(line: 532, column: 11, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2069, file: !382, line: 532, column: 11)
!2074 = !DILocation(line: 532, column: 25, scope: !2073)
!2075 = !DILocation(line: 532, column: 39, scope: !2073)
!2076 = !DILocation(line: 532, column: 11, scope: !2069)
!2077 = !DILocation(line: 533, column: 82, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2073, file: !382, line: 532, column: 47)
!2079 = !DILocation(line: 533, column: 96, scope: !2078)
!2080 = !DILocation(line: 533, column: 10, scope: !2078)
!2081 = !DILocation(line: 534, column: 27, scope: !2078)
!2082 = !DILocation(line: 534, column: 41, scope: !2078)
!2083 = !DILocation(line: 534, column: 10, scope: !2078)
!2084 = !DILocation(line: 535, column: 10, scope: !2078)
!2085 = !DILocation(line: 535, column: 24, scope: !2078)
!2086 = !DILocation(line: 535, column: 38, scope: !2078)
!2087 = !DILocation(line: 536, column: 7, scope: !2078)
!2088 = !DILocation(line: 537, column: 7, scope: !2069)
!2089 = !DILocation(line: 537, column: 21, scope: !2069)
!2090 = !DILocation(line: 537, column: 31, scope: !2069)
!2091 = !DILocation(line: 538, column: 7, scope: !2069)
!2092 = !DILocalVariable(name: "msg", scope: !2093, file: !382, line: 542, type: !295)
!2093 = distinct !DILexicalBlock(scope: !2069, file: !382, line: 541, column: 7)
!2094 = !DILocation(line: 542, column: 17, scope: !2093)
!2095 = !DILocation(line: 543, column: 14, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2093, file: !382, line: 543, column: 14)
!2097 = !DILocation(line: 543, column: 28, scope: !2096)
!2098 = !DILocation(line: 543, column: 37, scope: !2096)
!2099 = !DILocation(line: 543, column: 14, scope: !2093)
!2100 = !DILocation(line: 545, column: 35, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2096, file: !382, line: 543, column: 45)
!2102 = !DILocation(line: 545, column: 49, scope: !2101)
!2103 = !DILocation(line: 546, column: 35, scope: !2101)
!2104 = !DILocation(line: 546, column: 49, scope: !2101)
!2105 = !DILocation(line: 544, column: 19, scope: !2101)
!2106 = !DILocation(line: 544, column: 17, scope: !2101)
!2107 = !DILocation(line: 547, column: 10, scope: !2101)
!2108 = !DILocation(line: 549, column: 35, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2096, file: !382, line: 547, column: 17)
!2110 = !DILocation(line: 549, column: 49, scope: !2109)
!2111 = !DILocation(line: 548, column: 19, scope: !2109)
!2112 = !DILocation(line: 548, column: 17, scope: !2109)
!2113 = !DILocation(line: 553, column: 29, scope: !2093)
!2114 = !DILocation(line: 551, column: 10, scope: !2093)
!2115 = !DILocation(line: 554, column: 17, scope: !2093)
!2116 = !DILocation(line: 554, column: 10, scope: !2093)
!2117 = !DILocation(line: 556, column: 27, scope: !2093)
!2118 = !DILocation(line: 556, column: 41, scope: !2093)
!2119 = !DILocation(line: 556, column: 10, scope: !2093)
!2120 = !DILocation(line: 557, column: 10, scope: !2093)
!2121 = !DILocation(line: 557, column: 24, scope: !2093)
!2122 = !DILocation(line: 557, column: 34, scope: !2093)
!2123 = !DILocation(line: 558, column: 17, scope: !2093)
!2124 = !DILocation(line: 559, column: 10, scope: !2093)
!2125 = !DILocation(line: 567, column: 4, scope: !2034)
!2126 = !DILocation(line: 567, column: 11, scope: !2051)
!2127 = !DILocation(line: 567, column: 25, scope: !2051)
!2128 = !DILocation(line: 567, column: 34, scope: !2051)
!2129 = !DILocation(line: 567, column: 4, scope: !2051)
!2130 = !DILocalVariable(name: "cb", scope: !2131, file: !382, line: 568, type: !1717)
!2131 = distinct !DILexicalBlock(scope: !2034, file: !382, line: 567, column: 42)
!2132 = !DILocation(line: 568, column: 24, scope: !2131)
!2133 = !DILocation(line: 568, column: 29, scope: !2131)
!2134 = !DILocation(line: 568, column: 43, scope: !2131)
!2135 = !DILocation(line: 569, column: 7, scope: !2131)
!2136 = !DILocation(line: 569, column: 21, scope: !2131)
!2137 = !DILocation(line: 569, column: 30, scope: !2131)
!2138 = !DILocation(line: 575, column: 11, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2131, file: !382, line: 575, column: 11)
!2140 = !DILocation(line: 575, column: 14, scope: !2139)
!2141 = !DILocation(line: 575, column: 11, scope: !2131)
!2142 = !DILocation(line: 576, column: 14, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !382, line: 576, column: 14)
!2144 = distinct !DILexicalBlock(scope: !2139, file: !382, line: 575, column: 29)
!2145 = !DILocation(line: 576, column: 28, scope: !2143)
!2146 = !DILocation(line: 576, column: 38, scope: !2143)
!2147 = !DILocation(line: 576, column: 45, scope: !2143)
!2148 = !DILocation(line: 576, column: 48, scope: !2149)
!2149 = !DILexicalBlockFile(scope: !2143, file: !382, discriminator: 1)
!2150 = !DILocation(line: 576, column: 62, scope: !2149)
!2151 = !DILocation(line: 576, column: 14, scope: !2149)
!2152 = !DILocation(line: 577, column: 13, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2143, file: !382, line: 576, column: 76)
!2154 = !DILocation(line: 579, column: 7, scope: !2144)
!2155 = !DILocation(line: 580, column: 17, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2139, file: !382, line: 579, column: 14)
!2157 = !DILocation(line: 581, column: 10, scope: !2156)
!2158 = !DILocation(line: 567, column: 4, scope: !2159)
!2159 = !DILexicalBlockFile(scope: !2034, file: !382, discriminator: 2)
!2160 = distinct !{!2160, !2125}
!2161 = !DILocation(line: 567, column: 4, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !2034, file: !382, discriminator: 3)
!2163 = !DILocation(line: 586, column: 52, scope: !2034)
!2164 = !DILocation(line: 586, column: 66, scope: !2034)
!2165 = !DILocation(line: 586, column: 20, scope: !2034)
!2166 = !DILocation(line: 586, column: 4, scope: !2051)
!2167 = !DILocation(line: 587, column: 11, scope: !2034)
!2168 = !DILocation(line: 587, column: 4, scope: !2034)
!2169 = distinct !DISubprogram(name: "VmBackupEnableSyncWait", scope: !382, file: !382, line: 709, type: !2170, isLocal: true, isDefinition: true, scopeLine: 710, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!282}
!2172 = !DILocation(line: 711, column: 4, scope: !2169)
!2173 = !DILocation(line: 712, column: 26, scope: !2169)
!2174 = !DILocation(line: 712, column: 40, scope: !2169)
!2175 = !DILocation(line: 712, column: 45, scope: !2169)
!2176 = !DILocation(line: 714, column: 26, scope: !2169)
!2177 = !DILocation(line: 714, column: 40, scope: !2169)
!2178 = !DILocation(line: 712, column: 4, scope: !2169)
!2179 = !DILocation(line: 729, column: 4, scope: !2169)
!2180 = !DILocation(line: 729, column: 18, scope: !2169)
!2181 = !DILocation(line: 729, column: 31, scope: !2169)
!2182 = !DILocation(line: 730, column: 34, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2169, file: !382, line: 730, column: 8)
!2184 = !DILocation(line: 730, column: 48, scope: !2183)
!2185 = !DILocation(line: 731, column: 34, scope: !2183)
!2186 = !DILocation(line: 731, column: 48, scope: !2183)
!2187 = !DILocation(line: 731, column: 58, scope: !2183)
!2188 = !DILocation(line: 732, column: 34, scope: !2183)
!2189 = !DILocation(line: 730, column: 9, scope: !2183)
!2190 = !DILocation(line: 730, column: 8, scope: !2169)
!2191 = !DILocation(line: 734, column: 7, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2183, file: !382, line: 733, column: 40)
!2193 = !DILocation(line: 736, column: 29, scope: !2192)
!2194 = !DILocation(line: 736, column: 43, scope: !2192)
!2195 = !DILocation(line: 736, column: 48, scope: !2192)
!2196 = !DILocation(line: 738, column: 29, scope: !2192)
!2197 = !DILocation(line: 738, column: 43, scope: !2192)
!2198 = !DILocation(line: 736, column: 7, scope: !2192)
!2199 = !DILocation(line: 740, column: 7, scope: !2192)
!2200 = !DILocation(line: 743, column: 7, scope: !2192)
!2201 = !DILocation(line: 750, column: 4, scope: !2169)
!2202 = !DILocation(line: 752, column: 4, scope: !2169)
!2203 = !DILocation(line: 752, column: 18, scope: !2169)
!2204 = !DILocation(line: 752, column: 31, scope: !2169)
!2205 = !DILocation(line: 755, column: 4, scope: !2169)
!2206 = !DILocation(line: 756, column: 1, scope: !2169)
!2207 = distinct !DISubprogram(name: "VmBackupEnableSync", scope: !382, file: !382, line: 823, type: !2170, isLocal: true, isDefinition: true, scopeLine: 824, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!2208 = !DILocation(line: 825, column: 4, scope: !2207)
!2209 = !DILocation(line: 826, column: 8, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2207, file: !382, line: 826, column: 8)
!2211 = !DILocation(line: 826, column: 22, scope: !2210)
!2212 = !DILocation(line: 826, column: 35, scope: !2210)
!2213 = !DILocation(line: 826, column: 8, scope: !2207)
!2214 = !DILocation(line: 827, column: 29, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2210, file: !382, line: 826, column: 61)
!2216 = !DILocation(line: 827, column: 43, scope: !2215)
!2217 = !DILocation(line: 827, column: 48, scope: !2215)
!2218 = !DILocation(line: 829, column: 29, scope: !2215)
!2219 = !DILocation(line: 829, column: 43, scope: !2215)
!2220 = !DILocation(line: 827, column: 7, scope: !2215)
!2221 = !DILocation(line: 831, column: 7, scope: !2215)
!2222 = !DILocation(line: 834, column: 7, scope: !2215)
!2223 = !DILocation(line: 836, column: 15, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2210, file: !382, line: 836, column: 15)
!2225 = !DILocation(line: 836, column: 29, scope: !2224)
!2226 = !DILocation(line: 836, column: 42, scope: !2224)
!2227 = !DILocation(line: 836, column: 70, scope: !2224)
!2228 = !DILocation(line: 837, column: 15, scope: !2224)
!2229 = !DILocation(line: 837, column: 29, scope: !2224)
!2230 = !DILocation(line: 837, column: 42, scope: !2224)
!2231 = !DILocation(line: 836, column: 15, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !2210, file: !382, discriminator: 1)
!2233 = !DILocation(line: 839, column: 7, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2224, file: !382, line: 837, column: 71)
!2235 = !DILocation(line: 839, column: 21, scope: !2234)
!2236 = !DILocation(line: 839, column: 34, scope: !2234)
!2237 = !DILocation(line: 840, column: 4, scope: !2234)
!2238 = !DILocation(line: 844, column: 4, scope: !2207)
!2239 = !DILocation(line: 845, column: 1, scope: !2207)
!2240 = distinct !DISubprogram(name: "VmBackupEnableCompleteWait", scope: !382, file: !382, line: 767, type: !2170, isLocal: true, isDefinition: true, scopeLine: 768, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!2241 = !DILocalVariable(name: "ret", scope: !2240, file: !382, line: 769, type: !282)
!2242 = !DILocation(line: 769, column: 9, scope: !2240)
!2243 = !DILocation(line: 771, column: 4, scope: !2240)
!2244 = !DILocation(line: 773, column: 8, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2240, file: !382, line: 773, column: 8)
!2246 = !DILocation(line: 773, column: 22, scope: !2245)
!2247 = !DILocation(line: 773, column: 32, scope: !2245)
!2248 = !DILocation(line: 773, column: 8, scope: !2240)
!2249 = !DILocation(line: 774, column: 7, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2245, file: !382, line: 773, column: 40)
!2251 = !DILocation(line: 774, column: 21, scope: !2250)
!2252 = !DILocation(line: 774, column: 34, scope: !2250)
!2253 = !DILocation(line: 775, column: 7, scope: !2250)
!2254 = !DILocation(line: 778, column: 8, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2240, file: !382, line: 778, column: 8)
!2256 = !DILocation(line: 778, column: 22, scope: !2255)
!2257 = !DILocation(line: 778, column: 33, scope: !2255)
!2258 = !DILocation(line: 778, column: 8, scope: !2240)
!2259 = !DILocation(line: 779, column: 24, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2255, file: !382, line: 778, column: 41)
!2261 = !DILocation(line: 779, column: 38, scope: !2260)
!2262 = !DILocation(line: 779, column: 7, scope: !2260)
!2263 = !DILocation(line: 780, column: 22, scope: !2260)
!2264 = !DILocation(line: 780, column: 36, scope: !2260)
!2265 = !DILocation(line: 780, column: 7, scope: !2260)
!2266 = !DILocation(line: 783, column: 11, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2260, file: !382, line: 783, column: 11)
!2268 = !DILocation(line: 783, column: 25, scope: !2267)
!2269 = !DILocation(line: 783, column: 33, scope: !2267)
!2270 = !DILocation(line: 783, column: 11, scope: !2260)
!2271 = !DILocation(line: 784, column: 10, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2267, file: !382, line: 783, column: 46)
!2273 = !DILocation(line: 784, column: 24, scope: !2272)
!2274 = !DILocation(line: 784, column: 32, scope: !2272)
!2275 = !DILocation(line: 785, column: 7, scope: !2272)
!2276 = !DILocation(line: 787, column: 11, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2260, file: !382, line: 787, column: 11)
!2278 = !DILocation(line: 787, column: 25, scope: !2277)
!2279 = !DILocation(line: 787, column: 33, scope: !2277)
!2280 = !DILocation(line: 787, column: 11, scope: !2260)
!2281 = !DILocation(line: 788, column: 81, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2277, file: !382, line: 787, column: 39)
!2283 = !DILocation(line: 788, column: 95, scope: !2282)
!2284 = !DILocation(line: 788, column: 10, scope: !2282)
!2285 = !DILocation(line: 790, column: 42, scope: !2282)
!2286 = !DILocation(line: 790, column: 56, scope: !2282)
!2287 = !DILocation(line: 790, column: 13, scope: !2282)
!2288 = !DILocation(line: 789, column: 10, scope: !2282)
!2289 = !DILocation(line: 789, column: 24, scope: !2282)
!2290 = !DILocation(line: 789, column: 35, scope: !2282)
!2291 = !DILocation(line: 791, column: 10, scope: !2282)
!2292 = distinct !{!2292, !2291}
!2293 = !DILocalVariable(name: "__src", scope: !2294, file: !382, line: 791, type: !203)
!2294 = distinct !DILexicalBlock(scope: !2282, file: !382, line: 791, column: 13)
!2295 = !DILocation(line: 791, column: 24, scope: !2294)
!2296 = !DILocation(line: 791, column: 33, scope: !2297)
!2297 = !DILexicalBlockFile(scope: !2294, file: !382, discriminator: 1)
!2298 = !DILocation(line: 791, column: 47, scope: !2297)
!2299 = !DILocation(line: 791, column: 24, scope: !2297)
!2300 = !DILocation(line: 791, column: 82, scope: !2297)
!2301 = !DILocation(line: 791, column: 60, scope: !2297)
!2302 = !DILocation(line: 791, column: 29, scope: !2297)
!2303 = !DILocation(line: 791, column: 61, scope: !2297)
!2304 = !DILocation(line: 791, column: 75, scope: !2297)
!2305 = !DILocation(line: 791, column: 81, scope: !2297)
!2306 = !DILocation(line: 791, column: 36, scope: !2307)
!2307 = !DILexicalBlockFile(scope: !2297, file: !382, discriminator: 2)
!2308 = !DILocation(line: 791, column: 13, scope: !2309)
!2309 = !DILexicalBlockFile(scope: !2297, file: !382, discriminator: 3)
!2310 = !DILocation(line: 791, column: 93, scope: !2297)
!2311 = !DILocation(line: 796, column: 7, scope: !2282)
!2312 = !DILocation(line: 797, column: 4, scope: !2260)
!2313 = !DILocation(line: 799, column: 8, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2240, file: !382, line: 799, column: 8)
!2315 = !DILocation(line: 799, column: 22, scope: !2314)
!2316 = !DILocation(line: 799, column: 33, scope: !2314)
!2317 = !DILocation(line: 799, column: 39, scope: !2314)
!2318 = !DILocation(line: 800, column: 39, scope: !2314)
!2319 = !DILocation(line: 800, column: 53, scope: !2314)
!2320 = !DILocation(line: 800, column: 64, scope: !2314)
!2321 = !DILocation(line: 799, column: 8, scope: !2240)
!2322 = !DILocation(line: 802, column: 7, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2314, file: !382, line: 800, column: 77)
!2324 = !DILocation(line: 802, column: 21, scope: !2323)
!2325 = !DILocation(line: 802, column: 34, scope: !2323)
!2326 = !DILocation(line: 803, column: 4, scope: !2323)
!2327 = !DILocation(line: 804, column: 7, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2314, file: !382, line: 803, column: 11)
!2329 = !DILocation(line: 807, column: 11, scope: !2328)
!2330 = !DILocation(line: 800, column: 74, scope: !2331)
!2331 = !DILexicalBlockFile(scope: !2314, file: !382, discriminator: 1)
!2332 = !DILocation(line: 811, column: 11, scope: !2240)
!2333 = !DILocation(line: 811, column: 4, scope: !2240)
!2334 = distinct !DISubprogram(name: "VmBackup_QueryStatus", scope: !26, file: !26, line: 224, type: !2335, isLocal: true, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!143, !135}
!2337 = !DILocalVariable(name: "op", arg: 1, scope: !2334, file: !26, line: 224, type: !135)
!2338 = !DILocation(line: 224, column: 34, scope: !2334)
!2339 = !DILocation(line: 227, column: 11, scope: !2334)
!2340 = !DILocation(line: 227, column: 15, scope: !2334)
!2341 = !DILocation(line: 227, column: 23, scope: !2334)
!2342 = !DILocation(line: 227, column: 4, scope: !2334)
!2343 = distinct !DISubprogram(name: "ToolsCorePool_SubmitTask", scope: !316, file: !316, line: 126, type: !2344, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!165, !100, !315, !79, !2346}
!2346 = !DIDerivedType(tag: DW_TAG_typedef, name: "GDestroyNotify", file: !76, line: 87, baseType: !214)
!2347 = !DILocalVariable(name: "ctx", arg: 1, scope: !2343, file: !316, line: 126, type: !100)
!2348 = !DILocation(line: 126, column: 39, scope: !2343)
!2349 = !DILocalVariable(name: "cb", arg: 2, scope: !2343, file: !316, line: 127, type: !315)
!2350 = !DILocation(line: 127, column: 42, scope: !2343)
!2351 = !DILocalVariable(name: "data", arg: 3, scope: !2343, file: !316, line: 128, type: !79)
!2352 = !DILocation(line: 128, column: 35, scope: !2343)
!2353 = !DILocalVariable(name: "dtor", arg: 4, scope: !2343, file: !316, line: 129, type: !2346)
!2354 = !DILocation(line: 129, column: 41, scope: !2343)
!2355 = !DILocalVariable(name: "pool", scope: !2343, file: !316, line: 131, type: !2356)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64, align: 64)
!2357 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCorePool", file: !316, line: 77, baseType: !2358)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsCorePool", file: !316, line: 66, size: 192, align: 64, elements: !2359)
!2359 = !{!2360, !2362, !2366}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "submit", scope: !2358, file: !316, line: 67, baseType: !2361, size: 64, align: 64)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64, align: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !2358, file: !316, line: 71, baseType: !2363, size: 64, align: 64, offset: 64)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64, align: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{null, !165}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2358, file: !316, line: 72, baseType: !2367, size: 64, align: 64, offset: 128)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64, align: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!75, !100, !315, !315, !79, !2346}
!2370 = !DILocation(line: 131, column: 19, scope: !2343)
!2371 = !DILocation(line: 131, column: 48, scope: !2343)
!2372 = !DILocation(line: 131, column: 26, scope: !2343)
!2373 = !DILocation(line: 132, column: 8, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2343, file: !316, line: 132, column: 8)
!2375 = !DILocation(line: 132, column: 13, scope: !2374)
!2376 = !DILocation(line: 132, column: 8, scope: !2343)
!2377 = !DILocation(line: 133, column: 14, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2374, file: !316, line: 132, column: 21)
!2379 = !DILocation(line: 133, column: 20, scope: !2378)
!2380 = !DILocation(line: 133, column: 27, scope: !2378)
!2381 = !DILocation(line: 133, column: 32, scope: !2378)
!2382 = !DILocation(line: 133, column: 36, scope: !2378)
!2383 = !DILocation(line: 133, column: 42, scope: !2378)
!2384 = !DILocation(line: 133, column: 7, scope: !2378)
!2385 = !DILocation(line: 135, column: 4, scope: !2343)
!2386 = !DILocation(line: 136, column: 1, scope: !2343)
!2387 = distinct !DISubprogram(name: "ToolsCorePool_GetPool", scope: !316, file: !316, line: 94, type: !2388, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!2356, !100}
!2390 = !DILocalVariable(name: "ctx", arg: 1, scope: !2387, file: !316, line: 94, type: !100)
!2391 = !DILocation(line: 94, column: 36, scope: !2387)
!2392 = !DILocalVariable(name: "pool", scope: !2387, file: !316, line: 96, type: !2356)
!2393 = !DILocation(line: 96, column: 19, scope: !2387)
!2394 = !DILocation(line: 97, column: 17, scope: !2387)
!2395 = !DILocation(line: 97, column: 22, scope: !2387)
!2396 = !DILocation(line: 97, column: 4, scope: !2387)
!2397 = !DILocation(line: 98, column: 11, scope: !2387)
!2398 = !DILocation(line: 98, column: 4, scope: !2387)
!2399 = distinct !DISubprogram(name: "ToolsCore_LogState", scope: !16, file: !16, line: 101, type: !2400, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !410)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{null, !165, !131, null}
!2402 = !DILocalVariable(name: "level", arg: 1, scope: !2399, file: !16, line: 101, type: !165)
!2403 = !DILocation(line: 101, column: 26, scope: !2399)
!2404 = !DILocalVariable(name: "fmt", arg: 2, scope: !2399, file: !16, line: 102, type: !131)
!2405 = !DILocation(line: 102, column: 32, scope: !2399)
!2406 = !DILocalVariable(name: "indented", scope: !2399, file: !16, line: 105, type: !295)
!2407 = !DILocation(line: 105, column: 11, scope: !2399)
!2408 = !DILocation(line: 105, column: 51, scope: !2399)
!2409 = !DILocation(line: 105, column: 49, scope: !2399)
!2410 = !DILocation(line: 105, column: 62, scope: !2399)
!2411 = !DILocation(line: 105, column: 22, scope: !2399)
!2412 = !DILocalVariable(name: "args", scope: !2399, file: !16, line: 107, type: !2413)
!2413 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2414, line: 98, baseType: !2415)
!2414 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/open-vm-tools/line1587")
!2415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2414, line: 40, baseType: !2416)
!2416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 107, baseType: !2417)
!2417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2418, size: 192, align: 64, elements: !2424)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 107, size: 192, align: 64, elements: !2419)
!2419 = !{!2420, !2421, !2422, !2423}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2418, file: !1, line: 107, baseType: !166, size: 32, align: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2418, file: !1, line: 107, baseType: !166, size: 32, align: 32, offset: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2418, file: !1, line: 107, baseType: !69, size: 64, align: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2418, file: !1, line: 107, baseType: !69, size: 64, align: 64, offset: 128)
!2424 = !{!2425}
!2425 = !DISubrange(count: 1)
!2426 = !DILocation(line: 107, column: 12, scope: !2399)
!2427 = !DILocation(line: 108, column: 3, scope: !2399)
!2428 = !DILocation(line: 109, column: 38, scope: !2399)
!2429 = !DILocation(line: 109, column: 48, scope: !2399)
!2430 = !DILocation(line: 109, column: 4, scope: !2399)
!2431 = !DILocation(line: 110, column: 3, scope: !2399)
!2432 = !DILocation(line: 112, column: 11, scope: !2399)
!2433 = !DILocation(line: 112, column: 4, scope: !2399)
!2434 = !DILocation(line: 113, column: 1, scope: !2399)
