; ModuleID = './vmtoolsd-mainLoop.o.i'
source_filename = "./vmtoolsd-mainLoop.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ToolsServiceProperty = type { i8* }
%struct.ToolsServiceState = type { i8*, i8*, i64, i32, i32, i32, i8*, i8*, %struct._GPtrArray*, i8*, %struct._GModule*, i8*, %struct.RpcDebugLibData*, %struct.ToolsAppCtx, %struct._GArray*, i32, i32 }
%struct._GPtrArray = type { i8**, i32 }
%struct._GModule = type opaque
%struct.RpcDebugLibData = type { %struct._RpcChannel* (%struct.ToolsAppCtx*, %struct.RpcDebugLibData*)*, i32 (%struct.ToolsAppCtx*, i8*, i8*, %struct.RpcDebugLibData*)*, %struct.RpcDebugPlugin* }
%struct._RpcChannel = type opaque
%struct.RpcDebugPlugin = type { %struct.RpcDebugRecvMapping*, i32 (i8*, i64, i8**, i64*)*, i32 (%struct.RpcDebugMsgMapping*)*, void (%struct.ToolsAppCtx*, %struct.RpcDebugPlugin*)*, %struct.ToolsPluginData* }
%struct.RpcDebugRecvMapping = type { i8*, i32 (i8*, i64, i8**, i64*)*, i8*, i64 }
%struct.RpcDebugMsgMapping = type { i8*, i64, i32 (%struct.RpcInData*, i32)*, i32 }
%struct.RpcInData = type { i8*, i8*, i64, i8*, i64, i32, i8*, i8* }
%struct.ToolsPluginData = type { i8*, %struct._GArray*, i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)*, i8* }
%struct.ToolsAppCtx = type { i32, i8*, i32, i32, %struct._GMainLoop*, %struct._RpcChannel*, %struct._GKeyFile*, i32, i32, i8**, i8* }
%struct._GMainLoop = type opaque
%struct._GKeyFile = type opaque
%struct._GArray = type { i8*, i32 }
%struct.ToolsAppProviderReg = type { %struct.ToolsAppProvider*, i32 }
%struct.ToolsAppProvider = type { i8*, i32, i64, void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, %struct._GError**)*, i32 (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, %struct.ToolsPluginData*, i8*)*, void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*)*, void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, i8*)* }
%struct._GError = type { i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GMainContext = type opaque
%struct.ToolsCoreService = type { %struct._GObject, %union._GMutex*, %struct._GArray* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%union._GMutex = type { i8* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }

@.str = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@ToolsCore_DumpState.providerStates = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [37 x i8] c"VM Tools Service '%s': not running.\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"VM Tools Service '%s':\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Plugin path: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"App provider: %s (%s)\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"tcs_dump_state\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"toolbox\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"vmusr\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"toolbox-dnd\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"vmtoolsd\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Config file reloaded.\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"tcs_conf_reload\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"tcs_app_ctx\00", align 1
@ToolsCore_Setup.ctxProp = private unnamed_addr constant %struct.ToolsServiceProperty { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0) }, align 8
@.str.15 = private unnamed_addr constant [24 x i8] c"Tools Version: %s (%s)\0A\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"10.3.0.5330\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"build-8931395\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"%*s%s\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"libvmrpcdbg.so\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"Cannot load vmrpcdbg library.\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"RpcDebug_Initialize\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"Cannot find symbol: RpcDebug_Initialize\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"tcs_io_freeze\00", align 1
@ToolsCoreReportVersionData.cmdPrefix = internal constant [28 x i8] c"info-set guestinfo.vmtools.\00", align 16
@.str.26 = private unnamed_addr constant [40 x i8] c"%sdescription open-vm-tools %s build %s\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"10.3.0\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"8931395\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"%s: failed to send description\00", align 1
@__FUNCTION__.ToolsCoreReportVersionData = private unnamed_addr constant [27 x i8] c"ToolsCoreReportVersionData\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"%sversionString %s\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"%s: failed to send versionString\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"%sversionNumber %d\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"%s: failed to send versionNumber\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"%sbuildNumber %d\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"%s: failed to send buildNumber\00", align 1

; Function Attrs: nounwind uwtable
define void @ToolsCore_DumpState(%struct.ToolsServiceState*) #0 !dbg !300 {
  %2 = alloca %struct.ToolsServiceState*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [3 x i8*], align 16
  %5 = alloca %struct.ToolsAppProviderReg*, align 8
  store %struct.ToolsServiceState* %0, %struct.ToolsServiceState** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %2, metadata !301, metadata !302), !dbg !303
  call void @llvm.dbg.declare(metadata i32* %3, metadata !304, metadata !302), !dbg !305
  call void @llvm.dbg.declare(metadata [3 x i8*]* %4, metadata !306, metadata !302), !dbg !310
  %6 = bitcast [3 x i8*]* %4 to i8*, !dbg !310
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast ([3 x i8*]* @ToolsCore_DumpState.providerStates to i8*), i64 24, i32 16, i1 false), !dbg !310
  br label %7, !dbg !311, !llvm.loop !312

; <label>:7:                                      ; preds = %1
  br label %8, !dbg !313

; <label>:8:                                      ; preds = %7
  %9 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !316
  %10 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %9, i32 0, i32 13, !dbg !318
  %11 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %10, i32 0, i32 4, !dbg !319
  %12 = load %struct._GMainLoop*, %struct._GMainLoop** %11, align 8, !dbg !319
  %13 = call i32 @g_main_loop_is_running(%struct._GMainLoop* %12), !dbg !320
  %14 = icmp ne i32 %13, 0, !dbg !320
  br i1 %14, label %19, label %15, !dbg !321

; <label>:15:                                     ; preds = %8
  %16 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !322
  %17 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %16, i32 0, i32 0, !dbg !324
  %18 = load i8*, i8** %17, align 8, !dbg !324
  call void (i32, i8*, ...) @ToolsCore_LogState(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i8* %18), !dbg !325
  br label %84, !dbg !326

; <label>:19:                                     ; preds = %8
  %20 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !327
  %21 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %20, i32 0, i32 0, !dbg !328
  %22 = load i8*, i8** %21, align 8, !dbg !328
  call void (i32, i8*, ...) @ToolsCore_LogState(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8* %22), !dbg !329
  %23 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !330
  %24 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %23, i32 0, i32 7, !dbg !331
  %25 = load i8*, i8** %24, align 8, !dbg !331
  call void (i32, i8*, ...) @ToolsCore_LogState(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* %25), !dbg !332
  store i32 0, i32* %3, align 4, !dbg !333
  br label %26, !dbg !335

; <label>:26:                                     ; preds = %73, %19
  %27 = load i32, i32* %3, align 4, !dbg !336
  %28 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !339
  %29 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %28, i32 0, i32 14, !dbg !340
  %30 = load %struct._GArray*, %struct._GArray** %29, align 8, !dbg !340
  %31 = getelementptr inbounds %struct._GArray, %struct._GArray* %30, i32 0, i32 1, !dbg !341
  %32 = load i32, i32* %31, align 8, !dbg !341
  %33 = icmp ult i32 %27, %32, !dbg !342
  br i1 %33, label %34, label %76, !dbg !343

; <label>:34:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata %struct.ToolsAppProviderReg** %5, metadata !344, metadata !302), !dbg !346
  %35 = load i32, i32* %3, align 4, !dbg !347
  %36 = zext i32 %35 to i64, !dbg !348
  %37 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !349
  %38 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %37, i32 0, i32 14, !dbg !350
  %39 = load %struct._GArray*, %struct._GArray** %38, align 8, !dbg !350
  %40 = getelementptr inbounds %struct._GArray, %struct._GArray* %39, i32 0, i32 0, !dbg !351
  %41 = load i8*, i8** %40, align 8, !dbg !351
  %42 = bitcast i8* %41 to %struct.ToolsAppProviderReg*, !dbg !352
  %43 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %42, i64 %36, !dbg !348
  store %struct.ToolsAppProviderReg* %43, %struct.ToolsAppProviderReg** %5, align 8, !dbg !346
  %44 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %5, align 8, !dbg !353
  %45 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %44, i32 0, i32 0, !dbg !354
  %46 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %45, align 8, !dbg !354
  %47 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %46, i32 0, i32 0, !dbg !355
  %48 = load i8*, i8** %47, align 8, !dbg !355
  %49 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %5, align 8, !dbg !356
  %50 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %49, i32 0, i32 1, !dbg !357
  %51 = load i32, i32* %50, align 8, !dbg !357
  %52 = zext i32 %51 to i64, !dbg !358
  %53 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 %52, !dbg !358
  %54 = load i8*, i8** %53, align 8, !dbg !358
  call void (i32, i8*, ...) @ToolsCore_LogState(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* %48, i8* %54), !dbg !359
  %55 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %5, align 8, !dbg !360
  %56 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %55, i32 0, i32 0, !dbg !362
  %57 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %56, align 8, !dbg !362
  %58 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %57, i32 0, i32 6, !dbg !363
  %59 = load void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, i8*)*, void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, i8*)** %58, align 8, !dbg !363
  %60 = icmp ne void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, i8*)* %59, null, !dbg !364
  br i1 %60, label %61, label %72, !dbg !365

; <label>:61:                                     ; preds = %34
  %62 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %5, align 8, !dbg !366
  %63 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %62, i32 0, i32 0, !dbg !368
  %64 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %63, align 8, !dbg !368
  %65 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %64, i32 0, i32 6, !dbg !369
  %66 = load void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, i8*)*, void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, i8*)** %65, align 8, !dbg !369
  %67 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !370
  %68 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %67, i32 0, i32 13, !dbg !371
  %69 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %5, align 8, !dbg !372
  %70 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %69, i32 0, i32 0, !dbg !373
  %71 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %70, align 8, !dbg !373
  call void %66(%struct.ToolsAppCtx* %68, %struct.ToolsAppProvider* %71, i8* null), !dbg !366
  br label %72, !dbg !374

; <label>:72:                                     ; preds = %61, %34
  br label %73, !dbg !375

; <label>:73:                                     ; preds = %72
  %74 = load i32, i32* %3, align 4, !dbg !376
  %75 = add i32 %74, 1, !dbg !376
  store i32 %75, i32* %3, align 4, !dbg !376
  br label %26, !dbg !378, !llvm.loop !379

; <label>:76:                                     ; preds = %26
  %77 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !381
  call void @ToolsCore_DumpPluginInfo(%struct.ToolsServiceState* %77), !dbg !382
  %78 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !383
  %79 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %78, i32 0, i32 13, !dbg !384
  %80 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %79, i32 0, i32 10, !dbg !385
  %81 = load i8*, i8** %80, align 8, !dbg !385
  %82 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !386
  %83 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %82, i32 0, i32 13, !dbg !387
  call void (i8*, i8*, ...) @g_signal_emit_by_name(i8* %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), %struct.ToolsAppCtx* %83), !dbg !388
  br label %84, !dbg !389

; <label>:84:                                     ; preds = %76, %15
  ret void, !dbg !390
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @g_main_loop_is_running(%struct._GMainLoop*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @ToolsCore_LogState(i32, i8*, ...) #4 !dbg !392 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !395, metadata !302), !dbg !396
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !397, metadata !302), !dbg !398
  call void @llvm.dbg.declare(metadata i8** %5, metadata !399, metadata !302), !dbg !400
  %7 = load i32, i32* %3, align 4, !dbg !401
  %8 = mul i32 3, %7, !dbg !402
  %9 = load i8*, i8** %4, align 8, !dbg !403
  %10 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0), i8* %9), !dbg !404
  store i8* %10, i8** %5, align 8, !dbg !400
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %6, metadata !405, metadata !302), !dbg !419
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !420
  %12 = bitcast %struct.__va_list_tag* %11 to i8*, !dbg !420
  call void @llvm.va_start(i8* %12), !dbg !420
  %13 = load i8*, i8** %5, align 8, !dbg !421
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !422
  call void @g_logv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 64, i8* %13, %struct.__va_list_tag* %14), !dbg !423
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !424
  %16 = bitcast %struct.__va_list_tag* %15 to i8*, !dbg !424
  call void @llvm.va_end(i8* %16), !dbg !424
  %17 = load i8*, i8** %5, align 8, !dbg !425
  call void @g_free(i8* %17), !dbg !426
  ret void, !dbg !427
}

declare void @ToolsCore_DumpPluginInfo(%struct.ToolsServiceState*) #3

declare void @g_signal_emit_by_name(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i8* @ToolsCore_GetTcloName(%struct.ToolsServiceState*) #0 !dbg !428 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ToolsServiceState*, align 8
  store %struct.ToolsServiceState* %0, %struct.ToolsServiceState** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %3, metadata !431, metadata !302), !dbg !432
  %4 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !433
  %5 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %4, i32 0, i32 4, !dbg !435
  %6 = load i32, i32* %5, align 4, !dbg !435
  %7 = icmp ne i32 %6, 0, !dbg !433
  br i1 %7, label %8, label %9, !dbg !436

; <label>:8:                                      ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8** %2, align 8, !dbg !437
  br label %17, !dbg !437

; <label>:9:                                      ; preds = %1
  %10 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !439
  %11 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %10, i32 0, i32 0, !dbg !441
  %12 = load i8*, i8** %11, align 8, !dbg !441
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)) #7, !dbg !442
  %14 = icmp eq i32 %13, 0, !dbg !443
  br i1 %14, label %15, label %16, !dbg !444

; <label>:15:                                     ; preds = %9
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8** %2, align 8, !dbg !445
  br label %17, !dbg !445

; <label>:16:                                     ; preds = %9
  store i8* null, i8** %2, align 8, !dbg !447
  br label %17, !dbg !447

; <label>:17:                                     ; preds = %16, %15, %8
  %18 = load i8*, i8** %2, align 8, !dbg !449
  ret i8* %18, !dbg !449
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define void @ToolsCore_ReloadConfig(%struct.ToolsServiceState*, i32) #0 !dbg !450 {
  %3 = alloca %struct.ToolsServiceState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ToolsServiceState* %0, %struct.ToolsServiceState** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %3, metadata !453, metadata !302), !dbg !454
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !455, metadata !302), !dbg !456
  call void @llvm.dbg.declare(metadata i32* %5, metadata !457, metadata !302), !dbg !458
  %7 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !459
  %8 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %7, i32 0, i32 13, !dbg !460
  %9 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %8, i32 0, i32 6, !dbg !461
  %10 = load %struct._GKeyFile*, %struct._GKeyFile** %9, align 8, !dbg !461
  %11 = icmp eq %struct._GKeyFile* %10, null, !dbg !462
  %12 = zext i1 %11 to i32, !dbg !462
  store i32 %12, i32* %5, align 4, !dbg !458
  call void @llvm.dbg.declare(metadata i32* %6, metadata !463, metadata !302), !dbg !464
  %13 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !465
  %14 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %13, i32 0, i32 1, !dbg !466
  %15 = load i8*, i8** %14, align 8, !dbg !466
  %16 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !467
  %17 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %16, i32 0, i32 13, !dbg !468
  %18 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %17, i32 0, i32 6, !dbg !469
  %19 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !470
  %20 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %19, i32 0, i32 2, !dbg !471
  %21 = call i32 @VMTools_LoadConfig(i8* %15, i32 0, %struct._GKeyFile** %18, i64* %20), !dbg !472
  store i32 %21, i32* %6, align 4, !dbg !473
  %22 = load i32, i32* %5, align 4, !dbg !474
  %23 = icmp ne i32 %22, 0, !dbg !474
  br i1 %23, label %34, label %24, !dbg !476

