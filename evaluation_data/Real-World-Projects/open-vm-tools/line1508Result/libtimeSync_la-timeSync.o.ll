; ModuleID = './libtimeSync_la-timeSync.o.i'
source_filename = "./libtimeSync_la-timeSync.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ToolsPluginData = type { i8*, %struct._GArray*, i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)*, i8* }
%struct._GArray = type { i8*, i32 }
%struct.ToolsAppCtx = type { i32, i8*, i32, i32, %struct._GMainLoop*, %struct._RpcChannel*, %struct._GKeyFile*, i32, i32, i8**, i8* }
%struct._GMainLoop = type opaque
%struct._RpcChannel = type opaque
%struct._GKeyFile = type opaque
%struct.TimeSyncData = type { i32, i32, i32, i32, i32, i32, %struct._GSource*, i32, i32, %struct._GSource*, %struct.ToolsAppCtx* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%union.Backdoor_proto = type { %struct.anon }
%struct.anon = type { %union.anon, i64, %union.anon.2, %union.anon.5, %union.anon.8, %union.anon.11 }
%union.anon = type { i64 }
%union.anon.2 = type { i64 }
%union.anon.5 = type { i64 }
%union.anon.8 = type { i64 }
%union.anon.11 = type { i64 }
%struct.anon.3 = type { i16, i16 }
%struct.RpcChannelCallback = type { i8*, i32 (%struct.RpcInData*)*, i8*, i8*, i8*, i64 }
%struct.RpcInData = type { i8*, i8*, i64, i8*, i64, i32, i8*, i8* }
%struct.ToolsPluginSignalCb = type { i8*, i8*, i8* }
%struct.ToolsAppReg = type { i32, %struct._GArray* }
%struct.anon.14 = type { %union.anon.15, %union.anon.18, %union.anon.21, %union.anon.24, %union.anon.27, %union.anon.30 }
%union.anon.15 = type { i64 }
%union.anon.18 = type { i64 }
%union.anon.21 = type { i64 }
%union.anon.24 = type { i64 }
%union.anon.27 = type { i64 }
%union.anon.30 = type { i64 }

@vm_version = constant [20 x i8] c"version=10.3.0.5330\00", section ".modinfo", align 16
@gTimeSyncToolsStartupAllowBackward = global i32 0, align 4
@ToolsOnLoad.regData = internal global %struct.ToolsPluginData { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct._GArray* null, i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)* null, i8* null }, align 8
@.str = private unnamed_addr constant [9 x i8] c"timeSync\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Time_Synchronize\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"tcs_set_option\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"tcs_shutdown\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Starting slew.\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Stopping slew.\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Unable to tokenize TimeSync RPC data\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Unable to sync time\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [113 x i8] c"Synchronizing time: syncType %d, slewCorrection %d, allowBackwardSync %d guestResync %d, guestResyncTimeout %d.\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Guest resync: stepping time.\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Guest resync operation failed.\0A\00", align 1
@.str.13 = private unnamed_addr constant [71 x i8] c"Guest resync is in progress, ignoring one-time synchronization event.\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"One time synchronization: stepping time.\0A\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"One time synchronization: correction not needed.\0A\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"Periodic synchronization: stepping time.\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"Periodic synchronization: slewing time.\0A\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"Unable to retrieve the guest OS time: %s.\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"Using BDOOR_CMD_GETTIMEFULL_WITH_LAG\0A\00", align 1
@.str.20 = private unnamed_addr constant [96 x i8] c"BDOOR_CMD_GETTIMEFULL_WITH_LAG not supported by current host, attempting BDOOR_CMD_GETTIMEFULL\0A\00", align 1
@.str.21 = private unnamed_addr constant [83 x i8] c"BDOOR_CMD_GETTIMEFULL not supported by current host, attempting BDOOR_CMD_GETTIME\0A\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"Invalid host OS time: %ld secs, %ld usecs.\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"Guest resync timeout handler: stepping time.\0A\00", align 1
@TimeSyncSlewTime.calibrationStart = internal global i64 0, align 8
@TimeSyncSlewTime.calibrationAdjustment = internal global i64 0, align 8
@.str.24 = private unnamed_addr constant [50 x i8] c"Adjustment too large (%ld), resetting PLL state.\0A\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"Slewing time: adjustment %ld\0A\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Starting PLL calibration.\0A\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"Activating PLL ppmEst=%ld (%ld)\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"PPM error too large: %ld (%ld) not activating PLL\0A\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"Calibrating error: adjustment %ld\0A\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"Updating PLL: adjustment %ld\0A\00", align 1
@TimeSyncSetOption.syncBeforeLoop = internal global i32 0, align 4
@.str.31 = private unnamed_addr constant [9 x i8] c"synctime\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"Unable to change time sync period.\0A\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"time.synchronize.tools.slewCorrection\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"Daemon: Setting slewCorrection, %d.\0A\00", align 1
@.str.36 = private unnamed_addr constant [41 x i8] c"time.synchronize.tools.percentCorrection\00", align 1
@.str.37 = private unnamed_addr constant [46 x i8] c"Daemon: Setting slewPercentCorrection to %s.\0A\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"synctime.period\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"time.synchronize.tools.startup.backward\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"time.synchronize.tools.startup\00", align 1
@TimeSyncSetOption.doneAlready = internal global i32 0, align 4
@.str.41 = private unnamed_addr constant [37 x i8] c"Unable to sync time during startup.\0A\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"time.synchronize.tools.enable\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"time.synchronize.guest.resync\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"guestResync = %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [38 x i8] c"time.synchronize.guest.resync.timeout\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"guestResyncTimeout = %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"Starting time sync loop.\0A\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"New sync period is %d sec.\0A\00", align 1
@.str.50 = private unnamed_addr constant [53 x i8] c"Unable to synchronize time when starting time loop.\0A\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"Unable to synchronize time.\0A\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"Stopping time sync loop.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @TimeSyncStepTime(%struct.TimeSyncData*, i64) #0 !dbg !235 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TimeSyncData*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %union.Backdoor_proto, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TimeSyncData* %0, %struct.TimeSyncData** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.TimeSyncData** %4, metadata !236, metadata !237), !dbg !238
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !239, metadata !237), !dbg !240
  call void @llvm.dbg.declare(metadata %union.Backdoor_proto* %6, metadata !241, metadata !237), !dbg !423
  call void @llvm.dbg.declare(metadata i64* %7, metadata !424, metadata !237), !dbg !425
  call void @llvm.dbg.declare(metadata i64* %8, metadata !426, metadata !237), !dbg !427
  %9 = load %struct.TimeSyncData*, %struct.TimeSyncData** %4, align 8, !dbg !428
  call void @TimeSyncSetSlewState(%struct.TimeSyncData* %9, i32 0), !dbg !429
  %10 = load i64, i64* %5, align 8, !dbg !430
  %11 = call signext i8 @TimeSync_AddToCurrentTime(i64 %10), !dbg !432
  %12 = icmp ne i8 %11, 0, !dbg !432
  br i1 %12, label %14, label %13, !dbg !433

; <label>:13:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !434
  br label %19, !dbg !434

; <label>:14:                                     ; preds = %2
  %15 = bitcast %union.Backdoor_proto* %6 to %struct.anon*, !dbg !436
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 2, !dbg !437
  %17 = bitcast %union.anon.2* %16 to %struct.anon.3*, !dbg !438
  %18 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %17, i32 0, i32 0, !dbg !439
  store i16 24, i16* %18, align 8, !dbg !440
  call void @Backdoor(%union.Backdoor_proto* %6), !dbg !441
  store i32 1, i32* %3, align 4, !dbg !442
  br label %19, !dbg !442

; <label>:19:                                     ; preds = %14, %13
  %20 = load i32, i32* %3, align 4, !dbg !443
  ret i32 %20, !dbg !443
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal void @TimeSyncSetSlewState(%struct.TimeSyncData*, i32) #0 !dbg !444 {
  %3 = alloca %struct.TimeSyncData*, align 8
  %4 = alloca i32, align 4
  store %struct.TimeSyncData* %0, %struct.TimeSyncData** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.TimeSyncData** %3, metadata !447, metadata !237), !dbg !448
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !449, metadata !237), !dbg !450
  %5 = load i32, i32* %4, align 4, !dbg !451
  %6 = load %struct.TimeSyncData*, %struct.TimeSyncData** %3, align 8, !dbg !453
  %7 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %6, i32 0, i32 0, !dbg !454
  %8 = load i32, i32* %7, align 8, !dbg !454
  %9 = icmp ne i32 %5, %8, !dbg !455
  br i1 %9, label %10, label %22, !dbg !456

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %4, align 4, !dbg !457
  %12 = icmp ne i32 %11, 0, !dbg !457
  %13 = select i1 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), !dbg !457
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* %13), !dbg !459
  %14 = load i32, i32* %4, align 4, !dbg !460
  %15 = icmp ne i32 %14, 0, !dbg !460
  br i1 %15, label %18, label %16, !dbg !462

; <label>:16:                                     ; preds = %10
  %17 = load %struct.TimeSyncData*, %struct.TimeSyncData** %3, align 8, !dbg !463
  call void @TimeSyncResetSlew(%struct.TimeSyncData* %17), !dbg !465
  br label %18, !dbg !466

; <label>:18:                                     ; preds = %16, %10
  %19 = load i32, i32* %4, align 4, !dbg !467
  %20 = load %struct.TimeSyncData*, %struct.TimeSyncData** %3, align 8, !dbg !468
  %21 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %20, i32 0, i32 0, !dbg !469
  store i32 %19, i32* %21, align 8, !dbg !470
  br label %22, !dbg !471

; <label>:22:                                     ; preds = %18, %2
  ret void, !dbg !472
}

declare signext i8 @TimeSync_AddToCurrentTime(i64) #2

declare void @Backdoor(%union.Backdoor_proto*) #2

; Function Attrs: nounwind uwtable
define %struct.ToolsPluginData* @ToolsOnLoad(%struct.ToolsAppCtx*) #0 !dbg !67 {
  %2 = alloca %struct.ToolsAppCtx*, align 8
  %3 = alloca %struct.TimeSyncData*, align 8
  %4 = alloca [1 x %struct.RpcChannelCallback], align 16
  %5 = alloca [2 x %struct.ToolsPluginSignalCb], align 16
  %6 = alloca [2 x %struct.ToolsAppReg], align 16
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %2, metadata !473, metadata !237), !dbg !474
  call void @llvm.dbg.declare(metadata %struct.TimeSyncData** %3, metadata !475, metadata !237), !dbg !476
  %7 = call noalias i8* @g_malloc(i64 56), !dbg !477
  %8 = bitcast i8* %7 to %struct.TimeSyncData*, !dbg !477
  store %struct.TimeSyncData* %8, %struct.TimeSyncData** %3, align 8, !dbg !476
  call void @llvm.dbg.declare(metadata [1 x %struct.RpcChannelCallback]* %4, metadata !478, metadata !237), !dbg !507
  %9 = getelementptr inbounds [1 x %struct.RpcChannelCallback], [1 x %struct.RpcChannelCallback]* %4, i64 0, i64 0, !dbg !508
  %10 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %9, i32 0, i32 0, !dbg !509
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8** %10, align 16, !dbg !509
  %11 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %9, i32 0, i32 1, !dbg !509
  store i32 (%struct.RpcInData*)* @TimeSyncTcloHandler, i32 (%struct.RpcInData*)** %11, align 8, !dbg !509
  %12 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %9, i32 0, i32 2, !dbg !509
  %13 = load %struct.TimeSyncData*, %struct.TimeSyncData** %3, align 8, !dbg !510
  %14 = bitcast %struct.TimeSyncData* %13 to i8*, !dbg !510
  store i8* %14, i8** %12, align 16, !dbg !509
  %15 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %9, i32 0, i32 3, !dbg !509
  store i8* null, i8** %15, align 8, !dbg !509
  %16 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %9, i32 0, i32 4, !dbg !509
  store i8* null, i8** %16, align 16, !dbg !509
  %17 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %9, i32 0, i32 5, !dbg !509
  store i64 0, i64* %17, align 8, !dbg !509
  call void @llvm.dbg.declare(metadata [2 x %struct.ToolsPluginSignalCb]* %5, metadata !511, metadata !237), !dbg !521
  %18 = bitcast [2 x %struct.ToolsPluginSignalCb]* %5 to i8*, !dbg !521
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 48, i32 16, i1 false), !dbg !521
  %19 = bitcast i8* %18 to [2 x %struct.ToolsPluginSignalCb]*, !dbg !521
  %20 = getelementptr [2 x %struct.ToolsPluginSignalCb], [2 x %struct.ToolsPluginSignalCb]* %19, i32 0, i32 0, !dbg !521
  %21 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %20, i32 0, i32 0, !dbg !521
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8** %21, !dbg !521
  %22 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %20, i32 0, i32 1, !dbg !521
  store i8* bitcast (i32 (i8*, %struct.ToolsAppCtx*, i8*, i8*, %struct.ToolsPluginData*)* @TimeSyncSetOption to i8*), i8** %22, !dbg !521
  %23 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %20, i32 0, i32 2, !dbg !521
  store i8* bitcast (%struct.ToolsPluginData* @ToolsOnLoad.regData to i8*), i8** %23, !dbg !521
  %24 = getelementptr [2 x %struct.ToolsPluginSignalCb], [2 x %struct.ToolsPluginSignalCb]* %19, i32 0, i32 1, !dbg !521
  %25 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %24, i32 0, i32 0, !dbg !521
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8** %25, !dbg !521
  %26 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %24, i32 0, i32 1, !dbg !521
  store i8* bitcast (void (i8*, %struct.ToolsAppCtx*, %struct.ToolsPluginData*)* @TimeSyncShutdown to i8*), i8** %26, !dbg !521
  %27 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %24, i32 0, i32 2, !dbg !521
  store i8* bitcast (%struct.ToolsPluginData* @ToolsOnLoad.regData to i8*), i8** %27, !dbg !521
  call void @llvm.dbg.declare(metadata [2 x %struct.ToolsAppReg]* %6, metadata !522, metadata !237), !dbg !529
  %28 = getelementptr inbounds [2 x %struct.ToolsAppReg], [2 x %struct.ToolsAppReg]* %6, i64 0, i64 0, !dbg !530
  %29 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %28, i32 0, i32 0, !dbg !531
  store i32 1, i32* %29, align 16, !dbg !531
  %30 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %28, i32 0, i32 1, !dbg !531
  %31 = getelementptr inbounds [1 x %struct.RpcChannelCallback], [1 x %struct.RpcChannelCallback]* %4, i32 0, i32 0, !dbg !532
  %32 = bitcast %struct.RpcChannelCallback* %31 to i8*, !dbg !532
  %33 = call %struct._GArray* @VMTools_WrapArray(i8* %32, i32 48, i32 1), !dbg !533
  store %struct._GArray* %33, %struct._GArray** %30, align 8, !dbg !531
  %34 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %28, i64 1, !dbg !530
  %35 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %34, i32 0, i32 0, !dbg !534
  store i32 2, i32* %35, align 16, !dbg !534
  %36 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %34, i32 0, i32 1, !dbg !534
  %37 = getelementptr inbounds [2 x %struct.ToolsPluginSignalCb], [2 x %struct.ToolsPluginSignalCb]* %5, i32 0, i32 0, !dbg !535
  %38 = bitcast %struct.ToolsPluginSignalCb* %37 to i8*, !dbg !535
  %39 = call %struct._GArray* @VMTools_WrapArray(i8* %38, i32 24, i32 2), !dbg !536
  store %struct._GArray* %39, %struct._GArray** %36, align 8, !dbg !534
  %40 = load %struct.TimeSyncData*, %struct.TimeSyncData** %3, align 8, !dbg !537
  %41 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %40, i32 0, i32 0, !dbg !538
  store i32 0, i32* %41, align 8, !dbg !539
  %42 = load %struct.TimeSyncData*, %struct.TimeSyncData** %3, align 8, !dbg !540
  %43 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %42, i32 0, i32 1, !dbg !541
  store i32 0, i32* %43, align 4, !dbg !542
  %44 = load %struct.TimeSyncData*, %struct.TimeSyncData** %3, align 8, !dbg !543
  %45 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %44, i32 0, i32 2, !dbg !544
  store i32 50, i32* %45, align 8, !dbg !545
  %46 = load %struct.TimeSyncData*, %struct.TimeSyncData** %3, align 8, !dbg !546
  %47 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %46, i32 0, i32 4, !dbg !547
  store i32 0, i32* %47, align 8, !dbg !548
  %48 = load %struct.TimeSyncData*, %struct.TimeSyncData** %3, align 8, !dbg !549
  %49 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %48, i32 0, i32 5, !dbg !550
  store i32 0, i32* %49, align 4, !dbg !551
  %50 = load %struct.TimeSyncData*, %struct.TimeSyncData** %3, align 8, !dbg !552
  %51 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %50, i32 0, i32 3, !dbg !553
  store i32 60, i32* %51, align 4, !dbg !554
  %52 = load %struct.TimeSyncData*, %struct.TimeSyncData** %3, align 8, !dbg !555
  %53 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %52, i32 0, i32 6, !dbg !556
  store %struct._GSource* null, %struct._GSource** %53, align 8, !dbg !557
  %54 = load %struct.TimeSyncData*, %struct.TimeSyncData** %3, align 8, !dbg !558
  %55 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %54, i32 0, i32 7, !dbg !559
  store i32 0, i32* %55, align 8, !dbg !560
  %56 = load %struct.TimeSyncData*, %struct.TimeSyncData** %3, align 8, !dbg !561
  %57 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %56, i32 0, i32 8, !dbg !562
  store i32 0, i32* %57, align 4, !dbg !563
  %58 = load %struct.TimeSyncData*, %struct.TimeSyncData** %3, align 8, !dbg !564
  %59 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %58, i32 0, i32 9, !dbg !565
  store %struct._GSource* null, %struct._GSource** %59, align 8, !dbg !566
  %60 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %2, align 8, !dbg !567
  %61 = load %struct.TimeSyncData*, %struct.TimeSyncData** %3, align 8, !dbg !568
  %62 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %61, i32 0, i32 10, !dbg !569
  store %struct.ToolsAppCtx* %60, %struct.ToolsAppCtx** %62, align 8, !dbg !570
  %63 = getelementptr inbounds [2 x %struct.ToolsAppReg], [2 x %struct.ToolsAppReg]* %6, i32 0, i32 0, !dbg !571
  %64 = bitcast %struct.ToolsAppReg* %63 to i8*, !dbg !571
  %65 = call %struct._GArray* @VMTools_WrapArray(i8* %64, i32 16, i32 2), !dbg !572
  store %struct._GArray* %65, %struct._GArray** getelementptr inbounds (%struct.ToolsPluginData, %struct.ToolsPluginData* @ToolsOnLoad.regData, i32 0, i32 1), align 8, !dbg !573
  %66 = load %struct.TimeSyncData*, %struct.TimeSyncData** %3, align 8, !dbg !574
  %67 = bitcast %struct.TimeSyncData* %66 to i8*, !dbg !574
  store i8* %67, i8** getelementptr inbounds (%struct.ToolsPluginData, %struct.ToolsPluginData* @ToolsOnLoad.regData, i32 0, i32 3), align 8, !dbg !575
  ret %struct.ToolsPluginData* @ToolsOnLoad.regData, !dbg !576
}

declare noalias i8* @g_malloc(i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @TimeSyncTcloHandler(%struct.RpcInData*) #0 !dbg !577 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.RpcInData*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TimeSyncData*, align 8
  store %struct.RpcInData* %0, %struct.RpcInData** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %3, metadata !578, metadata !237), !dbg !579
  call void @llvm.dbg.declare(metadata i8* %4, metadata !580, metadata !237), !dbg !582
  call void @llvm.dbg.declare(metadata i32* %5, metadata !583, metadata !237), !dbg !584
  call void @llvm.dbg.declare(metadata i32* %6, metadata !585, metadata !237), !dbg !586
  store i32 0, i32* %6, align 4, !dbg !586
  call void @llvm.dbg.declare(metadata %struct.TimeSyncData** %7, metadata !587, metadata !237), !dbg !588
  %8 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !589
  %9 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %8, i32 0, i32 7, !dbg !590
  %10 = load i8*, i8** %9, align 8, !dbg !590
  %11 = bitcast i8* %10 to %struct.TimeSyncData*, !dbg !589
  store %struct.TimeSyncData* %11, %struct.TimeSyncData** %7, align 8, !dbg !588
  %12 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !591
  %13 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %12, i32 0, i32 1, !dbg !593
  %14 = load i8*, i8** %13, align 8, !dbg !593
  %15 = call signext i8 @StrUtil_GetNextUintToken(i32* %5, i32* %6, i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)), !dbg !594
  %16 = icmp ne i8 %15, 0, !dbg !594
  br i1 %16, label %20, label %17, !dbg !595

; <label>:17:                                     ; preds = %1
  %18 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !596
  %19 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0), i32 0), !dbg !598
  store i32 %19, i32* %2, align 4, !dbg !599
  br label %40, !dbg !599

; <label>:20:                                     ; preds = %1
  %21 = load i32, i32* %5, align 4, !dbg !600
  %22 = icmp eq i32 %21, 1, !dbg !601
  %23 = zext i1 %22 to i32, !dbg !601
  %24 = trunc i32 %23 to i8, !dbg !600
  store i8 %24, i8* %4, align 1, !dbg !602
  %25 = load %struct.TimeSyncData*, %struct.TimeSyncData** %7, align 8, !dbg !603
  %26 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %25, i32 0, i32 1, !dbg !605
  %27 = load i32, i32* %26, align 4, !dbg !605
  %28 = trunc i32 %27 to i8, !dbg !603
  %29 = load i8, i8* %4, align 1, !dbg !606
  %30 = load %struct.TimeSyncData*, %struct.TimeSyncData** %7, align 8, !dbg !607
  %31 = bitcast %struct.TimeSyncData* %30 to i8*, !dbg !607
  %32 = call i32 @TimeSyncDoSync(i8 signext %28, i32 0, i8 signext %29, i8* %31), !dbg !608
  %33 = icmp ne i32 %32, 0, !dbg !608
  br i1 %33, label %37, label %34, !dbg !609

; <label>:34:                                     ; preds = %20
  %35 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !610
  %36 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i32 0), !dbg !612
  store i32 %36, i32* %2, align 4, !dbg !613
  br label %40, !dbg !613

; <label>:37:                                     ; preds = %20
  %38 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !614
  %39 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i32 1), !dbg !616
  store i32 %39, i32* %2, align 4, !dbg !617
  br label %40, !dbg !617

; <label>:40:                                     ; preds = %37, %34, %17
  %41 = load i32, i32* %2, align 4, !dbg !618
  ret i32 %41, !dbg !618
}

; Function Attrs: nounwind uwtable
define internal i32 @TimeSyncSetOption(i8*, %struct.ToolsAppCtx*, i8*, i8*, %struct.ToolsPluginData*) #0 !dbg !228 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ToolsAppCtx*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ToolsPluginData*, align 8
  %12 = alloca %struct.TimeSyncData*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !619, metadata !237), !dbg !620
  store %struct.ToolsAppCtx* %1, %struct.ToolsAppCtx** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %8, metadata !621, metadata !237), !dbg !622
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !623, metadata !237), !dbg !624
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !625, metadata !237), !dbg !626
  store %struct.ToolsPluginData* %4, %struct.ToolsPluginData** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsPluginData** %11, metadata !627, metadata !237), !dbg !628
  call void @llvm.dbg.declare(metadata %struct.TimeSyncData** %12, metadata !629, metadata !237), !dbg !630
  %17 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %11, align 8, !dbg !631
  %18 = getelementptr inbounds %struct.ToolsPluginData, %struct.ToolsPluginData* %17, i32 0, i32 3, !dbg !632
  %19 = load i8*, i8** %18, align 8, !dbg !632
  %20 = bitcast i8* %19 to %struct.TimeSyncData*, !dbg !631
  store %struct.TimeSyncData* %20, %struct.TimeSyncData** %12, align 8, !dbg !630
  %21 = load i8*, i8** %9, align 8, !dbg !633
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0)) #5, !dbg !635
  %23 = icmp eq i32 %22, 0, !dbg !636
  br i1 %23, label %24, label %77, !dbg !637

; <label>:24:                                     ; preds = %5
  call void @llvm.dbg.declare(metadata i32* %13, metadata !638, metadata !237), !dbg !640
  %25 = load i8*, i8** %10, align 8, !dbg !641
  %26 = call i32 @ParseBoolOption(i8* %25, i32* %13), !dbg !643
  %27 = icmp ne i32 %26, 0, !dbg !643
  br i1 %27, label %29, label %28, !dbg !644

; <label>:28:                                     ; preds = %24
  store i32 0, i32* %6, align 4, !dbg !645
  br label %239, !dbg !645

; <label>:29:                                     ; preds = %24
  %30 = load i32, i32* %13, align 4, !dbg !647
  %31 = icmp ne i32 %30, 0, !dbg !647
  br i1 %31, label %32, label %60, !dbg !649

; <label>:32:                                     ; preds = %29
  %33 = load %struct.TimeSyncData*, %struct.TimeSyncData** %12, align 8, !dbg !650
  %34 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %33, i32 0, i32 4, !dbg !652
  %35 = load i32, i32* %34, align 8, !dbg !652
  %36 = icmp ne i32 %35, 2, !dbg !653
  br i1 %36, label %37, label %60, !dbg !654

; <label>:37:                                     ; preds = %32
  %38 = load %struct.TimeSyncData*, %struct.TimeSyncData** %12, align 8, !dbg !655
  %39 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %38, i32 0, i32 4, !dbg !658
  %40 = load i32, i32* %39, align 8, !dbg !658
  %41 = icmp eq i32 %40, 1, !dbg !659
  br i1 %41, label %42, label %53, !dbg !660

; <label>:42:                                     ; preds = %37
  %43 = load i32, i32* @TimeSyncSetOption.syncBeforeLoop, align 4, !dbg !661
  %44 = icmp ne i32 %43, 0, !dbg !661
  br i1 %44, label %45, label %53, !dbg !663

; <label>:45:                                     ; preds = %42
  %46 = load %struct.TimeSyncData*, %struct.TimeSyncData** %12, align 8, !dbg !664
  %47 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %46, i32 0, i32 1, !dbg !666
  %48 = load i32, i32* %47, align 4, !dbg !666
  %49 = trunc i32 %48 to i8, !dbg !664
  %50 = load %struct.TimeSyncData*, %struct.TimeSyncData** %12, align 8, !dbg !667
  %51 = bitcast %struct.TimeSyncData* %50 to i8*, !dbg !667
  %52 = call i32 @TimeSyncDoSync(i8 signext %49, i32 0, i8 signext 1, i8* %51), !dbg !668
  br label %53, !dbg !669

; <label>:53:                                     ; preds = %45, %42, %37
  %54 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !670
  %55 = load %struct.TimeSyncData*, %struct.TimeSyncData** %12, align 8, !dbg !672
  %56 = call signext i8 @TimeSyncStartLoop(%struct.ToolsAppCtx* %54, %struct.TimeSyncData* %55), !dbg !673
  %57 = icmp ne i8 %56, 0, !dbg !673
  br i1 %57, label %59, label %58, !dbg !674

; <label>:58:                                     ; preds = %53
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0)), !dbg !675
  store i32 0, i32* %6, align 4, !dbg !677
  br label %239, !dbg !677

; <label>:59:                                     ; preds = %53
  br label %76, !dbg !678

; <label>:60:                                     ; preds = %32, %29
  %61 = load i32, i32* %13, align 4, !dbg !679
  %62 = icmp ne i32 %61, 0, !dbg !679
  br i1 %62, label %75, label %63, !dbg !682

; <label>:63:                                     ; preds = %60
  %64 = load %struct.TimeSyncData*, %struct.TimeSyncData** %12, align 8, !dbg !683
  %65 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %64, i32 0, i32 4, !dbg !686
  %66 = load i32, i32* %65, align 8, !dbg !686
  %67 = icmp eq i32 %66, 2, !dbg !687
  br i1 %67, label %68, label %71, !dbg !688

; <label>:68:                                     ; preds = %63
  %69 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !689
  %70 = load %struct.TimeSyncData*, %struct.TimeSyncData** %12, align 8, !dbg !691
  call void @TimeSyncStopLoop(%struct.ToolsAppCtx* %69, %struct.TimeSyncData* %70), !dbg !692
  br label %74, !dbg !693

