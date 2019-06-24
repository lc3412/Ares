; ModuleID = './vmtoolsd-pluginMgr.o.i'
source_filename = "./vmtoolsd-pluginMgr.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.ToolsPlugin = type { i8*, %struct._GModule*, %struct.ToolsPluginData* (%struct.ToolsAppCtx*)*, %struct.ToolsPluginData* }
%struct.ToolsAppReg = type { i32, %struct._GArray* }
%struct._GDir = type opaque
%struct.RpcChannelCallback = type { i8*, i32 (%struct.RpcInData*)*, i8*, i8*, i8*, i64 }
%struct.ToolsPluginSignalCb = type { i8*, i8*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct.ToolsCoreService = type { %struct._GObject, %union._GMutex*, %struct._GArray* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%union._GMutex = type { i8* }
%struct.ToolsServiceProperty = type { i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"vmtoolsd\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"   No plugins loaded.\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"/usr/local/lib/open-vm-tools/plugins\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s%s%c%s\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"common\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Common plugin path is not a directory: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Plugin path is not a directory: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"Plugin '%s' didn't provide deployment data, unloading.\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Plugin '%s' initialized.\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"GuestRPC\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Signals\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"App Provider\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Service Properties\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"tcs_capabilities\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"tcs_shutdown\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Unloading plugin '%s'.\0A\00", align 1
@.str.17 = private unnamed_addr constant [63 x i8] c"Cannot find provider for app type %d, plugin %s may not work.\0A\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Plugin: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"No registrations.\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"%*s%s\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"App type %u (no provider info).\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"App type %u (no provider).\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Error opening dir: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c".so\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"File '%s' is not a regular file, skipping.\0A\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"Opening plugin '%s' failed: %s.\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"ToolsOnLoad\00", align 1
@.str.30 = private unnamed_addr constant [47 x i8] c"Lookup of plugin entry point for '%s' failed.\0A\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"Error unloading plugin '%s': %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"RPC callback: %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [47 x i8] c"Plugin '%s' unable to connect to signal '%s'.\0A\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"Signal callback: %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"Service property: %s.\0A\00", align 1
@__func__.ToolsCoreRegisterProvider = private unnamed_addr constant [26 x i8] c"ToolsCoreRegisterProvider\00", align 1
@.str.36 = private unnamed_addr constant [41 x i8] c"prov->regType != existing->prov->regType\00", align 1
@.str.37 = private unnamed_addr constant [81 x i8] c"Plugin %s wants to register app of type %d but the provider failed to activate.\0A\00", align 1
@.str.38 = private unnamed_addr constant [35 x i8] c"Error activating provider %s: %s.\0A\00", align 1
@.str.39 = private unnamed_addr constant [56 x i8] c"Failed registration of app type %d (%s) from plugin %s.\00", align 1

; Function Attrs: nounwind uwtable
define void @ToolsCore_DumpPluginInfo(%struct.ToolsServiceState*) #0 !dbg !191 {
  %2 = alloca %struct.ToolsServiceState*, align 8
  store %struct.ToolsServiceState* %0, %struct.ToolsServiceState** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %2, metadata !305, metadata !306), !dbg !307
  %3 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !308
  %4 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %3, i32 0, i32 8, !dbg !310
  %5 = load %struct._GPtrArray*, %struct._GPtrArray** %4, align 8, !dbg !310
  %6 = icmp eq %struct._GPtrArray* %5, null, !dbg !311
  br i1 %6, label %7, label %8, !dbg !312

; <label>:7:                                      ; preds = %1
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0)), !dbg !313
  br label %10, !dbg !315

; <label>:8:                                      ; preds = %1
  %9 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !316
  call void @ToolsCoreForEachPlugin(%struct.ToolsServiceState* %9, void (%struct.ToolsServiceState*, %struct.ToolsPluginData*)* @ToolsCoreDumpPluginInfo, i32 (%struct.ToolsServiceState*, %struct.ToolsPluginData*, i32, %struct.ToolsAppProviderReg*, i8*)* @ToolsCoreDumpAppInfo), !dbg !318
  br label %10

; <label>:10:                                     ; preds = %8, %7
  ret void, !dbg !319
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_log(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @ToolsCoreForEachPlugin(%struct.ToolsServiceState*, void (%struct.ToolsServiceState*, %struct.ToolsPluginData*)*, i32 (%struct.ToolsServiceState*, %struct.ToolsPluginData*, i32, %struct.ToolsAppProviderReg*, i8*)*) #0 !dbg !320 {
  %4 = alloca %struct.ToolsServiceState*, align 8
  %5 = alloca void (%struct.ToolsServiceState*, %struct.ToolsPluginData*)*, align 8
  %6 = alloca i32 (%struct.ToolsServiceState*, %struct.ToolsPluginData*, i32, %struct.ToolsAppProviderReg*, i8*)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ToolsPlugin*, align 8
  %9 = alloca %struct._GArray*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ToolsAppReg*, align 8
  %14 = alloca %struct.ToolsAppProviderReg*, align 8
  %15 = alloca %struct.ToolsAppProviderReg*, align 8
  %16 = alloca i8*, align 8
  store %struct.ToolsServiceState* %0, %struct.ToolsServiceState** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %4, metadata !331, metadata !306), !dbg !332
  store void (%struct.ToolsServiceState*, %struct.ToolsPluginData*)* %1, void (%struct.ToolsServiceState*, %struct.ToolsPluginData*)** %5, align 8
  call void @llvm.dbg.declare(metadata void (%struct.ToolsServiceState*, %struct.ToolsPluginData*)** %5, metadata !333, metadata !306), !dbg !334
  store i32 (%struct.ToolsServiceState*, %struct.ToolsPluginData*, i32, %struct.ToolsAppProviderReg*, i8*)* %2, i32 (%struct.ToolsServiceState*, %struct.ToolsPluginData*, i32, %struct.ToolsAppProviderReg*, i8*)** %6, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.ToolsServiceState*, %struct.ToolsPluginData*, i32, %struct.ToolsAppProviderReg*, i8*)** %6, metadata !335, metadata !306), !dbg !336
  call void @llvm.dbg.declare(metadata i32* %7, metadata !337, metadata !306), !dbg !338
  store i32 0, i32* %7, align 4, !dbg !339
  br label %17, !dbg !341

; <label>:17:                                     ; preds = %207, %3
  %18 = load i32, i32* %7, align 4, !dbg !342
  %19 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !345
  %20 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %19, i32 0, i32 8, !dbg !346
  %21 = load %struct._GPtrArray*, %struct._GPtrArray** %20, align 8, !dbg !346
  %22 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %21, i32 0, i32 1, !dbg !347
  %23 = load i32, i32* %22, align 8, !dbg !347
  %24 = icmp ult i32 %18, %23, !dbg !348
  br i1 %24, label %25, label %210, !dbg !349

; <label>:25:                                     ; preds = %17
  call void @llvm.dbg.declare(metadata %struct.ToolsPlugin** %8, metadata !350, metadata !306), !dbg !364
  %26 = load i32, i32* %7, align 4, !dbg !365
  %27 = zext i32 %26 to i64, !dbg !366
  %28 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !367
  %29 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %28, i32 0, i32 8, !dbg !368
  %30 = load %struct._GPtrArray*, %struct._GPtrArray** %29, align 8, !dbg !368
  %31 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %30, i32 0, i32 0, !dbg !369
  %32 = load i8**, i8*** %31, align 8, !dbg !369
  %33 = getelementptr inbounds i8*, i8** %32, i64 %27, !dbg !366
  %34 = load i8*, i8** %33, align 8, !dbg !366
  %35 = bitcast i8* %34 to %struct.ToolsPlugin*, !dbg !366
  store %struct.ToolsPlugin* %35, %struct.ToolsPlugin** %8, align 8, !dbg !364
  call void @llvm.dbg.declare(metadata %struct._GArray** %9, metadata !370, metadata !306), !dbg !371
  %36 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %8, align 8, !dbg !372
  %37 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %36, i32 0, i32 3, !dbg !373
  %38 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %37, align 8, !dbg !373
  %39 = icmp ne %struct.ToolsPluginData* %38, null, !dbg !374
  br i1 %39, label %40, label %46, !dbg !375

; <label>:40:                                     ; preds = %25
  %41 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %8, align 8, !dbg !376
  %42 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %41, i32 0, i32 3, !dbg !378
  %43 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %42, align 8, !dbg !378
  %44 = getelementptr inbounds %struct.ToolsPluginData, %struct.ToolsPluginData* %43, i32 0, i32 1, !dbg !379
  %45 = load %struct._GArray*, %struct._GArray** %44, align 8, !dbg !379
  br label %47, !dbg !380

; <label>:46:                                     ; preds = %25
  br label %47, !dbg !381

; <label>:47:                                     ; preds = %46, %40
  %48 = phi %struct._GArray* [ %45, %40 ], [ null, %46 ], !dbg !383
  store %struct._GArray* %48, %struct._GArray** %9, align 8, !dbg !385
  call void @llvm.dbg.declare(metadata i32* %10, metadata !386, metadata !306), !dbg !387
  %49 = load void (%struct.ToolsServiceState*, %struct.ToolsPluginData*)*, void (%struct.ToolsServiceState*, %struct.ToolsPluginData*)** %5, align 8, !dbg !388
  %50 = icmp ne void (%struct.ToolsServiceState*, %struct.ToolsPluginData*)* %49, null, !dbg !390
  br i1 %50, label %51, label %57, !dbg !391

; <label>:51:                                     ; preds = %47
  %52 = load void (%struct.ToolsServiceState*, %struct.ToolsPluginData*)*, void (%struct.ToolsServiceState*, %struct.ToolsPluginData*)** %5, align 8, !dbg !392
  %53 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !394
  %54 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %8, align 8, !dbg !395
  %55 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %54, i32 0, i32 3, !dbg !396
  %56 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %55, align 8, !dbg !396
  call void %52(%struct.ToolsServiceState* %53, %struct.ToolsPluginData* %56), !dbg !392
  br label %57, !dbg !397

; <label>:57:                                     ; preds = %51, %47
  %58 = load %struct._GArray*, %struct._GArray** %9, align 8, !dbg !398
  %59 = icmp eq %struct._GArray* %58, null, !dbg !400
  br i1 %59, label %63, label %60, !dbg !401

; <label>:60:                                     ; preds = %57
  %61 = load i32 (%struct.ToolsServiceState*, %struct.ToolsPluginData*, i32, %struct.ToolsAppProviderReg*, i8*)*, i32 (%struct.ToolsServiceState*, %struct.ToolsPluginData*, i32, %struct.ToolsAppProviderReg*, i8*)** %6, align 8, !dbg !402
  %62 = icmp eq i32 (%struct.ToolsServiceState*, %struct.ToolsPluginData*, i32, %struct.ToolsAppProviderReg*, i8*)* %61, null, !dbg !404
  br i1 %62, label %63, label %64, !dbg !405

; <label>:63:                                     ; preds = %60, %57
  br label %207, !dbg !406

; <label>:64:                                     ; preds = %60
  store i32 0, i32* %10, align 4, !dbg !408
  br label %65, !dbg !410

; <label>:65:                                     ; preds = %203, %64
  %66 = load i32, i32* %10, align 4, !dbg !411
  %67 = load %struct._GArray*, %struct._GArray** %9, align 8, !dbg !414
  %68 = getelementptr inbounds %struct._GArray, %struct._GArray* %67, i32 0, i32 1, !dbg !415
  %69 = load i32, i32* %68, align 8, !dbg !415
  %70 = icmp ult i32 %66, %69, !dbg !416
  br i1 %70, label %71, label %206, !dbg !417

; <label>:71:                                     ; preds = %65
  call void @llvm.dbg.declare(metadata i32* %11, metadata !418, metadata !306), !dbg !420
  call void @llvm.dbg.declare(metadata i32* %12, metadata !421, metadata !306), !dbg !422
  call void @llvm.dbg.declare(metadata %struct.ToolsAppReg** %13, metadata !423, metadata !306), !dbg !424
  %72 = load i32, i32* %10, align 4, !dbg !425
  %73 = zext i32 %72 to i64, !dbg !426
  %74 = load %struct._GArray*, %struct._GArray** %9, align 8, !dbg !427
  %75 = getelementptr inbounds %struct._GArray, %struct._GArray* %74, i32 0, i32 0, !dbg !428
  %76 = load i8*, i8** %75, align 8, !dbg !428
  %77 = bitcast i8* %76 to %struct.ToolsAppReg*, !dbg !429
  %78 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %77, i64 %73, !dbg !426
  store %struct.ToolsAppReg* %78, %struct.ToolsAppReg** %13, align 8, !dbg !424
  call void @llvm.dbg.declare(metadata %struct.ToolsAppProviderReg** %14, metadata !430, metadata !306), !dbg !431
  store %struct.ToolsAppProviderReg* null, %struct.ToolsAppProviderReg** %14, align 8, !dbg !431
  store i32 0, i32* %11, align 4, !dbg !432
  br label %79, !dbg !434

; <label>:79:                                     ; preds = %110, %71
  %80 = load i32, i32* %11, align 4, !dbg !435
  %81 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !438
  %82 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %81, i32 0, i32 14, !dbg !439
  %83 = load %struct._GArray*, %struct._GArray** %82, align 8, !dbg !439
  %84 = getelementptr inbounds %struct._GArray, %struct._GArray* %83, i32 0, i32 1, !dbg !440
  %85 = load i32, i32* %84, align 8, !dbg !440
  %86 = icmp ult i32 %80, %85, !dbg !441
  br i1 %86, label %87, label %113, !dbg !442

; <label>:87:                                     ; preds = %79
  call void @llvm.dbg.declare(metadata %struct.ToolsAppProviderReg** %15, metadata !443, metadata !306), !dbg !445
  %88 = load i32, i32* %11, align 4, !dbg !446
  %89 = zext i32 %88 to i64, !dbg !447
  %90 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !448
  %91 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %90, i32 0, i32 14, !dbg !449
  %92 = load %struct._GArray*, %struct._GArray** %91, align 8, !dbg !449
  %93 = getelementptr inbounds %struct._GArray, %struct._GArray* %92, i32 0, i32 0, !dbg !450
  %94 = load i8*, i8** %93, align 8, !dbg !450
  %95 = bitcast i8* %94 to %struct.ToolsAppProviderReg*, !dbg !451
  %96 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %95, i64 %89, !dbg !447
  store %struct.ToolsAppProviderReg* %96, %struct.ToolsAppProviderReg** %15, align 8, !dbg !445
  %97 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %15, align 8, !dbg !452
  %98 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %97, i32 0, i32 0, !dbg !454
  %99 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %98, align 8, !dbg !454
  %100 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %99, i32 0, i32 1, !dbg !455
  %101 = load i32, i32* %100, align 8, !dbg !455
  %102 = load %struct.ToolsAppReg*, %struct.ToolsAppReg** %13, align 8, !dbg !456
  %103 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %102, i32 0, i32 0, !dbg !457
  %104 = load i32, i32* %103, align 8, !dbg !457
  %105 = icmp eq i32 %101, %104, !dbg !458
  br i1 %105, label %106, label %109, !dbg !459

; <label>:106:                                    ; preds = %87
  %107 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %15, align 8, !dbg !460
  store %struct.ToolsAppProviderReg* %107, %struct.ToolsAppProviderReg** %14, align 8, !dbg !462
  %108 = load i32, i32* %11, align 4, !dbg !463
  store i32 %108, i32* %12, align 4, !dbg !464
  br label %113, !dbg !465

; <label>:109:                                    ; preds = %87
  br label %110, !dbg !466

; <label>:110:                                    ; preds = %109
  %111 = load i32, i32* %11, align 4, !dbg !467
  %112 = add i32 %111, 1, !dbg !467
  store i32 %112, i32* %11, align 4, !dbg !467
  br label %79, !dbg !469, !llvm.loop !470

; <label>:113:                                    ; preds = %106, %79
  %114 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %14, align 8, !dbg !472
  %115 = icmp eq %struct.ToolsAppProviderReg* %114, null, !dbg !474
  br i1 %115, label %116, label %149, !dbg !475

; <label>:116:                                    ; preds = %113
  %117 = load %struct.ToolsAppReg*, %struct.ToolsAppReg** %13, align 8, !dbg !476
  %118 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %117, i32 0, i32 0, !dbg !478
  %119 = load i32, i32* %118, align 8, !dbg !478
  %120 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %8, align 8, !dbg !479
  %121 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %120, i32 0, i32 3, !dbg !480
  %122 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %121, align 8, !dbg !480
  %123 = getelementptr inbounds %struct.ToolsPluginData, %struct.ToolsPluginData* %122, i32 0, i32 0, !dbg !481
  %124 = load i8*, i8** %123, align 8, !dbg !481
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.17, i32 0, i32 0), i32 %119, i8* %124), !dbg !482
  %125 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %8, align 8, !dbg !483
  %126 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %125, i32 0, i32 3, !dbg !485
  %127 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %126, align 8, !dbg !485
  %128 = getelementptr inbounds %struct.ToolsPluginData, %struct.ToolsPluginData* %127, i32 0, i32 2, !dbg !486
  %129 = load i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)*, i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)** %128, align 8, !dbg !486
  %130 = icmp ne i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)* %129, null, !dbg !487
  br i1 %130, label %131, label %148, !dbg !488

; <label>:131:                                    ; preds = %116
  %132 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %8, align 8, !dbg !489
  %133 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %132, i32 0, i32 3, !dbg !490
  %134 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %133, align 8, !dbg !490
  %135 = getelementptr inbounds %struct.ToolsPluginData, %struct.ToolsPluginData* %134, i32 0, i32 2, !dbg !491
  %136 = load i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)*, i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)** %135, align 8, !dbg !491
  %137 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !492
  %138 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %137, i32 0, i32 13, !dbg !493
  %139 = load %struct.ToolsAppReg*, %struct.ToolsAppReg** %13, align 8, !dbg !494
  %140 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %139, i32 0, i32 0, !dbg !495
  %141 = load i32, i32* %140, align 8, !dbg !495
  %142 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %8, align 8, !dbg !496
  %143 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %142, i32 0, i32 3, !dbg !497
  %144 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %143, align 8, !dbg !497
  %145 = call i32 %136(%struct.ToolsAppCtx* %138, i32 %141, i8* null, %struct.ToolsPluginData* %144), !dbg !489
  %146 = icmp ne i32 %145, 0, !dbg !489
  br i1 %146, label %148, label %147, !dbg !498

; <label>:147:                                    ; preds = %131
  br label %206, !dbg !500

; <label>:148:                                    ; preds = %131, %116
  br label %203, !dbg !502

; <label>:149:                                    ; preds = %113
  store i32 0, i32* %11, align 4, !dbg !503
  br label %150, !dbg !505

; <label>:150:                                    ; preds = %199, %149
  %151 = load i32, i32* %11, align 4, !dbg !506
  %152 = load %struct.ToolsAppReg*, %struct.ToolsAppReg** %13, align 8, !dbg !509
  %153 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %152, i32 0, i32 1, !dbg !510
  %154 = load %struct._GArray*, %struct._GArray** %153, align 8, !dbg !510
  %155 = getelementptr inbounds %struct._GArray, %struct._GArray* %154, i32 0, i32 1, !dbg !511
  %156 = load i32, i32* %155, align 8, !dbg !511
  %157 = icmp ult i32 %151, %156, !dbg !512
  br i1 %157, label %158, label %202, !dbg !513

; <label>:158:                                    ; preds = %150
  call void @llvm.dbg.declare(metadata i8** %16, metadata !514, metadata !306), !dbg !516
  %159 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %14, align 8, !dbg !517
  %160 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %159, i32 0, i32 0, !dbg !518
  %161 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %160, align 8, !dbg !518
  %162 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %161, i32 0, i32 2, !dbg !519
  %163 = load i64, i64* %162, align 8, !dbg !519
  %164 = load i32, i32* %11, align 4, !dbg !520
  %165 = zext i32 %164 to i64, !dbg !520
  %166 = mul i64 %163, %165, !dbg !521
  %167 = load %struct.ToolsAppReg*, %struct.ToolsAppReg** %13, align 8, !dbg !522
  %168 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %167, i32 0, i32 1, !dbg !523
  %169 = load %struct._GArray*, %struct._GArray** %168, align 8, !dbg !523
  %170 = getelementptr inbounds %struct._GArray, %struct._GArray* %169, i32 0, i32 0, !dbg !524
  %171 = load i8*, i8** %170, align 8, !dbg !524
  %172 = getelementptr inbounds i8, i8* %171, i64 %166, !dbg !522
  store i8* %172, i8** %16, align 8, !dbg !516
  %173 = load i32 (%struct.ToolsServiceState*, %struct.ToolsPluginData*, i32, %struct.ToolsAppProviderReg*, i8*)*, i32 (%struct.ToolsServiceState*, %struct.ToolsPluginData*, i32, %struct.ToolsAppProviderReg*, i8*)** %6, align 8, !dbg !525
  %174 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !527
  %175 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %8, align 8, !dbg !528
  %176 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %175, i32 0, i32 3, !dbg !529
  %177 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %176, align 8, !dbg !529
  %178 = load %struct.ToolsAppReg*, %struct.ToolsAppReg** %13, align 8, !dbg !530
  %179 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %178, i32 0, i32 0, !dbg !531
  %180 = load i32, i32* %179, align 8, !dbg !531
  %181 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %14, align 8, !dbg !532
  %182 = load i8*, i8** %16, align 8, !dbg !533
  %183 = call i32 %173(%struct.ToolsServiceState* %174, %struct.ToolsPluginData* %177, i32 %180, %struct.ToolsAppProviderReg* %181, i8* %182), !dbg !525
  %184 = icmp ne i32 %183, 0, !dbg !525
  br i1 %184, label %189, label %185, !dbg !534

; <label>:185:                                    ; preds = %158
  %186 = load %struct._GArray*, %struct._GArray** %9, align 8, !dbg !535
  %187 = getelementptr inbounds %struct._GArray, %struct._GArray* %186, i32 0, i32 1, !dbg !537
  %188 = load i32, i32* %187, align 8, !dbg !537
  store i32 %188, i32* %10, align 4, !dbg !538
  br label %202, !dbg !539

; <label>:189:                                    ; preds = %158
  %190 = load i32, i32* %12, align 4, !dbg !540
  %191 = zext i32 %190 to i64, !dbg !541
  %192 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !542
  %193 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %192, i32 0, i32 14, !dbg !543
  %194 = load %struct._GArray*, %struct._GArray** %193, align 8, !dbg !543
  %195 = getelementptr inbounds %struct._GArray, %struct._GArray* %194, i32 0, i32 0, !dbg !544
  %196 = load i8*, i8** %195, align 8, !dbg !544
  %197 = bitcast i8* %196 to %struct.ToolsAppProviderReg*, !dbg !545
  %198 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %197, i64 %191, !dbg !541
  store %struct.ToolsAppProviderReg* %198, %struct.ToolsAppProviderReg** %14, align 8, !dbg !546
  br label %199, !dbg !547

; <label>:199:                                    ; preds = %189
  %200 = load i32, i32* %11, align 4, !dbg !548
  %201 = add i32 %200, 1, !dbg !548
  store i32 %201, i32* %11, align 4, !dbg !548
  br label %150, !dbg !550, !llvm.loop !551

; <label>:202:                                    ; preds = %185, %150
  br label %203, !dbg !553

; <label>:203:                                    ; preds = %202, %148
  %204 = load i32, i32* %10, align 4, !dbg !554
  %205 = add i32 %204, 1, !dbg !554
  store i32 %205, i32* %10, align 4, !dbg !554
  br label %65, !dbg !556, !llvm.loop !557

; <label>:206:                                    ; preds = %147, %65
  br label %207, !dbg !559

; <label>:207:                                    ; preds = %206, %63
  %208 = load i32, i32* %7, align 4, !dbg !560
  %209 = add i32 %208, 1, !dbg !560
  store i32 %209, i32* %7, align 4, !dbg !560
  br label %17, !dbg !562, !llvm.loop !563

; <label>:210:                                    ; preds = %17
  ret void, !dbg !565
}

; Function Attrs: nounwind uwtable
define internal void @ToolsCoreDumpPluginInfo(%struct.ToolsServiceState*, %struct.ToolsPluginData*) #0 !dbg !566 {
  %3 = alloca %struct.ToolsServiceState*, align 8
  %4 = alloca %struct.ToolsPluginData*, align 8
  store %struct.ToolsServiceState* %0, %struct.ToolsServiceState** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %3, metadata !567, metadata !306), !dbg !568
  store %struct.ToolsPluginData* %1, %struct.ToolsPluginData** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsPluginData** %4, metadata !569, metadata !306), !dbg !570
  %5 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %4, align 8, !dbg !571
  %6 = getelementptr inbounds %struct.ToolsPluginData, %struct.ToolsPluginData* %5, i32 0, i32 0, !dbg !572
  %7 = load i8*, i8** %6, align 8, !dbg !572
  call void (i32, i8*, ...) @ToolsCore_LogState(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8* %7), !dbg !573
  %8 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %4, align 8, !dbg !574
  %9 = getelementptr inbounds %struct.ToolsPluginData, %struct.ToolsPluginData* %8, i32 0, i32 1, !dbg !576
  %10 = load %struct._GArray*, %struct._GArray** %9, align 8, !dbg !576
  %11 = icmp eq %struct._GArray* %10, null, !dbg !577
  br i1 %11, label %12, label %13, !dbg !578

; <label>:12:                                     ; preds = %2
  call void (i32, i8*, ...) @ToolsCore_LogState(i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0)), !dbg !579
  br label %13, !dbg !581

; <label>:13:                                     ; preds = %12, %2
  ret void, !dbg !582
}

; Function Attrs: nounwind uwtable
define internal i32 @ToolsCoreDumpAppInfo(%struct.ToolsServiceState*, %struct.ToolsPluginData*, i32, %struct.ToolsAppProviderReg*, i8*) #0 !dbg !583 {
  %6 = alloca %struct.ToolsServiceState*, align 8
  %7 = alloca %struct.ToolsPluginData*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ToolsAppProviderReg*, align 8
  %10 = alloca i8*, align 8
  store %struct.ToolsServiceState* %0, %struct.ToolsServiceState** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %6, metadata !584, metadata !306), !dbg !585
  store %struct.ToolsPluginData* %1, %struct.ToolsPluginData** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsPluginData** %7, metadata !586, metadata !306), !dbg !587
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !588, metadata !306), !dbg !589
  store %struct.ToolsAppProviderReg* %3, %struct.ToolsAppProviderReg** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppProviderReg** %9, metadata !590, metadata !306), !dbg !591
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !592, metadata !306), !dbg !593
  %11 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %9, align 8, !dbg !594
  %12 = icmp ne %struct.ToolsAppProviderReg* %11, null, !dbg !596
  br i1 %12, label %13, label %35, !dbg !597

; <label>:13:                                     ; preds = %5
  %14 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %9, align 8, !dbg !598
  %15 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %14, i32 0, i32 0, !dbg !601
  %16 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %15, align 8, !dbg !601
  %17 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %16, i32 0, i32 6, !dbg !602
  %18 = load void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, i8*)*, void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, i8*)** %17, align 8, !dbg !602
  %19 = icmp ne void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, i8*)* %18, null, !dbg !603
  br i1 %19, label %20, label %32, !dbg !604

; <label>:20:                                     ; preds = %13
  %21 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %9, align 8, !dbg !605
  %22 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %21, i32 0, i32 0, !dbg !607
  %23 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %22, align 8, !dbg !607
  %24 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %23, i32 0, i32 6, !dbg !608
  %25 = load void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, i8*)*, void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, i8*)** %24, align 8, !dbg !608
  %26 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %6, align 8, !dbg !609
  %27 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %26, i32 0, i32 13, !dbg !610
  %28 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %9, align 8, !dbg !611
  %29 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %28, i32 0, i32 0, !dbg !612
  %30 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %29, align 8, !dbg !612
  %31 = load i8*, i8** %10, align 8, !dbg !613
  call void %25(%struct.ToolsAppCtx* %27, %struct.ToolsAppProvider* %30, i8* %31), !dbg !605
  br label %34, !dbg !614

; <label>:32:                                     ; preds = %13
  %33 = load i32, i32* %8, align 4, !dbg !615
  call void (i32, i8*, ...) @ToolsCore_LogState(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i32 0, i32 0), i32 %33), !dbg !617
  br label %34

; <label>:34:                                     ; preds = %32, %20
  br label %37, !dbg !618

; <label>:35:                                     ; preds = %5
  %36 = load i32, i32* %8, align 4, !dbg !619
  call void (i32, i8*, ...) @ToolsCore_LogState(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i32 0, i32 0), i32 %36), !dbg !621
  br label %37

; <label>:37:                                     ; preds = %35, %34
  ret i32 1, !dbg !622
}

; Function Attrs: nounwind uwtable
define i32 @ToolsCore_LoadPlugins(%struct.ToolsServiceState*) #0 !dbg !623 {
  %2 = alloca %struct.ToolsServiceState*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._GPtrArray*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ToolsPlugin*, align 8
  %10 = alloca %struct.ToolsPluginData*, align 8
  %11 = alloca %struct.ToolsPlugin*, align 8
  store %struct.ToolsServiceState* %0, %struct.ToolsServiceState** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %2, metadata !626, metadata !306), !dbg !627
  call void @llvm.dbg.declare(metadata i32* %3, metadata !628, metadata !306), !dbg !629
  call void @llvm.dbg.declare(metadata i32* %4, metadata !630, metadata !306), !dbg !631
  store i32 0, i32* %4, align 4, !dbg !631
  call void @llvm.dbg.declare(metadata i8** %5, metadata !632, metadata !306), !dbg !633
  call void @llvm.dbg.declare(metadata i32* %6, metadata !634, metadata !306), !dbg !635
  call void @llvm.dbg.declare(metadata %struct._GPtrArray** %7, metadata !636, metadata !306), !dbg !637
  store %struct._GPtrArray* null, %struct._GPtrArray** %7, align 8, !dbg !637
  call void @llvm.dbg.declare(metadata i8** %8, metadata !638, metadata !306), !dbg !639
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** %8, align 8, !dbg !639
  %12 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0)), !dbg !640
  store i8* %12, i8** %5, align 8, !dbg !641
  %13 = call %struct._GPtrArray* @g_ptr_array_new(), !dbg !642
  store %struct._GPtrArray* %13, %struct._GPtrArray** %7, align 8, !dbg !643
  %14 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !644
  %15 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %14, i32 0, i32 6, !dbg !646
  %16 = load i8*, i8** %15, align 8, !dbg !646
  %17 = icmp eq i8* %16, null, !dbg !647
  br i1 %17, label %18, label %24, !dbg !648

; <label>:18:                                     ; preds = %1
  %19 = load i8*, i8** %5, align 8, !dbg !649
  %20 = load i8*, i8** %8, align 8, !dbg !651
  %21 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* %19, i8* %20, i32 47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)), !dbg !652
  %22 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !653
  %23 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %22, i32 0, i32 6, !dbg !654
  store i8* %21, i8** %23, align 8, !dbg !655
  br label %35, !dbg !656

; <label>:24:                                     ; preds = %1
  %25 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !657
  %26 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %25, i32 0, i32 6, !dbg !660
  %27 = load i8*, i8** %26, align 8, !dbg !660
  %28 = call i32 @g_file_test(i8* %27, i32 4), !dbg !661
  %29 = icmp ne i32 %28, 0, !dbg !661
  br i1 %29, label %34, label %30, !dbg !662

