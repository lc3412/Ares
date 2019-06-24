; ModuleID = './vmtoolsd-toolsRpc.o.i'
source_filename = "./vmtoolsd-toolsRpc.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RpcChannelCallback = type { i8*, i32 (%struct.RpcInData*)*, i8*, i8*, i8*, i64 }
%struct.RpcInData = type { i8*, i8*, i64, i8*, i64, i32, i8*, i8* }
%struct.ToolsServiceState = type { i8*, i8*, i64, i32, i32, i32, i8*, i8*, %struct._GPtrArray*, i8*, %struct._GModule*, i8*, %struct.RpcDebugLibData*, %struct.ToolsAppCtx, %struct._GArray*, i32, i32 }
%struct._GPtrArray = type { i8**, i32 }
%struct._GModule = type opaque
%struct.RpcDebugLibData = type { %struct._RpcChannel* (%struct.ToolsAppCtx*, %struct.RpcDebugLibData*)*, i32 (%struct.ToolsAppCtx*, i8*, i8*, %struct.RpcDebugLibData*)*, %struct.RpcDebugPlugin* }
%struct._RpcChannel = type opaque
%struct.RpcDebugPlugin = type { %struct.RpcDebugRecvMapping*, i32 (i8*, i64, i8**, i64*)*, i32 (%struct.RpcDebugMsgMapping*)*, void (%struct.ToolsAppCtx*, %struct.RpcDebugPlugin*)*, %struct.ToolsPluginData* }
%struct.RpcDebugRecvMapping = type { i8*, i32 (i8*, i64, i8**, i64*)*, i8*, i64 }
%struct.RpcDebugMsgMapping = type { i8*, i64, i32 (%struct.RpcInData*, i32)*, i32 }
%struct.ToolsPluginData = type { i8*, %struct._GArray*, i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)*, i8* }
%struct.ToolsAppCtx = type { i32, i8*, i32, i32, %struct._GMainLoop*, %struct._RpcChannel*, %struct._GKeyFile*, i32, i32, i8**, i8* }
%struct._GMainLoop = type opaque
%struct._GKeyFile = type opaque
%struct._GArray = type { i8*, i32 }
%struct._GMainContext = type opaque
%struct._GError = type { i32, i32, i8* }
%struct.ToolsAppCapability = type { i32, i8*, i32, i32 }

@ToolsCore_InitRpc.rpcs = internal global [2 x %struct.RpcChannelCallback] [%struct.RpcChannelCallback { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 (%struct.RpcInData*)* @ToolsCoreRpcCapReg, i8* null, i8* null, i8* null, i64 0 }, %struct.RpcChannelCallback { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.RpcInData*)* @ToolsCoreRpcSetOption, i8* null, i8* null, i8* null, i64 0 }], align 16
@.str = private unnamed_addr constant [22 x i8] c"Capabilities_Register\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Set_Option\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"vmtoolsd\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"The %s service needs to run inside a virtual machine.\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Trying to start RPC channel for invalid %s container.\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"tools.capability.%s %u\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Error sending capability %s: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"tools.capability.%s \00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"tools.capability.features\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"%s %d=%u\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Invalid capability type: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Error sending new-style capabilities: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"No RPC channel; skipping reference to vSocket family.\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Couldn't get vSocket family.\0A\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"Saving reference to vSocket device=%d, family=%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"NOT_IMPLEMENTED %s:%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"toolsRpc.c\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c"Releasing reference to vSocket device=%d, family=%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"tcs_capabilities\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"tools.capability.guest_conf_directory %s\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"Unable to register guest conf directory capability.\0A\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"vmtools\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"hide-tools-version\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"tools.set.versiontype %u %u\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"disable-tools-version\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"gerror->code = %d when checking for %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"tools.set.version %u\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"Error setting tools version: %s.\0A\00", align 1
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"Setting option '%s' to '%s'.\0A\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"tcs_set_option\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"Unknown or invalid option\00", align 1
@ToolsCoreCheckReset.version_sent = internal global i32 0, align 4
@.str.34 = private unnamed_addr constant [31 x i8] c"vmx.capability.unified_loop %s\00", align 1
@.str.35 = private unnamed_addr constant [101 x i8] c"VMX doesn't support the Tools unified loop.\0ASome functionality (like setting options) may not work.\0A\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"log %s: Version: %s (%s)\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"10.3.0.5330\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"build-8931395\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"tcs_reset\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"/dev/vsock\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"/vmfs/devices/char/vsock/vsock\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ToolsCore_InitRpc(%struct.ToolsServiceState*) #0 !dbg !108 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ToolsServiceState*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GMainContext*, align 8
  %7 = alloca %struct.RpcChannelCallback*, align 8
  store %struct.ToolsServiceState* %0, %struct.ToolsServiceState** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %3, metadata !305, metadata !306), !dbg !307
  call void @llvm.dbg.declare(metadata i64* %4, metadata !308, metadata !306), !dbg !309
  call void @llvm.dbg.declare(metadata i8** %5, metadata !310, metadata !306), !dbg !311
  call void @llvm.dbg.declare(metadata %struct._GMainContext** %6, metadata !312, metadata !306), !dbg !316
  %8 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !317
  %9 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %8, i32 0, i32 13, !dbg !318
  %10 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %9, i32 0, i32 4, !dbg !319
  %11 = load %struct._GMainLoop*, %struct._GMainLoop** %10, align 8, !dbg !319
  %12 = call %struct._GMainContext* @g_main_loop_get_context(%struct._GMainLoop* %11), !dbg !320
  store %struct._GMainContext* %12, %struct._GMainContext** %6, align 8, !dbg !316
  %13 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !321
  %14 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %13, i32 0, i32 11, !dbg !323
  %15 = load i8*, i8** %14, align 8, !dbg !323
  %16 = icmp ne i8* %15, null, !dbg !324
  br i1 %16, label %17, label %32, !dbg !325

; <label>:17:                                     ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8** %5, align 8, !dbg !326
  %18 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !328
  %19 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %18, i32 0, i32 12, !dbg !329
  %20 = load %struct.RpcDebugLibData*, %struct.RpcDebugLibData** %19, align 8, !dbg !329
  %21 = getelementptr inbounds %struct.RpcDebugLibData, %struct.RpcDebugLibData* %20, i32 0, i32 0, !dbg !330
  %22 = load %struct._RpcChannel* (%struct.ToolsAppCtx*, %struct.RpcDebugLibData*)*, %struct._RpcChannel* (%struct.ToolsAppCtx*, %struct.RpcDebugLibData*)** %21, align 8, !dbg !330
  %23 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !331
  %24 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %23, i32 0, i32 13, !dbg !332
  %25 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !333
  %26 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %25, i32 0, i32 12, !dbg !334
  %27 = load %struct.RpcDebugLibData*, %struct.RpcDebugLibData** %26, align 8, !dbg !334
  %28 = call %struct._RpcChannel* %22(%struct.ToolsAppCtx* %24, %struct.RpcDebugLibData* %27), !dbg !328
  %29 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !335
  %30 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %29, i32 0, i32 13, !dbg !336
  %31 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %30, i32 0, i32 5, !dbg !337
  store %struct._RpcChannel* %28, %struct._RpcChannel** %31, align 8, !dbg !338
  br label %60, !dbg !339

; <label>:32:                                     ; preds = %1
  %33 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !340
  %34 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %33, i32 0, i32 13, !dbg !343
  %35 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %34, i32 0, i32 2, !dbg !344
  %36 = load i32, i32* %35, align 8, !dbg !344
  %37 = icmp ne i32 %36, 0, !dbg !340
  br i1 %37, label %45, label %38, !dbg !345

; <label>:38:                                     ; preds = %32
  %39 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !346
  %40 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %39, i32 0, i32 0, !dbg !348
  %41 = load i8*, i8** %40, align 8, !dbg !348
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i32 0, i32 0), i8* %41), !dbg !349
  %42 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !350
  %43 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %42, i32 0, i32 13, !dbg !351
  %44 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %43, i32 0, i32 5, !dbg !352
  store %struct._RpcChannel* null, %struct._RpcChannel** %44, align 8, !dbg !353
  br label %50, !dbg !354

; <label>:45:                                     ; preds = %32
  %46 = call %struct._RpcChannel* @RpcChannel_New(), !dbg !355
  %47 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !357
  %48 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %47, i32 0, i32 13, !dbg !358
  %49 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %48, i32 0, i32 5, !dbg !359
  store %struct._RpcChannel* %46, %struct._RpcChannel** %49, align 8, !dbg !360
  br label %50

; <label>:50:                                     ; preds = %45, %38
  %51 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !361
  %52 = call i8* @ToolsCore_GetTcloName(%struct.ToolsServiceState* %51), !dbg !362
  store i8* %52, i8** %5, align 8, !dbg !363
  %53 = load i8*, i8** %5, align 8, !dbg !364
  %54 = icmp eq i8* %53, null, !dbg !366
  br i1 %54, label %55, label %59, !dbg !367

; <label>:55:                                     ; preds = %50
  %56 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !368
  %57 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %56, i32 0, i32 0, !dbg !370
  %58 = load i8*, i8** %57, align 8, !dbg !370
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i32 0, i32 0), i8* %58), !dbg !371
  store i32 0, i32* %2, align 4, !dbg !372
  br label %98, !dbg !372

; <label>:59:                                     ; preds = %50
  br label %60

; <label>:60:                                     ; preds = %59, %17
  %61 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !373
  %62 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %61, i32 0, i32 13, !dbg !375
  %63 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %62, i32 0, i32 5, !dbg !376
  %64 = load %struct._RpcChannel*, %struct._RpcChannel** %63, align 8, !dbg !376
  %65 = icmp ne %struct._RpcChannel* %64, null, !dbg !373
  br i1 %65, label %66, label %97, !dbg !377

; <label>:66:                                     ; preds = %60
  %67 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !378
  %68 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %67, i32 0, i32 13, !dbg !380
  %69 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %68, i32 0, i32 5, !dbg !381
  %70 = load %struct._RpcChannel*, %struct._RpcChannel** %69, align 8, !dbg !381
  %71 = load i8*, i8** %5, align 8, !dbg !382
  %72 = load %struct._GMainContext*, %struct._GMainContext** %6, align 8, !dbg !383
  %73 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !384
  %74 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %73, i32 0, i32 13, !dbg !385
  %75 = bitcast %struct.ToolsAppCtx* %74 to i8*, !dbg !386
  %76 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !387
  %77 = bitcast %struct.ToolsServiceState* %76 to i8*, !dbg !387
  call void @RpcChannel_Setup(%struct._RpcChannel* %70, i8* %71, %struct._GMainContext* %72, i8* %75, void (%struct._RpcChannel*, i32, i8*)* @ToolsCoreCheckReset, i8* %77), !dbg !388
  store i64 0, i64* %4, align 8, !dbg !389
  br label %78, !dbg !391

; <label>:78:                                     ; preds = %93, %66
  %79 = load i64, i64* %4, align 8, !dbg !392
  %80 = icmp ult i64 %79, 2, !dbg !395
  br i1 %80, label %81, label %96, !dbg !396

; <label>:81:                                     ; preds = %78
  call void @llvm.dbg.declare(metadata %struct.RpcChannelCallback** %7, metadata !397, metadata !306), !dbg !400
  %82 = load i64, i64* %4, align 8, !dbg !401
  %83 = getelementptr inbounds [2 x %struct.RpcChannelCallback], [2 x %struct.RpcChannelCallback]* @ToolsCore_InitRpc.rpcs, i64 0, i64 %82, !dbg !402
  store %struct.RpcChannelCallback* %83, %struct.RpcChannelCallback** %7, align 8, !dbg !400
  %84 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !403
  %85 = bitcast %struct.ToolsServiceState* %84 to i8*, !dbg !403
  %86 = load %struct.RpcChannelCallback*, %struct.RpcChannelCallback** %7, align 8, !dbg !404
  %87 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %86, i32 0, i32 2, !dbg !405
  store i8* %85, i8** %87, align 8, !dbg !406
  %88 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !407
  %89 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %88, i32 0, i32 13, !dbg !408
  %90 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %89, i32 0, i32 5, !dbg !409
  %91 = load %struct._RpcChannel*, %struct._RpcChannel** %90, align 8, !dbg !409
  %92 = load %struct.RpcChannelCallback*, %struct.RpcChannelCallback** %7, align 8, !dbg !410
  call void @RpcChannel_RegisterCallback(%struct._RpcChannel* %91, %struct.RpcChannelCallback* %92), !dbg !411
  br label %93, !dbg !412

; <label>:93:                                     ; preds = %81
  %94 = load i64, i64* %4, align 8, !dbg !413
  %95 = add i64 %94, 1, !dbg !413
  store i64 %95, i64* %4, align 8, !dbg !413
  br label %78, !dbg !415, !llvm.loop !416

; <label>:96:                                     ; preds = %78
  br label %97, !dbg !418

; <label>:97:                                     ; preds = %96, %60
  store i32 1, i32* %2, align 4, !dbg !419
  br label %98, !dbg !419

; <label>:98:                                     ; preds = %97, %55
  %99 = load i32, i32* %2, align 4, !dbg !420
  ret i32 %99, !dbg !420
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i32 @ToolsCoreRpcCapReg(%struct.RpcInData*) #0 !dbg !421 {
  %2 = alloca %struct.RpcInData*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._GArray*, align 8
  %6 = alloca %struct.ToolsServiceState*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct._GError*, align 8
  %14 = alloca i32, align 4
  store %struct.RpcInData* %0, %struct.RpcInData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %2, metadata !422, metadata !306), !dbg !423
  call void @llvm.dbg.declare(metadata i8** %3, metadata !424, metadata !306), !dbg !425
  %15 = call i8* @GuestApp_GetConfPath(), !dbg !426
  store i8* %15, i8** %3, align 8, !dbg !425
  call void @llvm.dbg.declare(metadata i8** %4, metadata !427, metadata !306), !dbg !428
  call void @llvm.dbg.declare(metadata %struct._GArray** %5, metadata !429, metadata !306), !dbg !430
  store %struct._GArray* null, %struct._GArray** %5, align 8, !dbg !430
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %6, metadata !431, metadata !306), !dbg !432
  %16 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !433
  %17 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %16, i32 0, i32 7, !dbg !434
  %18 = load i8*, i8** %17, align 8, !dbg !434
  %19 = bitcast i8* %18 to %struct.ToolsServiceState*, !dbg !433
  store %struct.ToolsServiceState* %19, %struct.ToolsServiceState** %6, align 8, !dbg !432
  %20 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %6, align 8, !dbg !435
  %21 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %20, i32 0, i32 13, !dbg !436
  %22 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %21, i32 0, i32 10, !dbg !437
  %23 = load i8*, i8** %22, align 8, !dbg !437
  %24 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %6, align 8, !dbg !438
  %25 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %24, i32 0, i32 13, !dbg !439
  call void (i8*, i8*, ...) @g_signal_emit_by_name(i8* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), %struct.ToolsAppCtx* %25, i32 1, %struct._GArray** %5), !dbg !440
  %26 = load %struct._GArray*, %struct._GArray** %5, align 8, !dbg !441
  %27 = icmp ne %struct._GArray* %26, null, !dbg !443
  br i1 %27, label %28, label %36, !dbg !444

; <label>:28:                                     ; preds = %1
  %29 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %6, align 8, !dbg !445
  %30 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %29, i32 0, i32 13, !dbg !447
  %31 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %30, i32 0, i32 5, !dbg !448
  %32 = load %struct._RpcChannel*, %struct._RpcChannel** %31, align 8, !dbg !448
  %33 = load %struct._GArray*, %struct._GArray** %5, align 8, !dbg !449
  call void @ToolsCore_SetCapabilities(%struct._RpcChannel* %32, %struct._GArray* %33, i32 1), !dbg !450
  %34 = load %struct._GArray*, %struct._GArray** %5, align 8, !dbg !451
  %35 = call i8* @g_array_free(%struct._GArray* %34, i32 1), !dbg !452
  br label %36, !dbg !453

; <label>:36:                                     ; preds = %28, %1
  %37 = load i8*, i8** %3, align 8, !dbg !454
  %38 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i32 0, i32 0), i8* %37), !dbg !455
  store i8* %38, i8** %4, align 8, !dbg !456
  %39 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %6, align 8, !dbg !457
  %40 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %39, i32 0, i32 13, !dbg !459
  %41 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %40, i32 0, i32 5, !dbg !460
  %42 = load %struct._RpcChannel*, %struct._RpcChannel** %41, align 8, !dbg !460
  %43 = load i8*, i8** %4, align 8, !dbg !461
  %44 = load i8*, i8** %4, align 8, !dbg !462
  %45 = call i64 @strlen(i8* %44) #7, !dbg !463
  %46 = add i64 %45, 1, !dbg !464
  %47 = call i32 @RpcChannel_Send(%struct._RpcChannel* %42, i8* %43, i64 %46, i8** null, i64* null), !dbg !465
  %48 = icmp ne i32 %47, 0, !dbg !467
  br i1 %48, label %50, label %49, !dbg !468