; <label>:71:                                     ; preds = %63
  %72 = load %struct.TimeSyncData*, %struct.TimeSyncData** %12, align 8, !dbg !694
  %73 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %72, i32 0, i32 4, !dbg !696
  store i32 1, i32* %73, align 8, !dbg !697
  br label %74

; <label>:74:                                     ; preds = %71, %68
  br label %75, !dbg !698

; <label>:75:                                     ; preds = %74, %60
  br label %76

; <label>:76:                                     ; preds = %75, %59
  br label %238, !dbg !699

; <label>:77:                                     ; preds = %5
  %78 = load i8*, i8** %9, align 8, !dbg !700
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0)) #5, !dbg !703
  %80 = icmp eq i32 %79, 0, !dbg !704
  br i1 %80, label %81, label %89, !dbg !703

; <label>:81:                                     ; preds = %77
  %82 = load i8*, i8** %10, align 8, !dbg !705
  %83 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0)) #5, !dbg !707
  %84 = load %struct.TimeSyncData*, %struct.TimeSyncData** %12, align 8, !dbg !708
  %85 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %84, i32 0, i32 1, !dbg !709
  store i32 %83, i32* %85, align 4, !dbg !710
  %86 = load %struct.TimeSyncData*, %struct.TimeSyncData** %12, align 8, !dbg !711
  %87 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %86, i32 0, i32 1, !dbg !712
  %88 = load i32, i32* %87, align 4, !dbg !712
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.35, i32 0, i32 0), i32 %88), !dbg !713
  br label %237, !dbg !714

; <label>:89:                                     ; preds = %77
  %90 = load i8*, i8** %9, align 8, !dbg !715
  %91 = call i32 @strcmp(i8* %90, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.36, i32 0, i32 0)) #5, !dbg !718
  %92 = icmp eq i32 %91, 0, !dbg !719
  br i1 %92, label %93, label %113, !dbg !718

; <label>:93:                                     ; preds = %89
  call void @llvm.dbg.declare(metadata i32* %14, metadata !720, metadata !237), !dbg !724
  %94 = load i8*, i8** %10, align 8, !dbg !725
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.37, i32 0, i32 0), i8* %94), !dbg !726
  %95 = load i8*, i8** %10, align 8, !dbg !727
  %96 = call signext i8 @StrUtil_StrToInt(i32* %14, i8* %95), !dbg !729
  %97 = icmp ne i8 %96, 0, !dbg !729
  br i1 %97, label %99, label %98, !dbg !730

; <label>:98:                                     ; preds = %93
  store i32 0, i32* %6, align 4, !dbg !731
  br label %239, !dbg !731

; <label>:99:                                     ; preds = %93
  %100 = load i32, i32* %14, align 4, !dbg !733
  %101 = icmp sle i32 %100, 0, !dbg !735
  br i1 %101, label %105, label %102, !dbg !736

; <label>:102:                                    ; preds = %99
  %103 = load i32, i32* %14, align 4, !dbg !737
  %104 = icmp sgt i32 %103, 100, !dbg !739
  br i1 %104, label %105, label %108, !dbg !740

; <label>:105:                                    ; preds = %102, %99
  %106 = load %struct.TimeSyncData*, %struct.TimeSyncData** %12, align 8, !dbg !741
  %107 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %106, i32 0, i32 2, !dbg !743
  store i32 50, i32* %107, align 8, !dbg !744
  br label %112, !dbg !745

; <label>:108:                                    ; preds = %102
  %109 = load i32, i32* %14, align 4, !dbg !746
  %110 = load %struct.TimeSyncData*, %struct.TimeSyncData** %12, align 8, !dbg !748
  %111 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %110, i32 0, i32 2, !dbg !749
  store i32 %109, i32* %111, align 8, !dbg !750
  br label %112

; <label>:112:                                    ; preds = %108, %105
  br label %236, !dbg !751

; <label>:113:                                    ; preds = %89
  %114 = load i8*, i8** %9, align 8, !dbg !752
  %115 = call i32 @strcmp(i8* %114, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0)) #5, !dbg !755
  %116 = icmp eq i32 %115, 0, !dbg !756
  br i1 %116, label %117, label %151, !dbg !755

; <label>:117:                                    ; preds = %113
  call void @llvm.dbg.declare(metadata i32* %15, metadata !757, metadata !237), !dbg !759
  %118 = load i8*, i8** %10, align 8, !dbg !760
  %119 = call signext i8 @StrUtil_StrToUint(i32* %15, i8* %118), !dbg !762
  %120 = icmp ne i8 %119, 0, !dbg !762
  br i1 %120, label %122, label %121, !dbg !763

; <label>:121:                                    ; preds = %117
  store i32 0, i32* %6, align 4, !dbg !764
  br label %239, !dbg !764

; <label>:122:                                    ; preds = %117
  %123 = load i32, i32* %15, align 4, !dbg !766
  %124 = icmp ule i32 %123, 0, !dbg !768
  br i1 %124, label %125, label %126, !dbg !769

; <label>:125:                                    ; preds = %122
  store i32 60, i32* %15, align 4, !dbg !770
  br label %126, !dbg !771

; <label>:126:                                    ; preds = %125, %122
  %127 = load i32, i32* %15, align 4, !dbg !772
  %128 = load %struct.TimeSyncData*, %struct.TimeSyncData** %12, align 8, !dbg !774
  %129 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %128, i32 0, i32 3, !dbg !775
  %130 = load i32, i32* %129, align 4, !dbg !775
  %131 = icmp ne i32 %127, %130, !dbg !776
  br i1 %131, label %132, label %150, !dbg !777

; <label>:132:                                    ; preds = %126
  %133 = load i32, i32* %15, align 4, !dbg !778
  %134 = load %struct.TimeSyncData*, %struct.TimeSyncData** %12, align 8, !dbg !780
  %135 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %134, i32 0, i32 3, !dbg !781
  store i32 %133, i32* %135, align 4, !dbg !782
  %136 = load %struct.TimeSyncData*, %struct.TimeSyncData** %12, align 8, !dbg !783
  %137 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %136, i32 0, i32 4, !dbg !785
  %138 = load i32, i32* %137, align 8, !dbg !785
  %139 = icmp eq i32 %138, 2, !dbg !786
  br i1 %139, label %140, label %149, !dbg !787

; <label>:140:                                    ; preds = %132
  %141 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !788
  %142 = load %struct.TimeSyncData*, %struct.TimeSyncData** %12, align 8, !dbg !790
  call void @TimeSyncStopLoop(%struct.ToolsAppCtx* %141, %struct.TimeSyncData* %142), !dbg !791
  %143 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !792
  %144 = load %struct.TimeSyncData*, %struct.TimeSyncData** %12, align 8, !dbg !794
  %145 = call signext i8 @TimeSyncStartLoop(%struct.ToolsAppCtx* %143, %struct.TimeSyncData* %144), !dbg !795
  %146 = icmp ne i8 %145, 0, !dbg !795
  br i1 %146, label %148, label %147, !dbg !796

; <label>:147:                                    ; preds = %140
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0)), !dbg !797
  store i32 0, i32* %6, align 4, !dbg !799
  br label %239, !dbg !799

; <label>:148:                                    ; preds = %140
  br label %149, !dbg !800

; <label>:149:                                    ; preds = %148, %132
  br label %150, !dbg !801

; <label>:150:                                    ; preds = %149, %126
  br label %235, !dbg !802

; <label>:151:                                    ; preds = %113
  %152 = load i8*, i8** %9, align 8, !dbg !803
  %153 = call i32 @strcmp(i8* %152, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i32 0, i32 0)) #5, !dbg !806
  %154 = icmp eq i32 %153, 0, !dbg !807
  br i1 %154, label %155, label %161, !dbg !806

; <label>:155:                                    ; preds = %151
  %156 = load i8*, i8** %10, align 8, !dbg !808
  %157 = call i32 @ParseBoolOption(i8* %156, i32* @gTimeSyncToolsStartupAllowBackward), !dbg !811
  %158 = icmp ne i32 %157, 0, !dbg !811
  br i1 %158, label %160, label %159, !dbg !812

; <label>:159:                                    ; preds = %155
  store i32 0, i32* %6, align 4, !dbg !813
  br label %239, !dbg !813

; <label>:160:                                    ; preds = %155
  br label %234, !dbg !815

; <label>:161:                                    ; preds = %151
  %162 = load i8*, i8** %9, align 8, !dbg !816
  %163 = call i32 @strcmp(i8* %162, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i32 0, i32 0)) #5, !dbg !819
  %164 = icmp eq i32 %163, 0, !dbg !820
  br i1 %164, label %165, label %189, !dbg !819

; <label>:165:                                    ; preds = %161
  call void @llvm.dbg.declare(metadata i32* %16, metadata !821, metadata !237), !dbg !823
  %166 = load i8*, i8** %10, align 8, !dbg !824
  %167 = call i32 @ParseBoolOption(i8* %166, i32* %16), !dbg !826
  %168 = icmp ne i32 %167, 0, !dbg !826
  br i1 %168, label %170, label %169, !dbg !827

; <label>:169:                                    ; preds = %165
  store i32 0, i32* %6, align 4, !dbg !828
  br label %239, !dbg !828

; <label>:170:                                    ; preds = %165
  %171 = load i32, i32* %16, align 4, !dbg !830
  %172 = icmp ne i32 %171, 0, !dbg !830
  br i1 %172, label %173, label %188, !dbg !832

; <label>:173:                                    ; preds = %170
  %174 = load i32, i32* @TimeSyncSetOption.doneAlready, align 4, !dbg !833
  %175 = icmp ne i32 %174, 0, !dbg !833
  br i1 %175, label %188, label %176, !dbg !835

; <label>:176:                                    ; preds = %173
  %177 = load %struct.TimeSyncData*, %struct.TimeSyncData** %12, align 8, !dbg !836
  %178 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %177, i32 0, i32 1, !dbg !837
  %179 = load i32, i32* %178, align 4, !dbg !837
  %180 = trunc i32 %179 to i8, !dbg !836
  %181 = load i32, i32* @gTimeSyncToolsStartupAllowBackward, align 4, !dbg !838
  %182 = trunc i32 %181 to i8, !dbg !838
  %183 = load %struct.TimeSyncData*, %struct.TimeSyncData** %12, align 8, !dbg !839
  %184 = bitcast %struct.TimeSyncData* %183 to i8*, !dbg !839
  %185 = call i32 @TimeSyncDoSync(i8 signext %180, i32 0, i8 signext %182, i8* %184), !dbg !840
  %186 = icmp ne i32 %185, 0, !dbg !840
  br i1 %186, label %188, label %187, !dbg !841

; <label>:187:                                    ; preds = %176
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.41, i32 0, i32 0)), !dbg !843
  store i32 0, i32* %6, align 4, !dbg !845
  br label %239, !dbg !845

; <label>:188:                                    ; preds = %176, %173, %170
  store i32 1, i32* @TimeSyncSetOption.doneAlready, align 4, !dbg !846
  br label %233, !dbg !847

; <label>:189:                                    ; preds = %161
  %190 = load i8*, i8** %9, align 8, !dbg !848
  %191 = call i32 @strcmp(i8* %190, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i32 0, i32 0)) #5, !dbg !851
  %192 = icmp eq i32 %191, 0, !dbg !852
  br i1 %192, label %193, label %199, !dbg !851

; <label>:193:                                    ; preds = %189
  %194 = load i8*, i8** %10, align 8, !dbg !853
  %195 = call i32 @ParseBoolOption(i8* %194, i32* @TimeSyncSetOption.syncBeforeLoop), !dbg !856
  %196 = icmp ne i32 %195, 0, !dbg !856
  br i1 %196, label %198, label %197, !dbg !857

; <label>:197:                                    ; preds = %193
  store i32 0, i32* %6, align 4, !dbg !858
  br label %239, !dbg !858

; <label>:198:                                    ; preds = %193
  br label %232, !dbg !860

; <label>:199:                                    ; preds = %189
  %200 = load i8*, i8** %9, align 8, !dbg !861
  %201 = call i32 @strcmp(i8* %200, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i32 0, i32 0)) #5, !dbg !864
  %202 = icmp eq i32 %201, 0, !dbg !865
  br i1 %202, label %203, label %214, !dbg !864

; <label>:203:                                    ; preds = %199
  %204 = load i8*, i8** %10, align 8, !dbg !866
  %205 = load %struct.TimeSyncData*, %struct.TimeSyncData** %12, align 8, !dbg !869
  %206 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %205, i32 0, i32 7, !dbg !870
  %207 = call i32 @ParseBoolOption(i8* %204, i32* %206), !dbg !871
  %208 = icmp ne i32 %207, 0, !dbg !871
  br i1 %208, label %210, label %209, !dbg !872

; <label>:209:                                    ; preds = %203
  store i32 0, i32* %6, align 4, !dbg !873
  br label %239, !dbg !873

; <label>:210:                                    ; preds = %203
  %211 = load %struct.TimeSyncData*, %struct.TimeSyncData** %12, align 8, !dbg !875
  %212 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %211, i32 0, i32 7, !dbg !876
  %213 = load i32, i32* %212, align 8, !dbg !876
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0), i32 %213), !dbg !877
  br label %231, !dbg !878

; <label>:214:                                    ; preds = %199
  %215 = load i8*, i8** %9, align 8, !dbg !879
  %216 = call i32 @strcmp(i8* %215, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.45, i32 0, i32 0)) #5, !dbg !882
  %217 = icmp eq i32 %216, 0, !dbg !883
  br i1 %217, label %218, label %229, !dbg !882

; <label>:218:                                    ; preds = %214
  %219 = load %struct.TimeSyncData*, %struct.TimeSyncData** %12, align 8, !dbg !884
  %220 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %219, i32 0, i32 8, !dbg !887
  %221 = load i8*, i8** %10, align 8, !dbg !888
  %222 = call signext i8 @StrUtil_StrToUint(i32* %220, i8* %221), !dbg !889
  %223 = icmp ne i8 %222, 0, !dbg !889
  br i1 %223, label %225, label %224, !dbg !890

; <label>:224:                                    ; preds = %218
  store i32 0, i32* %6, align 4, !dbg !891
  br label %239, !dbg !891

; <label>:225:                                    ; preds = %218
  %226 = load %struct.TimeSyncData*, %struct.TimeSyncData** %12, align 8, !dbg !893
  %227 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %226, i32 0, i32 8, !dbg !894
  %228 = load i32, i32* %227, align 4, !dbg !894
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i32 0, i32 0), i32 %228), !dbg !895
  br label %230, !dbg !896

; <label>:229:                                    ; preds = %214
  store i32 0, i32* %6, align 4, !dbg !897
  br label %239, !dbg !897

; <label>:230:                                    ; preds = %225
  br label %231

; <label>:231:                                    ; preds = %230, %210
  br label %232

; <label>:232:                                    ; preds = %231, %198
  br label %233

; <label>:233:                                    ; preds = %232, %188
  br label %234

; <label>:234:                                    ; preds = %233, %160
  br label %235

; <label>:235:                                    ; preds = %234, %150
  br label %236

; <label>:236:                                    ; preds = %235, %112
  br label %237

; <label>:237:                                    ; preds = %236, %81
  br label %238

; <label>:238:                                    ; preds = %237, %76
  store i32 1, i32* %6, align 4, !dbg !899
  br label %239, !dbg !899

; <label>:239:                                    ; preds = %238, %229, %224, %209, %197, %187, %169, %159, %147, %121, %98, %58, %28
  %240 = load i32, i32* %6, align 4, !dbg !900
  ret i32 %240, !dbg !900
}

; Function Attrs: nounwind uwtable
define internal void @TimeSyncShutdown(i8*, %struct.ToolsAppCtx*, %struct.ToolsPluginData*) #0 !dbg !901 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ToolsAppCtx*, align 8
  %6 = alloca %struct.ToolsPluginData*, align 8
  %7 = alloca %struct.TimeSyncData*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !904, metadata !237), !dbg !905
  store %struct.ToolsAppCtx* %1, %struct.ToolsAppCtx** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %5, metadata !906, metadata !237), !dbg !907
  store %struct.ToolsPluginData* %2, %struct.ToolsPluginData** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsPluginData** %6, metadata !908, metadata !237), !dbg !909
  call void @llvm.dbg.declare(metadata %struct.TimeSyncData** %7, metadata !910, metadata !237), !dbg !911
  %8 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %6, align 8, !dbg !912
  %9 = getelementptr inbounds %struct.ToolsPluginData, %struct.ToolsPluginData* %8, i32 0, i32 3, !dbg !913
  %10 = load i8*, i8** %9, align 8, !dbg !913
  %11 = bitcast i8* %10 to %struct.TimeSyncData*, !dbg !912
  store %struct.TimeSyncData* %11, %struct.TimeSyncData** %7, align 8, !dbg !911
  %12 = load %struct.TimeSyncData*, %struct.TimeSyncData** %7, align 8, !dbg !914
  %13 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %12, i32 0, i32 4, !dbg !916
  %14 = load i32, i32* %13, align 8, !dbg !916
  %15 = icmp eq i32 %14, 2, !dbg !917
  br i1 %15, label %16, label %19, !dbg !918

; <label>:16:                                     ; preds = %3
  %17 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %5, align 8, !dbg !919
  %18 = load %struct.TimeSyncData*, %struct.TimeSyncData** %7, align 8, !dbg !921
  call void @TimeSyncStopLoop(%struct.ToolsAppCtx* %17, %struct.TimeSyncData* %18), !dbg !922
  br label %19, !dbg !923

; <label>:19:                                     ; preds = %16, %3
  %20 = load %struct.TimeSyncData*, %struct.TimeSyncData** %7, align 8, !dbg !924
  %21 = bitcast %struct.TimeSyncData* %20 to i8*, !dbg !924
  call void @g_free(i8* %21), !dbg !925
  ret void, !dbg !926
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

declare %struct._GArray* @VMTools_WrapArray(i8*, i32, i32) #2

declare void @g_log(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @TimeSyncResetSlew(%struct.TimeSyncData*) #0 !dbg !927 {
  %2 = alloca %struct.TimeSyncData*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.TimeSyncData* %0, %struct.TimeSyncData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.TimeSyncData** %2, metadata !930, metadata !237), !dbg !931
  call void @llvm.dbg.declare(metadata i64* %3, metadata !932, metadata !237), !dbg !933
  call void @llvm.dbg.declare(metadata i64* %4, metadata !934, metadata !237), !dbg !935
  %5 = load %struct.TimeSyncData*, %struct.TimeSyncData** %2, align 8, !dbg !936
  %6 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %5, i32 0, i32 3, !dbg !937
  %7 = load i32, i32* %6, align 4, !dbg !937
  %8 = mul i32 %7, 1000000, !dbg !938
  %9 = zext i32 %8 to i64, !dbg !936
  store i64 %9, i64* %4, align 8, !dbg !935
  %10 = load %struct.TimeSyncData*, %struct.TimeSyncData** %2, align 8, !dbg !939
  %11 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %10, i32 0, i32 5, !dbg !940
  store i32 0, i32* %11, align 4, !dbg !941
  %12 = load i64, i64* %4, align 8, !dbg !942
  %13 = call signext i8 @TimeSync_Slew(i64 0, i64 %12, i64* %3), !dbg !943
  %14 = call signext i8 @TimeSync_PLLSupported(), !dbg !944
  %15 = icmp ne i8 %14, 0, !dbg !944
  br i1 %15, label %16, label %19, !dbg !946

; <label>:16:                                     ; preds = %1
  %17 = call signext i8 @TimeSync_PLLUpdate(i64 0), !dbg !947
  %18 = call signext i8 @TimeSync_PLLSetFrequency(i64 0), !dbg !949
  br label %19, !dbg !950

; <label>:19:                                     ; preds = %16, %1
  ret void, !dbg !951
}

declare signext i8 @TimeSync_Slew(i64, i64, i64*) #2

declare signext i8 @TimeSync_PLLSupported() #2

declare signext i8 @TimeSync_PLLUpdate(i64) #2

declare signext i8 @TimeSync_PLLSetFrequency(i64) #2

declare signext i8 @StrUtil_GetNextUintToken(i32*, i32*, i8*, i8*) #2

declare i32 @RpcChannel_SetRetVals(%struct.RpcInData*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @TimeSyncDoSync(i8 signext, i32, i8 signext, i8*) #0 !dbg !952 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8, align 1
  %16 = alloca %struct.TimeSyncData*, align 8
  %17 = alloca %struct._GSource*, align 8
  store i8 %0, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !956, metadata !237), !dbg !957
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !958, metadata !237), !dbg !959
  store i8 %2, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !960, metadata !237), !dbg !961
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !962, metadata !237), !dbg !963
  call void @llvm.dbg.declare(metadata i64* %10, metadata !964, metadata !237), !dbg !965
  call void @llvm.dbg.declare(metadata i64* %11, metadata !966, metadata !237), !dbg !967
  call void @llvm.dbg.declare(metadata i64* %12, metadata !968, metadata !237), !dbg !969
  call void @llvm.dbg.declare(metadata i64* %13, metadata !970, metadata !237), !dbg !971
  call void @llvm.dbg.declare(metadata i64* %14, metadata !972, metadata !237), !dbg !973
  call void @llvm.dbg.declare(metadata i8* %15, metadata !974, metadata !237), !dbg !975
  call void @llvm.dbg.declare(metadata %struct.TimeSyncData** %16, metadata !976, metadata !237), !dbg !977
  %18 = load i8*, i8** %9, align 8, !dbg !978
  %19 = bitcast i8* %18 to %struct.TimeSyncData*, !dbg !978
  store %struct.TimeSyncData* %19, %struct.TimeSyncData** %16, align 8, !dbg !977
  %20 = load i32, i32* %7, align 4, !dbg !979
  %21 = load i8, i8* %6, align 1, !dbg !980
  %22 = sext i8 %21 to i32, !dbg !980
  %23 = load i8, i8* %8, align 1, !dbg !981
  %24 = sext i8 %23 to i32, !dbg !981
  %25 = load %struct.TimeSyncData*, %struct.TimeSyncData** %16, align 8, !dbg !982
  %26 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %25, i32 0, i32 7, !dbg !983
  %27 = load i32, i32* %26, align 8, !dbg !983
  %28 = load %struct.TimeSyncData*, %struct.TimeSyncData** %16, align 8, !dbg !984
  %29 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %28, i32 0, i32 8, !dbg !985
  %30 = load i32, i32* %29, align 4, !dbg !985
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.10, i32 0, i32 0), i32 %20, i32 %22, i32 %24, i32 %27, i32 %30), !dbg !986
  %31 = call i32 @TimeSyncReadHostAndGuest(i64* %11, i64* %10, i64* %13, i8* %15, i64* %14), !dbg !987
  %32 = icmp ne i32 %31, 0, !dbg !987
  br i1 %32, label %34, label %33, !dbg !989

; <label>:33:                                     ; preds = %4
  store i32 0, i32* %5, align 4, !dbg !990
  br label %183, !dbg !990

; <label>:34:                                     ; preds = %4
  %35 = load i64, i64* %10, align 8, !dbg !992
  %36 = load i64, i64* %11, align 8, !dbg !993
  %37 = sub nsw i64 %35, %36, !dbg !994
  %38 = load i64, i64* %13, align 8, !dbg !995
  %39 = sub nsw i64 %37, %38, !dbg !996
  store i64 %39, i64* %12, align 8, !dbg !997
  %40 = load i32, i32* %7, align 4, !dbg !998
  %41 = icmp eq i32 %40, 0, !dbg !1000
  br i1 %41, label %45, label %42, !dbg !1001

; <label>:42:                                     ; preds = %34
  %43 = load i32, i32* %7, align 4, !dbg !1002
  %44 = icmp eq i32 %43, 2, !dbg !1004
  br i1 %44, label %45, label %137, !dbg !1005

; <label>:45:                                     ; preds = %42, %34
  %46 = load i64, i64* %12, align 8, !dbg !1006
  %47 = load i64, i64* %14, align 8, !dbg !1009
  %48 = sub nsw i64 0, %47, !dbg !1010
  %49 = icmp slt i64 %46, %48, !dbg !1011
  br i1 %49, label %59, label %50, !dbg !1012

; <label>:50:                                     ; preds = %45
  %51 = load i64, i64* %12, align 8, !dbg !1013
  %52 = load i64, i64* %13, align 8, !dbg !1014
  %53 = add nsw i64 %51, %52, !dbg !1015
  %54 = icmp sgt i64 %53, 0, !dbg !1016
  br i1 %54, label %55, label %135, !dbg !1017

; <label>:55:                                     ; preds = %50
  %56 = load i8, i8* %8, align 1, !dbg !1018
  %57 = sext i8 %56 to i32, !dbg !1018
  %58 = icmp ne i32 %57, 0, !dbg !1018
  br i1 %58, label %59, label %135, !dbg !1020

; <label>:59:                                     ; preds = %55, %45
  %60 = load i32, i32* %7, align 4, !dbg !1022
  %61 = icmp eq i32 %60, 0, !dbg !1025
  br i1 %61, label %62, label %123, !dbg !1026

; <label>:62:                                     ; preds = %59
  %63 = load %struct.TimeSyncData*, %struct.TimeSyncData** %16, align 8, !dbg !1027
  %64 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %63, i32 0, i32 7, !dbg !1029
  %65 = load i32, i32* %64, align 8, !dbg !1029
  %66 = icmp ne i32 %65, 0, !dbg !1027
  br i1 %66, label %67, label %123, !dbg !1030

; <label>:67:                                     ; preds = %62
  %68 = call signext i8 @TimeSync_IsGuestSyncServiceRunning(), !dbg !1031
  %69 = sext i8 %68 to i32, !dbg !1031
  %70 = icmp ne i32 %69, 0, !dbg !1031
  br i1 %70, label %71, label %123, !dbg !1032

; <label>:71:                                     ; preds = %67
  %72 = load %struct.TimeSyncData*, %struct.TimeSyncData** %16, align 8, !dbg !1034
  %73 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %72, i32 0, i32 9, !dbg !1037
  %74 = load %struct._GSource*, %struct._GSource** %73, align 8, !dbg !1037
  %75 = icmp eq %struct._GSource* %74, null, !dbg !1038
  br i1 %75, label %76, label %121, !dbg !1039

; <label>:76:                                     ; preds = %71
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0)), !dbg !1040
  %77 = load %struct.TimeSyncData*, %struct.TimeSyncData** %16, align 8, !dbg !1042
  %78 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %77, i32 0, i32 10, !dbg !1044
  %79 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %78, align 8, !dbg !1044
  %80 = bitcast %struct.ToolsAppCtx* %79 to i8*, !dbg !1042
  %81 = call signext i8 @TimeSync_DoGuestResync(i8* %80), !dbg !1045
  %82 = icmp ne i8 %81, 0, !dbg !1045
  br i1 %82, label %92, label %83, !dbg !1046

; <label>:83:                                     ; preds = %76
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0)), !dbg !1047
  %84 = load %struct.TimeSyncData*, %struct.TimeSyncData** %16, align 8, !dbg !1049
  %85 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %84, i32 0, i32 1, !dbg !1050
  %86 = load i32, i32* %85, align 4, !dbg !1050
  %87 = trunc i32 %86 to i8, !dbg !1049
  %88 = load i8, i8* %8, align 1, !dbg !1051
  %89 = load %struct.TimeSyncData*, %struct.TimeSyncData** %16, align 8, !dbg !1052
  %90 = bitcast %struct.TimeSyncData* %89 to i8*, !dbg !1052
  %91 = call i32 @TimeSyncDoSync(i8 signext %87, i32 2, i8 signext %88, i8* %90), !dbg !1053
  store i32 %91, i32* %5, align 4, !dbg !1054
  br label %183, !dbg !1054

; <label>:92:                                     ; preds = %76
  %93 = load %struct.TimeSyncData*, %struct.TimeSyncData** %16, align 8, !dbg !1055
  %94 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %93, i32 0, i32 8, !dbg !1057
  %95 = load i32, i32* %94, align 4, !dbg !1057
  %96 = icmp ugt i32 %95, 0, !dbg !1058
  br i1 %96, label %97, label %120, !dbg !1059