; <label>:30:                                     ; preds = %24
  %31 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !663
  %32 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %31, i32 0, i32 6, !dbg !665
  %33 = load i8*, i8** %32, align 8, !dbg !665
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0), i8* %33), !dbg !666
  br label %202, !dbg !667

; <label>:34:                                     ; preds = %24
  br label %35

; <label>:35:                                     ; preds = %34, %18
  %36 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !668
  %37 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %36, i32 0, i32 6, !dbg !670
  %38 = load i8*, i8** %37, align 8, !dbg !670
  %39 = call i32 @g_file_test(i8* %38, i32 4), !dbg !671
  %40 = icmp ne i32 %39, 0, !dbg !671
  br i1 %40, label %41, label %51, !dbg !672

; <label>:41:                                     ; preds = %35
  %42 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !673
  %43 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %42, i32 0, i32 13, !dbg !674
  %44 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !675
  %45 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %44, i32 0, i32 6, !dbg !676
  %46 = load i8*, i8** %45, align 8, !dbg !676
  %47 = load %struct._GPtrArray*, %struct._GPtrArray** %7, align 8, !dbg !677
  %48 = call i32 @ToolsCoreLoadDirectory(%struct.ToolsAppCtx* %43, i8* %46, %struct._GPtrArray* %47), !dbg !678
  %49 = icmp ne i32 %48, 0, !dbg !678
  br i1 %49, label %51, label %50, !dbg !679

; <label>:50:                                     ; preds = %41
  br label %202, !dbg !681

; <label>:51:                                     ; preds = %41, %35
  %52 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !683
  %53 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %52, i32 0, i32 7, !dbg !685
  %54 = load i8*, i8** %53, align 8, !dbg !685
  %55 = icmp eq i8* %54, null, !dbg !686
  br i1 %55, label %56, label %65, !dbg !687

; <label>:56:                                     ; preds = %51
  %57 = load i8*, i8** %5, align 8, !dbg !688
  %58 = load i8*, i8** %8, align 8, !dbg !690
  %59 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !691
  %60 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %59, i32 0, i32 0, !dbg !692
  %61 = load i8*, i8** %60, align 8, !dbg !692
  %62 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* %57, i8* %58, i32 47, i8* %61), !dbg !693
  %63 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !694
  %64 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %63, i32 0, i32 7, !dbg !695
  store i8* %62, i8** %64, align 8, !dbg !696
  br label %65, !dbg !697

; <label>:65:                                     ; preds = %56, %51
  %66 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !698
  %67 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %66, i32 0, i32 7, !dbg !699
  %68 = load i8*, i8** %67, align 8, !dbg !699
  %69 = call i32 @g_file_test(i8* %68, i32 4), !dbg !700
  store i32 %69, i32* %3, align 4, !dbg !701
  %70 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !702
  %71 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %70, i32 0, i32 11, !dbg !704
  %72 = load i8*, i8** %71, align 8, !dbg !704
  %73 = icmp eq i8* %72, null, !dbg !705
  br i1 %73, label %74, label %81, !dbg !706

; <label>:74:                                     ; preds = %65
  %75 = load i32, i32* %3, align 4, !dbg !707
  %76 = icmp ne i32 %75, 0, !dbg !707
  br i1 %76, label %81, label %77, !dbg !709

; <label>:77:                                     ; preds = %74
  %78 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !710
  %79 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %78, i32 0, i32 7, !dbg !712
  %80 = load i8*, i8** %79, align 8, !dbg !712
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0), i8* %80), !dbg !713
  br label %202, !dbg !714

; <label>:81:                                     ; preds = %74, %65
  %82 = load i32, i32* %3, align 4, !dbg !715
  %83 = icmp ne i32 %82, 0, !dbg !715
  br i1 %83, label %84, label %94, !dbg !717

; <label>:84:                                     ; preds = %81
  %85 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !718
  %86 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %85, i32 0, i32 13, !dbg !719
  %87 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !720
  %88 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %87, i32 0, i32 7, !dbg !721
  %89 = load i8*, i8** %88, align 8, !dbg !721
  %90 = load %struct._GPtrArray*, %struct._GPtrArray** %7, align 8, !dbg !722
  %91 = call i32 @ToolsCoreLoadDirectory(%struct.ToolsAppCtx* %86, i8* %89, %struct._GPtrArray* %90), !dbg !723
  %92 = icmp ne i32 %91, 0, !dbg !723
  br i1 %92, label %94, label %93, !dbg !724

; <label>:93:                                     ; preds = %84
  br label %202, !dbg !725

; <label>:94:                                     ; preds = %84, %81
  %95 = call %struct._GPtrArray* @g_ptr_array_new(), !dbg !727
  %96 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !728
  %97 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %96, i32 0, i32 8, !dbg !729
  store %struct._GPtrArray* %95, %struct._GPtrArray** %97, align 8, !dbg !730
  store i32 0, i32* %6, align 4, !dbg !731
  br label %98, !dbg !733

; <label>:98:                                     ; preds = %159, %94
  %99 = load i32, i32* %6, align 4, !dbg !734
  %100 = load %struct._GPtrArray*, %struct._GPtrArray** %7, align 8, !dbg !737
  %101 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %100, i32 0, i32 1, !dbg !738
  %102 = load i32, i32* %101, align 8, !dbg !738
  %103 = icmp ult i32 %99, %102, !dbg !739
  br i1 %103, label %104, label %162, !dbg !740

; <label>:104:                                    ; preds = %98
  call void @llvm.dbg.declare(metadata %struct.ToolsPlugin** %9, metadata !741, metadata !306), !dbg !743
  %105 = load i32, i32* %6, align 4, !dbg !744
  %106 = zext i32 %105 to i64, !dbg !745
  %107 = load %struct._GPtrArray*, %struct._GPtrArray** %7, align 8, !dbg !746
  %108 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %107, i32 0, i32 0, !dbg !747
  %109 = load i8**, i8*** %108, align 8, !dbg !747
  %110 = getelementptr inbounds i8*, i8** %109, i64 %106, !dbg !745
  %111 = load i8*, i8** %110, align 8, !dbg !745
  %112 = bitcast i8* %111 to %struct.ToolsPlugin*, !dbg !745
  store %struct.ToolsPlugin* %112, %struct.ToolsPlugin** %9, align 8, !dbg !743
  %113 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %9, align 8, !dbg !748
  %114 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %113, i32 0, i32 2, !dbg !749
  %115 = load %struct.ToolsPluginData* (%struct.ToolsAppCtx*)*, %struct.ToolsPluginData* (%struct.ToolsAppCtx*)** %114, align 8, !dbg !749
  %116 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !750
  %117 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %116, i32 0, i32 13, !dbg !751
  %118 = call %struct.ToolsPluginData* %115(%struct.ToolsAppCtx* %117), !dbg !748
  %119 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %9, align 8, !dbg !752
  %120 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %119, i32 0, i32 3, !dbg !753
  store %struct.ToolsPluginData* %118, %struct.ToolsPluginData** %120, align 8, !dbg !754
  %121 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %9, align 8, !dbg !755
  %122 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %121, i32 0, i32 3, !dbg !757
  %123 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %122, align 8, !dbg !757
  %124 = icmp eq %struct.ToolsPluginData* %123, null, !dbg !758
  br i1 %124, label %125, label %130, !dbg !759

; <label>:125:                                    ; preds = %104
  %126 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %9, align 8, !dbg !760
  %127 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %126, i32 0, i32 0, !dbg !762
  %128 = load i8*, i8** %127, align 8, !dbg !762
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i32 0, i32 0), i8* %128), !dbg !763
  %129 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %9, align 8, !dbg !764
  call void @ToolsCoreFreePlugin(%struct.ToolsPlugin* %129), !dbg !765
  br label %158, !dbg !766

; <label>:130:                                    ; preds = %104
  %131 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !767
  %132 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %131, i32 0, i32 13, !dbg !770
  %133 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %132, i32 0, i32 3, !dbg !771
  %134 = load i32, i32* %133, align 4, !dbg !771
  %135 = icmp ne i32 %134, 0, !dbg !772
  br i1 %135, label %136, label %138, !dbg !767

; <label>:136:                                    ; preds = %130
  %137 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %9, align 8, !dbg !773
  call void @ToolsCoreFreePlugin(%struct.ToolsPlugin* %137), !dbg !775
  br label %162, !dbg !776

; <label>:138:                                    ; preds = %130
  %139 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %9, align 8, !dbg !777
  %140 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %139, i32 0, i32 1, !dbg !779
  %141 = load %struct._GModule*, %struct._GModule** %140, align 8, !dbg !779
  call void @g_module_make_resident(%struct._GModule* %141), !dbg !780
  %142 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !781
  %143 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %142, i32 0, i32 8, !dbg !782
  %144 = load %struct._GPtrArray*, %struct._GPtrArray** %143, align 8, !dbg !782
  %145 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %9, align 8, !dbg !783
  %146 = bitcast %struct.ToolsPlugin* %145 to i8*, !dbg !783
  call void @g_ptr_array_add(%struct._GPtrArray* %144, i8* %146), !dbg !784
  %147 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %9, align 8, !dbg !785
  %148 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %147, i32 0, i32 3, !dbg !786
  %149 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %148, align 8, !dbg !786
  %150 = getelementptr inbounds %struct.ToolsPluginData, %struct.ToolsPluginData* %149, i32 0, i32 0, !dbg !787
  %151 = load i8*, i8** %150, align 8, !dbg !787
  call void @VMTools_BindTextDomain(i8* %151, i8* null, i8* null), !dbg !788
  %152 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %9, align 8, !dbg !789
  %153 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %152, i32 0, i32 3, !dbg !790
  %154 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %153, align 8, !dbg !790
  %155 = getelementptr inbounds %struct.ToolsPluginData, %struct.ToolsPluginData* %154, i32 0, i32 0, !dbg !791
  %156 = load i8*, i8** %155, align 8, !dbg !791
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), i8* %156), !dbg !792
  br label %157

; <label>:157:                                    ; preds = %138
  br label %158

; <label>:158:                                    ; preds = %157, %125
  br label %159, !dbg !793

; <label>:159:                                    ; preds = %158
  %160 = load i32, i32* %6, align 4, !dbg !794
  %161 = add i32 %160, 1, !dbg !794
  store i32 %161, i32* %6, align 4, !dbg !794
  br label %98, !dbg !796, !llvm.loop !797

; <label>:162:                                    ; preds = %136, %98
  %163 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !799
  %164 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %163, i32 0, i32 12, !dbg !801
  %165 = load %struct.RpcDebugLibData*, %struct.RpcDebugLibData** %164, align 8, !dbg !801
  %166 = icmp ne %struct.RpcDebugLibData* %165, null, !dbg !802
  br i1 %166, label %167, label %201, !dbg !803

; <label>:167:                                    ; preds = %162
  %168 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !804
  %169 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %168, i32 0, i32 12, !dbg !806
  %170 = load %struct.RpcDebugLibData*, %struct.RpcDebugLibData** %169, align 8, !dbg !806
  %171 = getelementptr inbounds %struct.RpcDebugLibData, %struct.RpcDebugLibData* %170, i32 0, i32 2, !dbg !807
  %172 = load %struct.RpcDebugPlugin*, %struct.RpcDebugPlugin** %171, align 8, !dbg !807
  %173 = getelementptr inbounds %struct.RpcDebugPlugin, %struct.RpcDebugPlugin* %172, i32 0, i32 4, !dbg !808
  %174 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %173, align 8, !dbg !808
  %175 = icmp ne %struct.ToolsPluginData* %174, null, !dbg !809
  br i1 %175, label %176, label %201, !dbg !810

; <label>:176:                                    ; preds = %167
  call void @llvm.dbg.declare(metadata %struct.ToolsPluginData** %10, metadata !811, metadata !306), !dbg !813
  %177 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !814
  %178 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %177, i32 0, i32 12, !dbg !815
  %179 = load %struct.RpcDebugLibData*, %struct.RpcDebugLibData** %178, align 8, !dbg !815
  %180 = getelementptr inbounds %struct.RpcDebugLibData, %struct.RpcDebugLibData* %179, i32 0, i32 2, !dbg !816
  %181 = load %struct.RpcDebugPlugin*, %struct.RpcDebugPlugin** %180, align 8, !dbg !816
  %182 = getelementptr inbounds %struct.RpcDebugPlugin, %struct.RpcDebugPlugin* %181, i32 0, i32 4, !dbg !817
  %183 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %182, align 8, !dbg !817
  store %struct.ToolsPluginData* %183, %struct.ToolsPluginData** %10, align 8, !dbg !813
  call void @llvm.dbg.declare(metadata %struct.ToolsPlugin** %11, metadata !818, metadata !306), !dbg !819
  %184 = call noalias i8* @g_malloc(i64 32), !dbg !820
  %185 = bitcast i8* %184 to %struct.ToolsPlugin*, !dbg !820
  store %struct.ToolsPlugin* %185, %struct.ToolsPlugin** %11, align 8, !dbg !819
  %186 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %11, align 8, !dbg !821
  %187 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %186, i32 0, i32 0, !dbg !822
  store i8* null, i8** %187, align 8, !dbg !823
  %188 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %11, align 8, !dbg !824
  %189 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %188, i32 0, i32 1, !dbg !825
  store %struct._GModule* null, %struct._GModule** %189, align 8, !dbg !826
  %190 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %10, align 8, !dbg !827
  %191 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %11, align 8, !dbg !828
  %192 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %191, i32 0, i32 3, !dbg !829
  store %struct.ToolsPluginData* %190, %struct.ToolsPluginData** %192, align 8, !dbg !830
  %193 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %10, align 8, !dbg !831
  %194 = getelementptr inbounds %struct.ToolsPluginData, %struct.ToolsPluginData* %193, i32 0, i32 0, !dbg !832
  %195 = load i8*, i8** %194, align 8, !dbg !832
  call void @VMTools_BindTextDomain(i8* %195, i8* null, i8* null), !dbg !833
  %196 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !834
  %197 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %196, i32 0, i32 8, !dbg !835
  %198 = load %struct._GPtrArray*, %struct._GPtrArray** %197, align 8, !dbg !835
  %199 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %11, align 8, !dbg !836
  %200 = bitcast %struct.ToolsPlugin* %199 to i8*, !dbg !836
  call void @g_ptr_array_add(%struct._GPtrArray* %198, i8* %200), !dbg !837
  br label %201, !dbg !838

; <label>:201:                                    ; preds = %176, %167, %162
  store i32 1, i32* %4, align 4, !dbg !839
  br label %202, !dbg !840

; <label>:202:                                    ; preds = %201, %93, %77, %50, %30
  %203 = load %struct._GPtrArray*, %struct._GPtrArray** %7, align 8, !dbg !841
  %204 = icmp ne %struct._GPtrArray* %203, null, !dbg !843
  br i1 %204, label %205, label %208, !dbg !844

; <label>:205:                                    ; preds = %202
  %206 = load %struct._GPtrArray*, %struct._GPtrArray** %7, align 8, !dbg !845
  %207 = call i8** @g_ptr_array_free(%struct._GPtrArray* %206, i32 1), !dbg !847
  br label %208, !dbg !848

; <label>:208:                                    ; preds = %205, %202
  %209 = load i8*, i8** %5, align 8, !dbg !849
  call void @g_free(i8* %209), !dbg !850
  %210 = load i32, i32* %4, align 4, !dbg !851
  ret i32 %210, !dbg !852
}

declare noalias i8* @g_strdup(i8*) #2

declare %struct._GPtrArray* @g_ptr_array_new() #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare i32 @g_file_test(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @ToolsCoreLoadDirectory(%struct.ToolsAppCtx*, i8*, %struct._GPtrArray*) #0 !dbg !853 {
  %4 = alloca %struct.ToolsAppCtx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GPtrArray*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._GDir*, align 8
  %11 = alloca %struct._GError*, align 8
  %12 = alloca %struct._GPtrArray*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct._GModule*, align 8
  %16 = alloca %struct.ToolsPlugin*, align 8
  %17 = alloca %struct.ToolsPluginData* (%struct.ToolsAppCtx*)*, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %4, metadata !856, metadata !306), !dbg !857
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !858, metadata !306), !dbg !859
  store %struct._GPtrArray* %2, %struct._GPtrArray** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GPtrArray** %6, metadata !860, metadata !306), !dbg !861
  call void @llvm.dbg.declare(metadata i32* %7, metadata !862, metadata !306), !dbg !863
  store i32 0, i32* %7, align 4, !dbg !863
  call void @llvm.dbg.declare(metadata i8** %8, metadata !864, metadata !306), !dbg !865
  call void @llvm.dbg.declare(metadata i32* %9, metadata !866, metadata !306), !dbg !867
  call void @llvm.dbg.declare(metadata %struct._GDir** %10, metadata !868, metadata !306), !dbg !873
  store %struct._GDir* null, %struct._GDir** %10, align 8, !dbg !873
  call void @llvm.dbg.declare(metadata %struct._GError** %11, metadata !874, metadata !306), !dbg !875
  store %struct._GError* null, %struct._GError** %11, align 8, !dbg !875
  call void @llvm.dbg.declare(metadata %struct._GPtrArray** %12, metadata !876, metadata !306), !dbg !877
  %18 = load i8*, i8** %5, align 8, !dbg !878
  %19 = call %struct._GDir* @g_dir_open(i8* %18, i32 0, %struct._GError** %11), !dbg !879
  store %struct._GDir* %19, %struct._GDir** %10, align 8, !dbg !880
  %20 = load %struct._GDir*, %struct._GDir** %10, align 8, !dbg !881
  %21 = icmp eq %struct._GDir* %20, null, !dbg !883
  br i1 %21, label %22, label %26, !dbg !884

; <label>:22:                                     ; preds = %3
  %23 = load %struct._GError*, %struct._GError** %11, align 8, !dbg !885
  %24 = getelementptr inbounds %struct._GError, %struct._GError* %23, i32 0, i32 2, !dbg !887
  %25 = load i8*, i8** %24, align 8, !dbg !887
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0), i8* %25), !dbg !888
  br label %120, !dbg !889

; <label>:26:                                     ; preds = %3
  %27 = call %struct._GPtrArray* @g_ptr_array_new(), !dbg !890
  store %struct._GPtrArray* %27, %struct._GPtrArray** %12, align 8, !dbg !891
  br label %28, !dbg !892

; <label>:28:                                     ; preds = %40, %26
  %29 = load %struct._GDir*, %struct._GDir** %10, align 8, !dbg !893
  %30 = call i8* @g_dir_read_name(%struct._GDir* %29), !dbg !895
  store i8* %30, i8** %8, align 8, !dbg !896
  %31 = icmp ne i8* %30, null, !dbg !897
  br i1 %31, label %32, label %41, !dbg !898

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %8, align 8, !dbg !899
  %34 = call i32 @g_str_has_suffix(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0)), !dbg !902
  %35 = icmp ne i32 %34, 0, !dbg !902
  br i1 %35, label %36, label %40, !dbg !903

; <label>:36:                                     ; preds = %32
  %37 = load %struct._GPtrArray*, %struct._GPtrArray** %12, align 8, !dbg !904
  %38 = load i8*, i8** %8, align 8, !dbg !906
  %39 = call noalias i8* @g_strdup(i8* %38), !dbg !907
  call void @g_ptr_array_add(%struct._GPtrArray* %37, i8* %39), !dbg !908
  br label %40, !dbg !910

; <label>:40:                                     ; preds = %36, %32
  br label %28, !dbg !911, !llvm.loop !913

; <label>:41:                                     ; preds = %28
  %42 = load %struct._GDir*, %struct._GDir** %10, align 8, !dbg !914
  call void @g_dir_close(%struct._GDir* %42), !dbg !915
  %43 = load %struct._GPtrArray*, %struct._GPtrArray** %12, align 8, !dbg !916
  call void @g_ptr_array_sort(%struct._GPtrArray* %43, i32 (i8*, i8*)* @ToolsCoreStrPtrCompare), !dbg !917
  store i32 0, i32* %9, align 4, !dbg !918
  br label %44, !dbg !920

; <label>:44:                                     ; preds = %114, %41
  %45 = load i32, i32* %9, align 4, !dbg !921
  %46 = load %struct._GPtrArray*, %struct._GPtrArray** %12, align 8, !dbg !924
  %47 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %46, i32 0, i32 1, !dbg !925
  %48 = load i32, i32* %47, align 8, !dbg !925
  %49 = icmp ult i32 %45, %48, !dbg !926
  br i1 %49, label %50, label %117, !dbg !927

; <label>:50:                                     ; preds = %44
  call void @llvm.dbg.declare(metadata i8** %13, metadata !928, metadata !306), !dbg !930
  call void @llvm.dbg.declare(metadata i8** %14, metadata !931, metadata !306), !dbg !932
  call void @llvm.dbg.declare(metadata %struct._GModule** %15, metadata !933, metadata !306), !dbg !934
  store %struct._GModule* null, %struct._GModule** %15, align 8, !dbg !934
  call void @llvm.dbg.declare(metadata %struct.ToolsPlugin** %16, metadata !935, metadata !306), !dbg !936
  store %struct.ToolsPlugin* null, %struct.ToolsPlugin** %16, align 8, !dbg !936
  call void @llvm.dbg.declare(metadata %struct.ToolsPluginData* (%struct.ToolsAppCtx*)** %17, metadata !937, metadata !306), !dbg !938
  %51 = load i32, i32* %9, align 4, !dbg !939
  %52 = zext i32 %51 to i64, !dbg !940
  %53 = load %struct._GPtrArray*, %struct._GPtrArray** %12, align 8, !dbg !941
  %54 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %53, i32 0, i32 0, !dbg !942
  %55 = load i8**, i8*** %54, align 8, !dbg !942
  %56 = getelementptr inbounds i8*, i8** %55, i64 %52, !dbg !940
  %57 = load i8*, i8** %56, align 8, !dbg !940
  store i8* %57, i8** %13, align 8, !dbg !943
  %58 = load i8*, i8** %5, align 8, !dbg !944
  %59 = load i8*, i8** %13, align 8, !dbg !945
  %60 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* %58, i32 47, i8* %59), !dbg !946
  store i8* %60, i8** %14, align 8, !dbg !947
  %61 = load i8*, i8** %14, align 8, !dbg !948
  %62 = call i32 @g_file_test(i8* %61, i32 1), !dbg !950
  %63 = icmp ne i32 %62, 0, !dbg !950
  br i1 %63, label %66, label %64, !dbg !951

; <label>:64:                                     ; preds = %50
  %65 = load i8*, i8** %13, align 8, !dbg !952
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.27, i32 0, i32 0), i8* %65), !dbg !954
  br label %98, !dbg !955

; <label>:66:                                     ; preds = %50
  %67 = load i8*, i8** %14, align 8, !dbg !956
  %68 = call %struct._GModule* @g_module_open(i8* %67, i32 2), !dbg !957
  store %struct._GModule* %68, %struct._GModule** %15, align 8, !dbg !958
  %69 = load %struct._GModule*, %struct._GModule** %15, align 8, !dbg !959
  %70 = icmp eq %struct._GModule* %69, null, !dbg !961
  br i1 %70, label %71, label %74, !dbg !962

; <label>:71:                                     ; preds = %66
  %72 = load i8*, i8** %13, align 8, !dbg !963
  %73 = call i8* @g_module_error(), !dbg !965
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i32 0, i32 0), i8* %72, i8* %73), !dbg !966
  br label %98, !dbg !968

; <label>:74:                                     ; preds = %66
  %75 = load %struct._GModule*, %struct._GModule** %15, align 8, !dbg !969
  %76 = bitcast %struct.ToolsPluginData* (%struct.ToolsAppCtx*)** %17 to i8**, !dbg !971
  %77 = call i32 @g_module_symbol(%struct._GModule* %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i8** %76), !dbg !972
  %78 = icmp ne i32 %77, 0, !dbg !972
  br i1 %78, label %81, label %79, !dbg !973

; <label>:79:                                     ; preds = %74
  %80 = load i8*, i8** %13, align 8, !dbg !974
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.30, i32 0, i32 0), i8* %80), !dbg !976
  br label %98, !dbg !977

; <label>:81:                                     ; preds = %74
  %82 = call noalias i8* @g_malloc(i64 32), !dbg !978
  %83 = bitcast i8* %82 to %struct.ToolsPlugin*, !dbg !978
  store %struct.ToolsPlugin* %83, %struct.ToolsPlugin** %16, align 8, !dbg !979
  %84 = load i8*, i8** %13, align 8, !dbg !980
  %85 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %16, align 8, !dbg !981
  %86 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %85, i32 0, i32 0, !dbg !982
  store i8* %84, i8** %86, align 8, !dbg !983
  %87 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %16, align 8, !dbg !984
  %88 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %87, i32 0, i32 3, !dbg !985
  store %struct.ToolsPluginData* null, %struct.ToolsPluginData** %88, align 8, !dbg !986
  %89 = load %struct._GModule*, %struct._GModule** %15, align 8, !dbg !987
  %90 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %16, align 8, !dbg !988
  %91 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %90, i32 0, i32 1, !dbg !989
  store %struct._GModule* %89, %struct._GModule** %91, align 8, !dbg !990
  %92 = load %struct.ToolsPluginData* (%struct.ToolsAppCtx*)*, %struct.ToolsPluginData* (%struct.ToolsAppCtx*)** %17, align 8, !dbg !991
  %93 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %16, align 8, !dbg !992
  %94 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %93, i32 0, i32 2, !dbg !993
  store %struct.ToolsPluginData* (%struct.ToolsAppCtx*)* %92, %struct.ToolsPluginData* (%struct.ToolsAppCtx*)** %94, align 8, !dbg !994
  %95 = load %struct._GPtrArray*, %struct._GPtrArray** %6, align 8, !dbg !995
  %96 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %16, align 8, !dbg !996
  %97 = bitcast %struct.ToolsPlugin* %96 to i8*, !dbg !996
  call void @g_ptr_array_add(%struct._GPtrArray* %95, i8* %97), !dbg !997
  br label %98, !dbg !997

; <label>:98:                                     ; preds = %81, %79, %71, %64
  %99 = load i8*, i8** %14, align 8, !dbg !998
  call void @g_free(i8* %99), !dbg !999
  %100 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %16, align 8, !dbg !1000
  %101 = icmp eq %struct.ToolsPlugin* %100, null, !dbg !1002
  br i1 %101, label %102, label %113, !dbg !1003

; <label>:102:                                    ; preds = %98
  %103 = load %struct._GModule*, %struct._GModule** %15, align 8, !dbg !1004
  %104 = icmp ne %struct._GModule* %103, null, !dbg !1006
  br i1 %104, label %105, label %113, !dbg !1007

; <label>:105:                                    ; preds = %102
  %106 = load %struct._GModule*, %struct._GModule** %15, align 8, !dbg !1008
  %107 = call i32 @g_module_close(%struct._GModule* %106), !dbg !1011
  %108 = icmp ne i32 %107, 0, !dbg !1011
  br i1 %108, label %112, label %109, !dbg !1012

; <label>:109:                                    ; preds = %105
  %110 = load i8*, i8** %13, align 8, !dbg !1013
  %111 = call i8* @g_module_error(), !dbg !1015
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.31, i32 0, i32 0), i8* %110, i8* %111), !dbg !1016
  br label %112, !dbg !1018

; <label>:112:                                    ; preds = %109, %105
  br label %113, !dbg !1019

; <label>:113:                                    ; preds = %112, %102, %98
  br label %114, !dbg !1020

; <label>:114:                                    ; preds = %113
  %115 = load i32, i32* %9, align 4, !dbg !1021
  %116 = add i32 %115, 1, !dbg !1021
  store i32 %116, i32* %9, align 4, !dbg !1021
  br label %44, !dbg !1023, !llvm.loop !1024

; <label>:117:                                    ; preds = %44
  %118 = load %struct._GPtrArray*, %struct._GPtrArray** %12, align 8, !dbg !1026
  %119 = call i8** @g_ptr_array_free(%struct._GPtrArray* %118, i32 1), !dbg !1027
  store i32 1, i32* %7, align 4, !dbg !1028
  br label %120, !dbg !1029

; <label>:120:                                    ; preds = %117, %22
  %121 = load i32, i32* %7, align 4, !dbg !1030
  ret i32 %121, !dbg !1031
}

; Function Attrs: nounwind uwtable
define internal void @ToolsCoreFreePlugin(%struct.ToolsPlugin*) #0 !dbg !1032 {
  %2 = alloca %struct.ToolsPlugin*, align 8
  store %struct.ToolsPlugin* %0, %struct.ToolsPlugin** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsPlugin** %2, metadata !1035, metadata !306), !dbg !1036
  %3 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %2, align 8, !dbg !1037
  %4 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %3, i32 0, i32 1, !dbg !1039
  %5 = load %struct._GModule*, %struct._GModule** %4, align 8, !dbg !1039
  %6 = icmp ne %struct._GModule* %5, null, !dbg !1040
  br i1 %6, label %7, label %18, !dbg !1041

; <label>:7:                                      ; preds = %1
  %8 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %2, align 8, !dbg !1042
  %9 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %8, i32 0, i32 1, !dbg !1044
  %10 = load %struct._GModule*, %struct._GModule** %9, align 8, !dbg !1044
  %11 = call i32 @g_module_close(%struct._GModule* %10), !dbg !1045
  %12 = icmp ne i32 %11, 0, !dbg !1045
  br i1 %12, label %18, label %13, !dbg !1046

; <label>:13:                                     ; preds = %7
  %14 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %2, align 8, !dbg !1047
  %15 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %14, i32 0, i32 0, !dbg !1049
  %16 = load i8*, i8** %15, align 8, !dbg !1049
  %17 = call i8* @g_module_error(), !dbg !1050
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.31, i32 0, i32 0), i8* %16, i8* %17), !dbg !1051
  br label %18, !dbg !1053

; <label>:18:                                     ; preds = %13, %7, %1
  %19 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %2, align 8, !dbg !1054
  %20 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %19, i32 0, i32 0, !dbg !1055
  %21 = load i8*, i8** %20, align 8, !dbg !1055
  call void @g_free(i8* %21), !dbg !1056
  %22 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %2, align 8, !dbg !1057
  %23 = bitcast %struct.ToolsPlugin* %22 to i8*, !dbg !1057
  call void @g_free(i8* %23), !dbg !1058
  ret void, !dbg !1059
}

declare void @g_module_make_resident(%struct._GModule*) #2

declare void @g_ptr_array_add(%struct._GPtrArray*, i8*) #2

declare void @VMTools_BindTextDomain(i8*, i8*, i8*) #2

declare noalias i8* @g_malloc(i64) #2

declare i8** @g_ptr_array_free(%struct._GPtrArray*, i32) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define void @ToolsCore_RegisterPlugins(%struct.ToolsServiceState*) #0 !dbg !1060 {
  %2 = alloca %struct.ToolsServiceState*, align 8
  %3 = alloca %struct.ToolsAppProvider*, align 8
  %4 = alloca %struct.ToolsAppProviderReg, align 8
  store %struct.ToolsServiceState* %0, %struct.ToolsServiceState** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %2, metadata !1061, metadata !306), !dbg !1062
  call void @llvm.dbg.declare(metadata %struct.ToolsAppProvider** %3, metadata !1063, metadata !306), !dbg !1064
  call void @llvm.dbg.declare(metadata %struct.ToolsAppProviderReg* %4, metadata !1065, metadata !306), !dbg !1066
  %5 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1067
  %6 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %5, i32 0, i32 8, !dbg !1069
  %7 = load %struct._GPtrArray*, %struct._GPtrArray** %6, align 8, !dbg !1069
  %8 = icmp eq %struct._GPtrArray* %7, null, !dbg !1070
  br i1 %8, label %9, label %10, !dbg !1071

