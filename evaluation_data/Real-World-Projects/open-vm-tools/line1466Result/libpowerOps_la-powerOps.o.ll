; ModuleID = './libpowerOps_la-powerOps.o.i'
source_filename = "./libpowerOps_la-powerOps.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ToolsPluginData = type { i8*, %struct._GArray*, i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)*, i8* }
%struct._GArray = type { i8*, i32 }
%struct.ToolsAppCtx = type { i32, i8*, i32, i32, %struct._GMainLoop*, %struct._RpcChannel*, %struct._GKeyFile*, i32, i32, i8**, i8* }
%struct._GMainLoop = type opaque
%struct._RpcChannel = type opaque
%struct._GKeyFile = type opaque
%struct.ToolsPluginSignalCb = type { i8*, i8*, i8* }
%struct.GuestOsStateChangeCmd = type { i32, i8*, i8* }
%struct.ToolsAppCapability = type { i32, i8*, i32, i32 }
%struct.PowerOpState = type { i32, i32, i32, %struct.ToolsAppCtx*, [6 x i32] }
%struct.ToolsAppReg = type { i32, %struct._GArray* }
%struct.RpcChannelCallback = type { i8*, i32 (%struct.RpcInData*)*, i8*, i8*, i8*, i64 }
%struct.RpcInData = type { i8*, i8*, i64, i8*, i64, i32, i8*, i8* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%union.anon = type { i32 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.2 = type { i32 }
%union.anon.3 = type { i32 }
%union.anon.4 = type { i32 }

@vm_version = constant [20 x i8] c"version=10.3.0.5330\00", section ".modinfo", align 16
@ToolsOnLoad.regData = internal global %struct.ToolsPluginData { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct._GArray* null, i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)* null, i8* null }, align 8
@.str = private unnamed_addr constant [9 x i8] c"powerops\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"tcs_capabilities\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"tcs_set_option\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"tcs_shutdown\00", align 1
@ToolsOnLoad.sigs = private unnamed_addr constant [3 x %struct.ToolsPluginSignalCb] [%struct.ToolsPluginSignalCb { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* bitcast (%struct._GArray* (i8*, %struct.ToolsAppCtx*, i32, i8*)* @PowerOpsCapabilityCb to i8*), i8* null }, %struct.ToolsPluginSignalCb { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* bitcast (i32 (i8*, %struct.ToolsAppCtx*, i8*, i8*, %struct.ToolsPluginData*)* @PowerOpsSetOption to i8*), i8* bitcast (%struct.ToolsPluginData* @ToolsOnLoad.regData to i8*) }, %struct.ToolsPluginSignalCb { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* bitcast (void (i8*, %struct.ToolsAppCtx*, %struct.ToolsPluginData*)* @PowerOpsShutdown to i8*), i8* bitcast (%struct.ToolsPluginData* @ToolsOnLoad.regData to i8*) }], align 16
@stateChangeCmdTable = internal constant [5 x %struct.GuestOsStateChangeCmd] [%struct.GuestOsStateChangeCmd { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0) }, %struct.GuestOsStateChangeCmd { i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0) }, %struct.GuestOsStateChangeCmd { i32 5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0) }, %struct.GuestOsStateChangeCmd { i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0) }, %struct.GuestOsStateChangeCmd { i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0) }], align 16
@PowerOpsCapabilityCb.caps = internal constant [2 x %struct.ToolsAppCapability] [%struct.ToolsAppCapability { i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 1 }, %struct.ToolsAppCapability { i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 1 }], align 16
@.str.4 = private unnamed_addr constant [12 x i8] c"statechange\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"softpowerop_retry\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"toolScripts.afterPowerOn\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"toolScripts.beforePowerOff\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"toolScripts.beforeSuspend\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"toolScripts.afterResume\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"poweron\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"OS_PowerOn\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"resume\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"OS_Resume\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"OS_Suspend\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"halt\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"OS_Halt\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"reboot\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"OS_Reboot\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"State change already in progress.\0A\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"State change already in progress\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"State change: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"Script for %s not configured to run\0A\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stateChgConfNames = internal global [6 x i8*] [i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0)], align 16
@.str.27 = private unnamed_addr constant [47 x i8] c"No default script to run for state change %s.\0A\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"No script to run for state change %s.\0A\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"Error starting script\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"Invalid state change command.\0A\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"Invalid state change command\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"State change complete, success = %d.\0A\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"tools.os.statechange.status %d %d\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"Unable to send the status RPC.\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"Initiating reboot.\0A\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"Initiating halt.\0A\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"poweroff-script\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"poweron-script\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"resume-script\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"suspend-script\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"Conversion error: %s\0A\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"Executing script: '%s'\0A\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"Error starting script: %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"Script exit code: %d, success = %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [43 x i8] c"Script killed by signal: %d, success = %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [44 x i8] c"Script stopped by signal: %d, success = %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [38 x i8] c"Script exit status: %d, success = %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.ToolsPluginData* @ToolsOnLoad(%struct.ToolsAppCtx*) #0 !dbg !113 {
  %2 = alloca %struct.ToolsAppCtx*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.PowerOpState*, align 8
  %5 = alloca [3 x %struct.ToolsPluginSignalCb], align 16
  %6 = alloca [2 x %struct.ToolsAppReg], align 16
  %7 = alloca %struct.RpcChannelCallback, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %2, metadata !207, metadata !208), !dbg !209
  call void @llvm.dbg.declare(metadata i64* %3, metadata !210, metadata !208), !dbg !214
  call void @llvm.dbg.declare(metadata %struct.PowerOpState** %4, metadata !215, metadata !208), !dbg !227
  call void @llvm.dbg.declare(metadata [3 x %struct.ToolsPluginSignalCb]* %5, metadata !228, metadata !208), !dbg !238
  %8 = bitcast [3 x %struct.ToolsPluginSignalCb]* %5 to i8*, !dbg !238
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast ([3 x %struct.ToolsPluginSignalCb]* @ToolsOnLoad.sigs to i8*), i64 72, i32 16, i1 false), !dbg !238
  call void @llvm.dbg.declare(metadata [2 x %struct.ToolsAppReg]* %6, metadata !239, metadata !208), !dbg !246
  %9 = getelementptr inbounds [2 x %struct.ToolsAppReg], [2 x %struct.ToolsAppReg]* %6, i64 0, i64 0, !dbg !247
  %10 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %9, i32 0, i32 0, !dbg !248
  store i32 1, i32* %10, align 16, !dbg !248
  %11 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %9, i32 0, i32 1, !dbg !248
  store %struct._GArray* null, %struct._GArray** %11, align 8, !dbg !248
  %12 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %9, i64 1, !dbg !247
  %13 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %12, i32 0, i32 0, !dbg !249
  store i32 2, i32* %13, align 16, !dbg !249
  %14 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %12, i32 0, i32 1, !dbg !249
  %15 = getelementptr inbounds [3 x %struct.ToolsPluginSignalCb], [3 x %struct.ToolsPluginSignalCb]* %5, i32 0, i32 0, !dbg !250
  %16 = bitcast %struct.ToolsPluginSignalCb* %15 to i8*, !dbg !250
  %17 = call %struct._GArray* @VMTools_WrapArray(i8* %16, i32 24, i32 3), !dbg !251
  store %struct._GArray* %17, %struct._GArray** %14, align 8, !dbg !249
  %18 = call noalias i8* @g_malloc0(i64 48), !dbg !252
  %19 = bitcast i8* %18 to %struct.PowerOpState*, !dbg !252
  store %struct.PowerOpState* %19, %struct.PowerOpState** %4, align 8, !dbg !253
  %20 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %2, align 8, !dbg !254
  %21 = load %struct.PowerOpState*, %struct.PowerOpState** %4, align 8, !dbg !255
  %22 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %21, i32 0, i32 3, !dbg !256
  store %struct.ToolsAppCtx* %20, %struct.ToolsAppCtx** %22, align 8, !dbg !257
  %23 = load %struct.PowerOpState*, %struct.PowerOpState** %4, align 8, !dbg !258
  %24 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %23, i32 0, i32 2, !dbg !259
  store i32 -1, i32* %24, align 8, !dbg !260
  store i64 0, i64* %3, align 8, !dbg !261
  br label %25, !dbg !263

; <label>:25:                                     ; preds = %33, %1
  %26 = load i64, i64* %3, align 8, !dbg !264
  %27 = icmp ult i64 %26, 6, !dbg !267
  br i1 %27, label %28, label %36, !dbg !268

; <label>:28:                                     ; preds = %25
  %29 = load i64, i64* %3, align 8, !dbg !269
  %30 = load %struct.PowerOpState*, %struct.PowerOpState** %4, align 8, !dbg !271
  %31 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %30, i32 0, i32 4, !dbg !272
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %31, i64 0, i64 %29, !dbg !271
  store i32 1, i32* %32, align 4, !dbg !273
  br label %33, !dbg !274

; <label>:33:                                     ; preds = %28
  %34 = load i64, i64* %3, align 8, !dbg !275
  %35 = add i64 %34, 1, !dbg !275
  store i64 %35, i64* %3, align 8, !dbg !275
  br label %25, !dbg !277, !llvm.loop !278

; <label>:36:                                     ; preds = %25
  %37 = call %struct._GArray* @g_array_sized_new(i32 0, i32 1, i32 48, i32 5), !dbg !280
  %38 = getelementptr inbounds [2 x %struct.ToolsAppReg], [2 x %struct.ToolsAppReg]* %6, i64 0, i64 0, !dbg !281
  %39 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %38, i32 0, i32 1, !dbg !282
  store %struct._GArray* %37, %struct._GArray** %39, align 8, !dbg !283
  store i64 0, i64* %3, align 8, !dbg !284
  br label %40, !dbg !286

; <label>:40:                                     ; preds = %61, %36
  %41 = load i64, i64* %3, align 8, !dbg !287
  %42 = icmp ult i64 %41, 5, !dbg !290
  br i1 %42, label %43, label %64, !dbg !291

; <label>:43:                                     ; preds = %40
  call void @llvm.dbg.declare(metadata %struct.RpcChannelCallback* %7, metadata !292, metadata !208), !dbg !319
  %44 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %7, i32 0, i32 0, !dbg !320
  %45 = load i64, i64* %3, align 8, !dbg !321
  %46 = getelementptr inbounds [5 x %struct.GuestOsStateChangeCmd], [5 x %struct.GuestOsStateChangeCmd]* @stateChangeCmdTable, i64 0, i64 %45, !dbg !322
  %47 = getelementptr inbounds %struct.GuestOsStateChangeCmd, %struct.GuestOsStateChangeCmd* %46, i32 0, i32 2, !dbg !323
  %48 = load i8*, i8** %47, align 8, !dbg !323
  store i8* %48, i8** %44, align 8, !dbg !320
  %49 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %7, i32 0, i32 1, !dbg !320
  store i32 (%struct.RpcInData*)* @PowerOpsStateChange, i32 (%struct.RpcInData*)** %49, align 8, !dbg !320
  %50 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %7, i32 0, i32 2, !dbg !320
  %51 = load %struct.PowerOpState*, %struct.PowerOpState** %4, align 8, !dbg !324
  %52 = bitcast %struct.PowerOpState* %51 to i8*, !dbg !324
  store i8* %52, i8** %50, align 8, !dbg !320
  %53 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %7, i32 0, i32 3, !dbg !320
  store i8* null, i8** %53, align 8, !dbg !320
  %54 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %7, i32 0, i32 4, !dbg !320
  store i8* null, i8** %54, align 8, !dbg !320
  %55 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %7, i32 0, i32 5, !dbg !320
  store i64 0, i64* %55, align 8, !dbg !320
  %56 = getelementptr inbounds [2 x %struct.ToolsAppReg], [2 x %struct.ToolsAppReg]* %6, i64 0, i64 0, !dbg !325
  %57 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %56, i32 0, i32 1, !dbg !326
  %58 = load %struct._GArray*, %struct._GArray** %57, align 8, !dbg !326
  %59 = bitcast %struct.RpcChannelCallback* %7 to i8*, !dbg !327
  %60 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %58, i8* %59, i32 1), !dbg !328
  br label %61, !dbg !329

; <label>:61:                                     ; preds = %43
  %62 = load i64, i64* %3, align 8, !dbg !330
  %63 = add i64 %62, 1, !dbg !330
  store i64 %63, i64* %3, align 8, !dbg !330
  br label %40, !dbg !332, !llvm.loop !333

; <label>:64:                                     ; preds = %40
  %65 = getelementptr inbounds [2 x %struct.ToolsAppReg], [2 x %struct.ToolsAppReg]* %6, i32 0, i32 0, !dbg !335
  %66 = bitcast %struct.ToolsAppReg* %65 to i8*, !dbg !335
  %67 = call %struct._GArray* @VMTools_WrapArray(i8* %66, i32 16, i32 2), !dbg !336
  store %struct._GArray* %67, %struct._GArray** getelementptr inbounds (%struct.ToolsPluginData, %struct.ToolsPluginData* @ToolsOnLoad.regData, i32 0, i32 1), align 8, !dbg !337
  %68 = load %struct.PowerOpState*, %struct.PowerOpState** %4, align 8, !dbg !338
  %69 = bitcast %struct.PowerOpState* %68 to i8*, !dbg !338
  store i8* %69, i8** getelementptr inbounds (%struct.ToolsPluginData, %struct.ToolsPluginData* @ToolsOnLoad.regData, i32 0, i32 3), align 8, !dbg !339
  ret %struct.ToolsPluginData* @ToolsOnLoad.regData, !dbg !340
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal %struct._GArray* @PowerOpsCapabilityCb(i8*, %struct.ToolsAppCtx*, i32, i8*) #0 !dbg !173 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ToolsAppCtx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !341, metadata !208), !dbg !342
  store %struct.ToolsAppCtx* %1, %struct.ToolsAppCtx** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %6, metadata !343, metadata !208), !dbg !344
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !345, metadata !208), !dbg !346
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !347, metadata !208), !dbg !348
  %9 = call %struct._GArray* @VMTools_WrapArray(i8* bitcast ([2 x %struct.ToolsAppCapability]* @PowerOpsCapabilityCb.caps to i8*), i32 24, i32 2), !dbg !349
  ret %struct._GArray* %9, !dbg !350
}

; Function Attrs: nounwind uwtable
define internal i32 @PowerOpsSetOption(i8*, %struct.ToolsAppCtx*, i8*, i8*, %struct.ToolsPluginData*) #0 !dbg !351 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ToolsAppCtx*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ToolsPluginData*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.PowerOpState*, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !354, metadata !208), !dbg !355
  store %struct.ToolsAppCtx* %1, %struct.ToolsAppCtx** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %8, metadata !356, metadata !208), !dbg !357
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !358, metadata !208), !dbg !359
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !360, metadata !208), !dbg !361
  store %struct.ToolsPluginData* %4, %struct.ToolsPluginData** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsPluginData** %11, metadata !362, metadata !208), !dbg !363
  call void @llvm.dbg.declare(metadata i32* %12, metadata !364, metadata !208), !dbg !365
  call void @llvm.dbg.declare(metadata %struct.PowerOpState** %13, metadata !366, metadata !208), !dbg !367
  %14 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %11, align 8, !dbg !368
  %15 = getelementptr inbounds %struct.ToolsPluginData, %struct.ToolsPluginData* %14, i32 0, i32 3, !dbg !369
  %16 = load i8*, i8** %15, align 8, !dbg !369
  %17 = bitcast i8* %16 to %struct.PowerOpState*, !dbg !368
  store %struct.PowerOpState* %17, %struct.PowerOpState** %13, align 8, !dbg !367
  %18 = load i8*, i8** %10, align 8, !dbg !370
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)) #5, !dbg !372
  %20 = icmp ne i32 %19, 0, !dbg !373
  br i1 %20, label %21, label %26, !dbg !374