; <label>:97:                                     ; preds = %92
  %98 = load %struct.TimeSyncData*, %struct.TimeSyncData** %16, align 8, !dbg !1060
  %99 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %98, i32 0, i32 8, !dbg !1062
  %100 = load i32, i32* %99, align 4, !dbg !1062
  %101 = call %struct._GSource* @g_timeout_source_new(i32 %100), !dbg !1063
  %102 = load %struct.TimeSyncData*, %struct.TimeSyncData** %16, align 8, !dbg !1064
  %103 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %102, i32 0, i32 9, !dbg !1065
  store %struct._GSource* %101, %struct._GSource** %103, align 8, !dbg !1066
  br label %104, !dbg !1067, !llvm.loop !1068

; <label>:104:                                    ; preds = %97
  call void @llvm.dbg.declare(metadata %struct._GSource** %17, metadata !1069, metadata !237), !dbg !1071
  %105 = load %struct.TimeSyncData*, %struct.TimeSyncData** %16, align 8, !dbg !1072
  %106 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %105, i32 0, i32 9, !dbg !1074
  %107 = load %struct._GSource*, %struct._GSource** %106, align 8, !dbg !1074
  store %struct._GSource* %107, %struct._GSource** %17, align 8, !dbg !1075
  %108 = load %struct._GSource*, %struct._GSource** %17, align 8, !dbg !1076
  %109 = load %struct.TimeSyncData*, %struct.TimeSyncData** %16, align 8, !dbg !1077
  %110 = bitcast %struct.TimeSyncData* %109 to i8*, !dbg !1078
  call void @g_source_set_callback(%struct._GSource* %108, i32 (i8*)* @TimeSyncGuestResyncTimeoutHandler, i8* %110, void (i8*)* null), !dbg !1079
  %111 = load %struct._GSource*, %struct._GSource** %17, align 8, !dbg !1080
  %112 = load %struct.TimeSyncData*, %struct.TimeSyncData** %16, align 8, !dbg !1081
  %113 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %112, i32 0, i32 10, !dbg !1082
  %114 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %113, align 8, !dbg !1082
  %115 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %114, i32 0, i32 4, !dbg !1083
  %116 = load %struct._GMainLoop*, %struct._GMainLoop** %115, align 8, !dbg !1083
  %117 = call %struct._GMainContext* @g_main_loop_get_context(%struct._GMainLoop* %116), !dbg !1084
  %118 = call i32 @g_source_attach(%struct._GSource* %111, %struct._GMainContext* %117), !dbg !1086
  br label %119, !dbg !1088

; <label>:119:                                    ; preds = %104
  br label %120, !dbg !1089

; <label>:120:                                    ; preds = %119, %92
  br label %122, !dbg !1090

; <label>:121:                                    ; preds = %71
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.13, i32 0, i32 0)), !dbg !1091
  store i32 0, i32* %5, align 4, !dbg !1093
  br label %183, !dbg !1093

; <label>:122:                                    ; preds = %120
  br label %134, !dbg !1094

; <label>:123:                                    ; preds = %67, %62, %59
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i32 0, i32 0)), !dbg !1095
  %124 = load %struct.TimeSyncData*, %struct.TimeSyncData** %16, align 8, !dbg !1097
  %125 = load i64, i64* %12, align 8, !dbg !1099
  %126 = sub nsw i64 0, %125, !dbg !1100
  %127 = load i64, i64* %13, align 8, !dbg !1101
  %128 = sub nsw i64 0, %127, !dbg !1102
  %129 = add nsw i64 %126, %128, !dbg !1103
  %130 = call i32 @TimeSyncStepTime(%struct.TimeSyncData* %124, i64 %129), !dbg !1104
  %131 = icmp ne i32 %130, 0, !dbg !1104
  br i1 %131, label %133, label %132, !dbg !1105

; <label>:132:                                    ; preds = %123
  store i32 0, i32* %5, align 4, !dbg !1106
  br label %183, !dbg !1106

; <label>:133:                                    ; preds = %123
  br label %134

; <label>:134:                                    ; preds = %133, %122
  br label %136, !dbg !1108

; <label>:135:                                    ; preds = %55, %50
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i32 0, i32 0)), !dbg !1109
  br label %136

; <label>:136:                                    ; preds = %135, %134
  br label %182, !dbg !1111

; <label>:137:                                    ; preds = %42
  %138 = load %struct.TimeSyncData*, %struct.TimeSyncData** %16, align 8, !dbg !1112
  %139 = load i8, i8* %15, align 1, !dbg !1114
  %140 = sext i8 %139 to i32, !dbg !1114
  %141 = icmp ne i32 %140, 0, !dbg !1114
  br i1 %141, label %142, label %146, !dbg !1115

; <label>:142:                                    ; preds = %137
  %143 = load i8, i8* %6, align 1, !dbg !1116
  %144 = sext i8 %143 to i32, !dbg !1116
  %145 = icmp ne i32 %144, 0, !dbg !1118
  br label %146

; <label>:146:                                    ; preds = %142, %137
  %147 = phi i1 [ false, %137 ], [ %145, %142 ]
  %148 = zext i1 %147 to i32, !dbg !1119
  call void @TimeSyncSetSlewState(%struct.TimeSyncData* %138, i32 %148), !dbg !1121
  %149 = load i64, i64* %12, align 8, !dbg !1122
  %150 = load i64, i64* %14, align 8, !dbg !1124
  %151 = sub nsw i64 0, %150, !dbg !1125
  %152 = icmp slt i64 %149, %151, !dbg !1126
  br i1 %152, label %153, label %164, !dbg !1127

; <label>:153:                                    ; preds = %146
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i32 0, i32 0)), !dbg !1128
  %154 = load %struct.TimeSyncData*, %struct.TimeSyncData** %16, align 8, !dbg !1130
  %155 = load i64, i64* %12, align 8, !dbg !1132
  %156 = sub nsw i64 0, %155, !dbg !1133
  %157 = load i64, i64* %13, align 8, !dbg !1134
  %158 = sub nsw i64 0, %157, !dbg !1135
  %159 = add nsw i64 %156, %158, !dbg !1136
  %160 = call i32 @TimeSyncStepTime(%struct.TimeSyncData* %154, i64 %159), !dbg !1137
  %161 = icmp ne i32 %160, 0, !dbg !1137
  br i1 %161, label %163, label %162, !dbg !1138

; <label>:162:                                    ; preds = %153
  store i32 0, i32* %5, align 4, !dbg !1139
  br label %183, !dbg !1139

; <label>:163:                                    ; preds = %153
  br label %181, !dbg !1141

; <label>:164:                                    ; preds = %146
  %165 = load i8, i8* %6, align 1, !dbg !1142
  %166 = sext i8 %165 to i32, !dbg !1142
  %167 = icmp ne i32 %166, 0, !dbg !1142
  br i1 %167, label %168, label %180, !dbg !1145

; <label>:168:                                    ; preds = %164
  %169 = load i8, i8* %15, align 1, !dbg !1146
  %170 = sext i8 %169 to i32, !dbg !1146
  %171 = icmp ne i32 %170, 0, !dbg !1146
  br i1 %171, label %172, label %180, !dbg !1148

; <label>:172:                                    ; preds = %168
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0)), !dbg !1149
  %173 = load %struct.TimeSyncData*, %struct.TimeSyncData** %16, align 8, !dbg !1151
  %174 = load i64, i64* %12, align 8, !dbg !1153
  %175 = sub nsw i64 0, %174, !dbg !1154
  %176 = call i32 @TimeSyncSlewTime(%struct.TimeSyncData* %173, i64 %175), !dbg !1155
  %177 = icmp ne i32 %176, 0, !dbg !1155
  br i1 %177, label %179, label %178, !dbg !1156

; <label>:178:                                    ; preds = %172
  store i32 0, i32* %5, align 4, !dbg !1157
  br label %183, !dbg !1157

; <label>:179:                                    ; preds = %172
  br label %180, !dbg !1159

; <label>:180:                                    ; preds = %179, %168, %164
  br label %181

; <label>:181:                                    ; preds = %180, %163
  br label %182

; <label>:182:                                    ; preds = %181, %136
  store i32 1, i32* %5, align 4, !dbg !1160
  br label %183, !dbg !1160

; <label>:183:                                    ; preds = %182, %178, %162, %132, %121, %83, %33
  %184 = load i32, i32* %5, align 4, !dbg !1161
  ret i32 %184, !dbg !1161
}

; Function Attrs: nounwind uwtable
define internal i32 @TimeSyncReadHostAndGuest(i64*, i64*, i64*, i8*, i64*) #0 !dbg !1162 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8, align 1
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !1167, metadata !237), !dbg !1168
  store i64* %1, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !1169, metadata !237), !dbg !1170
  store i64* %2, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !1171, metadata !237), !dbg !1172
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1173, metadata !237), !dbg !1174
  store i64* %4, i64** %11, align 8
  call void @llvm.dbg.declare(metadata i64** %11, metadata !1175, metadata !237), !dbg !1176
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1177, metadata !237), !dbg !1178
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1179, metadata !237), !dbg !1180
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1181, metadata !237), !dbg !1182
  call void @llvm.dbg.declare(metadata i64* %15, metadata !1183, metadata !237), !dbg !1184
  call void @llvm.dbg.declare(metadata i64* %16, metadata !1185, metadata !237), !dbg !1186
  call void @llvm.dbg.declare(metadata i64* %17, metadata !1187, metadata !237), !dbg !1188
  call void @llvm.dbg.declare(metadata i8* %18, metadata !1189, metadata !237), !dbg !1190
  call void @llvm.dbg.declare(metadata i64* %19, metadata !1191, metadata !237), !dbg !1192
  store i64 9223372036854775807, i64* %19, align 8, !dbg !1192
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1193, metadata !237), !dbg !1194
  store i32 0, i32* %20, align 4, !dbg !1194
  %21 = load i8*, i8** %10, align 8, !dbg !1195
  store i8 0, i8* %21, align 1, !dbg !1196
  %22 = load i64*, i64** %11, align 8, !dbg !1197
  store i64 0, i64* %22, align 8, !dbg !1198
  %23 = load i64*, i64** %9, align 8, !dbg !1199
  store i64 0, i64* %23, align 8, !dbg !1200
  %24 = load i64*, i64** %8, align 8, !dbg !1201
  store i64 0, i64* %24, align 8, !dbg !1202
  %25 = load i64*, i64** %7, align 8, !dbg !1203
  store i64 0, i64* %25, align 8, !dbg !1204
  %26 = call i32 @TimeSyncReadHost(i64* %13, i64* %16, i8* %18, i64* %17), !dbg !1205
  %27 = icmp ne i32 %26, 0, !dbg !1205
  br i1 %27, label %29, label %28, !dbg !1207

; <label>:28:                                     ; preds = %5
  store i32 0, i32* %6, align 4, !dbg !1208
  br label %80, !dbg !1208

; <label>:29:                                     ; preds = %5
  br label %30, !dbg !1210, !llvm.loop !1211

; <label>:30:                                     ; preds = %77, %29
  %31 = load i32, i32* %20, align 4, !dbg !1212
  %32 = add nsw i32 %31, 1, !dbg !1212
  store i32 %32, i32* %20, align 4, !dbg !1212
  %33 = load i64, i64* %13, align 8, !dbg !1214
  store i64 %33, i64* %12, align 8, !dbg !1215
  %34 = call signext i8 @TimeSync_GetCurrentTime(i64* %15), !dbg !1216
  %35 = icmp ne i8 %34, 0, !dbg !1216
  br i1 %35, label %38, label %36, !dbg !1218

; <label>:36:                                     ; preds = %30
  %37 = call i8* @Err_ErrString(), !dbg !1219
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i32 0, i32 0), i8* %37), !dbg !1221
  store i32 0, i32* %6, align 4, !dbg !1223
  br label %80, !dbg !1223

; <label>:38:                                     ; preds = %30
  %39 = call i32 @TimeSyncReadHost(i64* %13, i64* %16, i8* %18, i64* %17), !dbg !1224
  %40 = icmp ne i32 %39, 0, !dbg !1224
  br i1 %40, label %42, label %41, !dbg !1226

; <label>:41:                                     ; preds = %38
  store i32 0, i32* %6, align 4, !dbg !1227
  br label %80, !dbg !1227

; <label>:42:                                     ; preds = %38
  %43 = load i64, i64* %12, align 8, !dbg !1229
  %44 = load i64, i64* %13, align 8, !dbg !1231
  %45 = icmp slt i64 %43, %44, !dbg !1232
  br i1 %45, label %46, label %50, !dbg !1233

; <label>:46:                                     ; preds = %42
  %47 = load i64, i64* %13, align 8, !dbg !1234
  %48 = load i64, i64* %12, align 8, !dbg !1236
  %49 = sub nsw i64 %47, %48, !dbg !1237
  store i64 %49, i64* %14, align 8, !dbg !1238
  br label %51, !dbg !1239

; <label>:50:                                     ; preds = %42
  store i64 0, i64* %14, align 8, !dbg !1240
  br label %51

; <label>:51:                                     ; preds = %50, %46
  %52 = load i64, i64* %14, align 8, !dbg !1242
  %53 = load i64, i64* %19, align 8, !dbg !1244
  %54 = icmp sle i64 %52, %53, !dbg !1245
  br i1 %54, label %55, label %70, !dbg !1246

; <label>:55:                                     ; preds = %51
  %56 = load i64, i64* %14, align 8, !dbg !1247
  store i64 %56, i64* %19, align 8, !dbg !1249
  %57 = load i64, i64* %12, align 8, !dbg !1250
  %58 = load i64, i64* %14, align 8, !dbg !1251
  %59 = sdiv i64 %58, 2, !dbg !1252
  %60 = add nsw i64 %57, %59, !dbg !1253
  %61 = load i64*, i64** %7, align 8, !dbg !1254
  store i64 %60, i64* %61, align 8, !dbg !1255
  %62 = load i64, i64* %15, align 8, !dbg !1256
  %63 = load i64*, i64** %8, align 8, !dbg !1257
  store i64 %62, i64* %63, align 8, !dbg !1258
  %64 = load i64, i64* %16, align 8, !dbg !1259
  %65 = load i64*, i64** %9, align 8, !dbg !1260
  store i64 %64, i64* %65, align 8, !dbg !1261
  %66 = load i8, i8* %18, align 1, !dbg !1262
  %67 = load i8*, i8** %10, align 8, !dbg !1263
  store i8 %66, i8* %67, align 1, !dbg !1264
  %68 = load i64, i64* %17, align 8, !dbg !1265
  %69 = load i64*, i64** %11, align 8, !dbg !1266
  store i64 %68, i64* %69, align 8, !dbg !1267
  br label %70, !dbg !1268

; <label>:70:                                     ; preds = %55, %51
  br label %71, !dbg !1269

; <label>:71:                                     ; preds = %70
  %72 = load i32, i32* %20, align 4, !dbg !1270
  %73 = icmp slt i32 %72, 4, !dbg !1272
  br i1 %73, label %74, label %77, !dbg !1273

; <label>:74:                                     ; preds = %71
  %75 = load i64, i64* %19, align 8, !dbg !1274
  %76 = icmp sgt i64 %75, 2000, !dbg !1275
  br label %77

; <label>:77:                                     ; preds = %74, %71
  %78 = phi i1 [ false, %71 ], [ %76, %74 ]
  br i1 %78, label %30, label %79, !dbg !1276, !llvm.loop !1211

; <label>:79:                                     ; preds = %77
  store i32 1, i32* %6, align 4, !dbg !1278
  br label %80, !dbg !1278

; <label>:80:                                     ; preds = %79, %41, %36, %28
  %81 = load i32, i32* %6, align 4, !dbg !1279
  ret i32 %81, !dbg !1279
}

declare signext i8 @TimeSync_IsGuestSyncServiceRunning() #2

declare signext i8 @TimeSync_DoGuestResync(i8*) #2

declare %struct._GSource* @g_timeout_source_new(i32) #2

declare void @g_source_set_callback(%struct._GSource*, i32 (i8*)*, i8*, void (i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @TimeSyncGuestResyncTimeoutHandler(i8*) #0 !dbg !1280 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TimeSyncData*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1281, metadata !237), !dbg !1282
  call void @llvm.dbg.declare(metadata %struct.TimeSyncData** %3, metadata !1283, metadata !237), !dbg !1284
  %4 = load i8*, i8** %2, align 8, !dbg !1285
  %5 = bitcast i8* %4 to %struct.TimeSyncData*, !dbg !1285
  store %struct.TimeSyncData* %5, %struct.TimeSyncData** %3, align 8, !dbg !1284
  %6 = load %struct.TimeSyncData*, %struct.TimeSyncData** %3, align 8, !dbg !1286
  %7 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %6, i32 0, i32 9, !dbg !1287
  %8 = load %struct._GSource*, %struct._GSource** %7, align 8, !dbg !1287
  call void @g_source_destroy(%struct._GSource* %8), !dbg !1288
  %9 = load %struct.TimeSyncData*, %struct.TimeSyncData** %3, align 8, !dbg !1289
  %10 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %9, i32 0, i32 9, !dbg !1290
  %11 = load %struct._GSource*, %struct._GSource** %10, align 8, !dbg !1290
  call void @g_source_unref(%struct._GSource* %11), !dbg !1291
  %12 = load %struct.TimeSyncData*, %struct.TimeSyncData** %3, align 8, !dbg !1292
  %13 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %12, i32 0, i32 9, !dbg !1293
  store %struct._GSource* null, %struct._GSource** %13, align 8, !dbg !1294
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.23, i32 0, i32 0)), !dbg !1295
  %14 = load %struct.TimeSyncData*, %struct.TimeSyncData** %3, align 8, !dbg !1296
  %15 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %14, i32 0, i32 1, !dbg !1297
  %16 = load i32, i32* %15, align 4, !dbg !1297
  %17 = trunc i32 %16 to i8, !dbg !1296
  %18 = load %struct.TimeSyncData*, %struct.TimeSyncData** %3, align 8, !dbg !1298
  %19 = bitcast %struct.TimeSyncData* %18 to i8*, !dbg !1298
  %20 = call i32 @TimeSyncDoSync(i8 signext %17, i32 2, i8 signext 1, i8* %19), !dbg !1299
  ret i32 %20, !dbg !1300
}

declare i32 @g_source_attach(%struct._GSource*, %struct._GMainContext*) #2

declare %struct._GMainContext* @g_main_loop_get_context(%struct._GMainLoop*) #2

; Function Attrs: nounwind uwtable
define internal i32 @TimeSyncSlewTime(%struct.TimeSyncData*, i64) #0 !dbg !127 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TimeSyncData*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TimeSyncData* %0, %struct.TimeSyncData** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.TimeSyncData** %4, metadata !1301, metadata !237), !dbg !1302
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1303, metadata !237), !dbg !1304
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1305, metadata !237), !dbg !1306
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1307, metadata !237), !dbg !1308
  store i64 0, i64* %7, align 8, !dbg !1308
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1309, metadata !237), !dbg !1310
  %11 = load %struct.TimeSyncData*, %struct.TimeSyncData** %4, align 8, !dbg !1311
  %12 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %11, i32 0, i32 3, !dbg !1312
  %13 = load i32, i32* %12, align 4, !dbg !1312
  %14 = mul i32 %13, 1000000, !dbg !1313
  %15 = zext i32 %14 to i64, !dbg !1311
  store i64 %15, i64* %8, align 8, !dbg !1310
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1314, metadata !237), !dbg !1315
  %16 = load i64, i64* %5, align 8, !dbg !1316
  %17 = load %struct.TimeSyncData*, %struct.TimeSyncData** %4, align 8, !dbg !1317
  %18 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %17, i32 0, i32 2, !dbg !1318
  %19 = load i32, i32* %18, align 8, !dbg !1318
  %20 = zext i32 %19 to i64, !dbg !1317
  %21 = mul nsw i64 %16, %20, !dbg !1319
  %22 = sdiv i64 %21, 100, !dbg !1320
  store i64 %22, i64* %9, align 8, !dbg !1315
  %23 = call signext i8 @TimeSync_GetCurrentTime(i64* %6), !dbg !1321
  %24 = icmp ne i8 %23, 0, !dbg !1321
  br i1 %24, label %26, label %25, !dbg !1323

; <label>:25:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !1324
  br label %158, !dbg !1324

; <label>:26:                                     ; preds = %2
  %27 = load i64, i64* %5, align 8, !dbg !1326
  %28 = icmp slt i64 %27, 0, !dbg !1328
  br i1 %28, label %29, label %32, !dbg !1329

; <label>:29:                                     ; preds = %26
  %30 = load i64, i64* %5, align 8, !dbg !1330
  %31 = sub nsw i64 0, %30, !dbg !1332
  br label %34, !dbg !1333

; <label>:32:                                     ; preds = %26
  %33 = load i64, i64* %5, align 8, !dbg !1334
  br label %34, !dbg !1336

; <label>:34:                                     ; preds = %32, %29
  %35 = phi i64 [ %31, %29 ], [ %33, %32 ], !dbg !1337
  %36 = icmp sgt i64 %35, 60000, !dbg !1339
  br i1 %36, label %37, label %46, !dbg !1340

; <label>:37:                                     ; preds = %34
  %38 = load %struct.TimeSyncData*, %struct.TimeSyncData** %4, align 8, !dbg !1341
  %39 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %38, i32 0, i32 5, !dbg !1342
  %40 = load i32, i32* %39, align 4, !dbg !1342
  %41 = icmp ne i32 %40, 0, !dbg !1343
  br i1 %41, label %42, label %46, !dbg !1344

; <label>:42:                                     ; preds = %37
  %43 = load i64, i64* %5, align 8, !dbg !1346
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.24, i32 0, i32 0), i64 %43), !dbg !1348
  %44 = load %struct.TimeSyncData*, %struct.TimeSyncData** %4, align 8, !dbg !1349
  %45 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %44, i32 0, i32 5, !dbg !1350
  store i32 0, i32* %45, align 4, !dbg !1351
  br label %46, !dbg !1352

; <label>:46:                                     ; preds = %42, %37, %34
  %47 = load %struct.TimeSyncData*, %struct.TimeSyncData** %4, align 8, !dbg !1353
  %48 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %47, i32 0, i32 5, !dbg !1355
  %49 = load i32, i32* %48, align 4, !dbg !1355
  %50 = icmp eq i32 %49, 0, !dbg !1356
  br i1 %50, label %51, label %83, !dbg !1357

; <label>:51:                                     ; preds = %46
  %52 = load i64, i64* %5, align 8, !dbg !1358
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i32 0, i32 0), i64 %52), !dbg !1360
  %53 = load i64, i64* %9, align 8, !dbg !1361
  %54 = load i64, i64* %8, align 8, !dbg !1363
  %55 = call signext i8 @TimeSync_Slew(i64 %53, i64 %54, i64* %7), !dbg !1364
  %56 = icmp ne i8 %55, 0, !dbg !1364
  br i1 %56, label %60, label %57, !dbg !1365

; <label>:57:                                     ; preds = %51
  %58 = load %struct.TimeSyncData*, %struct.TimeSyncData** %4, align 8, !dbg !1366
  %59 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %58, i32 0, i32 5, !dbg !1368
  store i32 0, i32* %59, align 4, !dbg !1369
  store i32 0, i32* %3, align 4, !dbg !1370
  br label %158, !dbg !1370

; <label>:60:                                     ; preds = %51
  %61 = load i64, i64* %5, align 8, !dbg !1371
  %62 = icmp slt i64 %61, 0, !dbg !1373
  br i1 %62, label %63, label %66, !dbg !1374

; <label>:63:                                     ; preds = %60
  %64 = load i64, i64* %5, align 8, !dbg !1375
  %65 = sub nsw i64 0, %64, !dbg !1377
  br label %68, !dbg !1378

; <label>:66:                                     ; preds = %60
  %67 = load i64, i64* %5, align 8, !dbg !1379
  br label %68, !dbg !1381

; <label>:68:                                     ; preds = %66, %63
  %69 = phi i64 [ %65, %63 ], [ %67, %66 ], !dbg !1382
  %70 = icmp slt i64 %69, 30000, !dbg !1384
  br i1 %70, label %71, label %82, !dbg !1385

; <label>:71:                                     ; preds = %68
  %72 = call signext i8 @TimeSync_PLLSupported(), !dbg !1386
  %73 = sext i8 %72 to i32, !dbg !1386
  %74 = icmp ne i32 %73, 0, !dbg !1386
  br i1 %74, label %75, label %82, !dbg !1388

; <label>:75:                                     ; preds = %71
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0)), !dbg !1389
  %76 = load i64, i64* %6, align 8, !dbg !1391
  store i64 %76, i64* @TimeSyncSlewTime.calibrationStart, align 8, !dbg !1392
  %77 = load i64, i64* %9, align 8, !dbg !1393
  %78 = load i64, i64* %5, align 8, !dbg !1394
  %79 = sub nsw i64 %77, %78, !dbg !1395
  store i64 %79, i64* @TimeSyncSlewTime.calibrationAdjustment, align 8, !dbg !1396
  %80 = load %struct.TimeSyncData*, %struct.TimeSyncData** %4, align 8, !dbg !1397
  %81 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %80, i32 0, i32 5, !dbg !1398
  store i32 1, i32* %81, align 4, !dbg !1399
  br label %82, !dbg !1400

; <label>:82:                                     ; preds = %75, %71, %68
  br label %157, !dbg !1401

; <label>:83:                                     ; preds = %46
  %84 = load %struct.TimeSyncData*, %struct.TimeSyncData** %4, align 8, !dbg !1402
  %85 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %84, i32 0, i32 5, !dbg !1405
  %86 = load i32, i32* %85, align 4, !dbg !1405
  %87 = icmp eq i32 %86, 1, !dbg !1406
  br i1 %87, label %88, label %148, !dbg !1402

; <label>:88:                                     ; preds = %83
  %89 = load i64, i64* %6, align 8, !dbg !1407
  %90 = load i64, i64* @TimeSyncSlewTime.calibrationStart, align 8, !dbg !1410
  %91 = add nsw i64 %90, 900000000, !dbg !1411
  %92 = icmp sgt i64 %89, %91, !dbg !1412
  br i1 %92, label %93, label %133, !dbg !1413

; <label>:93:                                     ; preds = %88
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1414, metadata !237), !dbg !1416
  %94 = load i64, i64* %8, align 8, !dbg !1417
  %95 = call signext i8 @TimeSync_Slew(i64 0, i64 %94, i64* %7), !dbg !1418
  %96 = load i64, i64* %5, align 8, !dbg !1419
  %97 = load i64, i64* @TimeSyncSlewTime.calibrationAdjustment, align 8, !dbg !1420
  %98 = add nsw i64 %97, %96, !dbg !1420
  store i64 %98, i64* @TimeSyncSlewTime.calibrationAdjustment, align 8, !dbg !1420
  %99 = load i64, i64* %7, align 8, !dbg !1421
  %100 = load i64, i64* @TimeSyncSlewTime.calibrationAdjustment, align 8, !dbg !1422
  %101 = sub nsw i64 %100, %99, !dbg !1422
  store i64 %101, i64* @TimeSyncSlewTime.calibrationAdjustment, align 8, !dbg !1422
  %102 = load i64, i64* @TimeSyncSlewTime.calibrationAdjustment, align 8, !dbg !1423
  %103 = mul nsw i64 1000000, %102, !dbg !1424
  %104 = shl i64 %103, 16, !dbg !1425
  %105 = load i64, i64* %6, align 8, !dbg !1426
  %106 = load i64, i64* @TimeSyncSlewTime.calibrationStart, align 8, !dbg !1427
  %107 = sub nsw i64 %105, %106, !dbg !1428
  %108 = sdiv i64 %104, %107, !dbg !1429
  store i64 %108, i64* %10, align 8, !dbg !1430
  %109 = load i64, i64* %10, align 8, !dbg !1431
  %110 = ashr i64 %109, 16, !dbg !1433
  %111 = icmp slt i64 %110, 500, !dbg !1434
  br i1 %111, label %112, label %126, !dbg !1435

; <label>:112:                                    ; preds = %93
  %113 = load i64, i64* %10, align 8, !dbg !1436
  %114 = ashr i64 %113, 16, !dbg !1438
  %115 = icmp sgt i64 %114, -500, !dbg !1439
  br i1 %115, label %116, label %126, !dbg !1440