; <label>:49:                                     ; preds = %36
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i32 0, i32 0)), !dbg !469
  br label %50, !dbg !471

; <label>:50:                                     ; preds = %49, %36
  %51 = load i8*, i8** %4, align 8, !dbg !472
  call void @g_free(i8* %51), !dbg !473
  store i8* null, i8** %4, align 8, !dbg !474
  %52 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %6, align 8, !dbg !475
  %53 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %52, i32 0, i32 4, !dbg !477
  %54 = load i32, i32* %53, align 4, !dbg !477
  %55 = icmp ne i32 %54, 0, !dbg !475
  br i1 %55, label %56, label %117, !dbg !478

; <label>:56:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata i32* %7, metadata !479, metadata !306), !dbg !485
  call void @llvm.dbg.declare(metadata i32* %8, metadata !486, metadata !306), !dbg !487
  store i32 0, i32* %8, align 4, !dbg !487
  call void @llvm.dbg.declare(metadata i8** %9, metadata !488, metadata !306), !dbg !489
  store i8* null, i8** %9, align 8, !dbg !489
  call void @llvm.dbg.declare(metadata i64* %10, metadata !490, metadata !306), !dbg !491
  call void @llvm.dbg.declare(metadata i8** %11, metadata !492, metadata !306), !dbg !493
  call void @llvm.dbg.declare(metadata i32* %12, metadata !494, metadata !306), !dbg !495
  %57 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %6, align 8, !dbg !496
  %58 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %57, i32 0, i32 13, !dbg !497
  %59 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %58, i32 0, i32 6, !dbg !498
  %60 = load %struct._GKeyFile*, %struct._GKeyFile** %59, align 8, !dbg !498
  %61 = call i32 @g_key_file_get_boolean(%struct._GKeyFile* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0), %struct._GError** null), !dbg !499
  store i32 %61, i32* %12, align 4, !dbg !495
  store i32 4, i32* %8, align 4, !dbg !500
  %62 = load i32, i32* %12, align 4, !dbg !501
  %63 = icmp ne i32 %62, 0, !dbg !501
  %64 = select i1 %63, i32 2147483647, i32 10336, !dbg !501
  store i32 %64, i32* %7, align 4, !dbg !502
  %65 = load i32, i32* %7, align 4, !dbg !503
  %66 = load i32, i32* %8, align 4, !dbg !504
  %67 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i32 0, i32 0), i32 %65, i32 %66), !dbg !505
  store i8* %67, i8** %11, align 8, !dbg !506
  %68 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %6, align 8, !dbg !507
  %69 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %68, i32 0, i32 13, !dbg !509
  %70 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %69, i32 0, i32 5, !dbg !510
  %71 = load %struct._RpcChannel*, %struct._RpcChannel** %70, align 8, !dbg !510
  %72 = load i8*, i8** %11, align 8, !dbg !511
  %73 = load i8*, i8** %11, align 8, !dbg !512
  %74 = call i64 @strlen(i8* %73) #7, !dbg !513
  %75 = add i64 %74, 1, !dbg !514
  %76 = call i32 @RpcChannel_Send(%struct._RpcChannel* %71, i8* %72, i64 %75, i8** %9, i64* %10), !dbg !515
  %77 = icmp ne i32 %76, 0, !dbg !517
  br i1 %77, label %114, label %78, !dbg !518

; <label>:78:                                     ; preds = %56
  call void @llvm.dbg.declare(metadata %struct._GError** %13, metadata !519, metadata !306), !dbg !533
  store %struct._GError* null, %struct._GError** %13, align 8, !dbg !533
  call void @llvm.dbg.declare(metadata i32* %14, metadata !534, metadata !306), !dbg !535
  %79 = load i8*, i8** %9, align 8, !dbg !536
  call void @vm_free(i8* %79), !dbg !537
  %80 = load i8*, i8** %11, align 8, !dbg !538
  call void @g_free(i8* %80), !dbg !539
  %81 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %6, align 8, !dbg !540
  %82 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %81, i32 0, i32 13, !dbg !541
  %83 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %82, i32 0, i32 6, !dbg !542
  %84 = load %struct._GKeyFile*, %struct._GKeyFile** %83, align 8, !dbg !542
  %85 = call i32 @g_key_file_get_boolean(%struct._GKeyFile* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0), %struct._GError** %13), !dbg !543
  store i32 %85, i32* %14, align 4, !dbg !544
  %86 = load i32, i32* %8, align 4, !dbg !545
  %87 = icmp eq i32 %86, 4, !dbg !547
  br i1 %87, label %88, label %95, !dbg !548

; <label>:88:                                     ; preds = %78
  %89 = load %struct._GError*, %struct._GError** %13, align 8, !dbg !549
  %90 = icmp ne %struct._GError* %89, null, !dbg !551
  br i1 %90, label %91, label %95, !dbg !552

; <label>:91:                                     ; preds = %88
  %92 = load %struct._GError*, %struct._GError** %13, align 8, !dbg !553
  %93 = getelementptr inbounds %struct._GError, %struct._GError* %92, i32 0, i32 1, !dbg !555
  %94 = load i32, i32* %93, align 4, !dbg !555
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i32 0, i32 0), i32 %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0)), !dbg !556
  call void @g_clear_error(%struct._GError** %13), !dbg !557
  store i32 1, i32* %14, align 4, !dbg !558
  br label %95, !dbg !559

; <label>:95:                                     ; preds = %91, %88, %78
  %96 = load i32, i32* %14, align 4, !dbg !560
  %97 = icmp ne i32 %96, 0, !dbg !560
  %98 = select i1 %97, i32 2147483647, i32 10336, !dbg !560
  store i32 %98, i32* %7, align 4, !dbg !561
  %99 = load i32, i32* %7, align 4, !dbg !562
  %100 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), i32 %99), !dbg !563
  store i8* %100, i8** %11, align 8, !dbg !564
  %101 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %6, align 8, !dbg !565
  %102 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %101, i32 0, i32 13, !dbg !567
  %103 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %102, i32 0, i32 5, !dbg !568
  %104 = load %struct._RpcChannel*, %struct._RpcChannel** %103, align 8, !dbg !568
  %105 = load i8*, i8** %11, align 8, !dbg !569
  %106 = load i8*, i8** %11, align 8, !dbg !570
  %107 = call i64 @strlen(i8* %106) #7, !dbg !571
  %108 = add i64 %107, 1, !dbg !572
  %109 = call i32 @RpcChannel_Send(%struct._RpcChannel* %104, i8* %105, i64 %108, i8** %9, i64* %10), !dbg !573
  %110 = icmp ne i32 %109, 0, !dbg !575
  br i1 %110, label %113, label %111, !dbg !576

; <label>:111:                                    ; preds = %95
  %112 = load i8*, i8** %9, align 8, !dbg !577
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i32 0, i32 0), i8* %112), !dbg !579
  br label %113, !dbg !580

; <label>:113:                                    ; preds = %111, %95
  br label %114, !dbg !581

; <label>:114:                                    ; preds = %113, %56
  %115 = load i8*, i8** %9, align 8, !dbg !582
  call void @vm_free(i8* %115), !dbg !583
  %116 = load i8*, i8** %11, align 8, !dbg !584
  call void @g_free(i8* %116), !dbg !585
  br label %117, !dbg !586

; <label>:117:                                    ; preds = %114, %50
  %118 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %6, align 8, !dbg !587
  %119 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %118, i32 0, i32 5, !dbg !588
  store i32 1, i32* %119, align 8, !dbg !589
  %120 = load i8*, i8** %3, align 8, !dbg !590
  call void @free(i8* %120) #8, !dbg !591
  %121 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !592
  %122 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %121, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i32 0, i32 0), i32 1), !dbg !593
  ret i32 %122, !dbg !594
}

; Function Attrs: nounwind uwtable
define internal i32 @ToolsCoreRpcSetOption(%struct.RpcInData*) #0 !dbg !595 {
  %2 = alloca %struct.RpcInData*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ToolsServiceState*, align 8
  store %struct.RpcInData* %0, %struct.RpcInData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %2, metadata !596, metadata !306), !dbg !597
  call void @llvm.dbg.declare(metadata i32* %3, metadata !598, metadata !306), !dbg !599
  store i32 0, i32* %3, align 4, !dbg !599
  call void @llvm.dbg.declare(metadata i8** %4, metadata !600, metadata !306), !dbg !601
  call void @llvm.dbg.declare(metadata i8** %5, metadata !602, metadata !306), !dbg !603
  call void @llvm.dbg.declare(metadata i32* %6, metadata !604, metadata !306), !dbg !605
  store i32 0, i32* %6, align 4, !dbg !605
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %7, metadata !606, metadata !306), !dbg !607
  %8 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !608
  %9 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %8, i32 0, i32 7, !dbg !609
  %10 = load i8*, i8** %9, align 8, !dbg !609
  %11 = bitcast i8* %10 to %struct.ToolsServiceState*, !dbg !608
  store %struct.ToolsServiceState* %11, %struct.ToolsServiceState** %7, align 8, !dbg !607
  %12 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !610
  %13 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %12, i32 0, i32 1, !dbg !611
  %14 = load i8*, i8** %13, align 8, !dbg !611
  %15 = call i8* @StrUtil_GetNextToken(i32* %6, i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0)), !dbg !612
  store i8* %15, i8** %4, align 8, !dbg !613
  %16 = load i32, i32* %6, align 4, !dbg !614
  %17 = add i32 %16, 1, !dbg !614
  store i32 %17, i32* %6, align 4, !dbg !614
  %18 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !615
  %19 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %18, i32 0, i32 1, !dbg !616
  %20 = load i8*, i8** %19, align 8, !dbg !616
  %21 = call i8* @StrUtil_GetNextToken(i32* %6, i8* %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i32 0, i32 0)), !dbg !617
  store i8* %21, i8** %5, align 8, !dbg !618
  %22 = load i8*, i8** %4, align 8, !dbg !619
  %23 = icmp ne i8* %22, null, !dbg !621
  br i1 %23, label %24, label %42, !dbg !622

; <label>:24:                                     ; preds = %1
  %25 = load i8*, i8** %5, align 8, !dbg !623
  %26 = icmp ne i8* %25, null, !dbg !625
  br i1 %26, label %27, label %42, !dbg !626

; <label>:27:                                     ; preds = %24
  %28 = load i8*, i8** %5, align 8, !dbg !627
  %29 = call i64 @strlen(i8* %28) #7, !dbg !629
  %30 = icmp ne i64 %29, 0, !dbg !630
  br i1 %30, label %31, label %42, !dbg !631

; <label>:31:                                     ; preds = %27
  %32 = load i8*, i8** %4, align 8, !dbg !632
  %33 = load i8*, i8** %5, align 8, !dbg !634
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i32 0, i32 0), i8* %32, i8* %33), !dbg !635
  %34 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %7, align 8, !dbg !636
  %35 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %34, i32 0, i32 13, !dbg !637
  %36 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %35, i32 0, i32 10, !dbg !638
  %37 = load i8*, i8** %36, align 8, !dbg !638
  %38 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %7, align 8, !dbg !639
  %39 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %38, i32 0, i32 13, !dbg !640
  %40 = load i8*, i8** %4, align 8, !dbg !641
  %41 = load i8*, i8** %5, align 8, !dbg !642
  call void (i8*, i8*, ...) @g_signal_emit_by_name(i8* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0), %struct.ToolsAppCtx* %39, i8* %40, i8* %41, i32* %3), !dbg !643
  br label %42, !dbg !644

; <label>:42:                                     ; preds = %31, %27, %24, %1
  %43 = load i8*, i8** %4, align 8, !dbg !645
  call void @vm_free(i8* %43), !dbg !646
  %44 = load i8*, i8** %5, align 8, !dbg !647
  call void @vm_free(i8* %44), !dbg !648
  %45 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !649
  %46 = load i32, i32* %3, align 4, !dbg !650
  %47 = icmp ne i32 %46, 0, !dbg !650
  %48 = select i1 %47, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0), !dbg !650
  %49 = load i32, i32* %3, align 4, !dbg !651
  %50 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %45, i8* %48, i32 %49), !dbg !652
  %51 = load i32, i32* %3, align 4, !dbg !653
  ret i32 %51, !dbg !654
}

declare %struct._GMainContext* @g_main_loop_get_context(%struct._GMainLoop*) #2

declare void @g_log(i8*, i32, i8*, ...) #2

declare %struct._RpcChannel* @RpcChannel_New() #2

declare i8* @ToolsCore_GetTcloName(%struct.ToolsServiceState*) #2

declare void @RpcChannel_Setup(%struct._RpcChannel*, i8*, %struct._GMainContext*, i8*, void (%struct._RpcChannel*, i32, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @ToolsCoreCheckReset(%struct._RpcChannel*, i32, i8*) #0 !dbg !299 {
  %4 = alloca %struct._RpcChannel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ToolsServiceState*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %4, metadata !655, metadata !306), !dbg !656
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !657, metadata !306), !dbg !658
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !659, metadata !306), !dbg !660
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %7, metadata !661, metadata !306), !dbg !662
  %10 = load i8*, i8** %6, align 8, !dbg !663
  %11 = bitcast i8* %10 to %struct.ToolsServiceState*, !dbg !663
  store %struct.ToolsServiceState* %11, %struct.ToolsServiceState** %7, align 8, !dbg !662
  %12 = load i32, i32* %5, align 4, !dbg !664
  %13 = icmp ne i32 %12, 0, !dbg !664
  br i1 %13, label %14, label %69, !dbg !666

; <label>:14:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata i8** %8, metadata !667, metadata !306), !dbg !669
  call void @llvm.dbg.declare(metadata i8** %9, metadata !670, metadata !306), !dbg !671
  %15 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %7, align 8, !dbg !672
  %16 = call i8* @ToolsCore_GetTcloName(%struct.ToolsServiceState* %15), !dbg !673
  store i8* %16, i8** %8, align 8, !dbg !674
  %17 = load i8*, i8** %8, align 8, !dbg !675
  %18 = icmp eq i8* %17, null, !dbg !677
  br i1 %18, label %19, label %23, !dbg !678

; <label>:19:                                     ; preds = %14
  %20 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %7, align 8, !dbg !679
  %21 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %20, i32 0, i32 0, !dbg !681
  %22 = load i8*, i8** %21, align 8, !dbg !681
  store i8* %22, i8** %8, align 8, !dbg !682
  br label %23, !dbg !683

; <label>:23:                                     ; preds = %19, %14
  %24 = load i8*, i8** %8, align 8, !dbg !684
  %25 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i32 0, i32 0), i8* %24), !dbg !685
  store i8* %25, i8** %9, align 8, !dbg !686
  %26 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %7, align 8, !dbg !687
  %27 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %26, i32 0, i32 13, !dbg !689
  %28 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %27, i32 0, i32 5, !dbg !690
  %29 = load %struct._RpcChannel*, %struct._RpcChannel** %28, align 8, !dbg !690
  %30 = load i8*, i8** %9, align 8, !dbg !691
  %31 = load i8*, i8** %9, align 8, !dbg !692
  %32 = call i64 @strlen(i8* %31) #7, !dbg !693
  %33 = add i64 %32, 1, !dbg !694
  %34 = call i32 @RpcChannel_Send(%struct._RpcChannel* %29, i8* %30, i64 %33, i8** null, i64* null), !dbg !695
  %35 = icmp ne i32 %34, 0, !dbg !697
  br i1 %35, label %37, label %36, !dbg !698

; <label>:36:                                     ; preds = %23
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.35, i32 0, i32 0)), !dbg !699
  br label %37, !dbg !701

; <label>:37:                                     ; preds = %36, %23
  %38 = load i8*, i8** %9, align 8, !dbg !702
  call void @g_free(i8* %38), !dbg !703
  %39 = load i32, i32* @ToolsCoreCheckReset.version_sent, align 4, !dbg !704
  %40 = icmp ne i32 %39, 0, !dbg !704
  br i1 %40, label %54, label %41, !dbg !706

; <label>:41:                                     ; preds = %37
  %42 = load i8*, i8** %8, align 8, !dbg !707
  %43 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i32 0, i32 0), i8* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0)), !dbg !709
  store i8* %43, i8** %9, align 8, !dbg !710
  %44 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %7, align 8, !dbg !711
  %45 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %44, i32 0, i32 13, !dbg !712
  %46 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %45, i32 0, i32 5, !dbg !713
  %47 = load %struct._RpcChannel*, %struct._RpcChannel** %46, align 8, !dbg !713
  %48 = load i8*, i8** %9, align 8, !dbg !714
  %49 = load i8*, i8** %9, align 8, !dbg !715
  %50 = call i64 @strlen(i8* %49) #7, !dbg !716
  %51 = add i64 %50, 1, !dbg !717
  %52 = call i32 @RpcChannel_Send(%struct._RpcChannel* %47, i8* %48, i64 %51, i8** null, i64* null), !dbg !718
  %53 = load i8*, i8** %9, align 8, !dbg !720
  call void @g_free(i8* %53), !dbg !721
  store i32 1, i32* @ToolsCoreCheckReset.version_sent, align 4, !dbg !722
  br label %54, !dbg !723