; <label>:21:                                     ; preds = %5
  %22 = load i8*, i8** %10, align 8, !dbg !375
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #5, !dbg !377
  %24 = icmp ne i32 %23, 0, !dbg !378
  br i1 %24, label %25, label %26, !dbg !379

; <label>:25:                                     ; preds = %21
  store i32 0, i32* %6, align 4, !dbg !380
  br label %74, !dbg !380

; <label>:26:                                     ; preds = %21, %5
  %27 = load i8*, i8** %10, align 8, !dbg !382
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)) #5, !dbg !383
  %29 = icmp eq i32 %28, 0, !dbg !384
  %30 = zext i1 %29 to i32, !dbg !384
  store i32 %30, i32* %12, align 4, !dbg !385
  %31 = load i8*, i8** %9, align 8, !dbg !386
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0)) #5, !dbg !388
  %33 = icmp eq i32 %32, 0, !dbg !389
  br i1 %33, label %34, label %39, !dbg !390

; <label>:34:                                     ; preds = %26
  %35 = load i32, i32* %12, align 4, !dbg !391
  %36 = load %struct.PowerOpState*, %struct.PowerOpState** %13, align 8, !dbg !393
  %37 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %36, i32 0, i32 4, !dbg !394
  %38 = getelementptr inbounds [6 x i32], [6 x i32]* %37, i64 0, i64 3, !dbg !393
  store i32 %35, i32* %38, align 4, !dbg !395
  br label %73, !dbg !396

; <label>:39:                                     ; preds = %26
  %40 = load i8*, i8** %9, align 8, !dbg !397
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0)) #5, !dbg !400
  %42 = icmp eq i32 %41, 0, !dbg !401
  br i1 %42, label %43, label %51, !dbg !400

; <label>:43:                                     ; preds = %39
  %44 = load i32, i32* %12, align 4, !dbg !402
  %45 = load %struct.PowerOpState*, %struct.PowerOpState** %13, align 8, !dbg !404
  %46 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %45, i32 0, i32 4, !dbg !405
  %47 = getelementptr inbounds [6 x i32], [6 x i32]* %46, i64 0, i64 2, !dbg !404
  store i32 %44, i32* %47, align 8, !dbg !406
  %48 = load %struct.PowerOpState*, %struct.PowerOpState** %13, align 8, !dbg !407
  %49 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %48, i32 0, i32 4, !dbg !408
  %50 = getelementptr inbounds [6 x i32], [6 x i32]* %49, i64 0, i64 1, !dbg !407
  store i32 %44, i32* %50, align 4, !dbg !409
  br label %72, !dbg !410

; <label>:51:                                     ; preds = %39
  %52 = load i8*, i8** %9, align 8, !dbg !411
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0)) #5, !dbg !414
  %54 = icmp eq i32 %53, 0, !dbg !415
  br i1 %54, label %55, label %60, !dbg !414

; <label>:55:                                     ; preds = %51
  %56 = load i32, i32* %12, align 4, !dbg !416
  %57 = load %struct.PowerOpState*, %struct.PowerOpState** %13, align 8, !dbg !418
  %58 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %57, i32 0, i32 4, !dbg !419
  %59 = getelementptr inbounds [6 x i32], [6 x i32]* %58, i64 0, i64 5, !dbg !418
  store i32 %56, i32* %59, align 4, !dbg !420
  br label %71, !dbg !421

; <label>:60:                                     ; preds = %51
  %61 = load i8*, i8** %9, align 8, !dbg !422
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0)) #5, !dbg !425
  %63 = icmp eq i32 %62, 0, !dbg !426
  br i1 %63, label %64, label %69, !dbg !425

; <label>:64:                                     ; preds = %60
  %65 = load i32, i32* %12, align 4, !dbg !427
  %66 = load %struct.PowerOpState*, %struct.PowerOpState** %13, align 8, !dbg !429
  %67 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %66, i32 0, i32 4, !dbg !430
  %68 = getelementptr inbounds [6 x i32], [6 x i32]* %67, i64 0, i64 4, !dbg !429
  store i32 %65, i32* %68, align 8, !dbg !431
  br label %70, !dbg !432

; <label>:69:                                     ; preds = %60
  store i32 0, i32* %6, align 4, !dbg !433
  br label %74, !dbg !433

; <label>:70:                                     ; preds = %64
  br label %71

; <label>:71:                                     ; preds = %70, %55
  br label %72

; <label>:72:                                     ; preds = %71, %43
  br label %73

; <label>:73:                                     ; preds = %72, %34
  store i32 1, i32* %6, align 4, !dbg !435
  br label %74, !dbg !435

; <label>:74:                                     ; preds = %73, %69, %25
  %75 = load i32, i32* %6, align 4, !dbg !436
  ret i32 %75, !dbg !436
}

; Function Attrs: nounwind uwtable
define internal void @PowerOpsShutdown(i8*, %struct.ToolsAppCtx*, %struct.ToolsPluginData*) #0 !dbg !437 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ToolsAppCtx*, align 8
  %6 = alloca %struct.ToolsPluginData*, align 8
  %7 = alloca %struct.PowerOpState*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !440, metadata !208), !dbg !441
  store %struct.ToolsAppCtx* %1, %struct.ToolsAppCtx** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %5, metadata !442, metadata !208), !dbg !443
  store %struct.ToolsPluginData* %2, %struct.ToolsPluginData** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsPluginData** %6, metadata !444, metadata !208), !dbg !445
  call void @llvm.dbg.declare(metadata %struct.PowerOpState** %7, metadata !446, metadata !208), !dbg !447
  %8 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %6, align 8, !dbg !448
  %9 = getelementptr inbounds %struct.ToolsPluginData, %struct.ToolsPluginData* %8, i32 0, i32 3, !dbg !449
  %10 = load i8*, i8** %9, align 8, !dbg !449
  %11 = bitcast i8* %10 to %struct.PowerOpState*, !dbg !448
  store %struct.PowerOpState* %11, %struct.PowerOpState** %7, align 8, !dbg !447
  %12 = load %struct.PowerOpState*, %struct.PowerOpState** %7, align 8, !dbg !450
  %13 = bitcast %struct.PowerOpState* %12 to i8*, !dbg !450
  call void @g_free(i8* %13), !dbg !451
  ret void, !dbg !452
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

declare %struct._GArray* @VMTools_WrapArray(i8*, i32, i32) #3

declare noalias i8* @g_malloc0(i64) #3

declare %struct._GArray* @g_array_sized_new(i32, i32, i32, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @PowerOpsStateChange(%struct.RpcInData*) #0 !dbg !453 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.RpcInData*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.PowerOpState*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.RpcInData* %0, %struct.RpcInData** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %3, metadata !454, metadata !208), !dbg !455
  call void @llvm.dbg.declare(metadata i64* %4, metadata !456, metadata !208), !dbg !457
  call void @llvm.dbg.declare(metadata %struct.PowerOpState** %5, metadata !458, metadata !208), !dbg !459
  %13 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !460
  %14 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %13, i32 0, i32 7, !dbg !461
  %15 = load i8*, i8** %14, align 8, !dbg !461
  %16 = bitcast i8* %15 to %struct.PowerOpState*, !dbg !460
  store %struct.PowerOpState* %16, %struct.PowerOpState** %5, align 8, !dbg !459
  %17 = load %struct.PowerOpState*, %struct.PowerOpState** %5, align 8, !dbg !462
  %18 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %17, i32 0, i32 2, !dbg !464
  %19 = load i32, i32* %18, align 8, !dbg !464
  %20 = icmp ne i32 %19, -1, !dbg !465
  br i1 %20, label %21, label %24, !dbg !466

; <label>:21:                                     ; preds = %1
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i32 0, i32 0)), !dbg !467
  %22 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !469
  %23 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i32 0, i32 0), i32 0), !dbg !470
  store i32 %23, i32* %2, align 4, !dbg !471
  br label %164, !dbg !471

; <label>:24:                                     ; preds = %1
  %25 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !472
  %26 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %25, i32 0, i32 0, !dbg !473
  %27 = load i8*, i8** %26, align 8, !dbg !473
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i8* %27), !dbg !474
  store i64 0, i64* %4, align 8, !dbg !475
  br label %28, !dbg !477

; <label>:28:                                     ; preds = %158, %24
  %29 = load i64, i64* %4, align 8, !dbg !478
  %30 = icmp ult i64 %29, 5, !dbg !481
  br i1 %30, label %31, label %161, !dbg !482

; <label>:31:                                     ; preds = %28
  %32 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !483
  %33 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %32, i32 0, i32 0, !dbg !486
  %34 = load i8*, i8** %33, align 8, !dbg !486
  %35 = load i64, i64* %4, align 8, !dbg !487
  %36 = getelementptr inbounds [5 x %struct.GuestOsStateChangeCmd], [5 x %struct.GuestOsStateChangeCmd]* @stateChangeCmdTable, i64 0, i64 %35, !dbg !488
  %37 = getelementptr inbounds %struct.GuestOsStateChangeCmd, %struct.GuestOsStateChangeCmd* %36, i32 0, i32 2, !dbg !489
  %38 = load i8*, i8** %37, align 8, !dbg !489
  %39 = call i32 @strcmp(i8* %34, i8* %38) #5, !dbg !490
  %40 = icmp eq i32 %39, 0, !dbg !491
  br i1 %40, label %41, label %157, !dbg !492

; <label>:41:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata i8** %6, metadata !493, metadata !208), !dbg !495
  call void @llvm.dbg.declare(metadata i8** %7, metadata !496, metadata !208), !dbg !497
  call void @llvm.dbg.declare(metadata i8** %8, metadata !498, metadata !208), !dbg !499
  call void @llvm.dbg.declare(metadata i8* %9, metadata !500, metadata !208), !dbg !503
  %42 = load i64, i64* %4, align 8, !dbg !504
  %43 = getelementptr inbounds [5 x %struct.GuestOsStateChangeCmd], [5 x %struct.GuestOsStateChangeCmd]* @stateChangeCmdTable, i64 0, i64 %42, !dbg !505
  %44 = getelementptr inbounds %struct.GuestOsStateChangeCmd, %struct.GuestOsStateChangeCmd* %43, i32 0, i32 0, !dbg !506
  %45 = load i32, i32* %44, align 8, !dbg !506
  %46 = load %struct.PowerOpState*, %struct.PowerOpState** %5, align 8, !dbg !507
  %47 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %46, i32 0, i32 0, !dbg !508
  store i32 %45, i32* %47, align 8, !dbg !509
  %48 = load i64, i64* %4, align 8, !dbg !510
  %49 = getelementptr inbounds [5 x %struct.GuestOsStateChangeCmd], [5 x %struct.GuestOsStateChangeCmd]* @stateChangeCmdTable, i64 0, i64 %48, !dbg !512
  %50 = getelementptr inbounds %struct.GuestOsStateChangeCmd, %struct.GuestOsStateChangeCmd* %49, i32 0, i32 0, !dbg !513
  %51 = load i32, i32* %50, align 8, !dbg !513
  %52 = zext i32 %51 to i64, !dbg !514
  %53 = load %struct.PowerOpState*, %struct.PowerOpState** %5, align 8, !dbg !514
  %54 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %53, i32 0, i32 4, !dbg !515
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* %54, i64 0, i64 %52, !dbg !514
  %56 = load i32, i32* %55, align 4, !dbg !514
  %57 = icmp ne i32 %56, 0, !dbg !514
  br i1 %57, label %66, label %58, !dbg !516

; <label>:58:                                     ; preds = %41
  %59 = load %struct.PowerOpState*, %struct.PowerOpState** %5, align 8, !dbg !517
  call void @PowerOpsStateChangeDone(%struct.PowerOpState* %59, i32 1), !dbg !519
  %60 = load i64, i64* %4, align 8, !dbg !520
  %61 = getelementptr inbounds [5 x %struct.GuestOsStateChangeCmd], [5 x %struct.GuestOsStateChangeCmd]* @stateChangeCmdTable, i64 0, i64 %60, !dbg !521
  %62 = getelementptr inbounds %struct.GuestOsStateChangeCmd, %struct.GuestOsStateChangeCmd* %61, i32 0, i32 2, !dbg !522
  %63 = load i8*, i8** %62, align 8, !dbg !522
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i32 0, i32 0), i8* %63), !dbg !523
  %64 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !524
  %65 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %64, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0), i32 1), !dbg !525
  store i32 %65, i32* %2, align 4, !dbg !526
  br label %164, !dbg !526

; <label>:66:                                     ; preds = %41
  %67 = load i64, i64* %4, align 8, !dbg !527
  %68 = getelementptr inbounds [5 x %struct.GuestOsStateChangeCmd], [5 x %struct.GuestOsStateChangeCmd]* @stateChangeCmdTable, i64 0, i64 %67, !dbg !528
  %69 = getelementptr inbounds %struct.GuestOsStateChangeCmd, %struct.GuestOsStateChangeCmd* %68, i32 0, i32 0, !dbg !529
  %70 = load i32, i32* %69, align 8, !dbg !529
  %71 = zext i32 %70 to i64, !dbg !530
  %72 = getelementptr inbounds [6 x i8*], [6 x i8*]* @stateChgConfNames, i64 0, i64 %71, !dbg !530
  %73 = load i8*, i8** %72, align 8, !dbg !530
  store i8* %73, i8** %8, align 8, !dbg !531
  %74 = load %struct.PowerOpState*, %struct.PowerOpState** %5, align 8, !dbg !532
  %75 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %74, i32 0, i32 3, !dbg !533
  %76 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %75, align 8, !dbg !533
  %77 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %76, i32 0, i32 6, !dbg !534
  %78 = load %struct._GKeyFile*, %struct._GKeyFile** %77, align 8, !dbg !534
  %79 = load i8*, i8** %8, align 8, !dbg !535
  %80 = call noalias i8* @g_key_file_get_string(%struct._GKeyFile* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* %79, %struct._GError** null), !dbg !536
  store i8* %80, i8** %6, align 8, !dbg !537
  %81 = load i8*, i8** %6, align 8, !dbg !538
  %82 = icmp eq i8* %81, null, !dbg !540
  br i1 %82, label %83, label %99, !dbg !541

; <label>:83:                                     ; preds = %66
  call void @llvm.dbg.declare(metadata i8** %10, metadata !542, metadata !208), !dbg !544
  %84 = load i8*, i8** %8, align 8, !dbg !545
  %85 = call i8* @GuestApp_GetDefaultScript(i8* %84), !dbg !546
  store i8* %85, i8** %10, align 8, !dbg !544
  %86 = load i8*, i8** %10, align 8, !dbg !547
  %87 = icmp eq i8* %86, null, !dbg !549
  br i1 %87, label %88, label %96, !dbg !550

; <label>:88:                                     ; preds = %83
  %89 = load i64, i64* %4, align 8, !dbg !551
  %90 = getelementptr inbounds [5 x %struct.GuestOsStateChangeCmd], [5 x %struct.GuestOsStateChangeCmd]* @stateChangeCmdTable, i64 0, i64 %89, !dbg !553
  %91 = getelementptr inbounds %struct.GuestOsStateChangeCmd, %struct.GuestOsStateChangeCmd* %90, i32 0, i32 1, !dbg !554
  %92 = load i8*, i8** %91, align 8, !dbg !554
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i32 0, i32 0), i8* %92), !dbg !555
  %93 = load %struct.PowerOpState*, %struct.PowerOpState** %5, align 8, !dbg !556
  call void @PowerOpsStateChangeDone(%struct.PowerOpState* %93, i32 1), !dbg !557
  %94 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !558
  %95 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %94, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0), i32 1), !dbg !559
  store i32 %95, i32* %2, align 4, !dbg !560
  br label %164, !dbg !560