; <label>:116:                                    ; preds = %112
  %117 = load i64, i64* %10, align 8, !dbg !1441
  %118 = ashr i64 %117, 16, !dbg !1443
  %119 = load i64, i64* %10, align 8, !dbg !1444
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i32 0, i32 0), i64 %118, i64 %119), !dbg !1445
  %120 = load i64, i64* %5, align 8, !dbg !1446
  %121 = call signext i8 @TimeSync_PLLUpdate(i64 %120), !dbg !1447
  %122 = load i64, i64* %10, align 8, !dbg !1448
  %123 = call signext i8 @TimeSync_PLLSetFrequency(i64 %122), !dbg !1449
  %124 = load %struct.TimeSyncData*, %struct.TimeSyncData** %4, align 8, !dbg !1450
  %125 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %124, i32 0, i32 5, !dbg !1451
  store i32 2, i32* %125, align 4, !dbg !1452
  br label %132, !dbg !1453

; <label>:126:                                    ; preds = %112, %93
  %127 = load i64, i64* %10, align 8, !dbg !1454
  %128 = ashr i64 %127, 16, !dbg !1456
  %129 = load i64, i64* %10, align 8, !dbg !1457
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i32 0, i32 0), i64 %128, i64 %129), !dbg !1458
  %130 = load %struct.TimeSyncData*, %struct.TimeSyncData** %4, align 8, !dbg !1459
  %131 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %130, i32 0, i32 5, !dbg !1460
  store i32 0, i32* %131, align 4, !dbg !1461
  br label %132

; <label>:132:                                    ; preds = %126, %116
  br label %147, !dbg !1462

; <label>:133:                                    ; preds = %88
  %134 = load i64, i64* %5, align 8, !dbg !1463
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i32 0, i32 0), i64 %134), !dbg !1465
  %135 = load i64, i64* %9, align 8, !dbg !1466
  %136 = load i64, i64* %8, align 8, !dbg !1468
  %137 = call signext i8 @TimeSync_Slew(i64 %135, i64 %136, i64* %7), !dbg !1469
  %138 = icmp ne i8 %137, 0, !dbg !1469
  br i1 %138, label %140, label %139, !dbg !1470

; <label>:139:                                    ; preds = %133
  store i32 0, i32* %3, align 4, !dbg !1471
  br label %158, !dbg !1471

; <label>:140:                                    ; preds = %133
  %141 = load i64, i64* %9, align 8, !dbg !1473
  %142 = load i64, i64* @TimeSyncSlewTime.calibrationAdjustment, align 8, !dbg !1474
  %143 = add nsw i64 %142, %141, !dbg !1474
  store i64 %143, i64* @TimeSyncSlewTime.calibrationAdjustment, align 8, !dbg !1474
  %144 = load i64, i64* %7, align 8, !dbg !1475
  %145 = load i64, i64* @TimeSyncSlewTime.calibrationAdjustment, align 8, !dbg !1476
  %146 = sub nsw i64 %145, %144, !dbg !1476
  store i64 %146, i64* @TimeSyncSlewTime.calibrationAdjustment, align 8, !dbg !1476
  br label %147

; <label>:147:                                    ; preds = %140, %132
  br label %156, !dbg !1477

; <label>:148:                                    ; preds = %83
  %149 = load i64, i64* %5, align 8, !dbg !1478
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i32 0, i32 0), i64 %149), !dbg !1480
  %150 = load i64, i64* %5, align 8, !dbg !1481
  %151 = call signext i8 @TimeSync_PLLUpdate(i64 %150), !dbg !1483
  %152 = icmp ne i8 %151, 0, !dbg !1483
  br i1 %152, label %155, label %153, !dbg !1484

; <label>:153:                                    ; preds = %148
  %154 = load %struct.TimeSyncData*, %struct.TimeSyncData** %4, align 8, !dbg !1485
  call void @TimeSyncResetSlew(%struct.TimeSyncData* %154), !dbg !1487
  br label %155, !dbg !1488

; <label>:155:                                    ; preds = %153, %148
  br label %156

; <label>:156:                                    ; preds = %155, %147
  br label %157

; <label>:157:                                    ; preds = %156, %82
  store i32 1, i32* %3, align 4, !dbg !1489
  br label %158, !dbg !1489

; <label>:158:                                    ; preds = %157, %139, %57, %25
  %159 = load i32, i32* %3, align 4, !dbg !1490
  ret i32 %159, !dbg !1490
}

; Function Attrs: nounwind uwtable
define internal i32 @TimeSyncReadHost(i64*, i64*, i8*, i64*) #0 !dbg !1491 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %union.Backdoor_proto, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8, align 1
  store i64* %0, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !1494, metadata !237), !dbg !1495
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !1496, metadata !237), !dbg !1497
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1498, metadata !237), !dbg !1499
  store i64* %3, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !1500, metadata !237), !dbg !1501
  call void @llvm.dbg.declare(metadata %union.Backdoor_proto* %10, metadata !1502, metadata !237), !dbg !1503
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1504, metadata !237), !dbg !1505
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1506, metadata !237), !dbg !1507
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1508, metadata !237), !dbg !1509
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1510, metadata !237), !dbg !1511
  call void @llvm.dbg.declare(metadata i8* %15, metadata !1512, metadata !237), !dbg !1513
  %16 = bitcast %union.Backdoor_proto* %10 to %struct.anon*, !dbg !1514
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 2, !dbg !1515
  %18 = bitcast %union.anon.2* %17 to %struct.anon.3*, !dbg !1516
  %19 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %18, i32 0, i32 0, !dbg !1517
  store i16 55, i16* %19, align 8, !dbg !1518
  call void @Backdoor(%union.Backdoor_proto* %10), !dbg !1519
  %20 = bitcast %union.Backdoor_proto* %10 to %struct.anon.14*, !dbg !1520
  %21 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %20, i32 0, i32 0, !dbg !1522
  %22 = bitcast %union.anon.15* %21 to i32*, !dbg !1523
  %23 = load i32, i32* %22, align 8, !dbg !1523
  %24 = icmp eq i32 %23, 1447909480, !dbg !1524
  br i1 %24, label %25, label %43, !dbg !1525

; <label>:25:                                     ; preds = %4
  %26 = bitcast %union.Backdoor_proto* %10 to %struct.anon.14*, !dbg !1526
  %27 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %26, i32 0, i32 4, !dbg !1528
  %28 = bitcast %union.anon.27* %27 to i32*, !dbg !1529
  %29 = load i32, i32* %28, align 8, !dbg !1529
  %30 = zext i32 %29 to i64, !dbg !1530
  %31 = shl i64 %30, 32, !dbg !1531
  %32 = bitcast %union.Backdoor_proto* %10 to %struct.anon.14*, !dbg !1532
  %33 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %32, i32 0, i32 3, !dbg !1533
  %34 = bitcast %union.anon.24* %33 to i32*, !dbg !1534
  %35 = load i32, i32* %34, align 8, !dbg !1534
  %36 = zext i32 %35 to i64, !dbg !1535
  %37 = or i64 %31, %36, !dbg !1536
  store i64 %37, i64* %13, align 8, !dbg !1537
  %38 = bitcast %union.Backdoor_proto* %10 to %struct.anon.14*, !dbg !1538
  %39 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %38, i32 0, i32 5, !dbg !1539
  %40 = bitcast %union.anon.30* %39 to i32*, !dbg !1540
  %41 = load i32, i32* %40, align 8, !dbg !1540
  %42 = zext i32 %41 to i64, !dbg !1541
  store i64 %42, i64* %12, align 8, !dbg !1542
  store i8 1, i8* %15, align 1, !dbg !1543
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i32 0, i32 0)), !dbg !1544
  br label %77, !dbg !1545

; <label>:43:                                     ; preds = %4
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.20, i32 0, i32 0)), !dbg !1546
  store i64 0, i64* %12, align 8, !dbg !1548
  store i8 0, i8* %15, align 1, !dbg !1549
  %44 = bitcast %union.Backdoor_proto* %10 to %struct.anon*, !dbg !1550
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %44, i32 0, i32 2, !dbg !1551
  %46 = bitcast %union.anon.2* %45 to %struct.anon.3*, !dbg !1552
  %47 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %46, i32 0, i32 0, !dbg !1553
  store i16 46, i16* %47, align 8, !dbg !1554
  call void @Backdoor(%union.Backdoor_proto* %10), !dbg !1555
  %48 = bitcast %union.Backdoor_proto* %10 to %struct.anon.14*, !dbg !1556
  %49 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %48, i32 0, i32 0, !dbg !1558
  %50 = bitcast %union.anon.15* %49 to i32*, !dbg !1559
  %51 = load i32, i32* %50, align 8, !dbg !1559
  %52 = icmp eq i32 %51, 1447909480, !dbg !1560
  br i1 %52, label %53, label %66, !dbg !1561

; <label>:53:                                     ; preds = %43
  %54 = bitcast %union.Backdoor_proto* %10 to %struct.anon.14*, !dbg !1562
  %55 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %54, i32 0, i32 4, !dbg !1564
  %56 = bitcast %union.anon.27* %55 to i32*, !dbg !1565
  %57 = load i32, i32* %56, align 8, !dbg !1565
  %58 = zext i32 %57 to i64, !dbg !1566
  %59 = shl i64 %58, 32, !dbg !1567
  %60 = bitcast %union.Backdoor_proto* %10 to %struct.anon.14*, !dbg !1568
  %61 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %60, i32 0, i32 3, !dbg !1569
  %62 = bitcast %union.anon.24* %61 to i32*, !dbg !1570
  %63 = load i32, i32* %62, align 8, !dbg !1570
  %64 = zext i32 %63 to i64, !dbg !1571
  %65 = or i64 %59, %64, !dbg !1572
  store i64 %65, i64* %13, align 8, !dbg !1573
  br label %76, !dbg !1574

; <label>:66:                                     ; preds = %43
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.21, i32 0, i32 0)), !dbg !1575
  %67 = bitcast %union.Backdoor_proto* %10 to %struct.anon*, !dbg !1577
  %68 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 2, !dbg !1578
  %69 = bitcast %union.anon.2* %68 to %struct.anon.3*, !dbg !1579
  %70 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %69, i32 0, i32 0, !dbg !1580
  store i16 23, i16* %70, align 8, !dbg !1581
  call void @Backdoor(%union.Backdoor_proto* %10), !dbg !1582
  %71 = bitcast %union.Backdoor_proto* %10 to %struct.anon.14*, !dbg !1583
  %72 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %71, i32 0, i32 0, !dbg !1584
  %73 = bitcast %union.anon.15* %72 to i32*, !dbg !1585
  %74 = load i32, i32* %73, align 8, !dbg !1585
  %75 = zext i32 %74 to i64, !dbg !1586
  store i64 %75, i64* %13, align 8, !dbg !1587
  br label %76

; <label>:76:                                     ; preds = %66, %53
  br label %77

; <label>:77:                                     ; preds = %76, %25
  %78 = bitcast %union.Backdoor_proto* %10 to %struct.anon.14*, !dbg !1588
  %79 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %78, i32 0, i32 1, !dbg !1589
  %80 = bitcast %union.anon.18* %79 to i32*, !dbg !1590
  %81 = load i32, i32* %80, align 8, !dbg !1590
  %82 = zext i32 %81 to i64, !dbg !1591
  store i64 %82, i64* %14, align 8, !dbg !1592
  %83 = bitcast %union.Backdoor_proto* %10 to %struct.anon.14*, !dbg !1593
  %84 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %83, i32 0, i32 2, !dbg !1594
  %85 = bitcast %union.anon.21* %84 to i32*, !dbg !1595
  %86 = load i32, i32* %85, align 8, !dbg !1595
  %87 = zext i32 %86 to i64, !dbg !1596
  store i64 %87, i64* %11, align 8, !dbg !1597
  %88 = load i64, i64* %13, align 8, !dbg !1598
  %89 = mul nsw i64 %88, 1000000, !dbg !1599
  %90 = load i64, i64* %14, align 8, !dbg !1600
  %91 = add nsw i64 %89, %90, !dbg !1601
  %92 = load i64*, i64** %6, align 8, !dbg !1602
  store i64 %91, i64* %92, align 8, !dbg !1603
  %93 = load i64, i64* %12, align 8, !dbg !1604
  %94 = sub nsw i64 0, %93, !dbg !1605
  %95 = load i64*, i64** %7, align 8, !dbg !1606
  store i64 %94, i64* %95, align 8, !dbg !1607
  %96 = load i8, i8* %15, align 1, !dbg !1608
  %97 = load i8*, i8** %8, align 8, !dbg !1609
  store i8 %96, i8* %97, align 1, !dbg !1610
  %98 = load i64, i64* %11, align 8, !dbg !1611
  %99 = load i64*, i64** %9, align 8, !dbg !1612
  store i64 %98, i64* %99, align 8, !dbg !1613
  %100 = load i64, i64* %13, align 8, !dbg !1614
  %101 = icmp sle i64 %100, 0, !dbg !1616
  br i1 %101, label %102, label %105, !dbg !1617

; <label>:102:                                    ; preds = %77
  %103 = load i64, i64* %13, align 8, !dbg !1618
  %104 = load i64, i64* %14, align 8, !dbg !1620
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i32 0, i32 0), i64 %103, i64 %104), !dbg !1621
  store i32 0, i32* %5, align 4, !dbg !1622
  br label %106, !dbg !1622

; <label>:105:                                    ; preds = %77
  store i32 1, i32* %5, align 4, !dbg !1623
  br label %106, !dbg !1623

; <label>:106:                                    ; preds = %105, %102
  %107 = load i32, i32* %5, align 4, !dbg !1624
  ret i32 %107, !dbg !1624
}

declare signext i8 @TimeSync_GetCurrentTime(i64*) #2

declare i8* @Err_ErrString() #2

declare void @g_source_destroy(%struct._GSource*) #2

declare void @g_source_unref(%struct._GSource*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @ParseBoolOption(i8*, i32*) #0 !dbg !1625 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1629, metadata !237), !dbg !1630
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1631, metadata !237), !dbg !1632
  %6 = load i8*, i8** %4, align 8, !dbg !1633
  %7 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i32 0, i32 0)) #5, !dbg !1635
  %8 = icmp eq i32 %7, 0, !dbg !1636
  br i1 %8, label %9, label %11, !dbg !1637

; <label>:9:                                      ; preds = %2
  %10 = load i32*, i32** %5, align 8, !dbg !1638
  store i32 1, i32* %10, align 4, !dbg !1640
  br label %19, !dbg !1641

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !1642
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0)) #5, !dbg !1645
  %14 = icmp eq i32 %13, 0, !dbg !1646
  br i1 %14, label %15, label %17, !dbg !1645

; <label>:15:                                     ; preds = %11
  %16 = load i32*, i32** %5, align 8, !dbg !1647
  store i32 0, i32* %16, align 4, !dbg !1649
  br label %18, !dbg !1650

; <label>:17:                                     ; preds = %11
  store i32 0, i32* %3, align 4, !dbg !1651
  br label %20, !dbg !1651

; <label>:18:                                     ; preds = %15
  br label %19

; <label>:19:                                     ; preds = %18, %9
  store i32 1, i32* %3, align 4, !dbg !1653
  br label %20, !dbg !1653

; <label>:20:                                     ; preds = %19, %17
  %21 = load i32, i32* %3, align 4, !dbg !1654
  ret i32 %21, !dbg !1654
}

; Function Attrs: nounwind uwtable
define internal signext i8 @TimeSyncStartLoop(%struct.ToolsAppCtx*, %struct.TimeSyncData*) #0 !dbg !1655 {
  %3 = alloca %struct.ToolsAppCtx*, align 8
  %4 = alloca %struct.TimeSyncData*, align 8
  %5 = alloca %struct._GSource*, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %3, metadata !1658, metadata !237), !dbg !1659
  store %struct.TimeSyncData* %1, %struct.TimeSyncData** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.TimeSyncData** %4, metadata !1660, metadata !237), !dbg !1661
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i32 0, i32 0)), !dbg !1662
  %6 = load %struct.TimeSyncData*, %struct.TimeSyncData** %4, align 8, !dbg !1663
  call void @TimeSyncResetSlew(%struct.TimeSyncData* %6), !dbg !1664
  %7 = load %struct.TimeSyncData*, %struct.TimeSyncData** %4, align 8, !dbg !1665
  %8 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %7, i32 0, i32 3, !dbg !1666
  %9 = load i32, i32* %8, align 4, !dbg !1666
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i32 0, i32 0), i32 %9), !dbg !1667
  %10 = load %struct.TimeSyncData*, %struct.TimeSyncData** %4, align 8, !dbg !1668
  %11 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %10, i32 0, i32 1, !dbg !1670
  %12 = load i32, i32* %11, align 4, !dbg !1670
  %13 = trunc i32 %12 to i8, !dbg !1668
  %14 = load %struct.TimeSyncData*, %struct.TimeSyncData** %4, align 8, !dbg !1671
  %15 = bitcast %struct.TimeSyncData* %14 to i8*, !dbg !1671
  %16 = call i32 @TimeSyncDoSync(i8 signext %13, i32 1, i8 signext 0, i8* %15), !dbg !1672
  %17 = icmp ne i32 %16, 0, !dbg !1672
  br i1 %17, label %19, label %18, !dbg !1673

; <label>:18:                                     ; preds = %2
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.50, i32 0, i32 0)), !dbg !1674
  br label %19, !dbg !1676

; <label>:19:                                     ; preds = %18, %2
  %20 = load %struct.TimeSyncData*, %struct.TimeSyncData** %4, align 8, !dbg !1677
  %21 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %20, i32 0, i32 3, !dbg !1678
  %22 = load i32, i32* %21, align 4, !dbg !1678
  %23 = mul i32 %22, 1000, !dbg !1679
  %24 = call %struct._GSource* @g_timeout_source_new(i32 %23), !dbg !1680
  %25 = load %struct.TimeSyncData*, %struct.TimeSyncData** %4, align 8, !dbg !1681
  %26 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %25, i32 0, i32 6, !dbg !1682
  store %struct._GSource* %24, %struct._GSource** %26, align 8, !dbg !1683
  br label %27, !dbg !1684, !llvm.loop !1685

; <label>:27:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata %struct._GSource** %5, metadata !1686, metadata !237), !dbg !1688
  %28 = load %struct.TimeSyncData*, %struct.TimeSyncData** %4, align 8, !dbg !1689
  %29 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %28, i32 0, i32 6, !dbg !1691
  %30 = load %struct._GSource*, %struct._GSource** %29, align 8, !dbg !1691
  store %struct._GSource* %30, %struct._GSource** %5, align 8, !dbg !1692
  %31 = load %struct._GSource*, %struct._GSource** %5, align 8, !dbg !1693
  %32 = load %struct.TimeSyncData*, %struct.TimeSyncData** %4, align 8, !dbg !1694
  %33 = bitcast %struct.TimeSyncData* %32 to i8*, !dbg !1695
  call void @g_source_set_callback(%struct._GSource* %31, i32 (i8*)* @ToolsDaemonTimeSyncLoop, i8* %33, void (i8*)* null), !dbg !1696
  %34 = load %struct._GSource*, %struct._GSource** %5, align 8, !dbg !1697
  %35 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !1698
  %36 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %35, i32 0, i32 4, !dbg !1699
  %37 = load %struct._GMainLoop*, %struct._GMainLoop** %36, align 8, !dbg !1699
  %38 = call %struct._GMainContext* @g_main_loop_get_context(%struct._GMainLoop* %37), !dbg !1700
  %39 = call i32 @g_source_attach(%struct._GSource* %34, %struct._GMainContext* %38), !dbg !1702
  br label %40, !dbg !1704

; <label>:40:                                     ; preds = %27
  %41 = load %struct.TimeSyncData*, %struct.TimeSyncData** %4, align 8, !dbg !1705
  %42 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %41, i32 0, i32 4, !dbg !1706
  store i32 2, i32* %42, align 8, !dbg !1707
  ret i8 1, !dbg !1708
}

; Function Attrs: nounwind uwtable
define internal void @TimeSyncStopLoop(%struct.ToolsAppCtx*, %struct.TimeSyncData*) #0 !dbg !1709 {
  %3 = alloca %struct.ToolsAppCtx*, align 8
  %4 = alloca %struct.TimeSyncData*, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %3, metadata !1712, metadata !237), !dbg !1713
  store %struct.TimeSyncData* %1, %struct.TimeSyncData** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.TimeSyncData** %4, metadata !1714, metadata !237), !dbg !1715
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i32 0, i32 0)), !dbg !1716
  %5 = load %struct.TimeSyncData*, %struct.TimeSyncData** %4, align 8, !dbg !1717
  call void @TimeSyncSetSlewState(%struct.TimeSyncData* %5, i32 0), !dbg !1718
  %6 = call signext i8 @TimeSync_DisableTimeSlew(), !dbg !1719
  %7 = load %struct.TimeSyncData*, %struct.TimeSyncData** %4, align 8, !dbg !1720
  %8 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %7, i32 0, i32 6, !dbg !1721
  %9 = load %struct._GSource*, %struct._GSource** %8, align 8, !dbg !1721
  call void @g_source_destroy(%struct._GSource* %9), !dbg !1722
  %10 = load %struct.TimeSyncData*, %struct.TimeSyncData** %4, align 8, !dbg !1723
  %11 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %10, i32 0, i32 6, !dbg !1724
  %12 = load %struct._GSource*, %struct._GSource** %11, align 8, !dbg !1724
  call void @g_source_unref(%struct._GSource* %12), !dbg !1725
  %13 = load %struct.TimeSyncData*, %struct.TimeSyncData** %4, align 8, !dbg !1726
  %14 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %13, i32 0, i32 6, !dbg !1727
  store %struct._GSource* null, %struct._GSource** %14, align 8, !dbg !1728
  %15 = load %struct.TimeSyncData*, %struct.TimeSyncData** %4, align 8, !dbg !1729
  %16 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %15, i32 0, i32 4, !dbg !1730
  store i32 1, i32* %16, align 8, !dbg !1731
  ret void, !dbg !1732
}

declare signext i8 @StrUtil_StrToInt(i32*, i8*) #2

declare signext i8 @StrUtil_StrToUint(i32*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ToolsDaemonTimeSyncLoop(i8*) #0 !dbg !1733 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TimeSyncData*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1734, metadata !237), !dbg !1735
  call void @llvm.dbg.declare(metadata %struct.TimeSyncData** %3, metadata !1736, metadata !237), !dbg !1737
  %4 = load i8*, i8** %2, align 8, !dbg !1738
  %5 = bitcast i8* %4 to %struct.TimeSyncData*, !dbg !1738
  store %struct.TimeSyncData* %5, %struct.TimeSyncData** %3, align 8, !dbg !1737
  %6 = load %struct.TimeSyncData*, %struct.TimeSyncData** %3, align 8, !dbg !1739
  %7 = getelementptr inbounds %struct.TimeSyncData, %struct.TimeSyncData* %6, i32 0, i32 1, !dbg !1741
  %8 = load i32, i32* %7, align 4, !dbg !1741
  %9 = trunc i32 %8 to i8, !dbg !1739
  %10 = load %struct.TimeSyncData*, %struct.TimeSyncData** %3, align 8, !dbg !1742
  %11 = bitcast %struct.TimeSyncData* %10 to i8*, !dbg !1742
  %12 = call i32 @TimeSyncDoSync(i8 signext %9, i32 1, i8 signext 0, i8* %11), !dbg !1743
  %13 = icmp ne i32 %12, 0, !dbg !1743
  br i1 %13, label %15, label %14, !dbg !1744

; <label>:14:                                     ; preds = %1
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i32 0, i32 0)), !dbg !1745
  br label %15, !dbg !1747

; <label>:15:                                     ; preds = %14, %1
  ret i32 1, !dbg !1748
}

declare signext i8 @TimeSync_DisableTimeSlew() #2