; <label>:54:                                     ; preds = %41, %37
  %55 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %7, align 8, !dbg !724
  %56 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %55, i32 0, i32 13, !dbg !725
  %57 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %56, i32 0, i32 10, !dbg !726
  %58 = load i8*, i8** %57, align 8, !dbg !726
  %59 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %7, align 8, !dbg !727
  %60 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %59, i32 0, i32 13, !dbg !728
  call void (i8*, i8*, ...) @g_signal_emit_by_name(i8* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), %struct.ToolsAppCtx* %60), !dbg !729
  %61 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %7, align 8, !dbg !730
  %62 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %61, i32 0, i32 4, !dbg !732
  %63 = load i32, i32* %62, align 4, !dbg !732
  %64 = icmp ne i32 %63, 0, !dbg !730
  br i1 %64, label %65, label %68, !dbg !733

; <label>:65:                                     ; preds = %54
  %66 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %7, align 8, !dbg !734
  call void @ToolsCore_ReleaseVsockFamily(%struct.ToolsServiceState* %66), !dbg !736
  %67 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %7, align 8, !dbg !737
  call void @ToolsCore_InitVsockFamily(%struct.ToolsServiceState* %67), !dbg !738
  br label %68, !dbg !739

; <label>:68:                                     ; preds = %65, %54
  br label %79, !dbg !740

; <label>:69:                                     ; preds = %3
  br label %70, !dbg !741, !llvm.loop !743

; <label>:70:                                     ; preds = %69
  %71 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %7, align 8, !dbg !744
  %72 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %71, i32 0, i32 13, !dbg !747
  %73 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %72, i32 0, i32 3, !dbg !748
  store i32 1, i32* %73, align 4, !dbg !749
  %74 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %7, align 8, !dbg !750
  %75 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %74, i32 0, i32 13, !dbg !751
  %76 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %75, i32 0, i32 4, !dbg !752
  %77 = load %struct._GMainLoop*, %struct._GMainLoop** %76, align 8, !dbg !752
  call void @g_main_loop_quit(%struct._GMainLoop* %77), !dbg !753
  br label %78, !dbg !754

; <label>:78:                                     ; preds = %70
  br label %79

; <label>:79:                                     ; preds = %78, %68
  ret void, !dbg !755
}

declare void @RpcChannel_RegisterCallback(%struct._RpcChannel*, %struct.RpcChannelCallback*) #2

; Function Attrs: nounwind uwtable
define void @ToolsCore_SetCapabilities(%struct._RpcChannel*, %struct._GArray*, i32) #0 !dbg !756 {
  %4 = alloca %struct._RpcChannel*, align 8
  %5 = alloca %struct._GArray*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ToolsAppCapability*, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %4, metadata !759, metadata !306), !dbg !760
  store %struct._GArray* %1, %struct._GArray** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GArray** %5, metadata !761, metadata !306), !dbg !762
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !763, metadata !306), !dbg !764
  call void @llvm.dbg.declare(metadata i8** %7, metadata !765, metadata !306), !dbg !766
  call void @llvm.dbg.declare(metadata i64* %8, metadata !767, metadata !306), !dbg !768
  call void @llvm.dbg.declare(metadata i32* %9, metadata !769, metadata !306), !dbg !770
  call void @llvm.dbg.declare(metadata i8** %10, metadata !771, metadata !306), !dbg !772
  store i8* null, i8** %10, align 8, !dbg !772
  store i32 0, i32* %9, align 4, !dbg !773
  br label %13, !dbg !775

; <label>:13:                                     ; preds = %112, %3
  %14 = load i32, i32* %9, align 4, !dbg !776
  %15 = load %struct._GArray*, %struct._GArray** %5, align 8, !dbg !779
  %16 = getelementptr inbounds %struct._GArray, %struct._GArray* %15, i32 0, i32 1, !dbg !780
  %17 = load i32, i32* %16, align 8, !dbg !780
  %18 = icmp ult i32 %14, %17, !dbg !781
  br i1 %18, label %19, label %115, !dbg !782

; <label>:19:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata i8** %11, metadata !783, metadata !306), !dbg !785
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCapability** %12, metadata !786, metadata !306), !dbg !787
  %20 = load i32, i32* %9, align 4, !dbg !788
  %21 = zext i32 %20 to i64, !dbg !789
  %22 = load %struct._GArray*, %struct._GArray** %5, align 8, !dbg !790
  %23 = getelementptr inbounds %struct._GArray, %struct._GArray* %22, i32 0, i32 0, !dbg !791
  %24 = load i8*, i8** %23, align 8, !dbg !791
  %25 = bitcast i8* %24 to %struct.ToolsAppCapability*, !dbg !792
  %26 = getelementptr inbounds %struct.ToolsAppCapability, %struct.ToolsAppCapability* %25, i64 %21, !dbg !789
  store %struct.ToolsAppCapability* %26, %struct.ToolsAppCapability** %12, align 8, !dbg !787
  %27 = load %struct.ToolsAppCapability*, %struct.ToolsAppCapability** %12, align 8, !dbg !793
  %28 = getelementptr inbounds %struct.ToolsAppCapability, %struct.ToolsAppCapability* %27, i32 0, i32 0, !dbg !794
  %29 = load i32, i32* %28, align 8, !dbg !794
  switch i32 %29, label %104 [
    i32 0, label %30
    i32 1, label %59
    i32 2, label %82
  ], !dbg !795

; <label>:30:                                     ; preds = %19
  store i8* null, i8** %7, align 8, !dbg !796
  %31 = load %struct.ToolsAppCapability*, %struct.ToolsAppCapability** %12, align 8, !dbg !798
  %32 = getelementptr inbounds %struct.ToolsAppCapability, %struct.ToolsAppCapability* %31, i32 0, i32 1, !dbg !799
  %33 = load i8*, i8** %32, align 8, !dbg !799
  %34 = load i32, i32* %6, align 4, !dbg !800
  %35 = icmp ne i32 %34, 0, !dbg !800
  br i1 %35, label %36, label %40, !dbg !800

; <label>:36:                                     ; preds = %30
  %37 = load %struct.ToolsAppCapability*, %struct.ToolsAppCapability** %12, align 8, !dbg !801
  %38 = getelementptr inbounds %struct.ToolsAppCapability, %struct.ToolsAppCapability* %37, i32 0, i32 3, !dbg !803
  %39 = load i32, i32* %38, align 4, !dbg !803
  br label %41, !dbg !804

; <label>:40:                                     ; preds = %30
  br label %41, !dbg !805

; <label>:41:                                     ; preds = %40, %36
  %42 = phi i32 [ %39, %36 ], [ 0, %40 ], !dbg !807
  %43 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* %33, i32 %42), !dbg !809
  store i8* %43, i8** %11, align 8, !dbg !810
  %44 = load %struct._RpcChannel*, %struct._RpcChannel** %4, align 8, !dbg !811
  %45 = load i8*, i8** %11, align 8, !dbg !813
  %46 = load i8*, i8** %11, align 8, !dbg !814
  %47 = call i64 @strlen(i8* %46) #7, !dbg !815
  %48 = add i64 %47, 1, !dbg !816
  %49 = call i32 @RpcChannel_Send(%struct._RpcChannel* %44, i8* %45, i64 %48, i8** %7, i64* %8), !dbg !817
  %50 = icmp ne i32 %49, 0, !dbg !819
  br i1 %50, label %56, label %51, !dbg !820

; <label>:51:                                     ; preds = %41
  %52 = load %struct.ToolsAppCapability*, %struct.ToolsAppCapability** %12, align 8, !dbg !821
  %53 = getelementptr inbounds %struct.ToolsAppCapability, %struct.ToolsAppCapability* %52, i32 0, i32 1, !dbg !823
  %54 = load i8*, i8** %53, align 8, !dbg !823
  %55 = load i8*, i8** %7, align 8, !dbg !824
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0), i8* %54, i8* %55), !dbg !825
  br label %56, !dbg !826

; <label>:56:                                     ; preds = %51, %41
  %57 = load i8*, i8** %7, align 8, !dbg !827
  call void @vm_free(i8* %57), !dbg !828
  %58 = load i8*, i8** %11, align 8, !dbg !829
  call void @g_free(i8* %58), !dbg !830
  br label %111, !dbg !831

; <label>:59:                                     ; preds = %19
  %60 = load i32, i32* %6, align 4, !dbg !832
  %61 = icmp ne i32 %60, 0, !dbg !832
  br i1 %61, label %62, label %81, !dbg !834

; <label>:62:                                     ; preds = %59
  %63 = load %struct.ToolsAppCapability*, %struct.ToolsAppCapability** %12, align 8, !dbg !835
  %64 = getelementptr inbounds %struct.ToolsAppCapability, %struct.ToolsAppCapability* %63, i32 0, i32 1, !dbg !837
  %65 = load i8*, i8** %64, align 8, !dbg !837
  %66 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* %65), !dbg !838
  store i8* %66, i8** %11, align 8, !dbg !839
  %67 = load %struct._RpcChannel*, %struct._RpcChannel** %4, align 8, !dbg !840
  %68 = load i8*, i8** %11, align 8, !dbg !842
  %69 = load i8*, i8** %11, align 8, !dbg !843
  %70 = call i64 @strlen(i8* %69) #7, !dbg !844
  %71 = call i32 @RpcChannel_Send(%struct._RpcChannel* %67, i8* %68, i64 %70, i8** %7, i64* %8), !dbg !845
  %72 = icmp ne i32 %71, 0, !dbg !847
  br i1 %72, label %78, label %73, !dbg !848

; <label>:73:                                     ; preds = %62
  %74 = load %struct.ToolsAppCapability*, %struct.ToolsAppCapability** %12, align 8, !dbg !849
  %75 = getelementptr inbounds %struct.ToolsAppCapability, %struct.ToolsAppCapability* %74, i32 0, i32 1, !dbg !851
  %76 = load i8*, i8** %75, align 8, !dbg !851
  %77 = load i8*, i8** %7, align 8, !dbg !852
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0), i8* %76, i8* %77), !dbg !853
  br label %78, !dbg !854

; <label>:78:                                     ; preds = %73, %62
  %79 = load i8*, i8** %7, align 8, !dbg !855
  call void @vm_free(i8* %79), !dbg !856
  %80 = load i8*, i8** %11, align 8, !dbg !857
  call void @g_free(i8* %80), !dbg !858
  br label %81, !dbg !859

; <label>:81:                                     ; preds = %78, %59
  br label %111, !dbg !860

; <label>:82:                                     ; preds = %19
  %83 = load i8*, i8** %10, align 8, !dbg !861
  %84 = icmp eq i8* %83, null, !dbg !863
  br i1 %84, label %85, label %87, !dbg !864

; <label>:85:                                     ; preds = %82
  %86 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0)), !dbg !865
  store i8* %86, i8** %10, align 8, !dbg !867
  br label %87, !dbg !868

; <label>:87:                                     ; preds = %85, %82
  %88 = load i8*, i8** %10, align 8, !dbg !869
  %89 = load %struct.ToolsAppCapability*, %struct.ToolsAppCapability** %12, align 8, !dbg !870
  %90 = getelementptr inbounds %struct.ToolsAppCapability, %struct.ToolsAppCapability* %89, i32 0, i32 2, !dbg !871
  %91 = load i32, i32* %90, align 8, !dbg !871
  %92 = load i32, i32* %6, align 4, !dbg !872
  %93 = icmp ne i32 %92, 0, !dbg !872
  br i1 %93, label %94, label %98, !dbg !872

; <label>:94:                                     ; preds = %87
  %95 = load %struct.ToolsAppCapability*, %struct.ToolsAppCapability** %12, align 8, !dbg !873
  %96 = getelementptr inbounds %struct.ToolsAppCapability, %struct.ToolsAppCapability* %95, i32 0, i32 3, !dbg !874
  %97 = load i32, i32* %96, align 4, !dbg !874
  br label %99, !dbg !875

; <label>:98:                                     ; preds = %87
  br label %99, !dbg !876

; <label>:99:                                     ; preds = %98, %94
  %100 = phi i32 [ %97, %94 ], [ 0, %98 ], !dbg !877
  %101 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* %88, i32 %91, i32 %100), !dbg !878
  store i8* %101, i8** %11, align 8, !dbg !879
  %102 = load i8*, i8** %10, align 8, !dbg !880
  call void @g_free(i8* %102), !dbg !881
  %103 = load i8*, i8** %11, align 8, !dbg !882
  store i8* %103, i8** %10, align 8, !dbg !883
  br label %111, !dbg !884

; <label>:104:                                    ; preds = %19
  br label %105, !dbg !885, !llvm.loop !886

; <label>:105:                                    ; preds = %104
  %106 = load %struct.ToolsAppCapability*, %struct.ToolsAppCapability** %12, align 8, !dbg !887
  %107 = getelementptr inbounds %struct.ToolsAppCapability, %struct.ToolsAppCapability* %106, i32 0, i32 0, !dbg !890
  %108 = load i32, i32* %107, align 8, !dbg !890
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0), i32 %108), !dbg !891
  br label %109, !dbg !892

; <label>:109:                                    ; preds = %109, %105
  br label %109, !dbg !893, !llvm.loop !897
                                                  ; No predecessors!
  br label %111, !dbg !899

; <label>:111:                                    ; preds = %110, %99, %81, %56
  br label %112, !dbg !900

; <label>:112:                                    ; preds = %111
  %113 = load i32, i32* %9, align 4, !dbg !901
  %114 = add i32 %113, 1, !dbg !901
  store i32 %114, i32* %9, align 4, !dbg !901
  br label %13, !dbg !903, !llvm.loop !904

; <label>:115:                                    ; preds = %13
  %116 = load i8*, i8** %10, align 8, !dbg !906
  %117 = icmp ne i8* %116, null, !dbg !908
  br i1 %117, label %118, label %131, !dbg !909

; <label>:118:                                    ; preds = %115
  store i8* null, i8** %7, align 8, !dbg !910
  %119 = load %struct._RpcChannel*, %struct._RpcChannel** %4, align 8, !dbg !912
  %120 = load i8*, i8** %10, align 8, !dbg !914
  %121 = load i8*, i8** %10, align 8, !dbg !915
  %122 = call i64 @strlen(i8* %121) #7, !dbg !916
  %123 = add i64 %122, 1, !dbg !917
  %124 = call i32 @RpcChannel_Send(%struct._RpcChannel* %119, i8* %120, i64 %123, i8** %7, i64* %8), !dbg !918
  %125 = icmp ne i32 %124, 0, !dbg !920
  br i1 %125, label %128, label %126, !dbg !921

; <label>:126:                                    ; preds = %118
  %127 = load i8*, i8** %7, align 8, !dbg !922
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i32 0, i32 0), i8* %127), !dbg !924
  br label %128, !dbg !925

; <label>:128:                                    ; preds = %126, %118
  %129 = load i8*, i8** %7, align 8, !dbg !926
  call void @vm_free(i8* %129), !dbg !927
  %130 = load i8*, i8** %10, align 8, !dbg !928
  call void @g_free(i8* %130), !dbg !929
  br label %131, !dbg !930

; <label>:131:                                    ; preds = %128, %115
  ret void, !dbg !931
}

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare i32 @RpcChannel_Send(%struct._RpcChannel*, i8*, i64, i8**, i64*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @vm_free(i8*) #2

declare void @g_free(i8*) #2

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: nounwind uwtable
define void @ToolsCore_InitVsockFamily(%struct.ToolsServiceState*) #0 !dbg !932 {
  %2 = alloca %struct.ToolsServiceState*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ToolsServiceState* %0, %struct.ToolsServiceState** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %2, metadata !935, metadata !306), !dbg !936
  call void @llvm.dbg.declare(metadata i32* %3, metadata !937, metadata !306), !dbg !938
  store i32 -1, i32* %3, align 4, !dbg !938
  call void @llvm.dbg.declare(metadata i32* %4, metadata !939, metadata !306), !dbg !940
  store i32 -1, i32* %4, align 4, !dbg !940
  %5 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !941
  %6 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %5, i32 0, i32 15, !dbg !942
  store i32 -1, i32* %6, align 8, !dbg !943
  %7 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !944
  %8 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %7, i32 0, i32 16, !dbg !945
  store i32 -1, i32* %8, align 4, !dbg !946
  %9 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !947
  %10 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %9, i32 0, i32 13, !dbg !949
  %11 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %10, i32 0, i32 5, !dbg !950
  %12 = load %struct._RpcChannel*, %struct._RpcChannel** %11, align 8, !dbg !950
  %13 = icmp ne %struct._RpcChannel* %12, null, !dbg !947
  br i1 %13, label %15, label %14, !dbg !951

; <label>:14:                                     ; preds = %1
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i32 0, i32 0)), !dbg !952
  br label %42, !dbg !954