; <label>:96:                                     ; preds = %83
  %97 = load i8*, i8** %10, align 8, !dbg !561
  %98 = call noalias i8* @g_strdup(i8* %97), !dbg !562
  store i8* %98, i8** %6, align 8, !dbg !563
  br label %113, !dbg !564

; <label>:99:                                     ; preds = %66
  %100 = load i8*, i8** %6, align 8, !dbg !565
  %101 = call i64 @strlen(i8* %100) #5, !dbg !568
  %102 = icmp eq i64 %101, 0, !dbg !569
  br i1 %102, label %103, label %112, !dbg !568

; <label>:103:                                    ; preds = %99
  %104 = load i64, i64* %4, align 8, !dbg !570
  %105 = getelementptr inbounds [5 x %struct.GuestOsStateChangeCmd], [5 x %struct.GuestOsStateChangeCmd]* @stateChangeCmdTable, i64 0, i64 %104, !dbg !572
  %106 = getelementptr inbounds %struct.GuestOsStateChangeCmd, %struct.GuestOsStateChangeCmd* %105, i32 0, i32 1, !dbg !573
  %107 = load i8*, i8** %106, align 8, !dbg !573
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i32 0, i32 0), i8* %107), !dbg !574
  %108 = load i8*, i8** %6, align 8, !dbg !575
  call void @g_free(i8* %108), !dbg !576
  %109 = load %struct.PowerOpState*, %struct.PowerOpState** %5, align 8, !dbg !577
  call void @PowerOpsStateChangeDone(%struct.PowerOpState* %109, i32 1), !dbg !578
  %110 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !579
  %111 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %110, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0), i32 1), !dbg !580
  store i32 %111, i32* %2, align 4, !dbg !581
  br label %164, !dbg !581

; <label>:112:                                    ; preds = %99
  br label %113

; <label>:113:                                    ; preds = %112, %96
  %114 = load i8*, i8** %6, align 8, !dbg !582
  %115 = call i32 @g_path_is_absolute(i8* %114), !dbg !584
  %116 = icmp ne i32 %115, 0, !dbg !584
  br i1 %116, label %142, label %117, !dbg !585

; <label>:117:                                    ; preds = %113
  call void @llvm.dbg.declare(metadata i8** %11, metadata !586, metadata !208), !dbg !588
  call void @llvm.dbg.declare(metadata i8** %12, metadata !589, metadata !208), !dbg !590
  %118 = call i8* @GuestApp_GetInstallPath(), !dbg !591
  store i8* %118, i8** %11, align 8, !dbg !592
  %119 = load i8*, i8** %6, align 8, !dbg !593
  %120 = getelementptr inbounds i8, i8* %119, i64 0, !dbg !593
  %121 = load i8, i8* %120, align 1, !dbg !593
  %122 = sext i8 %121 to i32, !dbg !593
  %123 = icmp eq i32 %122, 34, !dbg !595
  br i1 %123, label %124, label %134, !dbg !596

; <label>:124:                                    ; preds = %117
  %125 = load i8*, i8** %6, align 8, !dbg !597
  %126 = call i64 @strlen(i8* %125) #5, !dbg !599
  %127 = sub i64 %126, 1, !dbg !600
  %128 = load i8*, i8** %6, align 8, !dbg !601
  %129 = getelementptr inbounds i8, i8* %128, i64 %127, !dbg !601
  store i8 0, i8* %129, align 1, !dbg !602
  %130 = load i8*, i8** %11, align 8, !dbg !603
  %131 = load i8*, i8** %6, align 8, !dbg !604
  %132 = getelementptr inbounds i8, i8* %131, i64 1, !dbg !605
  %133 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i8* %130, i32 47, i8* %132), !dbg !606
  store i8* %133, i8** %12, align 8, !dbg !607
  br label %138, !dbg !608

; <label>:134:                                    ; preds = %117
  %135 = load i8*, i8** %11, align 8, !dbg !609
  %136 = load i8*, i8** %6, align 8, !dbg !611
  %137 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i8* %135, i32 47, i8* %136), !dbg !612
  store i8* %137, i8** %12, align 8, !dbg !613
  br label %138

; <label>:138:                                    ; preds = %134, %124
  %139 = load i8*, i8** %6, align 8, !dbg !614
  call void @g_free(i8* %139), !dbg !615
  %140 = load i8*, i8** %11, align 8, !dbg !616
  call void @vm_free(i8* %140), !dbg !617
  %141 = load i8*, i8** %12, align 8, !dbg !618
  store i8* %141, i8** %6, align 8, !dbg !619
  br label %142, !dbg !620

; <label>:142:                                    ; preds = %138, %113
  %143 = load %struct.PowerOpState*, %struct.PowerOpState** %5, align 8, !dbg !621
  %144 = load i8*, i8** %6, align 8, !dbg !623
  %145 = call i32 @PowerOpsRunScript(%struct.PowerOpState* %143, i8* %144), !dbg !624
  %146 = icmp ne i32 %145, 0, !dbg !624
  br i1 %146, label %147, label %148, !dbg !625

; <label>:147:                                    ; preds = %142
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0), i8** %7, align 8, !dbg !626
  store i8 1, i8* %9, align 1, !dbg !628
  br label %150, !dbg !629

; <label>:148:                                    ; preds = %142
  %149 = load %struct.PowerOpState*, %struct.PowerOpState** %5, align 8, !dbg !630
  call void @PowerOpsStateChangeDone(%struct.PowerOpState* %149, i32 0), !dbg !632
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0), i8** %7, align 8, !dbg !633
  store i8 0, i8* %9, align 1, !dbg !634
  br label %150

; <label>:150:                                    ; preds = %148, %147
  %151 = load i8*, i8** %6, align 8, !dbg !635
  call void @g_free(i8* %151), !dbg !636
  %152 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !637
  %153 = load i8*, i8** %7, align 8, !dbg !638
  %154 = load i8, i8* %9, align 1, !dbg !639
  %155 = sext i8 %154 to i32, !dbg !639
  %156 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %152, i8* %153, i32 %155), !dbg !640
  store i32 %156, i32* %2, align 4, !dbg !641
  br label %164, !dbg !641

; <label>:157:                                    ; preds = %31
  br label %158, !dbg !642

; <label>:158:                                    ; preds = %157
  %159 = load i64, i64* %4, align 8, !dbg !643
  %160 = add i64 %159, 1, !dbg !643
  store i64 %160, i64* %4, align 8, !dbg !643
  br label %28, !dbg !645, !llvm.loop !646

; <label>:161:                                    ; preds = %28
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i32 0, i32 0)), !dbg !648
  %162 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !649
  %163 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %162, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i32 0, i32 0), i32 0), !dbg !650
  store i32 %163, i32* %2, align 4, !dbg !651
  br label %164, !dbg !651

; <label>:164:                                    ; preds = %161, %150, %103, %88, %58, %21
  %165 = load i32, i32* %2, align 4, !dbg !652
  ret i32 %165, !dbg !652
}

declare %struct._GArray* @g_array_append_vals(%struct._GArray*, i8*, i32) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare void @g_free(i8*) #3

declare void @g_log(i8*, i32, i8*, ...) #3

declare i32 @RpcChannel_SetRetVals(%struct.RpcInData*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @PowerOpsStateChangeDone(%struct.PowerOpState*, i32) #0 !dbg !653 {
  %3 = alloca %struct.PowerOpState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.PowerOpState* %0, %struct.PowerOpState** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.PowerOpState** %3, metadata !656, metadata !208), !dbg !657
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !658, metadata !208), !dbg !659
  call void @llvm.dbg.declare(metadata i8** %5, metadata !660, metadata !208), !dbg !661
  %6 = load i32, i32* %4, align 4, !dbg !662
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0), i32 %6), !dbg !663
  %7 = load i32, i32* %4, align 4, !dbg !664
  %8 = icmp ne i32 %7, 0, !dbg !664
  br i1 %8, label %17, label %9, !dbg !666

; <label>:9:                                      ; preds = %2
  %10 = load %struct.PowerOpState*, %struct.PowerOpState** %3, align 8, !dbg !667
  %11 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %10, i32 0, i32 1, !dbg !669
  %12 = load i32, i32* %11, align 4, !dbg !669
  %13 = load %struct.PowerOpState*, %struct.PowerOpState** %3, align 8, !dbg !670
  %14 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %13, i32 0, i32 0, !dbg !671
  %15 = load i32, i32* %14, align 8, !dbg !671
  %16 = icmp eq i32 %12, %15, !dbg !672
  br i1 %16, label %17, label %20, !dbg !673

; <label>:17:                                     ; preds = %9, %2
  store i32 1, i32* %4, align 4, !dbg !674
  %18 = load %struct.PowerOpState*, %struct.PowerOpState** %3, align 8, !dbg !676
  %19 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %18, i32 0, i32 1, !dbg !677
  store i32 0, i32* %19, align 4, !dbg !678
  br label %20, !dbg !679

; <label>:20:                                     ; preds = %17, %9
  %21 = load i32, i32* %4, align 4, !dbg !680
  %22 = icmp ne i32 %21, 0, !dbg !680
  br i1 %22, label %29, label %23, !dbg !682

; <label>:23:                                     ; preds = %20
  %24 = load %struct.PowerOpState*, %struct.PowerOpState** %3, align 8, !dbg !683
  %25 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %24, i32 0, i32 0, !dbg !685
  %26 = load i32, i32* %25, align 8, !dbg !685
  %27 = load %struct.PowerOpState*, %struct.PowerOpState** %3, align 8, !dbg !686
  %28 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %27, i32 0, i32 1, !dbg !687
  store i32 %26, i32* %28, align 4, !dbg !688
  br label %29, !dbg !689

; <label>:29:                                     ; preds = %23, %20
  %30 = load i32, i32* %4, align 4, !dbg !690
  %31 = load %struct.PowerOpState*, %struct.PowerOpState** %3, align 8, !dbg !691
  %32 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %31, i32 0, i32 0, !dbg !692
  %33 = load i32, i32* %32, align 8, !dbg !692
  %34 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i32 0, i32 0), i32 %30, i32 %33), !dbg !693
  store i8* %34, i8** %5, align 8, !dbg !694
  %35 = load %struct.PowerOpState*, %struct.PowerOpState** %3, align 8, !dbg !695
  %36 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %35, i32 0, i32 3, !dbg !697
  %37 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %36, align 8, !dbg !697
  %38 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %37, i32 0, i32 5, !dbg !698
  %39 = load %struct._RpcChannel*, %struct._RpcChannel** %38, align 8, !dbg !698
  %40 = load i8*, i8** %5, align 8, !dbg !699
  %41 = load i8*, i8** %5, align 8, !dbg !700
  %42 = call i64 @strlen(i8* %41) #5, !dbg !701
  %43 = add i64 %42, 1, !dbg !702
  %44 = call i32 @RpcChannel_Send(%struct._RpcChannel* %39, i8* %40, i64 %43, i8** null, i64* null), !dbg !703
  %45 = icmp ne i32 %44, 0, !dbg !705
  br i1 %45, label %47, label %46, !dbg !706

; <label>:46:                                     ; preds = %29
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i32 0, i32 0)), !dbg !707
  br label %47, !dbg !709

; <label>:47:                                     ; preds = %46, %29
  %48 = load i8*, i8** %5, align 8, !dbg !710
  call void @g_free(i8* %48), !dbg !711
  %49 = load i32, i32* %4, align 4, !dbg !712
  %50 = icmp ne i32 %49, 0, !dbg !712
  br i1 %50, label %51, label %65, !dbg !714

; <label>:51:                                     ; preds = %47
  %52 = load %struct.PowerOpState*, %struct.PowerOpState** %3, align 8, !dbg !715
  %53 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %52, i32 0, i32 0, !dbg !718
  %54 = load i32, i32* %53, align 8, !dbg !718
  %55 = icmp eq i32 %54, 2, !dbg !719
  br i1 %55, label %56, label %57, !dbg !720

; <label>:56:                                     ; preds = %51
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0)), !dbg !721
  call void @System_Shutdown(i8 signext 1), !dbg !723
  br label %64, !dbg !724

; <label>:57:                                     ; preds = %51
  %58 = load %struct.PowerOpState*, %struct.PowerOpState** %3, align 8, !dbg !725
  %59 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %58, i32 0, i32 0, !dbg !728
  %60 = load i32, i32* %59, align 8, !dbg !728
  %61 = icmp eq i32 %60, 1, !dbg !729
  br i1 %61, label %62, label %63, !dbg !725

; <label>:62:                                     ; preds = %57
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i32 0, i32 0)), !dbg !730
  call void @System_Shutdown(i8 signext 0), !dbg !732
  br label %63, !dbg !733

; <label>:63:                                     ; preds = %62, %57
  br label %64

; <label>:64:                                     ; preds = %63, %56
  br label %65, !dbg !734

; <label>:65:                                     ; preds = %64, %47
  %66 = load %struct.PowerOpState*, %struct.PowerOpState** %3, align 8, !dbg !735
  %67 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %66, i32 0, i32 0, !dbg !736
  store i32 0, i32* %67, align 8, !dbg !737
  ret void, !dbg !738
}

declare noalias i8* @g_key_file_get_string(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #3

declare i8* @GuestApp_GetDefaultScript(i8*) #3

declare noalias i8* @g_strdup(i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @g_path_is_absolute(i8*) #3

declare i8* @GuestApp_GetInstallPath() #3

declare noalias i8* @g_strdup_printf(i8*, ...) #3

declare void @vm_free(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @PowerOpsRunScript(%struct.PowerOpState*, i8*) #0 !dbg !739 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.PowerOpState*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [2 x i8*], align 16
  %7 = alloca %struct._GSource*, align 8
  %8 = alloca %struct._GError*, align 8
  %9 = alloca %struct._GSource*, align 8
  store %struct.PowerOpState* %0, %struct.PowerOpState** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.PowerOpState** %4, metadata !742, metadata !208), !dbg !743
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !744, metadata !208), !dbg !745
  call void @llvm.dbg.declare(metadata [2 x i8*]* %6, metadata !746, metadata !208), !dbg !748
  call void @llvm.dbg.declare(metadata %struct._GSource** %7, metadata !749, metadata !208), !dbg !823
  call void @llvm.dbg.declare(metadata %struct._GError** %8, metadata !824, metadata !208), !dbg !836
  store %struct._GError* null, %struct._GError** %8, align 8, !dbg !836
  %10 = load i8*, i8** %5, align 8, !dbg !837
  %11 = call noalias i8* @g_locale_from_utf8(i8* %10, i64 -1, i64* null, i64* null, %struct._GError** %8), !dbg !838
  %12 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0, !dbg !839
  store i8* %11, i8** %12, align 16, !dbg !840
  %13 = load %struct._GError*, %struct._GError** %8, align 8, !dbg !841
  %14 = icmp ne %struct._GError* %13, null, !dbg !843
  br i1 %14, label %15, label %22, !dbg !844

; <label>:15:                                     ; preds = %2
  %16 = load %struct._GError*, %struct._GError** %8, align 8, !dbg !845
  %17 = getelementptr inbounds %struct._GError, %struct._GError* %16, i32 0, i32 2, !dbg !847
  %18 = load i8*, i8** %17, align 8, !dbg !847
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0), i8* %18), !dbg !848
  call void @g_clear_error(%struct._GError** %8), !dbg !849
  %19 = load i8*, i8** %5, align 8, !dbg !850
  %20 = call noalias i8* @g_strdup(i8* %19), !dbg !851
  %21 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0, !dbg !852
  store i8* %20, i8** %21, align 16, !dbg !853
  br label %22, !dbg !854