; <label>:24:                                     ; preds = %2
  %25 = load i32, i32* %6, align 4, !dbg !477
  %26 = icmp ne i32 %25, 0, !dbg !477
  br i1 %26, label %27, label %34, !dbg !479

; <label>:27:                                     ; preds = %24
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0)), !dbg !480
  %28 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !482
  %29 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %28, i32 0, i32 13, !dbg !483
  %30 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %29, i32 0, i32 10, !dbg !484
  %31 = load i8*, i8** %30, align 8, !dbg !484
  %32 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !485
  %33 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %32, i32 0, i32 13, !dbg !486
  call void (i8*, i8*, ...) @g_signal_emit_by_name(i8* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), %struct.ToolsAppCtx* %33), !dbg !487
  br label %34, !dbg !488

; <label>:34:                                     ; preds = %27, %24, %2
  %35 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !489
  %36 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %35, i32 0, i32 13, !dbg !491
  %37 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %36, i32 0, i32 6, !dbg !492
  %38 = load %struct._GKeyFile*, %struct._GKeyFile** %37, align 8, !dbg !492
  %39 = icmp eq %struct._GKeyFile* %38, null, !dbg !493
  br i1 %39, label %40, label %45, !dbg !494

; <label>:40:                                     ; preds = %34
  %41 = call %struct._GKeyFile* @g_key_file_new(), !dbg !495
  %42 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !497
  %43 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %42, i32 0, i32 13, !dbg !498
  %44 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %43, i32 0, i32 6, !dbg !499
  store %struct._GKeyFile* %41, %struct._GKeyFile** %44, align 8, !dbg !500
  br label %45, !dbg !501

; <label>:45:                                     ; preds = %40, %34
  %46 = load i32, i32* %4, align 4, !dbg !502
  %47 = icmp ne i32 %46, 0, !dbg !502
  br i1 %47, label %51, label %48, !dbg !504

; <label>:48:                                     ; preds = %45
  %49 = load i32, i32* %6, align 4, !dbg !505
  %50 = icmp ne i32 %49, 0, !dbg !505
  br i1 %50, label %51, label %60, !dbg !507

; <label>:51:                                     ; preds = %48, %45
  %52 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !508
  %53 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %52, i32 0, i32 0, !dbg !510
  %54 = load i8*, i8** %53, align 8, !dbg !510
  %55 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !511
  %56 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %55, i32 0, i32 13, !dbg !512
  %57 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %56, i32 0, i32 6, !dbg !513
  %58 = load %struct._GKeyFile*, %struct._GKeyFile** %57, align 8, !dbg !513
  %59 = load i32, i32* %4, align 4, !dbg !514
  call void @VMTools_ConfigLogging(i8* %54, %struct._GKeyFile* %58, i32 1, i32 %59), !dbg !515
  br label %60, !dbg !516

; <label>:60:                                     ; preds = %51, %48
  ret void, !dbg !517
}

declare i32 @VMTools_LoadConfig(i8*, i32, %struct._GKeyFile**, i64*) #3

declare void @g_log(i8*, i32, i8*, ...) #3

declare %struct._GKeyFile* @g_key_file_new() #3

declare void @VMTools_ConfigLogging(i8*, %struct._GKeyFile*, i32, i32) #3

; Function Attrs: nounwind uwtable
define void @ToolsCore_Setup(%struct.ToolsServiceState*) #0 !dbg !518 {
  %2 = alloca %struct.ToolsServiceState*, align 8
  %3 = alloca %struct._GMainContext*, align 8
  %4 = alloca %struct.ToolsServiceProperty, align 8
  store %struct.ToolsServiceState* %0, %struct.ToolsServiceState** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %2, metadata !519, metadata !302), !dbg !520
  call void @llvm.dbg.declare(metadata %struct._GMainContext** %3, metadata !521, metadata !302), !dbg !525
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceProperty* %4, metadata !526, metadata !302), !dbg !531
  %5 = bitcast %struct.ToolsServiceProperty* %4 to i8*, !dbg !531
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast (%struct.ToolsServiceProperty* @ToolsCore_Setup.ctxProp to i8*), i64 8, i32 8, i1 false), !dbg !531
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0)), !dbg !532
  %6 = call %struct._GMainContext* @g_main_context_default(), !dbg !533
  store %struct._GMainContext* %6, %struct._GMainContext** %3, align 8, !dbg !534
  %7 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !535
  %8 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %7, i32 0, i32 13, !dbg !536
  %9 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %8, i32 0, i32 0, !dbg !537
  store i32 1, i32* %9, align 8, !dbg !538
  %10 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !539
  %11 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %10, i32 0, i32 0, !dbg !540
  %12 = load i8*, i8** %11, align 8, !dbg !540
  %13 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !541
  %14 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %13, i32 0, i32 13, !dbg !542
  %15 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %14, i32 0, i32 1, !dbg !543
  store i8* %12, i8** %15, align 8, !dbg !544
  %16 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !545
  %17 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %16, i32 0, i32 13, !dbg !546
  %18 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %17, i32 0, i32 3, !dbg !547
  store i32 0, i32* %18, align 4, !dbg !548
  %19 = load %struct._GMainContext*, %struct._GMainContext** %3, align 8, !dbg !549
  %20 = call %struct._GMainLoop* @g_main_loop_new(%struct._GMainContext* %19, i32 0), !dbg !550
  %21 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !551
  %22 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %21, i32 0, i32 13, !dbg !552
  %23 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %22, i32 0, i32 4, !dbg !553
  store %struct._GMainLoop* %20, %struct._GMainLoop** %23, align 8, !dbg !554
  %24 = call signext i8 @VmCheck_IsVirtualWorld(), !dbg !555
  %25 = sext i8 %24 to i32, !dbg !555
  %26 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !556
  %27 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %26, i32 0, i32 13, !dbg !557
  %28 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %27, i32 0, i32 2, !dbg !558
  store i32 %25, i32* %28, align 8, !dbg !559
  %29 = load %struct._GMainContext*, %struct._GMainContext** %3, align 8, !dbg !560
  call void @g_main_context_unref(%struct._GMainContext* %29), !dbg !561
  call void @g_type_init(), !dbg !562
  %30 = call i64 @ToolsCore_Service_get_type(), !dbg !563
  %31 = call i8* (i64, i8*, ...) @g_object_new(i64 %30, i8* null), !dbg !564
  %32 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !566
  %33 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %32, i32 0, i32 13, !dbg !567
  %34 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %33, i32 0, i32 10, !dbg !568
  store i8* %31, i8** %34, align 8, !dbg !569
  %35 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !570
  %36 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %35, i32 0, i32 13, !dbg !571
  %37 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %36, i32 0, i32 10, !dbg !572
  %38 = load i8*, i8** %37, align 8, !dbg !572
  %39 = bitcast i8* %38 to %struct.ToolsCoreService*, !dbg !570
  call void @ToolsCoreService_RegisterProperty(%struct.ToolsCoreService* %39, %struct.ToolsServiceProperty* %4), !dbg !573
  %40 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !574
  %41 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %40, i32 0, i32 13, !dbg !575
  %42 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %41, i32 0, i32 10, !dbg !576
  %43 = load i8*, i8** %42, align 8, !dbg !576
  %44 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !577
  %45 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %44, i32 0, i32 13, !dbg !578
  call void (i8*, i8*, ...) @g_object_set(i8* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), %struct.ToolsAppCtx* %45, i8* null), !dbg !579
  %46 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !580
  %47 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %46, i32 0, i32 13, !dbg !581
  call void @ToolsCorePool_Init(%struct.ToolsAppCtx* %47), !dbg !582
  %48 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !583
  %49 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %48, i32 0, i32 11, !dbg !585
  %50 = load i8*, i8** %49, align 8, !dbg !585
  %51 = icmp ne i8* %50, null, !dbg !586
  br i1 %51, label %52, label %54, !dbg !587

; <label>:52:                                     ; preds = %1
  %53 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !588
  call void @ToolsCoreInitializeDebug(%struct.ToolsServiceState* %53), !dbg !590
  br label %54, !dbg !591

; <label>:54:                                     ; preds = %52, %1
  ret void, !dbg !592
}

declare %struct._GMainContext* @g_main_context_default() #3

declare %struct._GMainLoop* @g_main_loop_new(%struct._GMainContext*, i32) #3

declare signext i8 @VmCheck_IsVirtualWorld() #3

declare void @g_main_context_unref(%struct._GMainContext*) #3

declare void @g_type_init() #3

declare i8* @g_object_new(i64, i8*, ...) #3

declare i64 @ToolsCore_Service_get_type() #3

declare void @ToolsCoreService_RegisterProperty(%struct.ToolsCoreService*, %struct.ToolsServiceProperty*) #3

declare void @g_object_set(i8*, i8*, ...) #3

declare void @ToolsCorePool_Init(%struct.ToolsAppCtx*) #3

; Function Attrs: nounwind uwtable
define internal void @ToolsCoreInitializeDebug(%struct.ToolsServiceState*) #0 !dbg !593 {
  %2 = alloca %struct.ToolsServiceState*, align 8
  %3 = alloca %struct.RpcDebugLibData*, align 8
  %4 = alloca %struct.RpcDebugLibData* (%struct.ToolsAppCtx*, i8*)*, align 8
  store %struct.ToolsServiceState* %0, %struct.ToolsServiceState** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %2, metadata !594, metadata !302), !dbg !595
  call void @llvm.dbg.declare(metadata %struct.RpcDebugLibData** %3, metadata !596, metadata !302), !dbg !597
  call void @llvm.dbg.declare(metadata %struct.RpcDebugLibData* (%struct.ToolsAppCtx*, i8*)** %4, metadata !598, metadata !302), !dbg !603
  %5 = call %struct._GModule* @g_module_open(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i32 2), !dbg !604
  %6 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !605
  %7 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %6, i32 0, i32 10, !dbg !606
  store %struct._GModule* %5, %struct._GModule** %7, align 8, !dbg !607
  %8 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !608
  %9 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %8, i32 0, i32 10, !dbg !610
  %10 = load %struct._GModule*, %struct._GModule** %9, align 8, !dbg !610
  %11 = icmp eq %struct._GModule* %10, null, !dbg !611
  br i1 %11, label %12, label %16, !dbg !612

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !613, !llvm.loop !615

; <label>:13:                                     ; preds = %12
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i32 0, i32 0)), !dbg !616
  br label %14, !dbg !619

; <label>:14:                                     ; preds = %14, %13
  br label %14, !dbg !620, !llvm.loop !624
                                                  ; No predecessors!
  br label %16, !dbg !626

; <label>:16:                                     ; preds = %15, %1
  %17 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !627
  %18 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %17, i32 0, i32 10, !dbg !629
  %19 = load %struct._GModule*, %struct._GModule** %18, align 8, !dbg !629
  %20 = bitcast %struct.RpcDebugLibData* (%struct.ToolsAppCtx*, i8*)** %4 to i8**, !dbg !630
  %21 = call i32 @g_module_symbol(%struct._GModule* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i8** %20), !dbg !631
  %22 = icmp ne i32 %21, 0, !dbg !631
  br i1 %22, label %27, label %23, !dbg !632

; <label>:23:                                     ; preds = %16
  br label %24, !dbg !633, !llvm.loop !635

; <label>:24:                                     ; preds = %23
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i32 0, i32 0)), !dbg !636
  br label %25, !dbg !639

; <label>:25:                                     ; preds = %25, %24
  br label %25, !dbg !640, !llvm.loop !644
                                                  ; No predecessors!
  br label %27, !dbg !646

; <label>:27:                                     ; preds = %26, %16
  %28 = load %struct.RpcDebugLibData* (%struct.ToolsAppCtx*, i8*)*, %struct.RpcDebugLibData* (%struct.ToolsAppCtx*, i8*)** %4, align 8, !dbg !647
  %29 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !648
  %30 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %29, i32 0, i32 13, !dbg !649
  %31 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !650
  %32 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %31, i32 0, i32 11, !dbg !651
  %33 = load i8*, i8** %32, align 8, !dbg !651
  %34 = call %struct.RpcDebugLibData* %28(%struct.ToolsAppCtx* %30, i8* %33), !dbg !647
  store %struct.RpcDebugLibData* %34, %struct.RpcDebugLibData** %3, align 8, !dbg !652
  %35 = load %struct.RpcDebugLibData*, %struct.RpcDebugLibData** %3, align 8, !dbg !653
  %36 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !654
  %37 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %36, i32 0, i32 12, !dbg !655
  store %struct.RpcDebugLibData* %35, %struct.RpcDebugLibData** %37, align 8, !dbg !656
  ret void, !dbg !657
}

; Function Attrs: nounwind uwtable
define i32 @ToolsCore_Run(%struct.ToolsServiceState*) #0 !dbg !658 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ToolsServiceState*, align 8
  %4 = alloca i32, align 4
  store %struct.ToolsServiceState* %0, %struct.ToolsServiceState** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %3, metadata !661, metadata !302), !dbg !662
  %5 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !663
  %6 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %5, i32 0, i32 12, !dbg !665
  %7 = load %struct.RpcDebugLibData*, %struct.RpcDebugLibData** %6, align 8, !dbg !665
  %8 = icmp ne %struct.RpcDebugLibData* %7, null, !dbg !666
  br i1 %8, label %9, label %32, !dbg !667

; <label>:9:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %4, metadata !668, metadata !302), !dbg !670
  %10 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !671
  %11 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %10, i32 0, i32 12, !dbg !672
  %12 = load %struct.RpcDebugLibData*, %struct.RpcDebugLibData** %11, align 8, !dbg !672
  %13 = getelementptr inbounds %struct.RpcDebugLibData, %struct.RpcDebugLibData* %12, i32 0, i32 1, !dbg !673
  %14 = load i32 (%struct.ToolsAppCtx*, i8*, i8*, %struct.RpcDebugLibData*)*, i32 (%struct.ToolsAppCtx*, i8*, i8*, %struct.RpcDebugLibData*)** %13, align 8, !dbg !673
  %15 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !674
  %16 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %15, i32 0, i32 13, !dbg !675
  %17 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !676
  %18 = bitcast %struct.ToolsServiceState* %17 to i8*, !dbg !676
  %19 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !677
  %20 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %19, i32 0, i32 12, !dbg !678
  %21 = load %struct.RpcDebugLibData*, %struct.RpcDebugLibData** %20, align 8, !dbg !678
  %22 = call i32 %14(%struct.ToolsAppCtx* %16, i8* bitcast (i32 (%struct.ToolsServiceState*)* @ToolsCoreRunLoop to i8*), i8* %18, %struct.RpcDebugLibData* %21), !dbg !671
  store i32 %22, i32* %4, align 4, !dbg !670
  %23 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !679
  %24 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %23, i32 0, i32 10, !dbg !680
  %25 = load %struct._GModule*, %struct._GModule** %24, align 8, !dbg !680
  %26 = call i32 @g_module_close(%struct._GModule* %25), !dbg !681
  %27 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !682
  %28 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %27, i32 0, i32 12, !dbg !683
  store %struct.RpcDebugLibData* null, %struct.RpcDebugLibData** %28, align 8, !dbg !684
  %29 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !685
  %30 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %29, i32 0, i32 10, !dbg !686
  store %struct._GModule* null, %struct._GModule** %30, align 8, !dbg !687
  %31 = load i32, i32* %4, align 4, !dbg !688
  store i32 %31, i32* %2, align 4, !dbg !689
  br label %35, !dbg !689