; <label>:15:                                     ; preds = %1
  %16 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !955
  %17 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %16, i32 0, i32 13, !dbg !956
  %18 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %17, i32 0, i32 5, !dbg !957
  %19 = load %struct._RpcChannel*, %struct._RpcChannel** %18, align 8, !dbg !957
  %20 = call i32 @RpcChannel_GetType(%struct._RpcChannel* %19), !dbg !958
  switch i32 %20, label %41 [
    i32 0, label %21
    i32 2, label %21
    i32 3, label %21
    i32 1, label %22
  ], !dbg !959

; <label>:21:                                     ; preds = %15, %15, %15
  br label %42, !dbg !960

; <label>:22:                                     ; preds = %15
  %23 = call i32 @VMCISock_GetAFValueFd(i32* %3), !dbg !962
  store i32 %23, i32* %4, align 4, !dbg !963
  %24 = load i32, i32* %4, align 4, !dbg !964
  %25 = icmp eq i32 %24, -1, !dbg !966
  br i1 %25, label %26, label %27, !dbg !967

; <label>:26:                                     ; preds = %22
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0)), !dbg !968
  br label %40, !dbg !970

; <label>:27:                                     ; preds = %22
  %28 = load i32, i32* %3, align 4, !dbg !971
  %29 = icmp sge i32 %28, 0, !dbg !974
  br i1 %29, label %30, label %39, !dbg !971

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %3, align 4, !dbg !975
  %32 = load i32, i32* %4, align 4, !dbg !977
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i32 0, i32 0), i32 %31, i32 %32), !dbg !978
  %33 = load i32, i32* %4, align 4, !dbg !979
  %34 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !980
  %35 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %34, i32 0, i32 16, !dbg !981
  store i32 %33, i32* %35, align 4, !dbg !982
  %36 = load i32, i32* %3, align 4, !dbg !983
  %37 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !984
  %38 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %37, i32 0, i32 15, !dbg !985
  store i32 %36, i32* %38, align 8, !dbg !986
  br label %39, !dbg !987

; <label>:39:                                     ; preds = %30, %27
  br label %40

; <label>:40:                                     ; preds = %39, %26
  br label %42, !dbg !988

; <label>:41:                                     ; preds = %15
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i32 472) #9, !dbg !989
  unreachable, !dbg !989

; <label>:42:                                     ; preds = %40, %21, %14
  ret void, !dbg !990
}

declare i32 @RpcChannel_GetType(%struct._RpcChannel*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @VMCISock_GetAFValueFd(i32*) #4 !dbg !991 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !996, metadata !306), !dbg !997
  call void @llvm.dbg.declare(metadata i32* %4, metadata !998, metadata !306), !dbg !999
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1000, metadata !306), !dbg !1001
  store i32 -1, i32* %5, align 4, !dbg !1001
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1002, metadata !306), !dbg !1004
  %7 = call i32 @socket(i32 40, i32 2, i32 0) #8, !dbg !1005
  store i32 %7, i32* %6, align 4, !dbg !1004
  %8 = load i32, i32* %6, align 4, !dbg !1006
  %9 = icmp ne i32 %8, -1, !dbg !1008
  br i1 %9, label %10, label %18, !dbg !1009

; <label>:10:                                     ; preds = %1
  %11 = load i32, i32* %6, align 4, !dbg !1010
  %12 = call i32 @close(i32 %11), !dbg !1012
  %13 = load i32*, i32** %3, align 8, !dbg !1013
  %14 = icmp ne i32* %13, null, !dbg !1013
  br i1 %14, label %15, label %17, !dbg !1015

; <label>:15:                                     ; preds = %10
  %16 = load i32*, i32** %3, align 8, !dbg !1016
  store i32 -1, i32* %16, align 4, !dbg !1018
  br label %17, !dbg !1019

; <label>:17:                                     ; preds = %15, %10
  store i32 40, i32* %2, align 4, !dbg !1020
  br label %48, !dbg !1020

; <label>:18:                                     ; preds = %1
  %19 = call i32 (i8*, i32, ...) @open64(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i32 0), !dbg !1021
  store i32 %19, i32* %4, align 4, !dbg !1022
  %20 = load i32, i32* %4, align 4, !dbg !1023
  %21 = icmp slt i32 %20, 0, !dbg !1025
  br i1 %21, label %22, label %28, !dbg !1026

; <label>:22:                                     ; preds = %18
  %23 = call i32 (i8*, i32, ...) @open64(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0), i32 0), !dbg !1027
  store i32 %23, i32* %4, align 4, !dbg !1029
  %24 = load i32, i32* %4, align 4, !dbg !1030
  %25 = icmp slt i32 %24, 0, !dbg !1032
  br i1 %25, label %26, label %27, !dbg !1033

; <label>:26:                                     ; preds = %22
  store i32 -1, i32* %2, align 4, !dbg !1034
  br label %48, !dbg !1034

; <label>:27:                                     ; preds = %22
  br label %28, !dbg !1036

; <label>:28:                                     ; preds = %27, %18
  %29 = load i32, i32* %4, align 4, !dbg !1037
  %30 = call i32 (i32, i64, ...) @ioctl(i32 %29, i64 1976, i32* %5) #8, !dbg !1039
  %31 = icmp slt i32 %30, 0, !dbg !1040
  br i1 %31, label %32, label %33, !dbg !1041

; <label>:32:                                     ; preds = %28
  store i32 -1, i32* %5, align 4, !dbg !1042
  br label %33, !dbg !1044

; <label>:33:                                     ; preds = %32, %28
  %34 = load i32, i32* %5, align 4, !dbg !1045
  %35 = icmp slt i32 %34, 0, !dbg !1047
  br i1 %35, label %36, label %39, !dbg !1048

; <label>:36:                                     ; preds = %33
  %37 = load i32, i32* %4, align 4, !dbg !1049
  %38 = call i32 @close(i32 %37), !dbg !1051
  br label %46, !dbg !1052

; <label>:39:                                     ; preds = %33
  %40 = load i32*, i32** %3, align 8, !dbg !1053
  %41 = icmp ne i32* %40, null, !dbg !1053
  br i1 %41, label %42, label %45, !dbg !1053

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* %4, align 4, !dbg !1056
  %44 = load i32*, i32** %3, align 8, !dbg !1058
  store i32 %43, i32* %44, align 4, !dbg !1059
  br label %45, !dbg !1060

; <label>:45:                                     ; preds = %42, %39
  br label %46

; <label>:46:                                     ; preds = %45, %36
  %47 = load i32, i32* %5, align 4, !dbg !1061
  store i32 %47, i32* %2, align 4, !dbg !1062
  br label %48, !dbg !1062

; <label>:48:                                     ; preds = %46, %26, %17
  %49 = load i32, i32* %2, align 4, !dbg !1063
  ret i32 %49, !dbg !1063
}

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #5

; Function Attrs: nounwind uwtable
define void @ToolsCore_ReleaseVsockFamily(%struct.ToolsServiceState*) #0 !dbg !1064 {
  %2 = alloca %struct.ToolsServiceState*, align 8
  store %struct.ToolsServiceState* %0, %struct.ToolsServiceState** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %2, metadata !1065, metadata !306), !dbg !1066
  %3 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1067
  %4 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %3, i32 0, i32 16, !dbg !1069
  %5 = load i32, i32* %4, align 4, !dbg !1069
  %6 = icmp sge i32 %5, 0, !dbg !1070
  br i1 %6, label %7, label %26, !dbg !1071

; <label>:7:                                      ; preds = %1
  %8 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1072
  %9 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %8, i32 0, i32 15, !dbg !1074
  %10 = load i32, i32* %9, align 8, !dbg !1074
  %11 = icmp sge i32 %10, 0, !dbg !1075
  br i1 %11, label %12, label %26, !dbg !1076

; <label>:12:                                     ; preds = %7
  %13 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1077
  %14 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %13, i32 0, i32 15, !dbg !1079
  %15 = load i32, i32* %14, align 8, !dbg !1079
  %16 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1080
  %17 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %16, i32 0, i32 16, !dbg !1081
  %18 = load i32, i32* %17, align 4, !dbg !1081
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i32 0, i32 0), i32 %15, i32 %18), !dbg !1082
  %19 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1083
  %20 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %19, i32 0, i32 15, !dbg !1084
  %21 = load i32, i32* %20, align 8, !dbg !1084
  call void @VMCISock_ReleaseAFValueFd(i32 %21), !dbg !1085
  %22 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1086
  %23 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %22, i32 0, i32 15, !dbg !1087
  store i32 -1, i32* %23, align 8, !dbg !1088
  %24 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1089
  %25 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %24, i32 0, i32 16, !dbg !1090
  store i32 -1, i32* %25, align 4, !dbg !1091
  br label %26, !dbg !1092

; <label>:26:                                     ; preds = %12, %7, %1
  ret void, !dbg !1093
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @VMCISock_ReleaseAFValueFd(i32) #4 !dbg !1094 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1097, metadata !306), !dbg !1098
  %3 = load i32, i32* %2, align 4, !dbg !1099
  %4 = icmp sge i32 %3, 0, !dbg !1101
  br i1 %4, label %5, label %8, !dbg !1102

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !1103
  %7 = call i32 @close(i32 %6), !dbg !1105
  br label %8, !dbg !1106

; <label>:8:                                      ; preds = %5, %1
  ret void, !dbg !1107
}

declare i8* @GuestApp_GetConfPath() #2

declare void @g_signal_emit_by_name(i8*, i8*, ...) #2

declare i8* @g_array_free(%struct._GArray*, i32) #2