; <label>:22:                                     ; preds = %15, %2
  %23 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 1, !dbg !855
  store i8* null, i8** %23, align 8, !dbg !856
  %24 = load i8*, i8** %5, align 8, !dbg !857
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i32 0, i32 0), i8* %24), !dbg !858
  %25 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i32 0, i32 0, !dbg !859
  %26 = load %struct.PowerOpState*, %struct.PowerOpState** %4, align 8, !dbg !861
  %27 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %26, i32 0, i32 2, !dbg !862
  %28 = call i32 @g_spawn_async(i8* null, i8** %25, i8** null, i32 26, void (i8*)* null, i8* null, i32* %27, %struct._GError** %8), !dbg !863
  %29 = icmp ne i32 %28, 0, !dbg !863
  br i1 %29, label %36, label %30, !dbg !864

; <label>:30:                                     ; preds = %22
  %31 = load %struct._GError*, %struct._GError** %8, align 8, !dbg !865
  %32 = getelementptr inbounds %struct._GError, %struct._GError* %31, i32 0, i32 2, !dbg !867
  %33 = load i8*, i8** %32, align 8, !dbg !867
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i32 0, i32 0), i8* %33), !dbg !868
  call void @g_clear_error(%struct._GError** %8), !dbg !869
  %34 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0, !dbg !870
  %35 = load i8*, i8** %34, align 16, !dbg !870
  call void @g_free(i8* %35), !dbg !871
  store i32 0, i32* %3, align 4, !dbg !872
  br label %58, !dbg !872

; <label>:36:                                     ; preds = %22
  %37 = load %struct.PowerOpState*, %struct.PowerOpState** %4, align 8, !dbg !873
  %38 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %37, i32 0, i32 2, !dbg !874
  %39 = load i32, i32* %38, align 8, !dbg !874
  %40 = call %struct._GSource* @g_child_watch_source_new(i32 %39), !dbg !875
  store %struct._GSource* %40, %struct._GSource** %7, align 8, !dbg !876
  br label %41, !dbg !877, !llvm.loop !878

; <label>:41:                                     ; preds = %36
  call void @llvm.dbg.declare(metadata %struct._GSource** %9, metadata !879, metadata !208), !dbg !881
  %42 = load %struct._GSource*, %struct._GSource** %7, align 8, !dbg !882
  store %struct._GSource* %42, %struct._GSource** %9, align 8, !dbg !884
  %43 = load %struct._GSource*, %struct._GSource** %9, align 8, !dbg !885
  %44 = load %struct.PowerOpState*, %struct.PowerOpState** %4, align 8, !dbg !886
  %45 = bitcast %struct.PowerOpState* %44 to i8*, !dbg !887
  call void @g_source_set_callback(%struct._GSource* %43, i32 (i8*)* bitcast (i32 (i32, i32, i8*)* @PowerOpsScriptCallback to i32 (i8*)*), i8* %45, void (i8*)* null), !dbg !888
  %46 = load %struct._GSource*, %struct._GSource** %9, align 8, !dbg !889
  %47 = load %struct.PowerOpState*, %struct.PowerOpState** %4, align 8, !dbg !890
  %48 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %47, i32 0, i32 3, !dbg !891
  %49 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %48, align 8, !dbg !891
  %50 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %49, i32 0, i32 4, !dbg !892
  %51 = load %struct._GMainLoop*, %struct._GMainLoop** %50, align 8, !dbg !892
  %52 = call %struct._GMainContext* @g_main_loop_get_context(%struct._GMainLoop* %51), !dbg !893
  %53 = call i32 @g_source_attach(%struct._GSource* %46, %struct._GMainContext* %52), !dbg !895
  br label %54, !dbg !897

; <label>:54:                                     ; preds = %41
  %55 = load %struct._GSource*, %struct._GSource** %7, align 8, !dbg !898
  call void @g_source_unref(%struct._GSource* %55), !dbg !899
  %56 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0, !dbg !900
  %57 = load i8*, i8** %56, align 16, !dbg !900
  call void @g_free(i8* %57), !dbg !901
  store i32 1, i32* %3, align 4, !dbg !902
  br label %58, !dbg !902

; <label>:58:                                     ; preds = %54, %30
  %59 = load i32, i32* %3, align 4, !dbg !903
  ret i32 %59, !dbg !903
}

declare i32 @RpcChannel_Send(%struct._RpcChannel*, i8*, i64, i8**, i64*) #3

declare void @System_Shutdown(i8 signext) #3

declare noalias i8* @g_locale_from_utf8(i8*, i64, i64*, i64*, %struct._GError**) #3

declare void @g_clear_error(%struct._GError**) #3

declare i32 @g_spawn_async(i8*, i8**, i8**, i32, void (i8*)*, i8*, i32*, %struct._GError**) #3

declare %struct._GSource* @g_child_watch_source_new(i32) #3

declare void @g_source_set_callback(%struct._GSource*, i32 (i8*)*, i8*, void (i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @PowerOpsScriptCallback(i32, i32, i8*) #0 !dbg !904 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.PowerOpState*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.anon, align 4
  %10 = alloca %union.anon.0, align 4
  %11 = alloca %union.anon.1, align 4
  %12 = alloca %union.anon.2, align 4
  %13 = alloca %union.anon.3, align 4
  %14 = alloca %union.anon.4, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !907, metadata !208), !dbg !908
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !909, metadata !208), !dbg !910
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !911, metadata !208), !dbg !912
  call void @llvm.dbg.declare(metadata %struct.PowerOpState** %7, metadata !913, metadata !208), !dbg !914
  %15 = load i8*, i8** %6, align 8, !dbg !915
  %16 = bitcast i8* %15 to %struct.PowerOpState*, !dbg !915
  store %struct.PowerOpState* %16, %struct.PowerOpState** %7, align 8, !dbg !914
  call void @llvm.dbg.declare(metadata i32* %8, metadata !916, metadata !208), !dbg !917
  %17 = load i32, i32* %5, align 4, !dbg !918
  %18 = icmp eq i32 %17, 0, !dbg !919
  %19 = zext i1 %18 to i32, !dbg !919
  store i32 %19, i32* %8, align 4, !dbg !917
  %20 = bitcast %union.anon* %9 to i32*, !dbg !920
  %21 = load i32, i32* %5, align 4, !dbg !922
  store i32 %21, i32* %20, align 4, !dbg !920
  %22 = bitcast %union.anon* %9 to i32*, !dbg !923
  %23 = load i32, i32* %22, align 4, !dbg !923
  %24 = and i32 %23, 127, !dbg !924
  %25 = icmp eq i32 %24, 0, !dbg !920
  br i1 %25, label %26, label %34, !dbg !925

; <label>:26:                                     ; preds = %3
  %27 = bitcast %union.anon.0* %10 to i32*, !dbg !926
  %28 = load i32, i32* %5, align 4, !dbg !928
  store i32 %28, i32* %27, align 4, !dbg !926
  %29 = bitcast %union.anon.0* %10 to i32*, !dbg !929
  %30 = load i32, i32* %29, align 4, !dbg !929
  %31 = and i32 %30, 65280, !dbg !930
  %32 = ashr i32 %31, 8, !dbg !931
  %33 = load i32, i32* %8, align 4, !dbg !932
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.45, i32 0, i32 0), i32 %32, i32 %33), !dbg !933
  br label %72, !dbg !934

; <label>:34:                                     ; preds = %3
  %35 = bitcast %union.anon.1* %11 to i32*, !dbg !935
  %36 = load i32, i32* %5, align 4, !dbg !938
  store i32 %36, i32* %35, align 4, !dbg !935
  %37 = bitcast %union.anon.1* %11 to i32*, !dbg !939
  %38 = load i32, i32* %37, align 4, !dbg !939
  %39 = and i32 %38, 127, !dbg !940
  %40 = add nsw i32 %39, 1, !dbg !935
  %41 = trunc i32 %40 to i8, !dbg !941
  %42 = sext i8 %41 to i32, !dbg !941
  %43 = ashr i32 %42, 1, !dbg !942
  %44 = icmp sgt i32 %43, 0, !dbg !943
  br i1 %44, label %45, label %52, !dbg !938

; <label>:45:                                     ; preds = %34
  %46 = bitcast %union.anon.2* %12 to i32*, !dbg !944
  %47 = load i32, i32* %5, align 4, !dbg !946
  store i32 %47, i32* %46, align 4, !dbg !944
  %48 = bitcast %union.anon.2* %12 to i32*, !dbg !947
  %49 = load i32, i32* %48, align 4, !dbg !947
  %50 = and i32 %49, 127, !dbg !948
  %51 = load i32, i32* %8, align 4, !dbg !949
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.46, i32 0, i32 0), i32 %50, i32 %51), !dbg !950
  br label %71, !dbg !951

; <label>:52:                                     ; preds = %34
  %53 = bitcast %union.anon.3* %13 to i32*, !dbg !952
  %54 = load i32, i32* %5, align 4, !dbg !955
  store i32 %54, i32* %53, align 4, !dbg !952
  %55 = bitcast %union.anon.3* %13 to i32*, !dbg !956
  %56 = load i32, i32* %55, align 4, !dbg !956
  %57 = and i32 %56, 255, !dbg !957
  %58 = icmp eq i32 %57, 127, !dbg !952
  br i1 %58, label %59, label %67, !dbg !955

; <label>:59:                                     ; preds = %52
  %60 = bitcast %union.anon.4* %14 to i32*, !dbg !958
  %61 = load i32, i32* %5, align 4, !dbg !960
  store i32 %61, i32* %60, align 4, !dbg !958
  %62 = bitcast %union.anon.4* %14 to i32*, !dbg !961
  %63 = load i32, i32* %62, align 4, !dbg !961
  %64 = and i32 %63, 65280, !dbg !962
  %65 = ashr i32 %64, 8, !dbg !963
  %66 = load i32, i32* %8, align 4, !dbg !964
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.47, i32 0, i32 0), i32 %65, i32 %66), !dbg !965
  br label %70, !dbg !966

; <label>:67:                                     ; preds = %52
  %68 = load i32, i32* %5, align 4, !dbg !967
  %69 = load i32, i32* %8, align 4, !dbg !969
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i32 0, i32 0), i32 %68, i32 %69), !dbg !970
  br label %70

; <label>:70:                                     ; preds = %67, %59
  br label %71

; <label>:71:                                     ; preds = %70, %45
  br label %72

; <label>:72:                                     ; preds = %71, %26
  %73 = load i8*, i8** %6, align 8, !dbg !971
  %74 = bitcast i8* %73 to %struct.PowerOpState*, !dbg !971
  %75 = load i32, i32* %8, align 4, !dbg !972
  call void @PowerOpsStateChangeDone(%struct.PowerOpState* %74, i32 %75), !dbg !973
  %76 = load %struct.PowerOpState*, %struct.PowerOpState** %7, align 8, !dbg !974
  %77 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %76, i32 0, i32 2, !dbg !975
  %78 = load i32, i32* %77, align 8, !dbg !975
  call void @g_spawn_close_pid(i32 %78), !dbg !976
  %79 = load %struct.PowerOpState*, %struct.PowerOpState** %7, align 8, !dbg !977
  %80 = getelementptr inbounds %struct.PowerOpState, %struct.PowerOpState* %79, i32 0, i32 2, !dbg !978
  store i32 -1, i32* %80, align 8, !dbg !979
  ret i32 0, !dbg !980
}

declare i32 @g_source_attach(%struct._GSource*, %struct._GMainContext*) #3

declare %struct._GMainContext* @g_main_loop_get_context(%struct._GMainLoop*) #3

declare void @g_source_unref(%struct._GSource*) #3