; <label>:9:                                      ; preds = %1
  br label %103, !dbg !1072

; <label>:10:                                     ; preds = %1
  %11 = call %struct._GArray* @g_array_new(i32 0, i32 1, i32 16), !dbg !1074
  %12 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1075
  %13 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %12, i32 0, i32 14, !dbg !1076
  store %struct._GArray* %11, %struct._GArray** %13, align 8, !dbg !1077
  %14 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1078
  %15 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %14, i32 0, i32 13, !dbg !1080
  %16 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %15, i32 0, i32 5, !dbg !1081
  %17 = load %struct._RpcChannel*, %struct._RpcChannel** %16, align 8, !dbg !1081
  %18 = icmp ne %struct._RpcChannel* %17, null, !dbg !1082
  br i1 %18, label %19, label %40, !dbg !1083

; <label>:19:                                     ; preds = %10
  %20 = call noalias i8* @g_malloc0(i64 56), !dbg !1084
  %21 = bitcast i8* %20 to %struct.ToolsAppProvider*, !dbg !1084
  store %struct.ToolsAppProvider* %21, %struct.ToolsAppProvider** %3, align 8, !dbg !1086
  %22 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %3, align 8, !dbg !1087
  %23 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %22, i32 0, i32 1, !dbg !1088
  store i32 1, i32* %23, align 8, !dbg !1089
  %24 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %3, align 8, !dbg !1090
  %25 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %24, i32 0, i32 2, !dbg !1091
  store i64 48, i64* %25, align 8, !dbg !1092
  %26 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %3, align 8, !dbg !1093
  %27 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %26, i32 0, i32 0, !dbg !1094
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8** %27, align 8, !dbg !1095
  %28 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %3, align 8, !dbg !1096
  %29 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %28, i32 0, i32 4, !dbg !1097
  store i32 (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, %struct.ToolsPluginData*, i8*)* @ToolsCoreRegisterRPC, i32 (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, %struct.ToolsPluginData*, i8*)** %29, align 8, !dbg !1098
  %30 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %3, align 8, !dbg !1099
  %31 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %30, i32 0, i32 6, !dbg !1100
  store void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, i8*)* @ToolsCoreDumpRPC, void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, i8*)** %31, align 8, !dbg !1101
  %32 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %3, align 8, !dbg !1102
  %33 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %4, i32 0, i32 0, !dbg !1103
  store %struct.ToolsAppProvider* %32, %struct.ToolsAppProvider** %33, align 8, !dbg !1104
  %34 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %4, i32 0, i32 1, !dbg !1105
  store i32 1, i32* %34, align 8, !dbg !1106
  %35 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1107
  %36 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %35, i32 0, i32 14, !dbg !1108
  %37 = load %struct._GArray*, %struct._GArray** %36, align 8, !dbg !1108
  %38 = bitcast %struct.ToolsAppProviderReg* %4 to i8*, !dbg !1109
  %39 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %37, i8* %38, i32 1), !dbg !1110
  br label %40, !dbg !1111

; <label>:40:                                     ; preds = %19, %10
  %41 = call noalias i8* @g_malloc0(i64 56), !dbg !1112
  %42 = bitcast i8* %41 to %struct.ToolsAppProvider*, !dbg !1112
  store %struct.ToolsAppProvider* %42, %struct.ToolsAppProvider** %3, align 8, !dbg !1113
  %43 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %3, align 8, !dbg !1114
  %44 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %43, i32 0, i32 1, !dbg !1115
  store i32 2, i32* %44, align 8, !dbg !1116
  %45 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %3, align 8, !dbg !1117
  %46 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %45, i32 0, i32 2, !dbg !1118
  store i64 24, i64* %46, align 8, !dbg !1119
  %47 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %3, align 8, !dbg !1120
  %48 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %47, i32 0, i32 0, !dbg !1121
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8** %48, align 8, !dbg !1122
  %49 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %3, align 8, !dbg !1123
  %50 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %49, i32 0, i32 4, !dbg !1124
  store i32 (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, %struct.ToolsPluginData*, i8*)* @ToolsCoreRegisterSignal, i32 (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, %struct.ToolsPluginData*, i8*)** %50, align 8, !dbg !1125
  %51 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %3, align 8, !dbg !1126
  %52 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %51, i32 0, i32 6, !dbg !1127
  store void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, i8*)* @ToolsCoreDumpSignal, void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, i8*)** %52, align 8, !dbg !1128
  %53 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %3, align 8, !dbg !1129
  %54 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %4, i32 0, i32 0, !dbg !1130
  store %struct.ToolsAppProvider* %53, %struct.ToolsAppProvider** %54, align 8, !dbg !1131
  %55 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %4, i32 0, i32 1, !dbg !1132
  store i32 1, i32* %55, align 8, !dbg !1133
  %56 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1134
  %57 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %56, i32 0, i32 14, !dbg !1135
  %58 = load %struct._GArray*, %struct._GArray** %57, align 8, !dbg !1135
  %59 = bitcast %struct.ToolsAppProviderReg* %4 to i8*, !dbg !1136
  %60 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %58, i8* %59, i32 1), !dbg !1137
  %61 = call noalias i8* @g_malloc0(i64 56), !dbg !1138
  %62 = bitcast i8* %61 to %struct.ToolsAppProvider*, !dbg !1138
  store %struct.ToolsAppProvider* %62, %struct.ToolsAppProvider** %3, align 8, !dbg !1139
  %63 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %3, align 8, !dbg !1140
  %64 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %63, i32 0, i32 1, !dbg !1141
  store i32 3, i32* %64, align 8, !dbg !1142
  %65 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %3, align 8, !dbg !1143
  %66 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %65, i32 0, i32 2, !dbg !1144
  store i64 56, i64* %66, align 8, !dbg !1145
  %67 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %3, align 8, !dbg !1146
  %68 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %67, i32 0, i32 0, !dbg !1147
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8** %68, align 8, !dbg !1148
  %69 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %3, align 8, !dbg !1149
  %70 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %69, i32 0, i32 4, !dbg !1150
  store i32 (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, %struct.ToolsPluginData*, i8*)* null, i32 (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, %struct.ToolsPluginData*, i8*)** %70, align 8, !dbg !1151
  %71 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %3, align 8, !dbg !1152
  %72 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %71, i32 0, i32 6, !dbg !1153
  store void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, i8*)* null, void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, i8*)** %72, align 8, !dbg !1154
  %73 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %3, align 8, !dbg !1155
  %74 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %4, i32 0, i32 0, !dbg !1156
  store %struct.ToolsAppProvider* %73, %struct.ToolsAppProvider** %74, align 8, !dbg !1157
  %75 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %4, i32 0, i32 1, !dbg !1158
  store i32 1, i32* %75, align 8, !dbg !1159
  %76 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1160
  %77 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %76, i32 0, i32 14, !dbg !1161
  %78 = load %struct._GArray*, %struct._GArray** %77, align 8, !dbg !1161
  %79 = bitcast %struct.ToolsAppProviderReg* %4 to i8*, !dbg !1162
  %80 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %78, i8* %79, i32 1), !dbg !1163
  %81 = call noalias i8* @g_malloc0(i64 56), !dbg !1164
  %82 = bitcast i8* %81 to %struct.ToolsAppProvider*, !dbg !1164
  store %struct.ToolsAppProvider* %82, %struct.ToolsAppProvider** %3, align 8, !dbg !1165
  %83 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %3, align 8, !dbg !1166
  %84 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %83, i32 0, i32 1, !dbg !1167
  store i32 4, i32* %84, align 8, !dbg !1168
  %85 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %3, align 8, !dbg !1169
  %86 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %85, i32 0, i32 2, !dbg !1170
  store i64 8, i64* %86, align 8, !dbg !1171
  %87 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %3, align 8, !dbg !1172
  %88 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %87, i32 0, i32 0, !dbg !1173
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i8** %88, align 8, !dbg !1174
  %89 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %3, align 8, !dbg !1175
  %90 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %89, i32 0, i32 4, !dbg !1176
  store i32 (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, %struct.ToolsPluginData*, i8*)* @ToolsCoreRegisterProperty, i32 (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, %struct.ToolsPluginData*, i8*)** %90, align 8, !dbg !1177
  %91 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %3, align 8, !dbg !1178
  %92 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %91, i32 0, i32 6, !dbg !1179
  store void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, i8*)* @ToolsCoreDumpProperty, void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, i8*)** %92, align 8, !dbg !1180
  %93 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %3, align 8, !dbg !1181
  %94 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %4, i32 0, i32 0, !dbg !1182
  store %struct.ToolsAppProvider* %93, %struct.ToolsAppProvider** %94, align 8, !dbg !1183
  %95 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %4, i32 0, i32 1, !dbg !1184
  store i32 1, i32* %95, align 8, !dbg !1185
  %96 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1186
  %97 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %96, i32 0, i32 14, !dbg !1187
  %98 = load %struct._GArray*, %struct._GArray** %97, align 8, !dbg !1187
  %99 = bitcast %struct.ToolsAppProviderReg* %4 to i8*, !dbg !1188
  %100 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %98, i8* %99, i32 1), !dbg !1189
  %101 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1190
  call void @ToolsCoreForEachPlugin(%struct.ToolsServiceState* %101, void (%struct.ToolsServiceState*, %struct.ToolsPluginData*)* null, i32 (%struct.ToolsServiceState*, %struct.ToolsPluginData*, i32, %struct.ToolsAppProviderReg*, i8*)* @ToolsCoreRegisterProvider), !dbg !1191
  %102 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1192
  call void @ToolsCoreForEachPlugin(%struct.ToolsServiceState* %102, void (%struct.ToolsServiceState*, %struct.ToolsPluginData*)* null, i32 (%struct.ToolsServiceState*, %struct.ToolsPluginData*, i32, %struct.ToolsAppProviderReg*, i8*)* @ToolsCoreRegisterApp), !dbg !1193
  br label %103, !dbg !1194

; <label>:103:                                    ; preds = %40, %9
  ret void, !dbg !1195
}

declare %struct._GArray* @g_array_new(i32, i32, i32) #2

declare noalias i8* @g_malloc0(i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @ToolsCoreRegisterRPC(%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, %struct.ToolsPluginData*, i8*) #0 !dbg !1197 {
  %5 = alloca %struct.ToolsAppCtx*, align 8
  %6 = alloca %struct.ToolsAppProvider*, align 8
  %7 = alloca %struct.ToolsPluginData*, align 8
  %8 = alloca i8*, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %5, metadata !1200, metadata !306), !dbg !1201
  store %struct.ToolsAppProvider* %1, %struct.ToolsAppProvider** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppProvider** %6, metadata !1202, metadata !306), !dbg !1203
  store %struct.ToolsPluginData* %2, %struct.ToolsPluginData** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsPluginData** %7, metadata !1204, metadata !306), !dbg !1205
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1206, metadata !306), !dbg !1207
  %9 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %5, align 8, !dbg !1208
  %10 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %9, i32 0, i32 5, !dbg !1209
  %11 = load %struct._RpcChannel*, %struct._RpcChannel** %10, align 8, !dbg !1209
  %12 = load i8*, i8** %8, align 8, !dbg !1210
  %13 = bitcast i8* %12 to %struct.RpcChannelCallback*, !dbg !1210
  call void @RpcChannel_RegisterCallback(%struct._RpcChannel* %11, %struct.RpcChannelCallback* %13), !dbg !1211
  ret i32 1, !dbg !1212
}

; Function Attrs: nounwind uwtable
define internal void @ToolsCoreDumpRPC(%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, i8*) #0 !dbg !1213 {
  %4 = alloca %struct.ToolsAppCtx*, align 8
  %5 = alloca %struct.ToolsAppProvider*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.RpcChannelCallback*, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %4, metadata !1216, metadata !306), !dbg !1217
  store %struct.ToolsAppProvider* %1, %struct.ToolsAppProvider** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppProvider** %5, metadata !1218, metadata !306), !dbg !1219
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1220, metadata !306), !dbg !1221
  %8 = load i8*, i8** %6, align 8, !dbg !1222
  %9 = icmp ne i8* %8, null, !dbg !1224
  br i1 %9, label %10, label %16, !dbg !1225

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.RpcChannelCallback** %7, metadata !1226, metadata !306), !dbg !1242
  %11 = load i8*, i8** %6, align 8, !dbg !1243
  %12 = bitcast i8* %11 to %struct.RpcChannelCallback*, !dbg !1243
  store %struct.RpcChannelCallback* %12, %struct.RpcChannelCallback** %7, align 8, !dbg !1242
  %13 = load %struct.RpcChannelCallback*, %struct.RpcChannelCallback** %7, align 8, !dbg !1244
  %14 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %13, i32 0, i32 0, !dbg !1245
  %15 = load i8*, i8** %14, align 8, !dbg !1245
  call void (i32, i8*, ...) @ToolsCore_LogState(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0), i8* %15), !dbg !1246
  br label %16, !dbg !1247

; <label>:16:                                     ; preds = %10, %3
  ret void, !dbg !1248
}

declare %struct._GArray* @g_array_append_vals(%struct._GArray*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @ToolsCoreRegisterSignal(%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, %struct.ToolsPluginData*, i8*) #0 !dbg !1249 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ToolsAppCtx*, align 8
  %7 = alloca %struct.ToolsAppProvider*, align 8
  %8 = alloca %struct.ToolsPluginData*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ToolsPluginSignalCb*, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %6, metadata !1250, metadata !306), !dbg !1251
  store %struct.ToolsAppProvider* %1, %struct.ToolsAppProvider** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppProvider** %7, metadata !1252, metadata !306), !dbg !1253
  store %struct.ToolsPluginData* %2, %struct.ToolsPluginData** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsPluginData** %8, metadata !1254, metadata !306), !dbg !1255
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1256, metadata !306), !dbg !1257
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1258, metadata !306), !dbg !1259
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1260, metadata !306), !dbg !1261
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1262, metadata !306), !dbg !1263
  call void @llvm.dbg.declare(metadata %struct.ToolsPluginSignalCb** %13, metadata !1264, metadata !306), !dbg !1272
  %14 = load i8*, i8** %9, align 8, !dbg !1273
  %15 = bitcast i8* %14 to %struct.ToolsPluginSignalCb*, !dbg !1273
  store %struct.ToolsPluginSignalCb* %15, %struct.ToolsPluginSignalCb** %13, align 8, !dbg !1272
  %16 = load %struct.ToolsPluginSignalCb*, %struct.ToolsPluginSignalCb** %13, align 8, !dbg !1274
  %17 = getelementptr inbounds %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %16, i32 0, i32 0, !dbg !1275
  %18 = load i8*, i8** %17, align 8, !dbg !1275
  %19 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %6, align 8, !dbg !1276
  %20 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %19, i32 0, i32 10, !dbg !1277
  %21 = load i8*, i8** %20, align 8, !dbg !1277
  %22 = bitcast i8* %21 to %struct._GTypeInstance*, !dbg !1278
  %23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0, !dbg !1279
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %23, align 8, !dbg !1279
  %25 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0, !dbg !1280
  %26 = load i64, i64* %25, align 8, !dbg !1280
  %27 = call i32 @g_signal_parse_name(i8* %18, i64 %26, i32* %11, i32* %12, i32 0), !dbg !1281
  store i32 %27, i32* %10, align 4, !dbg !1282
  %28 = load i32, i32* %10, align 4, !dbg !1283
  %29 = icmp ne i32 %28, 0, !dbg !1283
  br i1 %29, label %30, label %45, !dbg !1285

; <label>:30:                                     ; preds = %4
  %31 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %6, align 8, !dbg !1286
  %32 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %31, i32 0, i32 10, !dbg !1288
  %33 = load i8*, i8** %32, align 8, !dbg !1288
  %34 = load %struct.ToolsPluginSignalCb*, %struct.ToolsPluginSignalCb** %13, align 8, !dbg !1289
  %35 = getelementptr inbounds %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %34, i32 0, i32 0, !dbg !1290
  %36 = load i8*, i8** %35, align 8, !dbg !1290
  %37 = load %struct.ToolsPluginSignalCb*, %struct.ToolsPluginSignalCb** %13, align 8, !dbg !1291
  %38 = getelementptr inbounds %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %37, i32 0, i32 1, !dbg !1292
  %39 = load i8*, i8** %38, align 8, !dbg !1292
  %40 = bitcast i8* %39 to void ()*, !dbg !1293
  %41 = load %struct.ToolsPluginSignalCb*, %struct.ToolsPluginSignalCb** %13, align 8, !dbg !1294
  %42 = getelementptr inbounds %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %41, i32 0, i32 2, !dbg !1295
  %43 = load i8*, i8** %42, align 8, !dbg !1295
  %44 = call i64 @g_signal_connect_data(i8* %33, i8* %36, void ()* %40, i8* %43, void (i8*, %struct._GClosure*)* null, i32 0), !dbg !1296
  store i32 1, i32* %5, align 4, !dbg !1297
  br label %52, !dbg !1297

; <label>:45:                                     ; preds = %4
  %46 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %8, align 8, !dbg !1298
  %47 = getelementptr inbounds %struct.ToolsPluginData, %struct.ToolsPluginData* %46, i32 0, i32 0, !dbg !1299
  %48 = load i8*, i8** %47, align 8, !dbg !1299
  %49 = load %struct.ToolsPluginSignalCb*, %struct.ToolsPluginSignalCb** %13, align 8, !dbg !1300
  %50 = getelementptr inbounds %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %49, i32 0, i32 0, !dbg !1301
  %51 = load i8*, i8** %50, align 8, !dbg !1301
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.33, i32 0, i32 0), i8* %48, i8* %51), !dbg !1302
  store i32 0, i32* %5, align 4, !dbg !1303
  br label %52, !dbg !1303

; <label>:52:                                     ; preds = %45, %30
  %53 = load i32, i32* %5, align 4, !dbg !1304
  ret i32 %53, !dbg !1304
}

; Function Attrs: nounwind uwtable
define internal void @ToolsCoreDumpSignal(%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, i8*) #0 !dbg !1305 {
  %4 = alloca %struct.ToolsAppCtx*, align 8
  %5 = alloca %struct.ToolsAppProvider*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ToolsPluginSignalCb*, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %4, metadata !1306, metadata !306), !dbg !1307
  store %struct.ToolsAppProvider* %1, %struct.ToolsAppProvider** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppProvider** %5, metadata !1308, metadata !306), !dbg !1309
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1310, metadata !306), !dbg !1311
  %8 = load i8*, i8** %6, align 8, !dbg !1312
  %9 = icmp ne i8* %8, null, !dbg !1314
  br i1 %9, label %10, label %16, !dbg !1315

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.ToolsPluginSignalCb** %7, metadata !1316, metadata !306), !dbg !1318
  %11 = load i8*, i8** %6, align 8, !dbg !1319
  %12 = bitcast i8* %11 to %struct.ToolsPluginSignalCb*, !dbg !1319
  store %struct.ToolsPluginSignalCb* %12, %struct.ToolsPluginSignalCb** %7, align 8, !dbg !1318
  %13 = load %struct.ToolsPluginSignalCb*, %struct.ToolsPluginSignalCb** %7, align 8, !dbg !1320
  %14 = getelementptr inbounds %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %13, i32 0, i32 0, !dbg !1321
  %15 = load i8*, i8** %14, align 8, !dbg !1321
  call void (i32, i8*, ...) @ToolsCore_LogState(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i32 0, i32 0), i8* %15), !dbg !1322
  br label %16, !dbg !1323

; <label>:16:                                     ; preds = %10, %3
  ret void, !dbg !1324
}

; Function Attrs: nounwind uwtable
define internal i32 @ToolsCoreRegisterProperty(%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, %struct.ToolsPluginData*, i8*) #0 !dbg !1325 {
  %5 = alloca %struct.ToolsAppCtx*, align 8
  %6 = alloca %struct.ToolsAppProvider*, align 8
  %7 = alloca %struct.ToolsPluginData*, align 8
  %8 = alloca i8*, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %5, metadata !1326, metadata !306), !dbg !1327
  store %struct.ToolsAppProvider* %1, %struct.ToolsAppProvider** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppProvider** %6, metadata !1328, metadata !306), !dbg !1329
  store %struct.ToolsPluginData* %2, %struct.ToolsPluginData** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsPluginData** %7, metadata !1330, metadata !306), !dbg !1331
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1332, metadata !306), !dbg !1333
  %9 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %5, align 8, !dbg !1334
  %10 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %9, i32 0, i32 10, !dbg !1335
  %11 = load i8*, i8** %10, align 8, !dbg !1335
  %12 = bitcast i8* %11 to %struct.ToolsCoreService*, !dbg !1334
  %13 = load i8*, i8** %8, align 8, !dbg !1336
  %14 = bitcast i8* %13 to %struct.ToolsServiceProperty*, !dbg !1336
  call void @ToolsCoreService_RegisterProperty(%struct.ToolsCoreService* %12, %struct.ToolsServiceProperty* %14), !dbg !1337
  ret i32 1, !dbg !1338
}

; Function Attrs: nounwind uwtable
define internal void @ToolsCoreDumpProperty(%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, i8*) #0 !dbg !1339 {
  %4 = alloca %struct.ToolsAppCtx*, align 8
  %5 = alloca %struct.ToolsAppProvider*, align 8
  %6 = alloca i8*, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %4, metadata !1340, metadata !306), !dbg !1341
  store %struct.ToolsAppProvider* %1, %struct.ToolsAppProvider** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppProvider** %5, metadata !1342, metadata !306), !dbg !1343
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1344, metadata !306), !dbg !1345
  %7 = load i8*, i8** %6, align 8, !dbg !1346
  %8 = icmp ne i8* %7, null, !dbg !1348
  br i1 %8, label %9, label %14, !dbg !1349

; <label>:9:                                      ; preds = %3
  %10 = load i8*, i8** %6, align 8, !dbg !1350
  %11 = bitcast i8* %10 to %struct.ToolsServiceProperty*, !dbg !1352
  %12 = getelementptr inbounds %struct.ToolsServiceProperty, %struct.ToolsServiceProperty* %11, i32 0, i32 0, !dbg !1353
  %13 = load i8*, i8** %12, align 8, !dbg !1353
  call void (i32, i8*, ...) @ToolsCore_LogState(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0), i8* %13), !dbg !1354
  br label %14, !dbg !1355

; <label>:14:                                     ; preds = %9, %3
  ret void, !dbg !1356
}

; Function Attrs: nounwind uwtable
define internal i32 @ToolsCoreRegisterProvider(%struct.ToolsServiceState*, %struct.ToolsPluginData*, i32, %struct.ToolsAppProviderReg*, i8*) #0 !dbg !1357 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ToolsServiceState*, align 8
  %8 = alloca %struct.ToolsPluginData*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ToolsAppProviderReg*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ToolsAppProvider*, align 8
  %14 = alloca %struct.ToolsAppProviderReg, align 8
  %15 = alloca %struct.ToolsAppProviderReg*, align 8
  store %struct.ToolsServiceState* %0, %struct.ToolsServiceState** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %7, metadata !1358, metadata !306), !dbg !1359
  store %struct.ToolsPluginData* %1, %struct.ToolsPluginData** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsPluginData** %8, metadata !1360, metadata !306), !dbg !1361
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1362, metadata !306), !dbg !1363
  store %struct.ToolsAppProviderReg* %3, %struct.ToolsAppProviderReg** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppProviderReg** %10, metadata !1364, metadata !306), !dbg !1365
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1366, metadata !306), !dbg !1367
  %16 = load i32, i32* %9, align 4, !dbg !1368
  %17 = icmp eq i32 %16, 3, !dbg !1370
  br i1 %17, label %18, label %65, !dbg !1371

; <label>:18:                                     ; preds = %5
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1372, metadata !306), !dbg !1374
  call void @llvm.dbg.declare(metadata %struct.ToolsAppProvider** %13, metadata !1375, metadata !306), !dbg !1376
  %19 = load i8*, i8** %11, align 8, !dbg !1377
  %20 = bitcast i8* %19 to %struct.ToolsAppProvider*, !dbg !1377
  store %struct.ToolsAppProvider* %20, %struct.ToolsAppProvider** %13, align 8, !dbg !1376
  call void @llvm.dbg.declare(metadata %struct.ToolsAppProviderReg* %14, metadata !1378, metadata !306), !dbg !1379
  %21 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %14, i32 0, i32 0, !dbg !1380
  %22 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %13, align 8, !dbg !1381
  store %struct.ToolsAppProvider* %22, %struct.ToolsAppProvider** %21, align 8, !dbg !1380
  %23 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %14, i32 0, i32 1, !dbg !1380
  store i32 0, i32* %23, align 8, !dbg !1380
  store i32 0, i32* %12, align 4, !dbg !1382
  br label %24, !dbg !1384

; <label>:24:                                     ; preds = %56, %18
  %25 = load i32, i32* %12, align 4, !dbg !1385
  %26 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %7, align 8, !dbg !1388
  %27 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %26, i32 0, i32 14, !dbg !1389
  %28 = load %struct._GArray*, %struct._GArray** %27, align 8, !dbg !1389
  %29 = getelementptr inbounds %struct._GArray, %struct._GArray* %28, i32 0, i32 1, !dbg !1390
  %30 = load i32, i32* %29, align 8, !dbg !1390
  %31 = icmp ult i32 %25, %30, !dbg !1391
  br i1 %31, label %32, label %59, !dbg !1392

; <label>:32:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.ToolsAppProviderReg** %15, metadata !1393, metadata !306), !dbg !1395
  %33 = load i32, i32* %12, align 4, !dbg !1396
  %34 = zext i32 %33 to i64, !dbg !1397
  %35 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %7, align 8, !dbg !1398
  %36 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %35, i32 0, i32 14, !dbg !1399
  %37 = load %struct._GArray*, %struct._GArray** %36, align 8, !dbg !1399
  %38 = getelementptr inbounds %struct._GArray, %struct._GArray* %37, i32 0, i32 0, !dbg !1400
  %39 = load i8*, i8** %38, align 8, !dbg !1400
  %40 = bitcast i8* %39 to %struct.ToolsAppProviderReg*, !dbg !1401
  %41 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %40, i64 %34, !dbg !1397
  store %struct.ToolsAppProviderReg* %41, %struct.ToolsAppProviderReg** %15, align 8, !dbg !1395
  br label %42, !dbg !1402, !llvm.loop !1403

; <label>:42:                                     ; preds = %32
  %43 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %13, align 8, !dbg !1404
  %44 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %43, i32 0, i32 1, !dbg !1408
  %45 = load i32, i32* %44, align 8, !dbg !1408
  %46 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %15, align 8, !dbg !1409
  %47 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %46, i32 0, i32 0, !dbg !1410
  %48 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %47, align 8, !dbg !1410
  %49 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %48, i32 0, i32 1, !dbg !1411
  %50 = load i32, i32* %49, align 8, !dbg !1411
  %51 = icmp ne i32 %45, %50, !dbg !1412
  br i1 %51, label %52, label %53, !dbg !1404

; <label>:52:                                     ; preds = %42
  br label %54, !dbg !1413

; <label>:53:                                     ; preds = %42
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ToolsCoreRegisterProvider, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.36, i32 0, i32 0)), !dbg !1416
  store i32 1, i32* %6, align 4, !dbg !1419
  br label %66, !dbg !1419

; <label>:54:                                     ; preds = %52
  br label %55, !dbg !1420

; <label>:55:                                     ; preds = %54
  br label %56, !dbg !1422

; <label>:56:                                     ; preds = %55
  %57 = load i32, i32* %12, align 4, !dbg !1423
  %58 = add i32 %57, 1, !dbg !1423
  store i32 %58, i32* %12, align 4, !dbg !1423
  br label %24, !dbg !1425, !llvm.loop !1426

; <label>:59:                                     ; preds = %24
  %60 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %7, align 8, !dbg !1428
  %61 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %60, i32 0, i32 14, !dbg !1429
  %62 = load %struct._GArray*, %struct._GArray** %61, align 8, !dbg !1429
  %63 = bitcast %struct.ToolsAppProviderReg* %14 to i8*, !dbg !1430
  %64 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %62, i8* %63, i32 1), !dbg !1431
  br label %65, !dbg !1432

; <label>:65:                                     ; preds = %59, %5
  store i32 1, i32* %6, align 4, !dbg !1433
  br label %66, !dbg !1433

; <label>:66:                                     ; preds = %65, %53
  %67 = load i32, i32* %6, align 4, !dbg !1434
  ret i32 %67, !dbg !1434
}

; Function Attrs: nounwind uwtable
define internal i32 @ToolsCoreRegisterApp(%struct.ToolsServiceState*, %struct.ToolsPluginData*, i32, %struct.ToolsAppProviderReg*, i8*) #0 !dbg !1435 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ToolsServiceState*, align 8
  %8 = alloca %struct.ToolsPluginData*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ToolsAppProviderReg*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct._GError*, align 8
  store %struct.ToolsServiceState* %0, %struct.ToolsServiceState** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %7, metadata !1436, metadata !306), !dbg !1437
  store %struct.ToolsPluginData* %1, %struct.ToolsPluginData** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsPluginData** %8, metadata !1438, metadata !306), !dbg !1439
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1440, metadata !306), !dbg !1441
  store %struct.ToolsAppProviderReg* %3, %struct.ToolsAppProviderReg** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppProviderReg** %10, metadata !1442, metadata !306), !dbg !1443
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1444, metadata !306), !dbg !1445
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1446, metadata !306), !dbg !1447
  store i32 1, i32* %12, align 4, !dbg !1447
  %14 = load i32, i32* %9, align 4, !dbg !1448
  %15 = icmp eq i32 %14, 3, !dbg !1450
  br i1 %15, label %16, label %17, !dbg !1451

; <label>:16:                                     ; preds = %5
  store i32 1, i32* %6, align 4, !dbg !1452
  br label %112, !dbg !1452

; <label>:17:                                     ; preds = %5
  %18 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %10, align 8, !dbg !1454
  %19 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %18, i32 0, i32 1, !dbg !1456
  %20 = load i32, i32* %19, align 8, !dbg !1456
  %21 = icmp eq i32 %20, 2, !dbg !1457
  br i1 %21, label %22, label %27, !dbg !1458

; <label>:22:                                     ; preds = %17
  %23 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %8, align 8, !dbg !1459
  %24 = getelementptr inbounds %struct.ToolsPluginData, %struct.ToolsPluginData* %23, i32 0, i32 0, !dbg !1461
  %25 = load i8*, i8** %24, align 8, !dbg !1461
  %26 = load i32, i32* %9, align 4, !dbg !1462
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.37, i32 0, i32 0), i8* %25, i32 %26), !dbg !1463
  br label %93, !dbg !1464

; <label>:27:                                     ; preds = %17
  %28 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %10, align 8, !dbg !1465
  %29 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %28, i32 0, i32 1, !dbg !1467
  %30 = load i32, i32* %29, align 8, !dbg !1467
  %31 = icmp eq i32 %30, 0, !dbg !1468
  br i1 %31, label %32, label %67, !dbg !1469