declare i32 @g_key_file_get_boolean(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #2

declare void @g_clear_error(%struct._GError**) #2

; Function Attrs: nounwind
declare void @free(i8*) #6

declare i32 @RpcChannel_SetRetVals(%struct.RpcInData*, i8*, i32) #2

declare i8* @StrUtil_GetNextToken(i32*, i8*, i8*) #2

declare void @g_main_loop_quit(%struct._GMainLoop*) #2

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #6

declare i32 @close(i32) #2

declare i32 @open64(i8*, i32, ...) #2

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!302, !303}
!llvm.ident = !{!304}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !87, globals: !106)
!1 = !DIFile(filename: "vmtoolsd-toolsRpc.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1393")
!2 = !{!3, !7, !13, !25, !30, !65, !75}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 232, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/plugin.h", directory: "/home/lichi/Desktop/open-vm-tools/line1393")
!5 = !{!6}
!6 = !DIEnumerator(name: "TOOLS_CORE_API_V1", value: 1)
!7 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 339, size: 32, align: 32, elements: !8)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "TOOLS_APP_GUESTRPC", value: 1)
!10 = !DIEnumerator(name: "TOOLS_APP_SIGNALS", value: 2)
!11 = !DIEnumerator(name: "TOOLS_APP_PROVIDER", value: 3)
!12 = !DIEnumerator(name: "TOOLS_SVC_PROPERTY", value: 4)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 51, size: 32, align: 32, elements: !15)
!14 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1393")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24}
!16 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!17 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!18 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!19 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!20 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!21 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!22 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!23 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!24 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 303, size: 32, align: 32, elements: !26)
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "TOOLS_CAP_OLD", value: 0)
!28 = !DIEnumerator(name: "TOOLS_CAP_OLD_NOVAL", value: 1)
!29 = !DIEnumerator(name: "TOOLS_CAP_NEW", value: 2)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 44, size: 32, align: 32, elements: !32)
!31 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/guestrpc/capabilities.h", directory: "/home/lichi/Desktop/open-vm-tools/line1393")
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!33 = !DIEnumerator(name: "UNITY_CAP_START_MENU", value: 0)
!34 = !DIEnumerator(name: "UNITY_CAP_VIRTUAL_DESK", value: 1)
!35 = !DIEnumerator(name: "UNITY_CAP_WORK_AREA", value: 2)
!36 = !DIEnumerator(name: "UNITY_CAP_MULTI_MON", value: 3)
!37 = !DIEnumerator(name: "GHI_CAP_SHELL_ACTION_BROWSE", value: 4)
!38 = !DIEnumerator(name: "GHI_CAP_SHELL_LOCATION_HGFS", value: 5)
!39 = !DIEnumerator(name: "GHI_CAP_SHELL_ACTION_RUN", value: 6)
!40 = !DIEnumerator(name: "GHI_CAP_CMD_SHELL_ACTION", value: 7)
!41 = !DIEnumerator(name: "HGFSU_CAP_MIRROR_DESKTOP", value: 8)
!42 = !DIEnumerator(name: "HGFSU_CAP_MIRROR_DOCUMENTS", value: 9)
!43 = !DIEnumerator(name: "HGFSU_CAP_MIRROR_MUSIC", value: 10)
!44 = !DIEnumerator(name: "HGFSU_CAP_MIRROR_PICTURES", value: 11)
!45 = !DIEnumerator(name: "HGFSU_CAP_DESKTOP_SHORTCUT", value: 12)
!46 = !DIEnumerator(name: "HGFSU_CAP_MAP_DRIVE", value: 13)
!47 = !DIEnumerator(name: "GHI_CAP_SET_HANDLER", value: 14)
!48 = !DIEnumerator(name: "UNITY_CAP_STATUS_UNITY_ACTIVE", value: 15)
!49 = !DIEnumerator(name: "GHI_CAP_SET_OUTLOOK_TEMP_FOLDER", value: 16)
!50 = !DIEnumerator(name: "CAP_SET_TOPO_MODES", value: 18)
!51 = !DIEnumerator(name: "GHI_CAP_TRAY_ICONS", value: 19)
!52 = !DIEnumerator(name: "GHI_CAP_SET_FOCUSED_WINDOW", value: 20)
!53 = !DIEnumerator(name: "GHI_CAP_GET_EXEC_INFO_HASH", value: 21)
!54 = !DIEnumerator(name: "UNITY_CAP_STICKY_WINDOWS", value: 22)
!55 = !DIEnumerator(name: "CAP_CHANGE_HOST_3D_AVAILABILITY_HINT", value: 23)
!56 = !DIEnumerator(name: "CAP_AUTOUPGRADE_AT_SHUTDOWN", value: 24)
!57 = !DIEnumerator(name: "GHI_CAP_AUTOLOGON", value: 25)
!58 = !DIEnumerator(name: "CAP_DESKTOP_AUTOLOCK", value: 26)
!59 = !DIEnumerator(name: "HGFSU_CAP_MIRROR_DOWNLOADS", value: 28)
!60 = !DIEnumerator(name: "HGFSU_CAP_MIRROR_MOVIES", value: 29)
!61 = !DIEnumerator(name: "GHI_CAP_TOGGLE_START_UI", value: 30)
!62 = !DIEnumerator(name: "GHI_CAP_SET_DISPLAY_SCALING", value: 31)
!63 = !DIEnumerator(name: "UNITY_CAP_DISABLE_MOUSE_BUTTON_SWAPPING", value: 32)
!64 = !DIEnumerator(name: "UNITY_CAP_CARET_POSITION", value: 33)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !66, line: 77, size: 32, align: 32, elements: !67)
!66 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_tools_version.h", directory: "/home/lichi/Desktop/open-vm-tools/line1393")
!67 = !{!68, !69, !70, !71, !72, !73, !74}
!68 = !DIEnumerator(name: "TOOLS_TYPE_UNSET", value: -1)
!69 = !DIEnumerator(name: "TOOLS_TYPE_UNKNOWN", value: 0)
!70 = !DIEnumerator(name: "TOOLS_TYPE_MSI", value: 1)
!71 = !DIEnumerator(name: "TOOLS_TYPE_TARBALL", value: 2)
!72 = !DIEnumerator(name: "TOOLS_TYPE_OSP", value: 3)
!73 = !DIEnumerator(name: "TOOLS_TYPE_OVT", value: 4)
!74 = !DIEnumerator(name: "TOOLS_TYPE_MAX", value: 5)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !76, line: 24, size: 32, align: 32, elements: !77)
!76 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "/home/lichi/Desktop/open-vm-tools/line1393")
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !86}
!78 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!79 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!80 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!81 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!82 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!83 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!84 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!85 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!86 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!87 = !{!88, !89}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppCapability", file: !4, line: 333, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppCapability", file: !4, line: 318, size: 192, align: 64, elements: !92)
!92 = !{!93, !95, !101, !103}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !91, file: !4, line: 320, baseType: !94, size: 32, align: 32)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCapabilityType", file: !4, line: 307, baseType: !25)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !91, file: !4, line: 325, baseType: !96, size: 64, align: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !99, line: 46, baseType: !100)
!99 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1393")
!100 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !91, file: !4, line: 330, baseType: !102, size: 32, align: 32, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestCapabilities", file: !31, line: 79, baseType: !30)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !91, file: !4, line: 332, baseType: !104, size: 32, align: 32, offset: 160)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !99, line: 55, baseType: !105)
!105 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!106 = !{!107, !298}
!107 = distinct !DIGlobalVariable(name: "rpcs", scope: !108, file: !109, line: 285, type: !282, isLocal: true, isDefinition: true, variable: [2 x %struct.RpcChannelCallback]* @ToolsCore_InitRpc.rpcs)
!108 = distinct !DISubprogram(name: "ToolsCore_InitRpc", scope: !109, file: !109, line: 283, type: !110, isLocal: false, isDefinition: true, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !281)
!109 = !DIFile(filename: "toolsRpc.c", directory: "/home/lichi/Desktop/open-vm-tools/line1393")
!110 = !DISubroutineType(types: !111)
!111 = !{!112, !115}
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !99, line: 50, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !99, line: 49, baseType: !114)
!114 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsServiceState", file: !117, line: 100, baseType: !118)
!117 = !DIFile(filename: "toolsCoreInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line1393")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsServiceState", file: !117, line: 69, size: 1472, align: 64, elements: !119)
!119 = !{!120, !122, !123, !129, !130, !131, !132, !133, !134, !144, !145, !150, !151, !277, !278, !279, !280}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !118, file: !117, line: 70, baseType: !121, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "configFile", scope: !118, file: !117, line: 71, baseType: !121, size: 64, align: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "configMtime", scope: !118, file: !117, line: 72, baseType: !124, size: 64, align: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !125, line: 75, baseType: !126)
!125 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line1393")
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !127, line: 139, baseType: !128)
!127 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1393")
!128 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "configCheckTask", scope: !118, file: !117, line: 73, baseType: !104, size: 32, align: 32, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "mainService", scope: !118, file: !117, line: 74, baseType: !112, size: 32, align: 32, offset: 224)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "capsRegistered", scope: !118, file: !117, line: 75, baseType: !112, size: 32, align: 32, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "commonPath", scope: !118, file: !117, line: 76, baseType: !121, size: 64, align: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "pluginPath", scope: !118, file: !117, line: 77, baseType: !121, size: 64, align: 64, offset: 384)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "plugins", scope: !118, file: !117, line: 78, baseType: !135, size: 64, align: 64, offset: 448)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPtrArray", file: !137, line: 39, baseType: !138)
!137 = !DIFile(filename: "/usr/include/glib-2.0/glib/garray.h", directory: "/home/lichi/Desktop/open-vm-tools/line1393")
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GPtrArray", file: !137, line: 53, size: 128, align: 64, elements: !139)
!139 = !{!140, !143}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "pdata", scope: !138, file: !137, line: 55, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !99, line: 77, baseType: !88)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !138, file: !137, line: 56, baseType: !104, size: 32, align: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "pidFile", scope: !118, file: !117, line: 82, baseType: !121, size: 64, align: 64, offset: 512)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "debugLib", scope: !118, file: !117, line: 84, baseType: !146, size: 64, align: 64, offset: 576)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "GModule", file: !148, line: 49, baseType: !149)
!148 = !DIFile(filename: "/usr/include/glib-2.0/gmodule.h", directory: "/home/lichi/Desktop/open-vm-tools/line1393")
!149 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GModule", file: !148, line: 49, flags: DIFlagFwdDecl)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "debugPlugin", scope: !118, file: !117, line: 85, baseType: !121, size: 64, align: 64, offset: 640)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "debugData", scope: !118, file: !117, line: 86, baseType: !152, size: 64, align: 64, offset: 704)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugLibData", file: !154, line: 150, baseType: !155)
!154 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/rpcdebug.h", directory: "/home/lichi/Desktop/open-vm-tools/line1393")
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcDebugLibData", file: !154, line: 142, size: 192, align: 64, elements: !156)
!156 = !{!157, !193, !197}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "newDebugChannel", scope: !155, file: !154, line: 143, baseType: !158, size: 64, align: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!161, !165, !192}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !163, line: 48, baseType: !164)
!163 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line1393")
!164 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !163, line: 48, flags: DIFlagFwdDecl)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppCtx", file: !4, line: 274, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppCtx", file: !4, line: 241, size: 576, align: 64, elements: !168)
!168 = !{!169, !171, !172, !173, !174, !179, !180, !185, !186, !187, !191}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !167, file: !4, line: 243, baseType: !170, size: 32, align: 32)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCoreAPI", file: !4, line: 234, baseType: !3)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !167, file: !4, line: 245, baseType: !96, size: 64, align: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "isVMware", scope: !167, file: !4, line: 247, baseType: !112, size: 32, align: 32, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "errorCode", scope: !167, file: !4, line: 249, baseType: !114, size: 32, align: 32, offset: 160)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "mainLoop", scope: !167, file: !4, line: 251, baseType: !175, size: 64, align: 64, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainLoop", file: !177, line: 56, baseType: !178)
!177 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line1393")
!178 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainLoop", file: !177, line: 56, flags: DIFlagFwdDecl)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !167, file: !4, line: 253, baseType: !161, size: 64, align: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !167, file: !4, line: 255, baseType: !181, size: 64, align: 64, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !183, line: 48, baseType: !184)
!183 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1393")
!184 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !183, line: 48, flags: DIFlagFwdDecl)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "blockFD", scope: !167, file: !4, line: 261, baseType: !114, size: 32, align: 32, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "uinputFD", scope: !167, file: !4, line: 263, baseType: !114, size: 32, align: 32, offset: 416)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !167, file: !4, line: 265, baseType: !188, size: 64, align: 64, offset: 448)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "serviceObj", scope: !167, file: !4, line: 273, baseType: !142, size: 64, align: 64, offset: 512)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !155, file: !154, line: 145, baseType: !194, size: 64, align: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!114, !165, !142, !142, !192}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "debugPlugin", scope: !155, file: !154, line: 149, baseType: !198, size: 64, align: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugPlugin", file: !154, line: 126, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcDebugPlugin", file: !154, line: 112, size: 320, align: 64, elements: !201)
!201 = !{!202, !221, !222, !251, !257}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "recvFns", scope: !200, file: !154, line: 114, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugRecvMapping", file: !154, line: 69, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcDebugRecvMapping", file: !154, line: 59, size: 256, align: 64, elements: !206)
!206 = !{!207, !208, !219, !220}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !205, file: !154, line: 60, baseType: !121, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "recvFn", scope: !205, file: !154, line: 61, baseType: !209, size: 64, align: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugRecvFn", file: !154, line: 53, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!112, !213, !214, !217, !218}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !215, line: 216, baseType: !216)
!215 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1393")
!216 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "xdrProc", scope: !205, file: !154, line: 66, baseType: !142, size: 64, align: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "xdrSize", scope: !205, file: !154, line: 68, baseType: !214, size: 64, align: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "dfltRecvFn", scope: !200, file: !154, line: 119, baseType: !209, size: 64, align: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "sendFn", scope: !200, file: !154, line: 121, baseType: !223, size: 64, align: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugSendFn", file: !154, line: 102, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!112, !227}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugMsgMapping", file: !154, line: 86, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcDebugMsgMapping", file: !154, line: 81, size: 256, align: 64, elements: !230)
!230 = !{!231, !232, !233, !250}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !229, file: !154, line: 82, baseType: !121, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "messageLen", scope: !229, file: !154, line: 83, baseType: !214, size: 64, align: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "validateFn", scope: !229, file: !154, line: 84, baseType: !234, size: 64, align: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugValidateFn", file: !154, line: 77, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!112, !238, !112}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcInData", file: !163, line: 77, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcInData", file: !163, line: 51, size: 512, align: 64, elements: !241)
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !240, file: !163, line: 53, baseType: !189, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !240, file: !163, line: 58, baseType: !189, size: 64, align: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "argsSize", scope: !240, file: !163, line: 60, baseType: !214, size: 64, align: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !240, file: !163, line: 65, baseType: !213, size: 64, align: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "resultLen", scope: !240, file: !163, line: 67, baseType: !214, size: 64, align: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "freeResult", scope: !240, file: !163, line: 72, baseType: !112, size: 32, align: 32, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "appCtx", scope: !240, file: !163, line: 74, baseType: !88, size: 64, align: 64, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !240, file: !163, line: 76, baseType: !88, size: 64, align: 64, offset: 448)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "freeMsg", scope: !229, file: !154, line: 85, baseType: !112, size: 32, align: 32, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "shutdownFn", scope: !200, file: !154, line: 123, baseType: !252, size: 64, align: 64, offset: 192)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugShutdownFn", file: !154, line: 105, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !165, !256}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "plugin", scope: !200, file: !154, line: 125, baseType: !258, size: 64, align: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsPluginData", file: !4, line: 545, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsPluginData", file: !4, line: 501, size: 256, align: 64, elements: !261)
!261 = !{!262, !263, !270, !276}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !260, file: !4, line: 503, baseType: !189, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !260, file: !4, line: 508, baseType: !264, size: 64, align: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "GArray", file: !137, line: 37, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GArray", file: !137, line: 41, size: 128, align: 64, elements: !267)
!267 = !{!268, !269}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !266, file: !137, line: 43, baseType: !121, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !266, file: !137, line: 44, baseType: !104, size: 32, align: 32, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "errorCb", scope: !260, file: !4, line: 539, baseType: !271, size: 64, align: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!112, !165, !274, !142, !275}
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppType", file: !4, line: 360, baseType: !7)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !260, file: !4, line: 544, baseType: !142, size: 64, align: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !118, file: !117, line: 87, baseType: !166, size: 576, align: 64, offset: 768)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "providers", scope: !118, file: !117, line: 88, baseType: !264, size: 64, align: 64, offset: 1344)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "vsockDev", scope: !118, file: !117, line: 97, baseType: !114, size: 32, align: 32, offset: 1408)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "vsockFamily", scope: !118, file: !117, line: 98, baseType: !114, size: 32, align: 32, offset: 1440)
!281 = !{}
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 768, align: 64, elements: !296)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannelCallback", file: !163, line: 115, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcChannelCallback", file: !163, line: 94, size: 384, align: 64, elements: !285)
!285 = !{!286, !287, !292, !293, !294, !295}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !284, file: !163, line: 96, baseType: !189, size: 64, align: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !284, file: !163, line: 98, baseType: !288, size: 64, align: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcIn_Callback", file: !163, line: 90, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!112, !238}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !284, file: !163, line: 100, baseType: !142, size: 64, align: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "xdrIn", scope: !284, file: !163, line: 102, baseType: !142, size: 64, align: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "xdrOut", scope: !284, file: !163, line: 109, baseType: !142, size: 64, align: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "xdrInSize", scope: !284, file: !163, line: 114, baseType: !214, size: 64, align: 64, offset: 320)
!296 = !{!297}
!297 = !DISubrange(count: 2)
!298 = distinct !DIGlobalVariable(name: "version_sent", scope: !299, file: !109, line: 61, type: !112, isLocal: true, isDefinition: true, variable: i32* @ToolsCoreCheckReset.version_sent)
!299 = distinct !DISubprogram(name: "ToolsCoreCheckReset", scope: !109, file: !109, line: 56, type: !300, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !281)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !161, !112, !142}
!302 = !{i32 2, !"Dwarf Version", i32 4}
!303 = !{i32 2, !"Debug Info Version", i32 3}
!304 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!305 = !DILocalVariable(name: "state", arg: 1, scope: !108, file: !109, line: 283, type: !115)
!306 = !DIExpression()
!307 = !DILocation(line: 283, column: 38, scope: !108)
!308 = !DILocalVariable(name: "i", scope: !108, file: !109, line: 290, type: !214)
!309 = !DILocation(line: 290, column: 11, scope: !108)
!310 = !DILocalVariable(name: "app", scope: !108, file: !109, line: 291, type: !96)
!311 = !DILocation(line: 291, column: 17, scope: !108)
!312 = !DILocalVariable(name: "mainCtx", scope: !108, file: !109, line: 292, type: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !177, line: 48, baseType: !315)
!315 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !177, line: 48, flags: DIFlagFwdDecl)
!316 = !DILocation(line: 292, column: 18, scope: !108)
!317 = !DILocation(line: 292, column: 52, scope: !108)
!318 = !DILocation(line: 292, column: 59, scope: !108)
!319 = !DILocation(line: 292, column: 63, scope: !108)
!320 = !DILocation(line: 292, column: 28, scope: !108)
!321 = !DILocation(line: 296, column: 8, scope: !322)
!322 = distinct !DILexicalBlock(scope: !108, file: !109, line: 296, column: 8)
!323 = !DILocation(line: 296, column: 15, scope: !322)
!324 = !DILocation(line: 296, column: 27, scope: !322)
!325 = !DILocation(line: 296, column: 8, scope: !108)
!326 = !DILocation(line: 297, column: 11, scope: !327)
!327 = distinct !DILexicalBlock(scope: !322, file: !109, line: 296, column: 35)
!328 = !DILocation(line: 298, column: 24, scope: !327)
!329 = !DILocation(line: 298, column: 31, scope: !327)
!330 = !DILocation(line: 298, column: 42, scope: !327)
!331 = !DILocation(line: 298, column: 59, scope: !327)
!332 = !DILocation(line: 298, column: 66, scope: !327)
!333 = !DILocation(line: 299, column: 58, scope: !327)
!334 = !DILocation(line: 299, column: 65, scope: !327)
!335 = !DILocation(line: 298, column: 7, scope: !327)
!336 = !DILocation(line: 298, column: 14, scope: !327)
!337 = !DILocation(line: 298, column: 18, scope: !327)
!338 = !DILocation(line: 298, column: 22, scope: !327)
!339 = !DILocation(line: 300, column: 4, scope: !327)
!340 = !DILocation(line: 310, column: 12, scope: !341)
!341 = distinct !DILexicalBlock(scope: !342, file: !109, line: 310, column: 11)
!342 = distinct !DILexicalBlock(scope: !322, file: !109, line: 300, column: 11)
!343 = !DILocation(line: 310, column: 19, scope: !341)
!344 = !DILocation(line: 310, column: 23, scope: !341)
!345 = !DILocation(line: 310, column: 11, scope: !342)
!346 = !DILocation(line: 311, column: 106, scope: !347)
!347 = distinct !DILexicalBlock(scope: !341, file: !109, line: 310, column: 33)
!348 = !DILocation(line: 311, column: 113, scope: !347)
!349 = !DILocation(line: 311, column: 10, scope: !347)
!350 = !DILocation(line: 313, column: 10, scope: !347)
!351 = !DILocation(line: 313, column: 17, scope: !347)
!352 = !DILocation(line: 313, column: 21, scope: !347)
!353 = !DILocation(line: 313, column: 25, scope: !347)
!354 = !DILocation(line: 314, column: 7, scope: !347)
!355 = !DILocation(line: 315, column: 27, scope: !356)
!356 = distinct !DILexicalBlock(scope: !341, file: !109, line: 314, column: 14)
!357 = !DILocation(line: 315, column: 10, scope: !356)
!358 = !DILocation(line: 315, column: 17, scope: !356)
!359 = !DILocation(line: 315, column: 21, scope: !356)
!360 = !DILocation(line: 315, column: 25, scope: !356)
!361 = !DILocation(line: 317, column: 35, scope: !342)
!362 = !DILocation(line: 317, column: 13, scope: !342)
!363 = !DILocation(line: 317, column: 11, scope: !342)
!364 = !DILocation(line: 318, column: 11, scope: !365)
!365 = distinct !DILexicalBlock(scope: !342, file: !109, line: 318, column: 11)
!366 = !DILocation(line: 318, column: 15, scope: !365)
!367 = !DILocation(line: 318, column: 11, scope: !342)
!368 = !DILocation(line: 319, column: 107, scope: !369)
!369 = distinct !DILexicalBlock(scope: !365, file: !109, line: 318, column: 23)
!370 = !DILocation(line: 319, column: 114, scope: !369)
!371 = !DILocation(line: 319, column: 10, scope: !369)
!372 = !DILocation(line: 320, column: 10, scope: !369)
!373 = !DILocation(line: 324, column: 8, scope: !374)
!374 = distinct !DILexicalBlock(scope: !108, file: !109, line: 324, column: 8)
!375 = !DILocation(line: 324, column: 15, scope: !374)
!376 = !DILocation(line: 324, column: 19, scope: !374)
!377 = !DILocation(line: 324, column: 8, scope: !108)
!378 = !DILocation(line: 325, column: 24, scope: !379)
!379 = distinct !DILexicalBlock(scope: !374, file: !109, line: 324, column: 24)
!380 = !DILocation(line: 325, column: 31, scope: !379)
!381 = !DILocation(line: 325, column: 35, scope: !379)
!382 = !DILocation(line: 326, column: 24, scope: !379)
!383 = !DILocation(line: 327, column: 24, scope: !379)
!384 = !DILocation(line: 328, column: 25, scope: !379)
!385 = !DILocation(line: 328, column: 32, scope: !379)
!386 = !DILocation(line: 328, column: 24, scope: !379)
!387 = !DILocation(line: 330, column: 24, scope: !379)
!388 = !DILocation(line: 325, column: 7, scope: !379)
!389 = !DILocation(line: 333, column: 14, scope: !390)
!390 = distinct !DILexicalBlock(scope: !379, file: !109, line: 333, column: 7)
!391 = !DILocation(line: 333, column: 12, scope: !390)
!392 = !DILocation(line: 333, column: 19, scope: !393)
!393 = !DILexicalBlockFile(scope: !394, file: !109, discriminator: 1)
!394 = distinct !DILexicalBlock(scope: !390, file: !109, line: 333, column: 7)
!395 = !DILocation(line: 333, column: 21, scope: !393)
!396 = !DILocation(line: 333, column: 7, scope: !393)
!397 = !DILocalVariable(name: "rpc", scope: !398, file: !109, line: 334, type: !399)
!398 = distinct !DILexicalBlock(scope: !394, file: !109, line: 333, column: 62)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!400 = !DILocation(line: 334, column: 30, scope: !398)
!401 = !DILocation(line: 334, column: 42, scope: !398)
!402 = !DILocation(line: 334, column: 37, scope: !398)
!403 = !DILocation(line: 335, column: 28, scope: !398)
!404 = !DILocation(line: 335, column: 10, scope: !398)
!405 = !DILocation(line: 335, column: 15, scope: !398)
!406 = !DILocation(line: 335, column: 26, scope: !398)
!407 = !DILocation(line: 336, column: 38, scope: !398)
!408 = !DILocation(line: 336, column: 45, scope: !398)
!409 = !DILocation(line: 336, column: 49, scope: !398)
!410 = !DILocation(line: 336, column: 54, scope: !398)
!411 = !DILocation(line: 336, column: 10, scope: !398)
!412 = !DILocation(line: 337, column: 7, scope: !398)
!413 = !DILocation(line: 333, column: 58, scope: !414)
!414 = !DILexicalBlockFile(scope: !394, file: !109, discriminator: 2)
!415 = !DILocation(line: 333, column: 7, scope: !414)
!416 = distinct !{!416, !417}
!417 = !DILocation(line: 333, column: 7, scope: !379)
!418 = !DILocation(line: 338, column: 4, scope: !379)
!419 = !DILocation(line: 340, column: 4, scope: !108)
!420 = !DILocation(line: 341, column: 1, scope: !108)
!421 = distinct !DISubprogram(name: "ToolsCoreRpcCapReg", scope: !109, file: !109, line: 124, type: !290, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !281)
!422 = !DILocalVariable(name: "data", arg: 1, scope: !421, file: !109, line: 124, type: !238)
!423 = !DILocation(line: 124, column: 31, scope: !421)
!424 = !DILocalVariable(name: "confPath", scope: !421, file: !109, line: 126, type: !213)
!425 = !DILocation(line: 126, column: 10, scope: !421)
!426 = !DILocation(line: 126, column: 21, scope: !421)
!427 = !DILocalVariable(name: "msg", scope: !421, file: !109, line: 127, type: !121)
!428 = !DILocation(line: 127, column: 11, scope: !421)
!429 = !DILocalVariable(name: "pcaps", scope: !421, file: !109, line: 128, type: !264)
!430 = !DILocation(line: 128, column: 12, scope: !421)
!431 = !DILocalVariable(name: "state", scope: !421, file: !109, line: 129, type: !115)
!432 = !DILocation(line: 129, column: 23, scope: !421)
!433 = !DILocation(line: 129, column: 31, scope: !421)
!434 = !DILocation(line: 129, column: 37, scope: !421)
!435 = !DILocation(line: 131, column: 26, scope: !421)
!436 = !DILocation(line: 131, column: 33, scope: !421)
!437 = !DILocation(line: 131, column: 37, scope: !421)
!438 = !DILocation(line: 133, column: 27, scope: !421)
!439 = !DILocation(line: 133, column: 34, scope: !421)
!440 = !DILocation(line: 131, column: 4, scope: !421)
!441 = !DILocation(line: 137, column: 8, scope: !442)
!442 = distinct !DILexicalBlock(scope: !421, file: !109, line: 137, column: 8)
!443 = !DILocation(line: 137, column: 14, scope: !442)
!444 = !DILocation(line: 137, column: 8, scope: !421)
!445 = !DILocation(line: 138, column: 33, scope: !446)
!446 = distinct !DILexicalBlock(scope: !442, file: !109, line: 137, column: 22)
!447 = !DILocation(line: 138, column: 40, scope: !446)
!448 = !DILocation(line: 138, column: 44, scope: !446)
!449 = !DILocation(line: 138, column: 49, scope: !446)
!450 = !DILocation(line: 138, column: 7, scope: !446)
!451 = !DILocation(line: 139, column: 20, scope: !446)
!452 = !DILocation(line: 139, column: 7, scope: !446)
!453 = !DILocation(line: 140, column: 4, scope: !446)
!454 = !DILocation(line: 143, column: 70, scope: !421)
!455 = !DILocation(line: 143, column: 10, scope: !421)
!456 = !DILocation(line: 143, column: 8, scope: !421)
!457 = !DILocation(line: 144, column: 25, scope: !458)
!458 = distinct !DILexicalBlock(scope: !421, file: !109, line: 144, column: 8)
!459 = !DILocation(line: 144, column: 32, scope: !458)
!460 = !DILocation(line: 144, column: 36, scope: !458)
!461 = !DILocation(line: 144, column: 41, scope: !458)
!462 = !DILocation(line: 144, column: 53, scope: !458)
!463 = !DILocation(line: 144, column: 46, scope: !458)
!464 = !DILocation(line: 144, column: 58, scope: !458)
!465 = !DILocation(line: 144, column: 9, scope: !466)
!466 = !DILexicalBlockFile(scope: !458, file: !109, discriminator: 1)
!467 = !DILocation(line: 144, column: 9, scope: !458)
!468 = !DILocation(line: 144, column: 8, scope: !421)
!469 = !DILocation(line: 145, column: 7, scope: !470)
!470 = distinct !DILexicalBlock(scope: !458, file: !109, line: 144, column: 75)
!471 = !DILocation(line: 146, column: 4, scope: !470)
!472 = !DILocation(line: 147, column: 11, scope: !421)
!473 = !DILocation(line: 147, column: 4, scope: !421)
!474 = !DILocation(line: 148, column: 8, scope: !421)
!475 = !DILocation(line: 151, column: 8, scope: !476)
!476 = distinct !DILexicalBlock(scope: !421, file: !109, line: 151, column: 8)
!477 = !DILocation(line: 151, column: 15, scope: !476)
!478 = !DILocation(line: 151, column: 8, scope: !421)
!479 = !DILocalVariable(name: "version", scope: !480, file: !109, line: 152, type: !481)
!480 = distinct !DILexicalBlock(scope: !476, file: !109, line: 151, column: 28)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !482, line: 173, baseType: !483)
!482 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1393")
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !484, line: 51, baseType: !105)
!484 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1393")
!485 = !DILocation(line: 152, column: 14, scope: !480)
!486 = !DILocalVariable(name: "type", scope: !480, file: !109, line: 153, type: !481)
!487 = !DILocation(line: 153, column: 14, scope: !480)
!488 = !DILocalVariable(name: "result", scope: !480, file: !109, line: 154, type: !213)
!489 = !DILocation(line: 154, column: 13, scope: !480)
!490 = !DILocalVariable(name: "resultLen", scope: !480, file: !109, line: 155, type: !214)
!491 = !DILocation(line: 155, column: 14, scope: !480)
!492 = !DILocalVariable(name: "toolsVersion", scope: !480, file: !109, line: 156, type: !121)
!493 = !DILocation(line: 156, column: 14, scope: !480)
!494 = !DILocalVariable(name: "hideVersion", scope: !480, file: !109, line: 157, type: !112)
!495 = !DILocation(line: 157, column: 16, scope: !480)
!496 = !DILocation(line: 157, column: 53, scope: !480)
!497 = !DILocation(line: 157, column: 60, scope: !480)
!498 = !DILocation(line: 157, column: 64, scope: !480)
!499 = !DILocation(line: 157, column: 30, scope: !480)
!500 = !DILocation(line: 166, column: 12, scope: !480)
!501 = !DILocation(line: 179, column: 17, scope: !480)
!502 = !DILocation(line: 179, column: 15, scope: !480)
!503 = !DILocation(line: 185, column: 69, scope: !480)
!504 = !DILocation(line: 185, column: 78, scope: !480)
!505 = !DILocation(line: 185, column: 22, scope: !480)
!506 = !DILocation(line: 185, column: 20, scope: !480)
!507 = !DILocation(line: 187, column: 28, scope: !508)
!508 = distinct !DILexicalBlock(scope: !480, file: !109, line: 187, column: 11)
!509 = !DILocation(line: 187, column: 35, scope: !508)
!510 = !DILocation(line: 187, column: 39, scope: !508)
!511 = !DILocation(line: 187, column: 44, scope: !508)
!512 = !DILocation(line: 187, column: 65, scope: !508)
!513 = !DILocation(line: 187, column: 58, scope: !508)
!514 = !DILocation(line: 187, column: 79, scope: !508)
!515 = !DILocation(line: 187, column: 12, scope: !516)
!516 = !DILexicalBlockFile(scope: !508, file: !109, discriminator: 1)
!517 = !DILocation(line: 187, column: 12, scope: !508)
!518 = !DILocation(line: 187, column: 11, scope: !480)
!519 = !DILocalVariable(name: "gerror", scope: !520, file: !109, line: 189, type: !521)
!520 = distinct !DILexicalBlock(scope: !508, file: !109, line: 188, column: 50)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64, align: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !523, line: 42, baseType: !524)
!523 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/open-vm-tools/line1393")
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !523, line: 44, size: 128, align: 64, elements: !525)
!525 = !{!526, !531, !532}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !524, file: !523, line: 46, baseType: !527, size: 32, align: 32)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !528, line: 36, baseType: !529)
!528 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/open-vm-tools/line1393")
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !530, line: 45, baseType: !105)
!530 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/open-vm-tools/line1393")
!531 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !524, file: !523, line: 47, baseType: !113, size: 32, align: 32, offset: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !524, file: !523, line: 48, baseType: !121, size: 64, align: 64, offset: 64)
!533 = !DILocation(line: 189, column: 18, scope: !520)
!534 = !DILocalVariable(name: "disableVersion", scope: !520, file: !109, line: 190, type: !112)
!535 = !DILocation(line: 190, column: 19, scope: !520)
!536 = !DILocation(line: 191, column: 18, scope: !520)
!537 = !DILocation(line: 191, column: 10, scope: !520)
!538 = !DILocation(line: 192, column: 17, scope: !520)
!539 = !DILocation(line: 192, column: 10, scope: !520)
!540 = !DILocation(line: 198, column: 50, scope: !520)
!541 = !DILocation(line: 198, column: 57, scope: !520)
!542 = !DILocation(line: 198, column: 61, scope: !520)
!543 = !DILocation(line: 198, column: 27, scope: !520)
!544 = !DILocation(line: 198, column: 25, scope: !520)
!545 = !DILocation(line: 204, column: 14, scope: !546)
!546 = distinct !DILexicalBlock(scope: !520, file: !109, line: 204, column: 14)
!547 = !DILocation(line: 204, column: 19, scope: !546)
!548 = !DILocation(line: 204, column: 37, scope: !546)
!549 = !DILocation(line: 204, column: 40, scope: !550)
!550 = !DILexicalBlockFile(scope: !546, file: !109, discriminator: 1)
!551 = !DILocation(line: 204, column: 47, scope: !550)
!552 = !DILocation(line: 204, column: 14, scope: !550)
!553 = !DILocation(line: 205, column: 95, scope: !554)
!554 = distinct !DILexicalBlock(scope: !546, file: !109, line: 204, column: 55)
!555 = !DILocation(line: 205, column: 103, scope: !554)
!556 = !DILocation(line: 205, column: 13, scope: !554)
!557 = !DILocation(line: 206, column: 13, scope: !554)
!558 = !DILocation(line: 207, column: 28, scope: !554)
!559 = !DILocation(line: 208, column: 10, scope: !554)
!560 = !DILocation(line: 210, column: 20, scope: !520)
!561 = !DILocation(line: 210, column: 18, scope: !520)
!562 = !DILocation(line: 211, column: 65, scope: !520)
!563 = !DILocation(line: 211, column: 25, scope: !520)
!564 = !DILocation(line: 211, column: 23, scope: !520)
!565 = !DILocation(line: 213, column: 31, scope: !566)
!566 = distinct !DILexicalBlock(scope: !520, file: !109, line: 213, column: 14)
!567 = !DILocation(line: 213, column: 38, scope: !566)
!568 = !DILocation(line: 213, column: 42, scope: !566)
!569 = !DILocation(line: 213, column: 47, scope: !566)
!570 = !DILocation(line: 213, column: 68, scope: !566)
!571 = !DILocation(line: 213, column: 61, scope: !566)
!572 = !DILocation(line: 213, column: 82, scope: !566)
!573 = !DILocation(line: 213, column: 15, scope: !574)
!574 = !DILexicalBlockFile(scope: !566, file: !109, discriminator: 1)
!575 = !DILocation(line: 213, column: 15, scope: !566)
!576 = !DILocation(line: 213, column: 14, scope: !520)
!577 = !DILocation(line: 215, column: 91, scope: !578)
!578 = distinct !DILexicalBlock(scope: !566, file: !109, line: 214, column: 53)
!579 = !DILocation(line: 215, column: 13, scope: !578)
!580 = !DILocation(line: 216, column: 10, scope: !578)
!581 = !DILocation(line: 217, column: 7, scope: !520)
!582 = !DILocation(line: 218, column: 15, scope: !480)
!583 = !DILocation(line: 218, column: 7, scope: !480)
!584 = !DILocation(line: 219, column: 14, scope: !480)
!585 = !DILocation(line: 219, column: 7, scope: !480)
!586 = !DILocation(line: 220, column: 4, scope: !480)
!587 = !DILocation(line: 222, column: 4, scope: !421)
!588 = !DILocation(line: 222, column: 11, scope: !421)
!589 = !DILocation(line: 222, column: 26, scope: !421)
!590 = !DILocation(line: 223, column: 9, scope: !421)
!591 = !DILocation(line: 223, column: 4, scope: !421)
!592 = !DILocation(line: 224, column: 33, scope: !421)
!593 = !DILocation(line: 224, column: 11, scope: !421)
!594 = !DILocation(line: 224, column: 4, scope: !421)
!595 = distinct !DISubprogram(name: "ToolsCoreRpcSetOption", scope: !109, file: !109, line: 238, type: !290, isLocal: true, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !281)
!596 = !DILocalVariable(name: "data", arg: 1, scope: !595, file: !109, line: 238, type: !238)
!597 = !DILocation(line: 238, column: 34, scope: !595)
!598 = !DILocalVariable(name: "retVal", scope: !595, file: !109, line: 241, type: !112)
!599 = !DILocation(line: 241, column: 13, scope: !595)
!600 = !DILocalVariable(name: "option", scope: !595, file: !109, line: 242, type: !213)
!601 = !DILocation(line: 242, column: 10, scope: !595)
!602 = !DILocalVariable(name: "value", scope: !595, file: !109, line: 243, type: !213)
!603 = !DILocation(line: 243, column: 10, scope: !595)
!604 = !DILocalVariable(name: "index", scope: !595, file: !109, line: 244, type: !105)
!605 = !DILocation(line: 244, column: 17, scope: !595)
!606 = !DILocalVariable(name: "state", scope: !595, file: !109, line: 245, type: !115)
!607 = !DILocation(line: 245, column: 23, scope: !595)
!608 = !DILocation(line: 245, column: 31, scope: !595)
!609 = !DILocation(line: 245, column: 37, scope: !595)
!610 = !DILocation(line: 248, column: 42, scope: !595)
!611 = !DILocation(line: 248, column: 48, scope: !595)
!612 = !DILocation(line: 248, column: 13, scope: !595)
!613 = !DILocation(line: 248, column: 11, scope: !595)
!614 = !DILocation(line: 250, column: 9, scope: !595)
!615 = !DILocation(line: 251, column: 41, scope: !595)
!616 = !DILocation(line: 251, column: 47, scope: !595)
!617 = !DILocation(line: 251, column: 12, scope: !595)
!618 = !DILocation(line: 251, column: 10, scope: !595)
!619 = !DILocation(line: 253, column: 8, scope: !620)
!620 = distinct !DILexicalBlock(scope: !595, file: !109, line: 253, column: 8)
!621 = !DILocation(line: 253, column: 15, scope: !620)
!622 = !DILocation(line: 253, column: 22, scope: !620)
!623 = !DILocation(line: 253, column: 25, scope: !624)
!624 = !DILexicalBlockFile(scope: !620, file: !109, discriminator: 1)
!625 = !DILocation(line: 253, column: 31, scope: !624)
!626 = !DILocation(line: 253, column: 39, scope: !624)
!627 = !DILocation(line: 253, column: 49, scope: !628)
!628 = !DILexicalBlockFile(scope: !620, file: !109, discriminator: 2)
!629 = !DILocation(line: 253, column: 42, scope: !628)
!630 = !DILocation(line: 253, column: 56, scope: !628)
!631 = !DILocation(line: 253, column: 8, scope: !628)
!632 = !DILocation(line: 255, column: 79, scope: !633)
!633 = distinct !DILexicalBlock(scope: !620, file: !109, line: 253, column: 62)
!634 = !DILocation(line: 255, column: 87, scope: !633)
!635 = !DILocation(line: 255, column: 7, scope: !633)
!636 = !DILocation(line: 256, column: 29, scope: !633)
!637 = !DILocation(line: 256, column: 36, scope: !633)
!638 = !DILocation(line: 256, column: 40, scope: !633)
!639 = !DILocation(line: 258, column: 30, scope: !633)
!640 = !DILocation(line: 258, column: 37, scope: !633)
!641 = !DILocation(line: 259, column: 29, scope: !633)
!642 = !DILocation(line: 260, column: 29, scope: !633)
!643 = !DILocation(line: 256, column: 7, scope: !633)
!644 = !DILocation(line: 262, column: 4, scope: !633)
!645 = !DILocation(line: 264, column: 12, scope: !595)
!646 = !DILocation(line: 264, column: 4, scope: !595)
!647 = !DILocation(line: 265, column: 12, scope: !595)
!648 = !DILocation(line: 265, column: 4, scope: !595)
!649 = !DILocation(line: 267, column: 26, scope: !595)
!650 = !DILocation(line: 267, column: 32, scope: !595)
!651 = !DILocation(line: 267, column: 75, scope: !595)
!652 = !DILocation(line: 267, column: 4, scope: !595)
!653 = !DILocation(line: 269, column: 11, scope: !595)
!654 = !DILocation(line: 269, column: 4, scope: !595)
!655 = !DILocalVariable(name: "chan", arg: 1, scope: !299, file: !109, line: 56, type: !161)
!656 = !DILocation(line: 56, column: 33, scope: !299)
!657 = !DILocalVariable(name: "success", arg: 2, scope: !299, file: !109, line: 57, type: !112)
!658 = !DILocation(line: 57, column: 30, scope: !299)
!659 = !DILocalVariable(name: "_state", arg: 3, scope: !299, file: !109, line: 58, type: !142)
!660 = !DILocation(line: 58, column: 30, scope: !299)
!661 = !DILocalVariable(name: "state", scope: !299, file: !109, line: 60, type: !115)
!662 = !DILocation(line: 60, column: 23, scope: !299)
!663 = !DILocation(line: 60, column: 31, scope: !299)
!664 = !DILocation(line: 66, column: 8, scope: !665)
!665 = distinct !DILexicalBlock(scope: !299, file: !109, line: 66, column: 8)
!666 = !DILocation(line: 66, column: 8, scope: !299)
!667 = !DILocalVariable(name: "app", scope: !668, file: !109, line: 67, type: !96)
!668 = distinct !DILexicalBlock(scope: !665, file: !109, line: 66, column: 17)
!669 = !DILocation(line: 67, column: 20, scope: !668)
!670 = !DILocalVariable(name: "msg", scope: !668, file: !109, line: 68, type: !121)
!671 = !DILocation(line: 68, column: 14, scope: !668)
!672 = !DILocation(line: 70, column: 35, scope: !668)
!673 = !DILocation(line: 70, column: 13, scope: !668)
!674 = !DILocation(line: 70, column: 11, scope: !668)
!675 = !DILocation(line: 71, column: 11, scope: !676)
!676 = distinct !DILexicalBlock(scope: !668, file: !109, line: 71, column: 11)
!677 = !DILocation(line: 71, column: 15, scope: !676)
!678 = !DILocation(line: 71, column: 11, scope: !668)
!679 = !DILocation(line: 72, column: 16, scope: !680)
!680 = distinct !DILexicalBlock(scope: !676, file: !109, line: 71, column: 23)
!681 = !DILocation(line: 72, column: 23, scope: !680)
!682 = !DILocation(line: 72, column: 14, scope: !680)
!683 = !DILocation(line: 73, column: 7, scope: !680)
!684 = !DILocation(line: 75, column: 63, scope: !668)
!685 = !DILocation(line: 75, column: 13, scope: !668)
!686 = !DILocation(line: 75, column: 11, scope: !668)
!687 = !DILocation(line: 76, column: 28, scope: !688)
!688 = distinct !DILexicalBlock(scope: !668, file: !109, line: 76, column: 11)
!689 = !DILocation(line: 76, column: 35, scope: !688)
!690 = !DILocation(line: 76, column: 39, scope: !688)
!691 = !DILocation(line: 76, column: 44, scope: !688)
!692 = !DILocation(line: 76, column: 56, scope: !688)
!693 = !DILocation(line: 76, column: 49, scope: !688)
!694 = !DILocation(line: 76, column: 61, scope: !688)
!695 = !DILocation(line: 76, column: 12, scope: !696)
!696 = !DILexicalBlockFile(scope: !688, file: !109, discriminator: 1)
!697 = !DILocation(line: 76, column: 12, scope: !688)
!698 = !DILocation(line: 76, column: 11, scope: !668)
!699 = !DILocation(line: 77, column: 10, scope: !700)
!700 = distinct !DILexicalBlock(scope: !688, file: !109, line: 76, column: 78)
!701 = !DILocation(line: 79, column: 7, scope: !700)
!702 = !DILocation(line: 80, column: 14, scope: !668)
!703 = !DILocation(line: 80, column: 7, scope: !668)
!704 = !DILocation(line: 82, column: 12, scope: !705)
!705 = distinct !DILexicalBlock(scope: !668, file: !109, line: 82, column: 11)
!706 = !DILocation(line: 82, column: 11, scope: !668)
!707 = !DILocation(line: 88, column: 32, scope: !708)
!708 = distinct !DILexicalBlock(scope: !705, file: !109, line: 82, column: 26)
!709 = !DILocation(line: 87, column: 16, scope: !708)
!710 = !DILocation(line: 87, column: 14, scope: !708)
!711 = !DILocation(line: 89, column: 26, scope: !708)
!712 = !DILocation(line: 89, column: 33, scope: !708)
!713 = !DILocation(line: 89, column: 37, scope: !708)
!714 = !DILocation(line: 89, column: 42, scope: !708)
!715 = !DILocation(line: 89, column: 54, scope: !708)
!716 = !DILocation(line: 89, column: 47, scope: !708)
!717 = !DILocation(line: 89, column: 59, scope: !708)
!718 = !DILocation(line: 89, column: 10, scope: !719)
!719 = !DILexicalBlockFile(scope: !708, file: !109, discriminator: 1)
!720 = !DILocation(line: 90, column: 17, scope: !708)
!721 = !DILocation(line: 90, column: 10, scope: !708)
!722 = !DILocation(line: 92, column: 23, scope: !708)
!723 = !DILocation(line: 93, column: 7, scope: !708)
!724 = !DILocation(line: 95, column: 29, scope: !668)
!725 = !DILocation(line: 95, column: 36, scope: !668)
!726 = !DILocation(line: 95, column: 40, scope: !668)
!727 = !DILocation(line: 97, column: 30, scope: !668)
!728 = !DILocation(line: 97, column: 37, scope: !668)
!729 = !DILocation(line: 95, column: 7, scope: !668)
!730 = !DILocation(line: 99, column: 11, scope: !731)
!731 = distinct !DILexicalBlock(scope: !668, file: !109, line: 99, column: 11)
!732 = !DILocation(line: 99, column: 18, scope: !731)
!733 = !DILocation(line: 99, column: 11, scope: !668)
!734 = !DILocation(line: 103, column: 39, scope: !735)
!735 = distinct !DILexicalBlock(scope: !731, file: !109, line: 99, column: 31)
!736 = !DILocation(line: 103, column: 10, scope: !735)
!737 = !DILocation(line: 104, column: 36, scope: !735)
!738 = !DILocation(line: 104, column: 10, scope: !735)
!739 = !DILocation(line: 105, column: 7, scope: !735)
!740 = !DILocation(line: 107, column: 4, scope: !668)
!741 = !DILocation(line: 108, column: 7, scope: !742)
!742 = distinct !DILexicalBlock(scope: !665, file: !109, line: 107, column: 11)
!743 = distinct !{!743, !741}
!744 = !DILocation(line: 108, column: 25, scope: !745)
!745 = !DILexicalBlockFile(scope: !746, file: !109, discriminator: 1)
!746 = distinct !DILexicalBlock(scope: !742, file: !109, line: 108, column: 10)
!747 = !DILocation(line: 108, column: 32, scope: !745)
!748 = !DILocation(line: 108, column: 38, scope: !745)
!749 = !DILocation(line: 108, column: 48, scope: !745)
!750 = !DILocation(line: 108, column: 28, scope: !745)
!751 = !DILocation(line: 108, column: 35, scope: !745)
!752 = !DILocation(line: 108, column: 41, scope: !745)
!753 = !DILocation(line: 108, column: 9, scope: !745)
!754 = !DILocation(line: 108, column: 52, scope: !745)
!755 = !DILocation(line: 110, column: 1, scope: !299)
!756 = distinct !DISubprogram(name: "ToolsCore_SetCapabilities", scope: !109, file: !109, line: 353, type: !757, isLocal: false, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !281)
!757 = !DISubroutineType(types: !758)
!758 = !{null, !161, !264, !112}
!759 = !DILocalVariable(name: "chan", arg: 1, scope: !756, file: !109, line: 353, type: !161)
!760 = !DILocation(line: 353, column: 39, scope: !756)
!761 = !DILocalVariable(name: "caps", arg: 2, scope: !756, file: !109, line: 354, type: !264)
!762 = !DILocation(line: 354, column: 35, scope: !756)
!763 = !DILocalVariable(name: "set", arg: 3, scope: !756, file: !109, line: 355, type: !112)
!764 = !DILocation(line: 355, column: 36, scope: !756)
!765 = !DILocalVariable(name: "result", scope: !756, file: !109, line: 357, type: !213)
!766 = !DILocation(line: 357, column: 10, scope: !756)
!767 = !DILocalVariable(name: "resultLen", scope: !756, file: !109, line: 358, type: !214)
!768 = !DILocation(line: 358, column: 11, scope: !756)
!769 = !DILocalVariable(name: "i", scope: !756, file: !109, line: 359, type: !104)
!770 = !DILocation(line: 359, column: 10, scope: !756)
!771 = !DILocalVariable(name: "newcaps", scope: !756, file: !109, line: 360, type: !121)
!772 = !DILocation(line: 360, column: 11, scope: !756)
!773 = !DILocation(line: 362, column: 11, scope: !774)
!774 = distinct !DILexicalBlock(scope: !756, file: !109, line: 362, column: 4)
!775 = !DILocation(line: 362, column: 9, scope: !774)
!776 = !DILocation(line: 362, column: 16, scope: !777)
!777 = !DILexicalBlockFile(scope: !778, file: !109, discriminator: 1)
!778 = distinct !DILexicalBlock(scope: !774, file: !109, line: 362, column: 4)
!779 = !DILocation(line: 362, column: 20, scope: !777)
!780 = !DILocation(line: 362, column: 26, scope: !777)
!781 = !DILocation(line: 362, column: 18, scope: !777)
!782 = !DILocation(line: 362, column: 4, scope: !777)
!783 = !DILocalVariable(name: "tmp", scope: !784, file: !109, line: 363, type: !121)
!784 = distinct !DILexicalBlock(scope: !778, file: !109, line: 362, column: 36)
!785 = !DILocation(line: 363, column: 14, scope: !784)
!786 = !DILocalVariable(name: "cap", scope: !784, file: !109, line: 364, type: !89)
!787 = !DILocation(line: 364, column: 27, scope: !784)
!788 = !DILocation(line: 364, column: 83, scope: !784)
!789 = !DILocation(line: 364, column: 35, scope: !784)
!790 = !DILocation(line: 364, column: 68, scope: !784)
!791 = !DILocation(line: 364, column: 75, scope: !784)
!792 = !DILocation(line: 364, column: 36, scope: !784)
!793 = !DILocation(line: 365, column: 15, scope: !784)
!794 = !DILocation(line: 365, column: 20, scope: !784)
!795 = !DILocation(line: 365, column: 7, scope: !784)
!796 = !DILocation(line: 367, column: 17, scope: !797)
!797 = distinct !DILexicalBlock(scope: !784, file: !109, line: 365, column: 26)
!798 = !DILocation(line: 369, column: 32, scope: !797)
!799 = !DILocation(line: 369, column: 37, scope: !797)
!800 = !DILocation(line: 370, column: 32, scope: !797)
!801 = !DILocation(line: 370, column: 38, scope: !802)
!802 = !DILexicalBlockFile(scope: !797, file: !109, discriminator: 1)
!803 = !DILocation(line: 370, column: 43, scope: !802)
!804 = !DILocation(line: 370, column: 32, scope: !802)
!805 = !DILocation(line: 370, column: 32, scope: !806)
!806 = !DILexicalBlockFile(scope: !797, file: !109, discriminator: 2)
!807 = !DILocation(line: 370, column: 32, scope: !808)
!808 = !DILexicalBlockFile(scope: !797, file: !109, discriminator: 3)
!809 = !DILocation(line: 368, column: 16, scope: !797)
!810 = !DILocation(line: 368, column: 14, scope: !797)
!811 = !DILocation(line: 371, column: 31, scope: !812)
!812 = distinct !DILexicalBlock(scope: !797, file: !109, line: 371, column: 14)
!813 = !DILocation(line: 371, column: 37, scope: !812)
!814 = !DILocation(line: 371, column: 49, scope: !812)
!815 = !DILocation(line: 371, column: 42, scope: !812)
!816 = !DILocation(line: 371, column: 54, scope: !812)
!817 = !DILocation(line: 371, column: 15, scope: !818)
!818 = !DILexicalBlockFile(scope: !812, file: !109, discriminator: 1)
!819 = !DILocation(line: 371, column: 15, scope: !812)
!820 = !DILocation(line: 371, column: 14, scope: !797)
!821 = !DILocation(line: 372, column: 90, scope: !822)
!822 = distinct !DILexicalBlock(scope: !812, file: !109, line: 371, column: 81)
!823 = !DILocation(line: 372, column: 95, scope: !822)
!824 = !DILocation(line: 372, column: 101, scope: !822)
!825 = !DILocation(line: 372, column: 13, scope: !822)
!826 = !DILocation(line: 373, column: 10, scope: !822)
!827 = !DILocation(line: 374, column: 18, scope: !797)
!828 = !DILocation(line: 374, column: 10, scope: !797)
!829 = !DILocation(line: 375, column: 17, scope: !797)
!830 = !DILocation(line: 375, column: 10, scope: !797)
!831 = !DILocation(line: 376, column: 10, scope: !797)
!832 = !DILocation(line: 387, column: 14, scope: !833)
!833 = distinct !DILexicalBlock(scope: !797, file: !109, line: 387, column: 14)
!834 = !DILocation(line: 387, column: 14, scope: !797)
!835 = !DILocation(line: 388, column: 59, scope: !836)
!836 = distinct !DILexicalBlock(scope: !833, file: !109, line: 387, column: 19)
!837 = !DILocation(line: 388, column: 64, scope: !836)
!838 = !DILocation(line: 388, column: 19, scope: !836)
!839 = !DILocation(line: 388, column: 17, scope: !836)
!840 = !DILocation(line: 389, column: 34, scope: !841)
!841 = distinct !DILexicalBlock(scope: !836, file: !109, line: 389, column: 17)
!842 = !DILocation(line: 389, column: 40, scope: !841)
!843 = !DILocation(line: 389, column: 52, scope: !841)
!844 = !DILocation(line: 389, column: 45, scope: !841)
!845 = !DILocation(line: 389, column: 18, scope: !846)
!846 = !DILexicalBlockFile(scope: !841, file: !109, discriminator: 1)
!847 = !DILocation(line: 389, column: 18, scope: !841)
!848 = !DILocation(line: 389, column: 17, scope: !836)
!849 = !DILocation(line: 390, column: 93, scope: !850)
!850 = distinct !DILexicalBlock(scope: !841, file: !109, line: 389, column: 80)
!851 = !DILocation(line: 390, column: 98, scope: !850)
!852 = !DILocation(line: 390, column: 104, scope: !850)
!853 = !DILocation(line: 390, column: 16, scope: !850)
!854 = !DILocation(line: 391, column: 13, scope: !850)
!855 = !DILocation(line: 392, column: 21, scope: !836)
!856 = !DILocation(line: 392, column: 13, scope: !836)
!857 = !DILocation(line: 393, column: 20, scope: !836)
!858 = !DILocation(line: 393, column: 13, scope: !836)
!859 = !DILocation(line: 394, column: 10, scope: !836)
!860 = !DILocation(line: 395, column: 10, scope: !797)
!861 = !DILocation(line: 398, column: 14, scope: !862)
!862 = distinct !DILexicalBlock(scope: !797, file: !109, line: 398, column: 14)
!863 = !DILocation(line: 398, column: 22, scope: !862)
!864 = !DILocation(line: 398, column: 14, scope: !797)
!865 = !DILocation(line: 399, column: 23, scope: !866)
!866 = distinct !DILexicalBlock(scope: !862, file: !109, line: 398, column: 30)
!867 = !DILocation(line: 399, column: 21, scope: !866)
!868 = !DILocation(line: 400, column: 10, scope: !866)
!869 = !DILocation(line: 402, column: 32, scope: !797)
!870 = !DILocation(line: 403, column: 32, scope: !797)
!871 = !DILocation(line: 403, column: 37, scope: !797)
!872 = !DILocation(line: 404, column: 32, scope: !797)
!873 = !DILocation(line: 404, column: 38, scope: !802)
!874 = !DILocation(line: 404, column: 43, scope: !802)
!875 = !DILocation(line: 404, column: 32, scope: !802)
!876 = !DILocation(line: 404, column: 32, scope: !806)
!877 = !DILocation(line: 404, column: 32, scope: !808)
!878 = !DILocation(line: 401, column: 16, scope: !797)
!879 = !DILocation(line: 401, column: 14, scope: !797)
!880 = !DILocation(line: 405, column: 17, scope: !797)
!881 = !DILocation(line: 405, column: 10, scope: !797)
!882 = !DILocation(line: 406, column: 20, scope: !797)
!883 = !DILocation(line: 406, column: 18, scope: !797)
!884 = !DILocation(line: 407, column: 10, scope: !797)
!885 = !DILocation(line: 410, column: 10, scope: !797)
!886 = distinct !{!886, !885}
!887 = !DILocation(line: 410, column: 86, scope: !888)
!888 = !DILexicalBlockFile(scope: !889, file: !109, discriminator: 1)
!889 = distinct !DILexicalBlock(scope: !797, file: !109, line: 410, column: 13)
!890 = !DILocation(line: 410, column: 91, scope: !888)
!891 = !DILocation(line: 410, column: 15, scope: !888)
!892 = !DILocation(line: 410, column: 98, scope: !888)
!893 = !DILocation(line: 410, column: 98, scope: !894)
!894 = !DILexicalBlockFile(scope: !895, file: !109, discriminator: 2)
!895 = distinct !DILexicalBlock(scope: !896, file: !109, line: 410, column: 98)
!896 = distinct !DILexicalBlock(scope: !889, file: !109, line: 410, column: 98)
!897 = distinct !{!897, !898}
!898 = !DILocation(line: 410, column: 98, scope: !889)
!899 = !DILocation(line: 411, column: 7, scope: !797)
!900 = !DILocation(line: 412, column: 4, scope: !784)
!901 = !DILocation(line: 362, column: 32, scope: !902)
!902 = !DILexicalBlockFile(scope: !778, file: !109, discriminator: 2)
!903 = !DILocation(line: 362, column: 4, scope: !902)
!904 = distinct !{!904, !905}
!905 = !DILocation(line: 362, column: 4, scope: !756)
!906 = !DILocation(line: 414, column: 8, scope: !907)
!907 = distinct !DILexicalBlock(scope: !756, file: !109, line: 414, column: 8)
!908 = !DILocation(line: 414, column: 16, scope: !907)
!909 = !DILocation(line: 414, column: 8, scope: !756)
!910 = !DILocation(line: 415, column: 14, scope: !911)
!911 = distinct !DILexicalBlock(scope: !907, file: !109, line: 414, column: 24)
!912 = !DILocation(line: 416, column: 28, scope: !913)
!913 = distinct !DILexicalBlock(scope: !911, file: !109, line: 416, column: 11)
!914 = !DILocation(line: 416, column: 34, scope: !913)
!915 = !DILocation(line: 416, column: 50, scope: !913)
!916 = !DILocation(line: 416, column: 43, scope: !913)
!917 = !DILocation(line: 416, column: 59, scope: !913)
!918 = !DILocation(line: 416, column: 12, scope: !919)
!919 = !DILexicalBlockFile(scope: !913, file: !109, discriminator: 1)
!920 = !DILocation(line: 416, column: 12, scope: !913)
!921 = !DILocation(line: 416, column: 11, scope: !911)
!922 = !DILocation(line: 417, column: 96, scope: !923)
!923 = distinct !DILexicalBlock(scope: !913, file: !109, line: 416, column: 86)
!924 = !DILocation(line: 417, column: 10, scope: !923)
!925 = !DILocation(line: 418, column: 7, scope: !923)
!926 = !DILocation(line: 419, column: 15, scope: !911)
!927 = !DILocation(line: 419, column: 7, scope: !911)
!928 = !DILocation(line: 420, column: 14, scope: !911)
!929 = !DILocation(line: 420, column: 7, scope: !911)
!930 = !DILocation(line: 421, column: 4, scope: !911)
!931 = !DILocation(line: 422, column: 1, scope: !756)
!932 = distinct !DISubprogram(name: "ToolsCore_InitVsockFamily", scope: !109, file: !109, line: 434, type: !933, isLocal: false, isDefinition: true, scopeLine: 435, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !281)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !115}
!935 = !DILocalVariable(name: "state", arg: 1, scope: !932, file: !109, line: 434, type: !115)
!936 = !DILocation(line: 434, column: 46, scope: !932)
!937 = !DILocalVariable(name: "vsockDev", scope: !932, file: !109, line: 436, type: !114)
!938 = !DILocation(line: 436, column: 8, scope: !932)
!939 = !DILocalVariable(name: "vsockFamily", scope: !932, file: !109, line: 437, type: !114)
!940 = !DILocation(line: 437, column: 8, scope: !932)
!941 = !DILocation(line: 441, column: 4, scope: !932)
!942 = !DILocation(line: 441, column: 11, scope: !932)
!943 = !DILocation(line: 441, column: 20, scope: !932)
!944 = !DILocation(line: 442, column: 4, scope: !932)
!945 = !DILocation(line: 442, column: 11, scope: !932)
!946 = !DILocation(line: 442, column: 23, scope: !932)
!947 = !DILocation(line: 444, column: 9, scope: !948)
!948 = distinct !DILexicalBlock(scope: !932, file: !109, line: 444, column: 8)
!949 = !DILocation(line: 444, column: 16, scope: !948)
!950 = !DILocation(line: 444, column: 20, scope: !948)
!951 = !DILocation(line: 444, column: 8, scope: !932)
!952 = !DILocation(line: 448, column: 7, scope: !953)
!953 = distinct !DILexicalBlock(scope: !948, file: !109, line: 444, column: 25)
!954 = !DILocation(line: 449, column: 7, scope: !953)
!955 = !DILocation(line: 452, column: 31, scope: !932)
!956 = !DILocation(line: 452, column: 38, scope: !932)
!957 = !DILocation(line: 452, column: 42, scope: !932)
!958 = !DILocation(line: 452, column: 12, scope: !932)
!959 = !DILocation(line: 452, column: 4, scope: !932)
!960 = !DILocation(line: 456, column: 7, scope: !961)
!961 = distinct !DILexicalBlock(scope: !932, file: !109, line: 452, column: 48)
!962 = !DILocation(line: 458, column: 21, scope: !961)
!963 = !DILocation(line: 458, column: 19, scope: !961)
!964 = !DILocation(line: 459, column: 11, scope: !965)
!965 = distinct !DILexicalBlock(scope: !961, file: !109, line: 459, column: 11)
!966 = !DILocation(line: 459, column: 23, scope: !965)
!967 = !DILocation(line: 459, column: 11, scope: !961)
!968 = !DILocation(line: 463, column: 10, scope: !969)
!969 = distinct !DILexicalBlock(scope: !965, file: !109, line: 459, column: 30)
!970 = !DILocation(line: 464, column: 7, scope: !969)
!971 = !DILocation(line: 464, column: 18, scope: !972)
!972 = !DILexicalBlockFile(scope: !973, file: !109, discriminator: 1)
!973 = distinct !DILexicalBlock(scope: !965, file: !109, line: 464, column: 18)
!974 = !DILocation(line: 464, column: 27, scope: !972)
!975 = !DILocation(line: 465, column: 102, scope: !976)
!976 = distinct !DILexicalBlock(scope: !973, file: !109, line: 464, column: 33)
!977 = !DILocation(line: 465, column: 112, scope: !976)
!978 = !DILocation(line: 465, column: 10, scope: !976)
!979 = !DILocation(line: 467, column: 31, scope: !976)
!980 = !DILocation(line: 467, column: 10, scope: !976)
!981 = !DILocation(line: 467, column: 17, scope: !976)
!982 = !DILocation(line: 467, column: 29, scope: !976)
!983 = !DILocation(line: 468, column: 28, scope: !976)
!984 = !DILocation(line: 468, column: 10, scope: !976)
!985 = !DILocation(line: 468, column: 17, scope: !976)
!986 = !DILocation(line: 468, column: 26, scope: !976)
!987 = !DILocation(line: 469, column: 7, scope: !976)
!988 = !DILocation(line: 470, column: 7, scope: !961)
!989 = !DILocation(line: 472, column: 7, scope: !961)
!990 = !DILocation(line: 474, column: 1, scope: !932)
!991 = distinct !DISubprogram(name: "VMCISock_GetAFValueFd", scope: !992, file: !992, line: 657, type: !993, isLocal: true, isDefinition: true, scopeLine: 658, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !281)
!992 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmci_sockets.h", directory: "/home/lichi/Desktop/open-vm-tools/line1393")
!993 = !DISubroutineType(types: !994)
!994 = !{!114, !995}
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!996 = !DILocalVariable(name: "outFd", arg: 1, scope: !991, file: !992, line: 657, type: !995)
!997 = !DILocation(line: 657, column: 49, scope: !991)
!998 = !DILocalVariable(name: "fd", scope: !991, file: !992, line: 659, type: !114)
!999 = !DILocation(line: 659, column: 11, scope: !991)
!1000 = !DILocalVariable(name: "family", scope: !991, file: !992, line: 660, type: !114)
!1001 = !DILocation(line: 660, column: 11, scope: !991)
!1002 = !DILocalVariable(name: "s", scope: !1003, file: !992, line: 676, type: !114)
!1003 = distinct !DILexicalBlock(scope: !991, file: !992, line: 675, column: 7)
!1004 = !DILocation(line: 676, column: 14, scope: !1003)
!1005 = !DILocation(line: 676, column: 18, scope: !1003)
!1006 = !DILocation(line: 677, column: 14, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1003, file: !992, line: 677, column: 14)
!1008 = !DILocation(line: 677, column: 16, scope: !1007)
!1009 = !DILocation(line: 677, column: 14, scope: !1003)
!1010 = !DILocation(line: 678, column: 19, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1007, file: !992, line: 677, column: 23)
!1012 = !DILocation(line: 678, column: 13, scope: !1011)
!1013 = !DILocation(line: 679, column: 17, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1011, file: !992, line: 679, column: 17)
!1015 = !DILocation(line: 679, column: 17, scope: !1011)
!1016 = !DILocation(line: 680, column: 17, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1014, file: !992, line: 679, column: 24)
!1018 = !DILocation(line: 680, column: 23, scope: !1017)
!1019 = !DILocation(line: 681, column: 13, scope: !1017)
!1020 = !DILocation(line: 682, column: 13, scope: !1011)
!1021 = !DILocation(line: 688, column: 12, scope: !991)
!1022 = !DILocation(line: 688, column: 10, scope: !991)
!1023 = !DILocation(line: 689, column: 11, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !991, file: !992, line: 689, column: 11)
!1025 = !DILocation(line: 689, column: 14, scope: !1024)
!1026 = !DILocation(line: 689, column: 11, scope: !991)
!1027 = !DILocation(line: 690, column: 15, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1024, file: !992, line: 689, column: 19)
!1029 = !DILocation(line: 690, column: 13, scope: !1028)
!1030 = !DILocation(line: 691, column: 14, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1028, file: !992, line: 691, column: 14)
!1032 = !DILocation(line: 691, column: 17, scope: !1031)
!1033 = !DILocation(line: 691, column: 14, scope: !1028)
!1034 = !DILocation(line: 692, column: 13, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1031, file: !992, line: 691, column: 22)
!1036 = !DILocation(line: 694, column: 7, scope: !1028)
!1037 = !DILocation(line: 696, column: 17, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !991, file: !992, line: 696, column: 11)
!1039 = !DILocation(line: 696, column: 11, scope: !1038)
!1040 = !DILocation(line: 696, column: 36, scope: !1038)
!1041 = !DILocation(line: 696, column: 11, scope: !991)
!1042 = !DILocation(line: 697, column: 17, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1038, file: !992, line: 696, column: 41)
!1044 = !DILocation(line: 698, column: 7, scope: !1043)
!1045 = !DILocation(line: 700, column: 11, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !991, file: !992, line: 700, column: 11)
!1047 = !DILocation(line: 700, column: 18, scope: !1046)
!1048 = !DILocation(line: 700, column: 11, scope: !991)
!1049 = !DILocation(line: 701, column: 16, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1046, file: !992, line: 700, column: 23)
!1051 = !DILocation(line: 701, column: 10, scope: !1050)
!1052 = !DILocation(line: 702, column: 7, scope: !1050)
!1053 = !DILocation(line: 702, column: 18, scope: !1054)
!1054 = !DILexicalBlockFile(scope: !1055, file: !992, discriminator: 1)
!1055 = distinct !DILexicalBlock(scope: !1046, file: !992, line: 702, column: 18)
!1056 = !DILocation(line: 703, column: 19, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1055, file: !992, line: 702, column: 25)
!1058 = !DILocation(line: 703, column: 11, scope: !1057)
!1059 = !DILocation(line: 703, column: 17, scope: !1057)
!1060 = !DILocation(line: 704, column: 7, scope: !1057)
!1061 = !DILocation(line: 706, column: 14, scope: !991)
!1062 = !DILocation(line: 706, column: 7, scope: !991)
!1063 = !DILocation(line: 707, column: 4, scope: !991)
!1064 = distinct !DISubprogram(name: "ToolsCore_ReleaseVsockFamily", scope: !109, file: !109, line: 486, type: !933, isLocal: false, isDefinition: true, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !281)
!1065 = !DILocalVariable(name: "state", arg: 1, scope: !1064, file: !109, line: 486, type: !115)
!1066 = !DILocation(line: 486, column: 49, scope: !1064)
!1067 = !DILocation(line: 494, column: 8, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1064, file: !109, line: 494, column: 8)
!1069 = !DILocation(line: 494, column: 15, scope: !1068)
!1070 = !DILocation(line: 494, column: 27, scope: !1068)
!1071 = !DILocation(line: 494, column: 32, scope: !1068)
!1072 = !DILocation(line: 494, column: 35, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !1068, file: !109, discriminator: 1)
!1074 = !DILocation(line: 494, column: 42, scope: !1073)
!1075 = !DILocation(line: 494, column: 51, scope: !1073)
!1076 = !DILocation(line: 494, column: 8, scope: !1073)
!1077 = !DILocation(line: 495, column: 102, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1068, file: !109, line: 494, column: 57)
!1079 = !DILocation(line: 495, column: 109, scope: !1078)
!1080 = !DILocation(line: 495, column: 119, scope: !1078)
!1081 = !DILocation(line: 495, column: 126, scope: !1078)
!1082 = !DILocation(line: 495, column: 7, scope: !1078)
!1083 = !DILocation(line: 497, column: 33, scope: !1078)
!1084 = !DILocation(line: 497, column: 40, scope: !1078)
!1085 = !DILocation(line: 497, column: 7, scope: !1078)
!1086 = !DILocation(line: 498, column: 7, scope: !1078)
!1087 = !DILocation(line: 498, column: 14, scope: !1078)
!1088 = !DILocation(line: 498, column: 23, scope: !1078)
!1089 = !DILocation(line: 499, column: 7, scope: !1078)
!1090 = !DILocation(line: 499, column: 14, scope: !1078)
!1091 = !DILocation(line: 499, column: 26, scope: !1078)
!1092 = !DILocation(line: 500, column: 4, scope: !1078)
!1093 = !DILocation(line: 501, column: 1, scope: !1064)
!1094 = distinct !DISubprogram(name: "VMCISock_ReleaseAFValueFd", scope: !992, file: !992, line: 772, type: !1095, isLocal: true, isDefinition: true, scopeLine: 773, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !281)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !114}
!1097 = !DILocalVariable(name: "fd", arg: 1, scope: !1094, file: !992, line: 772, type: !114)
!1098 = !DILocation(line: 772, column: 53, scope: !1094)
!1099 = !DILocation(line: 774, column: 11, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1094, file: !992, line: 774, column: 11)
!1101 = !DILocation(line: 774, column: 14, scope: !1100)
!1102 = !DILocation(line: 774, column: 11, scope: !1094)
!1103 = !DILocation(line: 775, column: 16, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1100, file: !992, line: 774, column: 20)
!1105 = !DILocation(line: 775, column: 10, scope: !1104)
!1106 = !DILocation(line: 776, column: 7, scope: !1104)
!1107 = !DILocation(line: 777, column: 4, scope: !1094)