; <label>:32:                                     ; preds = %1
  %33 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !690
  %34 = call i32 @ToolsCoreRunLoop(%struct.ToolsServiceState* %33), !dbg !691
  store i32 %34, i32* %2, align 4, !dbg !692
  br label %35, !dbg !692

; <label>:35:                                     ; preds = %32, %9
  %36 = load i32, i32* %2, align 4, !dbg !693
  ret i32 %36, !dbg !693
}

; Function Attrs: nounwind uwtable
define internal i32 @ToolsCoreRunLoop(%struct.ToolsServiceState*) #0 !dbg !694 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ToolsServiceState*, align 8
  store %struct.ToolsServiceState* %0, %struct.ToolsServiceState** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %3, metadata !695, metadata !302), !dbg !696
  %4 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !697
  %5 = call i32 @ToolsCore_InitRpc(%struct.ToolsServiceState* %4), !dbg !699
  %6 = icmp ne i32 %5, 0, !dbg !699
  br i1 %6, label %8, label %7, !dbg !700

; <label>:7:                                      ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !701
  br label %100, !dbg !701

; <label>:8:                                      ; preds = %1
  %9 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !703
  %10 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %9, i32 0, i32 13, !dbg !705
  %11 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %10, i32 0, i32 5, !dbg !706
  %12 = load %struct._RpcChannel*, %struct._RpcChannel** %11, align 8, !dbg !706
  %13 = icmp ne %struct._RpcChannel* %12, null, !dbg !703
  br i1 %13, label %14, label %22, !dbg !707

; <label>:14:                                     ; preds = %8
  %15 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !708
  %16 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %15, i32 0, i32 13, !dbg !710
  %17 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %16, i32 0, i32 5, !dbg !711
  %18 = load %struct._RpcChannel*, %struct._RpcChannel** %17, align 8, !dbg !711
  %19 = call i32 @RpcChannel_Start(%struct._RpcChannel* %18), !dbg !712
  %20 = icmp ne i32 %19, 0, !dbg !712
  br i1 %20, label %22, label %21, !dbg !713

; <label>:21:                                     ; preds = %14
  store i32 1, i32* %2, align 4, !dbg !714
  br label %100, !dbg !714

; <label>:22:                                     ; preds = %14, %8
  %23 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !716
  %24 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %23, i32 0, i32 13, !dbg !718
  %25 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %24, i32 0, i32 5, !dbg !719
  %26 = load %struct._RpcChannel*, %struct._RpcChannel** %25, align 8, !dbg !719
  %27 = icmp ne %struct._RpcChannel* %26, null, !dbg !716
  br i1 %27, label %28, label %30, !dbg !720

; <label>:28:                                     ; preds = %22
  %29 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !721
  call void @ToolsCoreReportVersionData(%struct.ToolsServiceState* %29), !dbg !723
  br label %30, !dbg !724

; <label>:30:                                     ; preds = %28, %22
  %31 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !725
  %32 = call i32 @ToolsCore_LoadPlugins(%struct.ToolsServiceState* %31), !dbg !727
  %33 = icmp ne i32 %32, 0, !dbg !727
  br i1 %33, label %35, label %34, !dbg !728

; <label>:34:                                     ; preds = %30
  store i32 1, i32* %2, align 4, !dbg !729
  br label %100, !dbg !729

; <label>:35:                                     ; preds = %30
  %36 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !731
  %37 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %36, i32 0, i32 4, !dbg !733
  %38 = load i32, i32* %37, align 4, !dbg !733
  %39 = icmp ne i32 %38, 0, !dbg !731
  br i1 %39, label %40, label %42, !dbg !734

; <label>:40:                                     ; preds = %35
  %41 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !735
  call void @ToolsCore_InitVsockFamily(%struct.ToolsServiceState* %41), !dbg !737
  br label %42, !dbg !738

; <label>:42:                                     ; preds = %40, %35
  %43 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !739
  %44 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %43, i32 0, i32 13, !dbg !741
  %45 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %44, i32 0, i32 3, !dbg !742
  %46 = load i32, i32* %45, align 4, !dbg !742
  %47 = icmp eq i32 %46, 0, !dbg !743
  br i1 %47, label %48, label %94, !dbg !744

; <label>:48:                                     ; preds = %42
  %49 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !745
  %50 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %49, i32 0, i32 13, !dbg !746
  %51 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %50, i32 0, i32 2, !dbg !747
  %52 = load i32, i32* %51, align 8, !dbg !747
  %53 = icmp ne i32 %52, 0, !dbg !745
  br i1 %53, label %63, label %54, !dbg !748

; <label>:54:                                     ; preds = %48
  %55 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !749
  %56 = call i8* @ToolsCore_GetTcloName(%struct.ToolsServiceState* %55), !dbg !750
  %57 = icmp eq i8* %56, null, !dbg !751
  br i1 %57, label %63, label %58, !dbg !752

; <label>:58:                                     ; preds = %54
  %59 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !753
  %60 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %59, i32 0, i32 11, !dbg !754
  %61 = load i8*, i8** %60, align 8, !dbg !754
  %62 = icmp ne i8* %61, null, !dbg !755
  br i1 %62, label %63, label %94, !dbg !756

; <label>:63:                                     ; preds = %58, %54, %48
  %64 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !758
  call void @ToolsCore_RegisterPlugins(%struct.ToolsServiceState* %64), !dbg !760
  %65 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !761
  %66 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %65, i32 0, i32 13, !dbg !763
  %67 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %66, i32 0, i32 10, !dbg !764
  %68 = load i8*, i8** %67, align 8, !dbg !764
  %69 = bitcast i8* %68 to %struct._GTypeInstance*, !dbg !765
  %70 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %69, i32 0, i32 0, !dbg !766
  %71 = load %struct._GTypeClass*, %struct._GTypeClass** %70, align 8, !dbg !766
  %72 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %71, i32 0, i32 0, !dbg !767
  %73 = load i64, i64* %72, align 8, !dbg !767
  %74 = call i32 @g_signal_lookup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i64 %73), !dbg !768
  %75 = icmp ne i32 %74, 0, !dbg !769
  br i1 %75, label %76, label %84, !dbg !770

; <label>:76:                                     ; preds = %63
  %77 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !771
  %78 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %77, i32 0, i32 13, !dbg !773
  %79 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %78, i32 0, i32 10, !dbg !774
  %80 = load i8*, i8** %79, align 8, !dbg !774
  %81 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !775
  %82 = bitcast %struct.ToolsServiceState* %81 to i8*, !dbg !776
  %83 = call i64 @g_signal_connect_data(i8* %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (i8*, %struct.ToolsAppCtx*, i32, %struct.ToolsServiceState*)* @ToolsCoreIOFreezeCb to void ()*), i8* %82, void (i8*, %struct._GClosure*)* null, i32 0), !dbg !777
  br label %84, !dbg !778

; <label>:84:                                     ; preds = %76, %63
  %85 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !779
  %86 = bitcast %struct.ToolsServiceState* %85 to i8*, !dbg !779
  %87 = call i32 @g_timeout_add(i32 5000, i32 (i8*)* @ToolsCoreConfFileCb, i8* %86), !dbg !780
  %88 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !781
  %89 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %88, i32 0, i32 3, !dbg !782
  store i32 %87, i32* %89, align 8, !dbg !783
  %90 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !784
  %91 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %90, i32 0, i32 13, !dbg !785
  %92 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %91, i32 0, i32 4, !dbg !786
  %93 = load %struct._GMainLoop*, %struct._GMainLoop** %92, align 8, !dbg !786
  call void @g_main_loop_run(%struct._GMainLoop* %93), !dbg !787
  br label %94, !dbg !788

; <label>:94:                                     ; preds = %84, %58, %42
  %95 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !789
  call void @ToolsCoreCleanup(%struct.ToolsServiceState* %95), !dbg !790
  %96 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %3, align 8, !dbg !791
  %97 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %96, i32 0, i32 13, !dbg !792
  %98 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %97, i32 0, i32 3, !dbg !793
  %99 = load i32, i32* %98, align 4, !dbg !793
  store i32 %99, i32* %2, align 4, !dbg !794
  br label %100, !dbg !794

; <label>:100:                                    ; preds = %94, %34, %21, %7
  %101 = load i32, i32* %2, align 4, !dbg !795
  ret i32 %101, !dbg !795
}

declare i32 @g_module_close(%struct._GModule*) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @g_free(i8*) #3

declare %struct._GModule* @g_module_open(i8*, i32) #3

declare i32 @g_module_symbol(%struct._GModule*, i8*, i8**) #3

declare i32 @ToolsCore_InitRpc(%struct.ToolsServiceState*) #3

declare i32 @RpcChannel_Start(%struct._RpcChannel*) #3

; Function Attrs: nounwind uwtable
define internal void @ToolsCoreReportVersionData(%struct.ToolsServiceState*) #0 !dbg !180 {
  %2 = alloca %struct.ToolsServiceState*, align 8
  %3 = alloca i8*, align 8
  store %struct.ToolsServiceState* %0, %struct.ToolsServiceState** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %2, metadata !796, metadata !302), !dbg !797
  call void @llvm.dbg.declare(metadata i8** %3, metadata !798, metadata !302), !dbg !799
  %4 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @ToolsCoreReportVersionData.cmdPrefix, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0)), !dbg !800
  store i8* %4, i8** %3, align 8, !dbg !801
  %5 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !802
  %6 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %5, i32 0, i32 13, !dbg !804
  %7 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %6, i32 0, i32 5, !dbg !805
  %8 = load %struct._RpcChannel*, %struct._RpcChannel** %7, align 8, !dbg !805
  %9 = load i8*, i8** %3, align 8, !dbg !806
  %10 = load i8*, i8** %3, align 8, !dbg !807
  %11 = call i64 @strlen(i8* %10) #7, !dbg !808
  %12 = add i64 %11, 1, !dbg !809
  %13 = call i32 @RpcChannel_Send(%struct._RpcChannel* %8, i8* %9, i64 %12, i8** null, i64* null), !dbg !810
  %14 = icmp ne i32 %13, 0, !dbg !810
  br i1 %14, label %16, label %15, !dbg !811

; <label>:15:                                     ; preds = %1
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.ToolsCoreReportVersionData, i32 0, i32 0)), !dbg !812
  br label %16, !dbg !814

; <label>:16:                                     ; preds = %15, %1
  %17 = load i8*, i8** %3, align 8, !dbg !815
  call void @g_free(i8* %17), !dbg !816
  %18 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @ToolsCoreReportVersionData.cmdPrefix, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0)), !dbg !817
  store i8* %18, i8** %3, align 8, !dbg !818
  %19 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !819
  %20 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %19, i32 0, i32 13, !dbg !821
  %21 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %20, i32 0, i32 5, !dbg !822
  %22 = load %struct._RpcChannel*, %struct._RpcChannel** %21, align 8, !dbg !822
  %23 = load i8*, i8** %3, align 8, !dbg !823
  %24 = load i8*, i8** %3, align 8, !dbg !824
  %25 = call i64 @strlen(i8* %24) #7, !dbg !825
  %26 = add i64 %25, 1, !dbg !826
  %27 = call i32 @RpcChannel_Send(%struct._RpcChannel* %22, i8* %23, i64 %26, i8** null, i64* null), !dbg !827
  %28 = icmp ne i32 %27, 0, !dbg !827
  br i1 %28, label %30, label %29, !dbg !828

; <label>:29:                                     ; preds = %16
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.ToolsCoreReportVersionData, i32 0, i32 0)), !dbg !829
  br label %30, !dbg !831

; <label>:30:                                     ; preds = %29, %16
  %31 = load i8*, i8** %3, align 8, !dbg !832
  call void @g_free(i8* %31), !dbg !833
  %32 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @ToolsCoreReportVersionData.cmdPrefix, i32 0, i32 0), i32 10336), !dbg !834
  store i8* %32, i8** %3, align 8, !dbg !835
  %33 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !836
  %34 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %33, i32 0, i32 13, !dbg !838
  %35 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %34, i32 0, i32 5, !dbg !839
  %36 = load %struct._RpcChannel*, %struct._RpcChannel** %35, align 8, !dbg !839
  %37 = load i8*, i8** %3, align 8, !dbg !840
  %38 = load i8*, i8** %3, align 8, !dbg !841
  %39 = call i64 @strlen(i8* %38) #7, !dbg !842
  %40 = add i64 %39, 1, !dbg !843
  %41 = call i32 @RpcChannel_Send(%struct._RpcChannel* %36, i8* %37, i64 %40, i8** null, i64* null), !dbg !844
  %42 = icmp ne i32 %41, 0, !dbg !844
  br i1 %42, label %44, label %43, !dbg !845

; <label>:43:                                     ; preds = %30
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.ToolsCoreReportVersionData, i32 0, i32 0)), !dbg !846
  br label %44, !dbg !848

; <label>:44:                                     ; preds = %43, %30
  %45 = load i8*, i8** %3, align 8, !dbg !849
  call void @g_free(i8* %45), !dbg !850
  %46 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @ToolsCoreReportVersionData.cmdPrefix, i32 0, i32 0), i32 8931395), !dbg !851
  store i8* %46, i8** %3, align 8, !dbg !852
  %47 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !853
  %48 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %47, i32 0, i32 13, !dbg !855
  %49 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %48, i32 0, i32 5, !dbg !856
  %50 = load %struct._RpcChannel*, %struct._RpcChannel** %49, align 8, !dbg !856
  %51 = load i8*, i8** %3, align 8, !dbg !857
  %52 = load i8*, i8** %3, align 8, !dbg !858
  %53 = call i64 @strlen(i8* %52) #7, !dbg !859
  %54 = add i64 %53, 1, !dbg !860
  %55 = call i32 @RpcChannel_Send(%struct._RpcChannel* %50, i8* %51, i64 %54, i8** null, i64* null), !dbg !861
  %56 = icmp ne i32 %55, 0, !dbg !861
  br i1 %56, label %58, label %57, !dbg !862

; <label>:57:                                     ; preds = %44
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.ToolsCoreReportVersionData, i32 0, i32 0)), !dbg !863
  br label %58, !dbg !865

; <label>:58:                                     ; preds = %57, %44
  %59 = load i8*, i8** %3, align 8, !dbg !866
  call void @g_free(i8* %59), !dbg !867
  ret void, !dbg !868
}

declare i32 @ToolsCore_LoadPlugins(%struct.ToolsServiceState*) #3