; <label>:32:                                     ; preds = %27
  %33 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %10, align 8, !dbg !1470
  %34 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %33, i32 0, i32 0, !dbg !1473
  %35 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %34, align 8, !dbg !1473
  %36 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %35, i32 0, i32 3, !dbg !1474
  %37 = load void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, %struct._GError**)*, void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, %struct._GError**)** %36, align 8, !dbg !1474
  %38 = icmp ne void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, %struct._GError**)* %37, null, !dbg !1475
  br i1 %38, label %39, label %64, !dbg !1476

; <label>:39:                                     ; preds = %32
  call void @llvm.dbg.declare(metadata %struct._GError** %13, metadata !1477, metadata !306), !dbg !1479
  store %struct._GError* null, %struct._GError** %13, align 8, !dbg !1479
  %40 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %10, align 8, !dbg !1480
  %41 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %40, i32 0, i32 0, !dbg !1481
  %42 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %41, align 8, !dbg !1481
  %43 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %42, i32 0, i32 3, !dbg !1482
  %44 = load void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, %struct._GError**)*, void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, %struct._GError**)** %43, align 8, !dbg !1482
  %45 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %7, align 8, !dbg !1483
  %46 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %45, i32 0, i32 13, !dbg !1484
  %47 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %10, align 8, !dbg !1485
  %48 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %47, i32 0, i32 0, !dbg !1486
  %49 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %48, align 8, !dbg !1486
  call void %44(%struct.ToolsAppCtx* %46, %struct.ToolsAppProvider* %49, %struct._GError** %13), !dbg !1480
  %50 = load %struct._GError*, %struct._GError** %13, align 8, !dbg !1487
  %51 = icmp ne %struct._GError* %50, null, !dbg !1489
  br i1 %51, label %52, label %63, !dbg !1490

; <label>:52:                                     ; preds = %39
  %53 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %10, align 8, !dbg !1491
  %54 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %53, i32 0, i32 0, !dbg !1493
  %55 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %54, align 8, !dbg !1493
  %56 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %55, i32 0, i32 0, !dbg !1494
  %57 = load i8*, i8** %56, align 8, !dbg !1494
  %58 = load %struct._GError*, %struct._GError** %13, align 8, !dbg !1495
  %59 = getelementptr inbounds %struct._GError, %struct._GError* %58, i32 0, i32 2, !dbg !1496
  %60 = load i8*, i8** %59, align 8, !dbg !1496
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.38, i32 0, i32 0), i8* %57, i8* %60), !dbg !1497
  %61 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %10, align 8, !dbg !1498
  %62 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %61, i32 0, i32 1, !dbg !1499
  store i32 2, i32* %62, align 8, !dbg !1500
  call void @g_clear_error(%struct._GError** %13), !dbg !1501
  br label %93, !dbg !1502

; <label>:63:                                     ; preds = %39
  br label %64, !dbg !1503

; <label>:64:                                     ; preds = %63, %32
  %65 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %10, align 8, !dbg !1504
  %66 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %65, i32 0, i32 1, !dbg !1505
  store i32 1, i32* %66, align 8, !dbg !1506
  br label %67, !dbg !1507

; <label>:67:                                     ; preds = %64, %27
  %68 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %10, align 8, !dbg !1508
  %69 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %68, i32 0, i32 0, !dbg !1510
  %70 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %69, align 8, !dbg !1510
  %71 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %70, i32 0, i32 4, !dbg !1511
  %72 = load i32 (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, %struct.ToolsPluginData*, i8*)*, i32 (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*, %struct.ToolsPluginData*, i8*)** %71, align 8, !dbg !1511
  %73 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %7, align 8, !dbg !1512
  %74 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %73, i32 0, i32 13, !dbg !1513
  %75 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %10, align 8, !dbg !1514
  %76 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %75, i32 0, i32 0, !dbg !1515
  %77 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %76, align 8, !dbg !1515
  %78 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %8, align 8, !dbg !1516
  %79 = load i8*, i8** %11, align 8, !dbg !1517
  %80 = call i32 %72(%struct.ToolsAppCtx* %74, %struct.ToolsAppProvider* %77, %struct.ToolsPluginData* %78, i8* %79), !dbg !1508
  %81 = icmp ne i32 %80, 0, !dbg !1508
  br i1 %81, label %92, label %82, !dbg !1518

; <label>:82:                                     ; preds = %67
  %83 = load i32, i32* %9, align 4, !dbg !1519
  %84 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %10, align 8, !dbg !1521
  %85 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %84, i32 0, i32 0, !dbg !1522
  %86 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %85, align 8, !dbg !1522
  %87 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %86, i32 0, i32 0, !dbg !1523
  %88 = load i8*, i8** %87, align 8, !dbg !1523
  %89 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %8, align 8, !dbg !1524
  %90 = getelementptr inbounds %struct.ToolsPluginData, %struct.ToolsPluginData* %89, i32 0, i32 0, !dbg !1525
  %91 = load i8*, i8** %90, align 8, !dbg !1525
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.39, i32 0, i32 0), i32 %83, i8* %88, i8* %91), !dbg !1526
  br label %93, !dbg !1527

; <label>:92:                                     ; preds = %67
  store i32 0, i32* %12, align 4, !dbg !1528
  br label %93, !dbg !1529

; <label>:93:                                     ; preds = %92, %82, %52, %22
  %94 = load i32, i32* %12, align 4, !dbg !1530
  %95 = icmp ne i32 %94, 0, !dbg !1530
  br i1 %95, label %96, label %111, !dbg !1532

; <label>:96:                                     ; preds = %93
  %97 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %8, align 8, !dbg !1533
  %98 = getelementptr inbounds %struct.ToolsPluginData, %struct.ToolsPluginData* %97, i32 0, i32 2, !dbg !1535
  %99 = load i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)*, i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)** %98, align 8, !dbg !1535
  %100 = icmp ne i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)* %99, null, !dbg !1536
  br i1 %100, label %101, label %111, !dbg !1537

; <label>:101:                                    ; preds = %96
  %102 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %8, align 8, !dbg !1538
  %103 = getelementptr inbounds %struct.ToolsPluginData, %struct.ToolsPluginData* %102, i32 0, i32 2, !dbg !1540
  %104 = load i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)*, i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)** %103, align 8, !dbg !1540
  %105 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %7, align 8, !dbg !1541
  %106 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %105, i32 0, i32 13, !dbg !1542
  %107 = load i32, i32* %9, align 4, !dbg !1543
  %108 = load i8*, i8** %11, align 8, !dbg !1544
  %109 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %8, align 8, !dbg !1545
  %110 = call i32 %104(%struct.ToolsAppCtx* %106, i32 %107, i8* %108, %struct.ToolsPluginData* %109), !dbg !1538
  store i32 %110, i32* %6, align 4, !dbg !1546
  br label %112, !dbg !1546

; <label>:111:                                    ; preds = %96, %93
  store i32 1, i32* %6, align 4, !dbg !1547
  br label %112, !dbg !1547

; <label>:112:                                    ; preds = %111, %101, %16
  %113 = load i32, i32* %6, align 4, !dbg !1548
  ret i32 %113, !dbg !1548
}

; Function Attrs: nounwind uwtable
define void @ToolsCore_UnloadPlugins(%struct.ToolsServiceState*) #0 !dbg !1549 {
  %2 = alloca %struct.ToolsServiceState*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._GArray*, align 8
  %5 = alloca %struct.ToolsAppProviderReg*, align 8
  %6 = alloca %struct.ToolsPlugin*, align 8
  %7 = alloca %struct._GArray*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ToolsAppReg*, align 8
  store %struct.ToolsServiceState* %0, %struct.ToolsServiceState** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %2, metadata !1550, metadata !306), !dbg !1551
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1552, metadata !306), !dbg !1553
  %10 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1554
  %11 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %10, i32 0, i32 8, !dbg !1556
  %12 = load %struct._GPtrArray*, %struct._GPtrArray** %11, align 8, !dbg !1556
  %13 = icmp eq %struct._GPtrArray* %12, null, !dbg !1557
  br i1 %13, label %14, label %15, !dbg !1558

; <label>:14:                                     ; preds = %1
  br label %241, !dbg !1559

; <label>:15:                                     ; preds = %1
  %16 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1561
  %17 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %16, i32 0, i32 5, !dbg !1563
  %18 = load i32, i32* %17, align 8, !dbg !1563
  %19 = icmp ne i32 %18, 0, !dbg !1561
  br i1 %19, label %20, label %44, !dbg !1564

; <label>:20:                                     ; preds = %15
  %21 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1565
  %22 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %21, i32 0, i32 13, !dbg !1567
  %23 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %22, i32 0, i32 5, !dbg !1568
  %24 = load %struct._RpcChannel*, %struct._RpcChannel** %23, align 8, !dbg !1568
  %25 = icmp ne %struct._RpcChannel* %24, null, !dbg !1565
  br i1 %25, label %26, label %44, !dbg !1569

; <label>:26:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata %struct._GArray** %4, metadata !1570, metadata !306), !dbg !1572
  store %struct._GArray* null, %struct._GArray** %4, align 8, !dbg !1572
  %27 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1573
  %28 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %27, i32 0, i32 13, !dbg !1574
  %29 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %28, i32 0, i32 10, !dbg !1575
  %30 = load i8*, i8** %29, align 8, !dbg !1575
  %31 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1576
  %32 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %31, i32 0, i32 13, !dbg !1577
  call void (i8*, i8*, ...) @g_signal_emit_by_name(i8* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), %struct.ToolsAppCtx* %32, i32 0, %struct._GArray** %4), !dbg !1578
  %33 = load %struct._GArray*, %struct._GArray** %4, align 8, !dbg !1579
  %34 = icmp ne %struct._GArray* %33, null, !dbg !1581
  br i1 %34, label %35, label %43, !dbg !1582

; <label>:35:                                     ; preds = %26
  %36 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1583
  %37 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %36, i32 0, i32 13, !dbg !1585
  %38 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %37, i32 0, i32 5, !dbg !1586
  %39 = load %struct._RpcChannel*, %struct._RpcChannel** %38, align 8, !dbg !1586
  %40 = load %struct._GArray*, %struct._GArray** %4, align 8, !dbg !1587
  call void @ToolsCore_SetCapabilities(%struct._RpcChannel* %39, %struct._GArray* %40, i32 0), !dbg !1588
  %41 = load %struct._GArray*, %struct._GArray** %4, align 8, !dbg !1589
  %42 = call i8* @g_array_free(%struct._GArray* %41, i32 1), !dbg !1590
  br label %43, !dbg !1591

; <label>:43:                                     ; preds = %35, %26
  br label %44, !dbg !1592

; <label>:44:                                     ; preds = %43, %20, %15
  store i32 0, i32* %3, align 4, !dbg !1593
  br label %45, !dbg !1595

; <label>:45:                                     ; preds = %126, %44
  %46 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1596
  %47 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %46, i32 0, i32 14, !dbg !1599
  %48 = load %struct._GArray*, %struct._GArray** %47, align 8, !dbg !1599
  %49 = icmp ne %struct._GArray* %48, null, !dbg !1600
  br i1 %49, label %50, label %58, !dbg !1601

; <label>:50:                                     ; preds = %45
  %51 = load i32, i32* %3, align 4, !dbg !1602
  %52 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1604
  %53 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %52, i32 0, i32 14, !dbg !1605
  %54 = load %struct._GArray*, %struct._GArray** %53, align 8, !dbg !1605
  %55 = getelementptr inbounds %struct._GArray, %struct._GArray* %54, i32 0, i32 1, !dbg !1606
  %56 = load i32, i32* %55, align 8, !dbg !1606
  %57 = icmp ult i32 %51, %56, !dbg !1607
  br label %58

; <label>:58:                                     ; preds = %50, %45
  %59 = phi i1 [ false, %45 ], [ %57, %50 ]
  br i1 %59, label %60, label %129, !dbg !1608

; <label>:60:                                     ; preds = %58
  call void @llvm.dbg.declare(metadata %struct.ToolsAppProviderReg** %5, metadata !1610, metadata !306), !dbg !1612
  %61 = load i32, i32* %3, align 4, !dbg !1613
  %62 = zext i32 %61 to i64, !dbg !1614
  %63 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1615
  %64 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %63, i32 0, i32 14, !dbg !1616
  %65 = load %struct._GArray*, %struct._GArray** %64, align 8, !dbg !1616
  %66 = getelementptr inbounds %struct._GArray, %struct._GArray* %65, i32 0, i32 0, !dbg !1617
  %67 = load i8*, i8** %66, align 8, !dbg !1617
  %68 = bitcast i8* %67 to %struct.ToolsAppProviderReg*, !dbg !1618
  %69 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %68, i64 %62, !dbg !1614
  store %struct.ToolsAppProviderReg* %69, %struct.ToolsAppProviderReg** %5, align 8, !dbg !1612
  %70 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %5, align 8, !dbg !1619
  %71 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %70, i32 0, i32 0, !dbg !1621
  %72 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %71, align 8, !dbg !1621
  %73 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %72, i32 0, i32 5, !dbg !1622
  %74 = load void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*)*, void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*)** %73, align 8, !dbg !1622
  %75 = icmp ne void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*)* %74, null, !dbg !1623
  br i1 %75, label %76, label %92, !dbg !1624

; <label>:76:                                     ; preds = %60
  %77 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %5, align 8, !dbg !1625
  %78 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %77, i32 0, i32 1, !dbg !1627
  %79 = load i32, i32* %78, align 8, !dbg !1627
  %80 = icmp eq i32 %79, 1, !dbg !1628
  br i1 %80, label %81, label %92, !dbg !1629

; <label>:81:                                     ; preds = %76
  %82 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %5, align 8, !dbg !1630
  %83 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %82, i32 0, i32 0, !dbg !1632
  %84 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %83, align 8, !dbg !1632
  %85 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %84, i32 0, i32 5, !dbg !1633
  %86 = load void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*)*, void (%struct.ToolsAppCtx*, %struct.ToolsAppProvider*)** %85, align 8, !dbg !1633
  %87 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1634
  %88 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %87, i32 0, i32 13, !dbg !1635
  %89 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %5, align 8, !dbg !1636
  %90 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %89, i32 0, i32 0, !dbg !1637
  %91 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %90, align 8, !dbg !1637
  call void %86(%struct.ToolsAppCtx* %88, %struct.ToolsAppProvider* %91), !dbg !1630
  br label %92, !dbg !1638

; <label>:92:                                     ; preds = %81, %76, %60
  %93 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %5, align 8, !dbg !1639
  %94 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %93, i32 0, i32 0, !dbg !1641
  %95 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %94, align 8, !dbg !1641
  %96 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %95, i32 0, i32 1, !dbg !1642
  %97 = load i32, i32* %96, align 8, !dbg !1642
  %98 = icmp eq i32 %97, 1, !dbg !1643
  br i1 %98, label %120, label %99, !dbg !1644

; <label>:99:                                     ; preds = %92
  %100 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %5, align 8, !dbg !1645
  %101 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %100, i32 0, i32 0, !dbg !1646
  %102 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %101, align 8, !dbg !1646
  %103 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %102, i32 0, i32 1, !dbg !1647
  %104 = load i32, i32* %103, align 8, !dbg !1647
  %105 = icmp eq i32 %104, 2, !dbg !1648
  br i1 %105, label %120, label %106, !dbg !1649

; <label>:106:                                    ; preds = %99
  %107 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %5, align 8, !dbg !1650
  %108 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %107, i32 0, i32 0, !dbg !1651
  %109 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %108, align 8, !dbg !1651
  %110 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %109, i32 0, i32 1, !dbg !1652
  %111 = load i32, i32* %110, align 8, !dbg !1652
  %112 = icmp eq i32 %111, 3, !dbg !1653
  br i1 %112, label %120, label %113, !dbg !1654

; <label>:113:                                    ; preds = %106
  %114 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %5, align 8, !dbg !1655
  %115 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %114, i32 0, i32 0, !dbg !1656
  %116 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %115, align 8, !dbg !1656
  %117 = getelementptr inbounds %struct.ToolsAppProvider, %struct.ToolsAppProvider* %116, i32 0, i32 1, !dbg !1657
  %118 = load i32, i32* %117, align 8, !dbg !1657
  %119 = icmp eq i32 %118, 4, !dbg !1658
  br i1 %119, label %120, label %125, !dbg !1659

; <label>:120:                                    ; preds = %113, %106, %99, %92
  %121 = load %struct.ToolsAppProviderReg*, %struct.ToolsAppProviderReg** %5, align 8, !dbg !1661
  %122 = getelementptr inbounds %struct.ToolsAppProviderReg, %struct.ToolsAppProviderReg* %121, i32 0, i32 0, !dbg !1663
  %123 = load %struct.ToolsAppProvider*, %struct.ToolsAppProvider** %122, align 8, !dbg !1663
  %124 = bitcast %struct.ToolsAppProvider* %123 to i8*, !dbg !1661
  call void @g_free(i8* %124), !dbg !1664
  br label %125, !dbg !1665

; <label>:125:                                    ; preds = %120, %113
  br label %126, !dbg !1666

; <label>:126:                                    ; preds = %125
  %127 = load i32, i32* %3, align 4, !dbg !1667
  %128 = add i32 %127, 1, !dbg !1667
  store i32 %128, i32* %3, align 4, !dbg !1667
  br label %45, !dbg !1669, !llvm.loop !1670

; <label>:129:                                    ; preds = %58
  %130 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1672
  %131 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %130, i32 0, i32 13, !dbg !1673
  %132 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %131, i32 0, i32 10, !dbg !1674
  %133 = load i8*, i8** %132, align 8, !dbg !1674
  %134 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1675
  %135 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %134, i32 0, i32 13, !dbg !1676
  call void (i8*, i8*, ...) @g_signal_emit_by_name(i8* %133, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), %struct.ToolsAppCtx* %135), !dbg !1677
  br label %136, !dbg !1678

; <label>:136:                                    ; preds = %210, %129
  %137 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1679
  %138 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %137, i32 0, i32 8, !dbg !1681
  %139 = load %struct._GPtrArray*, %struct._GPtrArray** %138, align 8, !dbg !1681
  %140 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %139, i32 0, i32 1, !dbg !1682
  %141 = load i32, i32* %140, align 8, !dbg !1682
  %142 = icmp ugt i32 %141, 0, !dbg !1683
  br i1 %142, label %143, label %222, !dbg !1684

; <label>:143:                                    ; preds = %136
  call void @llvm.dbg.declare(metadata %struct.ToolsPlugin** %6, metadata !1685, metadata !306), !dbg !1687
  %144 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1688
  %145 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %144, i32 0, i32 8, !dbg !1689
  %146 = load %struct._GPtrArray*, %struct._GPtrArray** %145, align 8, !dbg !1689
  %147 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %146, i32 0, i32 1, !dbg !1690
  %148 = load i32, i32* %147, align 8, !dbg !1690
  %149 = sub i32 %148, 1, !dbg !1691
  %150 = zext i32 %149 to i64, !dbg !1692
  %151 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1693
  %152 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %151, i32 0, i32 8, !dbg !1694
  %153 = load %struct._GPtrArray*, %struct._GPtrArray** %152, align 8, !dbg !1694
  %154 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %153, i32 0, i32 0, !dbg !1695
  %155 = load i8**, i8*** %154, align 8, !dbg !1695
  %156 = getelementptr inbounds i8*, i8** %155, i64 %150, !dbg !1692
  %157 = load i8*, i8** %156, align 8, !dbg !1692
  %158 = bitcast i8* %157 to %struct.ToolsPlugin*, !dbg !1692
  store %struct.ToolsPlugin* %158, %struct.ToolsPlugin** %6, align 8, !dbg !1687
  call void @llvm.dbg.declare(metadata %struct._GArray** %7, metadata !1696, metadata !306), !dbg !1697
  %159 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %6, align 8, !dbg !1698
  %160 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %159, i32 0, i32 3, !dbg !1699
  %161 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %160, align 8, !dbg !1699
  %162 = icmp ne %struct.ToolsPluginData* %161, null, !dbg !1700
  br i1 %162, label %163, label %169, !dbg !1701

; <label>:163:                                    ; preds = %143
  %164 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %6, align 8, !dbg !1702
  %165 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %164, i32 0, i32 3, !dbg !1704
  %166 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %165, align 8, !dbg !1704
  %167 = getelementptr inbounds %struct.ToolsPluginData, %struct.ToolsPluginData* %166, i32 0, i32 1, !dbg !1705
  %168 = load %struct._GArray*, %struct._GArray** %167, align 8, !dbg !1705
  br label %170, !dbg !1706

; <label>:169:                                    ; preds = %143
  br label %170, !dbg !1707

; <label>:170:                                    ; preds = %169, %163
  %171 = phi %struct._GArray* [ %168, %163 ], [ null, %169 ], !dbg !1709
  store %struct._GArray* %171, %struct._GArray** %7, align 8, !dbg !1711
  %172 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %6, align 8, !dbg !1712
  %173 = getelementptr inbounds %struct.ToolsPlugin, %struct.ToolsPlugin* %172, i32 0, i32 3, !dbg !1713
  %174 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %173, align 8, !dbg !1713
  %175 = getelementptr inbounds %struct.ToolsPluginData, %struct.ToolsPluginData* %174, i32 0, i32 0, !dbg !1714
  %176 = load i8*, i8** %175, align 8, !dbg !1714
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0), i8* %176), !dbg !1715
  %177 = load %struct._GArray*, %struct._GArray** %7, align 8, !dbg !1716
  %178 = icmp ne %struct._GArray* %177, null, !dbg !1718
  br i1 %178, label %179, label %210, !dbg !1719

; <label>:179:                                    ; preds = %170
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1720, metadata !306), !dbg !1722
  store i32 0, i32* %8, align 4, !dbg !1723
  br label %180, !dbg !1725

; <label>:180:                                    ; preds = %204, %179
  %181 = load i32, i32* %8, align 4, !dbg !1726
  %182 = load %struct._GArray*, %struct._GArray** %7, align 8, !dbg !1729
  %183 = getelementptr inbounds %struct._GArray, %struct._GArray* %182, i32 0, i32 1, !dbg !1730
  %184 = load i32, i32* %183, align 8, !dbg !1730
  %185 = icmp ult i32 %181, %184, !dbg !1731
  br i1 %185, label %186, label %207, !dbg !1732

; <label>:186:                                    ; preds = %180
  call void @llvm.dbg.declare(metadata %struct.ToolsAppReg** %9, metadata !1733, metadata !306), !dbg !1735
  %187 = load i32, i32* %8, align 4, !dbg !1736
  %188 = zext i32 %187 to i64, !dbg !1737
  %189 = load %struct._GArray*, %struct._GArray** %7, align 8, !dbg !1738
  %190 = getelementptr inbounds %struct._GArray, %struct._GArray* %189, i32 0, i32 0, !dbg !1739
  %191 = load i8*, i8** %190, align 8, !dbg !1739
  %192 = bitcast i8* %191 to %struct.ToolsAppReg*, !dbg !1740
  %193 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %192, i64 %188, !dbg !1737
  store %struct.ToolsAppReg* %193, %struct.ToolsAppReg** %9, align 8, !dbg !1735
  %194 = load %struct.ToolsAppReg*, %struct.ToolsAppReg** %9, align 8, !dbg !1741
  %195 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %194, i32 0, i32 1, !dbg !1743
  %196 = load %struct._GArray*, %struct._GArray** %195, align 8, !dbg !1743
  %197 = icmp ne %struct._GArray* %196, null, !dbg !1744
  br i1 %197, label %198, label %203, !dbg !1745

; <label>:198:                                    ; preds = %186
  %199 = load %struct.ToolsAppReg*, %struct.ToolsAppReg** %9, align 8, !dbg !1746
  %200 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %199, i32 0, i32 1, !dbg !1748
  %201 = load %struct._GArray*, %struct._GArray** %200, align 8, !dbg !1748
  %202 = call i8* @g_array_free(%struct._GArray* %201, i32 1), !dbg !1749
  br label %203, !dbg !1750

; <label>:203:                                    ; preds = %198, %186
  br label %204, !dbg !1751

; <label>:204:                                    ; preds = %203
  %205 = load i32, i32* %8, align 4, !dbg !1752
  %206 = add i32 %205, 1, !dbg !1752
  store i32 %206, i32* %8, align 4, !dbg !1752
  br label %180, !dbg !1754, !llvm.loop !1755

; <label>:207:                                    ; preds = %180
  %208 = load %struct._GArray*, %struct._GArray** %7, align 8, !dbg !1757
  %209 = call i8* @g_array_free(%struct._GArray* %208, i32 1), !dbg !1758
  br label %210, !dbg !1759

; <label>:210:                                    ; preds = %207, %170
  %211 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1760
  %212 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %211, i32 0, i32 8, !dbg !1761
  %213 = load %struct._GPtrArray*, %struct._GPtrArray** %212, align 8, !dbg !1761
  %214 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1762
  %215 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %214, i32 0, i32 8, !dbg !1763
  %216 = load %struct._GPtrArray*, %struct._GPtrArray** %215, align 8, !dbg !1763
  %217 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %216, i32 0, i32 1, !dbg !1764
  %218 = load i32, i32* %217, align 8, !dbg !1764
  %219 = sub i32 %218, 1, !dbg !1765
  %220 = call i8* @g_ptr_array_remove_index(%struct._GPtrArray* %213, i32 %219), !dbg !1766
  %221 = load %struct.ToolsPlugin*, %struct.ToolsPlugin** %6, align 8, !dbg !1767
  call void @ToolsCoreFreePlugin(%struct.ToolsPlugin* %221), !dbg !1768
  br label %136, !dbg !1769, !llvm.loop !1771

; <label>:222:                                    ; preds = %136
  %223 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1772
  %224 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %223, i32 0, i32 14, !dbg !1774
  %225 = load %struct._GArray*, %struct._GArray** %224, align 8, !dbg !1774
  %226 = icmp ne %struct._GArray* %225, null, !dbg !1775
  br i1 %226, label %227, label %234, !dbg !1776

; <label>:227:                                    ; preds = %222
  %228 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1777
  %229 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %228, i32 0, i32 14, !dbg !1779
  %230 = load %struct._GArray*, %struct._GArray** %229, align 8, !dbg !1779
  %231 = call i8* @g_array_free(%struct._GArray* %230, i32 1), !dbg !1780
  %232 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1781
  %233 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %232, i32 0, i32 14, !dbg !1782
  store %struct._GArray* null, %struct._GArray** %233, align 8, !dbg !1783
  br label %234, !dbg !1784

; <label>:234:                                    ; preds = %227, %222
  %235 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1785
  %236 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %235, i32 0, i32 8, !dbg !1786
  %237 = load %struct._GPtrArray*, %struct._GPtrArray** %236, align 8, !dbg !1786
  %238 = call i8** @g_ptr_array_free(%struct._GPtrArray* %237, i32 1), !dbg !1787
  %239 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %2, align 8, !dbg !1788
  %240 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %239, i32 0, i32 8, !dbg !1789
  store %struct._GPtrArray* null, %struct._GPtrArray** %240, align 8, !dbg !1790
  br label %241, !dbg !1791

; <label>:241:                                    ; preds = %234, %14
  ret void, !dbg !1792
}

declare void @g_signal_emit_by_name(i8*, i8*, ...) #2

declare void @ToolsCore_SetCapabilities(%struct._RpcChannel*, %struct._GArray*, i32) #2

declare i8* @g_array_free(%struct._GArray*, i32) #2

declare i8* @g_ptr_array_remove_index(%struct._GPtrArray*, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @ToolsCore_LogState(i32, i8*, ...) #3 !dbg !1793 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1796, metadata !306), !dbg !1797
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1798, metadata !306), !dbg !1799
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1800, metadata !306), !dbg !1801
  %7 = load i32, i32* %3, align 4, !dbg !1802
  %8 = mul i32 3, %7, !dbg !1803
  %9 = load i8*, i8** %4, align 8, !dbg !1804
  %10 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* %9), !dbg !1805
  store i8* %10, i8** %5, align 8, !dbg !1801
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %6, metadata !1806, metadata !306), !dbg !1820
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !1821
  %12 = bitcast %struct.__va_list_tag* %11 to i8*, !dbg !1821
  call void @llvm.va_start(i8* %12), !dbg !1821
  %13 = load i8*, i8** %5, align 8, !dbg !1822
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !1823
  call void @g_logv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 64, i8* %13, %struct.__va_list_tag* %14), !dbg !1824
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !1825
  %16 = bitcast %struct.__va_list_tag* %15 to i8*, !dbg !1825
  call void @llvm.va_end(i8* %16), !dbg !1825
  %17 = load i8*, i8** %5, align 8, !dbg !1826
  call void @g_free(i8* %17), !dbg !1827
  ret void, !dbg !1828
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare %struct._GDir* @g_dir_open(i8*, i32, %struct._GError**) #2

declare i8* @g_dir_read_name(%struct._GDir*) #2

declare i32 @g_str_has_suffix(i8*, i8*) #2

declare void @g_dir_close(%struct._GDir*) #2

declare void @g_ptr_array_sort(%struct._GPtrArray*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ToolsCoreStrPtrCompare(i8*, i8*) #0 !dbg !1829 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1835, metadata !306), !dbg !1836
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1837, metadata !306), !dbg !1838
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1839, metadata !306), !dbg !1840
  %7 = load i8*, i8** %3, align 8, !dbg !1841
  %8 = bitcast i8* %7 to i8**, !dbg !1842
  %9 = load i8*, i8** %8, align 8, !dbg !1843
  store i8* %9, i8** %5, align 8, !dbg !1840
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1844, metadata !306), !dbg !1845
  %10 = load i8*, i8** %4, align 8, !dbg !1846
  %11 = bitcast i8* %10 to i8**, !dbg !1847
  %12 = load i8*, i8** %11, align 8, !dbg !1848
  store i8* %12, i8** %6, align 8, !dbg !1845
  %13 = load i8*, i8** %5, align 8, !dbg !1849
  %14 = load i8*, i8** %6, align 8, !dbg !1850
  %15 = call i32 @strcmp(i8* %13, i8* %14) #6, !dbg !1851
  ret i32 %15, !dbg !1852
}

declare %struct._GModule* @g_module_open(i8*, i32) #2

declare i8* @g_module_error() #2

declare i32 @g_module_symbol(%struct._GModule*, i8*, i8**) #2