declare void @g_spawn_close_pid(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!204, !205}
!llvm.ident = !{!206}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !88, globals: !105)
!1 = !DIFile(filename: "libpowerOps_la-powerOps.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1466")
!2 = !{!3, !7, !13, !23, !28, !63, !75}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 232, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/plugin.h", directory: "/home/lichi/Desktop/open-vm-tools/line1466")
!5 = !{!6}
!6 = !DIEnumerator(name: "TOOLS_CORE_API_V1", value: 1)
!7 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 339, size: 32, align: 32, elements: !8)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "TOOLS_APP_GUESTRPC", value: 1)
!10 = !DIEnumerator(name: "TOOLS_APP_SIGNALS", value: 2)
!11 = !DIEnumerator(name: "TOOLS_APP_PROVIDER", value: 3)
!12 = !DIEnumerator(name: "TOOLS_SVC_PROPERTY", value: 4)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 38, size: 32, align: 32, elements: !15)
!14 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/guestrpc/powerops.h", directory: "/home/lichi/Desktop/open-vm-tools/line1466")
!15 = !{!16, !17, !18, !19, !20, !21, !22}
!16 = !DIEnumerator(name: "GUESTOS_STATECHANGE_NONE", value: 0)
!17 = !DIEnumerator(name: "GUESTOS_STATECHANGE_HALT", value: 1)
!18 = !DIEnumerator(name: "GUESTOS_STATECHANGE_REBOOT", value: 2)
!19 = !DIEnumerator(name: "GUESTOS_STATECHANGE_POWERON", value: 3)
!20 = !DIEnumerator(name: "GUESTOS_STATECHANGE_RESUME", value: 4)
!21 = !DIEnumerator(name: "GUESTOS_STATECHANGE_SUSPEND", value: 5)
!22 = !DIEnumerator(name: "GUESTOS_STATECHANGE_LAST", value: 6)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 303, size: 32, align: 32, elements: !24)
!24 = !{!25, !26, !27}
!25 = !DIEnumerator(name: "TOOLS_CAP_OLD", value: 0)
!26 = !DIEnumerator(name: "TOOLS_CAP_OLD_NOVAL", value: 1)
!27 = !DIEnumerator(name: "TOOLS_CAP_NEW", value: 2)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 44, size: 32, align: 32, elements: !30)
!29 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/guestrpc/capabilities.h", directory: "/home/lichi/Desktop/open-vm-tools/line1466")
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!31 = !DIEnumerator(name: "UNITY_CAP_START_MENU", value: 0)
!32 = !DIEnumerator(name: "UNITY_CAP_VIRTUAL_DESK", value: 1)
!33 = !DIEnumerator(name: "UNITY_CAP_WORK_AREA", value: 2)
!34 = !DIEnumerator(name: "UNITY_CAP_MULTI_MON", value: 3)
!35 = !DIEnumerator(name: "GHI_CAP_SHELL_ACTION_BROWSE", value: 4)
!36 = !DIEnumerator(name: "GHI_CAP_SHELL_LOCATION_HGFS", value: 5)
!37 = !DIEnumerator(name: "GHI_CAP_SHELL_ACTION_RUN", value: 6)
!38 = !DIEnumerator(name: "GHI_CAP_CMD_SHELL_ACTION", value: 7)
!39 = !DIEnumerator(name: "HGFSU_CAP_MIRROR_DESKTOP", value: 8)
!40 = !DIEnumerator(name: "HGFSU_CAP_MIRROR_DOCUMENTS", value: 9)
!41 = !DIEnumerator(name: "HGFSU_CAP_MIRROR_MUSIC", value: 10)
!42 = !DIEnumerator(name: "HGFSU_CAP_MIRROR_PICTURES", value: 11)
!43 = !DIEnumerator(name: "HGFSU_CAP_DESKTOP_SHORTCUT", value: 12)
!44 = !DIEnumerator(name: "HGFSU_CAP_MAP_DRIVE", value: 13)
!45 = !DIEnumerator(name: "GHI_CAP_SET_HANDLER", value: 14)
!46 = !DIEnumerator(name: "UNITY_CAP_STATUS_UNITY_ACTIVE", value: 15)
!47 = !DIEnumerator(name: "GHI_CAP_SET_OUTLOOK_TEMP_FOLDER", value: 16)
!48 = !DIEnumerator(name: "CAP_SET_TOPO_MODES", value: 18)
!49 = !DIEnumerator(name: "GHI_CAP_TRAY_ICONS", value: 19)
!50 = !DIEnumerator(name: "GHI_CAP_SET_FOCUSED_WINDOW", value: 20)
!51 = !DIEnumerator(name: "GHI_CAP_GET_EXEC_INFO_HASH", value: 21)
!52 = !DIEnumerator(name: "UNITY_CAP_STICKY_WINDOWS", value: 22)
!53 = !DIEnumerator(name: "CAP_CHANGE_HOST_3D_AVAILABILITY_HINT", value: 23)
!54 = !DIEnumerator(name: "CAP_AUTOUPGRADE_AT_SHUTDOWN", value: 24)
!55 = !DIEnumerator(name: "GHI_CAP_AUTOLOGON", value: 25)
!56 = !DIEnumerator(name: "CAP_DESKTOP_AUTOLOCK", value: 26)
!57 = !DIEnumerator(name: "HGFSU_CAP_MIRROR_DOWNLOADS", value: 28)
!58 = !DIEnumerator(name: "HGFSU_CAP_MIRROR_MOVIES", value: 29)
!59 = !DIEnumerator(name: "GHI_CAP_TOGGLE_START_UI", value: 30)
!60 = !DIEnumerator(name: "GHI_CAP_SET_DISPLAY_SCALING", value: 31)
!61 = !DIEnumerator(name: "UNITY_CAP_DISABLE_MOUSE_BUTTON_SWAPPING", value: 32)
!62 = !DIEnumerator(name: "UNITY_CAP_CARET_POSITION", value: 33)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !64, line: 51, size: 32, align: 32, elements: !65)
!64 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1466")
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74}
!66 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!67 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!68 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!69 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!70 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!71 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!72 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!73 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!74 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !76, line: 172, size: 32, align: 32, elements: !77)
!76 = !DIFile(filename: "/usr/include/glib-2.0/glib/gspawn.h", directory: "/home/lichi/Desktop/open-vm-tools/line1466")
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!78 = !DIEnumerator(name: "G_SPAWN_DEFAULT", value: 0)
!79 = !DIEnumerator(name: "G_SPAWN_LEAVE_DESCRIPTORS_OPEN", value: 1)
!80 = !DIEnumerator(name: "G_SPAWN_DO_NOT_REAP_CHILD", value: 2)
!81 = !DIEnumerator(name: "G_SPAWN_SEARCH_PATH", value: 4)
!82 = !DIEnumerator(name: "G_SPAWN_STDOUT_TO_DEV_NULL", value: 8)
!83 = !DIEnumerator(name: "G_SPAWN_STDERR_TO_DEV_NULL", value: 16)
!84 = !DIEnumerator(name: "G_SPAWN_CHILD_INHERITS_STDIN", value: 32)
!85 = !DIEnumerator(name: "G_SPAWN_FILE_AND_ARGV_ZERO", value: 64)
!86 = !DIEnumerator(name: "G_SPAWN_SEARCH_PATH_FROM_ENVP", value: 128)
!87 = !DIEnumerator(name: "G_SPAWN_CLOEXEC_PIPES", value: 256)
!88 = !{!89, !92, !93, !95, !104}
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPid", file: !90, line: 183, baseType: !91)
!90 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/open-vm-tools/line1466")
!91 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !96, line: 155, baseType: !97)
!96 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line1466")
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{!100, !103}
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !101, line: 50, baseType: !102)
!101 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1466")
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !101, line: 49, baseType: !91)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !101, line: 77, baseType: !92)
!104 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!105 = !{!106, !112, !172, !189, !200}
!106 = distinct !DIGlobalVariable(name: "vm_version", scope: !0, file: !107, line: 48, type: !108, isLocal: false, isDefinition: true, variable: [20 x i8]* @vm_version)
!107 = !DIFile(filename: "powerOps.c", directory: "/home/lichi/Desktop/open-vm-tools/line1466")
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 160, align: 8, elements: !110)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!110 = !{!111}
!111 = !DISubrange(count: 20)
!112 = distinct !DIGlobalVariable(name: "regData", scope: !113, file: !107, line: 526, type: !117, isLocal: true, isDefinition: true, variable: %struct.ToolsPluginData* @ToolsOnLoad.regData)
!113 = distinct !DISubprogram(name: "ToolsOnLoad", scope: !107, file: !107, line: 524, type: !114, isLocal: false, isDefinition: true, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !171)
!114 = !DISubroutineType(types: !115)
!115 = !{!116, !138}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsPluginData", file: !4, line: 545, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsPluginData", file: !4, line: 501, size: 256, align: 64, elements: !119)
!119 = !{!120, !122, !134, !170}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !118, file: !4, line: 503, baseType: !121, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !118, file: !4, line: 508, baseType: !123, size: 64, align: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "GArray", file: !125, line: 37, baseType: !126)
!125 = !DIFile(filename: "/usr/include/glib-2.0/glib/garray.h", directory: "/home/lichi/Desktop/open-vm-tools/line1466")
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GArray", file: !125, line: 41, size: 128, align: 64, elements: !127)
!127 = !{!128, !131}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !126, file: !125, line: 43, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !101, line: 46, baseType: !94)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !126, file: !125, line: 44, baseType: !132, size: 32, align: 32, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !101, line: 55, baseType: !133)
!133 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "errorCb", scope: !118, file: !4, line: 539, baseType: !135, size: 64, align: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{!100, !138, !168, !103, !169}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppCtx", file: !4, line: 274, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppCtx", file: !4, line: 241, size: 576, align: 64, elements: !141)
!141 = !{!142, !144, !147, !148, !149, !153, !158, !163, !164, !165, !167}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !140, file: !4, line: 243, baseType: !143, size: 32, align: 32)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCoreAPI", file: !4, line: 234, baseType: !3)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !140, file: !4, line: 245, baseType: !145, size: 64, align: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "isVMware", scope: !140, file: !4, line: 247, baseType: !100, size: 32, align: 32, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "errorCode", scope: !140, file: !4, line: 249, baseType: !91, size: 32, align: 32, offset: 160)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "mainLoop", scope: !140, file: !4, line: 251, baseType: !150, size: 64, align: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainLoop", file: !96, line: 56, baseType: !152)
!152 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainLoop", file: !96, line: 56, flags: DIFlagFwdDecl)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !140, file: !4, line: 253, baseType: !154, size: 64, align: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !156, line: 48, baseType: !157)
!156 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line1466")
!157 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !156, line: 48, flags: DIFlagFwdDecl)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !140, file: !4, line: 255, baseType: !159, size: 64, align: 64, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !161, line: 48, baseType: !162)
!161 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1466")
!162 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !161, line: 48, flags: DIFlagFwdDecl)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "blockFD", scope: !140, file: !4, line: 261, baseType: !91, size: 32, align: 32, offset: 384)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "uinputFD", scope: !140, file: !4, line: 263, baseType: !91, size: 32, align: 32, offset: 416)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !140, file: !4, line: 265, baseType: !166, size: 64, align: 64, offset: 448)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "serviceObj", scope: !140, file: !4, line: 273, baseType: !103, size: 64, align: 64, offset: 512)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppType", file: !4, line: 360, baseType: !7)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !118, file: !4, line: 544, baseType: !103, size: 64, align: 64, offset: 192)
!171 = !{}
!172 = distinct !DIGlobalVariable(name: "caps", scope: !173, file: !107, line: 92, type: !176, isLocal: true, isDefinition: true, variable: [2 x %struct.ToolsAppCapability]* @PowerOpsCapabilityCb.caps)
!173 = distinct !DISubprogram(name: "PowerOpsCapabilityCb", scope: !107, file: !107, line: 87, type: !174, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !171)
!174 = !DISubroutineType(types: !175)
!175 = !{!123, !103, !138, !100, !103}
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 384, align: 64, elements: !187)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppCapability", file: !4, line: 333, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppCapability", file: !4, line: 318, size: 192, align: 64, elements: !180)
!180 = !{!181, !183, !184, !186}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !179, file: !4, line: 320, baseType: !182, size: 32, align: 32)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCapabilityType", file: !4, line: 307, baseType: !23)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !179, file: !4, line: 325, baseType: !145, size: 64, align: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !179, file: !4, line: 330, baseType: !185, size: 32, align: 32, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestCapabilities", file: !29, line: 79, baseType: !28)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !179, file: !4, line: 332, baseType: !132, size: 32, align: 32, offset: 160)
!187 = !{!188}
!188 = !DISubrange(count: 2)
!189 = distinct !DIGlobalVariable(name: "stateChangeCmdTable", scope: !0, file: !14, line: 66, type: !190, isLocal: true, isDefinition: true, variable: [5 x %struct.GuestOsStateChangeCmd]* @stateChangeCmdTable)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 960, align: 64, elements: !198)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestOsStateChangeCmd", file: !14, line: 60, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestOsStateChangeCmd", file: !14, line: 56, size: 192, align: 64, elements: !194)
!194 = !{!195, !196, !197}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !193, file: !14, line: 57, baseType: !133, size: 32, align: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !193, file: !14, line: 58, baseType: !121, size: 64, align: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "tcloCmd", scope: !193, file: !14, line: 59, baseType: !121, size: 64, align: 64, offset: 128)
!198 = !{!199}
!199 = !DISubrange(count: 5)
!200 = distinct !DIGlobalVariable(name: "stateChgConfNames", scope: !0, file: !107, line: 51, type: !201, isLocal: true, isDefinition: true, variable: [6 x i8*]* @stateChgConfNames)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 384, align: 64, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 6)
!204 = !{i32 2, !"Dwarf Version", i32 4}
!205 = !{i32 2, !"Debug Info Version", i32 3}
!206 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!207 = !DILocalVariable(name: "ctx", arg: 1, scope: !113, file: !107, line: 524, type: !138)
!208 = !DIExpression()
!209 = !DILocation(line: 524, column: 26, scope: !113)
!210 = !DILocalVariable(name: "i", scope: !113, file: !107, line: 532, type: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !212, line: 216, baseType: !213)
!212 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1466")
!213 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!214 = !DILocation(line: 532, column: 11, scope: !113)
!215 = !DILocalVariable(name: "state", scope: !113, file: !107, line: 533, type: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "PowerOpState", file: !107, line: 72, baseType: !218)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PowerOpState", file: !107, line: 62, size: 384, align: 64, elements: !219)
!219 = !{!220, !222, !223, !224, !225}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "stateChgInProgress", scope: !218, file: !107, line: 63, baseType: !221, size: 32, align: 32)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestOsState", file: !14, line: 50, baseType: !13)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "lastFailedStateChg", scope: !218, file: !107, line: 64, baseType: !221, size: 32, align: 32, offset: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !218, file: !107, line: 68, baseType: !89, size: 32, align: 32, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !218, file: !107, line: 70, baseType: !138, size: 64, align: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "scriptEnabled", scope: !218, file: !107, line: 71, baseType: !226, size: 192, align: 32, offset: 192)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 192, align: 32, elements: !202)
!227 = !DILocation(line: 533, column: 18, scope: !113)
!228 = !DILocalVariable(name: "sigs", scope: !113, file: !107, line: 535, type: !229)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 576, align: 64, elements: !236)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsPluginSignalCb", file: !4, line: 484, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsPluginSignalCb", file: !4, line: 480, size: 192, align: 64, elements: !232)
!232 = !{!233, !234, !235}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "signame", scope: !231, file: !4, line: 481, baseType: !145, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !231, file: !4, line: 482, baseType: !103, size: 64, align: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !231, file: !4, line: 483, baseType: !103, size: 64, align: 64, offset: 128)
!236 = !{!237}
!237 = !DISubrange(count: 3)
!238 = !DILocation(line: 535, column: 24, scope: !113)
!239 = !DILocalVariable(name: "regs", scope: !113, file: !107, line: 540, type: !240)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 256, align: 64, elements: !187)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppReg", file: !4, line: 450, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppReg", file: !4, line: 447, size: 128, align: 64, elements: !243)
!243 = !{!244, !245}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !242, file: !4, line: 448, baseType: !168, size: 32, align: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !242, file: !4, line: 449, baseType: !123, size: 64, align: 64, offset: 64)
!246 = !DILocation(line: 540, column: 16, scope: !113)
!247 = !DILocation(line: 540, column: 25, scope: !113)
!248 = !DILocation(line: 541, column: 7, scope: !113)
!249 = !DILocation(line: 542, column: 7, scope: !113)
!250 = !DILocation(line: 542, column: 46, scope: !113)
!251 = !DILocation(line: 542, column: 28, scope: !113)
!252 = !DILocation(line: 545, column: 12, scope: !113)
!253 = !DILocation(line: 545, column: 10, scope: !113)
!254 = !DILocation(line: 546, column: 17, scope: !113)
!255 = !DILocation(line: 546, column: 4, scope: !113)
!256 = !DILocation(line: 546, column: 11, scope: !113)
!257 = !DILocation(line: 546, column: 15, scope: !113)
!258 = !DILocation(line: 547, column: 4, scope: !113)
!259 = !DILocation(line: 547, column: 11, scope: !113)
!260 = !DILocation(line: 547, column: 15, scope: !113)
!261 = !DILocation(line: 549, column: 11, scope: !262)
!262 = distinct !DILexicalBlock(scope: !113, file: !107, line: 549, column: 4)
!263 = !DILocation(line: 549, column: 9, scope: !262)
!264 = !DILocation(line: 549, column: 16, scope: !265)
!265 = !DILexicalBlockFile(scope: !266, file: !107, discriminator: 1)
!266 = distinct !DILexicalBlock(scope: !262, file: !107, line: 549, column: 4)
!267 = !DILocation(line: 549, column: 18, scope: !265)
!268 = !DILocation(line: 549, column: 4, scope: !265)
!269 = !DILocation(line: 550, column: 28, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !107, line: 549, column: 51)
!271 = !DILocation(line: 550, column: 7, scope: !270)
!272 = !DILocation(line: 550, column: 14, scope: !270)
!273 = !DILocation(line: 550, column: 31, scope: !270)
!274 = !DILocation(line: 551, column: 4, scope: !270)
!275 = !DILocation(line: 549, column: 47, scope: !276)
!276 = !DILexicalBlockFile(scope: !266, file: !107, discriminator: 2)
!277 = !DILocation(line: 549, column: 4, scope: !276)
!278 = distinct !{!278, !279}
!279 = !DILocation(line: 549, column: 4, scope: !113)
!280 = !DILocation(line: 553, column: 19, scope: !113)
!281 = !DILocation(line: 553, column: 4, scope: !113)
!282 = !DILocation(line: 553, column: 12, scope: !113)
!283 = !DILocation(line: 553, column: 17, scope: !113)
!284 = !DILocation(line: 558, column: 11, scope: !285)
!285 = distinct !DILexicalBlock(scope: !113, file: !107, line: 558, column: 4)
!286 = !DILocation(line: 558, column: 9, scope: !285)
!287 = !DILocation(line: 558, column: 16, scope: !288)
!288 = !DILexicalBlockFile(scope: !289, file: !107, discriminator: 1)
!289 = distinct !DILexicalBlock(scope: !285, file: !107, line: 558, column: 4)
!290 = !DILocation(line: 558, column: 18, scope: !288)
!291 = !DILocation(line: 558, column: 4, scope: !288)
!292 = !DILocalVariable(name: "cb", scope: !293, file: !107, line: 559, type: !294)
!293 = distinct !DILexicalBlock(scope: !289, file: !107, line: 558, column: 89)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannelCallback", file: !156, line: 115, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcChannelCallback", file: !156, line: 94, size: 384, align: 64, elements: !296)
!296 = !{!297, !298, !315, !316, !317, !318}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !295, file: !156, line: 96, baseType: !121, size: 64, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !295, file: !156, line: 98, baseType: !299, size: 64, align: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcIn_Callback", file: !156, line: 90, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!100, !303}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcInData", file: !156, line: 77, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcInData", file: !156, line: 51, size: 512, align: 64, elements: !306)
!306 = !{!307, !308, !309, !310, !311, !312, !313, !314}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !305, file: !156, line: 53, baseType: !121, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !305, file: !156, line: 58, baseType: !121, size: 64, align: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "argsSize", scope: !305, file: !156, line: 60, baseType: !211, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !305, file: !156, line: 65, baseType: !93, size: 64, align: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "resultLen", scope: !305, file: !156, line: 67, baseType: !211, size: 64, align: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "freeResult", scope: !305, file: !156, line: 72, baseType: !100, size: 32, align: 32, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "appCtx", scope: !305, file: !156, line: 74, baseType: !92, size: 64, align: 64, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !305, file: !156, line: 76, baseType: !92, size: 64, align: 64, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !295, file: !156, line: 100, baseType: !103, size: 64, align: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "xdrIn", scope: !295, file: !156, line: 102, baseType: !103, size: 64, align: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "xdrOut", scope: !295, file: !156, line: 109, baseType: !103, size: 64, align: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "xdrInSize", scope: !295, file: !156, line: 114, baseType: !211, size: 64, align: 64, offset: 320)
!319 = !DILocation(line: 559, column: 26, scope: !293)
!320 = !DILocation(line: 559, column: 31, scope: !293)
!321 = !DILocation(line: 559, column: 53, scope: !293)
!322 = !DILocation(line: 559, column: 33, scope: !293)
!323 = !DILocation(line: 559, column: 56, scope: !293)
!324 = !DILocation(line: 561, column: 33, scope: !293)
!325 = !DILocation(line: 562, column: 28, scope: !293)
!326 = !DILocation(line: 562, column: 36, scope: !293)
!327 = !DILocation(line: 562, column: 42, scope: !293)
!328 = !DILocation(line: 562, column: 7, scope: !293)
!329 = !DILocation(line: 563, column: 4, scope: !293)
!330 = !DILocation(line: 558, column: 85, scope: !331)
!331 = !DILexicalBlockFile(scope: !289, file: !107, discriminator: 2)
!332 = !DILocation(line: 558, column: 4, scope: !331)
!333 = distinct !{!333, !334}
!334 = !DILocation(line: 558, column: 4, scope: !113)
!335 = !DILocation(line: 565, column: 37, scope: !113)
!336 = !DILocation(line: 565, column: 19, scope: !113)
!337 = !DILocation(line: 565, column: 17, scope: !113)
!338 = !DILocation(line: 566, column: 23, scope: !113)
!339 = !DILocation(line: 566, column: 21, scope: !113)
!340 = !DILocation(line: 567, column: 4, scope: !113)
!341 = !DILocalVariable(name: "src", arg: 1, scope: !173, file: !107, line: 87, type: !103)
!342 = !DILocation(line: 87, column: 31, scope: !173)
!343 = !DILocalVariable(name: "ctx", arg: 2, scope: !173, file: !107, line: 88, type: !138)
!344 = !DILocation(line: 88, column: 35, scope: !173)
!345 = !DILocalVariable(name: "set", arg: 3, scope: !173, file: !107, line: 89, type: !100)
!346 = !DILocation(line: 89, column: 31, scope: !173)
!347 = !DILocalVariable(name: "data", arg: 4, scope: !173, file: !107, line: 90, type: !103)
!348 = !DILocation(line: 90, column: 31, scope: !173)
!349 = !DILocation(line: 97, column: 11, scope: !173)
!350 = !DILocation(line: 97, column: 4, scope: !173)
!351 = distinct !DISubprogram(name: "PowerOpsSetOption", scope: !107, file: !107, line: 114, type: !352, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !171)
!352 = !DISubroutineType(types: !353)
!353 = !{!100, !103, !138, !145, !145, !116}
!354 = !DILocalVariable(name: "src", arg: 1, scope: !351, file: !107, line: 114, type: !103)
!355 = !DILocation(line: 114, column: 28, scope: !351)
!356 = !DILocalVariable(name: "ctx", arg: 2, scope: !351, file: !107, line: 115, type: !138)
!357 = !DILocation(line: 115, column: 32, scope: !351)
!358 = !DILocalVariable(name: "option", arg: 3, scope: !351, file: !107, line: 116, type: !145)
!359 = !DILocation(line: 116, column: 32, scope: !351)
!360 = !DILocalVariable(name: "value", arg: 4, scope: !351, file: !107, line: 117, type: !145)
!361 = !DILocation(line: 117, column: 32, scope: !351)
!362 = !DILocalVariable(name: "plugin", arg: 5, scope: !351, file: !107, line: 118, type: !116)
!363 = !DILocation(line: 118, column: 36, scope: !351)
!364 = !DILocalVariable(name: "enabled", scope: !351, file: !107, line: 120, type: !100)
!365 = !DILocation(line: 120, column: 13, scope: !351)
!366 = !DILocalVariable(name: "state", scope: !351, file: !107, line: 121, type: !216)
!367 = !DILocation(line: 121, column: 18, scope: !351)
!368 = !DILocation(line: 121, column: 26, scope: !351)
!369 = !DILocation(line: 121, column: 34, scope: !351)
!370 = !DILocation(line: 123, column: 15, scope: !371)
!371 = distinct !DILexicalBlock(scope: !351, file: !107, line: 123, column: 8)
!372 = !DILocation(line: 123, column: 8, scope: !371)
!373 = !DILocation(line: 123, column: 27, scope: !371)
!374 = !DILocation(line: 123, column: 32, scope: !371)
!375 = !DILocation(line: 123, column: 42, scope: !376)
!376 = !DILexicalBlockFile(scope: !371, file: !107, discriminator: 1)
!377 = !DILocation(line: 123, column: 35, scope: !376)
!378 = !DILocation(line: 123, column: 54, scope: !376)
!379 = !DILocation(line: 123, column: 8, scope: !376)
!380 = !DILocation(line: 124, column: 7, scope: !381)
!381 = distinct !DILexicalBlock(scope: !371, file: !107, line: 123, column: 60)
!382 = !DILocation(line: 127, column: 22, scope: !351)
!383 = !DILocation(line: 127, column: 15, scope: !351)
!384 = !DILocation(line: 127, column: 34, scope: !351)
!385 = !DILocation(line: 127, column: 12, scope: !351)
!386 = !DILocation(line: 129, column: 15, scope: !387)
!387 = distinct !DILexicalBlock(scope: !351, file: !107, line: 129, column: 8)
!388 = !DILocation(line: 129, column: 8, scope: !387)
!389 = !DILocation(line: 129, column: 51, scope: !387)
!390 = !DILocation(line: 129, column: 8, scope: !351)
!391 = !DILocation(line: 130, column: 59, scope: !392)
!392 = distinct !DILexicalBlock(scope: !387, file: !107, line: 129, column: 57)
!393 = !DILocation(line: 130, column: 7, scope: !392)
!394 = !DILocation(line: 130, column: 14, scope: !392)
!395 = !DILocation(line: 130, column: 57, scope: !392)
!396 = !DILocation(line: 131, column: 4, scope: !392)
!397 = !DILocation(line: 131, column: 22, scope: !398)
!398 = !DILexicalBlockFile(scope: !399, file: !107, discriminator: 1)
!399 = distinct !DILexicalBlock(scope: !387, file: !107, line: 131, column: 15)
!400 = !DILocation(line: 131, column: 15, scope: !398)
!401 = !DILocation(line: 131, column: 60, scope: !398)
!402 = !DILocation(line: 133, column: 61, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !107, line: 131, column: 66)
!404 = !DILocation(line: 133, column: 10, scope: !403)
!405 = !DILocation(line: 133, column: 17, scope: !403)
!406 = !DILocation(line: 133, column: 59, scope: !403)
!407 = !DILocation(line: 132, column: 7, scope: !403)
!408 = !DILocation(line: 132, column: 14, scope: !403)
!409 = !DILocation(line: 132, column: 54, scope: !403)
!410 = !DILocation(line: 134, column: 4, scope: !403)
!411 = !DILocation(line: 134, column: 22, scope: !412)
!412 = !DILexicalBlockFile(scope: !413, file: !107, discriminator: 1)
!413 = distinct !DILexicalBlock(scope: !399, file: !107, line: 134, column: 15)
!414 = !DILocation(line: 134, column: 15, scope: !412)
!415 = !DILocation(line: 134, column: 59, scope: !412)
!416 = !DILocation(line: 135, column: 59, scope: !417)
!417 = distinct !DILexicalBlock(scope: !413, file: !107, line: 134, column: 65)
!418 = !DILocation(line: 135, column: 7, scope: !417)
!419 = !DILocation(line: 135, column: 14, scope: !417)
!420 = !DILocation(line: 135, column: 57, scope: !417)
!421 = !DILocation(line: 136, column: 4, scope: !417)
!422 = !DILocation(line: 136, column: 22, scope: !423)
!423 = !DILexicalBlockFile(scope: !424, file: !107, discriminator: 1)
!424 = distinct !DILexicalBlock(scope: !413, file: !107, line: 136, column: 15)
!425 = !DILocation(line: 136, column: 15, scope: !423)
!426 = !DILocation(line: 136, column: 57, scope: !423)
!427 = !DILocation(line: 137, column: 58, scope: !428)
!428 = distinct !DILexicalBlock(scope: !424, file: !107, line: 136, column: 63)
!429 = !DILocation(line: 137, column: 7, scope: !428)
!430 = !DILocation(line: 137, column: 14, scope: !428)
!431 = !DILocation(line: 137, column: 56, scope: !428)
!432 = !DILocation(line: 138, column: 4, scope: !428)
!433 = !DILocation(line: 139, column: 7, scope: !434)
!434 = distinct !DILexicalBlock(scope: !424, file: !107, line: 138, column: 11)
!435 = !DILocation(line: 142, column: 4, scope: !351)
!436 = !DILocation(line: 143, column: 1, scope: !351)
!437 = distinct !DISubprogram(name: "PowerOpsShutdown", scope: !107, file: !107, line: 155, type: !438, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !171)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !103, !138, !116}
!440 = !DILocalVariable(name: "src", arg: 1, scope: !437, file: !107, line: 155, type: !103)
!441 = !DILocation(line: 155, column: 27, scope: !437)
!442 = !DILocalVariable(name: "ctx", arg: 2, scope: !437, file: !107, line: 156, type: !138)
!443 = !DILocation(line: 156, column: 31, scope: !437)
!444 = !DILocalVariable(name: "plugin", arg: 3, scope: !437, file: !107, line: 157, type: !116)
!445 = !DILocation(line: 157, column: 35, scope: !437)
!446 = !DILocalVariable(name: "state", scope: !437, file: !107, line: 159, type: !216)
!447 = !DILocation(line: 159, column: 18, scope: !437)
!448 = !DILocation(line: 159, column: 26, scope: !437)
!449 = !DILocation(line: 159, column: 34, scope: !437)
!450 = !DILocation(line: 160, column: 11, scope: !437)
!451 = !DILocation(line: 160, column: 4, scope: !437)
!452 = !DILocation(line: 161, column: 1, scope: !437)
!453 = distinct !DISubprogram(name: "PowerOpsStateChange", scope: !107, file: !107, line: 416, type: !301, isLocal: true, isDefinition: true, scopeLine: 417, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !171)
!454 = !DILocalVariable(name: "data", arg: 1, scope: !453, file: !107, line: 416, type: !303)
!455 = !DILocation(line: 416, column: 32, scope: !453)
!456 = !DILocalVariable(name: "i", scope: !453, file: !107, line: 418, type: !211)
!457 = !DILocation(line: 418, column: 11, scope: !453)
!458 = !DILocalVariable(name: "state", scope: !453, file: !107, line: 419, type: !216)
!459 = !DILocation(line: 419, column: 18, scope: !453)
!460 = !DILocation(line: 419, column: 26, scope: !453)
!461 = !DILocation(line: 419, column: 32, scope: !453)
!462 = !DILocation(line: 421, column: 8, scope: !463)
!463 = distinct !DILexicalBlock(scope: !453, file: !107, line: 421, column: 8)
!464 = !DILocation(line: 421, column: 15, scope: !463)
!465 = !DILocation(line: 421, column: 19, scope: !463)
!466 = !DILocation(line: 421, column: 8, scope: !453)
!467 = !DILocation(line: 422, column: 7, scope: !468)
!468 = distinct !DILexicalBlock(scope: !463, file: !107, line: 421, column: 33)
!469 = !DILocation(line: 423, column: 36, scope: !468)
!470 = !DILocation(line: 423, column: 14, scope: !468)
!471 = !DILocation(line: 423, column: 7, scope: !468)
!472 = !DILocation(line: 426, column: 64, scope: !453)
!473 = !DILocation(line: 426, column: 70, scope: !453)
!474 = !DILocation(line: 426, column: 4, scope: !453)
!475 = !DILocation(line: 428, column: 11, scope: !476)
!476 = distinct !DILexicalBlock(scope: !453, file: !107, line: 428, column: 4)
!477 = !DILocation(line: 428, column: 9, scope: !476)
!478 = !DILocation(line: 428, column: 16, scope: !479)
!479 = !DILexicalBlockFile(scope: !480, file: !107, discriminator: 1)
!480 = distinct !DILexicalBlock(scope: !476, file: !107, line: 428, column: 4)
!481 = !DILocation(line: 428, column: 18, scope: !479)
!482 = !DILocation(line: 428, column: 4, scope: !479)
!483 = !DILocation(line: 429, column: 18, scope: !484)
!484 = distinct !DILexicalBlock(scope: !485, file: !107, line: 429, column: 11)
!485 = distinct !DILexicalBlock(scope: !480, file: !107, line: 428, column: 89)
!486 = !DILocation(line: 429, column: 24, scope: !484)
!487 = !DILocation(line: 429, column: 50, scope: !484)
!488 = !DILocation(line: 429, column: 30, scope: !484)
!489 = !DILocation(line: 429, column: 53, scope: !484)
!490 = !DILocation(line: 429, column: 11, scope: !484)
!491 = !DILocation(line: 429, column: 62, scope: !484)
!492 = !DILocation(line: 429, column: 11, scope: !485)
!493 = !DILocalVariable(name: "script", scope: !494, file: !107, line: 430, type: !129)
!494 = distinct !DILexicalBlock(scope: !484, file: !107, line: 429, column: 68)
!495 = !DILocation(line: 430, column: 17, scope: !494)
!496 = !DILocalVariable(name: "result", scope: !494, file: !107, line: 431, type: !121)
!497 = !DILocation(line: 431, column: 22, scope: !494)
!498 = !DILocalVariable(name: "confName", scope: !494, file: !107, line: 432, type: !121)
!499 = !DILocation(line: 432, column: 22, scope: !494)
!500 = !DILocalVariable(name: "ret", scope: !494, file: !107, line: 433, type: !501)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !502, line: 230, baseType: !94)
!502 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1466")
!503 = !DILocation(line: 433, column: 15, scope: !494)
!504 = !DILocation(line: 435, column: 58, scope: !494)
!505 = !DILocation(line: 435, column: 38, scope: !494)
!506 = !DILocation(line: 435, column: 61, scope: !494)
!507 = !DILocation(line: 435, column: 10, scope: !494)
!508 = !DILocation(line: 435, column: 17, scope: !494)
!509 = !DILocation(line: 435, column: 36, scope: !494)
!510 = !DILocation(line: 438, column: 56, scope: !511)
!511 = distinct !DILexicalBlock(scope: !494, file: !107, line: 438, column: 14)
!512 = !DILocation(line: 438, column: 36, scope: !511)
!513 = !DILocation(line: 438, column: 59, scope: !511)
!514 = !DILocation(line: 438, column: 15, scope: !511)
!515 = !DILocation(line: 438, column: 22, scope: !511)
!516 = !DILocation(line: 438, column: 14, scope: !494)
!517 = !DILocation(line: 439, column: 37, scope: !518)
!518 = distinct !DILexicalBlock(scope: !511, file: !107, line: 438, column: 64)
!519 = !DILocation(line: 439, column: 13, scope: !518)
!520 = !DILocation(line: 440, column: 112, scope: !518)
!521 = !DILocation(line: 440, column: 92, scope: !518)
!522 = !DILocation(line: 440, column: 115, scope: !518)
!523 = !DILocation(line: 440, column: 13, scope: !518)
!524 = !DILocation(line: 442, column: 42, scope: !518)
!525 = !DILocation(line: 442, column: 20, scope: !518)
!526 = !DILocation(line: 442, column: 13, scope: !518)
!527 = !DILocation(line: 445, column: 59, scope: !494)
!528 = !DILocation(line: 445, column: 39, scope: !494)
!529 = !DILocation(line: 445, column: 62, scope: !494)
!530 = !DILocation(line: 445, column: 21, scope: !494)
!531 = !DILocation(line: 445, column: 19, scope: !494)
!532 = !DILocation(line: 446, column: 41, scope: !494)
!533 = !DILocation(line: 446, column: 48, scope: !494)
!534 = !DILocation(line: 446, column: 53, scope: !494)
!535 = !DILocation(line: 448, column: 41, scope: !494)
!536 = !DILocation(line: 446, column: 19, scope: !494)
!537 = !DILocation(line: 446, column: 17, scope: !494)
!538 = !DILocation(line: 451, column: 14, scope: !539)
!539 = distinct !DILexicalBlock(scope: !494, file: !107, line: 451, column: 14)
!540 = !DILocation(line: 451, column: 21, scope: !539)
!541 = !DILocation(line: 451, column: 14, scope: !494)
!542 = !DILocalVariable(name: "dfltScript", scope: !543, file: !107, line: 453, type: !121)
!543 = distinct !DILexicalBlock(scope: !539, file: !107, line: 451, column: 29)
!544 = !DILocation(line: 453, column: 25, scope: !543)
!545 = !DILocation(line: 453, column: 64, scope: !543)
!546 = !DILocation(line: 453, column: 38, scope: !543)
!547 = !DILocation(line: 454, column: 17, scope: !548)
!548 = distinct !DILexicalBlock(scope: !543, file: !107, line: 454, column: 17)
!549 = !DILocation(line: 454, column: 28, scope: !548)
!550 = !DILocation(line: 454, column: 17, scope: !543)
!551 = !DILocation(line: 455, column: 125, scope: !552)
!552 = distinct !DILexicalBlock(scope: !548, file: !107, line: 454, column: 36)
!553 = !DILocation(line: 455, column: 105, scope: !552)
!554 = !DILocation(line: 455, column: 128, scope: !552)
!555 = !DILocation(line: 455, column: 16, scope: !552)
!556 = !DILocation(line: 457, column: 40, scope: !552)
!557 = !DILocation(line: 457, column: 16, scope: !552)
!558 = !DILocation(line: 458, column: 45, scope: !552)
!559 = !DILocation(line: 458, column: 23, scope: !552)
!560 = !DILocation(line: 458, column: 16, scope: !552)
!561 = !DILocation(line: 460, column: 31, scope: !543)
!562 = !DILocation(line: 460, column: 22, scope: !543)
!563 = !DILocation(line: 460, column: 20, scope: !543)
!564 = !DILocation(line: 461, column: 10, scope: !543)
!565 = !DILocation(line: 461, column: 28, scope: !566)
!566 = !DILexicalBlockFile(scope: !567, file: !107, discriminator: 1)
!567 = distinct !DILexicalBlock(scope: !539, file: !107, line: 461, column: 21)
!568 = !DILocation(line: 461, column: 21, scope: !566)
!569 = !DILocation(line: 461, column: 36, scope: !566)
!570 = !DILocation(line: 462, column: 114, scope: !571)
!571 = distinct !DILexicalBlock(scope: !567, file: !107, line: 461, column: 42)
!572 = !DILocation(line: 462, column: 94, scope: !571)
!573 = !DILocation(line: 462, column: 117, scope: !571)
!574 = !DILocation(line: 462, column: 13, scope: !571)
!575 = !DILocation(line: 464, column: 20, scope: !571)
!576 = !DILocation(line: 464, column: 13, scope: !571)
!577 = !DILocation(line: 465, column: 37, scope: !571)
!578 = !DILocation(line: 465, column: 13, scope: !571)
!579 = !DILocation(line: 466, column: 42, scope: !571)
!580 = !DILocation(line: 466, column: 20, scope: !571)
!581 = !DILocation(line: 466, column: 13, scope: !571)
!582 = !DILocation(line: 470, column: 34, scope: !583)
!583 = distinct !DILexicalBlock(scope: !494, file: !107, line: 470, column: 14)
!584 = !DILocation(line: 470, column: 15, scope: !583)
!585 = !DILocation(line: 470, column: 14, scope: !494)
!586 = !DILocalVariable(name: "dfltPath", scope: !587, file: !107, line: 471, type: !93)
!587 = distinct !DILexicalBlock(scope: !583, file: !107, line: 470, column: 43)
!588 = !DILocation(line: 471, column: 19, scope: !587)
!589 = !DILocalVariable(name: "tmp", scope: !587, file: !107, line: 472, type: !93)
!590 = !DILocation(line: 472, column: 19, scope: !587)
!591 = !DILocation(line: 474, column: 24, scope: !587)
!592 = !DILocation(line: 474, column: 22, scope: !587)
!593 = !DILocation(line: 484, column: 17, scope: !594)
!594 = distinct !DILexicalBlock(scope: !587, file: !107, line: 484, column: 17)
!595 = !DILocation(line: 484, column: 27, scope: !594)
!596 = !DILocation(line: 484, column: 17, scope: !587)
!597 = !DILocation(line: 485, column: 31, scope: !598)
!598 = distinct !DILexicalBlock(scope: !594, file: !107, line: 484, column: 35)
!599 = !DILocation(line: 485, column: 24, scope: !598)
!600 = !DILocation(line: 485, column: 39, scope: !598)
!601 = !DILocation(line: 485, column: 17, scope: !598)
!602 = !DILocation(line: 485, column: 44, scope: !598)
!603 = !DILocation(line: 486, column: 49, scope: !598)
!604 = !DILocation(line: 486, column: 64, scope: !598)
!605 = !DILocation(line: 486, column: 71, scope: !598)
!606 = !DILocation(line: 486, column: 23, scope: !598)
!607 = !DILocation(line: 486, column: 21, scope: !598)
!608 = !DILocation(line: 487, column: 13, scope: !598)
!609 = !DILocation(line: 488, column: 48, scope: !610)
!610 = distinct !DILexicalBlock(scope: !594, file: !107, line: 487, column: 20)
!611 = !DILocation(line: 488, column: 63, scope: !610)
!612 = !DILocation(line: 488, column: 22, scope: !610)
!613 = !DILocation(line: 488, column: 20, scope: !610)
!614 = !DILocation(line: 491, column: 20, scope: !587)
!615 = !DILocation(line: 491, column: 13, scope: !587)
!616 = !DILocation(line: 492, column: 21, scope: !587)
!617 = !DILocation(line: 492, column: 13, scope: !587)
!618 = !DILocation(line: 493, column: 22, scope: !587)
!619 = !DILocation(line: 493, column: 20, scope: !587)
!620 = !DILocation(line: 494, column: 10, scope: !587)
!621 = !DILocation(line: 496, column: 32, scope: !622)
!622 = distinct !DILexicalBlock(scope: !494, file: !107, line: 496, column: 14)
!623 = !DILocation(line: 496, column: 39, scope: !622)
!624 = !DILocation(line: 496, column: 14, scope: !622)
!625 = !DILocation(line: 496, column: 14, scope: !494)
!626 = !DILocation(line: 497, column: 20, scope: !627)
!627 = distinct !DILexicalBlock(scope: !622, file: !107, line: 496, column: 48)
!628 = !DILocation(line: 498, column: 17, scope: !627)
!629 = !DILocation(line: 499, column: 10, scope: !627)
!630 = !DILocation(line: 500, column: 37, scope: !631)
!631 = distinct !DILexicalBlock(scope: !622, file: !107, line: 499, column: 17)
!632 = !DILocation(line: 500, column: 13, scope: !631)
!633 = !DILocation(line: 501, column: 20, scope: !631)
!634 = !DILocation(line: 502, column: 17, scope: !631)
!635 = !DILocation(line: 505, column: 17, scope: !494)
!636 = !DILocation(line: 505, column: 10, scope: !494)
!637 = !DILocation(line: 506, column: 39, scope: !494)
!638 = !DILocation(line: 506, column: 54, scope: !494)
!639 = !DILocation(line: 506, column: 62, scope: !494)
!640 = !DILocation(line: 506, column: 17, scope: !494)
!641 = !DILocation(line: 506, column: 10, scope: !494)
!642 = !DILocation(line: 508, column: 4, scope: !485)
!643 = !DILocation(line: 428, column: 85, scope: !644)
!644 = !DILexicalBlockFile(scope: !480, file: !107, discriminator: 2)
!645 = !DILocation(line: 428, column: 4, scope: !644)
!646 = distinct !{!646, !647}
!647 = !DILocation(line: 428, column: 4, scope: !453)
!648 = !DILocation(line: 510, column: 4, scope: !453)
!649 = !DILocation(line: 511, column: 33, scope: !453)
!650 = !DILocation(line: 511, column: 11, scope: !453)
!651 = !DILocation(line: 511, column: 4, scope: !453)
!652 = !DILocation(line: 512, column: 1, scope: !453)
!653 = distinct !DISubprogram(name: "PowerOpsStateChangeDone", scope: !107, file: !107, line: 176, type: !654, isLocal: true, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !171)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !216, !100}
!656 = !DILocalVariable(name: "state", arg: 1, scope: !653, file: !107, line: 176, type: !216)
!657 = !DILocation(line: 176, column: 39, scope: !653)
!658 = !DILocalVariable(name: "success", arg: 2, scope: !653, file: !107, line: 177, type: !100)
!659 = !DILocation(line: 177, column: 34, scope: !653)
!660 = !DILocalVariable(name: "msg", scope: !653, file: !107, line: 179, type: !129)
!661 = !DILocation(line: 179, column: 11, scope: !653)
!662 = !DILocation(line: 181, column: 84, scope: !653)
!663 = !DILocation(line: 181, column: 4, scope: !653)
!664 = !DILocation(line: 188, column: 8, scope: !665)
!665 = distinct !DILexicalBlock(scope: !653, file: !107, line: 188, column: 8)
!666 = !DILocation(line: 188, column: 16, scope: !665)
!667 = !DILocation(line: 188, column: 19, scope: !668)
!668 = !DILexicalBlockFile(scope: !665, file: !107, discriminator: 1)
!669 = !DILocation(line: 188, column: 26, scope: !668)
!670 = !DILocation(line: 188, column: 48, scope: !668)
!671 = !DILocation(line: 188, column: 55, scope: !668)
!672 = !DILocation(line: 188, column: 45, scope: !668)
!673 = !DILocation(line: 188, column: 8, scope: !668)
!674 = !DILocation(line: 189, column: 15, scope: !675)
!675 = distinct !DILexicalBlock(scope: !665, file: !107, line: 188, column: 75)
!676 = !DILocation(line: 190, column: 7, scope: !675)
!677 = !DILocation(line: 190, column: 14, scope: !675)
!678 = !DILocation(line: 190, column: 33, scope: !675)
!679 = !DILocation(line: 191, column: 4, scope: !675)
!680 = !DILocation(line: 193, column: 9, scope: !681)
!681 = distinct !DILexicalBlock(scope: !653, file: !107, line: 193, column: 8)
!682 = !DILocation(line: 193, column: 8, scope: !653)
!683 = !DILocation(line: 194, column: 35, scope: !684)
!684 = distinct !DILexicalBlock(scope: !681, file: !107, line: 193, column: 18)
!685 = !DILocation(line: 194, column: 42, scope: !684)
!686 = !DILocation(line: 194, column: 7, scope: !684)
!687 = !DILocation(line: 194, column: 14, scope: !684)
!688 = !DILocation(line: 194, column: 33, scope: !684)
!689 = !DILocation(line: 195, column: 4, scope: !684)
!690 = !DILocation(line: 199, column: 26, scope: !653)
!691 = !DILocation(line: 200, column: 26, scope: !653)
!692 = !DILocation(line: 200, column: 33, scope: !653)
!693 = !DILocation(line: 198, column: 10, scope: !653)
!694 = !DILocation(line: 198, column: 8, scope: !653)
!695 = !DILocation(line: 201, column: 25, scope: !696)
!696 = distinct !DILexicalBlock(scope: !653, file: !107, line: 201, column: 8)
!697 = !DILocation(line: 201, column: 32, scope: !696)
!698 = !DILocation(line: 201, column: 37, scope: !696)
!699 = !DILocation(line: 201, column: 42, scope: !696)
!700 = !DILocation(line: 201, column: 54, scope: !696)
!701 = !DILocation(line: 201, column: 47, scope: !696)
!702 = !DILocation(line: 201, column: 59, scope: !696)
!703 = !DILocation(line: 201, column: 9, scope: !704)
!704 = !DILexicalBlockFile(scope: !696, file: !107, discriminator: 1)
!705 = !DILocation(line: 201, column: 9, scope: !696)
!706 = !DILocation(line: 201, column: 8, scope: !653)
!707 = !DILocation(line: 202, column: 7, scope: !708)
!708 = distinct !DILexicalBlock(scope: !696, file: !107, line: 201, column: 76)
!709 = !DILocation(line: 203, column: 4, scope: !708)
!710 = !DILocation(line: 205, column: 11, scope: !653)
!711 = !DILocation(line: 205, column: 4, scope: !653)
!712 = !DILocation(line: 208, column: 8, scope: !713)
!713 = distinct !DILexicalBlock(scope: !653, file: !107, line: 208, column: 8)
!714 = !DILocation(line: 208, column: 8, scope: !653)
!715 = !DILocation(line: 209, column: 11, scope: !716)
!716 = distinct !DILexicalBlock(scope: !717, file: !107, line: 209, column: 11)
!717 = distinct !DILexicalBlock(scope: !713, file: !107, line: 208, column: 17)
!718 = !DILocation(line: 209, column: 18, scope: !716)
!719 = !DILocation(line: 209, column: 37, scope: !716)
!720 = !DILocation(line: 209, column: 11, scope: !717)
!721 = !DILocation(line: 210, column: 10, scope: !722)
!722 = distinct !DILexicalBlock(scope: !716, file: !107, line: 209, column: 68)
!723 = !DILocation(line: 211, column: 10, scope: !722)
!724 = !DILocation(line: 212, column: 7, scope: !722)
!725 = !DILocation(line: 212, column: 18, scope: !726)
!726 = !DILexicalBlockFile(scope: !727, file: !107, discriminator: 1)
!727 = distinct !DILexicalBlock(scope: !716, file: !107, line: 212, column: 18)
!728 = !DILocation(line: 212, column: 25, scope: !726)
!729 = !DILocation(line: 212, column: 44, scope: !726)
!730 = !DILocation(line: 213, column: 10, scope: !731)
!731 = distinct !DILexicalBlock(scope: !727, file: !107, line: 212, column: 73)
!732 = !DILocation(line: 214, column: 10, scope: !731)
!733 = !DILocation(line: 215, column: 7, scope: !731)
!734 = !DILocation(line: 216, column: 4, scope: !717)
!735 = !DILocation(line: 218, column: 4, scope: !653)
!736 = !DILocation(line: 218, column: 11, scope: !653)
!737 = !DILocation(line: 218, column: 30, scope: !653)
!738 = !DILocation(line: 219, column: 1, scope: !653)
!739 = distinct !DISubprogram(name: "PowerOpsRunScript", scope: !107, file: !107, line: 360, type: !740, isLocal: true, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !171)
!740 = !DISubroutineType(types: !741)
!741 = !{!100, !216, !129}
!742 = !DILocalVariable(name: "state", arg: 1, scope: !739, file: !107, line: 360, type: !216)
!743 = !DILocation(line: 360, column: 33, scope: !739)
!744 = !DILocalVariable(name: "script", arg: 2, scope: !739, file: !107, line: 361, type: !129)
!745 = !DILocation(line: 361, column: 26, scope: !739)
!746 = !DILocalVariable(name: "argv", scope: !739, file: !107, line: 363, type: !747)
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 128, align: 64, elements: !187)
!748 = !DILocation(line: 363, column: 11, scope: !739)
!749 = !DILocalVariable(name: "watch", scope: !739, file: !107, line: 364, type: !750)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64, align: 64)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !96, line: 64, baseType: !752)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !96, line: 171, size: 768, align: 64, elements: !753)
!753 = !{!754, !755, !771, !800, !801, !805, !806, !807, !808, !816, !817, !818, !819}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !752, file: !96, line: 174, baseType: !103, size: 64, align: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !752, file: !96, line: 175, baseType: !756, size: 64, align: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64, align: 64)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !96, line: 77, baseType: !758)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !96, line: 196, size: 192, align: 64, elements: !759)
!759 = !{!760, !764, !765}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !758, file: !96, line: 198, baseType: !761, size: 64, align: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64, align: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{null, !103}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !758, file: !96, line: 199, baseType: !761, size: 64, align: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !758, file: !96, line: 200, baseType: !766, size: 64, align: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64, align: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !103, !750, !769, !770}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !752, file: !96, line: 177, baseType: !772, size: 64, align: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64, align: 64)
!773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !96, line: 130, baseType: !775)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !96, line: 214, size: 384, align: 64, elements: !776)
!776 = !{!777, !782, !786, !790, !794, !795}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !775, file: !96, line: 216, baseType: !778, size: 64, align: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64, align: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!100, !750, !781}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !775, file: !96, line: 218, baseType: !783, size: 64, align: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64, align: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!100, !750}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !775, file: !96, line: 219, baseType: !787, size: 64, align: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64, align: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!100, !750, !95, !103}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !775, file: !96, line: 222, baseType: !791, size: 64, align: 64, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64, align: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !750}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !775, file: !96, line: 226, baseType: !95, size: 64, align: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !775, file: !96, line: 227, baseType: !796, size: 64, align: 64, offset: 320)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !96, line: 212, baseType: !797)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64, align: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{null}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !752, file: !96, line: 178, baseType: !132, size: 32, align: 32, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !752, file: !96, line: 180, baseType: !802, size: 64, align: 64, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64, align: 64)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !96, line: 48, baseType: !804)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !96, line: 48, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !752, file: !96, line: 182, baseType: !102, size: 32, align: 32, offset: 320)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !752, file: !96, line: 183, baseType: !132, size: 32, align: 32, offset: 352)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !752, file: !96, line: 184, baseType: !132, size: 32, align: 32, offset: 384)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !752, file: !96, line: 186, baseType: !809, size: 64, align: 64, offset: 448)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64, align: 64)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !811, line: 37, baseType: !812)
!811 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/open-vm-tools/line1466")
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !811, line: 39, size: 128, align: 64, elements: !813)
!813 = !{!814, !815}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !812, file: !811, line: 41, baseType: !103, size: 64, align: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !812, file: !811, line: 42, baseType: !809, size: 64, align: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !752, file: !96, line: 188, baseType: !750, size: 64, align: 64, offset: 512)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !752, file: !96, line: 189, baseType: !750, size: 64, align: 64, offset: 576)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !752, file: !96, line: 191, baseType: !93, size: 64, align: 64, offset: 640)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !752, file: !96, line: 193, baseType: !820, size: 64, align: 64, offset: 704)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64, align: 64)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !96, line: 65, baseType: !822)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !96, line: 65, flags: DIFlagFwdDecl)
!823 = !DILocation(line: 364, column: 13, scope: !739)
!824 = !DILocalVariable(name: "err", scope: !739, file: !107, line: 365, type: !825)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64, align: 64)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !827, line: 42, baseType: !828)
!827 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/open-vm-tools/line1466")
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !827, line: 44, size: 128, align: 64, elements: !829)
!829 = !{!830, !834, !835}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !828, file: !827, line: 46, baseType: !831, size: 32, align: 32)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !832, line: 36, baseType: !833)
!832 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/open-vm-tools/line1466")
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !90, line: 45, baseType: !133)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !828, file: !827, line: 47, baseType: !102, size: 32, align: 32, offset: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !828, file: !827, line: 48, baseType: !129, size: 64, align: 64, offset: 64)
!836 = !DILocation(line: 365, column: 12, scope: !739)
!837 = !DILocation(line: 367, column: 33, scope: !739)
!838 = !DILocation(line: 367, column: 14, scope: !739)
!839 = !DILocation(line: 367, column: 4, scope: !739)
!840 = !DILocation(line: 367, column: 12, scope: !739)
!841 = !DILocation(line: 368, column: 8, scope: !842)
!842 = distinct !DILexicalBlock(scope: !739, file: !107, line: 368, column: 8)
!843 = !DILocation(line: 368, column: 12, scope: !842)
!844 = !DILocation(line: 368, column: 8, scope: !739)
!845 = !DILocation(line: 369, column: 71, scope: !846)
!846 = distinct !DILexicalBlock(scope: !842, file: !107, line: 368, column: 20)
!847 = !DILocation(line: 369, column: 76, scope: !846)
!848 = !DILocation(line: 369, column: 7, scope: !846)
!849 = !DILocation(line: 370, column: 7, scope: !846)
!850 = !DILocation(line: 375, column: 26, scope: !846)
!851 = !DILocation(line: 375, column: 17, scope: !846)
!852 = !DILocation(line: 375, column: 7, scope: !846)
!853 = !DILocation(line: 375, column: 15, scope: !846)
!854 = !DILocation(line: 376, column: 4, scope: !846)
!855 = !DILocation(line: 377, column: 4, scope: !739)
!856 = !DILocation(line: 377, column: 12, scope: !739)
!857 = !DILocation(line: 379, column: 72, scope: !739)
!858 = !DILocation(line: 379, column: 4, scope: !739)
!859 = !DILocation(line: 381, column: 23, scope: !860)
!860 = distinct !DILexicalBlock(scope: !739, file: !107, line: 380, column: 8)
!861 = !DILocation(line: 388, column: 24, scope: !860)
!862 = !DILocation(line: 388, column: 31, scope: !860)
!863 = !DILocation(line: 380, column: 9, scope: !860)
!864 = !DILocation(line: 380, column: 8, scope: !739)
!865 = !DILocation(line: 390, column: 81, scope: !866)
!866 = distinct !DILexicalBlock(scope: !860, file: !107, line: 389, column: 30)
!867 = !DILocation(line: 390, column: 86, scope: !866)
!868 = !DILocation(line: 390, column: 10, scope: !866)
!869 = !DILocation(line: 391, column: 10, scope: !866)
!870 = !DILocation(line: 392, column: 17, scope: !866)
!871 = !DILocation(line: 392, column: 10, scope: !866)
!872 = !DILocation(line: 393, column: 10, scope: !866)
!873 = !DILocation(line: 397, column: 37, scope: !739)
!874 = !DILocation(line: 397, column: 44, scope: !739)
!875 = !DILocation(line: 397, column: 12, scope: !739)
!876 = !DILocation(line: 397, column: 10, scope: !739)
!877 = !DILocation(line: 398, column: 4, scope: !739)
!878 = distinct !{!878, !877}
!879 = !DILocalVariable(name: "__src", scope: !880, file: !107, line: 398, type: !750)
!880 = distinct !DILexicalBlock(scope: !739, file: !107, line: 398, column: 7)
!881 = !DILocation(line: 398, column: 18, scope: !880)
!882 = !DILocation(line: 398, column: 27, scope: !883)
!883 = !DILexicalBlockFile(scope: !880, file: !107, discriminator: 1)
!884 = !DILocation(line: 398, column: 18, scope: !883)
!885 = !DILocation(line: 398, column: 57, scope: !883)
!886 = !DILocation(line: 398, column: 105, scope: !883)
!887 = !DILocation(line: 398, column: 104, scope: !883)
!888 = !DILocation(line: 398, column: 35, scope: !883)
!889 = !DILocation(line: 398, column: 23, scope: !883)
!890 = !DILocation(line: 398, column: 55, scope: !883)
!891 = !DILocation(line: 398, column: 62, scope: !883)
!892 = !DILocation(line: 398, column: 68, scope: !883)
!893 = !DILocation(line: 398, column: 30, scope: !894)
!894 = !DILexicalBlockFile(scope: !883, file: !107, discriminator: 2)
!895 = !DILocation(line: 398, column: 7, scope: !896)
!896 = !DILexicalBlockFile(scope: !883, file: !107, discriminator: 3)
!897 = !DILocation(line: 398, column: 80, scope: !883)
!898 = !DILocation(line: 399, column: 19, scope: !739)
!899 = !DILocation(line: 399, column: 4, scope: !739)
!900 = !DILocation(line: 400, column: 11, scope: !739)
!901 = !DILocation(line: 400, column: 4, scope: !739)
!902 = !DILocation(line: 401, column: 4, scope: !739)
!903 = !DILocation(line: 402, column: 1, scope: !739)
!904 = distinct !DISubprogram(name: "PowerOpsScriptCallback", scope: !107, file: !107, line: 319, type: !905, isLocal: true, isDefinition: true, scopeLine: 322, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !171)
!905 = !DISubroutineType(types: !906)
!906 = !{!100, !89, !102, !103}
!907 = !DILocalVariable(name: "pid", arg: 1, scope: !904, file: !107, line: 319, type: !89)
!908 = !DILocation(line: 319, column: 29, scope: !904)
!909 = !DILocalVariable(name: "exitStatus", arg: 2, scope: !904, file: !107, line: 320, type: !102)
!910 = !DILocation(line: 320, column: 29, scope: !904)
!911 = !DILocalVariable(name: "_state", arg: 3, scope: !904, file: !107, line: 321, type: !103)
!912 = !DILocation(line: 321, column: 33, scope: !904)
!913 = !DILocalVariable(name: "state", scope: !904, file: !107, line: 323, type: !216)
!914 = !DILocation(line: 323, column: 18, scope: !904)
!915 = !DILocation(line: 323, column: 26, scope: !904)
!916 = !DILocalVariable(name: "success", scope: !904, file: !107, line: 324, type: !100)
!917 = !DILocation(line: 324, column: 13, scope: !904)
!918 = !DILocation(line: 324, column: 23, scope: !904)
!919 = !DILocation(line: 324, column: 34, scope: !904)
!920 = !DILocation(line: 328, column: 27, scope: !921)
!921 = distinct !DILexicalBlock(scope: !904, file: !107, line: 328, column: 7)
!922 = !DILocation(line: 328, column: 7, scope: !921)
!923 = !DILocation(line: 328, column: 12, scope: !921)
!924 = !DILocation(line: 328, column: 19, scope: !921)
!925 = !DILocation(line: 328, column: 7, scope: !904)
!926 = !DILocation(line: 329, column: 26, scope: !927)
!927 = distinct !DILexicalBlock(scope: !921, file: !107, line: 328, column: 30)
!928 = !DILocation(line: 329, column: 6, scope: !927)
!929 = !DILocation(line: 329, column: 11, scope: !927)
!930 = !DILocation(line: 329, column: 18, scope: !927)
!931 = !DILocation(line: 329, column: 28, scope: !927)
!932 = !DILocation(line: 329, column: 8, scope: !927)
!933 = !DILocation(line: 329, column: 7, scope: !927)
!934 = !DILocation(line: 331, column: 4, scope: !927)
!935 = !DILocation(line: 331, column: 34, scope: !936)
!936 = !DILexicalBlockFile(scope: !937, file: !107, discriminator: 1)
!937 = distinct !DILexicalBlock(scope: !921, file: !107, line: 331, column: 14)
!938 = !DILocation(line: 331, column: 14, scope: !936)
!939 = !DILocation(line: 331, column: 19, scope: !936)
!940 = !DILocation(line: 331, column: 26, scope: !936)
!941 = !DILocation(line: 331, column: 16, scope: !936)
!942 = !DILocation(line: 331, column: 39, scope: !936)
!943 = !DILocation(line: 331, column: 45, scope: !936)
!944 = !DILocation(line: 332, column: 26, scope: !945)
!945 = distinct !DILexicalBlock(scope: !937, file: !107, line: 331, column: 39)
!946 = !DILocation(line: 332, column: 6, scope: !945)
!947 = !DILocation(line: 332, column: 11, scope: !945)
!948 = !DILocation(line: 332, column: 18, scope: !945)
!949 = !DILocation(line: 332, column: 8, scope: !945)
!950 = !DILocation(line: 332, column: 7, scope: !945)
!951 = !DILocation(line: 334, column: 4, scope: !945)
!952 = !DILocation(line: 334, column: 34, scope: !953)
!953 = !DILexicalBlockFile(scope: !954, file: !107, discriminator: 1)
!954 = distinct !DILexicalBlock(scope: !937, file: !107, line: 334, column: 14)
!955 = !DILocation(line: 334, column: 14, scope: !953)
!956 = !DILocation(line: 334, column: 19, scope: !953)
!957 = !DILocation(line: 334, column: 26, scope: !953)
!958 = !DILocation(line: 335, column: 26, scope: !959)
!959 = distinct !DILexicalBlock(scope: !954, file: !107, line: 334, column: 38)
!960 = !DILocation(line: 335, column: 6, scope: !959)
!961 = !DILocation(line: 335, column: 11, scope: !959)
!962 = !DILocation(line: 335, column: 18, scope: !959)
!963 = !DILocation(line: 335, column: 28, scope: !959)
!964 = !DILocation(line: 335, column: 8, scope: !959)
!965 = !DILocation(line: 335, column: 7, scope: !959)
!966 = !DILocation(line: 337, column: 4, scope: !959)
!967 = !DILocation(line: 338, column: 89, scope: !968)
!968 = distinct !DILexicalBlock(scope: !954, file: !107, line: 337, column: 11)
!969 = !DILocation(line: 338, column: 101, scope: !968)
!970 = !DILocation(line: 338, column: 7, scope: !968)
!971 = !DILocation(line: 340, column: 28, scope: !904)
!972 = !DILocation(line: 340, column: 36, scope: !904)
!973 = !DILocation(line: 340, column: 4, scope: !904)
!974 = !DILocation(line: 341, column: 22, scope: !904)
!975 = !DILocation(line: 341, column: 29, scope: !904)
!976 = !DILocation(line: 341, column: 4, scope: !904)
!977 = !DILocation(line: 342, column: 4, scope: !904)
!978 = !DILocation(line: 342, column: 11, scope: !904)
!979 = !DILocation(line: 342, column: 15, scope: !904)
!980 = !DILocation(line: 343, column: 4, scope: !904)