declare void @g_free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!232, !233}
!llvm.ident = !{!234}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41, globals: !58)
!1 = !DIFile(filename: "libtimeSync_la-timeSync.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1508")
!2 = !{!3, !9, !14, !18, !24, !36}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "TimeSyncState", file: !4, line: 153, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "timeSync.c", directory: "/home/lichi/Desktop/open-vm-tools/line1508")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "TIMESYNC_INITIALIZING", value: 0)
!7 = !DIEnumerator(name: "TIMESYNC_STOPPED", value: 1)
!8 = !DIEnumerator(name: "TIMESYNC_RUNNING", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "TimeSyncSlewState", file: !4, line: 159, size: 32, align: 32, elements: !10)
!10 = !{!11, !12, !13}
!11 = !DIEnumerator(name: "TimeSyncUncalibrated", value: 0)
!12 = !DIEnumerator(name: "TimeSyncCalibrating", value: 1)
!13 = !DIEnumerator(name: "TimeSyncPLL", value: 2)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 232, size: 32, align: 32, elements: !16)
!15 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/plugin.h", directory: "/home/lichi/Desktop/open-vm-tools/line1508")
!16 = !{!17}
!17 = !DIEnumerator(name: "TOOLS_CORE_API_V1", value: 1)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 339, size: 32, align: 32, elements: !19)
!19 = !{!20, !21, !22, !23}
!20 = !DIEnumerator(name: "TOOLS_APP_GUESTRPC", value: 1)
!21 = !DIEnumerator(name: "TOOLS_APP_SIGNALS", value: 2)
!22 = !DIEnumerator(name: "TOOLS_APP_PROVIDER", value: 3)
!23 = !DIEnumerator(name: "TOOLS_SVC_PROPERTY", value: 4)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 51, size: 32, align: 32, elements: !26)
!25 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1508")
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35}
!27 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!28 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!29 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!30 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!31 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!32 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!33 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!34 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!35 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "TimeSyncType", file: !4, line: 165, size: 32, align: 32, elements: !37)
!37 = !{!38, !39, !40}
!38 = !DIEnumerator(name: "TIMESYNC_STEP", value: 0)
!39 = !DIEnumerator(name: "TIMESYNC_PERIODIC", value: 1)
!40 = !DIEnumerator(name: "TIMESYNC_STEP_NORESYNC", value: 2)
!41 = !{!42, !43, !53}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !44, line: 155, baseType: !45)
!44 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line1508")
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !52}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !49, line: 50, baseType: !50)
!49 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1508")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !49, line: 49, baseType: !51)
!51 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !49, line: 77, baseType: !42)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !54, line: 171, baseType: !55)
!54 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1508")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !56, line: 55, baseType: !57)
!56 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1508")
!57 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!58 = !{!59, !65, !66, !126, !226, !227, !231}
!59 = distinct !DIGlobalVariable(name: "vm_version", scope: !0, file: !4, line: 128, type: !60, isLocal: false, isDefinition: true, variable: [20 x i8]* @vm_version)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 160, align: 8, elements: !63)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!63 = !{!64}
!64 = !DISubrange(count: 20)
!65 = distinct !DIGlobalVariable(name: "gTimeSyncToolsStartupAllowBackward", scope: !0, file: !4, line: 193, type: !48, isLocal: false, isDefinition: true, variable: i32* @gTimeSyncToolsStartupAllowBackward)
!66 = distinct !DIGlobalVariable(name: "regData", scope: !67, file: !4, line: 1036, type: !71, isLocal: true, isDefinition: true, variable: %struct.ToolsPluginData* @ToolsOnLoad.regData)
!67 = distinct !DISubprogram(name: "ToolsOnLoad", scope: !4, file: !4, line: 1034, type: !68, isLocal: false, isDefinition: true, scopeLine: 1035, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !125)
!68 = !DISubroutineType(types: !69)
!69 = !{!70, !92}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsPluginData", file: !15, line: 545, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsPluginData", file: !15, line: 501, size: 256, align: 64, elements: !73)
!73 = !{!74, !76, !88, !124}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !72, file: !15, line: 503, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !72, file: !15, line: 508, baseType: !77, size: 64, align: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "GArray", file: !79, line: 37, baseType: !80)
!79 = !DIFile(filename: "/usr/include/glib-2.0/glib/garray.h", directory: "/home/lichi/Desktop/open-vm-tools/line1508")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GArray", file: !79, line: 41, size: 128, align: 64, elements: !81)
!81 = !{!82, !85}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !80, file: !79, line: 43, baseType: !83, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !49, line: 46, baseType: !62)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !80, file: !79, line: 44, baseType: !86, size: 32, align: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !49, line: 55, baseType: !87)
!87 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "errorCb", scope: !72, file: !15, line: 539, baseType: !89, size: 64, align: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{!48, !92, !122, !52, !123}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppCtx", file: !15, line: 274, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppCtx", file: !15, line: 241, size: 576, align: 64, elements: !95)
!95 = !{!96, !98, !101, !102, !103, !107, !112, !117, !118, !119, !121}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !94, file: !15, line: 243, baseType: !97, size: 32, align: 32)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCoreAPI", file: !15, line: 234, baseType: !14)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !94, file: !15, line: 245, baseType: !99, size: 64, align: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "isVMware", scope: !94, file: !15, line: 247, baseType: !48, size: 32, align: 32, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "errorCode", scope: !94, file: !15, line: 249, baseType: !51, size: 32, align: 32, offset: 160)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "mainLoop", scope: !94, file: !15, line: 251, baseType: !104, size: 64, align: 64, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainLoop", file: !44, line: 56, baseType: !106)
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainLoop", file: !44, line: 56, flags: DIFlagFwdDecl)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !94, file: !15, line: 253, baseType: !108, size: 64, align: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !110, line: 48, baseType: !111)
!110 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line1508")
!111 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !110, line: 48, flags: DIFlagFwdDecl)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !94, file: !15, line: 255, baseType: !113, size: 64, align: 64, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !115, line: 48, baseType: !116)
!115 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1508")
!116 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !115, line: 48, flags: DIFlagFwdDecl)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "blockFD", scope: !94, file: !15, line: 261, baseType: !51, size: 32, align: 32, offset: 384)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "uinputFD", scope: !94, file: !15, line: 263, baseType: !51, size: 32, align: 32, offset: 416)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !94, file: !15, line: 265, baseType: !120, size: 64, align: 64, offset: 448)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "serviceObj", scope: !94, file: !15, line: 273, baseType: !52, size: 64, align: 64, offset: 512)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppType", file: !15, line: 360, baseType: !18)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !72, file: !15, line: 544, baseType: !52, size: 64, align: 64, offset: 192)
!125 = !{}
!126 = distinct !DIGlobalVariable(name: "calibrationStart", scope: !127, file: !4, line: 457, type: !223, isLocal: true, isDefinition: true, variable: i64* @TimeSyncSlewTime.calibrationStart)
!127 = distinct !DISubprogram(name: "TimeSyncSlewTime", scope: !4, file: !4, line: 455, type: !128, isLocal: true, isDefinition: true, scopeLine: 456, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !125)
!128 = !DISubroutineType(types: !129)
!129 = !{!48, !130, !223}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimeSyncData", file: !4, line: 183, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TimeSyncData", file: !4, line: 171, size: 448, align: 64, elements: !133)
!133 = !{!134, !135, !136, !139, !140, !142, !144, !219, !220, !221, !222}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "slewActive", scope: !132, file: !4, line: 172, baseType: !48, size: 32, align: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "slewCorrection", scope: !132, file: !4, line: 173, baseType: !48, size: 32, align: 32, offset: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "slewPercentCorrection", scope: !132, file: !4, line: 174, baseType: !137, size: 32, align: 32, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !54, line: 173, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !56, line: 51, baseType: !87)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "timeSyncPeriod", scope: !132, file: !4, line: 175, baseType: !137, size: 32, align: 32, offset: 96)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !132, file: !4, line: 176, baseType: !141, size: 32, align: 32, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimeSyncState", file: !4, line: 157, baseType: !3)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "slewState", scope: !132, file: !4, line: 177, baseType: !143, size: 32, align: 32, offset: 160)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimeSyncSlewState", file: !4, line: 163, baseType: !9)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !132, file: !4, line: 178, baseType: !145, size: 64, align: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !44, line: 64, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !44, line: 171, size: 768, align: 64, elements: !148)
!148 = !{!149, !150, !166, !195, !196, !200, !201, !202, !203, !211, !212, !213, !215}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !147, file: !44, line: 174, baseType: !52, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !147, file: !44, line: 175, baseType: !151, size: 64, align: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !44, line: 77, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !44, line: 196, size: 192, align: 64, elements: !154)
!154 = !{!155, !159, !160}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !153, file: !44, line: 198, baseType: !156, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !52}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !153, file: !44, line: 199, baseType: !156, size: 64, align: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !153, file: !44, line: 200, baseType: !161, size: 64, align: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !52, !145, !164, !165}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !147, file: !44, line: 177, baseType: !167, size: 64, align: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !44, line: 130, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !44, line: 214, size: 384, align: 64, elements: !171)
!171 = !{!172, !177, !181, !185, !189, !190}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !170, file: !44, line: 216, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!48, !145, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !170, file: !44, line: 218, baseType: !178, size: 64, align: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!48, !145}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !170, file: !44, line: 219, baseType: !182, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!48, !145, !43, !52}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !170, file: !44, line: 222, baseType: !186, size: 64, align: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !145}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !170, file: !44, line: 226, baseType: !43, size: 64, align: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !170, file: !44, line: 227, baseType: !191, size: 64, align: 64, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !44, line: 212, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{null}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !147, file: !44, line: 178, baseType: !86, size: 32, align: 32, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !147, file: !44, line: 180, baseType: !197, size: 64, align: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !44, line: 48, baseType: !199)
!199 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !44, line: 48, flags: DIFlagFwdDecl)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !147, file: !44, line: 182, baseType: !50, size: 32, align: 32, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !147, file: !44, line: 183, baseType: !86, size: 32, align: 32, offset: 352)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !147, file: !44, line: 184, baseType: !86, size: 32, align: 32, offset: 384)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !147, file: !44, line: 186, baseType: !204, size: 64, align: 64, offset: 448)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !206, line: 37, baseType: !207)
!206 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/open-vm-tools/line1508")
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !206, line: 39, size: 128, align: 64, elements: !208)
!208 = !{!209, !210}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !207, file: !206, line: 41, baseType: !52, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !207, file: !206, line: 42, baseType: !204, size: 64, align: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !147, file: !44, line: 188, baseType: !145, size: 64, align: 64, offset: 512)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !147, file: !44, line: 189, baseType: !145, size: 64, align: 64, offset: 576)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !147, file: !44, line: 191, baseType: !214, size: 64, align: 64, offset: 640)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !147, file: !44, line: 193, baseType: !216, size: 64, align: 64, offset: 704)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !44, line: 65, baseType: !218)
!218 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !44, line: 65, flags: DIFlagFwdDecl)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "guestResync", scope: !132, file: !4, line: 179, baseType: !48, size: 32, align: 32, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "guestResyncTimeout", scope: !132, file: !4, line: 180, baseType: !137, size: 32, align: 32, offset: 288)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "guestResyncTimer", scope: !132, file: !4, line: 181, baseType: !145, size: 64, align: 64, offset: 320)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !132, file: !4, line: 182, baseType: !92, size: 64, align: 64, offset: 384)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !54, line: 172, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !56, line: 40, baseType: !225)
!225 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!226 = distinct !DIGlobalVariable(name: "calibrationAdjustment", scope: !127, file: !4, line: 458, type: !223, isLocal: true, isDefinition: true, variable: i64* @TimeSyncSlewTime.calibrationAdjustment)
!227 = distinct !DIGlobalVariable(name: "syncBeforeLoop", scope: !228, file: !4, line: 875, type: !48, isLocal: true, isDefinition: true, variable: i32* @TimeSyncSetOption.syncBeforeLoop)
!228 = distinct !DISubprogram(name: "TimeSyncSetOption", scope: !4, file: !4, line: 869, type: !229, isLocal: true, isDefinition: true, scopeLine: 874, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !125)
!229 = !DISubroutineType(types: !230)
!230 = !{!48, !52, !92, !99, !99, !70}
!231 = distinct !DIGlobalVariable(name: "doneAlready", scope: !228, file: !4, line: 960, type: !48, isLocal: true, isDefinition: true, variable: i32* @TimeSyncSetOption.doneAlready)
!232 = !{i32 2, !"Dwarf Version", i32 4}
!233 = !{i32 2, !"Debug Info Version", i32 3}
!234 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!235 = distinct !DISubprogram(name: "TimeSyncStepTime", scope: !4, file: !4, line: 399, type: !128, isLocal: false, isDefinition: true, scopeLine: 400, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !125)
!236 = !DILocalVariable(name: "data", arg: 1, scope: !235, file: !4, line: 399, type: !130)
!237 = !DIExpression()
!238 = !DILocation(line: 399, column: 32, scope: !235)
!239 = !DILocalVariable(name: "adjustment", arg: 2, scope: !235, file: !4, line: 399, type: !223)
!240 = !DILocation(line: 399, column: 44, scope: !235)
!241 = !DILocalVariable(name: "bp", scope: !235, file: !4, line: 401, type: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "Backdoor_proto", file: !243, line: 102, baseType: !244)
!243 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/backdoor_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1508")
!244 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !243, line: 85, size: 384, align: 64, elements: !245)
!245 = !{!246, !330}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !244, file: !243, line: 93, baseType: !247, size: 384, align: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !244, file: !243, line: 86, size: 384, align: 64, elements: !248)
!248 = !{!249, !267, !270, !285, !300, !315}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !247, file: !243, line: 87, baseType: !250, size: 64, align: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !247, file: !243, line: 87, size: 64, align: 64, elements: !251)
!251 = !{!252, !260, !261, !266}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !250, file: !243, line: 87, baseType: !253, size: 32, align: 16)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !250, file: !243, line: 87, size: 32, align: 16, elements: !254)
!254 = !{!255, !259}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !253, file: !243, line: 87, baseType: !256, size: 16, align: 16)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !54, line: 175, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !56, line: 49, baseType: !258)
!258 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !253, file: !243, line: 87, baseType: !256, size: 16, align: 16, offset: 16)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !250, file: !243, line: 87, baseType: !137, size: 32, align: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !250, file: !243, line: 87, baseType: !262, size: 64, align: 32)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !250, file: !243, line: 87, size: 64, align: 32, elements: !263)
!263 = !{!264, !265}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !262, file: !243, line: 87, baseType: !137, size: 32, align: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !262, file: !243, line: 87, baseType: !137, size: 32, align: 32, offset: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !250, file: !243, line: 87, baseType: !53, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !247, file: !243, line: 88, baseType: !268, size: 64, align: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !269, line: 216, baseType: !57)
!269 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1508")
!270 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !247, file: !243, line: 89, baseType: !271, size: 64, align: 64, offset: 128)
!271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !247, file: !243, line: 89, size: 64, align: 64, elements: !272)
!272 = !{!273, !278, !279, !284}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !271, file: !243, line: 89, baseType: !274, size: 32, align: 16)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !271, file: !243, line: 89, size: 32, align: 16, elements: !275)
!275 = !{!276, !277}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !274, file: !243, line: 89, baseType: !256, size: 16, align: 16)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !274, file: !243, line: 89, baseType: !256, size: 16, align: 16, offset: 16)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !271, file: !243, line: 89, baseType: !137, size: 32, align: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !271, file: !243, line: 89, baseType: !280, size: 64, align: 32)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !271, file: !243, line: 89, size: 64, align: 32, elements: !281)
!281 = !{!282, !283}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !280, file: !243, line: 89, baseType: !137, size: 32, align: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !280, file: !243, line: 89, baseType: !137, size: 32, align: 32, offset: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !271, file: !243, line: 89, baseType: !53, size: 64, align: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !247, file: !243, line: 90, baseType: !286, size: 64, align: 64, offset: 192)
!286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !247, file: !243, line: 90, size: 64, align: 64, elements: !287)
!287 = !{!288, !293, !294, !299}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !286, file: !243, line: 90, baseType: !289, size: 32, align: 16)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !286, file: !243, line: 90, size: 32, align: 16, elements: !290)
!290 = !{!291, !292}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !289, file: !243, line: 90, baseType: !256, size: 16, align: 16)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !289, file: !243, line: 90, baseType: !256, size: 16, align: 16, offset: 16)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !286, file: !243, line: 90, baseType: !137, size: 32, align: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !286, file: !243, line: 90, baseType: !295, size: 64, align: 32)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !286, file: !243, line: 90, size: 64, align: 32, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !295, file: !243, line: 90, baseType: !137, size: 32, align: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !295, file: !243, line: 90, baseType: !137, size: 32, align: 32, offset: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !286, file: !243, line: 90, baseType: !53, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !247, file: !243, line: 91, baseType: !301, size: 64, align: 64, offset: 256)
!301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !247, file: !243, line: 91, size: 64, align: 64, elements: !302)
!302 = !{!303, !308, !309, !314}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !301, file: !243, line: 91, baseType: !304, size: 32, align: 16)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !301, file: !243, line: 91, size: 32, align: 16, elements: !305)
!305 = !{!306, !307}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !304, file: !243, line: 91, baseType: !256, size: 16, align: 16)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !304, file: !243, line: 91, baseType: !256, size: 16, align: 16, offset: 16)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !301, file: !243, line: 91, baseType: !137, size: 32, align: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !301, file: !243, line: 91, baseType: !310, size: 64, align: 32)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !301, file: !243, line: 91, size: 64, align: 32, elements: !311)
!311 = !{!312, !313}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !310, file: !243, line: 91, baseType: !137, size: 32, align: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !310, file: !243, line: 91, baseType: !137, size: 32, align: 32, offset: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !301, file: !243, line: 91, baseType: !53, size: 64, align: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !247, file: !243, line: 92, baseType: !316, size: 64, align: 64, offset: 320)
!316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !247, file: !243, line: 92, size: 64, align: 64, elements: !317)
!317 = !{!318, !323, !324, !329}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !316, file: !243, line: 92, baseType: !319, size: 32, align: 16)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !316, file: !243, line: 92, size: 32, align: 16, elements: !320)
!320 = !{!321, !322}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !319, file: !243, line: 92, baseType: !256, size: 16, align: 16)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !319, file: !243, line: 92, baseType: !256, size: 16, align: 16, offset: 16)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !316, file: !243, line: 92, baseType: !137, size: 32, align: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !316, file: !243, line: 92, baseType: !325, size: 64, align: 32)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !316, file: !243, line: 92, size: 64, align: 32, elements: !326)
!326 = !{!327, !328}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !325, file: !243, line: 92, baseType: !137, size: 32, align: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !325, file: !243, line: 92, baseType: !137, size: 32, align: 32, offset: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !316, file: !243, line: 92, baseType: !53, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !244, file: !243, line: 101, baseType: !331, size: 384, align: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !244, file: !243, line: 94, size: 384, align: 64, elements: !332)
!332 = !{!333, !348, !363, !378, !393, !408}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !331, file: !243, line: 95, baseType: !334, size: 64, align: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !243, line: 95, size: 64, align: 64, elements: !335)
!335 = !{!336, !341, !342, !347}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !334, file: !243, line: 95, baseType: !337, size: 32, align: 16)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !334, file: !243, line: 95, size: 32, align: 16, elements: !338)
!338 = !{!339, !340}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !337, file: !243, line: 95, baseType: !256, size: 16, align: 16)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !337, file: !243, line: 95, baseType: !256, size: 16, align: 16, offset: 16)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !334, file: !243, line: 95, baseType: !137, size: 32, align: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !334, file: !243, line: 95, baseType: !343, size: 64, align: 32)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !334, file: !243, line: 95, size: 64, align: 32, elements: !344)
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !343, file: !243, line: 95, baseType: !137, size: 32, align: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !343, file: !243, line: 95, baseType: !137, size: 32, align: 32, offset: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !334, file: !243, line: 95, baseType: !53, size: 64, align: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !331, file: !243, line: 96, baseType: !349, size: 64, align: 64, offset: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !243, line: 96, size: 64, align: 64, elements: !350)
!350 = !{!351, !356, !357, !362}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !349, file: !243, line: 96, baseType: !352, size: 32, align: 16)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !349, file: !243, line: 96, size: 32, align: 16, elements: !353)
!353 = !{!354, !355}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !352, file: !243, line: 96, baseType: !256, size: 16, align: 16)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !352, file: !243, line: 96, baseType: !256, size: 16, align: 16, offset: 16)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !349, file: !243, line: 96, baseType: !137, size: 32, align: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !349, file: !243, line: 96, baseType: !358, size: 64, align: 32)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !349, file: !243, line: 96, size: 64, align: 32, elements: !359)
!359 = !{!360, !361}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !358, file: !243, line: 96, baseType: !137, size: 32, align: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !358, file: !243, line: 96, baseType: !137, size: 32, align: 32, offset: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !349, file: !243, line: 96, baseType: !53, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !331, file: !243, line: 97, baseType: !364, size: 64, align: 64, offset: 128)
!364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !243, line: 97, size: 64, align: 64, elements: !365)
!365 = !{!366, !371, !372, !377}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !364, file: !243, line: 97, baseType: !367, size: 32, align: 16)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !364, file: !243, line: 97, size: 32, align: 16, elements: !368)
!368 = !{!369, !370}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !367, file: !243, line: 97, baseType: !256, size: 16, align: 16)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !367, file: !243, line: 97, baseType: !256, size: 16, align: 16, offset: 16)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !364, file: !243, line: 97, baseType: !137, size: 32, align: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !364, file: !243, line: 97, baseType: !373, size: 64, align: 32)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !364, file: !243, line: 97, size: 64, align: 32, elements: !374)
!374 = !{!375, !376}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !373, file: !243, line: 97, baseType: !137, size: 32, align: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !373, file: !243, line: 97, baseType: !137, size: 32, align: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !364, file: !243, line: 97, baseType: !53, size: 64, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !331, file: !243, line: 98, baseType: !379, size: 64, align: 64, offset: 192)
!379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !243, line: 98, size: 64, align: 64, elements: !380)
!380 = !{!381, !386, !387, !392}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !379, file: !243, line: 98, baseType: !382, size: 32, align: 16)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !379, file: !243, line: 98, size: 32, align: 16, elements: !383)
!383 = !{!384, !385}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !382, file: !243, line: 98, baseType: !256, size: 16, align: 16)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !382, file: !243, line: 98, baseType: !256, size: 16, align: 16, offset: 16)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !379, file: !243, line: 98, baseType: !137, size: 32, align: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !379, file: !243, line: 98, baseType: !388, size: 64, align: 32)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !379, file: !243, line: 98, size: 64, align: 32, elements: !389)
!389 = !{!390, !391}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !388, file: !243, line: 98, baseType: !137, size: 32, align: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !388, file: !243, line: 98, baseType: !137, size: 32, align: 32, offset: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !379, file: !243, line: 98, baseType: !53, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !331, file: !243, line: 99, baseType: !394, size: 64, align: 64, offset: 256)
!394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !243, line: 99, size: 64, align: 64, elements: !395)
!395 = !{!396, !401, !402, !407}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !394, file: !243, line: 99, baseType: !397, size: 32, align: 16)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !394, file: !243, line: 99, size: 32, align: 16, elements: !398)
!398 = !{!399, !400}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !397, file: !243, line: 99, baseType: !256, size: 16, align: 16)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !397, file: !243, line: 99, baseType: !256, size: 16, align: 16, offset: 16)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !394, file: !243, line: 99, baseType: !137, size: 32, align: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !394, file: !243, line: 99, baseType: !403, size: 64, align: 32)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !394, file: !243, line: 99, size: 64, align: 32, elements: !404)
!404 = !{!405, !406}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !403, file: !243, line: 99, baseType: !137, size: 32, align: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !403, file: !243, line: 99, baseType: !137, size: 32, align: 32, offset: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !394, file: !243, line: 99, baseType: !53, size: 64, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !331, file: !243, line: 100, baseType: !409, size: 64, align: 64, offset: 320)
!409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !243, line: 100, size: 64, align: 64, elements: !410)
!410 = !{!411, !416, !417, !422}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !409, file: !243, line: 100, baseType: !412, size: 32, align: 16)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !409, file: !243, line: 100, size: 32, align: 16, elements: !413)
!413 = !{!414, !415}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !412, file: !243, line: 100, baseType: !256, size: 16, align: 16)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !412, file: !243, line: 100, baseType: !256, size: 16, align: 16, offset: 16)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !409, file: !243, line: 100, baseType: !137, size: 32, align: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !409, file: !243, line: 100, baseType: !418, size: 64, align: 32)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !409, file: !243, line: 100, size: 64, align: 32, elements: !419)
!419 = !{!420, !421}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !418, file: !243, line: 100, baseType: !137, size: 32, align: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !418, file: !243, line: 100, baseType: !137, size: 32, align: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !409, file: !243, line: 100, baseType: !53, size: 64, align: 64)
!423 = !DILocation(line: 401, column: 19, scope: !235)
!424 = !DILocalVariable(name: "before", scope: !235, file: !4, line: 402, type: !223)
!425 = !DILocation(line: 402, column: 10, scope: !235)
!426 = !DILocalVariable(name: "after", scope: !235, file: !4, line: 403, type: !223)
!427 = !DILocation(line: 403, column: 10, scope: !235)
!428 = !DILocation(line: 410, column: 25, scope: !235)
!429 = !DILocation(line: 410, column: 4, scope: !235)
!430 = !DILocation(line: 412, column: 35, scope: !431)
!431 = distinct !DILexicalBlock(scope: !235, file: !4, line: 412, column: 8)
!432 = !DILocation(line: 412, column: 9, scope: !431)
!433 = !DILocation(line: 412, column: 8, scope: !235)
!434 = !DILocation(line: 413, column: 7, scope: !435)
!435 = distinct !DILexicalBlock(scope: !431, file: !4, line: 412, column: 48)
!436 = !DILocation(line: 420, column: 7, scope: !235)
!437 = !DILocation(line: 420, column: 10, scope: !235)
!438 = !DILocation(line: 420, column: 13, scope: !235)
!439 = !DILocation(line: 420, column: 19, scope: !235)
!440 = !DILocation(line: 420, column: 23, scope: !235)
!441 = !DILocation(line: 421, column: 4, scope: !235)
!442 = !DILocation(line: 432, column: 4, scope: !235)
!443 = !DILocation(line: 433, column: 1, scope: !235)
!444 = distinct !DISubprogram(name: "TimeSyncSetSlewState", scope: !4, file: !4, line: 558, type: !445, isLocal: true, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !125)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !130, !48}
!447 = !DILocalVariable(name: "data", arg: 1, scope: !444, file: !4, line: 558, type: !130)
!448 = !DILocation(line: 558, column: 36, scope: !444)
!449 = !DILocalVariable(name: "active", arg: 2, scope: !444, file: !4, line: 558, type: !48)
!450 = !DILocation(line: 558, column: 51, scope: !444)
!451 = !DILocation(line: 560, column: 8, scope: !452)
!452 = distinct !DILexicalBlock(scope: !444, file: !4, line: 560, column: 8)
!453 = !DILocation(line: 560, column: 18, scope: !452)
!454 = !DILocation(line: 560, column: 24, scope: !452)
!455 = !DILocation(line: 560, column: 15, scope: !452)
!456 = !DILocation(line: 560, column: 8, scope: !444)
!457 = !DILocation(line: 561, column: 45, scope: !458)
!458 = distinct !DILexicalBlock(scope: !452, file: !4, line: 560, column: 36)
!459 = !DILocation(line: 561, column: 7, scope: !458)
!460 = !DILocation(line: 562, column: 12, scope: !461)
!461 = distinct !DILexicalBlock(scope: !458, file: !4, line: 562, column: 11)
!462 = !DILocation(line: 562, column: 11, scope: !458)
!463 = !DILocation(line: 563, column: 28, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !4, line: 562, column: 20)
!465 = !DILocation(line: 563, column: 10, scope: !464)
!466 = !DILocation(line: 564, column: 7, scope: !464)
!467 = !DILocation(line: 565, column: 26, scope: !458)
!468 = !DILocation(line: 565, column: 7, scope: !458)
!469 = !DILocation(line: 565, column: 13, scope: !458)
!470 = !DILocation(line: 565, column: 24, scope: !458)
!471 = !DILocation(line: 566, column: 4, scope: !458)
!472 = !DILocation(line: 567, column: 1, scope: !444)
!473 = !DILocalVariable(name: "ctx", arg: 1, scope: !67, file: !4, line: 1034, type: !92)
!474 = !DILocation(line: 1034, column: 26, scope: !67)
!475 = !DILocalVariable(name: "data", scope: !67, file: !4, line: 1042, type: !130)
!476 = !DILocation(line: 1042, column: 18, scope: !67)
!477 = !DILocation(line: 1042, column: 25, scope: !67)
!478 = !DILocalVariable(name: "rpcs", scope: !67, file: !4, line: 1043, type: !479)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !480, size: 384, align: 64, elements: !505)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannelCallback", file: !110, line: 115, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcChannelCallback", file: !110, line: 94, size: 384, align: 64, elements: !482)
!482 = !{!483, !484, !501, !502, !503, !504}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !481, file: !110, line: 96, baseType: !75, size: 64, align: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !481, file: !110, line: 98, baseType: !485, size: 64, align: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcIn_Callback", file: !110, line: 90, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, align: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!48, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcInData", file: !110, line: 77, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcInData", file: !110, line: 51, size: 512, align: 64, elements: !492)
!492 = !{!493, !494, !495, !496, !497, !498, !499, !500}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !491, file: !110, line: 53, baseType: !75, size: 64, align: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !491, file: !110, line: 58, baseType: !75, size: 64, align: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "argsSize", scope: !491, file: !110, line: 60, baseType: !268, size: 64, align: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !491, file: !110, line: 65, baseType: !214, size: 64, align: 64, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "resultLen", scope: !491, file: !110, line: 67, baseType: !268, size: 64, align: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "freeResult", scope: !491, file: !110, line: 72, baseType: !48, size: 32, align: 32, offset: 320)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "appCtx", scope: !491, file: !110, line: 74, baseType: !42, size: 64, align: 64, offset: 384)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !491, file: !110, line: 76, baseType: !42, size: 64, align: 64, offset: 448)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !481, file: !110, line: 100, baseType: !52, size: 64, align: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "xdrIn", scope: !481, file: !110, line: 102, baseType: !52, size: 64, align: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "xdrOut", scope: !481, file: !110, line: 109, baseType: !52, size: 64, align: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "xdrInSize", scope: !481, file: !110, line: 114, baseType: !268, size: 64, align: 64, offset: 320)
!505 = !{!506}
!506 = !DISubrange(count: 1)
!507 = !DILocation(line: 1043, column: 23, scope: !67)
!508 = !DILocation(line: 1043, column: 32, scope: !67)
!509 = !DILocation(line: 1044, column: 7, scope: !67)
!510 = !DILocation(line: 1044, column: 50, scope: !67)
!511 = !DILocalVariable(name: "sigs", scope: !67, file: !4, line: 1046, type: !512)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 384, align: 64, elements: !519)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsPluginSignalCb", file: !15, line: 484, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsPluginSignalCb", file: !15, line: 480, size: 192, align: 64, elements: !515)
!515 = !{!516, !517, !518}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "signame", scope: !514, file: !15, line: 481, baseType: !99, size: 64, align: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !514, file: !15, line: 482, baseType: !52, size: 64, align: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !514, file: !15, line: 483, baseType: !52, size: 64, align: 64, offset: 128)
!519 = !{!520}
!520 = !DISubrange(count: 2)
!521 = !DILocation(line: 1046, column: 24, scope: !67)
!522 = !DILocalVariable(name: "regs", scope: !67, file: !4, line: 1050, type: !523)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, size: 256, align: 64, elements: !519)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppReg", file: !15, line: 450, baseType: !525)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppReg", file: !15, line: 447, size: 128, align: 64, elements: !526)
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !525, file: !15, line: 448, baseType: !122, size: 32, align: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !525, file: !15, line: 449, baseType: !77, size: 64, align: 64, offset: 64)
!529 = !DILocation(line: 1050, column: 16, scope: !67)
!530 = !DILocation(line: 1050, column: 25, scope: !67)
!531 = !DILocation(line: 1051, column: 7, scope: !67)
!532 = !DILocation(line: 1051, column: 47, scope: !67)
!533 = !DILocation(line: 1051, column: 29, scope: !67)
!534 = !DILocation(line: 1052, column: 7, scope: !67)
!535 = !DILocation(line: 1052, column: 46, scope: !67)
!536 = !DILocation(line: 1052, column: 28, scope: !67)
!537 = !DILocation(line: 1055, column: 4, scope: !67)
!538 = !DILocation(line: 1055, column: 10, scope: !67)
!539 = !DILocation(line: 1055, column: 21, scope: !67)
!540 = !DILocation(line: 1056, column: 4, scope: !67)
!541 = !DILocation(line: 1056, column: 10, scope: !67)
!542 = !DILocation(line: 1056, column: 25, scope: !67)
!543 = !DILocation(line: 1057, column: 4, scope: !67)
!544 = !DILocation(line: 1057, column: 10, scope: !67)
!545 = !DILocation(line: 1057, column: 32, scope: !67)
!546 = !DILocation(line: 1058, column: 4, scope: !67)
!547 = !DILocation(line: 1058, column: 10, scope: !67)
!548 = !DILocation(line: 1058, column: 16, scope: !67)
!549 = !DILocation(line: 1059, column: 4, scope: !67)
!550 = !DILocation(line: 1059, column: 10, scope: !67)
!551 = !DILocation(line: 1059, column: 20, scope: !67)
!552 = !DILocation(line: 1060, column: 4, scope: !67)
!553 = !DILocation(line: 1060, column: 10, scope: !67)
!554 = !DILocation(line: 1060, column: 25, scope: !67)
!555 = !DILocation(line: 1061, column: 4, scope: !67)
!556 = !DILocation(line: 1061, column: 10, scope: !67)
!557 = !DILocation(line: 1061, column: 16, scope: !67)
!558 = !DILocation(line: 1062, column: 4, scope: !67)
!559 = !DILocation(line: 1062, column: 10, scope: !67)
!560 = !DILocation(line: 1062, column: 22, scope: !67)
!561 = !DILocation(line: 1063, column: 4, scope: !67)
!562 = !DILocation(line: 1063, column: 10, scope: !67)
!563 = !DILocation(line: 1063, column: 29, scope: !67)
!564 = !DILocation(line: 1064, column: 4, scope: !67)
!565 = !DILocation(line: 1064, column: 10, scope: !67)
!566 = !DILocation(line: 1064, column: 27, scope: !67)
!567 = !DILocation(line: 1065, column: 16, scope: !67)
!568 = !DILocation(line: 1065, column: 4, scope: !67)
!569 = !DILocation(line: 1065, column: 10, scope: !67)
!570 = !DILocation(line: 1065, column: 14, scope: !67)
!571 = !DILocation(line: 1066, column: 37, scope: !67)
!572 = !DILocation(line: 1066, column: 19, scope: !67)
!573 = !DILocation(line: 1066, column: 17, scope: !67)
!574 = !DILocation(line: 1067, column: 23, scope: !67)
!575 = !DILocation(line: 1067, column: 21, scope: !67)
!576 = !DILocation(line: 1069, column: 4, scope: !67)
!577 = distinct !DISubprogram(name: "TimeSyncTcloHandler", scope: !4, file: !4, line: 812, type: !487, isLocal: true, isDefinition: true, scopeLine: 813, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !125)
!578 = !DILocalVariable(name: "data", arg: 1, scope: !577, file: !4, line: 812, type: !489)
!579 = !DILocation(line: 812, column: 32, scope: !577)
!580 = !DILocalVariable(name: "backwardSync", scope: !577, file: !4, line: 814, type: !581)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !54, line: 230, baseType: !62)
!582 = !DILocation(line: 814, column: 9, scope: !577)
!583 = !DILocalVariable(name: "argVal", scope: !577, file: !4, line: 815, type: !137)
!584 = !DILocation(line: 815, column: 11, scope: !577)
!585 = !DILocalVariable(name: "index", scope: !577, file: !4, line: 816, type: !87)
!586 = !DILocation(line: 816, column: 17, scope: !577)
!587 = !DILocalVariable(name: "syncData", scope: !577, file: !4, line: 817, type: !130)
!588 = !DILocation(line: 817, column: 18, scope: !577)
!589 = !DILocation(line: 817, column: 29, scope: !577)
!590 = !DILocation(line: 817, column: 35, scope: !577)
!591 = !DILocation(line: 819, column: 51, scope: !592)
!592 = distinct !DILexicalBlock(scope: !577, file: !4, line: 819, column: 8)
!593 = !DILocation(line: 819, column: 57, scope: !592)
!594 = !DILocation(line: 819, column: 9, scope: !592)
!595 = !DILocation(line: 819, column: 8, scope: !577)
!596 = !DILocation(line: 820, column: 36, scope: !597)
!597 = distinct !DILexicalBlock(scope: !592, file: !4, line: 819, column: 69)
!598 = !DILocation(line: 820, column: 14, scope: !597)
!599 = !DILocation(line: 820, column: 7, scope: !597)
!600 = !DILocation(line: 823, column: 19, scope: !577)
!601 = !DILocation(line: 823, column: 26, scope: !577)
!602 = !DILocation(line: 823, column: 17, scope: !577)
!603 = !DILocation(line: 824, column: 24, scope: !604)
!604 = distinct !DILexicalBlock(scope: !577, file: !4, line: 824, column: 8)
!605 = !DILocation(line: 824, column: 34, scope: !604)
!606 = !DILocation(line: 825, column: 24, scope: !604)
!607 = !DILocation(line: 825, column: 38, scope: !604)
!608 = !DILocation(line: 824, column: 9, scope: !604)
!609 = !DILocation(line: 824, column: 8, scope: !577)
!610 = !DILocation(line: 826, column: 36, scope: !611)
!611 = distinct !DILexicalBlock(scope: !604, file: !4, line: 825, column: 49)
!612 = !DILocation(line: 826, column: 14, scope: !611)
!613 = !DILocation(line: 826, column: 7, scope: !611)
!614 = !DILocation(line: 828, column: 36, scope: !615)
!615 = distinct !DILexicalBlock(scope: !604, file: !4, line: 827, column: 11)
!616 = !DILocation(line: 828, column: 14, scope: !615)
!617 = !DILocation(line: 828, column: 7, scope: !615)
!618 = !DILocation(line: 830, column: 1, scope: !577)
!619 = !DILocalVariable(name: "src", arg: 1, scope: !228, file: !4, line: 869, type: !52)
!620 = !DILocation(line: 869, column: 28, scope: !228)
!621 = !DILocalVariable(name: "ctx", arg: 2, scope: !228, file: !4, line: 870, type: !92)
!622 = !DILocation(line: 870, column: 32, scope: !228)
!623 = !DILocalVariable(name: "option", arg: 3, scope: !228, file: !4, line: 871, type: !99)
!624 = !DILocation(line: 871, column: 32, scope: !228)
!625 = !DILocalVariable(name: "value", arg: 4, scope: !228, file: !4, line: 872, type: !99)
!626 = !DILocation(line: 872, column: 32, scope: !228)
!627 = !DILocalVariable(name: "plugin", arg: 5, scope: !228, file: !4, line: 873, type: !70)
!628 = !DILocation(line: 873, column: 36, scope: !228)
!629 = !DILocalVariable(name: "data", scope: !228, file: !4, line: 876, type: !130)
!630 = !DILocation(line: 876, column: 18, scope: !228)
!631 = !DILocation(line: 876, column: 25, scope: !228)
!632 = !DILocation(line: 876, column: 33, scope: !228)
!633 = !DILocation(line: 878, column: 15, scope: !634)
!634 = distinct !DILexicalBlock(scope: !228, file: !4, line: 878, column: 8)
!635 = !DILocation(line: 878, column: 8, scope: !634)
!636 = !DILocation(line: 878, column: 35, scope: !634)
!637 = !DILocation(line: 878, column: 8, scope: !228)
!638 = !DILocalVariable(name: "start", scope: !639, file: !4, line: 879, type: !48)
!639 = distinct !DILexicalBlock(scope: !634, file: !4, line: 878, column: 41)
!640 = !DILocation(line: 879, column: 16, scope: !639)
!641 = !DILocation(line: 880, column: 28, scope: !642)
!642 = distinct !DILexicalBlock(scope: !639, file: !4, line: 880, column: 11)
!643 = !DILocation(line: 880, column: 12, scope: !642)
!644 = !DILocation(line: 880, column: 11, scope: !639)
!645 = !DILocation(line: 881, column: 10, scope: !646)
!646 = distinct !DILexicalBlock(scope: !642, file: !4, line: 880, column: 44)
!647 = !DILocation(line: 884, column: 11, scope: !648)
!648 = distinct !DILexicalBlock(scope: !639, file: !4, line: 884, column: 11)
!649 = !DILocation(line: 884, column: 17, scope: !648)
!650 = !DILocation(line: 884, column: 20, scope: !651)
!651 = !DILexicalBlockFile(scope: !648, file: !4, discriminator: 1)
!652 = !DILocation(line: 884, column: 26, scope: !651)
!653 = !DILocation(line: 884, column: 32, scope: !651)
!654 = !DILocation(line: 884, column: 11, scope: !651)
!655 = !DILocation(line: 894, column: 14, scope: !656)
!656 = distinct !DILexicalBlock(scope: !657, file: !4, line: 894, column: 14)
!657 = distinct !DILexicalBlock(scope: !648, file: !4, line: 884, column: 53)
!658 = !DILocation(line: 894, column: 20, scope: !656)
!659 = !DILocation(line: 894, column: 26, scope: !656)
!660 = !DILocation(line: 894, column: 46, scope: !656)
!661 = !DILocation(line: 894, column: 49, scope: !662)
!662 = !DILexicalBlockFile(scope: !656, file: !4, discriminator: 1)
!663 = !DILocation(line: 894, column: 14, scope: !662)
!664 = !DILocation(line: 895, column: 28, scope: !665)
!665 = distinct !DILexicalBlock(scope: !656, file: !4, line: 894, column: 65)
!666 = !DILocation(line: 895, column: 34, scope: !665)
!667 = !DILocation(line: 895, column: 68, scope: !665)
!668 = !DILocation(line: 895, column: 13, scope: !665)
!669 = !DILocation(line: 896, column: 10, scope: !665)
!670 = !DILocation(line: 898, column: 33, scope: !671)
!671 = distinct !DILexicalBlock(scope: !657, file: !4, line: 898, column: 14)
!672 = !DILocation(line: 898, column: 38, scope: !671)
!673 = !DILocation(line: 898, column: 15, scope: !671)
!674 = !DILocation(line: 898, column: 14, scope: !657)
!675 = !DILocation(line: 899, column: 13, scope: !676)
!676 = distinct !DILexicalBlock(scope: !671, file: !4, line: 898, column: 45)
!677 = !DILocation(line: 900, column: 13, scope: !676)
!678 = !DILocation(line: 903, column: 7, scope: !657)
!679 = !DILocation(line: 903, column: 19, scope: !680)
!680 = !DILexicalBlockFile(scope: !681, file: !4, discriminator: 1)
!681 = distinct !DILexicalBlock(scope: !648, file: !4, line: 903, column: 18)
!682 = !DILocation(line: 903, column: 18, scope: !680)
!683 = !DILocation(line: 904, column: 14, scope: !684)
!684 = distinct !DILexicalBlock(scope: !685, file: !4, line: 904, column: 14)
!685 = distinct !DILexicalBlock(scope: !681, file: !4, line: 903, column: 26)
!686 = !DILocation(line: 904, column: 20, scope: !684)
!687 = !DILocation(line: 904, column: 26, scope: !684)
!688 = !DILocation(line: 904, column: 14, scope: !685)
!689 = !DILocation(line: 905, column: 30, scope: !690)
!690 = distinct !DILexicalBlock(scope: !684, file: !4, line: 904, column: 47)
!691 = !DILocation(line: 905, column: 35, scope: !690)
!692 = !DILocation(line: 905, column: 13, scope: !690)
!693 = !DILocation(line: 906, column: 10, scope: !690)
!694 = !DILocation(line: 907, column: 13, scope: !695)
!695 = distinct !DILexicalBlock(scope: !684, file: !4, line: 906, column: 17)
!696 = !DILocation(line: 907, column: 19, scope: !695)
!697 = !DILocation(line: 907, column: 25, scope: !695)
!698 = !DILocation(line: 909, column: 7, scope: !685)
!699 = !DILocation(line: 911, column: 4, scope: !639)
!700 = !DILocation(line: 911, column: 22, scope: !701)
!701 = !DILexicalBlockFile(scope: !702, file: !4, discriminator: 1)
!702 = distinct !DILexicalBlock(scope: !634, file: !4, line: 911, column: 15)
!703 = !DILocation(line: 911, column: 15, scope: !701)
!704 = !DILocation(line: 911, column: 71, scope: !701)
!705 = !DILocation(line: 912, column: 37, scope: !706)
!706 = distinct !DILexicalBlock(scope: !702, file: !4, line: 911, column: 77)
!707 = !DILocation(line: 912, column: 30, scope: !706)
!708 = !DILocation(line: 912, column: 7, scope: !706)
!709 = !DILocation(line: 912, column: 13, scope: !706)
!710 = !DILocation(line: 912, column: 28, scope: !706)
!711 = !DILocation(line: 913, column: 86, scope: !706)
!712 = !DILocation(line: 913, column: 92, scope: !706)
!713 = !DILocation(line: 913, column: 7, scope: !706)
!714 = !DILocation(line: 915, column: 4, scope: !706)
!715 = !DILocation(line: 915, column: 22, scope: !716)
!716 = !DILexicalBlockFile(scope: !717, file: !4, discriminator: 1)
!717 = distinct !DILexicalBlock(scope: !702, file: !4, line: 915, column: 15)
!718 = !DILocation(line: 915, column: 15, scope: !716)
!719 = !DILocation(line: 915, column: 74, scope: !716)
!720 = !DILocalVariable(name: "percent", scope: !721, file: !4, line: 916, type: !722)
!721 = distinct !DILexicalBlock(scope: !717, file: !4, line: 915, column: 80)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !54, line: 174, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !56, line: 38, baseType: !51)
!724 = !DILocation(line: 916, column: 13, scope: !721)
!725 = !DILocation(line: 918, column: 95, scope: !721)
!726 = !DILocation(line: 918, column: 7, scope: !721)
!727 = !DILocation(line: 919, column: 39, scope: !728)
!728 = distinct !DILexicalBlock(scope: !721, file: !4, line: 919, column: 11)
!729 = !DILocation(line: 919, column: 12, scope: !728)
!730 = !DILocation(line: 919, column: 11, scope: !721)
!731 = !DILocation(line: 920, column: 10, scope: !732)
!732 = distinct !DILexicalBlock(scope: !728, file: !4, line: 919, column: 47)
!733 = !DILocation(line: 922, column: 11, scope: !734)
!734 = distinct !DILexicalBlock(scope: !721, file: !4, line: 922, column: 11)
!735 = !DILocation(line: 922, column: 19, scope: !734)
!736 = !DILocation(line: 922, column: 24, scope: !734)
!737 = !DILocation(line: 922, column: 27, scope: !738)
!738 = !DILexicalBlockFile(scope: !734, file: !4, discriminator: 1)
!739 = !DILocation(line: 922, column: 35, scope: !738)
!740 = !DILocation(line: 922, column: 11, scope: !738)
!741 = !DILocation(line: 923, column: 10, scope: !742)
!742 = distinct !DILexicalBlock(scope: !734, file: !4, line: 922, column: 42)
!743 = !DILocation(line: 923, column: 16, scope: !742)
!744 = !DILocation(line: 923, column: 38, scope: !742)
!745 = !DILocation(line: 924, column: 7, scope: !742)
!746 = !DILocation(line: 925, column: 40, scope: !747)
!747 = distinct !DILexicalBlock(scope: !734, file: !4, line: 924, column: 14)
!748 = !DILocation(line: 925, column: 10, scope: !747)
!749 = !DILocation(line: 925, column: 16, scope: !747)
!750 = !DILocation(line: 925, column: 38, scope: !747)
!751 = !DILocation(line: 928, column: 4, scope: !721)
!752 = !DILocation(line: 928, column: 22, scope: !753)
!753 = !DILexicalBlockFile(scope: !754, file: !4, discriminator: 1)
!754 = distinct !DILexicalBlock(scope: !717, file: !4, line: 928, column: 15)
!755 = !DILocation(line: 928, column: 15, scope: !753)
!756 = !DILocation(line: 928, column: 49, scope: !753)
!757 = !DILocalVariable(name: "period", scope: !758, file: !4, line: 929, type: !137)
!758 = distinct !DILexicalBlock(scope: !754, file: !4, line: 928, column: 55)
!759 = !DILocation(line: 929, column: 14, scope: !758)
!760 = !DILocation(line: 931, column: 39, scope: !761)
!761 = distinct !DILexicalBlock(scope: !758, file: !4, line: 931, column: 11)
!762 = !DILocation(line: 931, column: 12, scope: !761)
!763 = !DILocation(line: 931, column: 11, scope: !758)
!764 = !DILocation(line: 932, column: 10, scope: !765)
!765 = distinct !DILexicalBlock(scope: !761, file: !4, line: 931, column: 47)
!766 = !DILocation(line: 935, column: 11, scope: !767)
!767 = distinct !DILexicalBlock(scope: !758, file: !4, line: 935, column: 11)
!768 = !DILocation(line: 935, column: 18, scope: !767)
!769 = !DILocation(line: 935, column: 11, scope: !758)
!770 = !DILocation(line: 936, column: 17, scope: !767)
!771 = !DILocation(line: 936, column: 10, scope: !767)
!772 = !DILocation(line: 943, column: 11, scope: !773)
!773 = distinct !DILexicalBlock(scope: !758, file: !4, line: 943, column: 11)
!774 = !DILocation(line: 943, column: 21, scope: !773)
!775 = !DILocation(line: 943, column: 27, scope: !773)
!776 = !DILocation(line: 943, column: 18, scope: !773)
!777 = !DILocation(line: 943, column: 11, scope: !758)
!778 = !DILocation(line: 944, column: 33, scope: !779)
!779 = distinct !DILexicalBlock(scope: !773, file: !4, line: 943, column: 43)
!780 = !DILocation(line: 944, column: 10, scope: !779)
!781 = !DILocation(line: 944, column: 16, scope: !779)
!782 = !DILocation(line: 944, column: 31, scope: !779)
!783 = !DILocation(line: 946, column: 14, scope: !784)
!784 = distinct !DILexicalBlock(scope: !779, file: !4, line: 946, column: 14)
!785 = !DILocation(line: 946, column: 20, scope: !784)
!786 = !DILocation(line: 946, column: 26, scope: !784)
!787 = !DILocation(line: 946, column: 14, scope: !779)
!788 = !DILocation(line: 947, column: 30, scope: !789)
!789 = distinct !DILexicalBlock(scope: !784, file: !4, line: 946, column: 47)
!790 = !DILocation(line: 947, column: 35, scope: !789)
!791 = !DILocation(line: 947, column: 13, scope: !789)
!792 = !DILocation(line: 948, column: 36, scope: !793)
!793 = distinct !DILexicalBlock(scope: !789, file: !4, line: 948, column: 17)
!794 = !DILocation(line: 948, column: 41, scope: !793)
!795 = !DILocation(line: 948, column: 18, scope: !793)
!796 = !DILocation(line: 948, column: 17, scope: !789)
!797 = !DILocation(line: 949, column: 16, scope: !798)
!798 = distinct !DILexicalBlock(scope: !793, file: !4, line: 948, column: 48)
!799 = !DILocation(line: 950, column: 16, scope: !798)
!800 = !DILocation(line: 952, column: 10, scope: !789)
!801 = !DILocation(line: 953, column: 7, scope: !779)
!802 = !DILocation(line: 955, column: 4, scope: !758)
!803 = !DILocation(line: 955, column: 22, scope: !804)
!804 = !DILexicalBlockFile(scope: !805, file: !4, discriminator: 1)
!805 = distinct !DILexicalBlock(scope: !754, file: !4, line: 955, column: 15)
!806 = !DILocation(line: 955, column: 15, scope: !804)
!807 = !DILocation(line: 955, column: 73, scope: !804)
!808 = !DILocation(line: 956, column: 28, scope: !809)
!809 = distinct !DILexicalBlock(scope: !810, file: !4, line: 956, column: 11)
!810 = distinct !DILexicalBlock(scope: !805, file: !4, line: 955, column: 79)
!811 = !DILocation(line: 956, column: 12, scope: !809)
!812 = !DILocation(line: 956, column: 11, scope: !810)
!813 = !DILocation(line: 957, column: 10, scope: !814)
!814 = distinct !DILexicalBlock(scope: !809, file: !4, line: 956, column: 73)
!815 = !DILocation(line: 959, column: 4, scope: !810)
!816 = !DILocation(line: 959, column: 22, scope: !817)
!817 = !DILexicalBlockFile(scope: !818, file: !4, discriminator: 1)
!818 = distinct !DILexicalBlock(scope: !805, file: !4, line: 959, column: 15)
!819 = !DILocation(line: 959, column: 15, scope: !817)
!820 = !DILocation(line: 959, column: 64, scope: !817)
!821 = !DILocalVariable(name: "doSync", scope: !822, file: !4, line: 961, type: !48)
!822 = distinct !DILexicalBlock(scope: !818, file: !4, line: 959, column: 70)
!823 = !DILocation(line: 961, column: 16, scope: !822)
!824 = !DILocation(line: 963, column: 28, scope: !825)
!825 = distinct !DILexicalBlock(scope: !822, file: !4, line: 963, column: 11)
!826 = !DILocation(line: 963, column: 12, scope: !825)
!827 = !DILocation(line: 963, column: 11, scope: !822)
!828 = !DILocation(line: 964, column: 10, scope: !829)
!829 = distinct !DILexicalBlock(scope: !825, file: !4, line: 963, column: 45)
!830 = !DILocation(line: 967, column: 11, scope: !831)
!831 = distinct !DILexicalBlock(scope: !822, file: !4, line: 967, column: 11)
!832 = !DILocation(line: 967, column: 18, scope: !831)
!833 = !DILocation(line: 967, column: 22, scope: !834)
!834 = !DILexicalBlockFile(scope: !831, file: !4, discriminator: 1)
!835 = !DILocation(line: 967, column: 34, scope: !834)
!836 = !DILocation(line: 968, column: 27, scope: !831)
!837 = !DILocation(line: 968, column: 33, scope: !831)
!838 = !DILocation(line: 969, column: 27, scope: !831)
!839 = !DILocation(line: 969, column: 63, scope: !831)
!840 = !DILocation(line: 968, column: 12, scope: !831)
!841 = !DILocation(line: 967, column: 11, scope: !842)
!842 = !DILexicalBlockFile(scope: !822, file: !4, discriminator: 2)
!843 = !DILocation(line: 970, column: 10, scope: !844)
!844 = distinct !DILexicalBlock(scope: !831, file: !4, line: 969, column: 70)
!845 = !DILocation(line: 971, column: 10, scope: !844)
!846 = !DILocation(line: 974, column: 19, scope: !822)
!847 = !DILocation(line: 976, column: 4, scope: !822)
!848 = !DILocation(line: 976, column: 22, scope: !849)
!849 = !DILexicalBlockFile(scope: !850, file: !4, discriminator: 1)
!850 = distinct !DILexicalBlock(scope: !818, file: !4, line: 976, column: 15)
!851 = !DILocation(line: 976, column: 15, scope: !849)
!852 = !DILocation(line: 976, column: 63, scope: !849)
!853 = !DILocation(line: 977, column: 28, scope: !854)
!854 = distinct !DILexicalBlock(scope: !855, file: !4, line: 977, column: 11)
!855 = distinct !DILexicalBlock(scope: !850, file: !4, line: 976, column: 69)
!856 = !DILocation(line: 977, column: 12, scope: !854)
!857 = !DILocation(line: 977, column: 11, scope: !855)
!858 = !DILocation(line: 978, column: 10, scope: !859)
!859 = distinct !DILexicalBlock(scope: !854, file: !4, line: 977, column: 53)
!860 = !DILocation(line: 981, column: 4, scope: !855)
!861 = !DILocation(line: 981, column: 22, scope: !862)
!862 = !DILexicalBlockFile(scope: !863, file: !4, discriminator: 1)
!863 = distinct !DILexicalBlock(scope: !850, file: !4, line: 981, column: 15)
!864 = !DILocation(line: 981, column: 15, scope: !862)
!865 = !DILocation(line: 981, column: 63, scope: !862)
!866 = !DILocation(line: 982, column: 28, scope: !867)
!867 = distinct !DILexicalBlock(scope: !868, file: !4, line: 982, column: 11)
!868 = distinct !DILexicalBlock(scope: !863, file: !4, line: 981, column: 69)
!869 = !DILocation(line: 982, column: 36, scope: !867)
!870 = !DILocation(line: 982, column: 42, scope: !867)
!871 = !DILocation(line: 982, column: 12, scope: !867)
!872 = !DILocation(line: 982, column: 11, scope: !868)
!873 = !DILocation(line: 983, column: 10, scope: !874)
!874 = distinct !DILexicalBlock(scope: !867, file: !4, line: 982, column: 56)
!875 = !DILocation(line: 985, column: 67, scope: !868)
!876 = !DILocation(line: 985, column: 73, scope: !868)
!877 = !DILocation(line: 985, column: 7, scope: !868)
!878 = !DILocation(line: 987, column: 4, scope: !868)
!879 = !DILocation(line: 987, column: 22, scope: !880)
!880 = !DILexicalBlockFile(scope: !881, file: !4, discriminator: 1)
!881 = distinct !DILexicalBlock(scope: !863, file: !4, line: 987, column: 15)
!882 = !DILocation(line: 987, column: 15, scope: !880)
!883 = !DILocation(line: 987, column: 71, scope: !880)
!884 = !DILocation(line: 988, column: 31, scope: !885)
!885 = distinct !DILexicalBlock(scope: !886, file: !4, line: 988, column: 11)
!886 = distinct !DILexicalBlock(scope: !881, file: !4, line: 987, column: 77)
!887 = !DILocation(line: 988, column: 37, scope: !885)
!888 = !DILocation(line: 988, column: 57, scope: !885)
!889 = !DILocation(line: 988, column: 12, scope: !885)
!890 = !DILocation(line: 988, column: 11, scope: !886)
!891 = !DILocation(line: 989, column: 10, scope: !892)
!892 = distinct !DILexicalBlock(scope: !885, file: !4, line: 988, column: 65)
!893 = !DILocation(line: 991, column: 74, scope: !886)
!894 = !DILocation(line: 991, column: 80, scope: !886)
!895 = !DILocation(line: 991, column: 7, scope: !886)
!896 = !DILocation(line: 993, column: 4, scope: !886)
!897 = !DILocation(line: 994, column: 7, scope: !898)
!898 = distinct !DILexicalBlock(scope: !881, file: !4, line: 993, column: 11)
!899 = !DILocation(line: 997, column: 4, scope: !228)
!900 = !DILocation(line: 998, column: 1, scope: !228)
!901 = distinct !DISubprogram(name: "TimeSyncShutdown", scope: !4, file: !4, line: 1010, type: !902, isLocal: true, isDefinition: true, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !125)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !52, !92, !70}
!904 = !DILocalVariable(name: "src", arg: 1, scope: !901, file: !4, line: 1010, type: !52)
!905 = !DILocation(line: 1010, column: 27, scope: !901)
!906 = !DILocalVariable(name: "ctx", arg: 2, scope: !901, file: !4, line: 1011, type: !92)
!907 = !DILocation(line: 1011, column: 31, scope: !901)
!908 = !DILocalVariable(name: "plugin", arg: 3, scope: !901, file: !4, line: 1012, type: !70)
!909 = !DILocation(line: 1012, column: 35, scope: !901)
!910 = !DILocalVariable(name: "data", scope: !901, file: !4, line: 1014, type: !130)
!911 = !DILocation(line: 1014, column: 18, scope: !901)
!912 = !DILocation(line: 1014, column: 25, scope: !901)
!913 = !DILocation(line: 1014, column: 33, scope: !901)
!914 = !DILocation(line: 1016, column: 8, scope: !915)
!915 = distinct !DILexicalBlock(scope: !901, file: !4, line: 1016, column: 8)
!916 = !DILocation(line: 1016, column: 14, scope: !915)
!917 = !DILocation(line: 1016, column: 20, scope: !915)
!918 = !DILocation(line: 1016, column: 8, scope: !901)
!919 = !DILocation(line: 1017, column: 24, scope: !920)
!920 = distinct !DILexicalBlock(scope: !915, file: !4, line: 1016, column: 41)
!921 = !DILocation(line: 1017, column: 29, scope: !920)
!922 = !DILocation(line: 1017, column: 7, scope: !920)
!923 = !DILocation(line: 1018, column: 4, scope: !920)
!924 = !DILocation(line: 1020, column: 11, scope: !901)
!925 = !DILocation(line: 1020, column: 4, scope: !901)
!926 = !DILocation(line: 1021, column: 1, scope: !901)
!927 = distinct !DISubprogram(name: "TimeSyncResetSlew", scope: !4, file: !4, line: 537, type: !928, isLocal: true, isDefinition: true, scopeLine: 538, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !125)
!928 = !DISubroutineType(types: !929)
!929 = !{null, !130}
!930 = !DILocalVariable(name: "data", arg: 1, scope: !927, file: !4, line: 537, type: !130)
!931 = !DILocation(line: 537, column: 33, scope: !927)
!932 = !DILocalVariable(name: "remaining", scope: !927, file: !4, line: 539, type: !223)
!933 = !DILocation(line: 539, column: 10, scope: !927)
!934 = !DILocalVariable(name: "timeSyncPeriodUS", scope: !927, file: !4, line: 540, type: !223)
!935 = !DILocation(line: 540, column: 10, scope: !927)
!936 = !DILocation(line: 540, column: 29, scope: !927)
!937 = !DILocation(line: 540, column: 35, scope: !927)
!938 = !DILocation(line: 540, column: 50, scope: !927)
!939 = !DILocation(line: 541, column: 4, scope: !927)
!940 = !DILocation(line: 541, column: 10, scope: !927)
!941 = !DILocation(line: 541, column: 20, scope: !927)
!942 = !DILocation(line: 542, column: 21, scope: !927)
!943 = !DILocation(line: 542, column: 4, scope: !927)
!944 = !DILocation(line: 543, column: 8, scope: !945)
!945 = distinct !DILexicalBlock(scope: !927, file: !4, line: 543, column: 8)
!946 = !DILocation(line: 543, column: 8, scope: !927)
!947 = !DILocation(line: 544, column: 7, scope: !948)
!948 = distinct !DILexicalBlock(scope: !945, file: !4, line: 543, column: 33)
!949 = !DILocation(line: 545, column: 7, scope: !948)
!950 = !DILocation(line: 546, column: 4, scope: !948)
!951 = !DILocation(line: 547, column: 1, scope: !927)
!952 = distinct !DISubprogram(name: "TimeSyncDoSync", scope: !4, file: !4, line: 610, type: !953, isLocal: true, isDefinition: true, scopeLine: 614, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !125)
!953 = !DISubroutineType(types: !954)
!954 = !{!48, !581, !955, !581, !42}
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimeSyncType", file: !4, line: 169, baseType: !36)
!956 = !DILocalVariable(name: "slewCorrection", arg: 1, scope: !952, file: !4, line: 610, type: !581)
!957 = !DILocation(line: 610, column: 21, scope: !952)
!958 = !DILocalVariable(name: "syncType", arg: 2, scope: !952, file: !4, line: 611, type: !955)
!959 = !DILocation(line: 611, column: 29, scope: !952)
!960 = !DILocalVariable(name: "allowBackwardSync", arg: 3, scope: !952, file: !4, line: 612, type: !581)
!961 = !DILocation(line: 612, column: 21, scope: !952)
!962 = !DILocalVariable(name: "_data", arg: 4, scope: !952, file: !4, line: 613, type: !42)
!963 = !DILocation(line: 613, column: 22, scope: !952)
!964 = !DILocalVariable(name: "guest", scope: !952, file: !4, line: 615, type: !223)
!965 = !DILocation(line: 615, column: 10, scope: !952)
!966 = !DILocalVariable(name: "host", scope: !952, file: !4, line: 615, type: !223)
!967 = !DILocation(line: 615, column: 17, scope: !952)
!968 = !DILocalVariable(name: "gosError", scope: !952, file: !4, line: 616, type: !223)
!969 = !DILocation(line: 616, column: 10, scope: !952)
!970 = !DILocalVariable(name: "apparentError", scope: !952, file: !4, line: 616, type: !223)
!971 = !DILocation(line: 616, column: 20, scope: !952)
!972 = !DILocalVariable(name: "maxTimeError", scope: !952, file: !4, line: 616, type: !223)
!973 = !DILocation(line: 616, column: 35, scope: !952)
!974 = !DILocalVariable(name: "apparentErrorValid", scope: !952, file: !4, line: 617, type: !581)
!975 = !DILocation(line: 617, column: 9, scope: !952)
!976 = !DILocalVariable(name: "data", scope: !952, file: !4, line: 618, type: !130)
!977 = !DILocation(line: 618, column: 18, scope: !952)
!978 = !DILocation(line: 618, column: 25, scope: !952)
!979 = !DILocation(line: 620, column: 165, scope: !952)
!980 = !DILocation(line: 620, column: 175, scope: !952)
!981 = !DILocation(line: 620, column: 191, scope: !952)
!982 = !DILocation(line: 620, column: 210, scope: !952)
!983 = !DILocation(line: 620, column: 216, scope: !952)
!984 = !DILocation(line: 620, column: 229, scope: !952)
!985 = !DILocation(line: 620, column: 235, scope: !952)
!986 = !DILocation(line: 620, column: 4, scope: !952)
!987 = !DILocation(line: 626, column: 9, scope: !988)
!988 = distinct !DILexicalBlock(scope: !952, file: !4, line: 626, column: 8)
!989 = !DILocation(line: 626, column: 8, scope: !952)
!990 = !DILocation(line: 628, column: 7, scope: !991)
!991 = distinct !DILexicalBlock(scope: !988, file: !4, line: 627, column: 71)
!992 = !DILocation(line: 631, column: 15, scope: !952)
!993 = !DILocation(line: 631, column: 23, scope: !952)
!994 = !DILocation(line: 631, column: 21, scope: !952)
!995 = !DILocation(line: 631, column: 30, scope: !952)
!996 = !DILocation(line: 631, column: 28, scope: !952)
!997 = !DILocation(line: 631, column: 13, scope: !952)
!998 = !DILocation(line: 633, column: 8, scope: !999)
!999 = distinct !DILexicalBlock(scope: !952, file: !4, line: 633, column: 8)
!1000 = !DILocation(line: 633, column: 17, scope: !999)
!1001 = !DILocation(line: 633, column: 34, scope: !999)
!1002 = !DILocation(line: 633, column: 37, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !999, file: !4, discriminator: 1)
!1004 = !DILocation(line: 633, column: 46, scope: !1003)
!1005 = !DILocation(line: 633, column: 8, scope: !1003)
!1006 = !DILocation(line: 649, column: 11, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !4, line: 649, column: 11)
!1008 = distinct !DILexicalBlock(scope: !999, file: !4, line: 633, column: 73)
!1009 = !DILocation(line: 649, column: 23, scope: !1007)
!1010 = !DILocation(line: 649, column: 22, scope: !1007)
!1011 = !DILocation(line: 649, column: 20, scope: !1007)
!1012 = !DILocation(line: 649, column: 36, scope: !1007)
!1013 = !DILocation(line: 650, column: 12, scope: !1007)
!1014 = !DILocation(line: 650, column: 23, scope: !1007)
!1015 = !DILocation(line: 650, column: 21, scope: !1007)
!1016 = !DILocation(line: 650, column: 37, scope: !1007)
!1017 = !DILocation(line: 650, column: 41, scope: !1007)
!1018 = !DILocation(line: 650, column: 44, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !1007, file: !4, discriminator: 1)
!1020 = !DILocation(line: 649, column: 11, scope: !1021)
!1021 = !DILexicalBlockFile(scope: !1008, file: !4, discriminator: 1)
!1022 = !DILocation(line: 651, column: 14, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !4, line: 651, column: 14)
!1024 = distinct !DILexicalBlock(scope: !1007, file: !4, line: 650, column: 64)
!1025 = !DILocation(line: 651, column: 23, scope: !1023)
!1026 = !DILocation(line: 651, column: 40, scope: !1023)
!1027 = !DILocation(line: 651, column: 43, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !1023, file: !4, discriminator: 1)
!1029 = !DILocation(line: 651, column: 49, scope: !1028)
!1030 = !DILocation(line: 651, column: 61, scope: !1028)
!1031 = !DILocation(line: 652, column: 14, scope: !1023)
!1032 = !DILocation(line: 651, column: 14, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !1024, file: !4, discriminator: 2)
!1034 = !DILocation(line: 653, column: 17, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !4, line: 653, column: 17)
!1036 = distinct !DILexicalBlock(scope: !1023, file: !4, line: 652, column: 52)
!1037 = !DILocation(line: 653, column: 23, scope: !1035)
!1038 = !DILocation(line: 653, column: 40, scope: !1035)
!1039 = !DILocation(line: 653, column: 17, scope: !1036)
!1040 = !DILocation(line: 654, column: 16, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1035, file: !4, line: 653, column: 48)
!1042 = !DILocation(line: 656, column: 44, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1041, file: !4, line: 656, column: 20)
!1044 = !DILocation(line: 656, column: 50, scope: !1043)
!1045 = !DILocation(line: 656, column: 21, scope: !1043)
!1046 = !DILocation(line: 656, column: 20, scope: !1041)
!1047 = !DILocation(line: 657, column: 19, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1043, file: !4, line: 656, column: 56)
!1049 = !DILocation(line: 658, column: 41, scope: !1048)
!1050 = !DILocation(line: 658, column: 47, scope: !1048)
!1051 = !DILocation(line: 660, column: 41, scope: !1048)
!1052 = !DILocation(line: 660, column: 60, scope: !1048)
!1053 = !DILocation(line: 658, column: 26, scope: !1048)
!1054 = !DILocation(line: 658, column: 19, scope: !1048)
!1055 = !DILocation(line: 662, column: 20, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1041, file: !4, line: 662, column: 20)
!1057 = !DILocation(line: 662, column: 26, scope: !1056)
!1058 = !DILocation(line: 662, column: 45, scope: !1056)
!1059 = !DILocation(line: 662, column: 20, scope: !1041)
!1060 = !DILocation(line: 664, column: 43, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1056, file: !4, line: 662, column: 50)
!1062 = !DILocation(line: 664, column: 49, scope: !1061)
!1063 = !DILocation(line: 664, column: 22, scope: !1061)
!1064 = !DILocation(line: 663, column: 19, scope: !1061)
!1065 = !DILocation(line: 663, column: 25, scope: !1061)
!1066 = !DILocation(line: 663, column: 42, scope: !1061)
!1067 = !DILocation(line: 665, column: 19, scope: !1061)
!1068 = distinct !{!1068, !1067}
!1069 = !DILocalVariable(name: "__src", scope: !1070, file: !4, line: 665, type: !145)
!1070 = distinct !DILexicalBlock(scope: !1061, file: !4, line: 665, column: 22)
!1071 = !DILocation(line: 665, column: 33, scope: !1070)
!1072 = !DILocation(line: 665, column: 42, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !1070, file: !4, discriminator: 1)
!1074 = !DILocation(line: 665, column: 48, scope: !1073)
!1075 = !DILocation(line: 665, column: 33, scope: !1073)
!1076 = !DILocation(line: 665, column: 89, scope: !1073)
!1077 = !DILocation(line: 665, column: 148, scope: !1073)
!1078 = !DILocation(line: 665, column: 147, scope: !1073)
!1079 = !DILocation(line: 665, column: 67, scope: !1073)
!1080 = !DILocation(line: 665, column: 38, scope: !1073)
!1081 = !DILocation(line: 665, column: 70, scope: !1073)
!1082 = !DILocation(line: 665, column: 76, scope: !1073)
!1083 = !DILocation(line: 665, column: 82, scope: !1073)
!1084 = !DILocation(line: 665, column: 45, scope: !1085)
!1085 = !DILexicalBlockFile(scope: !1073, file: !4, discriminator: 2)
!1086 = !DILocation(line: 665, column: 22, scope: !1087)
!1087 = !DILexicalBlockFile(scope: !1073, file: !4, discriminator: 3)
!1088 = !DILocation(line: 665, column: 94, scope: !1073)
!1089 = !DILocation(line: 668, column: 16, scope: !1061)
!1090 = !DILocation(line: 669, column: 13, scope: !1041)
!1091 = !DILocation(line: 670, column: 16, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1035, file: !4, line: 669, column: 20)
!1093 = !DILocation(line: 672, column: 16, scope: !1092)
!1094 = !DILocation(line: 674, column: 10, scope: !1036)
!1095 = !DILocation(line: 675, column: 13, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1023, file: !4, line: 674, column: 17)
!1097 = !DILocation(line: 676, column: 35, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1096, file: !4, line: 676, column: 17)
!1099 = !DILocation(line: 676, column: 42, scope: !1098)
!1100 = !DILocation(line: 676, column: 41, scope: !1098)
!1101 = !DILocation(line: 676, column: 54, scope: !1098)
!1102 = !DILocation(line: 676, column: 53, scope: !1098)
!1103 = !DILocation(line: 676, column: 51, scope: !1098)
!1104 = !DILocation(line: 676, column: 18, scope: !1098)
!1105 = !DILocation(line: 676, column: 17, scope: !1096)
!1106 = !DILocation(line: 677, column: 16, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1098, file: !4, line: 676, column: 70)
!1108 = !DILocation(line: 680, column: 7, scope: !1024)
!1109 = !DILocation(line: 681, column: 10, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1007, file: !4, line: 680, column: 14)
!1111 = !DILocation(line: 683, column: 4, scope: !1008)
!1112 = !DILocation(line: 694, column: 28, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !999, file: !4, line: 683, column: 11)
!1114 = !DILocation(line: 694, column: 34, scope: !1113)
!1115 = !DILocation(line: 694, column: 53, scope: !1113)
!1116 = !DILocation(line: 694, column: 56, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !1113, file: !4, discriminator: 1)
!1118 = !DILocation(line: 694, column: 53, scope: !1117)
!1119 = !DILocation(line: 694, column: 53, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !1113, file: !4, discriminator: 2)
!1121 = !DILocation(line: 694, column: 7, scope: !1120)
!1122 = !DILocation(line: 696, column: 11, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1113, file: !4, line: 696, column: 11)
!1124 = !DILocation(line: 696, column: 23, scope: !1123)
!1125 = !DILocation(line: 696, column: 22, scope: !1123)
!1126 = !DILocation(line: 696, column: 20, scope: !1123)
!1127 = !DILocation(line: 696, column: 11, scope: !1113)
!1128 = !DILocation(line: 697, column: 10, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1123, file: !4, line: 696, column: 37)
!1130 = !DILocation(line: 698, column: 32, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1129, file: !4, line: 698, column: 14)
!1132 = !DILocation(line: 698, column: 39, scope: !1131)
!1133 = !DILocation(line: 698, column: 38, scope: !1131)
!1134 = !DILocation(line: 698, column: 51, scope: !1131)
!1135 = !DILocation(line: 698, column: 50, scope: !1131)
!1136 = !DILocation(line: 698, column: 48, scope: !1131)
!1137 = !DILocation(line: 698, column: 15, scope: !1131)
!1138 = !DILocation(line: 698, column: 14, scope: !1129)
!1139 = !DILocation(line: 699, column: 13, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1131, file: !4, line: 698, column: 67)
!1141 = !DILocation(line: 701, column: 7, scope: !1129)
!1142 = !DILocation(line: 701, column: 18, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1144, file: !4, discriminator: 1)
!1144 = distinct !DILexicalBlock(scope: !1123, file: !4, line: 701, column: 18)
!1145 = !DILocation(line: 701, column: 33, scope: !1143)
!1146 = !DILocation(line: 701, column: 36, scope: !1147)
!1147 = !DILexicalBlockFile(scope: !1144, file: !4, discriminator: 2)
!1148 = !DILocation(line: 701, column: 18, scope: !1147)
!1149 = !DILocation(line: 702, column: 10, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1144, file: !4, line: 701, column: 56)
!1151 = !DILocation(line: 703, column: 32, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1150, file: !4, line: 703, column: 14)
!1153 = !DILocation(line: 703, column: 39, scope: !1152)
!1154 = !DILocation(line: 703, column: 38, scope: !1152)
!1155 = !DILocation(line: 703, column: 15, scope: !1152)
!1156 = !DILocation(line: 703, column: 14, scope: !1150)
!1157 = !DILocation(line: 704, column: 13, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1152, file: !4, line: 703, column: 50)
!1159 = !DILocation(line: 706, column: 7, scope: !1150)
!1160 = !DILocation(line: 709, column: 4, scope: !952)
!1161 = !DILocation(line: 710, column: 1, scope: !952)
!1162 = distinct !DISubprogram(name: "TimeSyncReadHostAndGuest", scope: !4, file: !4, line: 322, type: !1163, isLocal: true, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !125)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!48, !1165, !1165, !1165, !1166, !1165}
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64, align: 64)
!1167 = !DILocalVariable(name: "host", arg: 1, scope: !1162, file: !4, line: 322, type: !1165)
!1168 = !DILocation(line: 322, column: 33, scope: !1162)
!1169 = !DILocalVariable(name: "guest", arg: 2, scope: !1162, file: !4, line: 322, type: !1165)
!1170 = !DILocation(line: 322, column: 46, scope: !1162)
!1171 = !DILocalVariable(name: "apparentError", arg: 3, scope: !1162, file: !4, line: 323, type: !1165)
!1172 = !DILocation(line: 323, column: 33, scope: !1162)
!1173 = !DILocalVariable(name: "apparentErrorValid", arg: 4, scope: !1162, file: !4, line: 323, type: !1166)
!1174 = !DILocation(line: 323, column: 54, scope: !1162)
!1175 = !DILocalVariable(name: "maxTimeError", arg: 5, scope: !1162, file: !4, line: 324, type: !1165)
!1176 = !DILocation(line: 324, column: 33, scope: !1162)
!1177 = !DILocalVariable(name: "host1", scope: !1162, file: !4, line: 326, type: !223)
!1178 = !DILocation(line: 326, column: 10, scope: !1162)
!1179 = !DILocalVariable(name: "host2", scope: !1162, file: !4, line: 326, type: !223)
!1180 = !DILocation(line: 326, column: 17, scope: !1162)
!1181 = !DILocalVariable(name: "hostDiff", scope: !1162, file: !4, line: 326, type: !223)
!1182 = !DILocation(line: 326, column: 24, scope: !1162)
!1183 = !DILocalVariable(name: "tmpGuest", scope: !1162, file: !4, line: 327, type: !223)
!1184 = !DILocation(line: 327, column: 10, scope: !1162)
!1185 = !DILocalVariable(name: "tmpApparentError", scope: !1162, file: !4, line: 327, type: !223)
!1186 = !DILocation(line: 327, column: 20, scope: !1162)
!1187 = !DILocalVariable(name: "tmpMaxTimeError", scope: !1162, file: !4, line: 327, type: !223)
!1188 = !DILocation(line: 327, column: 38, scope: !1162)
!1189 = !DILocalVariable(name: "tmpApparentErrorValid", scope: !1162, file: !4, line: 328, type: !581)
!1190 = !DILocation(line: 328, column: 9, scope: !1162)
!1191 = !DILocalVariable(name: "bestHostDiff", scope: !1162, file: !4, line: 329, type: !223)
!1192 = !DILocation(line: 329, column: 10, scope: !1162)
!1193 = !DILocalVariable(name: "iter", scope: !1162, file: !4, line: 330, type: !51)
!1194 = !DILocation(line: 330, column: 8, scope: !1162)
!1195 = !DILocation(line: 333, column: 5, scope: !1162)
!1196 = !DILocation(line: 333, column: 24, scope: !1162)
!1197 = !DILocation(line: 334, column: 39, scope: !1162)
!1198 = !DILocation(line: 334, column: 52, scope: !1162)
!1199 = !DILocation(line: 334, column: 22, scope: !1162)
!1200 = !DILocation(line: 334, column: 36, scope: !1162)
!1201 = !DILocation(line: 334, column: 13, scope: !1162)
!1202 = !DILocation(line: 334, column: 19, scope: !1162)
!1203 = !DILocation(line: 334, column: 5, scope: !1162)
!1204 = !DILocation(line: 334, column: 10, scope: !1162)
!1205 = !DILocation(line: 336, column: 9, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1162, file: !4, line: 336, column: 8)
!1207 = !DILocation(line: 336, column: 8, scope: !1162)
!1208 = !DILocation(line: 338, column: 7, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1206, file: !4, line: 337, column: 69)
!1210 = !DILocation(line: 341, column: 4, scope: !1162)
!1211 = distinct !{!1211, !1210}
!1212 = !DILocation(line: 342, column: 11, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1162, file: !4, line: 341, column: 7)
!1214 = !DILocation(line: 343, column: 15, scope: !1213)
!1215 = !DILocation(line: 343, column: 13, scope: !1213)
!1216 = !DILocation(line: 345, column: 12, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1213, file: !4, line: 345, column: 11)
!1218 = !DILocation(line: 345, column: 11, scope: !1213)
!1219 = !DILocation(line: 346, column: 100, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1217, file: !4, line: 345, column: 48)
!1221 = !DILocation(line: 346, column: 10, scope: !1222)
!1222 = !DILexicalBlockFile(scope: !1220, file: !4, discriminator: 1)
!1223 = !DILocation(line: 348, column: 10, scope: !1220)
!1224 = !DILocation(line: 351, column: 12, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1213, file: !4, line: 351, column: 11)
!1226 = !DILocation(line: 351, column: 11, scope: !1213)
!1227 = !DILocation(line: 353, column: 10, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1225, file: !4, line: 352, column: 72)
!1229 = !DILocation(line: 356, column: 11, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1213, file: !4, line: 356, column: 11)
!1231 = !DILocation(line: 356, column: 19, scope: !1230)
!1232 = !DILocation(line: 356, column: 17, scope: !1230)
!1233 = !DILocation(line: 356, column: 11, scope: !1213)
!1234 = !DILocation(line: 357, column: 21, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1230, file: !4, line: 356, column: 26)
!1236 = !DILocation(line: 357, column: 29, scope: !1235)
!1237 = !DILocation(line: 357, column: 27, scope: !1235)
!1238 = !DILocation(line: 357, column: 19, scope: !1235)
!1239 = !DILocation(line: 358, column: 7, scope: !1235)
!1240 = !DILocation(line: 359, column: 19, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1230, file: !4, line: 358, column: 14)
!1242 = !DILocation(line: 362, column: 11, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1213, file: !4, line: 362, column: 11)
!1244 = !DILocation(line: 362, column: 23, scope: !1243)
!1245 = !DILocation(line: 362, column: 20, scope: !1243)
!1246 = !DILocation(line: 362, column: 11, scope: !1213)
!1247 = !DILocation(line: 363, column: 25, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1243, file: !4, line: 362, column: 37)
!1249 = !DILocation(line: 363, column: 23, scope: !1248)
!1250 = !DILocation(line: 364, column: 18, scope: !1248)
!1251 = !DILocation(line: 364, column: 26, scope: !1248)
!1252 = !DILocation(line: 364, column: 35, scope: !1248)
!1253 = !DILocation(line: 364, column: 24, scope: !1248)
!1254 = !DILocation(line: 364, column: 11, scope: !1248)
!1255 = !DILocation(line: 364, column: 16, scope: !1248)
!1256 = !DILocation(line: 365, column: 19, scope: !1248)
!1257 = !DILocation(line: 365, column: 11, scope: !1248)
!1258 = !DILocation(line: 365, column: 17, scope: !1248)
!1259 = !DILocation(line: 366, column: 27, scope: !1248)
!1260 = !DILocation(line: 366, column: 11, scope: !1248)
!1261 = !DILocation(line: 366, column: 25, scope: !1248)
!1262 = !DILocation(line: 367, column: 32, scope: !1248)
!1263 = !DILocation(line: 367, column: 11, scope: !1248)
!1264 = !DILocation(line: 367, column: 30, scope: !1248)
!1265 = !DILocation(line: 368, column: 26, scope: !1248)
!1266 = !DILocation(line: 368, column: 11, scope: !1248)
!1267 = !DILocation(line: 368, column: 24, scope: !1248)
!1268 = !DILocation(line: 369, column: 7, scope: !1248)
!1269 = !DILocation(line: 370, column: 4, scope: !1213)
!1270 = !DILocation(line: 370, column: 13, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !1162, file: !4, discriminator: 1)
!1272 = !DILocation(line: 370, column: 18, scope: !1271)
!1273 = !DILocation(line: 370, column: 22, scope: !1271)
!1274 = !DILocation(line: 371, column: 13, scope: !1162)
!1275 = !DILocation(line: 371, column: 26, scope: !1162)
!1276 = !DILocation(line: 370, column: 4, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !1213, file: !4, discriminator: 2)
!1278 = !DILocation(line: 387, column: 4, scope: !1162)
!1279 = !DILocation(line: 388, column: 1, scope: !1162)
!1280 = distinct !DISubprogram(name: "TimeSyncGuestResyncTimeoutHandler", scope: !4, file: !4, line: 580, type: !46, isLocal: true, isDefinition: true, scopeLine: 581, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !125)
!1281 = !DILocalVariable(name: "_data", arg: 1, scope: !1280, file: !4, line: 580, type: !52)
!1282 = !DILocation(line: 580, column: 44, scope: !1280)
!1283 = !DILocalVariable(name: "data", scope: !1280, file: !4, line: 582, type: !130)
!1284 = !DILocation(line: 582, column: 18, scope: !1280)
!1285 = !DILocation(line: 582, column: 25, scope: !1280)
!1286 = !DILocation(line: 587, column: 21, scope: !1280)
!1287 = !DILocation(line: 587, column: 27, scope: !1280)
!1288 = !DILocation(line: 587, column: 4, scope: !1280)
!1289 = !DILocation(line: 588, column: 19, scope: !1280)
!1290 = !DILocation(line: 588, column: 25, scope: !1280)
!1291 = !DILocation(line: 588, column: 4, scope: !1280)
!1292 = !DILocation(line: 589, column: 4, scope: !1280)
!1293 = !DILocation(line: 589, column: 10, scope: !1280)
!1294 = !DILocation(line: 589, column: 27, scope: !1280)
!1295 = !DILocation(line: 591, column: 4, scope: !1280)
!1296 = !DILocation(line: 592, column: 26, scope: !1280)
!1297 = !DILocation(line: 592, column: 32, scope: !1280)
!1298 = !DILocation(line: 593, column: 29, scope: !1280)
!1299 = !DILocation(line: 592, column: 11, scope: !1280)
!1300 = !DILocation(line: 592, column: 4, scope: !1280)
!1301 = !DILocalVariable(name: "data", arg: 1, scope: !127, file: !4, line: 455, type: !130)
!1302 = !DILocation(line: 455, column: 32, scope: !127)
!1303 = !DILocalVariable(name: "adjustment", arg: 2, scope: !127, file: !4, line: 455, type: !223)
!1304 = !DILocation(line: 455, column: 44, scope: !127)
!1305 = !DILocalVariable(name: "now", scope: !127, file: !4, line: 460, type: !223)
!1306 = !DILocation(line: 460, column: 10, scope: !127)
!1307 = !DILocalVariable(name: "remaining", scope: !127, file: !4, line: 461, type: !223)
!1308 = !DILocation(line: 461, column: 10, scope: !127)
!1309 = !DILocalVariable(name: "timeSyncPeriodUS", scope: !127, file: !4, line: 462, type: !223)
!1310 = !DILocation(line: 462, column: 10, scope: !127)
!1311 = !DILocation(line: 462, column: 29, scope: !127)
!1312 = !DILocation(line: 462, column: 35, scope: !127)
!1313 = !DILocation(line: 462, column: 50, scope: !127)
!1314 = !DILocalVariable(name: "slewDiff", scope: !127, file: !4, line: 463, type: !223)
!1315 = !DILocation(line: 463, column: 10, scope: !127)
!1316 = !DILocation(line: 463, column: 22, scope: !127)
!1317 = !DILocation(line: 463, column: 35, scope: !127)
!1318 = !DILocation(line: 463, column: 41, scope: !127)
!1319 = !DILocation(line: 463, column: 33, scope: !127)
!1320 = !DILocation(line: 463, column: 64, scope: !127)
!1321 = !DILocation(line: 465, column: 9, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !127, file: !4, line: 465, column: 8)
!1323 = !DILocation(line: 465, column: 8, scope: !127)
!1324 = !DILocation(line: 466, column: 7, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1322, file: !4, line: 465, column: 40)
!1326 = !DILocation(line: 469, column: 11, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !127, file: !4, line: 469, column: 8)
!1328 = !DILocation(line: 469, column: 23, scope: !1327)
!1329 = !DILocation(line: 469, column: 9, scope: !1327)
!1330 = !DILocation(line: 469, column: 32, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1327, file: !4, discriminator: 1)
!1332 = !DILocation(line: 469, column: 30, scope: !1331)
!1333 = !DILocation(line: 469, column: 9, scope: !1331)
!1334 = !DILocation(line: 469, column: 47, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !1327, file: !4, discriminator: 2)
!1336 = !DILocation(line: 469, column: 9, scope: !1335)
!1337 = !DILocation(line: 469, column: 9, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1327, file: !4, discriminator: 3)
!1339 = !DILocation(line: 469, column: 60, scope: !1338)
!1340 = !DILocation(line: 469, column: 80, scope: !1338)
!1341 = !DILocation(line: 470, column: 8, scope: !1327)
!1342 = !DILocation(line: 470, column: 14, scope: !1327)
!1343 = !DILocation(line: 470, column: 24, scope: !1327)
!1344 = !DILocation(line: 469, column: 8, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !127, file: !4, discriminator: 4)
!1346 = !DILocation(line: 471, column: 103, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1327, file: !4, line: 470, column: 49)
!1348 = !DILocation(line: 471, column: 7, scope: !1347)
!1349 = !DILocation(line: 473, column: 7, scope: !1347)
!1350 = !DILocation(line: 473, column: 13, scope: !1347)
!1351 = !DILocation(line: 473, column: 23, scope: !1347)
!1352 = !DILocation(line: 474, column: 4, scope: !1347)
!1353 = !DILocation(line: 476, column: 8, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !127, file: !4, line: 476, column: 8)
!1355 = !DILocation(line: 476, column: 14, scope: !1354)
!1356 = !DILocation(line: 476, column: 24, scope: !1354)
!1357 = !DILocation(line: 476, column: 8, scope: !127)
!1358 = !DILocation(line: 477, column: 83, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1354, file: !4, line: 476, column: 49)
!1360 = !DILocation(line: 477, column: 7, scope: !1359)
!1361 = !DILocation(line: 478, column: 26, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1359, file: !4, line: 478, column: 11)
!1363 = !DILocation(line: 478, column: 36, scope: !1362)
!1364 = !DILocation(line: 478, column: 12, scope: !1362)
!1365 = !DILocation(line: 478, column: 11, scope: !1359)
!1366 = !DILocation(line: 479, column: 10, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1362, file: !4, line: 478, column: 67)
!1368 = !DILocation(line: 479, column: 16, scope: !1367)
!1369 = !DILocation(line: 479, column: 26, scope: !1367)
!1370 = !DILocation(line: 480, column: 10, scope: !1367)
!1371 = !DILocation(line: 482, column: 14, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1359, file: !4, line: 482, column: 11)
!1373 = !DILocation(line: 482, column: 26, scope: !1372)
!1374 = !DILocation(line: 482, column: 12, scope: !1372)
!1375 = !DILocation(line: 482, column: 35, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !1372, file: !4, discriminator: 1)
!1377 = !DILocation(line: 482, column: 33, scope: !1376)
!1378 = !DILocation(line: 482, column: 12, scope: !1376)
!1379 = !DILocation(line: 482, column: 50, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1372, file: !4, discriminator: 2)
!1381 = !DILocation(line: 482, column: 12, scope: !1380)
!1382 = !DILocation(line: 482, column: 12, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1372, file: !4, discriminator: 3)
!1384 = !DILocation(line: 482, column: 63, scope: !1383)
!1385 = !DILocation(line: 482, column: 77, scope: !1383)
!1386 = !DILocation(line: 482, column: 80, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1372, file: !4, discriminator: 4)
!1388 = !DILocation(line: 482, column: 11, scope: !1387)
!1389 = !DILocation(line: 483, column: 10, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1372, file: !4, line: 482, column: 105)
!1391 = !DILocation(line: 484, column: 29, scope: !1390)
!1392 = !DILocation(line: 484, column: 27, scope: !1390)
!1393 = !DILocation(line: 487, column: 34, scope: !1390)
!1394 = !DILocation(line: 487, column: 45, scope: !1390)
!1395 = !DILocation(line: 487, column: 43, scope: !1390)
!1396 = !DILocation(line: 487, column: 32, scope: !1390)
!1397 = !DILocation(line: 488, column: 10, scope: !1390)
!1398 = !DILocation(line: 488, column: 16, scope: !1390)
!1399 = !DILocation(line: 488, column: 26, scope: !1390)
!1400 = !DILocation(line: 489, column: 7, scope: !1390)
!1401 = !DILocation(line: 490, column: 4, scope: !1359)
!1402 = !DILocation(line: 490, column: 15, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1404, file: !4, discriminator: 1)
!1404 = distinct !DILexicalBlock(scope: !1354, file: !4, line: 490, column: 15)
!1405 = !DILocation(line: 490, column: 21, scope: !1403)
!1406 = !DILocation(line: 490, column: 31, scope: !1403)
!1407 = !DILocation(line: 491, column: 11, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !4, line: 491, column: 11)
!1409 = distinct !DILexicalBlock(scope: !1404, file: !4, line: 490, column: 55)
!1410 = !DILocation(line: 491, column: 17, scope: !1408)
!1411 = !DILocation(line: 491, column: 34, scope: !1408)
!1412 = !DILocation(line: 491, column: 15, scope: !1408)
!1413 = !DILocation(line: 491, column: 11, scope: !1409)
!1414 = !DILocalVariable(name: "ppmErr", scope: !1415, file: !4, line: 492, type: !223)
!1415 = distinct !DILexicalBlock(scope: !1408, file: !4, line: 491, column: 57)
!1416 = !DILocation(line: 492, column: 16, scope: !1415)
!1417 = !DILocation(line: 494, column: 27, scope: !1415)
!1418 = !DILocation(line: 494, column: 10, scope: !1415)
!1419 = !DILocation(line: 495, column: 35, scope: !1415)
!1420 = !DILocation(line: 495, column: 32, scope: !1415)
!1421 = !DILocation(line: 496, column: 35, scope: !1415)
!1422 = !DILocation(line: 496, column: 32, scope: !1415)
!1423 = !DILocation(line: 497, column: 31, scope: !1415)
!1424 = !DILocation(line: 497, column: 29, scope: !1415)
!1425 = !DILocation(line: 497, column: 54, scope: !1415)
!1426 = !DILocation(line: 498, column: 21, scope: !1415)
!1427 = !DILocation(line: 498, column: 27, scope: !1415)
!1428 = !DILocation(line: 498, column: 25, scope: !1415)
!1429 = !DILocation(line: 497, column: 61, scope: !1415)
!1430 = !DILocation(line: 497, column: 17, scope: !1415)
!1431 = !DILocation(line: 499, column: 14, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1415, file: !4, line: 499, column: 14)
!1433 = !DILocation(line: 499, column: 21, scope: !1432)
!1434 = !DILocation(line: 499, column: 27, scope: !1432)
!1435 = !DILocation(line: 499, column: 33, scope: !1432)
!1436 = !DILocation(line: 499, column: 36, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !1432, file: !4, discriminator: 1)
!1438 = !DILocation(line: 499, column: 43, scope: !1437)
!1439 = !DILocation(line: 499, column: 49, scope: !1437)
!1440 = !DILocation(line: 499, column: 14, scope: !1437)
!1441 = !DILocation(line: 500, column: 96, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1432, file: !4, line: 499, column: 57)
!1443 = !DILocation(line: 500, column: 103, scope: !1442)
!1444 = !DILocation(line: 500, column: 110, scope: !1442)
!1445 = !DILocation(line: 500, column: 13, scope: !1442)
!1446 = !DILocation(line: 502, column: 32, scope: !1442)
!1447 = !DILocation(line: 502, column: 13, scope: !1442)
!1448 = !DILocation(line: 503, column: 38, scope: !1442)
!1449 = !DILocation(line: 503, column: 13, scope: !1442)
!1450 = !DILocation(line: 504, column: 13, scope: !1442)
!1451 = !DILocation(line: 504, column: 19, scope: !1442)
!1452 = !DILocation(line: 504, column: 29, scope: !1442)
!1453 = !DILocation(line: 505, column: 10, scope: !1442)
!1454 = !DILocation(line: 507, column: 117, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1432, file: !4, line: 505, column: 17)
!1456 = !DILocation(line: 507, column: 124, scope: !1455)
!1457 = !DILocation(line: 507, column: 131, scope: !1455)
!1458 = !DILocation(line: 507, column: 13, scope: !1455)
!1459 = !DILocation(line: 509, column: 13, scope: !1455)
!1460 = !DILocation(line: 509, column: 19, scope: !1455)
!1461 = !DILocation(line: 509, column: 29, scope: !1455)
!1462 = !DILocation(line: 511, column: 7, scope: !1415)
!1463 = !DILocation(line: 512, column: 91, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1408, file: !4, line: 511, column: 14)
!1465 = !DILocation(line: 512, column: 10, scope: !1464)
!1466 = !DILocation(line: 513, column: 29, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1464, file: !4, line: 513, column: 14)
!1468 = !DILocation(line: 513, column: 39, scope: !1467)
!1469 = !DILocation(line: 513, column: 15, scope: !1467)
!1470 = !DILocation(line: 513, column: 14, scope: !1464)
!1471 = !DILocation(line: 514, column: 13, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1467, file: !4, line: 513, column: 70)
!1473 = !DILocation(line: 516, column: 35, scope: !1464)
!1474 = !DILocation(line: 516, column: 32, scope: !1464)
!1475 = !DILocation(line: 517, column: 35, scope: !1464)
!1476 = !DILocation(line: 517, column: 32, scope: !1464)
!1477 = !DILocation(line: 519, column: 4, scope: !1409)
!1478 = !DILocation(line: 521, column: 83, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1404, file: !4, line: 519, column: 11)
!1480 = !DILocation(line: 521, column: 7, scope: !1479)
!1481 = !DILocation(line: 522, column: 31, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1479, file: !4, line: 522, column: 11)
!1483 = !DILocation(line: 522, column: 12, scope: !1482)
!1484 = !DILocation(line: 522, column: 11, scope: !1479)
!1485 = !DILocation(line: 523, column: 28, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1482, file: !4, line: 522, column: 44)
!1487 = !DILocation(line: 523, column: 10, scope: !1486)
!1488 = !DILocation(line: 524, column: 7, scope: !1486)
!1489 = !DILocation(line: 526, column: 4, scope: !127)
!1490 = !DILocation(line: 527, column: 1, scope: !127)
!1491 = distinct !DISubprogram(name: "TimeSyncReadHost", scope: !4, file: !4, line: 212, type: !1492, isLocal: true, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !125)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!48, !1165, !1165, !1166, !1165}
!1494 = !DILocalVariable(name: "host", arg: 1, scope: !1491, file: !4, line: 212, type: !1165)
!1495 = !DILocation(line: 212, column: 25, scope: !1491)
!1496 = !DILocalVariable(name: "apparentError", arg: 2, scope: !1491, file: !4, line: 212, type: !1165)
!1497 = !DILocation(line: 212, column: 38, scope: !1491)
!1498 = !DILocalVariable(name: "apparentErrorValid", arg: 3, scope: !1491, file: !4, line: 212, type: !1166)
!1499 = !DILocation(line: 212, column: 59, scope: !1491)
!1500 = !DILocalVariable(name: "maxTimeError", arg: 4, scope: !1491, file: !4, line: 213, type: !1165)
!1501 = !DILocation(line: 213, column: 25, scope: !1491)
!1502 = !DILocalVariable(name: "bp", scope: !1491, file: !4, line: 215, type: !242)
!1503 = !DILocation(line: 215, column: 19, scope: !1491)
!1504 = !DILocalVariable(name: "maxTimeLag", scope: !1491, file: !4, line: 216, type: !223)
!1505 = !DILocation(line: 216, column: 10, scope: !1491)
!1506 = !DILocalVariable(name: "interruptLag", scope: !1491, file: !4, line: 217, type: !223)
!1507 = !DILocation(line: 217, column: 10, scope: !1491)
!1508 = !DILocalVariable(name: "hostSecs", scope: !1491, file: !4, line: 218, type: !223)
!1509 = !DILocation(line: 218, column: 10, scope: !1491)
!1510 = !DILocalVariable(name: "hostUsecs", scope: !1491, file: !4, line: 219, type: !223)
!1511 = !DILocation(line: 219, column: 10, scope: !1491)
!1512 = !DILocalVariable(name: "timeLagCall", scope: !1491, file: !4, line: 220, type: !581)
!1513 = !DILocation(line: 220, column: 9, scope: !1491)
!1514 = !DILocation(line: 257, column: 7, scope: !1491)
!1515 = !DILocation(line: 257, column: 10, scope: !1491)
!1516 = !DILocation(line: 257, column: 13, scope: !1491)
!1517 = !DILocation(line: 257, column: 19, scope: !1491)
!1518 = !DILocation(line: 257, column: 23, scope: !1491)
!1519 = !DILocation(line: 258, column: 4, scope: !1491)
!1520 = !DILocation(line: 259, column: 11, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1491, file: !4, line: 259, column: 8)
!1522 = !DILocation(line: 259, column: 15, scope: !1521)
!1523 = !DILocation(line: 259, column: 18, scope: !1521)
!1524 = !DILocation(line: 259, column: 23, scope: !1521)
!1525 = !DILocation(line: 259, column: 8, scope: !1491)
!1526 = !DILocation(line: 260, column: 30, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1521, file: !4, line: 259, column: 38)
!1528 = !DILocation(line: 260, column: 34, scope: !1527)
!1529 = !DILocation(line: 260, column: 37, scope: !1527)
!1530 = !DILocation(line: 260, column: 19, scope: !1527)
!1531 = !DILocation(line: 260, column: 42, scope: !1527)
!1532 = !DILocation(line: 260, column: 54, scope: !1527)
!1533 = !DILocation(line: 260, column: 58, scope: !1527)
!1534 = !DILocation(line: 260, column: 61, scope: !1527)
!1535 = !DILocation(line: 260, column: 51, scope: !1527)
!1536 = !DILocation(line: 260, column: 49, scope: !1527)
!1537 = !DILocation(line: 260, column: 16, scope: !1527)
!1538 = !DILocation(line: 261, column: 25, scope: !1527)
!1539 = !DILocation(line: 261, column: 29, scope: !1527)
!1540 = !DILocation(line: 261, column: 32, scope: !1527)
!1541 = !DILocation(line: 261, column: 22, scope: !1527)
!1542 = !DILocation(line: 261, column: 20, scope: !1527)
!1543 = !DILocation(line: 262, column: 19, scope: !1527)
!1544 = !DILocation(line: 263, column: 7, scope: !1527)
!1545 = !DILocation(line: 264, column: 4, scope: !1527)
!1546 = !DILocation(line: 265, column: 7, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1521, file: !4, line: 264, column: 11)
!1548 = !DILocation(line: 267, column: 20, scope: !1547)
!1549 = !DILocation(line: 268, column: 19, scope: !1547)
!1550 = !DILocation(line: 269, column: 10, scope: !1547)
!1551 = !DILocation(line: 269, column: 13, scope: !1547)
!1552 = !DILocation(line: 269, column: 16, scope: !1547)
!1553 = !DILocation(line: 269, column: 22, scope: !1547)
!1554 = !DILocation(line: 269, column: 26, scope: !1547)
!1555 = !DILocation(line: 270, column: 7, scope: !1547)
!1556 = !DILocation(line: 271, column: 14, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1547, file: !4, line: 271, column: 11)
!1558 = !DILocation(line: 271, column: 18, scope: !1557)
!1559 = !DILocation(line: 271, column: 21, scope: !1557)
!1560 = !DILocation(line: 271, column: 26, scope: !1557)
!1561 = !DILocation(line: 271, column: 11, scope: !1547)
!1562 = !DILocation(line: 272, column: 33, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1557, file: !4, line: 271, column: 41)
!1564 = !DILocation(line: 272, column: 37, scope: !1563)
!1565 = !DILocation(line: 272, column: 40, scope: !1563)
!1566 = !DILocation(line: 272, column: 22, scope: !1563)
!1567 = !DILocation(line: 272, column: 45, scope: !1563)
!1568 = !DILocation(line: 272, column: 57, scope: !1563)
!1569 = !DILocation(line: 272, column: 61, scope: !1563)
!1570 = !DILocation(line: 272, column: 64, scope: !1563)
!1571 = !DILocation(line: 272, column: 54, scope: !1563)
!1572 = !DILocation(line: 272, column: 52, scope: !1563)
!1573 = !DILocation(line: 272, column: 19, scope: !1563)
!1574 = !DILocation(line: 273, column: 7, scope: !1563)
!1575 = !DILocation(line: 274, column: 10, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1557, file: !4, line: 273, column: 14)
!1577 = !DILocation(line: 276, column: 13, scope: !1576)
!1578 = !DILocation(line: 276, column: 16, scope: !1576)
!1579 = !DILocation(line: 276, column: 19, scope: !1576)
!1580 = !DILocation(line: 276, column: 25, scope: !1576)
!1581 = !DILocation(line: 276, column: 29, scope: !1576)
!1582 = !DILocation(line: 277, column: 10, scope: !1576)
!1583 = !DILocation(line: 278, column: 24, scope: !1576)
!1584 = !DILocation(line: 278, column: 28, scope: !1576)
!1585 = !DILocation(line: 278, column: 31, scope: !1576)
!1586 = !DILocation(line: 278, column: 21, scope: !1576)
!1587 = !DILocation(line: 278, column: 19, scope: !1576)
!1588 = !DILocation(line: 281, column: 19, scope: !1491)
!1589 = !DILocation(line: 281, column: 23, scope: !1491)
!1590 = !DILocation(line: 281, column: 26, scope: !1491)
!1591 = !DILocation(line: 281, column: 16, scope: !1491)
!1592 = !DILocation(line: 281, column: 14, scope: !1491)
!1593 = !DILocation(line: 282, column: 20, scope: !1491)
!1594 = !DILocation(line: 282, column: 24, scope: !1491)
!1595 = !DILocation(line: 282, column: 27, scope: !1491)
!1596 = !DILocation(line: 282, column: 17, scope: !1491)
!1597 = !DILocation(line: 282, column: 15, scope: !1491)
!1598 = !DILocation(line: 284, column: 12, scope: !1491)
!1599 = !DILocation(line: 284, column: 21, scope: !1491)
!1600 = !DILocation(line: 284, column: 33, scope: !1491)
!1601 = !DILocation(line: 284, column: 31, scope: !1491)
!1602 = !DILocation(line: 284, column: 5, scope: !1491)
!1603 = !DILocation(line: 284, column: 10, scope: !1491)
!1604 = !DILocation(line: 285, column: 22, scope: !1491)
!1605 = !DILocation(line: 285, column: 21, scope: !1491)
!1606 = !DILocation(line: 285, column: 5, scope: !1491)
!1607 = !DILocation(line: 285, column: 19, scope: !1491)
!1608 = !DILocation(line: 286, column: 26, scope: !1491)
!1609 = !DILocation(line: 286, column: 5, scope: !1491)
!1610 = !DILocation(line: 286, column: 24, scope: !1491)
!1611 = !DILocation(line: 287, column: 20, scope: !1491)
!1612 = !DILocation(line: 287, column: 5, scope: !1491)
!1613 = !DILocation(line: 287, column: 18, scope: !1491)
!1614 = !DILocation(line: 289, column: 8, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1491, file: !4, line: 289, column: 8)
!1616 = !DILocation(line: 289, column: 17, scope: !1615)
!1617 = !DILocation(line: 289, column: 8, scope: !1491)
!1618 = !DILocation(line: 290, column: 105, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1615, file: !4, line: 289, column: 23)
!1620 = !DILocation(line: 290, column: 115, scope: !1619)
!1621 = !DILocation(line: 290, column: 7, scope: !1619)
!1622 = !DILocation(line: 292, column: 7, scope: !1619)
!1623 = !DILocation(line: 295, column: 4, scope: !1491)
!1624 = !DILocation(line: 296, column: 1, scope: !1491)
!1625 = distinct !DISubprogram(name: "ParseBoolOption", scope: !4, file: !4, line: 843, type: !1626, isLocal: true, isDefinition: true, scopeLine: 845, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !125)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!48, !99, !1628}
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!1629 = !DILocalVariable(name: "string", arg: 1, scope: !1625, file: !4, line: 843, type: !99)
!1630 = !DILocation(line: 843, column: 30, scope: !1625)
!1631 = !DILocalVariable(name: "value", arg: 2, scope: !1625, file: !4, line: 844, type: !1628)
!1632 = !DILocation(line: 844, column: 27, scope: !1625)
!1633 = !DILocation(line: 846, column: 18, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1625, file: !4, line: 846, column: 11)
!1635 = !DILocation(line: 846, column: 11, scope: !1634)
!1636 = !DILocation(line: 846, column: 31, scope: !1634)
!1637 = !DILocation(line: 846, column: 11, scope: !1625)
!1638 = !DILocation(line: 847, column: 11, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1634, file: !4, line: 846, column: 37)
!1640 = !DILocation(line: 847, column: 17, scope: !1639)
!1641 = !DILocation(line: 848, column: 7, scope: !1639)
!1642 = !DILocation(line: 848, column: 25, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1644, file: !4, discriminator: 1)
!1644 = distinct !DILexicalBlock(scope: !1634, file: !4, line: 848, column: 18)
!1645 = !DILocation(line: 848, column: 18, scope: !1643)
!1646 = !DILocation(line: 848, column: 38, scope: !1643)
!1647 = !DILocation(line: 849, column: 11, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1644, file: !4, line: 848, column: 44)
!1649 = !DILocation(line: 849, column: 17, scope: !1648)
!1650 = !DILocation(line: 850, column: 7, scope: !1648)
!1651 = !DILocation(line: 851, column: 10, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1644, file: !4, line: 850, column: 14)
!1653 = !DILocation(line: 853, column: 7, scope: !1625)
!1654 = !DILocation(line: 854, column: 1, scope: !1625)
!1655 = distinct !DISubprogram(name: "TimeSyncStartLoop", scope: !4, file: !4, line: 746, type: !1656, isLocal: true, isDefinition: true, scopeLine: 748, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !125)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!581, !92, !130}
!1658 = !DILocalVariable(name: "ctx", arg: 1, scope: !1655, file: !4, line: 746, type: !92)
!1659 = !DILocation(line: 746, column: 32, scope: !1655)
!1660 = !DILocalVariable(name: "data", arg: 2, scope: !1655, file: !4, line: 747, type: !130)
!1661 = !DILocation(line: 747, column: 33, scope: !1655)
!1662 = !DILocation(line: 753, column: 4, scope: !1655)
!1663 = !DILocation(line: 758, column: 22, scope: !1655)
!1664 = !DILocation(line: 758, column: 4, scope: !1655)
!1665 = !DILocation(line: 760, column: 74, scope: !1655)
!1666 = !DILocation(line: 760, column: 80, scope: !1655)
!1667 = !DILocation(line: 760, column: 4, scope: !1655)
!1668 = !DILocation(line: 762, column: 24, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1655, file: !4, line: 762, column: 8)
!1670 = !DILocation(line: 762, column: 30, scope: !1669)
!1671 = !DILocation(line: 762, column: 68, scope: !1669)
!1672 = !DILocation(line: 762, column: 9, scope: !1669)
!1673 = !DILocation(line: 762, column: 8, scope: !1655)
!1674 = !DILocation(line: 763, column: 7, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1669, file: !4, line: 762, column: 75)
!1676 = !DILocation(line: 764, column: 4, scope: !1675)
!1677 = !DILocation(line: 766, column: 39, scope: !1655)
!1678 = !DILocation(line: 766, column: 45, scope: !1655)
!1679 = !DILocation(line: 766, column: 60, scope: !1655)
!1680 = !DILocation(line: 766, column: 18, scope: !1655)
!1681 = !DILocation(line: 766, column: 4, scope: !1655)
!1682 = !DILocation(line: 766, column: 10, scope: !1655)
!1683 = !DILocation(line: 766, column: 16, scope: !1655)
!1684 = !DILocation(line: 767, column: 4, scope: !1655)
!1685 = distinct !{!1685, !1684}
!1686 = !DILocalVariable(name: "__src", scope: !1687, file: !4, line: 767, type: !145)
!1687 = distinct !DILexicalBlock(scope: !1655, file: !4, line: 767, column: 7)
!1688 = !DILocation(line: 767, column: 18, scope: !1687)
!1689 = !DILocation(line: 767, column: 27, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1687, file: !4, discriminator: 1)
!1691 = !DILocation(line: 767, column: 33, scope: !1690)
!1692 = !DILocation(line: 767, column: 18, scope: !1690)
!1693 = !DILocation(line: 767, column: 63, scope: !1690)
!1694 = !DILocation(line: 767, column: 112, scope: !1690)
!1695 = !DILocation(line: 767, column: 111, scope: !1690)
!1696 = !DILocation(line: 767, column: 41, scope: !1690)
!1697 = !DILocation(line: 767, column: 23, scope: !1690)
!1698 = !DILocation(line: 767, column: 55, scope: !1690)
!1699 = !DILocation(line: 767, column: 61, scope: !1690)
!1700 = !DILocation(line: 767, column: 30, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !1690, file: !4, discriminator: 2)
!1702 = !DILocation(line: 767, column: 7, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1690, file: !4, discriminator: 3)
!1704 = !DILocation(line: 767, column: 73, scope: !1690)
!1705 = !DILocation(line: 770, column: 4, scope: !1655)
!1706 = !DILocation(line: 770, column: 10, scope: !1655)
!1707 = !DILocation(line: 770, column: 16, scope: !1655)
!1708 = !DILocation(line: 771, column: 4, scope: !1655)
!1709 = distinct !DISubprogram(name: "TimeSyncStopLoop", scope: !4, file: !4, line: 783, type: !1710, isLocal: true, isDefinition: true, scopeLine: 785, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !125)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{null, !92, !130}
!1712 = !DILocalVariable(name: "ctx", arg: 1, scope: !1709, file: !4, line: 783, type: !92)
!1713 = !DILocation(line: 783, column: 31, scope: !1709)
!1714 = !DILocalVariable(name: "data", arg: 2, scope: !1709, file: !4, line: 784, type: !130)
!1715 = !DILocation(line: 784, column: 32, scope: !1709)
!1716 = !DILocation(line: 790, column: 4, scope: !1709)
!1717 = !DILocation(line: 792, column: 25, scope: !1709)
!1718 = !DILocation(line: 792, column: 4, scope: !1709)
!1719 = !DILocation(line: 793, column: 4, scope: !1709)
!1720 = !DILocation(line: 795, column: 21, scope: !1709)
!1721 = !DILocation(line: 795, column: 27, scope: !1709)
!1722 = !DILocation(line: 795, column: 4, scope: !1709)
!1723 = !DILocation(line: 796, column: 19, scope: !1709)
!1724 = !DILocation(line: 796, column: 25, scope: !1709)
!1725 = !DILocation(line: 796, column: 4, scope: !1709)
!1726 = !DILocation(line: 797, column: 4, scope: !1709)
!1727 = !DILocation(line: 797, column: 10, scope: !1709)
!1728 = !DILocation(line: 797, column: 16, scope: !1709)
!1729 = !DILocation(line: 799, column: 4, scope: !1709)
!1730 = !DILocation(line: 799, column: 10, scope: !1709)
!1731 = !DILocation(line: 799, column: 16, scope: !1709)
!1732 = !DILocation(line: 800, column: 1, scope: !1709)
!1733 = distinct !DISubprogram(name: "ToolsDaemonTimeSyncLoop", scope: !4, file: !4, line: 722, type: !46, isLocal: true, isDefinition: true, scopeLine: 723, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !125)
!1734 = !DILocalVariable(name: "_data", arg: 1, scope: !1733, file: !4, line: 722, type: !52)
!1735 = !DILocation(line: 722, column: 34, scope: !1733)
!1736 = !DILocalVariable(name: "data", scope: !1733, file: !4, line: 724, type: !130)
!1737 = !DILocation(line: 724, column: 18, scope: !1733)
!1738 = !DILocation(line: 724, column: 25, scope: !1733)
!1739 = !DILocation(line: 728, column: 24, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1733, file: !4, line: 728, column: 8)
!1741 = !DILocation(line: 728, column: 30, scope: !1740)
!1742 = !DILocation(line: 728, column: 68, scope: !1740)
!1743 = !DILocation(line: 728, column: 9, scope: !1740)
!1744 = !DILocation(line: 728, column: 8, scope: !1733)
!1745 = !DILocation(line: 729, column: 7, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1740, file: !4, line: 728, column: 75)
!1747 = !DILocation(line: 730, column: 4, scope: !1746)
!1748 = !DILocation(line: 732, column: 4, scope: !1733)