declare void @ToolsCore_InitVsockFamily(%struct.ToolsServiceState*) #3

declare void @ToolsCore_RegisterPlugins(%struct.ToolsServiceState*) #3

declare i32 @g_signal_lookup(i8*, i64) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @ToolsCoreIOFreezeCb(i8*, %struct.ToolsAppCtx*, i32, %struct.ToolsServiceState*) #0 !dbg !869 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ToolsAppCtx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ToolsServiceState*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !872, metadata !302), !dbg !873
  store %struct.ToolsAppCtx* %1, %struct.ToolsAppCtx** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %6, metadata !874, metadata !302), !dbg !875
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !876, metadata !302), !dbg !877
  store %struct.ToolsServiceState* %3, %struct.ToolsServiceState** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %8, metadata !878, metadata !302), !dbg !879
  %9 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %8, align 8, !dbg !880
  %10 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %9, i32 0, i32 3, !dbg !882
  %11 = load i32, i32* %10, align 8, !dbg !882
  %12 = icmp ugt i32 %11, 0, !dbg !883
  br i1 %12, label %13, label %23, !dbg !884

; <label>:13:                                     ; preds = %4
  %14 = load i32, i32* %7, align 4, !dbg !885
  %15 = icmp ne i32 %14, 0, !dbg !885
  br i1 %15, label %16, label %23, !dbg !887

; <label>:16:                                     ; preds = %13
  %17 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %8, align 8, !dbg !888
  %18 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %17, i32 0, i32 3, !dbg !890
  %19 = load i32, i32* %18, align 8, !dbg !890
  %20 = call i32 @g_source_remove(i32 %19), !dbg !891
  %21 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %8, align 8, !dbg !892
  %22 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %21, i32 0, i32 3, !dbg !893
  store i32 0, i32* %22, align 8, !dbg !894
  call void @VMTools_SuspendLogIO(), !dbg !895
  br label %38, !dbg !896

; <label>:23:                                     ; preds = %13, %4
  %24 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %8, align 8, !dbg !897
  %25 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %24, i32 0, i32 3, !dbg !900
  %26 = load i32, i32* %25, align 8, !dbg !900
  %27 = icmp eq i32 %26, 0, !dbg !901
  br i1 %27, label %28, label %37, !dbg !902

; <label>:28:                                     ; preds = %23
  %29 = load i32, i32* %7, align 4, !dbg !903
  %30 = icmp ne i32 %29, 0, !dbg !903
  br i1 %30, label %37, label %31, !dbg !905

; <label>:31:                                     ; preds = %28
  call void @VMTools_ResumeLogIO(), !dbg !906
  %32 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %8, align 8, !dbg !908
  %33 = bitcast %struct.ToolsServiceState* %32 to i8*, !dbg !908
  %34 = call i32 @g_timeout_add(i32 5000, i32 (i8*)* @ToolsCoreConfFileCb, i8* %33), !dbg !909
  %35 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %8, align 8, !dbg !910
  %36 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %35, i32 0, i32 3, !dbg !911
  store i32 %34, i32* %36, align 8, !dbg !912
  br label %37, !dbg !913

; <label>:37:                                     ; preds = %31, %28, %23
  br label %38

; <label>:38:                                     ; preds = %37, %16
  ret void, !dbg !914
}

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @ToolsCoreConfFileCb(i8*) #0 !dbg !915 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !918, metadata !302), !dbg !919
  %3 = load i8*, i8** %2, align 8, !dbg !920
  %4 = bitcast i8* %3 to %struct.ToolsServiceState*, !dbg !920
  call void @ToolsCore_ReloadConfig(%struct.ToolsServiceState* %4, i32 0), !dbg !921
  ret i32 1, !dbg !922
}

declare void @g_main_loop_run(%struct._GMainLoop*) #3

; Function Attrs: nounwind uwtable
define internal void @ToolsCoreCleanup(%struct.ToolsServiceState*) #0 !dbg !923 {
  %2 = alloca %struct.ToolsServiceState*, align 8
  store %struct.ToolsServiceState* %0, %struct.ToolsServiceState** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %2, metadata !924, metadata !302), !dbg !925
  %3 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !926
  %4 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %3, i32 0, i32 13, !dbg !927
  call void @ToolsCorePool_Shutdown(%struct.ToolsAppCtx* %4), !dbg !928
  %5 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !929
  call void @ToolsCore_UnloadPlugins(%struct.ToolsServiceState* %5), !dbg !930
  %6 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !931
  %7 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %6, i32 0, i32 4, !dbg !933
  %8 = load i32, i32* %7, align 4, !dbg !933
  %9 = icmp ne i32 %8, 0, !dbg !931
  br i1 %9, label %10, label %12, !dbg !934

; <label>:10:                                     ; preds = %1
  %11 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !935
  call void @ToolsCore_ReleaseVsockFamily(%struct.ToolsServiceState* %11), !dbg !937
  br label %12, !dbg !938

; <label>:12:                                     ; preds = %10, %1
  %13 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !939
  %14 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %13, i32 0, i32 13, !dbg !941
  %15 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %14, i32 0, i32 5, !dbg !942
  %16 = load %struct._RpcChannel*, %struct._RpcChannel** %15, align 8, !dbg !942
  %17 = icmp ne %struct._RpcChannel* %16, null, !dbg !943
  br i1 %17, label %18, label %31, !dbg !944

; <label>:18:                                     ; preds = %12
  %19 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !945
  %20 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %19, i32 0, i32 13, !dbg !947
  %21 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %20, i32 0, i32 5, !dbg !948
  %22 = load %struct._RpcChannel*, %struct._RpcChannel** %21, align 8, !dbg !948
  call void @RpcChannel_Stop(%struct._RpcChannel* %22), !dbg !949
  %23 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !950
  %24 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %23, i32 0, i32 13, !dbg !951
  %25 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %24, i32 0, i32 5, !dbg !952
  %26 = load %struct._RpcChannel*, %struct._RpcChannel** %25, align 8, !dbg !952
  %27 = call i32 @RpcChannel_Destroy(%struct._RpcChannel* %26), !dbg !953
  %28 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !954
  %29 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %28, i32 0, i32 13, !dbg !955
  %30 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %29, i32 0, i32 5, !dbg !956
  store %struct._RpcChannel* null, %struct._RpcChannel** %30, align 8, !dbg !957
  br label %31, !dbg !958

; <label>:31:                                     ; preds = %18, %12
  %32 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !959
  %33 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %32, i32 0, i32 13, !dbg !960
  %34 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %33, i32 0, i32 6, !dbg !961
  %35 = load %struct._GKeyFile*, %struct._GKeyFile** %34, align 8, !dbg !961
  call void @g_key_file_free(%struct._GKeyFile* %35), !dbg !962
  %36 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !963
  %37 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %36, i32 0, i32 13, !dbg !964
  %38 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %37, i32 0, i32 4, !dbg !965
  %39 = load %struct._GMainLoop*, %struct._GMainLoop** %38, align 8, !dbg !965
  call void @g_main_loop_unref(%struct._GMainLoop* %39), !dbg !966
  %40 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !967
  %41 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %40, i32 0, i32 13, !dbg !969
  %42 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %41, i32 0, i32 9, !dbg !970
  %43 = load i8**, i8*** %42, align 8, !dbg !970
  %44 = icmp ne i8** %43, null, !dbg !967
  br i1 %44, label %45, label %53, !dbg !971

; <label>:45:                                     ; preds = %31
  %46 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !972
  %47 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %46, i32 0, i32 13, !dbg !974
  %48 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %47, i32 0, i32 9, !dbg !975
  %49 = load i8**, i8*** %48, align 8, !dbg !975
  call void @System_FreeNativeEnviron(i8** %49), !dbg !976
  %50 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !977
  %51 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %50, i32 0, i32 13, !dbg !978
  %52 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %51, i32 0, i32 9, !dbg !979
  store i8** null, i8*** %52, align 8, !dbg !980
  br label %53, !dbg !981

; <label>:53:                                     ; preds = %45, %31
  %54 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !982
  %55 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %54, i32 0, i32 13, !dbg !983
  %56 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %55, i32 0, i32 10, !dbg !984
  %57 = load i8*, i8** %56, align 8, !dbg !984
  call void (i8*, i8*, ...) @g_object_set(i8* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null), !dbg !985
  %58 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !986
  %59 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %58, i32 0, i32 13, !dbg !987
  %60 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %59, i32 0, i32 10, !dbg !988
  %61 = load i8*, i8** %60, align 8, !dbg !988
  call void @g_object_unref(i8* %61), !dbg !989
  %62 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !990
  %63 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %62, i32 0, i32 13, !dbg !991
  %64 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %63, i32 0, i32 10, !dbg !992
  store i8* null, i8** %64, align 8, !dbg !993
  %65 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !994
  %66 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %65, i32 0, i32 13, !dbg !995
  %67 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %66, i32 0, i32 6, !dbg !996
  store %struct._GKeyFile* null, %struct._GKeyFile** %67, align 8, !dbg !997
  %68 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !998
  %69 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %68, i32 0, i32 13, !dbg !999
  %70 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %69, i32 0, i32 4, !dbg !1000
  store %struct._GMainLoop* null, %struct._GMainLoop** %70, align 8, !dbg !1001
  ret void, !dbg !1002
}