declare i32 @g_module_close(%struct._GModule*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare void @RpcChannel_RegisterCallback(%struct._RpcChannel*, %struct.RpcChannelCallback*) #2

declare i32 @g_signal_parse_name(i8*, i64, i32*, i32*, i32) #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #2

declare void @ToolsCoreService_RegisterProperty(%struct.ToolsCoreService*, %struct.ToolsServiceProperty*) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare void @g_clear_error(%struct._GError**) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!188, !189}
!llvm.ident = !{!190}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !51)
!1 = !DIFile(filename: "vmtoolsd-pluginMgr.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1387")
!2 = !{!3, !7, !13, !25, !33, !40, !46}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 232, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/plugin.h", directory: "/home/lichi/Desktop/open-vm-tools/line1387")
!5 = !{!6}
!6 = !DIEnumerator(name: "TOOLS_CORE_API_V1", value: 1)
!7 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 339, size: 32, align: 32, elements: !8)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "TOOLS_APP_GUESTRPC", value: 1)
!10 = !DIEnumerator(name: "TOOLS_APP_SIGNALS", value: 2)
!11 = !DIEnumerator(name: "TOOLS_APP_PROVIDER", value: 3)
!12 = !DIEnumerator(name: "TOOLS_SVC_PROPERTY", value: 4)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 51, size: 32, align: 32, elements: !15)
!14 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1387")
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
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 66, size: 32, align: 32, elements: !27)
!26 = !DIFile(filename: "/usr/include/glib-2.0/glib/gfileutils.h", directory: "/home/lichi/Desktop/open-vm-tools/line1387")
!27 = !{!28, !29, !30, !31, !32}
!28 = !DIEnumerator(name: "G_FILE_TEST_IS_REGULAR", value: 1)
!29 = !DIEnumerator(name: "G_FILE_TEST_IS_SYMLINK", value: 2)
!30 = !DIEnumerator(name: "G_FILE_TEST_IS_DIR", value: 4)
!31 = !DIEnumerator(name: "G_FILE_TEST_IS_EXECUTABLE", value: 8)
!32 = !DIEnumerator(name: "G_FILE_TEST_EXISTS", value: 16)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !34, line: 53, size: 32, align: 32, elements: !35)
!34 = !DIFile(filename: "toolsCoreInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line1387")
!35 = !{!36, !37, !38, !39}
!36 = !DIEnumerator(name: "TOOLS_PROVIDER_IDLE", value: 0)
!37 = !DIEnumerator(name: "TOOLS_PROVIDER_ACTIVE", value: 1)
!38 = !DIEnumerator(name: "TOOLS_PROVIDER_ERROR", value: 2)
!39 = !DIEnumerator(name: "TOOLS_PROVIDER_MAX", value: 3)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 42, size: 32, align: 32, elements: !42)
!41 = !DIFile(filename: "/usr/include/glib-2.0/gmodule.h", directory: "/home/lichi/Desktop/open-vm-tools/line1387")
!42 = !{!43, !44, !45}
!43 = !DIEnumerator(name: "G_MODULE_BIND_LAZY", value: 1)
!44 = !DIEnumerator(name: "G_MODULE_BIND_LOCAL", value: 2)
!45 = !DIEnumerator(name: "G_MODULE_BIND_MASK", value: 3)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !47, line: 155, size: 32, align: 32, elements: !48)
!47 = !DIFile(filename: "/usr/include/glib-2.0/gobject/gsignal.h", directory: "/home/lichi/Desktop/open-vm-tools/line1387")
!48 = !{!49, !50}
!49 = !DIEnumerator(name: "G_CONNECT_AFTER", value: 1)
!50 = !DIEnumerator(name: "G_CONNECT_SWAPPED", value: 2)
!51 = !{!52, !53, !161, !167, !168, !169, !177, !182, !183, !109}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppProviderReg", file: !34, line: 66, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppProviderReg", file: !34, line: 63, size: 128, align: 64, elements: !56)
!56 = !{!57, !159}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "prov", scope: !55, file: !34, line: 64, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppProvider", file: !4, line: 434, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppProvider", file: !4, line: 373, size: 448, align: 64, elements: !61)
!61 = !{!62, !68, !70, !74, !129, !151, !155}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !60, file: !4, line: 375, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !66, line: 46, baseType: !67)
!66 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1387")
!67 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "regType", scope: !60, file: !4, line: 382, baseType: !69, size: 32, align: 32, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppType", file: !4, line: 360, baseType: !7)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "regSize", scope: !60, file: !4, line: 384, baseType: !71, size: 64, align: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 216, baseType: !73)
!72 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1387")
!73 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !60, file: !4, line: 394, baseType: !75, size: 64, align: 64, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !78, !113, !114}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppCtx", file: !4, line: 274, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppCtx", file: !4, line: 241, size: 576, align: 64, elements: !81)
!81 = !{!82, !84, !85, !89, !90, !95, !100, !105, !106, !107, !111}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !80, file: !4, line: 243, baseType: !83, size: 32, align: 32)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCoreAPI", file: !4, line: 234, baseType: !3)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !80, file: !4, line: 245, baseType: !63, size: 64, align: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "isVMware", scope: !80, file: !4, line: 247, baseType: !86, size: 32, align: 32, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !66, line: 50, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !66, line: 49, baseType: !88)
!88 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "errorCode", scope: !80, file: !4, line: 249, baseType: !88, size: 32, align: 32, offset: 160)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "mainLoop", scope: !80, file: !4, line: 251, baseType: !91, size: 64, align: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainLoop", file: !93, line: 56, baseType: !94)
!93 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line1387")
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainLoop", file: !93, line: 56, flags: DIFlagFwdDecl)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !80, file: !4, line: 253, baseType: !96, size: 64, align: 64, offset: 256)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !98, line: 48, baseType: !99)
!98 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line1387")
!99 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !98, line: 48, flags: DIFlagFwdDecl)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !80, file: !4, line: 255, baseType: !101, size: 64, align: 64, offset: 320)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !103, line: 48, baseType: !104)
!103 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1387")
!104 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !103, line: 48, flags: DIFlagFwdDecl)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "blockFD", scope: !80, file: !4, line: 261, baseType: !88, size: 32, align: 32, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "uinputFD", scope: !80, file: !4, line: 263, baseType: !88, size: 32, align: 32, offset: 416)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !80, file: !4, line: 265, baseType: !108, size: 64, align: 64, offset: 448)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "serviceObj", scope: !80, file: !4, line: 273, baseType: !112, size: 64, align: 64, offset: 512)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !66, line: 77, baseType: !52)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !117, line: 42, baseType: !118)
!117 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/open-vm-tools/line1387")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !117, line: 44, size: 128, align: 64, elements: !119)
!119 = !{!120, !126, !127}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !118, file: !117, line: 46, baseType: !121, size: 32, align: 32)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !122, line: 36, baseType: !123)
!122 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/open-vm-tools/line1387")
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !124, line: 45, baseType: !125)
!124 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/open-vm-tools/line1387")
!125 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !118, file: !117, line: 47, baseType: !87, size: 32, align: 32, offset: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !118, file: !117, line: 48, baseType: !128, size: 64, align: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "registerApp", scope: !60, file: !4, line: 406, baseType: !130, size: 64, align: 64, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!86, !78, !113, !133, !112}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsPluginData", file: !4, line: 501, size: 256, align: 64, elements: !135)
!135 = !{!136, !137, !146, !150}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !134, file: !4, line: 503, baseType: !109, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !134, file: !4, line: 508, baseType: !138, size: 64, align: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "GArray", file: !140, line: 37, baseType: !141)
!140 = !DIFile(filename: "/usr/include/glib-2.0/glib/garray.h", directory: "/home/lichi/Desktop/open-vm-tools/line1387")
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GArray", file: !140, line: 41, size: 128, align: 64, elements: !142)
!142 = !{!143, !144}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !141, file: !140, line: 43, baseType: !128, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !141, file: !140, line: 44, baseType: !145, size: 32, align: 32, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !66, line: 55, baseType: !125)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "errorCb", scope: !134, file: !4, line: 539, baseType: !147, size: 64, align: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!86, !78, !69, !112, !133}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !134, file: !4, line: 544, baseType: !112, size: 64, align: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !60, file: !4, line: 420, baseType: !152, size: 64, align: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !78, !113}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "dumpState", scope: !60, file: !4, line: 433, baseType: !156, size: 64, align: 64, offset: 384)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !78, !113, !112}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !55, file: !34, line: 65, baseType: !160, size: 32, align: 32, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppProviderState", file: !34, line: 60, baseType: !33)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppReg", file: !4, line: 450, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppReg", file: !4, line: 447, size: 128, align: 64, elements: !164)
!164 = !{!165, !166}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !163, file: !4, line: 448, baseType: !69, size: 32, align: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !163, file: !4, line: 449, baseType: !138, size: 64, align: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTypeClass", file: !171, line: 389, baseType: !172)
!171 = !DIFile(filename: "/usr/include/glib-2.0/gobject/gtype.h", directory: "/home/lichi/Desktop/open-vm-tools/line1387")
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTypeClass", file: !171, line: 406, size: 64, align: 64, elements: !173)
!173 = !{!174}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "g_type", scope: !172, file: !171, line: 409, baseType: !175, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "GType", file: !171, line: 382, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !124, line: 66, baseType: !73)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTypeInstance", file: !171, line: 391, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTypeInstance", file: !171, line: 416, size: 64, align: 64, elements: !180)
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "g_class", scope: !179, file: !171, line: 419, baseType: !169, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "GConnectFlags", file: !47, line: 159, baseType: !46)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsServiceProperty", file: !4, line: 468, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsServiceProperty", file: !4, line: 466, size: 64, align: 64, elements: !186)
!186 = !{!187}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !185, file: !4, line: 467, baseType: !109, size: 64, align: 64)
!188 = !{i32 2, !"Dwarf Version", i32 4}
!189 = !{i32 2, !"Debug Info Version", i32 3}
!190 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!191 = distinct !DISubprogram(name: "ToolsCore_DumpPluginInfo", scope: !192, file: !192, line: 612, type: !193, isLocal: false, isDefinition: true, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!192 = !DIFile(filename: "pluginMgr.c", directory: "/home/lichi/Desktop/open-vm-tools/line1387")
!193 = !DISubroutineType(types: !194)
!194 = !{null, !195}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsServiceState", file: !34, line: 100, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsServiceState", file: !34, line: 69, size: 1472, align: 64, elements: !198)
!198 = !{!199, !200, !201, !207, !208, !209, !210, !211, !212, !219, !220, !224, !225, !300, !301, !302, !303}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !197, file: !34, line: 70, baseType: !128, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "configFile", scope: !197, file: !34, line: 71, baseType: !128, size: 64, align: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "configMtime", scope: !197, file: !34, line: 72, baseType: !202, size: 64, align: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !203, line: 75, baseType: !204)
!203 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line1387")
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !205, line: 139, baseType: !206)
!205 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1387")
!206 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "configCheckTask", scope: !197, file: !34, line: 73, baseType: !145, size: 32, align: 32, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mainService", scope: !197, file: !34, line: 74, baseType: !86, size: 32, align: 32, offset: 224)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "capsRegistered", scope: !197, file: !34, line: 75, baseType: !86, size: 32, align: 32, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "commonPath", scope: !197, file: !34, line: 76, baseType: !128, size: 64, align: 64, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "pluginPath", scope: !197, file: !34, line: 77, baseType: !128, size: 64, align: 64, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "plugins", scope: !197, file: !34, line: 78, baseType: !213, size: 64, align: 64, offset: 448)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPtrArray", file: !140, line: 39, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GPtrArray", file: !140, line: 53, size: 128, align: 64, elements: !216)
!216 = !{!217, !218}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "pdata", scope: !215, file: !140, line: 55, baseType: !167, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !215, file: !140, line: 56, baseType: !145, size: 32, align: 32, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "pidFile", scope: !197, file: !34, line: 82, baseType: !128, size: 64, align: 64, offset: 512)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "debugLib", scope: !197, file: !34, line: 84, baseType: !221, size: 64, align: 64, offset: 576)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "GModule", file: !41, line: 49, baseType: !223)
!223 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GModule", file: !41, line: 49, flags: DIFlagFwdDecl)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "debugPlugin", scope: !197, file: !34, line: 85, baseType: !128, size: 64, align: 64, offset: 640)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "debugData", scope: !197, file: !34, line: 86, baseType: !226, size: 64, align: 64, offset: 704)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugLibData", file: !228, line: 150, baseType: !229)
!228 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/rpcdebug.h", directory: "/home/lichi/Desktop/open-vm-tools/line1387")
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcDebugLibData", file: !228, line: 142, size: 192, align: 64, elements: !230)
!230 = !{!231, !236, !240}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "newDebugChannel", scope: !229, file: !228, line: 143, baseType: !232, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!96, !78, !235}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !229, file: !228, line: 145, baseType: !237, size: 64, align: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!88, !78, !112, !112, !235}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "debugPlugin", scope: !229, file: !228, line: 149, baseType: !241, size: 64, align: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugPlugin", file: !228, line: 126, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcDebugPlugin", file: !228, line: 112, size: 320, align: 64, elements: !244)
!244 = !{!245, !261, !262, !291, !297}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "recvFns", scope: !243, file: !228, line: 114, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugRecvMapping", file: !228, line: 69, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcDebugRecvMapping", file: !228, line: 59, size: 256, align: 64, elements: !249)
!249 = !{!250, !251, !259, !260}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !248, file: !228, line: 60, baseType: !128, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "recvFn", scope: !248, file: !228, line: 61, baseType: !252, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugRecvFn", file: !228, line: 53, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!86, !256, !71, !257, !258}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "xdrProc", scope: !248, file: !228, line: 66, baseType: !112, size: 64, align: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "xdrSize", scope: !248, file: !228, line: 68, baseType: !71, size: 64, align: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "dfltRecvFn", scope: !243, file: !228, line: 119, baseType: !252, size: 64, align: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "sendFn", scope: !243, file: !228, line: 121, baseType: !263, size: 64, align: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugSendFn", file: !228, line: 102, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!86, !267}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugMsgMapping", file: !228, line: 86, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcDebugMsgMapping", file: !228, line: 81, size: 256, align: 64, elements: !270)
!270 = !{!271, !272, !273, !290}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !269, file: !228, line: 82, baseType: !128, size: 64, align: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "messageLen", scope: !269, file: !228, line: 83, baseType: !71, size: 64, align: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "validateFn", scope: !269, file: !228, line: 84, baseType: !274, size: 64, align: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugValidateFn", file: !228, line: 77, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!86, !278, !86}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcInData", file: !98, line: 77, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcInData", file: !98, line: 51, size: 512, align: 64, elements: !281)
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !280, file: !98, line: 53, baseType: !109, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !280, file: !98, line: 58, baseType: !109, size: 64, align: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "argsSize", scope: !280, file: !98, line: 60, baseType: !71, size: 64, align: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !280, file: !98, line: 65, baseType: !256, size: 64, align: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "resultLen", scope: !280, file: !98, line: 67, baseType: !71, size: 64, align: 64, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "freeResult", scope: !280, file: !98, line: 72, baseType: !86, size: 32, align: 32, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "appCtx", scope: !280, file: !98, line: 74, baseType: !52, size: 64, align: 64, offset: 384)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !280, file: !98, line: 76, baseType: !52, size: 64, align: 64, offset: 448)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "freeMsg", scope: !269, file: !228, line: 85, baseType: !86, size: 32, align: 32, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "shutdownFn", scope: !243, file: !228, line: 123, baseType: !292, size: 64, align: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugShutdownFn", file: !228, line: 105, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !78, !296}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "plugin", scope: !243, file: !228, line: 125, baseType: !298, size: 64, align: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsPluginData", file: !4, line: 545, baseType: !134)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !197, file: !34, line: 87, baseType: !79, size: 576, align: 64, offset: 768)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "providers", scope: !197, file: !34, line: 88, baseType: !138, size: 64, align: 64, offset: 1344)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "vsockDev", scope: !197, file: !34, line: 97, baseType: !88, size: 32, align: 32, offset: 1408)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "vsockFamily", scope: !197, file: !34, line: 98, baseType: !88, size: 32, align: 32, offset: 1440)
!304 = !{}
!305 = !DILocalVariable(name: "state", arg: 1, scope: !191, file: !192, line: 612, type: !195)
!306 = !DIExpression()
!307 = !DILocation(line: 612, column: 45, scope: !191)
!308 = !DILocation(line: 614, column: 8, scope: !309)
!309 = distinct !DILexicalBlock(scope: !191, file: !192, line: 614, column: 8)
!310 = !DILocation(line: 614, column: 15, scope: !309)
!311 = !DILocation(line: 614, column: 23, scope: !309)
!312 = !DILocation(line: 614, column: 8, scope: !191)
!313 = !DILocation(line: 615, column: 7, scope: !314)
!314 = distinct !DILexicalBlock(scope: !309, file: !192, line: 614, column: 31)
!315 = !DILocation(line: 616, column: 4, scope: !314)
!316 = !DILocation(line: 617, column: 30, scope: !317)
!317 = distinct !DILexicalBlock(scope: !309, file: !192, line: 616, column: 11)
!318 = !DILocation(line: 617, column: 7, scope: !317)
!319 = !DILocation(line: 619, column: 1, scope: !191)
!320 = distinct !DISubprogram(name: "ToolsCoreForEachPlugin", scope: !192, file: !192, line: 319, type: !321, isLocal: true, isDefinition: true, scopeLine: 322, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !195, !323, !327}
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "PluginDataCallback", file: !192, line: 50, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !195, !298}
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "PluginAppRegCallback", file: !192, line: 53, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!86, !195, !298, !69, !53, !112}
!331 = !DILocalVariable(name: "state", arg: 1, scope: !320, file: !192, line: 319, type: !195)
!332 = !DILocation(line: 319, column: 43, scope: !320)
!333 = !DILocalVariable(name: "pluginCb", arg: 2, scope: !320, file: !192, line: 320, type: !323)
!334 = !DILocation(line: 320, column: 43, scope: !320)
!335 = !DILocalVariable(name: "appRegCb", arg: 3, scope: !320, file: !192, line: 321, type: !327)
!336 = !DILocation(line: 321, column: 45, scope: !320)
!337 = !DILocalVariable(name: "i", scope: !320, file: !192, line: 323, type: !145)
!338 = !DILocation(line: 323, column: 10, scope: !320)
!339 = !DILocation(line: 327, column: 11, scope: !340)
!340 = distinct !DILexicalBlock(scope: !320, file: !192, line: 327, column: 4)
!341 = !DILocation(line: 327, column: 9, scope: !340)
!342 = !DILocation(line: 327, column: 16, scope: !343)
!343 = !DILexicalBlockFile(scope: !344, file: !192, discriminator: 1)
!344 = distinct !DILexicalBlock(scope: !340, file: !192, line: 327, column: 4)
!345 = !DILocation(line: 327, column: 20, scope: !343)
!346 = !DILocation(line: 327, column: 27, scope: !343)
!347 = !DILocation(line: 327, column: 36, scope: !343)
!348 = !DILocation(line: 327, column: 18, scope: !343)
!349 = !DILocation(line: 327, column: 4, scope: !343)
!350 = !DILocalVariable(name: "plugin", scope: !351, file: !192, line: 328, type: !352)
!351 = distinct !DILexicalBlock(scope: !344, file: !192, line: 327, column: 46)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsPlugin", file: !192, line: 43, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsPlugin", file: !192, line: 38, size: 256, align: 64, elements: !355)
!355 = !{!356, !357, !358, !363}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "fileName", scope: !354, file: !192, line: 39, baseType: !128, size: 64, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !354, file: !192, line: 40, baseType: !221, size: 64, align: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "onload", scope: !354, file: !192, line: 41, baseType: !359, size: 64, align: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsPluginOnLoad", file: !4, line: 571, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!298, !78}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !354, file: !192, line: 42, baseType: !298, size: 64, align: 64, offset: 192)
!364 = !DILocation(line: 328, column: 20, scope: !351)
!365 = !DILocation(line: 328, column: 55, scope: !351)
!366 = !DILocation(line: 328, column: 29, scope: !351)
!367 = !DILocation(line: 328, column: 31, scope: !351)
!368 = !DILocation(line: 328, column: 38, scope: !351)
!369 = !DILocation(line: 328, column: 48, scope: !351)
!370 = !DILocalVariable(name: "regs", scope: !351, file: !192, line: 329, type: !138)
!371 = !DILocation(line: 329, column: 15, scope: !351)
!372 = !DILocation(line: 329, column: 23, scope: !351)
!373 = !DILocation(line: 329, column: 31, scope: !351)
!374 = !DILocation(line: 329, column: 36, scope: !351)
!375 = !DILocation(line: 329, column: 22, scope: !351)
!376 = !DILocation(line: 329, column: 46, scope: !377)
!377 = !DILexicalBlockFile(scope: !351, file: !192, discriminator: 1)
!378 = !DILocation(line: 329, column: 54, scope: !377)
!379 = !DILocation(line: 329, column: 60, scope: !377)
!380 = !DILocation(line: 329, column: 22, scope: !377)
!381 = !DILocation(line: 329, column: 22, scope: !382)
!382 = !DILexicalBlockFile(scope: !351, file: !192, discriminator: 2)
!383 = !DILocation(line: 329, column: 22, scope: !384)
!384 = !DILexicalBlockFile(scope: !351, file: !192, discriminator: 3)
!385 = !DILocation(line: 329, column: 15, scope: !384)
!386 = !DILocalVariable(name: "j", scope: !351, file: !192, line: 330, type: !145)
!387 = !DILocation(line: 330, column: 13, scope: !351)
!388 = !DILocation(line: 332, column: 11, scope: !389)
!389 = distinct !DILexicalBlock(scope: !351, file: !192, line: 332, column: 11)
!390 = !DILocation(line: 332, column: 20, scope: !389)
!391 = !DILocation(line: 332, column: 11, scope: !351)
!392 = !DILocation(line: 333, column: 10, scope: !393)
!393 = distinct !DILexicalBlock(scope: !389, file: !192, line: 332, column: 28)
!394 = !DILocation(line: 333, column: 19, scope: !393)
!395 = !DILocation(line: 333, column: 26, scope: !393)
!396 = !DILocation(line: 333, column: 34, scope: !393)
!397 = !DILocation(line: 334, column: 7, scope: !393)
!398 = !DILocation(line: 336, column: 11, scope: !399)
!399 = distinct !DILexicalBlock(scope: !351, file: !192, line: 336, column: 11)
!400 = !DILocation(line: 336, column: 16, scope: !399)
!401 = !DILocation(line: 336, column: 23, scope: !399)
!402 = !DILocation(line: 336, column: 26, scope: !403)
!403 = !DILexicalBlockFile(scope: !399, file: !192, discriminator: 1)
!404 = !DILocation(line: 336, column: 35, scope: !403)
!405 = !DILocation(line: 336, column: 11, scope: !403)
!406 = !DILocation(line: 337, column: 10, scope: !407)
!407 = distinct !DILexicalBlock(scope: !399, file: !192, line: 336, column: 44)
!408 = !DILocation(line: 340, column: 14, scope: !409)
!409 = distinct !DILexicalBlock(scope: !351, file: !192, line: 340, column: 7)
!410 = !DILocation(line: 340, column: 12, scope: !409)
!411 = !DILocation(line: 340, column: 19, scope: !412)
!412 = !DILexicalBlockFile(scope: !413, file: !192, discriminator: 1)
!413 = distinct !DILexicalBlock(scope: !409, file: !192, line: 340, column: 7)
!414 = !DILocation(line: 340, column: 23, scope: !412)
!415 = !DILocation(line: 340, column: 29, scope: !412)
!416 = !DILocation(line: 340, column: 21, scope: !412)
!417 = !DILocation(line: 340, column: 7, scope: !412)
!418 = !DILocalVariable(name: "k", scope: !419, file: !192, line: 341, type: !145)
!419 = distinct !DILexicalBlock(scope: !413, file: !192, line: 340, column: 39)
!420 = !DILocation(line: 341, column: 16, scope: !419)
!421 = !DILocalVariable(name: "pregIdx", scope: !419, file: !192, line: 342, type: !145)
!422 = !DILocation(line: 342, column: 16, scope: !419)
!423 = !DILocalVariable(name: "reg", scope: !419, file: !192, line: 343, type: !161)
!424 = !DILocation(line: 343, column: 23, scope: !419)
!425 = !DILocation(line: 343, column: 72, scope: !419)
!426 = !DILocation(line: 343, column: 31, scope: !419)
!427 = !DILocation(line: 343, column: 57, scope: !419)
!428 = !DILocation(line: 343, column: 64, scope: !419)
!429 = !DILocation(line: 343, column: 32, scope: !419)
!430 = !DILocalVariable(name: "preg", scope: !419, file: !192, line: 344, type: !53)
!431 = !DILocation(line: 344, column: 31, scope: !419)
!432 = !DILocation(line: 347, column: 17, scope: !433)
!433 = distinct !DILexicalBlock(scope: !419, file: !192, line: 347, column: 10)
!434 = !DILocation(line: 347, column: 15, scope: !433)
!435 = !DILocation(line: 347, column: 22, scope: !436)
!436 = !DILexicalBlockFile(scope: !437, file: !192, discriminator: 1)
!437 = distinct !DILexicalBlock(scope: !433, file: !192, line: 347, column: 10)
!438 = !DILocation(line: 347, column: 26, scope: !436)
!439 = !DILocation(line: 347, column: 33, scope: !436)
!440 = !DILocation(line: 347, column: 44, scope: !436)
!441 = !DILocation(line: 347, column: 24, scope: !436)
!442 = !DILocation(line: 347, column: 10, scope: !436)
!443 = !DILocalVariable(name: "tmp", scope: !444, file: !192, line: 348, type: !53)
!444 = distinct !DILexicalBlock(scope: !437, file: !192, line: 347, column: 54)
!445 = !DILocation(line: 348, column: 34, scope: !444)
!446 = !DILocation(line: 348, column: 103, scope: !444)
!447 = !DILocation(line: 348, column: 42, scope: !444)
!448 = !DILocation(line: 348, column: 76, scope: !444)
!449 = !DILocation(line: 348, column: 83, scope: !444)
!450 = !DILocation(line: 348, column: 95, scope: !444)
!451 = !DILocation(line: 348, column: 43, scope: !444)
!452 = !DILocation(line: 351, column: 17, scope: !453)
!453 = distinct !DILexicalBlock(scope: !444, file: !192, line: 351, column: 17)
!454 = !DILocation(line: 351, column: 22, scope: !453)
!455 = !DILocation(line: 351, column: 28, scope: !453)
!456 = !DILocation(line: 351, column: 39, scope: !453)
!457 = !DILocation(line: 351, column: 44, scope: !453)
!458 = !DILocation(line: 351, column: 36, scope: !453)
!459 = !DILocation(line: 351, column: 17, scope: !444)
!460 = !DILocation(line: 352, column: 23, scope: !461)
!461 = distinct !DILexicalBlock(scope: !453, file: !192, line: 351, column: 50)
!462 = !DILocation(line: 352, column: 21, scope: !461)
!463 = !DILocation(line: 353, column: 26, scope: !461)
!464 = !DILocation(line: 353, column: 24, scope: !461)
!465 = !DILocation(line: 354, column: 16, scope: !461)
!466 = !DILocation(line: 356, column: 10, scope: !444)
!467 = !DILocation(line: 347, column: 50, scope: !468)
!468 = !DILexicalBlockFile(scope: !437, file: !192, discriminator: 2)
!469 = !DILocation(line: 347, column: 10, scope: !468)
!470 = distinct !{!470, !471}
!471 = !DILocation(line: 347, column: 10, scope: !419)
!472 = !DILocation(line: 358, column: 14, scope: !473)
!473 = distinct !DILexicalBlock(scope: !419, file: !192, line: 358, column: 14)
!474 = !DILocation(line: 358, column: 19, scope: !473)
!475 = !DILocation(line: 358, column: 14, scope: !419)
!476 = !DILocation(line: 359, column: 120, scope: !477)
!477 = distinct !DILexicalBlock(scope: !473, file: !192, line: 358, column: 27)
!478 = !DILocation(line: 359, column: 125, scope: !477)
!479 = !DILocation(line: 359, column: 131, scope: !477)
!480 = !DILocation(line: 359, column: 139, scope: !477)
!481 = !DILocation(line: 359, column: 145, scope: !477)
!482 = !DILocation(line: 359, column: 13, scope: !477)
!483 = !DILocation(line: 361, column: 17, scope: !484)
!484 = distinct !DILexicalBlock(scope: !477, file: !192, line: 361, column: 17)
!485 = !DILocation(line: 361, column: 25, scope: !484)
!486 = !DILocation(line: 361, column: 31, scope: !484)
!487 = !DILocation(line: 361, column: 39, scope: !484)
!488 = !DILocation(line: 361, column: 46, scope: !484)
!489 = !DILocation(line: 362, column: 18, scope: !484)
!490 = !DILocation(line: 362, column: 26, scope: !484)
!491 = !DILocation(line: 362, column: 32, scope: !484)
!492 = !DILocation(line: 362, column: 41, scope: !484)
!493 = !DILocation(line: 362, column: 48, scope: !484)
!494 = !DILocation(line: 362, column: 53, scope: !484)
!495 = !DILocation(line: 362, column: 58, scope: !484)
!496 = !DILocation(line: 362, column: 69, scope: !484)
!497 = !DILocation(line: 362, column: 77, scope: !484)
!498 = !DILocation(line: 361, column: 17, scope: !499)
!499 = !DILexicalBlockFile(scope: !477, file: !192, discriminator: 1)
!500 = !DILocation(line: 363, column: 16, scope: !501)
!501 = distinct !DILexicalBlock(scope: !484, file: !192, line: 362, column: 84)
!502 = !DILocation(line: 365, column: 13, scope: !477)
!503 = !DILocation(line: 368, column: 17, scope: !504)
!504 = distinct !DILexicalBlock(scope: !419, file: !192, line: 368, column: 10)
!505 = !DILocation(line: 368, column: 15, scope: !504)
!506 = !DILocation(line: 368, column: 22, scope: !507)
!507 = !DILexicalBlockFile(scope: !508, file: !192, discriminator: 1)
!508 = distinct !DILexicalBlock(scope: !504, file: !192, line: 368, column: 10)
!509 = !DILocation(line: 368, column: 26, scope: !507)
!510 = !DILocation(line: 368, column: 31, scope: !507)
!511 = !DILocation(line: 368, column: 37, scope: !507)
!512 = !DILocation(line: 368, column: 24, scope: !507)
!513 = !DILocation(line: 368, column: 10, scope: !507)
!514 = !DILocalVariable(name: "appdata", scope: !515, file: !192, line: 369, type: !112)
!515 = distinct !DILexicalBlock(scope: !508, file: !192, line: 368, column: 47)
!516 = !DILocation(line: 369, column: 22, scope: !515)
!517 = !DILocation(line: 369, column: 49, scope: !515)
!518 = !DILocation(line: 369, column: 55, scope: !515)
!519 = !DILocation(line: 369, column: 61, scope: !515)
!520 = !DILocation(line: 369, column: 71, scope: !515)
!521 = !DILocation(line: 369, column: 69, scope: !515)
!522 = !DILocation(line: 369, column: 33, scope: !515)
!523 = !DILocation(line: 369, column: 38, scope: !515)
!524 = !DILocation(line: 369, column: 44, scope: !515)
!525 = !DILocation(line: 370, column: 18, scope: !526)
!526 = distinct !DILexicalBlock(scope: !515, file: !192, line: 370, column: 17)
!527 = !DILocation(line: 370, column: 27, scope: !526)
!528 = !DILocation(line: 370, column: 34, scope: !526)
!529 = !DILocation(line: 370, column: 42, scope: !526)
!530 = !DILocation(line: 370, column: 48, scope: !526)
!531 = !DILocation(line: 370, column: 53, scope: !526)
!532 = !DILocation(line: 370, column: 59, scope: !526)
!533 = !DILocation(line: 370, column: 65, scope: !526)
!534 = !DILocation(line: 370, column: 17, scope: !515)
!535 = !DILocation(line: 372, column: 20, scope: !536)
!536 = distinct !DILexicalBlock(scope: !526, file: !192, line: 370, column: 75)
!537 = !DILocation(line: 372, column: 26, scope: !536)
!538 = !DILocation(line: 372, column: 18, scope: !536)
!539 = !DILocation(line: 373, column: 16, scope: !536)
!540 = !DILocation(line: 380, column: 83, scope: !515)
!541 = !DILocation(line: 380, column: 22, scope: !515)
!542 = !DILocation(line: 380, column: 56, scope: !515)
!543 = !DILocation(line: 380, column: 63, scope: !515)
!544 = !DILocation(line: 380, column: 75, scope: !515)
!545 = !DILocation(line: 380, column: 23, scope: !515)
!546 = !DILocation(line: 380, column: 18, scope: !515)
!547 = !DILocation(line: 381, column: 10, scope: !515)
!548 = !DILocation(line: 368, column: 43, scope: !549)
!549 = !DILexicalBlockFile(scope: !508, file: !192, discriminator: 2)
!550 = !DILocation(line: 368, column: 10, scope: !549)
!551 = distinct !{!551, !552}
!552 = !DILocation(line: 368, column: 10, scope: !419)
!553 = !DILocation(line: 382, column: 7, scope: !419)
!554 = !DILocation(line: 340, column: 35, scope: !555)
!555 = !DILexicalBlockFile(scope: !413, file: !192, discriminator: 2)
!556 = !DILocation(line: 340, column: 7, scope: !555)
!557 = distinct !{!557, !558}
!558 = !DILocation(line: 340, column: 7, scope: !351)
!559 = !DILocation(line: 383, column: 4, scope: !351)
!560 = !DILocation(line: 327, column: 42, scope: !561)
!561 = !DILexicalBlockFile(scope: !344, file: !192, discriminator: 2)
!562 = !DILocation(line: 327, column: 4, scope: !561)
!563 = distinct !{!563, !564}
!564 = !DILocation(line: 327, column: 4, scope: !320)
!565 = !DILocation(line: 384, column: 1, scope: !320)
!566 = distinct !DISubprogram(name: "ToolsCoreDumpPluginInfo", scope: !192, file: !192, line: 104, type: !325, isLocal: true, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!567 = !DILocalVariable(name: "state", arg: 1, scope: !566, file: !192, line: 104, type: !195)
!568 = !DILocation(line: 104, column: 44, scope: !566)
!569 = !DILocalVariable(name: "plugin", arg: 2, scope: !566, file: !192, line: 105, type: !298)
!570 = !DILocation(line: 105, column: 42, scope: !566)
!571 = !DILocation(line: 107, column: 42, scope: !566)
!572 = !DILocation(line: 107, column: 50, scope: !566)
!573 = !DILocation(line: 107, column: 4, scope: !566)
!574 = !DILocation(line: 109, column: 8, scope: !575)
!575 = distinct !DILexicalBlock(scope: !566, file: !192, line: 109, column: 8)
!576 = !DILocation(line: 109, column: 16, scope: !575)
!577 = !DILocation(line: 109, column: 21, scope: !575)
!578 = !DILocation(line: 109, column: 8, scope: !566)
!579 = !DILocation(line: 110, column: 7, scope: !580)
!580 = distinct !DILexicalBlock(scope: !575, file: !192, line: 109, column: 29)
!581 = !DILocation(line: 111, column: 4, scope: !580)
!582 = !DILocation(line: 112, column: 1, scope: !566)
!583 = distinct !DISubprogram(name: "ToolsCoreDumpAppInfo", scope: !192, file: !192, line: 73, type: !329, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!584 = !DILocalVariable(name: "state", arg: 1, scope: !583, file: !192, line: 73, type: !195)
!585 = !DILocation(line: 73, column: 41, scope: !583)
!586 = !DILocalVariable(name: "plugin", arg: 2, scope: !583, file: !192, line: 74, type: !298)
!587 = !DILocation(line: 74, column: 39, scope: !583)
!588 = !DILocalVariable(name: "type", arg: 3, scope: !583, file: !192, line: 75, type: !69)
!589 = !DILocation(line: 75, column: 35, scope: !583)
!590 = !DILocalVariable(name: "preg", arg: 4, scope: !583, file: !192, line: 76, type: !53)
!591 = !DILocation(line: 76, column: 43, scope: !583)
!592 = !DILocalVariable(name: "reg", arg: 5, scope: !583, file: !192, line: 77, type: !112)
!593 = !DILocation(line: 77, column: 31, scope: !583)
!594 = !DILocation(line: 79, column: 8, scope: !595)
!595 = distinct !DILexicalBlock(scope: !583, file: !192, line: 79, column: 8)
!596 = !DILocation(line: 79, column: 13, scope: !595)
!597 = !DILocation(line: 79, column: 8, scope: !583)
!598 = !DILocation(line: 80, column: 11, scope: !599)
!599 = distinct !DILexicalBlock(scope: !600, file: !192, line: 80, column: 11)
!600 = distinct !DILexicalBlock(scope: !595, file: !192, line: 79, column: 21)
!601 = !DILocation(line: 80, column: 17, scope: !599)
!602 = !DILocation(line: 80, column: 23, scope: !599)
!603 = !DILocation(line: 80, column: 33, scope: !599)
!604 = !DILocation(line: 80, column: 11, scope: !600)
!605 = !DILocation(line: 81, column: 10, scope: !606)
!606 = distinct !DILexicalBlock(scope: !599, file: !192, line: 80, column: 41)
!607 = !DILocation(line: 81, column: 16, scope: !606)
!608 = !DILocation(line: 81, column: 22, scope: !606)
!609 = !DILocation(line: 81, column: 33, scope: !606)
!610 = !DILocation(line: 81, column: 40, scope: !606)
!611 = !DILocation(line: 81, column: 45, scope: !606)
!612 = !DILocation(line: 81, column: 51, scope: !606)
!613 = !DILocation(line: 81, column: 57, scope: !606)
!614 = !DILocation(line: 82, column: 7, scope: !606)
!615 = !DILocation(line: 85, column: 29, scope: !616)
!616 = distinct !DILexicalBlock(scope: !599, file: !192, line: 82, column: 14)
!617 = !DILocation(line: 83, column: 10, scope: !616)
!618 = !DILocation(line: 87, column: 5, scope: !600)
!619 = !DILocation(line: 90, column: 26, scope: !620)
!620 = distinct !DILexicalBlock(scope: !595, file: !192, line: 87, column: 12)
!621 = !DILocation(line: 88, column: 7, scope: !620)
!622 = !DILocation(line: 92, column: 4, scope: !583)
!623 = distinct !DISubprogram(name: "ToolsCore_LoadPlugins", scope: !192, file: !192, line: 633, type: !624, isLocal: false, isDefinition: true, scopeLine: 634, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!624 = !DISubroutineType(types: !625)
!625 = !{!86, !195}
!626 = !DILocalVariable(name: "state", arg: 1, scope: !623, file: !192, line: 633, type: !195)
!627 = !DILocation(line: 633, column: 42, scope: !623)
!628 = !DILocalVariable(name: "pluginDirExists", scope: !623, file: !192, line: 635, type: !86)
!629 = !DILocation(line: 635, column: 13, scope: !623)
!630 = !DILocalVariable(name: "ret", scope: !623, file: !192, line: 636, type: !86)
!631 = !DILocation(line: 636, column: 13, scope: !623)
!632 = !DILocalVariable(name: "pluginRoot", scope: !623, file: !192, line: 637, type: !128)
!633 = !DILocation(line: 637, column: 11, scope: !623)
!634 = !DILocalVariable(name: "i", scope: !623, file: !192, line: 638, type: !145)
!635 = !DILocation(line: 638, column: 10, scope: !623)
!636 = !DILocalVariable(name: "plugins", scope: !623, file: !192, line: 639, type: !213)
!637 = !DILocation(line: 639, column: 15, scope: !623)
!638 = !DILocalVariable(name: "subdir", scope: !623, file: !192, line: 644, type: !109)
!639 = !DILocation(line: 644, column: 16, scope: !623)
!640 = !DILocation(line: 648, column: 17, scope: !623)
!641 = !DILocation(line: 648, column: 15, scope: !623)
!642 = !DILocation(line: 674, column: 14, scope: !623)
!643 = !DILocation(line: 674, column: 12, scope: !623)
!644 = !DILocation(line: 680, column: 8, scope: !645)
!645 = distinct !DILexicalBlock(scope: !623, file: !192, line: 680, column: 8)
!646 = !DILocation(line: 680, column: 15, scope: !645)
!647 = !DILocation(line: 680, column: 26, scope: !645)
!648 = !DILocation(line: 680, column: 8, scope: !623)
!649 = !DILocation(line: 682, column: 43, scope: !650)
!650 = distinct !DILexicalBlock(scope: !645, file: !192, line: 680, column: 34)
!651 = !DILocation(line: 683, column: 43, scope: !650)
!652 = !DILocation(line: 681, column: 27, scope: !650)
!653 = !DILocation(line: 681, column: 7, scope: !650)
!654 = !DILocation(line: 681, column: 14, scope: !650)
!655 = !DILocation(line: 681, column: 25, scope: !650)
!656 = !DILocation(line: 686, column: 4, scope: !650)
!657 = !DILocation(line: 686, column: 28, scope: !658)
!658 = !DILexicalBlockFile(scope: !659, file: !192, discriminator: 1)
!659 = distinct !DILexicalBlock(scope: !645, file: !192, line: 686, column: 15)
!660 = !DILocation(line: 686, column: 35, scope: !658)
!661 = !DILocation(line: 686, column: 16, scope: !658)
!662 = !DILocation(line: 686, column: 15, scope: !658)
!663 = !DILocation(line: 687, column: 94, scope: !664)
!664 = distinct !DILexicalBlock(scope: !659, file: !192, line: 686, column: 68)
!665 = !DILocation(line: 687, column: 101, scope: !664)
!666 = !DILocation(line: 687, column: 7, scope: !664)
!667 = !DILocation(line: 688, column: 7, scope: !664)
!668 = !DILocation(line: 691, column: 20, scope: !669)
!669 = distinct !DILexicalBlock(scope: !623, file: !192, line: 691, column: 8)
!670 = !DILocation(line: 691, column: 27, scope: !669)
!671 = !DILocation(line: 691, column: 8, scope: !669)
!672 = !DILocation(line: 691, column: 59, scope: !669)
!673 = !DILocation(line: 692, column: 33, scope: !669)
!674 = !DILocation(line: 692, column: 40, scope: !669)
!675 = !DILocation(line: 692, column: 45, scope: !669)
!676 = !DILocation(line: 692, column: 52, scope: !669)
!677 = !DILocation(line: 692, column: 64, scope: !669)
!678 = !DILocation(line: 692, column: 9, scope: !669)
!679 = !DILocation(line: 691, column: 8, scope: !680)
!680 = !DILexicalBlockFile(scope: !623, file: !192, discriminator: 1)
!681 = !DILocation(line: 693, column: 7, scope: !682)
!682 = distinct !DILexicalBlock(scope: !669, file: !192, line: 692, column: 74)
!683 = !DILocation(line: 701, column: 8, scope: !684)
!684 = distinct !DILexicalBlock(scope: !623, file: !192, line: 701, column: 8)
!685 = !DILocation(line: 701, column: 15, scope: !684)
!686 = !DILocation(line: 701, column: 26, scope: !684)
!687 = !DILocation(line: 701, column: 8, scope: !623)
!688 = !DILocation(line: 703, column: 43, scope: !689)
!689 = distinct !DILexicalBlock(scope: !684, file: !192, line: 701, column: 34)
!690 = !DILocation(line: 704, column: 43, scope: !689)
!691 = !DILocation(line: 706, column: 43, scope: !689)
!692 = !DILocation(line: 706, column: 50, scope: !689)
!693 = !DILocation(line: 702, column: 27, scope: !689)
!694 = !DILocation(line: 702, column: 7, scope: !689)
!695 = !DILocation(line: 702, column: 14, scope: !689)
!696 = !DILocation(line: 702, column: 25, scope: !689)
!697 = !DILocation(line: 707, column: 4, scope: !689)
!698 = !DILocation(line: 709, column: 34, scope: !623)
!699 = !DILocation(line: 709, column: 41, scope: !623)
!700 = !DILocation(line: 709, column: 22, scope: !623)
!701 = !DILocation(line: 709, column: 20, scope: !623)
!702 = !DILocation(line: 710, column: 8, scope: !703)
!703 = distinct !DILexicalBlock(scope: !623, file: !192, line: 710, column: 8)
!704 = !DILocation(line: 710, column: 15, scope: !703)
!705 = !DILocation(line: 710, column: 27, scope: !703)
!706 = !DILocation(line: 710, column: 34, scope: !703)
!707 = !DILocation(line: 710, column: 38, scope: !708)
!708 = !DILexicalBlockFile(scope: !703, file: !192, discriminator: 1)
!709 = !DILocation(line: 710, column: 8, scope: !708)
!710 = !DILocation(line: 711, column: 87, scope: !711)
!711 = distinct !DILexicalBlock(scope: !703, file: !192, line: 710, column: 55)
!712 = !DILocation(line: 711, column: 94, scope: !711)
!713 = !DILocation(line: 711, column: 7, scope: !711)
!714 = !DILocation(line: 712, column: 7, scope: !711)
!715 = !DILocation(line: 715, column: 8, scope: !716)
!716 = distinct !DILexicalBlock(scope: !623, file: !192, line: 715, column: 8)
!717 = !DILocation(line: 715, column: 24, scope: !716)
!718 = !DILocation(line: 716, column: 33, scope: !716)
!719 = !DILocation(line: 716, column: 40, scope: !716)
!720 = !DILocation(line: 716, column: 45, scope: !716)
!721 = !DILocation(line: 716, column: 52, scope: !716)
!722 = !DILocation(line: 716, column: 64, scope: !716)
!723 = !DILocation(line: 716, column: 9, scope: !716)
!724 = !DILocation(line: 715, column: 8, scope: !680)
!725 = !DILocation(line: 717, column: 7, scope: !726)
!726 = distinct !DILexicalBlock(scope: !716, file: !192, line: 716, column: 74)
!727 = !DILocation(line: 725, column: 21, scope: !623)
!728 = !DILocation(line: 725, column: 4, scope: !623)
!729 = !DILocation(line: 725, column: 11, scope: !623)
!730 = !DILocation(line: 725, column: 19, scope: !623)
!731 = !DILocation(line: 727, column: 11, scope: !732)
!732 = distinct !DILexicalBlock(scope: !623, file: !192, line: 727, column: 4)
!733 = !DILocation(line: 727, column: 9, scope: !732)
!734 = !DILocation(line: 727, column: 16, scope: !735)
!735 = !DILexicalBlockFile(scope: !736, file: !192, discriminator: 1)
!736 = distinct !DILexicalBlock(scope: !732, file: !192, line: 727, column: 4)
!737 = !DILocation(line: 727, column: 20, scope: !735)
!738 = !DILocation(line: 727, column: 29, scope: !735)
!739 = !DILocation(line: 727, column: 18, scope: !735)
!740 = !DILocation(line: 727, column: 4, scope: !735)
!741 = !DILocalVariable(name: "plugin", scope: !742, file: !192, line: 728, type: !352)
!742 = distinct !DILexicalBlock(scope: !736, file: !192, line: 727, column: 39)
!743 = !DILocation(line: 728, column: 20, scope: !742)
!744 = !DILocation(line: 728, column: 48, scope: !742)
!745 = !DILocation(line: 728, column: 29, scope: !742)
!746 = !DILocation(line: 728, column: 31, scope: !742)
!747 = !DILocation(line: 728, column: 41, scope: !742)
!748 = !DILocation(line: 730, column: 22, scope: !742)
!749 = !DILocation(line: 730, column: 30, scope: !742)
!750 = !DILocation(line: 730, column: 38, scope: !742)
!751 = !DILocation(line: 730, column: 45, scope: !742)
!752 = !DILocation(line: 730, column: 7, scope: !742)
!753 = !DILocation(line: 730, column: 15, scope: !742)
!754 = !DILocation(line: 730, column: 20, scope: !742)
!755 = !DILocation(line: 732, column: 11, scope: !756)
!756 = distinct !DILexicalBlock(scope: !742, file: !192, line: 732, column: 11)
!757 = !DILocation(line: 732, column: 19, scope: !756)
!758 = !DILocation(line: 732, column: 24, scope: !756)
!759 = !DILocation(line: 732, column: 11, scope: !742)
!760 = !DILocation(line: 733, column: 107, scope: !761)
!761 = distinct !DILexicalBlock(scope: !756, file: !192, line: 732, column: 32)
!762 = !DILocation(line: 733, column: 115, scope: !761)
!763 = !DILocation(line: 733, column: 10, scope: !761)
!764 = !DILocation(line: 735, column: 30, scope: !761)
!765 = !DILocation(line: 735, column: 10, scope: !761)
!766 = !DILocation(line: 736, column: 7, scope: !761)
!767 = !DILocation(line: 736, column: 18, scope: !768)
!768 = !DILexicalBlockFile(scope: !769, file: !192, discriminator: 1)
!769 = distinct !DILexicalBlock(scope: !756, file: !192, line: 736, column: 18)
!770 = !DILocation(line: 736, column: 25, scope: !768)
!771 = !DILocation(line: 736, column: 29, scope: !768)
!772 = !DILocation(line: 736, column: 39, scope: !768)
!773 = !DILocation(line: 738, column: 30, scope: !774)
!774 = distinct !DILexicalBlock(scope: !769, file: !192, line: 736, column: 45)
!775 = !DILocation(line: 738, column: 10, scope: !774)
!776 = !DILocation(line: 739, column: 10, scope: !774)
!777 = !DILocation(line: 742, column: 33, scope: !778)
!778 = distinct !DILexicalBlock(scope: !769, file: !192, line: 740, column: 14)
!779 = !DILocation(line: 742, column: 41, scope: !778)
!780 = !DILocation(line: 742, column: 10, scope: !778)
!781 = !DILocation(line: 743, column: 26, scope: !778)
!782 = !DILocation(line: 743, column: 33, scope: !778)
!783 = !DILocation(line: 743, column: 42, scope: !778)
!784 = !DILocation(line: 743, column: 10, scope: !778)
!785 = !DILocation(line: 744, column: 33, scope: !778)
!786 = !DILocation(line: 744, column: 41, scope: !778)
!787 = !DILocation(line: 744, column: 47, scope: !778)
!788 = !DILocation(line: 744, column: 10, scope: !778)
!789 = !DILocation(line: 745, column: 80, scope: !778)
!790 = !DILocation(line: 745, column: 88, scope: !778)
!791 = !DILocation(line: 745, column: 94, scope: !778)
!792 = !DILocation(line: 745, column: 10, scope: !778)
!793 = !DILocation(line: 747, column: 4, scope: !742)
!794 = !DILocation(line: 727, column: 35, scope: !795)
!795 = !DILexicalBlockFile(scope: !736, file: !192, discriminator: 2)
!796 = !DILocation(line: 727, column: 4, scope: !795)
!797 = distinct !{!797, !798}
!798 = !DILocation(line: 727, column: 4, scope: !623)
!799 = !DILocation(line: 754, column: 8, scope: !800)
!800 = distinct !DILexicalBlock(scope: !623, file: !192, line: 754, column: 8)
!801 = !DILocation(line: 754, column: 15, scope: !800)
!802 = !DILocation(line: 754, column: 25, scope: !800)
!803 = !DILocation(line: 754, column: 32, scope: !800)
!804 = !DILocation(line: 754, column: 35, scope: !805)
!805 = !DILexicalBlockFile(scope: !800, file: !192, discriminator: 1)
!806 = !DILocation(line: 754, column: 42, scope: !805)
!807 = !DILocation(line: 754, column: 53, scope: !805)
!808 = !DILocation(line: 754, column: 66, scope: !805)
!809 = !DILocation(line: 754, column: 73, scope: !805)
!810 = !DILocation(line: 754, column: 8, scope: !805)
!811 = !DILocalVariable(name: "data", scope: !812, file: !192, line: 755, type: !298)
!812 = distinct !DILexicalBlock(scope: !800, file: !192, line: 754, column: 82)
!813 = !DILocation(line: 755, column: 24, scope: !812)
!814 = !DILocation(line: 755, column: 31, scope: !812)
!815 = !DILocation(line: 755, column: 38, scope: !812)
!816 = !DILocation(line: 755, column: 49, scope: !812)
!817 = !DILocation(line: 755, column: 62, scope: !812)
!818 = !DILocalVariable(name: "plugin", scope: !812, file: !192, line: 756, type: !352)
!819 = !DILocation(line: 756, column: 20, scope: !812)
!820 = !DILocation(line: 756, column: 29, scope: !812)
!821 = !DILocation(line: 757, column: 7, scope: !812)
!822 = !DILocation(line: 757, column: 15, scope: !812)
!823 = !DILocation(line: 757, column: 24, scope: !812)
!824 = !DILocation(line: 758, column: 7, scope: !812)
!825 = !DILocation(line: 758, column: 15, scope: !812)
!826 = !DILocation(line: 758, column: 22, scope: !812)
!827 = !DILocation(line: 759, column: 22, scope: !812)
!828 = !DILocation(line: 759, column: 7, scope: !812)
!829 = !DILocation(line: 759, column: 15, scope: !812)
!830 = !DILocation(line: 759, column: 20, scope: !812)
!831 = !DILocation(line: 760, column: 30, scope: !812)
!832 = !DILocation(line: 760, column: 36, scope: !812)
!833 = !DILocation(line: 760, column: 7, scope: !812)
!834 = !DILocation(line: 761, column: 23, scope: !812)
!835 = !DILocation(line: 761, column: 30, scope: !812)
!836 = !DILocation(line: 761, column: 39, scope: !812)
!837 = !DILocation(line: 761, column: 7, scope: !812)
!838 = !DILocation(line: 762, column: 4, scope: !812)
!839 = !DILocation(line: 764, column: 8, scope: !623)
!840 = !DILocation(line: 764, column: 4, scope: !623)
!841 = !DILocation(line: 767, column: 8, scope: !842)
!842 = distinct !DILexicalBlock(scope: !623, file: !192, line: 767, column: 8)
!843 = !DILocation(line: 767, column: 16, scope: !842)
!844 = !DILocation(line: 767, column: 8, scope: !623)
!845 = !DILocation(line: 768, column: 24, scope: !846)
!846 = distinct !DILexicalBlock(scope: !842, file: !192, line: 767, column: 24)
!847 = !DILocation(line: 768, column: 7, scope: !846)
!848 = !DILocation(line: 769, column: 4, scope: !846)
!849 = !DILocation(line: 770, column: 11, scope: !623)
!850 = !DILocation(line: 770, column: 4, scope: !623)
!851 = !DILocation(line: 771, column: 11, scope: !623)
!852 = !DILocation(line: 771, column: 4, scope: !623)
!853 = distinct !DISubprogram(name: "ToolsCoreLoadDirectory", scope: !192, file: !192, line: 501, type: !854, isLocal: true, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!854 = !DISubroutineType(types: !855)
!855 = !{!86, !78, !63, !213}
!856 = !DILocalVariable(name: "ctx", arg: 1, scope: !853, file: !192, line: 501, type: !78)
!857 = !DILocation(line: 501, column: 37, scope: !853)
!858 = !DILocalVariable(name: "pluginPath", arg: 2, scope: !853, file: !192, line: 502, type: !63)
!859 = !DILocation(line: 502, column: 37, scope: !853)
!860 = !DILocalVariable(name: "regs", arg: 3, scope: !853, file: !192, line: 503, type: !213)
!861 = !DILocation(line: 503, column: 35, scope: !853)
!862 = !DILocalVariable(name: "ret", scope: !853, file: !192, line: 505, type: !86)
!863 = !DILocation(line: 505, column: 13, scope: !853)
!864 = !DILocalVariable(name: "staticEntry", scope: !853, file: !192, line: 506, type: !63)
!865 = !DILocation(line: 506, column: 17, scope: !853)
!866 = !DILocalVariable(name: "i", scope: !853, file: !192, line: 507, type: !145)
!867 = !DILocation(line: 507, column: 10, scope: !853)
!868 = !DILocalVariable(name: "dir", scope: !853, file: !192, line: 508, type: !869)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64, align: 64)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "GDir", file: !871, line: 37, baseType: !872)
!871 = !DIFile(filename: "/usr/include/glib-2.0/glib/gdir.h", directory: "/home/lichi/Desktop/open-vm-tools/line1387")
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GDir", file: !871, line: 37, flags: DIFlagFwdDecl)
!873 = !DILocation(line: 508, column: 10, scope: !853)
!874 = !DILocalVariable(name: "err", scope: !853, file: !192, line: 509, type: !115)
!875 = !DILocation(line: 509, column: 12, scope: !853)
!876 = !DILocalVariable(name: "plugins", scope: !853, file: !192, line: 510, type: !213)
!877 = !DILocation(line: 510, column: 15, scope: !853)
!878 = !DILocation(line: 512, column: 21, scope: !853)
!879 = !DILocation(line: 512, column: 10, scope: !853)
!880 = !DILocation(line: 512, column: 8, scope: !853)
!881 = !DILocation(line: 513, column: 8, scope: !882)
!882 = distinct !DILexicalBlock(scope: !853, file: !192, line: 513, column: 8)
!883 = !DILocation(line: 513, column: 12, scope: !882)
!884 = !DILocation(line: 513, column: 8, scope: !853)
!885 = !DILocation(line: 514, column: 74, scope: !886)
!886 = distinct !DILexicalBlock(scope: !882, file: !192, line: 513, column: 20)
!887 = !DILocation(line: 514, column: 79, scope: !886)
!888 = !DILocation(line: 514, column: 7, scope: !886)
!889 = !DILocation(line: 515, column: 7, scope: !886)
!890 = !DILocation(line: 518, column: 14, scope: !853)
!891 = !DILocation(line: 518, column: 12, scope: !853)
!892 = !DILocation(line: 524, column: 4, scope: !853)
!893 = !DILocation(line: 524, column: 42, scope: !894)
!894 = !DILexicalBlockFile(scope: !853, file: !192, discriminator: 1)
!895 = !DILocation(line: 524, column: 26, scope: !894)
!896 = !DILocation(line: 524, column: 24, scope: !894)
!897 = !DILocation(line: 524, column: 48, scope: !894)
!898 = !DILocation(line: 524, column: 4, scope: !894)
!899 = !DILocation(line: 525, column: 28, scope: !900)
!900 = distinct !DILexicalBlock(scope: !901, file: !192, line: 525, column: 11)
!901 = distinct !DILexicalBlock(scope: !853, file: !192, line: 524, column: 56)
!902 = !DILocation(line: 525, column: 11, scope: !900)
!903 = !DILocation(line: 525, column: 11, scope: !901)
!904 = !DILocation(line: 526, column: 26, scope: !905)
!905 = distinct !DILexicalBlock(scope: !900, file: !192, line: 525, column: 52)
!906 = !DILocation(line: 526, column: 44, scope: !905)
!907 = !DILocation(line: 526, column: 35, scope: !905)
!908 = !DILocation(line: 526, column: 10, scope: !909)
!909 = !DILexicalBlockFile(scope: !905, file: !192, discriminator: 1)
!910 = !DILocation(line: 527, column: 7, scope: !905)
!911 = !DILocation(line: 524, column: 4, scope: !912)
!912 = !DILexicalBlockFile(scope: !853, file: !192, discriminator: 2)
!913 = distinct !{!913, !892}
!914 = !DILocation(line: 530, column: 16, scope: !853)
!915 = !DILocation(line: 530, column: 4, scope: !853)
!916 = !DILocation(line: 532, column: 21, scope: !853)
!917 = !DILocation(line: 532, column: 4, scope: !853)
!918 = !DILocation(line: 534, column: 11, scope: !919)
!919 = distinct !DILexicalBlock(scope: !853, file: !192, line: 534, column: 4)
!920 = !DILocation(line: 534, column: 9, scope: !919)
!921 = !DILocation(line: 534, column: 16, scope: !922)
!922 = !DILexicalBlockFile(scope: !923, file: !192, discriminator: 1)
!923 = distinct !DILexicalBlock(scope: !919, file: !192, line: 534, column: 4)
!924 = !DILocation(line: 534, column: 20, scope: !922)
!925 = !DILocation(line: 534, column: 29, scope: !922)
!926 = !DILocation(line: 534, column: 18, scope: !922)
!927 = !DILocation(line: 534, column: 4, scope: !922)
!928 = !DILocalVariable(name: "entry", scope: !929, file: !192, line: 535, type: !128)
!929 = distinct !DILexicalBlock(scope: !923, file: !192, line: 534, column: 39)
!930 = !DILocation(line: 535, column: 14, scope: !929)
!931 = !DILocalVariable(name: "path", scope: !929, file: !192, line: 536, type: !128)
!932 = !DILocation(line: 536, column: 14, scope: !929)
!933 = !DILocalVariable(name: "module", scope: !929, file: !192, line: 537, type: !221)
!934 = !DILocation(line: 537, column: 16, scope: !929)
!935 = !DILocalVariable(name: "plugin", scope: !929, file: !192, line: 538, type: !352)
!936 = !DILocation(line: 538, column: 20, scope: !929)
!937 = !DILocalVariable(name: "onload", scope: !929, file: !192, line: 539, type: !359)
!938 = !DILocation(line: 539, column: 25, scope: !929)
!939 = !DILocation(line: 541, column: 34, scope: !929)
!940 = !DILocation(line: 541, column: 15, scope: !929)
!941 = !DILocation(line: 541, column: 17, scope: !929)
!942 = !DILocation(line: 541, column: 27, scope: !929)
!943 = !DILocation(line: 541, column: 13, scope: !929)
!944 = !DILocation(line: 542, column: 40, scope: !929)
!945 = !DILocation(line: 542, column: 57, scope: !929)
!946 = !DILocation(line: 542, column: 14, scope: !929)
!947 = !DILocation(line: 542, column: 12, scope: !929)
!948 = !DILocation(line: 544, column: 24, scope: !949)
!949 = distinct !DILexicalBlock(scope: !929, file: !192, line: 544, column: 11)
!950 = !DILocation(line: 544, column: 12, scope: !949)
!951 = !DILocation(line: 544, column: 11, scope: !929)
!952 = !DILocation(line: 545, column: 98, scope: !953)
!953 = distinct !DILexicalBlock(scope: !949, file: !192, line: 544, column: 55)
!954 = !DILocation(line: 545, column: 10, scope: !953)
!955 = !DILocation(line: 546, column: 10, scope: !953)
!956 = !DILocation(line: 557, column: 30, scope: !929)
!957 = !DILocation(line: 557, column: 16, scope: !929)
!958 = !DILocation(line: 557, column: 14, scope: !929)
!959 = !DILocation(line: 571, column: 11, scope: !960)
!960 = distinct !DILexicalBlock(scope: !929, file: !192, line: 571, column: 11)
!961 = !DILocation(line: 571, column: 18, scope: !960)
!962 = !DILocation(line: 571, column: 11, scope: !929)
!963 = !DILocation(line: 572, column: 87, scope: !964)
!964 = distinct !DILexicalBlock(scope: !960, file: !192, line: 571, column: 26)
!965 = !DILocation(line: 572, column: 94, scope: !964)
!966 = !DILocation(line: 572, column: 10, scope: !967)
!967 = !DILexicalBlockFile(scope: !964, file: !192, discriminator: 1)
!968 = !DILocation(line: 573, column: 10, scope: !964)
!969 = !DILocation(line: 576, column: 28, scope: !970)
!970 = distinct !DILexicalBlock(scope: !929, file: !192, line: 576, column: 11)
!971 = !DILocation(line: 576, column: 51, scope: !970)
!972 = !DILocation(line: 576, column: 12, scope: !970)
!973 = !DILocation(line: 576, column: 11, scope: !929)
!974 = !DILocation(line: 577, column: 101, scope: !975)
!975 = distinct !DILexicalBlock(scope: !970, file: !192, line: 576, column: 74)
!976 = !DILocation(line: 577, column: 10, scope: !975)
!977 = !DILocation(line: 578, column: 10, scope: !975)
!978 = !DILocation(line: 581, column: 16, scope: !929)
!979 = !DILocation(line: 581, column: 14, scope: !929)
!980 = !DILocation(line: 582, column: 26, scope: !929)
!981 = !DILocation(line: 582, column: 7, scope: !929)
!982 = !DILocation(line: 582, column: 15, scope: !929)
!983 = !DILocation(line: 582, column: 24, scope: !929)
!984 = !DILocation(line: 583, column: 7, scope: !929)
!985 = !DILocation(line: 583, column: 15, scope: !929)
!986 = !DILocation(line: 583, column: 20, scope: !929)
!987 = !DILocation(line: 584, column: 24, scope: !929)
!988 = !DILocation(line: 584, column: 7, scope: !929)
!989 = !DILocation(line: 584, column: 15, scope: !929)
!990 = !DILocation(line: 584, column: 22, scope: !929)
!991 = !DILocation(line: 585, column: 24, scope: !929)
!992 = !DILocation(line: 585, column: 7, scope: !929)
!993 = !DILocation(line: 585, column: 15, scope: !929)
!994 = !DILocation(line: 585, column: 22, scope: !929)
!995 = !DILocation(line: 586, column: 23, scope: !929)
!996 = !DILocation(line: 586, column: 29, scope: !929)
!997 = !DILocation(line: 586, column: 7, scope: !929)
!998 = !DILocation(line: 589, column: 14, scope: !929)
!999 = !DILocation(line: 589, column: 7, scope: !929)
!1000 = !DILocation(line: 590, column: 11, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !929, file: !192, line: 590, column: 11)
!1002 = !DILocation(line: 590, column: 18, scope: !1001)
!1003 = !DILocation(line: 590, column: 25, scope: !1001)
!1004 = !DILocation(line: 590, column: 28, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !1001, file: !192, discriminator: 1)
!1006 = !DILocation(line: 590, column: 35, scope: !1005)
!1007 = !DILocation(line: 590, column: 11, scope: !1005)
!1008 = !DILocation(line: 591, column: 30, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !192, line: 591, column: 14)
!1010 = distinct !DILexicalBlock(scope: !1001, file: !192, line: 590, column: 44)
!1011 = !DILocation(line: 591, column: 15, scope: !1009)
!1012 = !DILocation(line: 591, column: 14, scope: !1010)
!1013 = !DILocation(line: 592, column: 90, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1009, file: !192, line: 591, column: 39)
!1015 = !DILocation(line: 592, column: 97, scope: !1014)
!1016 = !DILocation(line: 592, column: 13, scope: !1017)
!1017 = !DILexicalBlockFile(scope: !1014, file: !192, discriminator: 1)
!1018 = !DILocation(line: 593, column: 10, scope: !1014)
!1019 = !DILocation(line: 594, column: 7, scope: !1010)
!1020 = !DILocation(line: 595, column: 4, scope: !929)
!1021 = !DILocation(line: 534, column: 35, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !923, file: !192, discriminator: 2)
!1023 = !DILocation(line: 534, column: 4, scope: !1022)
!1024 = distinct !{!1024, !1025}
!1025 = !DILocation(line: 534, column: 4, scope: !853)
!1026 = !DILocation(line: 597, column: 21, scope: !853)
!1027 = !DILocation(line: 597, column: 4, scope: !853)
!1028 = !DILocation(line: 598, column: 8, scope: !853)
!1029 = !DILocation(line: 598, column: 4, scope: !853)
!1030 = !DILocation(line: 601, column: 11, scope: !853)
!1031 = !DILocation(line: 601, column: 4, scope: !853)
!1032 = distinct !DISubprogram(name: "ToolsCoreFreePlugin", scope: !192, file: !192, line: 183, type: !1033, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{null, !352}
!1035 = !DILocalVariable(name: "plugin", arg: 1, scope: !1032, file: !192, line: 183, type: !352)
!1036 = !DILocation(line: 183, column: 34, scope: !1032)
!1037 = !DILocation(line: 185, column: 8, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1032, file: !192, line: 185, column: 8)
!1039 = !DILocation(line: 185, column: 16, scope: !1038)
!1040 = !DILocation(line: 185, column: 23, scope: !1038)
!1041 = !DILocation(line: 185, column: 30, scope: !1038)
!1042 = !DILocation(line: 185, column: 49, scope: !1043)
!1043 = !DILexicalBlockFile(scope: !1038, file: !192, discriminator: 1)
!1044 = !DILocation(line: 185, column: 57, scope: !1043)
!1045 = !DILocation(line: 185, column: 34, scope: !1043)
!1046 = !DILocation(line: 185, column: 8, scope: !1043)
!1047 = !DILocation(line: 186, column: 84, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1038, file: !192, line: 185, column: 66)
!1049 = !DILocation(line: 186, column: 92, scope: !1048)
!1050 = !DILocation(line: 186, column: 102, scope: !1048)
!1051 = !DILocation(line: 186, column: 7, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !1048, file: !192, discriminator: 1)
!1053 = !DILocation(line: 189, column: 4, scope: !1048)
!1054 = !DILocation(line: 190, column: 11, scope: !1032)
!1055 = !DILocation(line: 190, column: 19, scope: !1032)
!1056 = !DILocation(line: 190, column: 4, scope: !1032)
!1057 = !DILocation(line: 191, column: 11, scope: !1032)
!1058 = !DILocation(line: 191, column: 4, scope: !1032)
!1059 = !DILocation(line: 192, column: 1, scope: !1032)
!1060 = distinct !DISubprogram(name: "ToolsCore_RegisterPlugins", scope: !192, file: !192, line: 782, type: !193, isLocal: false, isDefinition: true, scopeLine: 783, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!1061 = !DILocalVariable(name: "state", arg: 1, scope: !1060, file: !192, line: 782, type: !195)
!1062 = !DILocation(line: 782, column: 46, scope: !1060)
!1063 = !DILocalVariable(name: "fakeProv", scope: !1060, file: !192, line: 784, type: !58)
!1064 = !DILocation(line: 784, column: 22, scope: !1060)
!1065 = !DILocalVariable(name: "fakeReg", scope: !1060, file: !192, line: 785, type: !54)
!1066 = !DILocation(line: 785, column: 24, scope: !1060)
!1067 = !DILocation(line: 787, column: 8, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1060, file: !192, line: 787, column: 8)
!1069 = !DILocation(line: 787, column: 15, scope: !1068)
!1070 = !DILocation(line: 787, column: 23, scope: !1068)
!1071 = !DILocation(line: 787, column: 8, scope: !1060)
!1072 = !DILocation(line: 788, column: 7, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1068, file: !192, line: 787, column: 31)
!1074 = !DILocation(line: 795, column: 23, scope: !1060)
!1075 = !DILocation(line: 795, column: 4, scope: !1060)
!1076 = !DILocation(line: 795, column: 11, scope: !1060)
!1077 = !DILocation(line: 795, column: 21, scope: !1060)
!1078 = !DILocation(line: 797, column: 8, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1060, file: !192, line: 797, column: 8)
!1080 = !DILocation(line: 797, column: 15, scope: !1079)
!1081 = !DILocation(line: 797, column: 19, scope: !1079)
!1082 = !DILocation(line: 797, column: 23, scope: !1079)
!1083 = !DILocation(line: 797, column: 8, scope: !1060)
!1084 = !DILocation(line: 798, column: 18, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1079, file: !192, line: 797, column: 31)
!1086 = !DILocation(line: 798, column: 16, scope: !1085)
!1087 = !DILocation(line: 799, column: 7, scope: !1085)
!1088 = !DILocation(line: 799, column: 17, scope: !1085)
!1089 = !DILocation(line: 799, column: 25, scope: !1085)
!1090 = !DILocation(line: 800, column: 7, scope: !1085)
!1091 = !DILocation(line: 800, column: 17, scope: !1085)
!1092 = !DILocation(line: 800, column: 25, scope: !1085)
!1093 = !DILocation(line: 801, column: 7, scope: !1085)
!1094 = !DILocation(line: 801, column: 17, scope: !1085)
!1095 = !DILocation(line: 801, column: 22, scope: !1085)
!1096 = !DILocation(line: 802, column: 7, scope: !1085)
!1097 = !DILocation(line: 802, column: 17, scope: !1085)
!1098 = !DILocation(line: 802, column: 29, scope: !1085)
!1099 = !DILocation(line: 803, column: 7, scope: !1085)
!1100 = !DILocation(line: 803, column: 17, scope: !1085)
!1101 = !DILocation(line: 803, column: 27, scope: !1085)
!1102 = !DILocation(line: 805, column: 22, scope: !1085)
!1103 = !DILocation(line: 805, column: 15, scope: !1085)
!1104 = !DILocation(line: 805, column: 20, scope: !1085)
!1105 = !DILocation(line: 806, column: 15, scope: !1085)
!1106 = !DILocation(line: 806, column: 21, scope: !1085)
!1107 = !DILocation(line: 807, column: 28, scope: !1085)
!1108 = !DILocation(line: 807, column: 35, scope: !1085)
!1109 = !DILocation(line: 807, column: 46, scope: !1085)
!1110 = !DILocation(line: 807, column: 7, scope: !1085)
!1111 = !DILocation(line: 808, column: 4, scope: !1085)
!1112 = !DILocation(line: 810, column: 15, scope: !1060)
!1113 = !DILocation(line: 810, column: 13, scope: !1060)
!1114 = !DILocation(line: 811, column: 4, scope: !1060)
!1115 = !DILocation(line: 811, column: 14, scope: !1060)
!1116 = !DILocation(line: 811, column: 22, scope: !1060)
!1117 = !DILocation(line: 812, column: 4, scope: !1060)
!1118 = !DILocation(line: 812, column: 14, scope: !1060)
!1119 = !DILocation(line: 812, column: 22, scope: !1060)
!1120 = !DILocation(line: 813, column: 4, scope: !1060)
!1121 = !DILocation(line: 813, column: 14, scope: !1060)
!1122 = !DILocation(line: 813, column: 19, scope: !1060)
!1123 = !DILocation(line: 814, column: 4, scope: !1060)
!1124 = !DILocation(line: 814, column: 14, scope: !1060)
!1125 = !DILocation(line: 814, column: 26, scope: !1060)
!1126 = !DILocation(line: 815, column: 4, scope: !1060)
!1127 = !DILocation(line: 815, column: 14, scope: !1060)
!1128 = !DILocation(line: 815, column: 24, scope: !1060)
!1129 = !DILocation(line: 817, column: 19, scope: !1060)
!1130 = !DILocation(line: 817, column: 12, scope: !1060)
!1131 = !DILocation(line: 817, column: 17, scope: !1060)
!1132 = !DILocation(line: 818, column: 12, scope: !1060)
!1133 = !DILocation(line: 818, column: 18, scope: !1060)
!1134 = !DILocation(line: 819, column: 25, scope: !1060)
!1135 = !DILocation(line: 819, column: 32, scope: !1060)
!1136 = !DILocation(line: 819, column: 43, scope: !1060)
!1137 = !DILocation(line: 819, column: 4, scope: !1060)
!1138 = !DILocation(line: 821, column: 15, scope: !1060)
!1139 = !DILocation(line: 821, column: 13, scope: !1060)
!1140 = !DILocation(line: 822, column: 4, scope: !1060)
!1141 = !DILocation(line: 822, column: 14, scope: !1060)
!1142 = !DILocation(line: 822, column: 22, scope: !1060)
!1143 = !DILocation(line: 823, column: 4, scope: !1060)
!1144 = !DILocation(line: 823, column: 14, scope: !1060)
!1145 = !DILocation(line: 823, column: 22, scope: !1060)
!1146 = !DILocation(line: 824, column: 4, scope: !1060)
!1147 = !DILocation(line: 824, column: 14, scope: !1060)
!1148 = !DILocation(line: 824, column: 19, scope: !1060)
!1149 = !DILocation(line: 825, column: 4, scope: !1060)
!1150 = !DILocation(line: 825, column: 14, scope: !1060)
!1151 = !DILocation(line: 825, column: 26, scope: !1060)
!1152 = !DILocation(line: 826, column: 4, scope: !1060)
!1153 = !DILocation(line: 826, column: 14, scope: !1060)
!1154 = !DILocation(line: 826, column: 24, scope: !1060)
!1155 = !DILocation(line: 828, column: 19, scope: !1060)
!1156 = !DILocation(line: 828, column: 12, scope: !1060)
!1157 = !DILocation(line: 828, column: 17, scope: !1060)
!1158 = !DILocation(line: 829, column: 12, scope: !1060)
!1159 = !DILocation(line: 829, column: 18, scope: !1060)
!1160 = !DILocation(line: 830, column: 25, scope: !1060)
!1161 = !DILocation(line: 830, column: 32, scope: !1060)
!1162 = !DILocation(line: 830, column: 43, scope: !1060)
!1163 = !DILocation(line: 830, column: 4, scope: !1060)
!1164 = !DILocation(line: 832, column: 15, scope: !1060)
!1165 = !DILocation(line: 832, column: 13, scope: !1060)
!1166 = !DILocation(line: 833, column: 4, scope: !1060)
!1167 = !DILocation(line: 833, column: 14, scope: !1060)
!1168 = !DILocation(line: 833, column: 22, scope: !1060)
!1169 = !DILocation(line: 834, column: 4, scope: !1060)
!1170 = !DILocation(line: 834, column: 14, scope: !1060)
!1171 = !DILocation(line: 834, column: 22, scope: !1060)
!1172 = !DILocation(line: 835, column: 4, scope: !1060)
!1173 = !DILocation(line: 835, column: 14, scope: !1060)
!1174 = !DILocation(line: 835, column: 19, scope: !1060)
!1175 = !DILocation(line: 836, column: 4, scope: !1060)
!1176 = !DILocation(line: 836, column: 14, scope: !1060)
!1177 = !DILocation(line: 836, column: 26, scope: !1060)
!1178 = !DILocation(line: 837, column: 4, scope: !1060)
!1179 = !DILocation(line: 837, column: 14, scope: !1060)
!1180 = !DILocation(line: 837, column: 24, scope: !1060)
!1181 = !DILocation(line: 839, column: 19, scope: !1060)
!1182 = !DILocation(line: 839, column: 12, scope: !1060)
!1183 = !DILocation(line: 839, column: 17, scope: !1060)
!1184 = !DILocation(line: 840, column: 12, scope: !1060)
!1185 = !DILocation(line: 840, column: 18, scope: !1060)
!1186 = !DILocation(line: 841, column: 25, scope: !1060)
!1187 = !DILocation(line: 841, column: 32, scope: !1060)
!1188 = !DILocation(line: 841, column: 43, scope: !1060)
!1189 = !DILocation(line: 841, column: 4, scope: !1060)
!1190 = !DILocation(line: 848, column: 27, scope: !1060)
!1191 = !DILocation(line: 848, column: 4, scope: !1060)
!1192 = !DILocation(line: 854, column: 27, scope: !1060)
!1193 = !DILocation(line: 854, column: 4, scope: !1060)
!1194 = !DILocation(line: 855, column: 1, scope: !1060)
!1195 = !DILocation(line: 855, column: 1, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !1060, file: !192, discriminator: 1)
!1197 = distinct !DISubprogram(name: "ToolsCoreRegisterRPC", scope: !192, file: !192, line: 421, type: !1198, isLocal: true, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!86, !78, !58, !298, !112}
!1200 = !DILocalVariable(name: "ctx", arg: 1, scope: !1197, file: !192, line: 421, type: !78)
!1201 = !DILocation(line: 421, column: 35, scope: !1197)
!1202 = !DILocalVariable(name: "prov", arg: 2, scope: !1197, file: !192, line: 422, type: !58)
!1203 = !DILocation(line: 422, column: 40, scope: !1197)
!1204 = !DILocalVariable(name: "plugin", arg: 3, scope: !1197, file: !192, line: 423, type: !298)
!1205 = !DILocation(line: 423, column: 39, scope: !1197)
!1206 = !DILocalVariable(name: "reg", arg: 4, scope: !1197, file: !192, line: 424, type: !112)
!1207 = !DILocation(line: 424, column: 31, scope: !1197)
!1208 = !DILocation(line: 426, column: 32, scope: !1197)
!1209 = !DILocation(line: 426, column: 37, scope: !1197)
!1210 = !DILocation(line: 426, column: 42, scope: !1197)
!1211 = !DILocation(line: 426, column: 4, scope: !1197)
!1212 = !DILocation(line: 427, column: 4, scope: !1197)
!1213 = distinct !DISubprogram(name: "ToolsCoreDumpRPC", scope: !192, file: !192, line: 144, type: !1214, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !78, !58, !112}
!1216 = !DILocalVariable(name: "ctx", arg: 1, scope: !1213, file: !192, line: 144, type: !78)
!1217 = !DILocation(line: 144, column: 31, scope: !1213)
!1218 = !DILocalVariable(name: "prov", arg: 2, scope: !1213, file: !192, line: 145, type: !58)
!1219 = !DILocation(line: 145, column: 36, scope: !1213)
!1220 = !DILocalVariable(name: "reg", arg: 3, scope: !1213, file: !192, line: 146, type: !112)
!1221 = !DILocation(line: 146, column: 27, scope: !1213)
!1222 = !DILocation(line: 148, column: 8, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1213, file: !192, line: 148, column: 8)
!1224 = !DILocation(line: 148, column: 12, scope: !1223)
!1225 = !DILocation(line: 148, column: 8, scope: !1213)
!1226 = !DILocalVariable(name: "cb", scope: !1227, file: !192, line: 149, type: !1228)
!1227 = distinct !DILexicalBlock(scope: !1223, file: !192, line: 148, column: 20)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64, align: 64)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannelCallback", file: !98, line: 115, baseType: !1230)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcChannelCallback", file: !98, line: 94, size: 384, align: 64, elements: !1231)
!1231 = !{!1232, !1233, !1238, !1239, !1240, !1241}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1230, file: !98, line: 96, baseType: !109, size: 64, align: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1230, file: !98, line: 98, baseType: !1234, size: 64, align: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcIn_Callback", file: !98, line: 90, baseType: !1235)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64, align: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!86, !278}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !1230, file: !98, line: 100, baseType: !112, size: 64, align: 64, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "xdrIn", scope: !1230, file: !98, line: 102, baseType: !112, size: 64, align: 64, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "xdrOut", scope: !1230, file: !98, line: 109, baseType: !112, size: 64, align: 64, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "xdrInSize", scope: !1230, file: !98, line: 114, baseType: !71, size: 64, align: 64, offset: 320)
!1242 = !DILocation(line: 149, column: 27, scope: !1227)
!1243 = !DILocation(line: 149, column: 32, scope: !1227)
!1244 = !DILocation(line: 150, column: 51, scope: !1227)
!1245 = !DILocation(line: 150, column: 55, scope: !1227)
!1246 = !DILocation(line: 150, column: 7, scope: !1227)
!1247 = !DILocation(line: 151, column: 4, scope: !1227)
!1248 = !DILocation(line: 152, column: 1, scope: !1213)
!1249 = distinct !DISubprogram(name: "ToolsCoreRegisterSignal", scope: !192, file: !192, line: 443, type: !1198, isLocal: true, isDefinition: true, scopeLine: 447, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!1250 = !DILocalVariable(name: "ctx", arg: 1, scope: !1249, file: !192, line: 443, type: !78)
!1251 = !DILocation(line: 443, column: 38, scope: !1249)
!1252 = !DILocalVariable(name: "prov", arg: 2, scope: !1249, file: !192, line: 444, type: !58)
!1253 = !DILocation(line: 444, column: 43, scope: !1249)
!1254 = !DILocalVariable(name: "plugin", arg: 3, scope: !1249, file: !192, line: 445, type: !298)
!1255 = !DILocation(line: 445, column: 42, scope: !1249)
!1256 = !DILocalVariable(name: "reg", arg: 4, scope: !1249, file: !192, line: 446, type: !112)
!1257 = !DILocation(line: 446, column: 34, scope: !1249)
!1258 = !DILocalVariable(name: "valid", scope: !1249, file: !192, line: 448, type: !86)
!1259 = !DILocation(line: 448, column: 13, scope: !1249)
!1260 = !DILocalVariable(name: "sigId", scope: !1249, file: !192, line: 449, type: !145)
!1261 = !DILocation(line: 449, column: 10, scope: !1249)
!1262 = !DILocalVariable(name: "sigDetail", scope: !1249, file: !192, line: 450, type: !121)
!1263 = !DILocation(line: 450, column: 11, scope: !1249)
!1264 = !DILocalVariable(name: "sig", scope: !1249, file: !192, line: 451, type: !1265)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64, align: 64)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsPluginSignalCb", file: !4, line: 484, baseType: !1267)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsPluginSignalCb", file: !4, line: 480, size: 192, align: 64, elements: !1268)
!1268 = !{!1269, !1270, !1271}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "signame", scope: !1267, file: !4, line: 481, baseType: !63, size: 64, align: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1267, file: !4, line: 482, baseType: !112, size: 64, align: 64, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !1267, file: !4, line: 483, baseType: !112, size: 64, align: 64, offset: 128)
!1272 = !DILocation(line: 451, column: 25, scope: !1249)
!1273 = !DILocation(line: 451, column: 31, scope: !1249)
!1274 = !DILocation(line: 453, column: 32, scope: !1249)
!1275 = !DILocation(line: 453, column: 37, scope: !1249)
!1276 = !DILocation(line: 454, column: 70, scope: !1249)
!1277 = !DILocation(line: 454, column: 75, scope: !1249)
!1278 = !DILocation(line: 454, column: 52, scope: !1249)
!1279 = !DILocation(line: 454, column: 89, scope: !1249)
!1280 = !DILocation(line: 454, column: 100, scope: !1249)
!1281 = !DILocation(line: 453, column: 12, scope: !1249)
!1282 = !DILocation(line: 453, column: 10, scope: !1249)
!1283 = !DILocation(line: 458, column: 8, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1249, file: !192, line: 458, column: 8)
!1285 = !DILocation(line: 458, column: 8, scope: !1249)
!1286 = !DILocation(line: 459, column: 31, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1284, file: !192, line: 458, column: 15)
!1288 = !DILocation(line: 459, column: 36, scope: !1287)
!1289 = !DILocation(line: 459, column: 50, scope: !1287)
!1290 = !DILocation(line: 459, column: 55, scope: !1287)
!1291 = !DILocation(line: 459, column: 66, scope: !1287)
!1292 = !DILocation(line: 459, column: 71, scope: !1287)
!1293 = !DILocation(line: 459, column: 65, scope: !1287)
!1294 = !DILocation(line: 459, column: 83, scope: !1287)
!1295 = !DILocation(line: 459, column: 88, scope: !1287)
!1296 = !DILocation(line: 459, column: 7, scope: !1287)
!1297 = !DILocation(line: 463, column: 7, scope: !1287)
!1298 = !DILocation(line: 466, column: 93, scope: !1249)
!1299 = !DILocation(line: 466, column: 101, scope: !1249)
!1300 = !DILocation(line: 466, column: 107, scope: !1249)
!1301 = !DILocation(line: 466, column: 112, scope: !1249)
!1302 = !DILocation(line: 466, column: 4, scope: !1249)
!1303 = !DILocation(line: 468, column: 4, scope: !1249)
!1304 = !DILocation(line: 469, column: 1, scope: !1249)
!1305 = distinct !DISubprogram(name: "ToolsCoreDumpSignal", scope: !192, file: !192, line: 164, type: !1214, isLocal: true, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!1306 = !DILocalVariable(name: "ctx", arg: 1, scope: !1305, file: !192, line: 164, type: !78)
!1307 = !DILocation(line: 164, column: 34, scope: !1305)
!1308 = !DILocalVariable(name: "prov", arg: 2, scope: !1305, file: !192, line: 165, type: !58)
!1309 = !DILocation(line: 165, column: 39, scope: !1305)
!1310 = !DILocalVariable(name: "reg", arg: 3, scope: !1305, file: !192, line: 166, type: !112)
!1311 = !DILocation(line: 166, column: 30, scope: !1305)
!1312 = !DILocation(line: 168, column: 8, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1305, file: !192, line: 168, column: 8)
!1314 = !DILocation(line: 168, column: 12, scope: !1313)
!1315 = !DILocation(line: 168, column: 8, scope: !1305)
!1316 = !DILocalVariable(name: "sig", scope: !1317, file: !192, line: 169, type: !1265)
!1317 = distinct !DILexicalBlock(scope: !1313, file: !192, line: 168, column: 20)
!1318 = !DILocation(line: 169, column: 28, scope: !1317)
!1319 = !DILocation(line: 169, column: 34, scope: !1317)
!1320 = !DILocation(line: 170, column: 54, scope: !1317)
!1321 = !DILocation(line: 170, column: 59, scope: !1317)
!1322 = !DILocation(line: 170, column: 7, scope: !1317)
!1323 = !DILocation(line: 171, column: 4, scope: !1317)
!1324 = !DILocation(line: 172, column: 1, scope: !1305)
!1325 = distinct !DISubprogram(name: "ToolsCoreRegisterProperty", scope: !192, file: !192, line: 399, type: !1198, isLocal: true, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!1326 = !DILocalVariable(name: "ctx", arg: 1, scope: !1325, file: !192, line: 399, type: !78)
!1327 = !DILocation(line: 399, column: 40, scope: !1325)
!1328 = !DILocalVariable(name: "prov", arg: 2, scope: !1325, file: !192, line: 400, type: !58)
!1329 = !DILocation(line: 400, column: 45, scope: !1325)
!1330 = !DILocalVariable(name: "plugin", arg: 3, scope: !1325, file: !192, line: 401, type: !298)
!1331 = !DILocation(line: 401, column: 44, scope: !1325)
!1332 = !DILocalVariable(name: "reg", arg: 4, scope: !1325, file: !192, line: 402, type: !112)
!1333 = !DILocation(line: 402, column: 36, scope: !1325)
!1334 = !DILocation(line: 404, column: 38, scope: !1325)
!1335 = !DILocation(line: 404, column: 43, scope: !1325)
!1336 = !DILocation(line: 404, column: 55, scope: !1325)
!1337 = !DILocation(line: 404, column: 4, scope: !1325)
!1338 = !DILocation(line: 405, column: 4, scope: !1325)
!1339 = distinct !DISubprogram(name: "ToolsCoreDumpProperty", scope: !192, file: !192, line: 124, type: !1214, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!1340 = !DILocalVariable(name: "ctx", arg: 1, scope: !1339, file: !192, line: 124, type: !78)
!1341 = !DILocation(line: 124, column: 36, scope: !1339)
!1342 = !DILocalVariable(name: "prov", arg: 2, scope: !1339, file: !192, line: 125, type: !58)
!1343 = !DILocation(line: 125, column: 41, scope: !1339)
!1344 = !DILocalVariable(name: "reg", arg: 3, scope: !1339, file: !192, line: 126, type: !112)
!1345 = !DILocation(line: 126, column: 32, scope: !1339)
!1346 = !DILocation(line: 128, column: 8, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1339, file: !192, line: 128, column: 8)
!1348 = !DILocation(line: 128, column: 12, scope: !1347)
!1349 = !DILocation(line: 128, column: 8, scope: !1339)
!1350 = !DILocation(line: 130, column: 51, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1347, file: !192, line: 128, column: 20)
!1352 = !DILocation(line: 130, column: 27, scope: !1351)
!1353 = !DILocation(line: 130, column: 57, scope: !1351)
!1354 = !DILocation(line: 129, column: 7, scope: !1351)
!1355 = !DILocation(line: 131, column: 4, scope: !1351)
!1356 = !DILocation(line: 132, column: 1, scope: !1339)
!1357 = distinct !DISubprogram(name: "ToolsCoreRegisterProvider", scope: !192, file: !192, line: 276, type: !329, isLocal: true, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!1358 = !DILocalVariable(name: "state", arg: 1, scope: !1357, file: !192, line: 276, type: !195)
!1359 = !DILocation(line: 276, column: 46, scope: !1357)
!1360 = !DILocalVariable(name: "plugin", arg: 2, scope: !1357, file: !192, line: 277, type: !298)
!1361 = !DILocation(line: 277, column: 44, scope: !1357)
!1362 = !DILocalVariable(name: "type", arg: 3, scope: !1357, file: !192, line: 278, type: !69)
!1363 = !DILocation(line: 278, column: 40, scope: !1357)
!1364 = !DILocalVariable(name: "preg", arg: 4, scope: !1357, file: !192, line: 279, type: !53)
!1365 = !DILocation(line: 279, column: 48, scope: !1357)
!1366 = !DILocalVariable(name: "reg", arg: 5, scope: !1357, file: !192, line: 280, type: !112)
!1367 = !DILocation(line: 280, column: 36, scope: !1357)
!1368 = !DILocation(line: 282, column: 8, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1357, file: !192, line: 282, column: 8)
!1370 = !DILocation(line: 282, column: 13, scope: !1369)
!1371 = !DILocation(line: 282, column: 8, scope: !1357)
!1372 = !DILocalVariable(name: "k", scope: !1373, file: !192, line: 283, type: !145)
!1373 = distinct !DILexicalBlock(scope: !1369, file: !192, line: 282, column: 36)
!1374 = !DILocation(line: 283, column: 13, scope: !1373)
!1375 = !DILocalVariable(name: "prov", scope: !1373, file: !192, line: 284, type: !58)
!1376 = !DILocation(line: 284, column: 25, scope: !1373)
!1377 = !DILocation(line: 284, column: 32, scope: !1373)
!1378 = !DILocalVariable(name: "newreg", scope: !1373, file: !192, line: 285, type: !54)
!1379 = !DILocation(line: 285, column: 27, scope: !1373)
!1380 = !DILocation(line: 285, column: 36, scope: !1373)
!1381 = !DILocation(line: 285, column: 38, scope: !1373)
!1382 = !DILocation(line: 291, column: 14, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1373, file: !192, line: 291, column: 7)
!1384 = !DILocation(line: 291, column: 12, scope: !1383)
!1385 = !DILocation(line: 291, column: 19, scope: !1386)
!1386 = !DILexicalBlockFile(scope: !1387, file: !192, discriminator: 1)
!1387 = distinct !DILexicalBlock(scope: !1383, file: !192, line: 291, column: 7)
!1388 = !DILocation(line: 291, column: 23, scope: !1386)
!1389 = !DILocation(line: 291, column: 30, scope: !1386)
!1390 = !DILocation(line: 291, column: 41, scope: !1386)
!1391 = !DILocation(line: 291, column: 21, scope: !1386)
!1392 = !DILocation(line: 291, column: 7, scope: !1386)
!1393 = !DILocalVariable(name: "existing", scope: !1394, file: !192, line: 292, type: !53)
!1394 = distinct !DILexicalBlock(scope: !1387, file: !192, line: 291, column: 51)
!1395 = !DILocation(line: 292, column: 31, scope: !1394)
!1396 = !DILocation(line: 292, column: 105, scope: !1394)
!1397 = !DILocation(line: 292, column: 44, scope: !1394)
!1398 = !DILocation(line: 292, column: 78, scope: !1394)
!1399 = !DILocation(line: 292, column: 85, scope: !1394)
!1400 = !DILocation(line: 292, column: 97, scope: !1394)
!1401 = !DILocation(line: 292, column: 45, scope: !1394)
!1402 = !DILocation(line: 296, column: 10, scope: !1394)
!1403 = distinct !{!1403, !1402}
!1404 = !DILocation(line: 296, column: 18, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !1406, file: !192, discriminator: 1)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !192, line: 296, column: 18)
!1407 = distinct !DILexicalBlock(scope: !1394, file: !192, line: 296, column: 12)
!1408 = !DILocation(line: 296, column: 24, scope: !1405)
!1409 = !DILocation(line: 296, column: 35, scope: !1405)
!1410 = !DILocation(line: 296, column: 45, scope: !1405)
!1411 = !DILocation(line: 296, column: 51, scope: !1405)
!1412 = !DILocation(line: 296, column: 32, scope: !1405)
!1413 = !DILocation(line: 296, column: 62, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1415, file: !192, discriminator: 2)
!1415 = distinct !DILexicalBlock(scope: !1406, file: !192, line: 296, column: 60)
!1416 = !DILocation(line: 296, column: 71, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1418, file: !192, discriminator: 3)
!1418 = distinct !DILexicalBlock(scope: !1406, file: !192, line: 296, column: 69)
!1419 = !DILocation(line: 296, column: 182, scope: !1417)
!1420 = !DILocation(line: 296, column: 202, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1407, file: !192, discriminator: 4)
!1422 = !DILocation(line: 297, column: 7, scope: !1394)
!1423 = !DILocation(line: 291, column: 47, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1387, file: !192, discriminator: 2)
!1425 = !DILocation(line: 291, column: 7, scope: !1424)
!1426 = distinct !{!1426, !1427}
!1427 = !DILocation(line: 291, column: 7, scope: !1373)
!1428 = !DILocation(line: 299, column: 28, scope: !1373)
!1429 = !DILocation(line: 299, column: 35, scope: !1373)
!1430 = !DILocation(line: 299, column: 46, scope: !1373)
!1431 = !DILocation(line: 299, column: 7, scope: !1373)
!1432 = !DILocation(line: 300, column: 4, scope: !1373)
!1433 = !DILocation(line: 302, column: 4, scope: !1357)
!1434 = !DILocation(line: 303, column: 1, scope: !1357)
!1435 = distinct !DISubprogram(name: "ToolsCoreRegisterApp", scope: !192, file: !192, line: 208, type: !329, isLocal: true, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!1436 = !DILocalVariable(name: "state", arg: 1, scope: !1435, file: !192, line: 208, type: !195)
!1437 = !DILocation(line: 208, column: 41, scope: !1435)
!1438 = !DILocalVariable(name: "plugin", arg: 2, scope: !1435, file: !192, line: 209, type: !298)
!1439 = !DILocation(line: 209, column: 39, scope: !1435)
!1440 = !DILocalVariable(name: "type", arg: 3, scope: !1435, file: !192, line: 210, type: !69)
!1441 = !DILocation(line: 210, column: 35, scope: !1435)
!1442 = !DILocalVariable(name: "preg", arg: 4, scope: !1435, file: !192, line: 211, type: !53)
!1443 = !DILocation(line: 211, column: 43, scope: !1435)
!1444 = !DILocalVariable(name: "reg", arg: 5, scope: !1435, file: !192, line: 212, type: !112)
!1445 = !DILocation(line: 212, column: 31, scope: !1435)
!1446 = !DILocalVariable(name: "error", scope: !1435, file: !192, line: 214, type: !86)
!1447 = !DILocation(line: 214, column: 13, scope: !1435)
!1448 = !DILocation(line: 216, column: 8, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1435, file: !192, line: 216, column: 8)
!1450 = !DILocation(line: 216, column: 13, scope: !1449)
!1451 = !DILocation(line: 216, column: 8, scope: !1435)
!1452 = !DILocation(line: 218, column: 7, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1449, file: !192, line: 216, column: 36)
!1454 = !DILocation(line: 223, column: 8, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1435, file: !192, line: 223, column: 8)
!1456 = !DILocation(line: 223, column: 14, scope: !1455)
!1457 = !DILocation(line: 223, column: 20, scope: !1455)
!1458 = !DILocation(line: 223, column: 8, scope: !1435)
!1459 = !DILocation(line: 224, column: 135, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1455, file: !192, line: 223, column: 45)
!1461 = !DILocation(line: 224, column: 143, scope: !1460)
!1462 = !DILocation(line: 224, column: 149, scope: !1460)
!1463 = !DILocation(line: 224, column: 7, scope: !1460)
!1464 = !DILocation(line: 226, column: 7, scope: !1460)
!1465 = !DILocation(line: 233, column: 8, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1435, file: !192, line: 233, column: 8)
!1467 = !DILocation(line: 233, column: 14, scope: !1466)
!1468 = !DILocation(line: 233, column: 20, scope: !1466)
!1469 = !DILocation(line: 233, column: 8, scope: !1435)
!1470 = !DILocation(line: 234, column: 11, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !192, line: 234, column: 11)
!1472 = distinct !DILexicalBlock(scope: !1466, file: !192, line: 233, column: 44)
!1473 = !DILocation(line: 234, column: 17, scope: !1471)
!1474 = !DILocation(line: 234, column: 23, scope: !1471)
!1475 = !DILocation(line: 234, column: 32, scope: !1471)
!1476 = !DILocation(line: 234, column: 11, scope: !1472)
!1477 = !DILocalVariable(name: "err", scope: !1478, file: !192, line: 235, type: !115)
!1478 = distinct !DILexicalBlock(scope: !1471, file: !192, line: 234, column: 40)
!1479 = !DILocation(line: 235, column: 18, scope: !1478)
!1480 = !DILocation(line: 236, column: 10, scope: !1478)
!1481 = !DILocation(line: 236, column: 16, scope: !1478)
!1482 = !DILocation(line: 236, column: 22, scope: !1478)
!1483 = !DILocation(line: 236, column: 32, scope: !1478)
!1484 = !DILocation(line: 236, column: 39, scope: !1478)
!1485 = !DILocation(line: 236, column: 44, scope: !1478)
!1486 = !DILocation(line: 236, column: 50, scope: !1478)
!1487 = !DILocation(line: 237, column: 14, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1478, file: !192, line: 237, column: 14)
!1489 = !DILocation(line: 237, column: 18, scope: !1488)
!1490 = !DILocation(line: 237, column: 14, scope: !1478)
!1491 = !DILocation(line: 238, column: 92, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1488, file: !192, line: 237, column: 26)
!1493 = !DILocation(line: 238, column: 98, scope: !1492)
!1494 = !DILocation(line: 238, column: 104, scope: !1492)
!1495 = !DILocation(line: 238, column: 110, scope: !1492)
!1496 = !DILocation(line: 238, column: 115, scope: !1492)
!1497 = !DILocation(line: 238, column: 13, scope: !1492)
!1498 = !DILocation(line: 240, column: 13, scope: !1492)
!1499 = !DILocation(line: 240, column: 19, scope: !1492)
!1500 = !DILocation(line: 240, column: 25, scope: !1492)
!1501 = !DILocation(line: 241, column: 13, scope: !1492)
!1502 = !DILocation(line: 242, column: 13, scope: !1492)
!1503 = !DILocation(line: 244, column: 7, scope: !1478)
!1504 = !DILocation(line: 245, column: 7, scope: !1472)
!1505 = !DILocation(line: 245, column: 13, scope: !1472)
!1506 = !DILocation(line: 245, column: 19, scope: !1472)
!1507 = !DILocation(line: 246, column: 4, scope: !1472)
!1508 = !DILocation(line: 248, column: 9, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1435, file: !192, line: 248, column: 8)
!1510 = !DILocation(line: 248, column: 15, scope: !1509)
!1511 = !DILocation(line: 248, column: 21, scope: !1509)
!1512 = !DILocation(line: 248, column: 34, scope: !1509)
!1513 = !DILocation(line: 248, column: 41, scope: !1509)
!1514 = !DILocation(line: 248, column: 46, scope: !1509)
!1515 = !DILocation(line: 248, column: 52, scope: !1509)
!1516 = !DILocation(line: 248, column: 58, scope: !1509)
!1517 = !DILocation(line: 248, column: 66, scope: !1509)
!1518 = !DILocation(line: 248, column: 8, scope: !1435)
!1519 = !DILocation(line: 249, column: 106, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1509, file: !192, line: 248, column: 72)
!1521 = !DILocation(line: 249, column: 112, scope: !1520)
!1522 = !DILocation(line: 249, column: 118, scope: !1520)
!1523 = !DILocation(line: 249, column: 124, scope: !1520)
!1524 = !DILocation(line: 249, column: 130, scope: !1520)
!1525 = !DILocation(line: 249, column: 138, scope: !1520)
!1526 = !DILocation(line: 249, column: 7, scope: !1520)
!1527 = !DILocation(line: 251, column: 7, scope: !1520)
!1528 = !DILocation(line: 253, column: 10, scope: !1435)
!1529 = !DILocation(line: 253, column: 4, scope: !1435)
!1530 = !DILocation(line: 256, column: 8, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1435, file: !192, line: 256, column: 8)
!1532 = !DILocation(line: 256, column: 14, scope: !1531)
!1533 = !DILocation(line: 256, column: 17, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1531, file: !192, discriminator: 1)
!1535 = !DILocation(line: 256, column: 25, scope: !1534)
!1536 = !DILocation(line: 256, column: 33, scope: !1534)
!1537 = !DILocation(line: 256, column: 8, scope: !1534)
!1538 = !DILocation(line: 257, column: 14, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1531, file: !192, line: 256, column: 41)
!1540 = !DILocation(line: 257, column: 22, scope: !1539)
!1541 = !DILocation(line: 257, column: 31, scope: !1539)
!1542 = !DILocation(line: 257, column: 38, scope: !1539)
!1543 = !DILocation(line: 257, column: 43, scope: !1539)
!1544 = !DILocation(line: 257, column: 49, scope: !1539)
!1545 = !DILocation(line: 257, column: 54, scope: !1539)
!1546 = !DILocation(line: 257, column: 7, scope: !1539)
!1547 = !DILocation(line: 259, column: 4, scope: !1435)
!1548 = !DILocation(line: 260, column: 1, scope: !1435)
!1549 = distinct !DISubprogram(name: "ToolsCore_UnloadPlugins", scope: !192, file: !192, line: 872, type: !193, isLocal: false, isDefinition: true, scopeLine: 873, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!1550 = !DILocalVariable(name: "state", arg: 1, scope: !1549, file: !192, line: 872, type: !195)
!1551 = !DILocation(line: 872, column: 44, scope: !1549)
!1552 = !DILocalVariable(name: "i", scope: !1549, file: !192, line: 874, type: !145)
!1553 = !DILocation(line: 874, column: 10, scope: !1549)
!1554 = !DILocation(line: 876, column: 8, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1549, file: !192, line: 876, column: 8)
!1556 = !DILocation(line: 876, column: 15, scope: !1555)
!1557 = !DILocation(line: 876, column: 23, scope: !1555)
!1558 = !DILocation(line: 876, column: 8, scope: !1549)
!1559 = !DILocation(line: 877, column: 7, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1555, file: !192, line: 876, column: 31)
!1561 = !DILocation(line: 884, column: 8, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1549, file: !192, line: 884, column: 8)
!1563 = !DILocation(line: 884, column: 15, scope: !1562)
!1564 = !DILocation(line: 884, column: 30, scope: !1562)
!1565 = !DILocation(line: 884, column: 33, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1562, file: !192, discriminator: 1)
!1567 = !DILocation(line: 884, column: 40, scope: !1566)
!1568 = !DILocation(line: 884, column: 44, scope: !1566)
!1569 = !DILocation(line: 884, column: 8, scope: !1566)
!1570 = !DILocalVariable(name: "pcaps", scope: !1571, file: !192, line: 885, type: !138)
!1571 = distinct !DILexicalBlock(scope: !1562, file: !192, line: 884, column: 49)
!1572 = !DILocation(line: 885, column: 15, scope: !1571)
!1573 = !DILocation(line: 886, column: 29, scope: !1571)
!1574 = !DILocation(line: 886, column: 36, scope: !1571)
!1575 = !DILocation(line: 886, column: 40, scope: !1571)
!1576 = !DILocation(line: 888, column: 30, scope: !1571)
!1577 = !DILocation(line: 888, column: 37, scope: !1571)
!1578 = !DILocation(line: 886, column: 7, scope: !1571)
!1579 = !DILocation(line: 892, column: 11, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1571, file: !192, line: 892, column: 11)
!1581 = !DILocation(line: 892, column: 17, scope: !1580)
!1582 = !DILocation(line: 892, column: 11, scope: !1571)
!1583 = !DILocation(line: 893, column: 36, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1580, file: !192, line: 892, column: 25)
!1585 = !DILocation(line: 893, column: 43, scope: !1584)
!1586 = !DILocation(line: 893, column: 47, scope: !1584)
!1587 = !DILocation(line: 893, column: 52, scope: !1584)
!1588 = !DILocation(line: 893, column: 10, scope: !1584)
!1589 = !DILocation(line: 894, column: 23, scope: !1584)
!1590 = !DILocation(line: 894, column: 10, scope: !1584)
!1591 = !DILocation(line: 895, column: 7, scope: !1584)
!1592 = !DILocation(line: 896, column: 4, scope: !1571)
!1593 = !DILocation(line: 902, column: 11, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1549, file: !192, line: 902, column: 4)
!1595 = !DILocation(line: 902, column: 9, scope: !1594)
!1596 = !DILocation(line: 902, column: 16, scope: !1597)
!1597 = !DILexicalBlockFile(scope: !1598, file: !192, discriminator: 1)
!1598 = distinct !DILexicalBlock(scope: !1594, file: !192, line: 902, column: 4)
!1599 = !DILocation(line: 902, column: 23, scope: !1597)
!1600 = !DILocation(line: 902, column: 33, scope: !1597)
!1601 = !DILocation(line: 902, column: 40, scope: !1597)
!1602 = !DILocation(line: 902, column: 43, scope: !1603)
!1603 = !DILexicalBlockFile(scope: !1598, file: !192, discriminator: 2)
!1604 = !DILocation(line: 902, column: 47, scope: !1603)
!1605 = !DILocation(line: 902, column: 54, scope: !1603)
!1606 = !DILocation(line: 902, column: 65, scope: !1603)
!1607 = !DILocation(line: 902, column: 45, scope: !1603)
!1608 = !DILocation(line: 902, column: 4, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1594, file: !192, discriminator: 3)
!1610 = !DILocalVariable(name: "preg", scope: !1611, file: !192, line: 903, type: !53)
!1611 = distinct !DILexicalBlock(scope: !1598, file: !192, line: 902, column: 75)
!1612 = !DILocation(line: 903, column: 29, scope: !1611)
!1613 = !DILocation(line: 903, column: 99, scope: !1611)
!1614 = !DILocation(line: 903, column: 38, scope: !1611)
!1615 = !DILocation(line: 903, column: 72, scope: !1611)
!1616 = !DILocation(line: 903, column: 79, scope: !1611)
!1617 = !DILocation(line: 903, column: 91, scope: !1611)
!1618 = !DILocation(line: 903, column: 39, scope: !1611)
!1619 = !DILocation(line: 907, column: 11, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1611, file: !192, line: 907, column: 11)
!1621 = !DILocation(line: 907, column: 17, scope: !1620)
!1622 = !DILocation(line: 907, column: 23, scope: !1620)
!1623 = !DILocation(line: 907, column: 32, scope: !1620)
!1624 = !DILocation(line: 907, column: 39, scope: !1620)
!1625 = !DILocation(line: 907, column: 42, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !1620, file: !192, discriminator: 1)
!1627 = !DILocation(line: 907, column: 48, scope: !1626)
!1628 = !DILocation(line: 907, column: 54, scope: !1626)
!1629 = !DILocation(line: 907, column: 11, scope: !1626)
!1630 = !DILocation(line: 908, column: 10, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1620, file: !192, line: 907, column: 80)
!1632 = !DILocation(line: 908, column: 16, scope: !1631)
!1633 = !DILocation(line: 908, column: 22, scope: !1631)
!1634 = !DILocation(line: 908, column: 32, scope: !1631)
!1635 = !DILocation(line: 908, column: 39, scope: !1631)
!1636 = !DILocation(line: 908, column: 44, scope: !1631)
!1637 = !DILocation(line: 908, column: 50, scope: !1631)
!1638 = !DILocation(line: 909, column: 7, scope: !1631)
!1639 = !DILocation(line: 911, column: 11, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1611, file: !192, line: 911, column: 11)
!1641 = !DILocation(line: 911, column: 17, scope: !1640)
!1642 = !DILocation(line: 911, column: 23, scope: !1640)
!1643 = !DILocation(line: 911, column: 31, scope: !1640)
!1644 = !DILocation(line: 911, column: 53, scope: !1640)
!1645 = !DILocation(line: 912, column: 11, scope: !1640)
!1646 = !DILocation(line: 912, column: 17, scope: !1640)
!1647 = !DILocation(line: 912, column: 23, scope: !1640)
!1648 = !DILocation(line: 912, column: 31, scope: !1640)
!1649 = !DILocation(line: 912, column: 52, scope: !1640)
!1650 = !DILocation(line: 913, column: 11, scope: !1640)
!1651 = !DILocation(line: 913, column: 17, scope: !1640)
!1652 = !DILocation(line: 913, column: 23, scope: !1640)
!1653 = !DILocation(line: 913, column: 31, scope: !1640)
!1654 = !DILocation(line: 913, column: 53, scope: !1640)
!1655 = !DILocation(line: 914, column: 11, scope: !1640)
!1656 = !DILocation(line: 914, column: 17, scope: !1640)
!1657 = !DILocation(line: 914, column: 23, scope: !1640)
!1658 = !DILocation(line: 914, column: 31, scope: !1640)
!1659 = !DILocation(line: 911, column: 11, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !1611, file: !192, discriminator: 1)
!1661 = !DILocation(line: 915, column: 17, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1640, file: !192, line: 914, column: 54)
!1663 = !DILocation(line: 915, column: 23, scope: !1662)
!1664 = !DILocation(line: 915, column: 10, scope: !1662)
!1665 = !DILocation(line: 916, column: 7, scope: !1662)
!1666 = !DILocation(line: 917, column: 4, scope: !1611)
!1667 = !DILocation(line: 902, column: 71, scope: !1668)
!1668 = !DILexicalBlockFile(scope: !1598, file: !192, discriminator: 4)
!1669 = !DILocation(line: 902, column: 4, scope: !1668)
!1670 = distinct !{!1670, !1671}
!1671 = !DILocation(line: 902, column: 4, scope: !1549)
!1672 = !DILocation(line: 919, column: 26, scope: !1549)
!1673 = !DILocation(line: 919, column: 33, scope: !1549)
!1674 = !DILocation(line: 919, column: 37, scope: !1549)
!1675 = !DILocation(line: 919, column: 66, scope: !1549)
!1676 = !DILocation(line: 919, column: 73, scope: !1549)
!1677 = !DILocation(line: 919, column: 4, scope: !1549)
!1678 = !DILocation(line: 921, column: 4, scope: !1549)
!1679 = !DILocation(line: 921, column: 11, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1549, file: !192, discriminator: 1)
!1681 = !DILocation(line: 921, column: 18, scope: !1680)
!1682 = !DILocation(line: 921, column: 27, scope: !1680)
!1683 = !DILocation(line: 921, column: 31, scope: !1680)
!1684 = !DILocation(line: 921, column: 4, scope: !1680)
!1685 = !DILocalVariable(name: "plugin", scope: !1686, file: !192, line: 922, type: !352)
!1686 = distinct !DILexicalBlock(scope: !1549, file: !192, line: 921, column: 36)
!1687 = !DILocation(line: 922, column: 20, scope: !1686)
!1688 = !DILocation(line: 922, column: 55, scope: !1686)
!1689 = !DILocation(line: 922, column: 62, scope: !1686)
!1690 = !DILocation(line: 922, column: 71, scope: !1686)
!1691 = !DILocation(line: 922, column: 75, scope: !1686)
!1692 = !DILocation(line: 922, column: 29, scope: !1686)
!1693 = !DILocation(line: 922, column: 31, scope: !1686)
!1694 = !DILocation(line: 922, column: 38, scope: !1686)
!1695 = !DILocation(line: 922, column: 48, scope: !1686)
!1696 = !DILocalVariable(name: "regs", scope: !1686, file: !192, line: 923, type: !138)
!1697 = !DILocation(line: 923, column: 15, scope: !1686)
!1698 = !DILocation(line: 923, column: 23, scope: !1686)
!1699 = !DILocation(line: 923, column: 31, scope: !1686)
!1700 = !DILocation(line: 923, column: 36, scope: !1686)
!1701 = !DILocation(line: 923, column: 22, scope: !1686)
!1702 = !DILocation(line: 923, column: 46, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1686, file: !192, discriminator: 1)
!1704 = !DILocation(line: 923, column: 54, scope: !1703)
!1705 = !DILocation(line: 923, column: 60, scope: !1703)
!1706 = !DILocation(line: 923, column: 22, scope: !1703)
!1707 = !DILocation(line: 923, column: 22, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1686, file: !192, discriminator: 2)
!1709 = !DILocation(line: 923, column: 22, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1686, file: !192, discriminator: 3)
!1711 = !DILocation(line: 923, column: 15, scope: !1710)
!1712 = !DILocation(line: 925, column: 75, scope: !1686)
!1713 = !DILocation(line: 925, column: 83, scope: !1686)
!1714 = !DILocation(line: 925, column: 89, scope: !1686)
!1715 = !DILocation(line: 925, column: 7, scope: !1686)
!1716 = !DILocation(line: 927, column: 11, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1686, file: !192, line: 927, column: 11)
!1718 = !DILocation(line: 927, column: 16, scope: !1717)
!1719 = !DILocation(line: 927, column: 11, scope: !1686)
!1720 = !DILocalVariable(name: "i", scope: !1721, file: !192, line: 928, type: !145)
!1721 = distinct !DILexicalBlock(scope: !1717, file: !192, line: 927, column: 24)
!1722 = !DILocation(line: 928, column: 16, scope: !1721)
!1723 = !DILocation(line: 929, column: 17, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1721, file: !192, line: 929, column: 10)
!1725 = !DILocation(line: 929, column: 15, scope: !1724)
!1726 = !DILocation(line: 929, column: 22, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1728, file: !192, discriminator: 1)
!1728 = distinct !DILexicalBlock(scope: !1724, file: !192, line: 929, column: 10)
!1729 = !DILocation(line: 929, column: 26, scope: !1727)
!1730 = !DILocation(line: 929, column: 32, scope: !1727)
!1731 = !DILocation(line: 929, column: 24, scope: !1727)
!1732 = !DILocation(line: 929, column: 10, scope: !1727)
!1733 = !DILocalVariable(name: "reg", scope: !1734, file: !192, line: 930, type: !161)
!1734 = distinct !DILexicalBlock(scope: !1728, file: !192, line: 929, column: 42)
!1735 = !DILocation(line: 930, column: 26, scope: !1734)
!1736 = !DILocation(line: 930, column: 75, scope: !1734)
!1737 = !DILocation(line: 930, column: 34, scope: !1734)
!1738 = !DILocation(line: 930, column: 60, scope: !1734)
!1739 = !DILocation(line: 930, column: 67, scope: !1734)
!1740 = !DILocation(line: 930, column: 35, scope: !1734)
!1741 = !DILocation(line: 931, column: 17, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1734, file: !192, line: 931, column: 17)
!1743 = !DILocation(line: 931, column: 22, scope: !1742)
!1744 = !DILocation(line: 931, column: 27, scope: !1742)
!1745 = !DILocation(line: 931, column: 17, scope: !1734)
!1746 = !DILocation(line: 932, column: 29, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1742, file: !192, line: 931, column: 35)
!1748 = !DILocation(line: 932, column: 34, scope: !1747)
!1749 = !DILocation(line: 932, column: 16, scope: !1747)
!1750 = !DILocation(line: 933, column: 13, scope: !1747)
!1751 = !DILocation(line: 934, column: 10, scope: !1734)
!1752 = !DILocation(line: 929, column: 38, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1728, file: !192, discriminator: 2)
!1754 = !DILocation(line: 929, column: 10, scope: !1753)
!1755 = distinct !{!1755, !1756}
!1756 = !DILocation(line: 929, column: 10, scope: !1721)
!1757 = !DILocation(line: 935, column: 23, scope: !1721)
!1758 = !DILocation(line: 935, column: 10, scope: !1721)
!1759 = !DILocation(line: 936, column: 7, scope: !1721)
!1760 = !DILocation(line: 938, column: 32, scope: !1686)
!1761 = !DILocation(line: 938, column: 39, scope: !1686)
!1762 = !DILocation(line: 938, column: 48, scope: !1686)
!1763 = !DILocation(line: 938, column: 55, scope: !1686)
!1764 = !DILocation(line: 938, column: 64, scope: !1686)
!1765 = !DILocation(line: 938, column: 68, scope: !1686)
!1766 = !DILocation(line: 938, column: 7, scope: !1686)
!1767 = !DILocation(line: 939, column: 27, scope: !1686)
!1768 = !DILocation(line: 939, column: 7, scope: !1686)
!1769 = !DILocation(line: 921, column: 4, scope: !1770)
!1770 = !DILexicalBlockFile(scope: !1549, file: !192, discriminator: 2)
!1771 = distinct !{!1771, !1678}
!1772 = !DILocation(line: 942, column: 8, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1549, file: !192, line: 942, column: 8)
!1774 = !DILocation(line: 942, column: 15, scope: !1773)
!1775 = !DILocation(line: 942, column: 25, scope: !1773)
!1776 = !DILocation(line: 942, column: 8, scope: !1549)
!1777 = !DILocation(line: 943, column: 20, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1773, file: !192, line: 942, column: 33)
!1779 = !DILocation(line: 943, column: 27, scope: !1778)
!1780 = !DILocation(line: 943, column: 7, scope: !1778)
!1781 = !DILocation(line: 944, column: 7, scope: !1778)
!1782 = !DILocation(line: 944, column: 14, scope: !1778)
!1783 = !DILocation(line: 944, column: 24, scope: !1778)
!1784 = !DILocation(line: 945, column: 4, scope: !1778)
!1785 = !DILocation(line: 947, column: 21, scope: !1549)
!1786 = !DILocation(line: 947, column: 28, scope: !1549)
!1787 = !DILocation(line: 947, column: 4, scope: !1549)
!1788 = !DILocation(line: 948, column: 4, scope: !1549)
!1789 = !DILocation(line: 948, column: 11, scope: !1549)
!1790 = !DILocation(line: 948, column: 19, scope: !1549)
!1791 = !DILocation(line: 949, column: 1, scope: !1549)
!1792 = !DILocation(line: 949, column: 1, scope: !1680)
!1793 = distinct !DISubprogram(name: "ToolsCore_LogState", scope: !4, file: !4, line: 101, type: !1794, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{null, !145, !109, null}
!1796 = !DILocalVariable(name: "level", arg: 1, scope: !1793, file: !4, line: 101, type: !145)
!1797 = !DILocation(line: 101, column: 26, scope: !1793)
!1798 = !DILocalVariable(name: "fmt", arg: 2, scope: !1793, file: !4, line: 102, type: !109)
!1799 = !DILocation(line: 102, column: 32, scope: !1793)
!1800 = !DILocalVariable(name: "indented", scope: !1793, file: !4, line: 105, type: !128)
!1801 = !DILocation(line: 105, column: 11, scope: !1793)
!1802 = !DILocation(line: 105, column: 51, scope: !1793)
!1803 = !DILocation(line: 105, column: 49, scope: !1793)
!1804 = !DILocation(line: 105, column: 62, scope: !1793)
!1805 = !DILocation(line: 105, column: 22, scope: !1793)
!1806 = !DILocalVariable(name: "args", scope: !1793, file: !4, line: 107, type: !1807)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1808, line: 98, baseType: !1809)
!1808 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/open-vm-tools/line1387")
!1809 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1808, line: 40, baseType: !1810)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 107, baseType: !1811)
!1811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1812, size: 192, align: 64, elements: !1818)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 107, size: 192, align: 64, elements: !1813)
!1813 = !{!1814, !1815, !1816, !1817}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1812, file: !1, line: 107, baseType: !125, size: 32, align: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1812, file: !1, line: 107, baseType: !125, size: 32, align: 32, offset: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1812, file: !1, line: 107, baseType: !52, size: 64, align: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1812, file: !1, line: 107, baseType: !52, size: 64, align: 64, offset: 128)
!1818 = !{!1819}
!1819 = !DISubrange(count: 1)
!1820 = !DILocation(line: 107, column: 12, scope: !1793)
!1821 = !DILocation(line: 108, column: 3, scope: !1793)
!1822 = !DILocation(line: 109, column: 38, scope: !1793)
!1823 = !DILocation(line: 109, column: 48, scope: !1793)
!1824 = !DILocation(line: 109, column: 4, scope: !1793)
!1825 = !DILocation(line: 110, column: 3, scope: !1793)
!1826 = !DILocation(line: 112, column: 11, scope: !1793)
!1827 = !DILocation(line: 112, column: 4, scope: !1793)
!1828 = !DILocation(line: 113, column: 1, scope: !1793)
!1829 = distinct !DISubprogram(name: "ToolsCoreStrPtrCompare", scope: !192, file: !192, line: 482, type: !1830, isLocal: true, isDefinition: true, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !304)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!87, !1832, !1832}
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !66, line: 78, baseType: !1833)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64, align: 64)
!1834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1835 = !DILocalVariable(name: "_str1", arg: 1, scope: !1829, file: !192, line: 482, type: !1832)
!1836 = !DILocation(line: 482, column: 38, scope: !1829)
!1837 = !DILocalVariable(name: "_str2", arg: 2, scope: !1829, file: !192, line: 483, type: !1832)
!1838 = !DILocation(line: 483, column: 38, scope: !1829)
!1839 = !DILocalVariable(name: "str1", scope: !1829, file: !192, line: 485, type: !63)
!1840 = !DILocation(line: 485, column: 17, scope: !1829)
!1841 = !DILocation(line: 485, column: 43, scope: !1829)
!1842 = !DILocation(line: 485, column: 26, scope: !1829)
!1843 = !DILocation(line: 485, column: 24, scope: !1829)
!1844 = !DILocalVariable(name: "str2", scope: !1829, file: !192, line: 486, type: !63)
!1845 = !DILocation(line: 486, column: 17, scope: !1829)
!1846 = !DILocation(line: 486, column: 43, scope: !1829)
!1847 = !DILocation(line: 486, column: 26, scope: !1829)
!1848 = !DILocation(line: 486, column: 24, scope: !1829)
!1849 = !DILocation(line: 487, column: 18, scope: !1829)
!1850 = !DILocation(line: 487, column: 24, scope: !1829)
!1851 = !DILocation(line: 487, column: 11, scope: !1829)
!1852 = !DILocation(line: 487, column: 4, scope: !1829)