declare i32 @RpcChannel_Send(%struct._RpcChannel*, i8*, i64, i8**, i64*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @g_source_remove(i32) #3

declare void @VMTools_SuspendLogIO() #3

declare void @VMTools_ResumeLogIO() #3

declare void @ToolsCorePool_Shutdown(%struct.ToolsAppCtx*) #3

declare void @ToolsCore_UnloadPlugins(%struct.ToolsServiceState*) #3

declare void @ToolsCore_ReleaseVsockFamily(%struct.ToolsServiceState*) #3

declare void @RpcChannel_Stop(%struct._RpcChannel*) #3

declare i32 @RpcChannel_Destroy(%struct._RpcChannel*) #3

declare void @g_key_file_free(%struct._GKeyFile*) #3

declare void @g_main_loop_unref(%struct._GMainLoop*) #3

declare void @System_FreeNativeEnviron(i8**) #3

declare void @g_object_unref(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!297, !298}
!llvm.ident = !{!299}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !49, globals: !178)
!1 = !DIFile(filename: "vmtoolsd-mainLoop.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1383")
!2 = !{!3, !7, !13, !20, !26, !38, !44}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 232, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/plugin.h", directory: "/home/lichi/Desktop/open-vm-tools/line1383")
!5 = !{!6}
!6 = !DIEnumerator(name: "TOOLS_CORE_API_V1", value: 1)
!7 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 339, size: 32, align: 32, elements: !8)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "TOOLS_APP_GUESTRPC", value: 1)
!10 = !DIEnumerator(name: "TOOLS_APP_SIGNALS", value: 2)
!11 = !DIEnumerator(name: "TOOLS_APP_PROVIDER", value: 3)
!12 = !DIEnumerator(name: "TOOLS_SVC_PROPERTY", value: 4)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 53, size: 32, align: 32, elements: !15)
!14 = !DIFile(filename: "toolsCoreInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line1383")
!15 = !{!16, !17, !18, !19}
!16 = !DIEnumerator(name: "TOOLS_PROVIDER_IDLE", value: 0)
!17 = !DIEnumerator(name: "TOOLS_PROVIDER_ACTIVE", value: 1)
!18 = !DIEnumerator(name: "TOOLS_PROVIDER_ERROR", value: 2)
!19 = !DIEnumerator(name: "TOOLS_PROVIDER_MAX", value: 3)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 50, size: 32, align: 32, elements: !22)
!21 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1383")
!22 = !{!23, !24, !25}
!23 = !DIEnumerator(name: "G_KEY_FILE_NONE", value: 0)
!24 = !DIEnumerator(name: "G_KEY_FILE_KEEP_COMMENTS", value: 1)
!25 = !DIEnumerator(name: "G_KEY_FILE_KEEP_TRANSLATIONS", value: 2)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 51, size: 32, align: 32, elements: !28)
!27 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1383")
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37}
!29 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!30 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!31 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!32 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!33 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!34 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!35 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!36 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!37 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !39, line: 42, size: 32, align: 32, elements: !40)
!39 = !DIFile(filename: "/usr/include/glib-2.0/gmodule.h", directory: "/home/lichi/Desktop/open-vm-tools/line1383")
!40 = !{!41, !42, !43}
!41 = !DIEnumerator(name: "G_MODULE_BIND_LAZY", value: 1)
!42 = !DIEnumerator(name: "G_MODULE_BIND_LOCAL", value: 2)
!43 = !DIEnumerator(name: "G_MODULE_BIND_MASK", value: 3)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 155, size: 32, align: 32, elements: !46)
!45 = !DIFile(filename: "/usr/include/glib-2.0/gobject/gsignal.h", directory: "/home/lichi/Desktop/open-vm-tools/line1383")
!46 = !{!47, !48}
!47 = !DIEnumerator(name: "G_CONNECT_AFTER", value: 1)
!48 = !DIEnumerator(name: "G_CONNECT_SWAPPED", value: 2)
!49 = !{!50, !109, !158, !159, !167, !172, !177}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppProviderReg", file: !14, line: 66, baseType: !52)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppProviderReg", file: !14, line: 63, size: 128, align: 64, elements: !53)
!53 = !{!54, !156}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "prov", scope: !52, file: !14, line: 64, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppProvider", file: !4, line: 434, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppProvider", file: !4, line: 373, size: 448, align: 64, elements: !58)
!58 = !{!59, !65, !67, !71, !126, !148, !152}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !57, file: !4, line: 375, baseType: !60, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !63, line: 46, baseType: !64)
!63 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1383")
!64 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "regType", scope: !57, file: !4, line: 382, baseType: !66, size: 32, align: 32, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppType", file: !4, line: 360, baseType: !7)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "regSize", scope: !57, file: !4, line: 384, baseType: !68, size: 64, align: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 216, baseType: !70)
!69 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1383")
!70 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !57, file: !4, line: 394, baseType: !72, size: 64, align: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !75, !110, !111}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppCtx", file: !4, line: 274, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppCtx", file: !4, line: 241, size: 576, align: 64, elements: !78)
!78 = !{!79, !81, !82, !86, !87, !92, !97, !101, !102, !103, !107}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !77, file: !4, line: 243, baseType: !80, size: 32, align: 32)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCoreAPI", file: !4, line: 234, baseType: !3)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !77, file: !4, line: 245, baseType: !60, size: 64, align: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "isVMware", scope: !77, file: !4, line: 247, baseType: !83, size: 32, align: 32, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !63, line: 50, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !63, line: 49, baseType: !85)
!85 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "errorCode", scope: !77, file: !4, line: 249, baseType: !85, size: 32, align: 32, offset: 160)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "mainLoop", scope: !77, file: !4, line: 251, baseType: !88, size: 64, align: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainLoop", file: !90, line: 56, baseType: !91)
!90 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line1383")
!91 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainLoop", file: !90, line: 56, flags: DIFlagFwdDecl)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !77, file: !4, line: 253, baseType: !93, size: 64, align: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !95, line: 48, baseType: !96)
!95 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line1383")
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !95, line: 48, flags: DIFlagFwdDecl)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !77, file: !4, line: 255, baseType: !98, size: 64, align: 64, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !21, line: 48, baseType: !100)
!100 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !21, line: 48, flags: DIFlagFwdDecl)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "blockFD", scope: !77, file: !4, line: 261, baseType: !85, size: 32, align: 32, offset: 384)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "uinputFD", scope: !77, file: !4, line: 263, baseType: !85, size: 32, align: 32, offset: 416)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !77, file: !4, line: 265, baseType: !104, size: 64, align: 64, offset: 448)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "serviceObj", scope: !77, file: !4, line: 273, baseType: !108, size: 64, align: 64, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !63, line: 77, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !114, line: 42, baseType: !115)
!114 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/open-vm-tools/line1383")
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !114, line: 44, size: 128, align: 64, elements: !116)
!116 = !{!117, !123, !124}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !115, file: !114, line: 46, baseType: !118, size: 32, align: 32)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !119, line: 36, baseType: !120)
!119 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/open-vm-tools/line1383")
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !121, line: 45, baseType: !122)
!121 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/open-vm-tools/line1383")
!122 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !115, file: !114, line: 47, baseType: !84, size: 32, align: 32, offset: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !115, file: !114, line: 48, baseType: !125, size: 64, align: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "registerApp", scope: !57, file: !4, line: 406, baseType: !127, size: 64, align: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!83, !75, !110, !130, !108}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsPluginData", file: !4, line: 501, size: 256, align: 64, elements: !132)
!132 = !{!133, !134, !143, !147}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !131, file: !4, line: 503, baseType: !105, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !131, file: !4, line: 508, baseType: !135, size: 64, align: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "GArray", file: !137, line: 37, baseType: !138)
!137 = !DIFile(filename: "/usr/include/glib-2.0/glib/garray.h", directory: "/home/lichi/Desktop/open-vm-tools/line1383")
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GArray", file: !137, line: 41, size: 128, align: 64, elements: !139)
!139 = !{!140, !141}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !138, file: !137, line: 43, baseType: !125, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !138, file: !137, line: 44, baseType: !142, size: 32, align: 32, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !63, line: 55, baseType: !122)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "errorCb", scope: !131, file: !4, line: 539, baseType: !144, size: 64, align: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!83, !75, !66, !108, !130}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !131, file: !4, line: 544, baseType: !108, size: 64, align: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !57, file: !4, line: 420, baseType: !149, size: 64, align: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{null, !75, !110}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "dumpState", scope: !57, file: !4, line: 433, baseType: !153, size: 64, align: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !75, !110, !108}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !52, file: !14, line: 65, baseType: !157, size: 32, align: 32, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppProviderState", file: !14, line: 60, baseType: !13)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTypeClass", file: !161, line: 389, baseType: !162)
!161 = !DIFile(filename: "/usr/include/glib-2.0/gobject/gtype.h", directory: "/home/lichi/Desktop/open-vm-tools/line1383")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTypeClass", file: !161, line: 406, size: 64, align: 64, elements: !163)
!163 = !{!164}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "g_type", scope: !162, file: !161, line: 409, baseType: !165, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "GType", file: !161, line: 382, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !121, line: 66, baseType: !70)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTypeInstance", file: !161, line: 391, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTypeInstance", file: !161, line: 416, size: 64, align: 64, elements: !170)
!170 = !{!171}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "g_class", scope: !169, file: !161, line: 419, baseType: !159, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCallback", file: !173, line: 86, baseType: !174)
!173 = !DIFile(filename: "/usr/include/glib-2.0/gobject/gclosure.h", directory: "/home/lichi/Desktop/open-vm-tools/line1383")
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{null}
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "GConnectFlags", file: !45, line: 159, baseType: !44)
!178 = !{!179}
!179 = distinct !DIGlobalVariable(name: "cmdPrefix", scope: !180, file: !181, line: 193, type: !294, isLocal: true, isDefinition: true, variable: [28 x i8]* @ToolsCoreReportVersionData.cmdPrefix)
!180 = distinct !DISubprogram(name: "ToolsCoreReportVersionData", scope: !181, file: !181, line: 190, type: !182, isLocal: true, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!181 = !DIFile(filename: "mainLoop.c", directory: "/home/lichi/Desktop/open-vm-tools/line1383")
!182 = !DISubroutineType(types: !183)
!183 = !{null, !184}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsServiceState", file: !14, line: 100, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsServiceState", file: !14, line: 69, size: 1472, align: 64, elements: !187)
!187 = !{!188, !189, !190, !196, !197, !198, !199, !200, !201, !208, !209, !213, !214, !289, !290, !291, !292}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !186, file: !14, line: 70, baseType: !125, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "configFile", scope: !186, file: !14, line: 71, baseType: !125, size: 64, align: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "configMtime", scope: !186, file: !14, line: 72, baseType: !191, size: 64, align: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !192, line: 75, baseType: !193)
!192 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line1383")
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !194, line: 139, baseType: !195)
!194 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1383")
!195 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "configCheckTask", scope: !186, file: !14, line: 73, baseType: !142, size: 32, align: 32, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "mainService", scope: !186, file: !14, line: 74, baseType: !83, size: 32, align: 32, offset: 224)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "capsRegistered", scope: !186, file: !14, line: 75, baseType: !83, size: 32, align: 32, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "commonPath", scope: !186, file: !14, line: 76, baseType: !125, size: 64, align: 64, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "pluginPath", scope: !186, file: !14, line: 77, baseType: !125, size: 64, align: 64, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "plugins", scope: !186, file: !14, line: 78, baseType: !202, size: 64, align: 64, offset: 448)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPtrArray", file: !137, line: 39, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GPtrArray", file: !137, line: 53, size: 128, align: 64, elements: !205)
!205 = !{!206, !207}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "pdata", scope: !204, file: !137, line: 55, baseType: !158, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !204, file: !137, line: 56, baseType: !142, size: 32, align: 32, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "pidFile", scope: !186, file: !14, line: 82, baseType: !125, size: 64, align: 64, offset: 512)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "debugLib", scope: !186, file: !14, line: 84, baseType: !210, size: 64, align: 64, offset: 576)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "GModule", file: !39, line: 49, baseType: !212)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GModule", file: !39, line: 49, flags: DIFlagFwdDecl)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "debugPlugin", scope: !186, file: !14, line: 85, baseType: !125, size: 64, align: 64, offset: 640)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "debugData", scope: !186, file: !14, line: 86, baseType: !215, size: 64, align: 64, offset: 704)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugLibData", file: !217, line: 150, baseType: !218)
!217 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/rpcdebug.h", directory: "/home/lichi/Desktop/open-vm-tools/line1383")
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcDebugLibData", file: !217, line: 142, size: 192, align: 64, elements: !219)
!219 = !{!220, !225, !229}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "newDebugChannel", scope: !218, file: !217, line: 143, baseType: !221, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!93, !75, !224}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !218, file: !217, line: 145, baseType: !226, size: 64, align: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!85, !75, !108, !108, !224}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "debugPlugin", scope: !218, file: !217, line: 149, baseType: !230, size: 64, align: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugPlugin", file: !217, line: 126, baseType: !232)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcDebugPlugin", file: !217, line: 112, size: 320, align: 64, elements: !233)
!233 = !{!234, !250, !251, !280, !286}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "recvFns", scope: !232, file: !217, line: 114, baseType: !235, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugRecvMapping", file: !217, line: 69, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcDebugRecvMapping", file: !217, line: 59, size: 256, align: 64, elements: !238)
!238 = !{!239, !240, !248, !249}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !237, file: !217, line: 60, baseType: !125, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "recvFn", scope: !237, file: !217, line: 61, baseType: !241, size: 64, align: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugRecvFn", file: !217, line: 53, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!83, !245, !68, !246, !247}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "xdrProc", scope: !237, file: !217, line: 66, baseType: !108, size: 64, align: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "xdrSize", scope: !237, file: !217, line: 68, baseType: !68, size: 64, align: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "dfltRecvFn", scope: !232, file: !217, line: 119, baseType: !241, size: 64, align: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "sendFn", scope: !232, file: !217, line: 121, baseType: !252, size: 64, align: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugSendFn", file: !217, line: 102, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!83, !256}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugMsgMapping", file: !217, line: 86, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcDebugMsgMapping", file: !217, line: 81, size: 256, align: 64, elements: !259)
!259 = !{!260, !261, !262, !279}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !258, file: !217, line: 82, baseType: !125, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "messageLen", scope: !258, file: !217, line: 83, baseType: !68, size: 64, align: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "validateFn", scope: !258, file: !217, line: 84, baseType: !263, size: 64, align: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugValidateFn", file: !217, line: 77, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!83, !267, !83}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcInData", file: !95, line: 77, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcInData", file: !95, line: 51, size: 512, align: 64, elements: !270)
!270 = !{!271, !272, !273, !274, !275, !276, !277, !278}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !269, file: !95, line: 53, baseType: !105, size: 64, align: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !269, file: !95, line: 58, baseType: !105, size: 64, align: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "argsSize", scope: !269, file: !95, line: 60, baseType: !68, size: 64, align: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !269, file: !95, line: 65, baseType: !245, size: 64, align: 64, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "resultLen", scope: !269, file: !95, line: 67, baseType: !68, size: 64, align: 64, offset: 256)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "freeResult", scope: !269, file: !95, line: 72, baseType: !83, size: 32, align: 32, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "appCtx", scope: !269, file: !95, line: 74, baseType: !109, size: 64, align: 64, offset: 384)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !269, file: !95, line: 76, baseType: !109, size: 64, align: 64, offset: 448)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "freeMsg", scope: !258, file: !217, line: 85, baseType: !83, size: 32, align: 32, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "shutdownFn", scope: !232, file: !217, line: 123, baseType: !281, size: 64, align: 64, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugShutdownFn", file: !217, line: 105, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !75, !285}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "plugin", scope: !232, file: !217, line: 125, baseType: !287, size: 64, align: 64, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsPluginData", file: !4, line: 545, baseType: !131)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !186, file: !14, line: 87, baseType: !76, size: 576, align: 64, offset: 768)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "providers", scope: !186, file: !14, line: 88, baseType: !135, size: 64, align: 64, offset: 1344)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "vsockDev", scope: !186, file: !14, line: 97, baseType: !85, size: 32, align: 32, offset: 1408)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "vsockFamily", scope: !186, file: !14, line: 98, baseType: !85, size: 32, align: 32, offset: 1440)
!293 = !{}
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 224, align: 8, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 28)
!297 = !{i32 2, !"Dwarf Version", i32 4}
!298 = !{i32 2, !"Debug Info Version", i32 3}
!299 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!300 = distinct !DISubprogram(name: "ToolsCore_DumpState", scope: !181, file: !181, line: 358, type: !182, isLocal: false, isDefinition: true, scopeLine: 359, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!301 = !DILocalVariable(name: "state", arg: 1, scope: !300, file: !181, line: 358, type: !184)
!302 = !DIExpression()
!303 = !DILocation(line: 358, column: 40, scope: !300)
!304 = !DILocalVariable(name: "i", scope: !300, file: !181, line: 360, type: !142)
!305 = !DILocation(line: 360, column: 10, scope: !300)
!306 = !DILocalVariable(name: "providerStates", scope: !300, file: !181, line: 361, type: !307)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 192, align: 64, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 3)
!310 = !DILocation(line: 361, column: 16, scope: !300)
!311 = !DILocation(line: 367, column: 4, scope: !300)
!312 = distinct !{!312, !311}
!313 = !DILocation(line: 367, column: 152, scope: !314)
!314 = !DILexicalBlockFile(scope: !315, file: !181, discriminator: 1)
!315 = distinct !DILexicalBlock(scope: !300, file: !181, line: 367, column: 7)
!316 = !DILocation(line: 369, column: 32, scope: !317)
!317 = distinct !DILexicalBlock(scope: !300, file: !181, line: 369, column: 8)
!318 = !DILocation(line: 369, column: 39, scope: !317)
!319 = !DILocation(line: 369, column: 43, scope: !317)
!320 = !DILocation(line: 369, column: 9, scope: !317)
!321 = !DILocation(line: 369, column: 8, scope: !300)
!322 = !DILocation(line: 372, column: 26, scope: !323)
!323 = distinct !DILexicalBlock(scope: !317, file: !181, line: 369, column: 54)
!324 = !DILocation(line: 372, column: 33, scope: !323)
!325 = !DILocation(line: 370, column: 7, scope: !323)
!326 = !DILocation(line: 373, column: 7, scope: !323)
!327 = !DILocation(line: 378, column: 23, scope: !300)
!328 = !DILocation(line: 378, column: 30, scope: !300)
!329 = !DILocation(line: 376, column: 4, scope: !300)
!330 = !DILocation(line: 381, column: 23, scope: !300)
!331 = !DILocation(line: 381, column: 30, scope: !300)
!332 = !DILocation(line: 379, column: 4, scope: !300)
!333 = !DILocation(line: 383, column: 11, scope: !334)
!334 = distinct !DILexicalBlock(scope: !300, file: !181, line: 383, column: 4)
!335 = !DILocation(line: 383, column: 9, scope: !334)
!336 = !DILocation(line: 383, column: 16, scope: !337)
!337 = !DILexicalBlockFile(scope: !338, file: !181, discriminator: 1)
!338 = distinct !DILexicalBlock(scope: !334, file: !181, line: 383, column: 4)
!339 = !DILocation(line: 383, column: 20, scope: !337)
!340 = !DILocation(line: 383, column: 27, scope: !337)
!341 = !DILocation(line: 383, column: 38, scope: !337)
!342 = !DILocation(line: 383, column: 18, scope: !337)
!343 = !DILocation(line: 383, column: 4, scope: !337)
!344 = !DILocalVariable(name: "prov", scope: !345, file: !181, line: 384, type: !50)
!345 = distinct !DILexicalBlock(scope: !338, file: !181, line: 383, column: 48)
!346 = !DILocation(line: 384, column: 28, scope: !345)
!347 = !DILocation(line: 384, column: 98, scope: !345)
!348 = !DILocation(line: 384, column: 37, scope: !345)
!349 = !DILocation(line: 384, column: 71, scope: !345)
!350 = !DILocation(line: 384, column: 78, scope: !345)
!351 = !DILocation(line: 384, column: 90, scope: !345)
!352 = !DILocation(line: 384, column: 38, scope: !345)
!353 = !DILocation(line: 389, column: 26, scope: !345)
!354 = !DILocation(line: 389, column: 32, scope: !345)
!355 = !DILocation(line: 389, column: 38, scope: !345)
!356 = !DILocation(line: 390, column: 41, scope: !345)
!357 = !DILocation(line: 390, column: 47, scope: !345)
!358 = !DILocation(line: 390, column: 26, scope: !345)
!359 = !DILocation(line: 387, column: 7, scope: !345)
!360 = !DILocation(line: 391, column: 11, scope: !361)
!361 = distinct !DILexicalBlock(scope: !345, file: !181, line: 391, column: 11)
!362 = !DILocation(line: 391, column: 17, scope: !361)
!363 = !DILocation(line: 391, column: 23, scope: !361)
!364 = !DILocation(line: 391, column: 33, scope: !361)
!365 = !DILocation(line: 391, column: 11, scope: !345)
!366 = !DILocation(line: 392, column: 10, scope: !367)
!367 = distinct !DILexicalBlock(scope: !361, file: !181, line: 391, column: 41)
!368 = !DILocation(line: 392, column: 16, scope: !367)
!369 = !DILocation(line: 392, column: 22, scope: !367)
!370 = !DILocation(line: 392, column: 33, scope: !367)
!371 = !DILocation(line: 392, column: 40, scope: !367)
!372 = !DILocation(line: 392, column: 45, scope: !367)
!373 = !DILocation(line: 392, column: 51, scope: !367)
!374 = !DILocation(line: 393, column: 7, scope: !367)
!375 = !DILocation(line: 394, column: 4, scope: !345)
!376 = !DILocation(line: 383, column: 44, scope: !377)
!377 = !DILexicalBlockFile(scope: !338, file: !181, discriminator: 2)
!378 = !DILocation(line: 383, column: 4, scope: !377)
!379 = distinct !{!379, !380}
!380 = !DILocation(line: 383, column: 4, scope: !300)
!381 = !DILocation(line: 396, column: 29, scope: !300)
!382 = !DILocation(line: 396, column: 4, scope: !300)
!383 = !DILocation(line: 398, column: 26, scope: !300)
!384 = !DILocation(line: 398, column: 33, scope: !300)
!385 = !DILocation(line: 398, column: 37, scope: !300)
!386 = !DILocation(line: 400, column: 27, scope: !300)
!387 = !DILocation(line: 400, column: 34, scope: !300)
!388 = !DILocation(line: 398, column: 4, scope: !300)
!389 = !DILocation(line: 401, column: 1, scope: !300)
!390 = !DILocation(line: 401, column: 1, scope: !391)
!391 = !DILexicalBlockFile(scope: !300, file: !181, discriminator: 1)
!392 = distinct !DISubprogram(name: "ToolsCore_LogState", scope: !4, file: !4, line: 101, type: !393, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !142, !105, null}
!395 = !DILocalVariable(name: "level", arg: 1, scope: !392, file: !4, line: 101, type: !142)
!396 = !DILocation(line: 101, column: 26, scope: !392)
!397 = !DILocalVariable(name: "fmt", arg: 2, scope: !392, file: !4, line: 102, type: !105)
!398 = !DILocation(line: 102, column: 32, scope: !392)
!399 = !DILocalVariable(name: "indented", scope: !392, file: !4, line: 105, type: !125)
!400 = !DILocation(line: 105, column: 11, scope: !392)
!401 = !DILocation(line: 105, column: 51, scope: !392)
!402 = !DILocation(line: 105, column: 49, scope: !392)
!403 = !DILocation(line: 105, column: 62, scope: !392)
!404 = !DILocation(line: 105, column: 22, scope: !392)
!405 = !DILocalVariable(name: "args", scope: !392, file: !4, line: 107, type: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !407, line: 98, baseType: !408)
!407 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/open-vm-tools/line1383")
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !407, line: 40, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 107, baseType: !410)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 192, align: 64, elements: !417)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 107, size: 192, align: 64, elements: !412)
!412 = !{!413, !414, !415, !416}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !411, file: !1, line: 107, baseType: !122, size: 32, align: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !411, file: !1, line: 107, baseType: !122, size: 32, align: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !411, file: !1, line: 107, baseType: !109, size: 64, align: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !411, file: !1, line: 107, baseType: !109, size: 64, align: 64, offset: 128)
!417 = !{!418}
!418 = !DISubrange(count: 1)
!419 = !DILocation(line: 107, column: 12, scope: !392)
!420 = !DILocation(line: 108, column: 3, scope: !392)
!421 = !DILocation(line: 109, column: 38, scope: !392)
!422 = !DILocation(line: 109, column: 48, scope: !392)
!423 = !DILocation(line: 109, column: 4, scope: !392)
!424 = !DILocation(line: 110, column: 3, scope: !392)
!425 = !DILocation(line: 112, column: 11, scope: !392)
!426 = !DILocation(line: 112, column: 4, scope: !392)
!427 = !DILocation(line: 113, column: 1, scope: !392)
!428 = distinct !DISubprogram(name: "ToolsCore_GetTcloName", scope: !181, file: !181, line: 414, type: !429, isLocal: false, isDefinition: true, scopeLine: 415, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!429 = !DISubroutineType(types: !430)
!430 = !{!105, !184}
!431 = !DILocalVariable(name: "state", arg: 1, scope: !428, file: !181, line: 414, type: !184)
!432 = !DILocation(line: 414, column: 42, scope: !428)
!433 = !DILocation(line: 416, column: 8, scope: !434)
!434 = distinct !DILexicalBlock(scope: !428, file: !181, line: 416, column: 8)
!435 = !DILocation(line: 416, column: 15, scope: !434)
!436 = !DILocation(line: 416, column: 8, scope: !428)
!437 = !DILocation(line: 417, column: 7, scope: !438)
!438 = distinct !DILexicalBlock(scope: !434, file: !181, line: 416, column: 28)
!439 = !DILocation(line: 418, column: 24, scope: !440)
!440 = distinct !DILexicalBlock(scope: !434, file: !181, line: 418, column: 15)
!441 = !DILocation(line: 418, column: 32, scope: !440)
!442 = !DILocation(line: 418, column: 16, scope: !440)
!443 = !DILocation(line: 418, column: 47, scope: !440)
!444 = !DILocation(line: 418, column: 15, scope: !434)
!445 = !DILocation(line: 419, column: 7, scope: !446)
!446 = distinct !DILexicalBlock(scope: !440, file: !181, line: 418, column: 54)
!447 = !DILocation(line: 421, column: 7, scope: !448)
!448 = distinct !DILexicalBlock(scope: !440, file: !181, line: 420, column: 11)
!449 = !DILocation(line: 423, column: 1, scope: !428)
!450 = distinct !DISubprogram(name: "ToolsCore_ReloadConfig", scope: !181, file: !181, line: 437, type: !451, isLocal: false, isDefinition: true, scopeLine: 439, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !184, !83}
!453 = !DILocalVariable(name: "state", arg: 1, scope: !450, file: !181, line: 437, type: !184)
!454 = !DILocation(line: 437, column: 43, scope: !450)
!455 = !DILocalVariable(name: "reset", arg: 2, scope: !450, file: !181, line: 438, type: !83)
!456 = !DILocation(line: 438, column: 33, scope: !450)
!457 = !DILocalVariable(name: "first", scope: !450, file: !181, line: 440, type: !83)
!458 = !DILocation(line: 440, column: 13, scope: !450)
!459 = !DILocation(line: 440, column: 21, scope: !450)
!460 = !DILocation(line: 440, column: 28, scope: !450)
!461 = !DILocation(line: 440, column: 32, scope: !450)
!462 = !DILocation(line: 440, column: 39, scope: !450)
!463 = !DILocalVariable(name: "loaded", scope: !450, file: !181, line: 441, type: !83)
!464 = !DILocation(line: 441, column: 13, scope: !450)
!465 = !DILocation(line: 443, column: 32, scope: !450)
!466 = !DILocation(line: 443, column: 39, scope: !450)
!467 = !DILocation(line: 445, column: 33, scope: !450)
!468 = !DILocation(line: 445, column: 40, scope: !450)
!469 = !DILocation(line: 445, column: 44, scope: !450)
!470 = !DILocation(line: 446, column: 33, scope: !450)
!471 = !DILocation(line: 446, column: 40, scope: !450)
!472 = !DILocation(line: 443, column: 13, scope: !450)
!473 = !DILocation(line: 443, column: 11, scope: !450)
!474 = !DILocation(line: 448, column: 9, scope: !475)
!475 = distinct !DILexicalBlock(scope: !450, file: !181, line: 448, column: 8)
!476 = !DILocation(line: 448, column: 15, scope: !475)
!477 = !DILocation(line: 448, column: 18, scope: !478)
!478 = !DILexicalBlockFile(scope: !475, file: !181, discriminator: 1)
!479 = !DILocation(line: 448, column: 8, scope: !478)
!480 = !DILocation(line: 449, column: 7, scope: !481)
!481 = distinct !DILexicalBlock(scope: !475, file: !181, line: 448, column: 26)
!482 = !DILocation(line: 455, column: 29, scope: !481)
!483 = !DILocation(line: 455, column: 36, scope: !481)
!484 = !DILocation(line: 455, column: 40, scope: !481)
!485 = !DILocation(line: 457, column: 30, scope: !481)
!486 = !DILocation(line: 457, column: 37, scope: !481)
!487 = !DILocation(line: 455, column: 7, scope: !481)
!488 = !DILocation(line: 458, column: 4, scope: !481)
!489 = !DILocation(line: 460, column: 8, scope: !490)
!490 = distinct !DILexicalBlock(scope: !450, file: !181, line: 460, column: 8)
!491 = !DILocation(line: 460, column: 15, scope: !490)
!492 = !DILocation(line: 460, column: 19, scope: !490)
!493 = !DILocation(line: 460, column: 26, scope: !490)
!494 = !DILocation(line: 460, column: 8, scope: !450)
!495 = !DILocation(line: 462, column: 27, scope: !496)
!496 = distinct !DILexicalBlock(scope: !490, file: !181, line: 460, column: 34)
!497 = !DILocation(line: 462, column: 7, scope: !496)
!498 = !DILocation(line: 462, column: 14, scope: !496)
!499 = !DILocation(line: 462, column: 18, scope: !496)
!500 = !DILocation(line: 462, column: 25, scope: !496)
!501 = !DILocation(line: 463, column: 4, scope: !496)
!502 = !DILocation(line: 465, column: 8, scope: !503)
!503 = distinct !DILexicalBlock(scope: !450, file: !181, line: 465, column: 8)
!504 = !DILocation(line: 465, column: 14, scope: !503)
!505 = !DILocation(line: 465, column: 17, scope: !506)
!506 = !DILexicalBlockFile(scope: !503, file: !181, discriminator: 1)
!507 = !DILocation(line: 465, column: 8, scope: !506)
!508 = !DILocation(line: 466, column: 29, scope: !509)
!509 = distinct !DILexicalBlock(scope: !503, file: !181, line: 465, column: 25)
!510 = !DILocation(line: 466, column: 36, scope: !509)
!511 = !DILocation(line: 467, column: 29, scope: !509)
!512 = !DILocation(line: 467, column: 36, scope: !509)
!513 = !DILocation(line: 467, column: 40, scope: !509)
!514 = !DILocation(line: 469, column: 29, scope: !509)
!515 = !DILocation(line: 466, column: 7, scope: !509)
!516 = !DILocation(line: 470, column: 4, scope: !509)
!517 = !DILocation(line: 471, column: 1, scope: !450)
!518 = distinct !DISubprogram(name: "ToolsCore_Setup", scope: !181, file: !181, line: 481, type: !182, isLocal: false, isDefinition: true, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!519 = !DILocalVariable(name: "state", arg: 1, scope: !518, file: !181, line: 481, type: !184)
!520 = !DILocation(line: 481, column: 36, scope: !518)
!521 = !DILocalVariable(name: "gctx", scope: !518, file: !181, line: 483, type: !522)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64, align: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !90, line: 48, baseType: !524)
!524 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !90, line: 48, flags: DIFlagFwdDecl)
!525 = !DILocation(line: 483, column: 18, scope: !518)
!526 = !DILocalVariable(name: "ctxProp", scope: !518, file: !181, line: 484, type: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsServiceProperty", file: !4, line: 468, baseType: !528)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsServiceProperty", file: !4, line: 466, size: 64, align: 64, elements: !529)
!529 = !{!530}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !528, file: !4, line: 467, baseType: !105, size: 64, align: 64)
!531 = !DILocation(line: 484, column: 25, scope: !518)
!532 = !DILocation(line: 493, column: 4, scope: !518)
!533 = !DILocation(line: 496, column: 11, scope: !518)
!534 = !DILocation(line: 496, column: 9, scope: !518)
!535 = !DILocation(line: 497, column: 4, scope: !518)
!536 = !DILocation(line: 497, column: 11, scope: !518)
!537 = !DILocation(line: 497, column: 15, scope: !518)
!538 = !DILocation(line: 497, column: 23, scope: !518)
!539 = !DILocation(line: 498, column: 22, scope: !518)
!540 = !DILocation(line: 498, column: 29, scope: !518)
!541 = !DILocation(line: 498, column: 4, scope: !518)
!542 = !DILocation(line: 498, column: 11, scope: !518)
!543 = !DILocation(line: 498, column: 15, scope: !518)
!544 = !DILocation(line: 498, column: 20, scope: !518)
!545 = !DILocation(line: 499, column: 4, scope: !518)
!546 = !DILocation(line: 499, column: 11, scope: !518)
!547 = !DILocation(line: 499, column: 15, scope: !518)
!548 = !DILocation(line: 499, column: 25, scope: !518)
!549 = !DILocation(line: 507, column: 42, scope: !518)
!550 = !DILocation(line: 507, column: 26, scope: !518)
!551 = !DILocation(line: 507, column: 4, scope: !518)
!552 = !DILocation(line: 507, column: 11, scope: !518)
!553 = !DILocation(line: 507, column: 15, scope: !518)
!554 = !DILocation(line: 507, column: 24, scope: !518)
!555 = !DILocation(line: 515, column: 26, scope: !518)
!556 = !DILocation(line: 515, column: 4, scope: !518)
!557 = !DILocation(line: 515, column: 11, scope: !518)
!558 = !DILocation(line: 515, column: 15, scope: !518)
!559 = !DILocation(line: 515, column: 24, scope: !518)
!560 = !DILocation(line: 517, column: 25, scope: !518)
!561 = !DILocation(line: 517, column: 4, scope: !518)
!562 = !DILocation(line: 519, column: 4, scope: !518)
!563 = !DILocation(line: 520, column: 41, scope: !518)
!564 = !DILocation(line: 520, column: 28, scope: !565)
!565 = !DILexicalBlockFile(scope: !518, file: !181, discriminator: 1)
!566 = !DILocation(line: 520, column: 4, scope: !518)
!567 = !DILocation(line: 520, column: 11, scope: !518)
!568 = !DILocation(line: 520, column: 15, scope: !518)
!569 = !DILocation(line: 520, column: 26, scope: !518)
!570 = !DILocation(line: 523, column: 38, scope: !518)
!571 = !DILocation(line: 523, column: 45, scope: !518)
!572 = !DILocation(line: 523, column: 49, scope: !518)
!573 = !DILocation(line: 523, column: 4, scope: !518)
!574 = !DILocation(line: 525, column: 17, scope: !518)
!575 = !DILocation(line: 525, column: 24, scope: !518)
!576 = !DILocation(line: 525, column: 28, scope: !518)
!577 = !DILocation(line: 525, column: 56, scope: !518)
!578 = !DILocation(line: 525, column: 63, scope: !518)
!579 = !DILocation(line: 525, column: 4, scope: !518)
!580 = !DILocation(line: 526, column: 24, scope: !518)
!581 = !DILocation(line: 526, column: 31, scope: !518)
!582 = !DILocation(line: 526, column: 4, scope: !518)
!583 = !DILocation(line: 529, column: 8, scope: !584)
!584 = distinct !DILexicalBlock(scope: !518, file: !181, line: 529, column: 8)
!585 = !DILocation(line: 529, column: 15, scope: !584)
!586 = !DILocation(line: 529, column: 27, scope: !584)
!587 = !DILocation(line: 529, column: 8, scope: !518)
!588 = !DILocation(line: 530, column: 32, scope: !589)
!589 = distinct !DILexicalBlock(scope: !584, file: !181, line: 529, column: 35)
!590 = !DILocation(line: 530, column: 7, scope: !589)
!591 = !DILocation(line: 531, column: 4, scope: !589)
!592 = !DILocation(line: 532, column: 1, scope: !518)
!593 = distinct !DISubprogram(name: "ToolsCoreInitializeDebug", scope: !181, file: !181, line: 106, type: !182, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!594 = !DILocalVariable(name: "state", arg: 1, scope: !593, file: !181, line: 106, type: !184)
!595 = !DILocation(line: 106, column: 45, scope: !593)
!596 = !DILocalVariable(name: "libdata", scope: !593, file: !181, line: 108, type: !215)
!597 = !DILocation(line: 108, column: 21, scope: !593)
!598 = !DILocalVariable(name: "initFn", scope: !593, file: !181, line: 109, type: !599)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugInitializeFn", file: !217, line: 153, baseType: !600)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64, align: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!215, !75, !125}
!603 = !DILocation(line: 109, column: 25, scope: !593)
!604 = !DILocation(line: 111, column: 22, scope: !593)
!605 = !DILocation(line: 111, column: 4, scope: !593)
!606 = !DILocation(line: 111, column: 11, scope: !593)
!607 = !DILocation(line: 111, column: 20, scope: !593)
!608 = !DILocation(line: 112, column: 8, scope: !609)
!609 = distinct !DILexicalBlock(scope: !593, file: !181, line: 112, column: 8)
!610 = !DILocation(line: 112, column: 15, scope: !609)
!611 = !DILocation(line: 112, column: 24, scope: !609)
!612 = !DILocation(line: 112, column: 8, scope: !593)
!613 = !DILocation(line: 113, column: 7, scope: !614)
!614 = distinct !DILexicalBlock(scope: !609, file: !181, line: 112, column: 32)
!615 = distinct !{!615, !613}
!616 = !DILocation(line: 113, column: 12, scope: !617)
!617 = !DILexicalBlockFile(scope: !618, file: !181, discriminator: 1)
!618 = distinct !DILexicalBlock(scope: !614, file: !181, line: 113, column: 10)
!619 = !DILocation(line: 113, column: 86, scope: !617)
!620 = !DILocation(line: 113, column: 86, scope: !621)
!621 = !DILexicalBlockFile(scope: !622, file: !181, discriminator: 2)
!622 = distinct !DILexicalBlock(scope: !623, file: !181, line: 113, column: 86)
!623 = distinct !DILexicalBlock(scope: !618, file: !181, line: 113, column: 86)
!624 = distinct !{!624, !625}
!625 = !DILocation(line: 113, column: 86, scope: !618)
!626 = !DILocation(line: 114, column: 4, scope: !614)
!627 = !DILocation(line: 116, column: 25, scope: !628)
!628 = distinct !DILexicalBlock(scope: !593, file: !181, line: 116, column: 8)
!629 = !DILocation(line: 116, column: 32, scope: !628)
!630 = !DILocation(line: 118, column: 25, scope: !628)
!631 = !DILocation(line: 116, column: 9, scope: !628)
!632 = !DILocation(line: 116, column: 8, scope: !593)
!633 = !DILocation(line: 119, column: 7, scope: !634)
!634 = distinct !DILexicalBlock(scope: !628, file: !181, line: 118, column: 48)
!635 = distinct !{!635, !633}
!636 = !DILocation(line: 119, column: 12, scope: !637)
!637 = !DILexicalBlockFile(scope: !638, file: !181, discriminator: 1)
!638 = distinct !DILexicalBlock(scope: !634, file: !181, line: 119, column: 10)
!639 = !DILocation(line: 119, column: 96, scope: !637)
!640 = !DILocation(line: 119, column: 96, scope: !641)
!641 = !DILexicalBlockFile(scope: !642, file: !181, discriminator: 2)
!642 = distinct !DILexicalBlock(scope: !643, file: !181, line: 119, column: 96)
!643 = distinct !DILexicalBlock(scope: !638, file: !181, line: 119, column: 96)
!644 = distinct !{!644, !645}
!645 = !DILocation(line: 119, column: 96, scope: !638)
!646 = !DILocation(line: 120, column: 4, scope: !634)
!647 = !DILocation(line: 122, column: 14, scope: !593)
!648 = !DILocation(line: 122, column: 22, scope: !593)
!649 = !DILocation(line: 122, column: 29, scope: !593)
!650 = !DILocation(line: 122, column: 34, scope: !593)
!651 = !DILocation(line: 122, column: 41, scope: !593)
!652 = !DILocation(line: 122, column: 12, scope: !593)
!653 = !DILocation(line: 126, column: 23, scope: !593)
!654 = !DILocation(line: 126, column: 4, scope: !593)
!655 = !DILocation(line: 126, column: 11, scope: !593)
!656 = !DILocation(line: 126, column: 21, scope: !593)
!657 = !DILocation(line: 130, column: 1, scope: !593)
!658 = distinct !DISubprogram(name: "ToolsCore_Run", scope: !181, file: !181, line: 544, type: !659, isLocal: false, isDefinition: true, scopeLine: 545, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!659 = !DISubroutineType(types: !660)
!660 = !{!85, !184}
!661 = !DILocalVariable(name: "state", arg: 1, scope: !658, file: !181, line: 544, type: !184)
!662 = !DILocation(line: 544, column: 34, scope: !658)
!663 = !DILocation(line: 546, column: 8, scope: !664)
!664 = distinct !DILexicalBlock(scope: !658, file: !181, line: 546, column: 8)
!665 = !DILocation(line: 546, column: 15, scope: !664)
!666 = !DILocation(line: 546, column: 25, scope: !664)
!667 = !DILocation(line: 546, column: 8, scope: !658)
!668 = !DILocalVariable(name: "ret", scope: !669, file: !181, line: 547, type: !85)
!669 = distinct !DILexicalBlock(scope: !664, file: !181, line: 546, column: 33)
!670 = !DILocation(line: 547, column: 11, scope: !669)
!671 = !DILocation(line: 547, column: 17, scope: !669)
!672 = !DILocation(line: 547, column: 24, scope: !669)
!673 = !DILocation(line: 547, column: 35, scope: !669)
!674 = !DILocation(line: 547, column: 40, scope: !669)
!675 = !DILocation(line: 547, column: 47, scope: !669)
!676 = !DILocation(line: 549, column: 39, scope: !669)
!677 = !DILocation(line: 550, column: 39, scope: !669)
!678 = !DILocation(line: 550, column: 46, scope: !669)
!679 = !DILocation(line: 551, column: 22, scope: !669)
!680 = !DILocation(line: 551, column: 29, scope: !669)
!681 = !DILocation(line: 551, column: 7, scope: !669)
!682 = !DILocation(line: 552, column: 7, scope: !669)
!683 = !DILocation(line: 552, column: 14, scope: !669)
!684 = !DILocation(line: 552, column: 24, scope: !669)
!685 = !DILocation(line: 553, column: 7, scope: !669)
!686 = !DILocation(line: 553, column: 14, scope: !669)
!687 = !DILocation(line: 553, column: 23, scope: !669)
!688 = !DILocation(line: 554, column: 14, scope: !669)
!689 = !DILocation(line: 554, column: 7, scope: !669)
!690 = !DILocation(line: 556, column: 28, scope: !658)
!691 = !DILocation(line: 556, column: 11, scope: !658)
!692 = !DILocation(line: 556, column: 4, scope: !658)
!693 = !DILocation(line: 557, column: 1, scope: !658)
!694 = distinct !DISubprogram(name: "ToolsCoreRunLoop", scope: !181, file: !181, line: 272, type: !659, isLocal: true, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!695 = !DILocalVariable(name: "state", arg: 1, scope: !694, file: !181, line: 272, type: !184)
!696 = !DILocation(line: 272, column: 37, scope: !694)
!697 = !DILocation(line: 274, column: 27, scope: !698)
!698 = distinct !DILexicalBlock(scope: !694, file: !181, line: 274, column: 8)
!699 = !DILocation(line: 274, column: 9, scope: !698)
!700 = !DILocation(line: 274, column: 8, scope: !694)
!701 = !DILocation(line: 275, column: 7, scope: !702)
!702 = distinct !DILexicalBlock(scope: !698, file: !181, line: 274, column: 35)
!703 = !DILocation(line: 282, column: 8, scope: !704)
!704 = distinct !DILexicalBlock(scope: !694, file: !181, line: 282, column: 8)
!705 = !DILocation(line: 282, column: 15, scope: !704)
!706 = !DILocation(line: 282, column: 19, scope: !704)
!707 = !DILocation(line: 282, column: 23, scope: !704)
!708 = !DILocation(line: 282, column: 44, scope: !709)
!709 = !DILexicalBlockFile(scope: !704, file: !181, discriminator: 1)
!710 = !DILocation(line: 282, column: 51, scope: !709)
!711 = !DILocation(line: 282, column: 55, scope: !709)
!712 = !DILocation(line: 282, column: 27, scope: !709)
!713 = !DILocation(line: 282, column: 8, scope: !709)
!714 = !DILocation(line: 283, column: 7, scope: !715)
!715 = distinct !DILexicalBlock(scope: !704, file: !181, line: 282, column: 61)
!716 = !DILocation(line: 287, column: 8, scope: !717)
!717 = distinct !DILexicalBlock(scope: !694, file: !181, line: 287, column: 8)
!718 = !DILocation(line: 287, column: 15, scope: !717)
!719 = !DILocation(line: 287, column: 19, scope: !717)
!720 = !DILocation(line: 287, column: 8, scope: !694)
!721 = !DILocation(line: 288, column: 34, scope: !722)
!722 = distinct !DILexicalBlock(scope: !717, file: !181, line: 287, column: 24)
!723 = !DILocation(line: 288, column: 7, scope: !722)
!724 = !DILocation(line: 289, column: 4, scope: !722)
!725 = !DILocation(line: 291, column: 31, scope: !726)
!726 = distinct !DILexicalBlock(scope: !694, file: !181, line: 291, column: 8)
!727 = !DILocation(line: 291, column: 9, scope: !726)
!728 = !DILocation(line: 291, column: 8, scope: !694)
!729 = !DILocation(line: 292, column: 7, scope: !730)
!730 = distinct !DILexicalBlock(scope: !726, file: !181, line: 291, column: 39)
!731 = !DILocation(line: 299, column: 8, scope: !732)
!732 = distinct !DILexicalBlock(scope: !694, file: !181, line: 299, column: 8)
!733 = !DILocation(line: 299, column: 15, scope: !732)
!734 = !DILocation(line: 299, column: 8, scope: !694)
!735 = !DILocation(line: 300, column: 33, scope: !736)
!736 = distinct !DILexicalBlock(scope: !732, file: !181, line: 299, column: 28)
!737 = !DILocation(line: 300, column: 7, scope: !736)
!738 = !DILocation(line: 301, column: 4, scope: !736)
!739 = !DILocation(line: 314, column: 8, scope: !740)
!740 = distinct !DILexicalBlock(scope: !694, file: !181, line: 314, column: 8)
!741 = !DILocation(line: 314, column: 15, scope: !740)
!742 = !DILocation(line: 314, column: 19, scope: !740)
!743 = !DILocation(line: 314, column: 29, scope: !740)
!744 = !DILocation(line: 314, column: 34, scope: !740)
!745 = !DILocation(line: 315, column: 9, scope: !740)
!746 = !DILocation(line: 315, column: 16, scope: !740)
!747 = !DILocation(line: 315, column: 20, scope: !740)
!748 = !DILocation(line: 315, column: 29, scope: !740)
!749 = !DILocation(line: 316, column: 31, scope: !740)
!750 = !DILocation(line: 316, column: 9, scope: !740)
!751 = !DILocation(line: 316, column: 38, scope: !740)
!752 = !DILocation(line: 316, column: 45, scope: !740)
!753 = !DILocation(line: 317, column: 9, scope: !740)
!754 = !DILocation(line: 317, column: 16, scope: !740)
!755 = !DILocation(line: 317, column: 28, scope: !740)
!756 = !DILocation(line: 314, column: 8, scope: !757)
!757 = !DILexicalBlockFile(scope: !694, file: !181, discriminator: 1)
!758 = !DILocation(line: 318, column: 33, scope: !759)
!759 = distinct !DILexicalBlock(scope: !740, file: !181, line: 317, column: 37)
!760 = !DILocation(line: 318, column: 7, scope: !759)
!761 = !DILocation(line: 326, column: 65, scope: !762)
!762 = distinct !DILexicalBlock(scope: !759, file: !181, line: 325, column: 11)
!763 = !DILocation(line: 326, column: 72, scope: !762)
!764 = !DILocation(line: 326, column: 76, scope: !762)
!765 = !DILocation(line: 326, column: 47, scope: !762)
!766 = !DILocation(line: 326, column: 90, scope: !762)
!767 = !DILocation(line: 326, column: 101, scope: !762)
!768 = !DILocation(line: 325, column: 11, scope: !762)
!769 = !DILocation(line: 326, column: 112, scope: !762)
!770 = !DILocation(line: 325, column: 11, scope: !759)
!771 = !DILocation(line: 327, column: 34, scope: !772)
!772 = distinct !DILexicalBlock(scope: !762, file: !181, line: 326, column: 118)
!773 = !DILocation(line: 327, column: 41, scope: !772)
!774 = !DILocation(line: 327, column: 45, scope: !772)
!775 = !DILocation(line: 327, column: 117, scope: !772)
!776 = !DILocation(line: 327, column: 116, scope: !772)
!777 = !DILocation(line: 327, column: 10, scope: !772)
!778 = !DILocation(line: 331, column: 7, scope: !772)
!779 = !DILocation(line: 335, column: 46, scope: !759)
!780 = !DILocation(line: 333, column: 32, scope: !759)
!781 = !DILocation(line: 333, column: 7, scope: !759)
!782 = !DILocation(line: 333, column: 14, scope: !759)
!783 = !DILocation(line: 333, column: 30, scope: !759)
!784 = !DILocation(line: 340, column: 23, scope: !759)
!785 = !DILocation(line: 340, column: 30, scope: !759)
!786 = !DILocation(line: 340, column: 34, scope: !759)
!787 = !DILocation(line: 340, column: 7, scope: !759)
!788 = !DILocation(line: 342, column: 4, scope: !759)
!789 = !DILocation(line: 344, column: 21, scope: !694)
!790 = !DILocation(line: 344, column: 4, scope: !694)
!791 = !DILocation(line: 345, column: 11, scope: !694)
!792 = !DILocation(line: 345, column: 18, scope: !694)
!793 = !DILocation(line: 345, column: 22, scope: !694)
!794 = !DILocation(line: 345, column: 4, scope: !694)
!795 = !DILocation(line: 346, column: 1, scope: !694)
!796 = !DILocalVariable(name: "state", arg: 1, scope: !180, file: !181, line: 190, type: !184)
!797 = !DILocation(line: 190, column: 47, scope: !180)
!798 = !DILocalVariable(name: "value", scope: !180, file: !181, line: 192, type: !245)
!799 = !DILocation(line: 192, column: 10, scope: !180)
!800 = !DILocation(line: 205, column: 12, scope: !180)
!801 = !DILocation(line: 205, column: 10, scope: !180)
!802 = !DILocation(line: 214, column: 25, scope: !803)
!803 = distinct !DILexicalBlock(scope: !180, file: !181, line: 214, column: 8)
!804 = !DILocation(line: 214, column: 32, scope: !803)
!805 = !DILocation(line: 214, column: 36, scope: !803)
!806 = !DILocation(line: 214, column: 41, scope: !803)
!807 = !DILocation(line: 215, column: 32, scope: !803)
!808 = !DILocation(line: 215, column: 25, scope: !803)
!809 = !DILocation(line: 215, column: 39, scope: !803)
!810 = !DILocation(line: 214, column: 9, scope: !803)
!811 = !DILocation(line: 214, column: 8, scope: !180)
!812 = !DILocation(line: 216, column: 7, scope: !813)
!813 = distinct !DILexicalBlock(scope: !803, file: !181, line: 215, column: 56)
!814 = !DILocation(line: 217, column: 4, scope: !813)
!815 = !DILocation(line: 218, column: 11, scope: !180)
!816 = !DILocation(line: 218, column: 4, scope: !180)
!817 = !DILocation(line: 224, column: 12, scope: !180)
!818 = !DILocation(line: 224, column: 10, scope: !180)
!819 = !DILocation(line: 226, column: 25, scope: !820)
!820 = distinct !DILexicalBlock(scope: !180, file: !181, line: 226, column: 8)
!821 = !DILocation(line: 226, column: 32, scope: !820)
!822 = !DILocation(line: 226, column: 36, scope: !820)
!823 = !DILocation(line: 226, column: 41, scope: !820)
!824 = !DILocation(line: 227, column: 32, scope: !820)
!825 = !DILocation(line: 227, column: 25, scope: !820)
!826 = !DILocation(line: 227, column: 39, scope: !820)
!827 = !DILocation(line: 226, column: 9, scope: !820)
!828 = !DILocation(line: 226, column: 8, scope: !180)
!829 = !DILocation(line: 228, column: 7, scope: !830)
!830 = distinct !DILexicalBlock(scope: !820, file: !181, line: 227, column: 56)
!831 = !DILocation(line: 229, column: 4, scope: !830)
!832 = !DILocation(line: 230, column: 11, scope: !180)
!833 = !DILocation(line: 230, column: 4, scope: !180)
!834 = !DILocation(line: 236, column: 12, scope: !180)
!835 = !DILocation(line: 236, column: 10, scope: !180)
!836 = !DILocation(line: 238, column: 25, scope: !837)
!837 = distinct !DILexicalBlock(scope: !180, file: !181, line: 238, column: 8)
!838 = !DILocation(line: 238, column: 32, scope: !837)
!839 = !DILocation(line: 238, column: 36, scope: !837)
!840 = !DILocation(line: 238, column: 41, scope: !837)
!841 = !DILocation(line: 239, column: 33, scope: !837)
!842 = !DILocation(line: 239, column: 26, scope: !837)
!843 = !DILocation(line: 239, column: 40, scope: !837)
!844 = !DILocation(line: 238, column: 9, scope: !837)
!845 = !DILocation(line: 238, column: 8, scope: !180)
!846 = !DILocation(line: 240, column: 7, scope: !847)
!847 = distinct !DILexicalBlock(scope: !837, file: !181, line: 239, column: 57)
!848 = !DILocation(line: 241, column: 4, scope: !847)
!849 = !DILocation(line: 242, column: 11, scope: !180)
!850 = !DILocation(line: 242, column: 4, scope: !180)
!851 = !DILocation(line: 248, column: 12, scope: !180)
!852 = !DILocation(line: 248, column: 10, scope: !180)
!853 = !DILocation(line: 250, column: 25, scope: !854)
!854 = distinct !DILexicalBlock(scope: !180, file: !181, line: 250, column: 8)
!855 = !DILocation(line: 250, column: 32, scope: !854)
!856 = !DILocation(line: 250, column: 36, scope: !854)
!857 = !DILocation(line: 250, column: 41, scope: !854)
!858 = !DILocation(line: 251, column: 32, scope: !854)
!859 = !DILocation(line: 251, column: 25, scope: !854)
!860 = !DILocation(line: 251, column: 39, scope: !854)
!861 = !DILocation(line: 250, column: 9, scope: !854)
!862 = !DILocation(line: 250, column: 8, scope: !180)
!863 = !DILocation(line: 252, column: 7, scope: !864)
!864 = distinct !DILexicalBlock(scope: !854, file: !181, line: 251, column: 56)
!865 = !DILocation(line: 253, column: 4, scope: !864)
!866 = !DILocation(line: 254, column: 11, scope: !180)
!867 = !DILocation(line: 254, column: 4, scope: !180)
!868 = !DILocation(line: 255, column: 1, scope: !180)
!869 = distinct !DISubprogram(name: "ToolsCoreIOFreezeCb", scope: !181, file: !181, line: 160, type: !870, isLocal: true, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !108, !75, !83, !184}
!872 = !DILocalVariable(name: "src", arg: 1, scope: !869, file: !181, line: 160, type: !108)
!873 = !DILocation(line: 160, column: 30, scope: !869)
!874 = !DILocalVariable(name: "ctx", arg: 2, scope: !869, file: !181, line: 161, type: !75)
!875 = !DILocation(line: 161, column: 34, scope: !869)
!876 = !DILocalVariable(name: "freeze", arg: 3, scope: !869, file: !181, line: 162, type: !83)
!877 = !DILocation(line: 162, column: 30, scope: !869)
!878 = !DILocalVariable(name: "state", arg: 4, scope: !869, file: !181, line: 163, type: !184)
!879 = !DILocation(line: 163, column: 40, scope: !869)
!880 = !DILocation(line: 165, column: 8, scope: !881)
!881 = distinct !DILexicalBlock(scope: !869, file: !181, line: 165, column: 8)
!882 = !DILocation(line: 165, column: 15, scope: !881)
!883 = !DILocation(line: 165, column: 31, scope: !881)
!884 = !DILocation(line: 165, column: 35, scope: !881)
!885 = !DILocation(line: 165, column: 38, scope: !886)
!886 = !DILexicalBlockFile(scope: !881, file: !181, discriminator: 1)
!887 = !DILocation(line: 165, column: 8, scope: !886)
!888 = !DILocation(line: 166, column: 23, scope: !889)
!889 = distinct !DILexicalBlock(scope: !881, file: !181, line: 165, column: 46)
!890 = !DILocation(line: 166, column: 30, scope: !889)
!891 = !DILocation(line: 166, column: 7, scope: !889)
!892 = !DILocation(line: 167, column: 7, scope: !889)
!893 = !DILocation(line: 167, column: 14, scope: !889)
!894 = !DILocation(line: 167, column: 30, scope: !889)
!895 = !DILocation(line: 168, column: 7, scope: !889)
!896 = !DILocation(line: 169, column: 4, scope: !889)
!897 = !DILocation(line: 169, column: 15, scope: !898)
!898 = !DILexicalBlockFile(scope: !899, file: !181, discriminator: 1)
!899 = distinct !DILexicalBlock(scope: !881, file: !181, line: 169, column: 15)
!900 = !DILocation(line: 169, column: 22, scope: !898)
!901 = !DILocation(line: 169, column: 38, scope: !898)
!902 = !DILocation(line: 169, column: 43, scope: !898)
!903 = !DILocation(line: 169, column: 47, scope: !904)
!904 = !DILexicalBlockFile(scope: !899, file: !181, discriminator: 2)
!905 = !DILocation(line: 169, column: 15, scope: !904)
!906 = !DILocation(line: 170, column: 7, scope: !907)
!907 = distinct !DILexicalBlock(scope: !899, file: !181, line: 169, column: 55)
!908 = !DILocation(line: 173, column: 46, scope: !907)
!909 = !DILocation(line: 171, column: 32, scope: !907)
!910 = !DILocation(line: 171, column: 7, scope: !907)
!911 = !DILocation(line: 171, column: 14, scope: !907)
!912 = !DILocation(line: 171, column: 30, scope: !907)
!913 = !DILocation(line: 174, column: 4, scope: !907)
!914 = !DILocation(line: 175, column: 1, scope: !869)
!915 = distinct !DISubprogram(name: "ToolsCoreConfFileCb", scope: !181, file: !181, line: 142, type: !916, isLocal: true, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!916 = !DISubroutineType(types: !917)
!917 = !{!83, !108}
!918 = !DILocalVariable(name: "clientData", arg: 1, scope: !915, file: !181, line: 142, type: !108)
!919 = !DILocation(line: 142, column: 30, scope: !915)
!920 = !DILocation(line: 144, column: 27, scope: !915)
!921 = !DILocation(line: 144, column: 4, scope: !915)
!922 = !DILocation(line: 145, column: 4, scope: !915)
!923 = distinct !DISubprogram(name: "ToolsCoreCleanup", scope: !181, file: !181, line: 59, type: !182, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !293)
!924 = !DILocalVariable(name: "state", arg: 1, scope: !923, file: !181, line: 59, type: !184)
!925 = !DILocation(line: 59, column: 37, scope: !923)
!926 = !DILocation(line: 61, column: 28, scope: !923)
!927 = !DILocation(line: 61, column: 35, scope: !923)
!928 = !DILocation(line: 61, column: 4, scope: !923)
!929 = !DILocation(line: 62, column: 28, scope: !923)
!930 = !DILocation(line: 62, column: 4, scope: !923)
!931 = !DILocation(line: 64, column: 8, scope: !932)
!932 = distinct !DILexicalBlock(scope: !923, file: !181, line: 64, column: 8)
!933 = !DILocation(line: 64, column: 15, scope: !932)
!934 = !DILocation(line: 64, column: 8, scope: !923)
!935 = !DILocation(line: 65, column: 36, scope: !936)
!936 = distinct !DILexicalBlock(scope: !932, file: !181, line: 64, column: 28)
!937 = !DILocation(line: 65, column: 7, scope: !936)
!938 = !DILocation(line: 66, column: 4, scope: !936)
!939 = !DILocation(line: 68, column: 8, scope: !940)
!940 = distinct !DILexicalBlock(scope: !923, file: !181, line: 68, column: 8)
!941 = !DILocation(line: 68, column: 15, scope: !940)
!942 = !DILocation(line: 68, column: 19, scope: !940)
!943 = !DILocation(line: 68, column: 23, scope: !940)
!944 = !DILocation(line: 68, column: 8, scope: !923)
!945 = !DILocation(line: 69, column: 23, scope: !946)
!946 = distinct !DILexicalBlock(scope: !940, file: !181, line: 68, column: 31)
!947 = !DILocation(line: 69, column: 30, scope: !946)
!948 = !DILocation(line: 69, column: 34, scope: !946)
!949 = !DILocation(line: 69, column: 7, scope: !946)
!950 = !DILocation(line: 70, column: 26, scope: !946)
!951 = !DILocation(line: 70, column: 33, scope: !946)
!952 = !DILocation(line: 70, column: 37, scope: !946)
!953 = !DILocation(line: 70, column: 7, scope: !946)
!954 = !DILocation(line: 71, column: 7, scope: !946)
!955 = !DILocation(line: 71, column: 14, scope: !946)
!956 = !DILocation(line: 71, column: 18, scope: !946)
!957 = !DILocation(line: 71, column: 22, scope: !946)
!958 = !DILocation(line: 72, column: 4, scope: !946)
!959 = !DILocation(line: 73, column: 20, scope: !923)
!960 = !DILocation(line: 73, column: 27, scope: !923)
!961 = !DILocation(line: 73, column: 31, scope: !923)
!962 = !DILocation(line: 73, column: 4, scope: !923)
!963 = !DILocation(line: 74, column: 22, scope: !923)
!964 = !DILocation(line: 74, column: 29, scope: !923)
!965 = !DILocation(line: 74, column: 33, scope: !923)
!966 = !DILocation(line: 74, column: 4, scope: !923)
!967 = !DILocation(line: 84, column: 8, scope: !968)
!968 = distinct !DILexicalBlock(scope: !923, file: !181, line: 84, column: 8)
!969 = !DILocation(line: 84, column: 15, scope: !968)
!970 = !DILocation(line: 84, column: 19, scope: !968)
!971 = !DILocation(line: 84, column: 8, scope: !923)
!972 = !DILocation(line: 85, column: 32, scope: !973)
!973 = distinct !DILexicalBlock(scope: !968, file: !181, line: 84, column: 25)
!974 = !DILocation(line: 85, column: 39, scope: !973)
!975 = !DILocation(line: 85, column: 43, scope: !973)
!976 = !DILocation(line: 85, column: 7, scope: !973)
!977 = !DILocation(line: 86, column: 7, scope: !973)
!978 = !DILocation(line: 86, column: 14, scope: !973)
!979 = !DILocation(line: 86, column: 18, scope: !973)
!980 = !DILocation(line: 86, column: 23, scope: !973)
!981 = !DILocation(line: 87, column: 4, scope: !973)
!982 = !DILocation(line: 90, column: 17, scope: !923)
!983 = !DILocation(line: 90, column: 24, scope: !923)
!984 = !DILocation(line: 90, column: 28, scope: !923)
!985 = !DILocation(line: 90, column: 4, scope: !923)
!986 = !DILocation(line: 91, column: 19, scope: !923)
!987 = !DILocation(line: 91, column: 26, scope: !923)
!988 = !DILocation(line: 91, column: 30, scope: !923)
!989 = !DILocation(line: 91, column: 4, scope: !923)
!990 = !DILocation(line: 92, column: 4, scope: !923)
!991 = !DILocation(line: 92, column: 11, scope: !923)
!992 = !DILocation(line: 92, column: 15, scope: !923)
!993 = !DILocation(line: 92, column: 26, scope: !923)
!994 = !DILocation(line: 93, column: 4, scope: !923)
!995 = !DILocation(line: 93, column: 11, scope: !923)
!996 = !DILocation(line: 93, column: 15, scope: !923)
!997 = !DILocation(line: 93, column: 22, scope: !923)
!998 = !DILocation(line: 94, column: 4, scope: !923)
!999 = !DILocation(line: 94, column: 11, scope: !923)
!1000 = !DILocation(line: 94, column: 15, scope: !923)
!1001 = !DILocation(line: 94, column: 24, scope: !923)
!1002 = !DILocation(line: 95, column: 1, scope: !923)
