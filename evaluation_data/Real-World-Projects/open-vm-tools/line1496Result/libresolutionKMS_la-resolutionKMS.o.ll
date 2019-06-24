; ModuleID = './libresolutionKMS_la-resolutionKMS.o.i'
source_filename = "./libresolutionKMS_la-resolutionKMS.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RpcChannelCallback = type { i8*, i32 (%struct.RpcInData*)*, i8*, i8*, i8*, i64 }
%struct.RpcInData = type { i8*, i8*, i64, i8*, i64, i32, i8*, i8* }
%struct.ToolsPluginData = type { i8*, %struct._GArray*, i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)*, i8* }
%struct._GArray = type { i8*, i32 }
%struct.ToolsAppCtx = type { i32, i8*, i32, i32, %struct._GMainLoop*, %struct._RpcChannel*, %struct._GKeyFile*, i32, i32, i8**, i8* }
%struct._GMainLoop = type opaque
%struct._RpcChannel = type opaque
%struct._GKeyFile = type opaque
%struct.KMSInfoType = type { i32, i32 }
%struct.Drm2Interface = type { i32 (i8*, i8*)*, i32 (i32)*, %struct._drmVersion* (i32)*, void (%struct._drmVersion*)*, i32 (i32)*, i32 (i32, i64, i8*, i64)* }
%struct._drmVersion = type { i32, i32, i32, i32, i8*, i32, i8*, i32, i8* }
%struct.ToolsPluginSignalCb = type { i8*, i8*, i8* }
%struct.ToolsAppReg = type { i32, %struct._GArray* }
%struct.drm_vmw_rect = type { i32, i32, i32, i32 }
%struct.ToolsAppCapability = type { i32, i8*, i32, i32 }
%struct.drm_vmw_update_layout_arg = type { i32, i32, i64 }

@vm_version = constant [20 x i8] c"version=10.3.0.5330\00", section ".modinfo", align 16
@.str = private unnamed_addr constant [15 x i8] c"Resolution_Set\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"DisplayTopology_Set\00", align 1
@ToolsOnLoad.rpcs = private unnamed_addr constant [2 x %struct.RpcChannelCallback] [%struct.RpcChannelCallback { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 (%struct.RpcInData*)* @ResolutionResolutionSetCB, i8* null, i8* null, i8* null, i64 0 }, %struct.RpcChannelCallback { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.RpcInData*)* @ResolutionDisplayTopologySetCB, i8* null, i8* null, i8* null, i64 0 }], align 16
@ToolsOnLoad.regData = internal global %struct.ToolsPluginData { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), %struct._GArray* null, i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)* null, i8* null }, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"resolutionKMS\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"tcs_capabilities\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"tcs_shutdown\00", align 1
@kmsInfo = common global %struct.KMSInfoType zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"vmsvc\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"toolbox\00", align 1
@rpcChannelName = internal global i8* null, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"vmusr\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"toolbox-dnd\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"NOT_REACHED %s:%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"resolutionKMS.c\00", align 1
@.str.11 = private unnamed_addr constant [68 x i8] c"%s: FAIL! Request for resolution set but plugin is not initialized\0A\00", align 1
@__FUNCTION__.ResolutionResolutionSetCB = private unnamed_addr constant [26 x i8] c"ResolutionResolutionSetCB\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"Invalid guest state: resolution set not initialized\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Invalid arguments\00", align 1
@drmi = external global %struct.Drm2Interface*, align 8
@.str.16 = private unnamed_addr constant [52 x i8] c"%s: FAIL! Resolutionset write to kernel failed: %d\0A\00", align 1
@__FUNCTION__.ResolutionWriteToKernel = private unnamed_addr constant [24 x i8] c"ResolutionWriteToKernel\00", align 1
@.str.17 = private unnamed_addr constant [66 x i8] c"%s: FAIL! Request for topology set but plugin is not initialized\0A\00", align 1
@__FUNCTION__.ResolutionDisplayTopologySetCB = private unnamed_addr constant [31 x i8] c"ResolutionDisplayTopologySetCB\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"Invalid guest state: topology set not initialized\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"Invalid arguments. Expected \22count\22\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"Failed to alloc buffer for display info\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"Expected comma separated display list\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c" %d %d %d %d \00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"Expected x, y, w, h in display entry\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"ResolutionSetTopology failed\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"%s: enter\0A\00", align 1
@__FUNCTION__.ResolutionKMSCapabilities = private unnamed_addr constant [26 x i8] c"ResolutionKMSCapabilities\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"display_topology_set\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"display_global_offset\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"resolution_set\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"Channel name is null, RPC not sent.\0A\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"tools.capability.resolution_server %s %d\00", align 1
@.str.32 = private unnamed_addr constant [54 x i8] c"%s: Unable to set tools.capability.resolution_server\0A\00", align 1
@__FUNCTION__.ResolutionKMSServerCapability = private unnamed_addr constant [30 x i8] c"ResolutionKMSServerCapability\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"tools.capability.resolution_server %s 0\00", align 1
@.str.34 = private unnamed_addr constant [56 x i8] c"%s: Unable to clear tools.capability.resolution_server\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.ToolsPluginData* @ToolsOnLoad(%struct.ToolsAppCtx*) #0 !dbg !76 {
  %2 = alloca %struct.ToolsPluginData*, align 8
  %3 = alloca %struct.ToolsAppCtx*, align 8
  %4 = alloca [2 x %struct.RpcChannelCallback], align 16
  %5 = alloca [2 x %struct.ToolsPluginSignalCb], align 16
  %6 = alloca [2 x %struct.ToolsAppReg], align 16
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %3, metadata !152, metadata !153), !dbg !154
  call void @llvm.dbg.declare(metadata [2 x %struct.RpcChannelCallback]* %4, metadata !155, metadata !153), !dbg !187
  %7 = bitcast [2 x %struct.RpcChannelCallback]* %4 to i8*, !dbg !187
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([2 x %struct.RpcChannelCallback]* @ToolsOnLoad.rpcs to i8*), i64 96, i32 16, i1 false), !dbg !187
  call void @llvm.dbg.declare(metadata [2 x %struct.ToolsPluginSignalCb]* %5, metadata !188, metadata !153), !dbg !196
  %8 = bitcast [2 x %struct.ToolsPluginSignalCb]* %5 to i8*, !dbg !196
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 48, i32 16, i1 false), !dbg !196
  %9 = bitcast i8* %8 to [2 x %struct.ToolsPluginSignalCb]*, !dbg !196
  %10 = getelementptr [2 x %struct.ToolsPluginSignalCb], [2 x %struct.ToolsPluginSignalCb]* %9, i32 0, i32 0, !dbg !196
  %11 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %10, i32 0, i32 0, !dbg !196
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8** %11, !dbg !196
  %12 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %10, i32 0, i32 1, !dbg !196
  store i8* bitcast (%struct._GArray* (i8*, %struct.ToolsAppCtx*, i32, i8*)* @ResolutionKMSCapabilities to i8*), i8** %12, !dbg !196
  %13 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %10, i32 0, i32 2, !dbg !196
  store i8* bitcast (%struct.ToolsPluginData* @ToolsOnLoad.regData to i8*), i8** %13, !dbg !196
  %14 = getelementptr [2 x %struct.ToolsPluginSignalCb], [2 x %struct.ToolsPluginSignalCb]* %9, i32 0, i32 1, !dbg !196
  %15 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %14, i32 0, i32 0, !dbg !196
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8** %15, !dbg !196
  %16 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %14, i32 0, i32 1, !dbg !196
  store i8* bitcast (void (i8*, %struct.ToolsAppCtx*, i8*)* @ResolutionKMSShutdown to i8*), i8** %16, !dbg !196
  %17 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %14, i32 0, i32 2, !dbg !196
  store i8* bitcast (%struct.ToolsPluginData* @ToolsOnLoad.regData to i8*), i8** %17, !dbg !196
  call void @llvm.dbg.declare(metadata [2 x %struct.ToolsAppReg]* %6, metadata !197, metadata !153), !dbg !204
  %18 = getelementptr inbounds [2 x %struct.ToolsAppReg], [2 x %struct.ToolsAppReg]* %6, i64 0, i64 0, !dbg !205
  %19 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %18, i32 0, i32 0, !dbg !206
  store i32 1, i32* %19, align 16, !dbg !206
  %20 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %18, i32 0, i32 1, !dbg !206
  store %struct._GArray* null, %struct._GArray** %20, align 8, !dbg !206
  %21 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %18, i64 1, !dbg !205
  %22 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %21, i32 0, i32 0, !dbg !207
  store i32 2, i32* %22, align 16, !dbg !207
  %23 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %21, i32 0, i32 1, !dbg !207
  %24 = getelementptr inbounds [2 x %struct.ToolsPluginSignalCb], [2 x %struct.ToolsPluginSignalCb]* %5, i32 0, i32 0, !dbg !208
  %25 = bitcast %struct.ToolsPluginSignalCb* %24 to i8*, !dbg !208
  %26 = call %struct._GArray* @VMTools_WrapArray(i8* %25, i32 24, i32 2), !dbg !209
  store %struct._GArray* %26, %struct._GArray** %23, align 8, !dbg !207
  %27 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !210
  %28 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %27, i32 0, i32 2, !dbg !212
  %29 = load i32, i32* %28, align 8, !dbg !212
  %30 = icmp ne i32 %29, 0, !dbg !210
  br i1 %30, label %32, label %31, !dbg !213

; <label>:31:                                     ; preds = %1
  store %struct.ToolsPluginData* null, %struct.ToolsPluginData** %2, align 8, !dbg !214
  br label %63, !dbg !214

; <label>:32:                                     ; preds = %1
  %33 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !216
  %34 = call i32 @resolutionCheckForKMS(%struct.ToolsAppCtx* %33), !dbg !217
  store i32 %34, i32* getelementptr inbounds (%struct.KMSInfoType, %struct.KMSInfoType* @kmsInfo, i32 0, i32 1), align 4, !dbg !218
  %35 = load i32, i32* getelementptr inbounds (%struct.KMSInfoType, %struct.KMSInfoType* @kmsInfo, i32 0, i32 1), align 4, !dbg !219
  %36 = icmp slt i32 %35, 0, !dbg !221
  br i1 %36, label %37, label %38, !dbg !222

; <label>:37:                                     ; preds = %32
  store %struct.ToolsPluginData* null, %struct.ToolsPluginData** %2, align 8, !dbg !223
  br label %63, !dbg !223

; <label>:38:                                     ; preds = %32
  store i32 1, i32* getelementptr inbounds (%struct.KMSInfoType, %struct.KMSInfoType* @kmsInfo, i32 0, i32 0), align 4, !dbg !225
  %39 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !226
  %40 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %39, i32 0, i32 1, !dbg !228
  %41 = load i8*, i8** %40, align 8, !dbg !228
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)) #7, !dbg !229
  %43 = icmp eq i32 %42, 0, !dbg !230
  br i1 %43, label %44, label %45, !dbg !231

; <label>:44:                                     ; preds = %38
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8** @rpcChannelName, align 8, !dbg !232
  br label %54, !dbg !234

; <label>:45:                                     ; preds = %38
  %46 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !235
  %47 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %46, i32 0, i32 1, !dbg !238
  %48 = load i8*, i8** %47, align 8, !dbg !238
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !239
  %50 = icmp eq i32 %49, 0, !dbg !240
  br i1 %50, label %51, label %52, !dbg !239

; <label>:51:                                     ; preds = %45
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8** @rpcChannelName, align 8, !dbg !241
  br label %53, !dbg !243

; <label>:52:                                     ; preds = %45
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i32 484) #8, !dbg !244
  unreachable, !dbg !244

; <label>:53:                                     ; preds = %51
  br label %54

; <label>:54:                                     ; preds = %53, %44
  %55 = getelementptr inbounds [2 x %struct.RpcChannelCallback], [2 x %struct.RpcChannelCallback]* %4, i32 0, i32 0, !dbg !246
  %56 = bitcast %struct.RpcChannelCallback* %55 to i8*, !dbg !246
  %57 = call %struct._GArray* @VMTools_WrapArray(i8* %56, i32 48, i32 2), !dbg !247
  %58 = getelementptr inbounds [2 x %struct.ToolsAppReg], [2 x %struct.ToolsAppReg]* %6, i64 0, i64 0, !dbg !248
  %59 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %58, i32 0, i32 1, !dbg !249
  store %struct._GArray* %57, %struct._GArray** %59, align 8, !dbg !250
  %60 = getelementptr inbounds [2 x %struct.ToolsAppReg], [2 x %struct.ToolsAppReg]* %6, i32 0, i32 0, !dbg !251
  %61 = bitcast %struct.ToolsAppReg* %60 to i8*, !dbg !251
  %62 = call %struct._GArray* @VMTools_WrapArray(i8* %61, i32 16, i32 2), !dbg !252
  store %struct._GArray* %62, %struct._GArray** getelementptr inbounds (%struct.ToolsPluginData, %struct.ToolsPluginData* @ToolsOnLoad.regData, i32 0, i32 1), align 8, !dbg !253
  store %struct.ToolsPluginData* @ToolsOnLoad.regData, %struct.ToolsPluginData** %2, align 8, !dbg !254
  br label %63, !dbg !254

; <label>:63:                                     ; preds = %54, %37, %31
  %64 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %2, align 8, !dbg !255
  ret %struct.ToolsPluginData* %64, !dbg !255
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i32 @ResolutionResolutionSetCB(%struct.RpcInData*) #0 !dbg !256 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.RpcInData*, align 8
  %4 = alloca %struct.drm_vmw_rect, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.RpcInData* %0, %struct.RpcInData** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %3, metadata !257, metadata !153), !dbg !258
  call void @llvm.dbg.declare(metadata %struct.drm_vmw_rect* %4, metadata !259, metadata !153), !dbg !271
  call void @llvm.dbg.declare(metadata i32* %5, metadata !272, metadata !153), !dbg !273
  store i32 0, i32* %5, align 4, !dbg !273
  call void @llvm.dbg.declare(metadata i32* %6, metadata !274, metadata !153), !dbg !275
  store i32 0, i32* %6, align 4, !dbg !275
  %7 = load i32, i32* getelementptr inbounds (%struct.KMSInfoType, %struct.KMSInfoType* @kmsInfo, i32 0, i32 0), align 4, !dbg !276
  %8 = icmp ne i32 %7, 0, !dbg !278
  br i1 %8, label %12, label %9, !dbg !279

; <label>:9:                                      ; preds = %1
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.ResolutionResolutionSetCB, i32 0, i32 0)), !dbg !280
  %10 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !282
  %11 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %10, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i32 0, i32 0), i32 0), !dbg !283
  store i32 %11, i32* %2, align 4, !dbg !284
  br label %39, !dbg !284

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds %struct.drm_vmw_rect, %struct.drm_vmw_rect* %4, i32 0, i32 0, !dbg !285
  store i32 0, i32* %13, align 4, !dbg !286
  %14 = getelementptr inbounds %struct.drm_vmw_rect, %struct.drm_vmw_rect* %4, i32 0, i32 1, !dbg !287
  store i32 0, i32* %14, align 4, !dbg !288
  %15 = getelementptr inbounds %struct.drm_vmw_rect, %struct.drm_vmw_rect* %4, i32 0, i32 2, !dbg !289
  %16 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !291
  %17 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %16, i32 0, i32 1, !dbg !292
  %18 = load i8*, i8** %17, align 8, !dbg !292
  %19 = call signext i8 @StrUtil_GetNextUintToken(i32* %15, i32* %5, i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)), !dbg !293
  %20 = icmp ne i8 %19, 0, !dbg !293
  br i1 %20, label %22, label %21, !dbg !294

; <label>:21:                                     ; preds = %12
  br label %32, !dbg !295

; <label>:22:                                     ; preds = %12
  %23 = getelementptr inbounds %struct.drm_vmw_rect, %struct.drm_vmw_rect* %4, i32 0, i32 3, !dbg !297
  %24 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !299
  %25 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %24, i32 0, i32 1, !dbg !300
  %26 = load i8*, i8** %25, align 8, !dbg !300
  %27 = call signext i8 @StrUtil_GetNextUintToken(i32* %23, i32* %5, i8* %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0)), !dbg !301
  %28 = icmp ne i8 %27, 0, !dbg !301
  br i1 %28, label %30, label %29, !dbg !302

; <label>:29:                                     ; preds = %22
  br label %32, !dbg !303

; <label>:30:                                     ; preds = %22
  %31 = call i32 @ResolutionWriteToKernel(%struct.drm_vmw_rect* %4, i32 1), !dbg !305
  store i32 %31, i32* %6, align 4, !dbg !306
  br label %32, !dbg !307

; <label>:32:                                     ; preds = %30, %29, %21
  %33 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !308
  %34 = load i32, i32* %6, align 4, !dbg !309
  %35 = icmp ne i32 %34, 0, !dbg !309
  %36 = select i1 %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), !dbg !309
  %37 = load i32, i32* %6, align 4, !dbg !310
  %38 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %33, i8* %36, i32 %37), !dbg !311
  store i32 %38, i32* %2, align 4, !dbg !312
  br label %39, !dbg !312

; <label>:39:                                     ; preds = %32, %9
  %40 = load i32, i32* %2, align 4, !dbg !313
  ret i32 %40, !dbg !313
}

; Function Attrs: nounwind uwtable
define internal i32 @ResolutionDisplayTopologySetCB(%struct.RpcInData*) #0 !dbg !314 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.RpcInData*, align 8
  %4 = alloca %struct.drm_vmw_rect*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.RpcInData* %0, %struct.RpcInData** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %3, metadata !315, metadata !153), !dbg !316
  call void @llvm.dbg.declare(metadata %struct.drm_vmw_rect** %4, metadata !317, metadata !153), !dbg !319
  store %struct.drm_vmw_rect* null, %struct.drm_vmw_rect** %4, align 8, !dbg !319
  call void @llvm.dbg.declare(metadata i32* %5, metadata !320, metadata !153), !dbg !321
  call void @llvm.dbg.declare(metadata i32* %6, metadata !322, metadata !153), !dbg !323
  call void @llvm.dbg.declare(metadata i32* %7, metadata !324, metadata !153), !dbg !325
  store i32 0, i32* %7, align 4, !dbg !325
  call void @llvm.dbg.declare(metadata i8** %8, metadata !326, metadata !153), !dbg !327
  %9 = load i32, i32* getelementptr inbounds (%struct.KMSInfoType, %struct.KMSInfoType* @kmsInfo, i32 0, i32 0), align 4, !dbg !328
  %10 = icmp ne i32 %9, 0, !dbg !330
  br i1 %10, label %14, label %11, !dbg !331

; <label>:11:                                     ; preds = %1
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__FUNCTION__.ResolutionDisplayTopologySetCB, i32 0, i32 0)), !dbg !332
  %12 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !334
  %13 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %12, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i32 0, i32 0), i32 0), !dbg !335
  br label %93, !dbg !336

; <label>:14:                                     ; preds = %1
  %15 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !337
  %16 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %15, i32 0, i32 1, !dbg !339
  %17 = load i8*, i8** %16, align 8, !dbg !339
  %18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32* %5) #9, !dbg !340
  %19 = icmp ne i32 %18, 1, !dbg !341
  br i1 %19, label %20, label %23, !dbg !342

; <label>:20:                                     ; preds = %14
  %21 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !343
  %22 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i32 0, i32 0), i32 0), !dbg !345
  store i32 %22, i32* %2, align 4, !dbg !346
  br label %97, !dbg !346

; <label>:23:                                     ; preds = %14
  %24 = load i32, i32* %5, align 4, !dbg !347
  %25 = zext i32 %24 to i64, !dbg !347
  %26 = mul i64 16, %25, !dbg !348
  %27 = call noalias i8* @malloc(i64 %26) #9, !dbg !349
  %28 = bitcast i8* %27 to %struct.drm_vmw_rect*, !dbg !349
  store %struct.drm_vmw_rect* %28, %struct.drm_vmw_rect** %4, align 8, !dbg !350
  %29 = load %struct.drm_vmw_rect*, %struct.drm_vmw_rect** %4, align 8, !dbg !351
  %30 = icmp ne %struct.drm_vmw_rect* %29, null, !dbg !351
  br i1 %30, label %34, label %31, !dbg !353

; <label>:31:                                     ; preds = %23
  %32 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !354
  %33 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i32 0, i32 0), i32 0), !dbg !356
  store i32 0, i32* %2, align 4, !dbg !357
  br label %97, !dbg !357

; <label>:34:                                     ; preds = %23
  %35 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !358
  %36 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %35, i32 0, i32 1, !dbg !360
  %37 = load i8*, i8** %36, align 8, !dbg !360
  store i8* %37, i8** %8, align 8, !dbg !361
  store i32 0, i32* %6, align 4, !dbg !362
  br label %38, !dbg !363

; <label>:38:                                     ; preds = %80, %34
  %39 = load i32, i32* %6, align 4, !dbg !364
  %40 = load i32, i32* %5, align 4, !dbg !367
  %41 = icmp ult i32 %39, %40, !dbg !368
  br i1 %41, label %42, label %83, !dbg !369

; <label>:42:                                     ; preds = %38
  %43 = load i8*, i8** %8, align 8, !dbg !370
  %44 = call i8* @strchr(i8* %43, i32 44) #7, !dbg !372
  store i8* %44, i8** %8, align 8, !dbg !373
  %45 = load i8*, i8** %8, align 8, !dbg !374
  %46 = icmp ne i8* %45, null, !dbg !374
  br i1 %46, label %50, label %47, !dbg !376

; <label>:47:                                     ; preds = %42
  %48 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !377
  %49 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i32 0, i32 0), i32 0), !dbg !379
  br label %93, !dbg !380

; <label>:50:                                     ; preds = %42
  %51 = load i8*, i8** %8, align 8, !dbg !381
  %52 = getelementptr inbounds i8, i8* %51, i32 1, !dbg !381
  store i8* %52, i8** %8, align 8, !dbg !381
  %53 = load i8*, i8** %8, align 8, !dbg !382
  %54 = load i32, i32* %6, align 4, !dbg !384
  %55 = zext i32 %54 to i64, !dbg !385
  %56 = load %struct.drm_vmw_rect*, %struct.drm_vmw_rect** %4, align 8, !dbg !385
  %57 = getelementptr inbounds %struct.drm_vmw_rect, %struct.drm_vmw_rect* %56, i64 %55, !dbg !385
  %58 = getelementptr inbounds %struct.drm_vmw_rect, %struct.drm_vmw_rect* %57, i32 0, i32 0, !dbg !386
  %59 = load i32, i32* %6, align 4, !dbg !387
  %60 = zext i32 %59 to i64, !dbg !388
  %61 = load %struct.drm_vmw_rect*, %struct.drm_vmw_rect** %4, align 8, !dbg !388
  %62 = getelementptr inbounds %struct.drm_vmw_rect, %struct.drm_vmw_rect* %61, i64 %60, !dbg !388
  %63 = getelementptr inbounds %struct.drm_vmw_rect, %struct.drm_vmw_rect* %62, i32 0, i32 1, !dbg !389
  %64 = load i32, i32* %6, align 4, !dbg !390
  %65 = zext i32 %64 to i64, !dbg !391
  %66 = load %struct.drm_vmw_rect*, %struct.drm_vmw_rect** %4, align 8, !dbg !391
  %67 = getelementptr inbounds %struct.drm_vmw_rect, %struct.drm_vmw_rect* %66, i64 %65, !dbg !391
  %68 = getelementptr inbounds %struct.drm_vmw_rect, %struct.drm_vmw_rect* %67, i32 0, i32 2, !dbg !392
  %69 = load i32, i32* %6, align 4, !dbg !393
  %70 = zext i32 %69 to i64, !dbg !394
  %71 = load %struct.drm_vmw_rect*, %struct.drm_vmw_rect** %4, align 8, !dbg !394
  %72 = getelementptr inbounds %struct.drm_vmw_rect, %struct.drm_vmw_rect* %71, i64 %70, !dbg !394
  %73 = getelementptr inbounds %struct.drm_vmw_rect, %struct.drm_vmw_rect* %72, i32 0, i32 3, !dbg !395
  %74 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i32* %58, i32* %63, i32* %68, i32* %73) #9, !dbg !396
  %75 = icmp ne i32 %74, 4, !dbg !397
  br i1 %75, label %76, label %79, !dbg !398

; <label>:76:                                     ; preds = %50
  %77 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !399
  %78 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i32 0, i32 0), i32 0), !dbg !401
  br label %93, !dbg !402

; <label>:79:                                     ; preds = %50
  br label %80, !dbg !403

; <label>:80:                                     ; preds = %79
  %81 = load i32, i32* %6, align 4, !dbg !404
  %82 = add i32 %81, 1, !dbg !404
  store i32 %82, i32* %6, align 4, !dbg !404
  br label %38, !dbg !406, !llvm.loop !407

; <label>:83:                                     ; preds = %38
  %84 = load %struct.drm_vmw_rect*, %struct.drm_vmw_rect** %4, align 8, !dbg !409
  %85 = load i32, i32* %5, align 4, !dbg !410
  %86 = call i32 @ResolutionWriteToKernel(%struct.drm_vmw_rect* %84, i32 %85), !dbg !411
  store i32 %86, i32* %7, align 4, !dbg !412
  %87 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !413
  %88 = load i32, i32* %7, align 4, !dbg !414
  %89 = icmp ne i32 %88, 0, !dbg !414
  %90 = select i1 %89, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0), !dbg !414
  %91 = load i32, i32* %7, align 4, !dbg !415
  %92 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %87, i8* %90, i32 %91), !dbg !416
  br label %93, !dbg !416

; <label>:93:                                     ; preds = %83, %76, %47, %11
  %94 = load %struct.drm_vmw_rect*, %struct.drm_vmw_rect** %4, align 8, !dbg !417
  %95 = bitcast %struct.drm_vmw_rect* %94 to i8*, !dbg !417
  call void @free(i8* %95) #9, !dbg !418
  %96 = load i32, i32* %7, align 4, !dbg !419
  store i32 %96, i32* %2, align 4, !dbg !420
  br label %97, !dbg !420

; <label>:97:                                     ; preds = %93, %31, %20
  %98 = load i32, i32* %2, align 4, !dbg !421
  ret i32 %98, !dbg !421
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal %struct._GArray* @ResolutionKMSCapabilities(i8*, %struct.ToolsAppCtx*, i32, i8*) #0 !dbg !422 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ToolsAppCtx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [5 x %struct.ToolsAppCapability], align 16
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !425, metadata !153), !dbg !426
  store %struct.ToolsAppCtx* %1, %struct.ToolsAppCtx** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %6, metadata !427, metadata !153), !dbg !428
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !429, metadata !153), !dbg !430
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !431, metadata !153), !dbg !432
  call void @llvm.dbg.declare(metadata [5 x %struct.ToolsAppCapability]* %9, metadata !433, metadata !153), !dbg !446
  call void @llvm.dbg.declare(metadata i32* %10, metadata !447, metadata !153), !dbg !448
  store i32 0, i32* %10, align 4, !dbg !448
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.ResolutionKMSCapabilities, i32 0, i32 0)), !dbg !449
  %11 = load i32, i32* %10, align 4, !dbg !450
  %12 = zext i32 %11 to i64, !dbg !451
  %13 = getelementptr inbounds [5 x %struct.ToolsAppCapability], [5 x %struct.ToolsAppCapability]* %9, i64 0, i64 %12, !dbg !451
  %14 = getelementptr inbounds %struct.ToolsAppCapability, %struct.ToolsAppCapability* %13, i32 0, i32 0, !dbg !452
  store i32 0, i32* %14, align 8, !dbg !453
  %15 = load i32, i32* %10, align 4, !dbg !454
  %16 = zext i32 %15 to i64, !dbg !455
  %17 = getelementptr inbounds [5 x %struct.ToolsAppCapability], [5 x %struct.ToolsAppCapability]* %9, i64 0, i64 %16, !dbg !455
  %18 = getelementptr inbounds %struct.ToolsAppCapability, %struct.ToolsAppCapability* %17, i32 0, i32 1, !dbg !456
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), i8** %18, align 8, !dbg !457
  %19 = load i32, i32* %10, align 4, !dbg !458
  %20 = zext i32 %19 to i64, !dbg !459
  %21 = getelementptr inbounds [5 x %struct.ToolsAppCapability], [5 x %struct.ToolsAppCapability]* %9, i64 0, i64 %20, !dbg !459
  %22 = getelementptr inbounds %struct.ToolsAppCapability, %struct.ToolsAppCapability* %21, i32 0, i32 2, !dbg !460
  store i32 0, i32* %22, align 8, !dbg !461
  %23 = load i32, i32* %7, align 4, !dbg !462
  %24 = icmp ne i32 %23, 0, !dbg !462
  %25 = select i1 %24, i32 2, i32 0, !dbg !462
  %26 = load i32, i32* %10, align 4, !dbg !463
  %27 = zext i32 %26 to i64, !dbg !464
  %28 = getelementptr inbounds [5 x %struct.ToolsAppCapability], [5 x %struct.ToolsAppCapability]* %9, i64 0, i64 %27, !dbg !464
  %29 = getelementptr inbounds %struct.ToolsAppCapability, %struct.ToolsAppCapability* %28, i32 0, i32 3, !dbg !465
  store i32 %25, i32* %29, align 4, !dbg !466
  %30 = load i32, i32* %10, align 4, !dbg !467
  %31 = add i32 %30, 1, !dbg !467
  store i32 %31, i32* %10, align 4, !dbg !467
  %32 = load i32, i32* %10, align 4, !dbg !468
  %33 = zext i32 %32 to i64, !dbg !469
  %34 = getelementptr inbounds [5 x %struct.ToolsAppCapability], [5 x %struct.ToolsAppCapability]* %9, i64 0, i64 %33, !dbg !469
  %35 = getelementptr inbounds %struct.ToolsAppCapability, %struct.ToolsAppCapability* %34, i32 0, i32 0, !dbg !470
  store i32 0, i32* %35, align 8, !dbg !471
  %36 = load i32, i32* %10, align 4, !dbg !472
  %37 = zext i32 %36 to i64, !dbg !473
  %38 = getelementptr inbounds [5 x %struct.ToolsAppCapability], [5 x %struct.ToolsAppCapability]* %9, i64 0, i64 %37, !dbg !473
  %39 = getelementptr inbounds %struct.ToolsAppCapability, %struct.ToolsAppCapability* %38, i32 0, i32 1, !dbg !474
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0), i8** %39, align 8, !dbg !475
  %40 = load i32, i32* %10, align 4, !dbg !476
  %41 = zext i32 %40 to i64, !dbg !477
  %42 = getelementptr inbounds [5 x %struct.ToolsAppCapability], [5 x %struct.ToolsAppCapability]* %9, i64 0, i64 %41, !dbg !477
  %43 = getelementptr inbounds %struct.ToolsAppCapability, %struct.ToolsAppCapability* %42, i32 0, i32 2, !dbg !478
  store i32 0, i32* %43, align 8, !dbg !479
  %44 = load i32, i32* %7, align 4, !dbg !480
  %45 = icmp ne i32 %44, 0, !dbg !480
  %46 = select i1 %45, i32 1, i32 0, !dbg !480
  %47 = load i32, i32* %10, align 4, !dbg !481
  %48 = zext i32 %47 to i64, !dbg !482
  %49 = getelementptr inbounds [5 x %struct.ToolsAppCapability], [5 x %struct.ToolsAppCapability]* %9, i64 0, i64 %48, !dbg !482
  %50 = getelementptr inbounds %struct.ToolsAppCapability, %struct.ToolsAppCapability* %49, i32 0, i32 3, !dbg !483
  store i32 %46, i32* %50, align 4, !dbg !484
  %51 = load i32, i32* %10, align 4, !dbg !485
  %52 = add i32 %51, 1, !dbg !485
  store i32 %52, i32* %10, align 4, !dbg !485
  %53 = load i32, i32* %10, align 4, !dbg !486
  %54 = zext i32 %53 to i64, !dbg !487
  %55 = getelementptr inbounds [5 x %struct.ToolsAppCapability], [5 x %struct.ToolsAppCapability]* %9, i64 0, i64 %54, !dbg !487
  %56 = getelementptr inbounds %struct.ToolsAppCapability, %struct.ToolsAppCapability* %55, i32 0, i32 0, !dbg !488
  store i32 0, i32* %56, align 8, !dbg !489
  %57 = load i32, i32* %10, align 4, !dbg !490
  %58 = zext i32 %57 to i64, !dbg !491
  %59 = getelementptr inbounds [5 x %struct.ToolsAppCapability], [5 x %struct.ToolsAppCapability]* %9, i64 0, i64 %58, !dbg !491
  %60 = getelementptr inbounds %struct.ToolsAppCapability, %struct.ToolsAppCapability* %59, i32 0, i32 1, !dbg !492
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i8** %60, align 8, !dbg !493
  %61 = load i32, i32* %10, align 4, !dbg !494
  %62 = zext i32 %61 to i64, !dbg !495
  %63 = getelementptr inbounds [5 x %struct.ToolsAppCapability], [5 x %struct.ToolsAppCapability]* %9, i64 0, i64 %62, !dbg !495
  %64 = getelementptr inbounds %struct.ToolsAppCapability, %struct.ToolsAppCapability* %63, i32 0, i32 2, !dbg !496
  store i32 0, i32* %64, align 8, !dbg !497
  %65 = load i32, i32* %7, align 4, !dbg !498
  %66 = icmp ne i32 %65, 0, !dbg !498
  %67 = select i1 %66, i32 1, i32 0, !dbg !498
  %68 = load i32, i32* %10, align 4, !dbg !499
  %69 = zext i32 %68 to i64, !dbg !500
  %70 = getelementptr inbounds [5 x %struct.ToolsAppCapability], [5 x %struct.ToolsAppCapability]* %9, i64 0, i64 %69, !dbg !500
  %71 = getelementptr inbounds %struct.ToolsAppCapability, %struct.ToolsAppCapability* %70, i32 0, i32 3, !dbg !501
  store i32 %67, i32* %71, align 4, !dbg !502
  %72 = load i32, i32* %10, align 4, !dbg !503
  %73 = add i32 %72, 1, !dbg !503
  store i32 %73, i32* %10, align 4, !dbg !503
  %74 = load i32, i32* getelementptr inbounds (%struct.KMSInfoType, %struct.KMSInfoType* @kmsInfo, i32 0, i32 0), align 4, !dbg !504
  %75 = icmp ne i32 %74, 0, !dbg !506
  br i1 %75, label %76, label %96, !dbg !507

; <label>:76:                                     ; preds = %4
  %77 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %6, align 8, !dbg !508
  %78 = icmp ne %struct.ToolsAppCtx* %77, null, !dbg !508
  br i1 %78, label %79, label %96, !dbg !510

; <label>:79:                                     ; preds = %76
  %80 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %6, align 8, !dbg !511
  %81 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %80, i32 0, i32 5, !dbg !513
  %82 = load %struct._RpcChannel*, %struct._RpcChannel** %81, align 8, !dbg !513
  %83 = icmp ne %struct._RpcChannel* %82, null, !dbg !511
  br i1 %83, label %84, label %96, !dbg !514

; <label>:84:                                     ; preds = %79
  %85 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %6, align 8, !dbg !515
  %86 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %85, i32 0, i32 2, !dbg !517
  %87 = load i32, i32* %86, align 8, !dbg !517
  %88 = icmp ne i32 %87, 0, !dbg !515
  br i1 %88, label %89, label %96, !dbg !518

; <label>:89:                                     ; preds = %84
  %90 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %6, align 8, !dbg !519
  %91 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %90, i32 0, i32 5, !dbg !521
  %92 = load %struct._RpcChannel*, %struct._RpcChannel** %91, align 8, !dbg !521
  %93 = load i32, i32* %7, align 4, !dbg !522
  %94 = icmp ne i32 %93, 0, !dbg !522
  %95 = select i1 %94, i32 1, i32 0, !dbg !522
  call void @ResolutionKMSServerCapability(%struct._RpcChannel* %92, i32 %95), !dbg !523
  br label %96, !dbg !524

; <label>:96:                                     ; preds = %89, %84, %79, %76, %4
  %97 = getelementptr inbounds [5 x %struct.ToolsAppCapability], [5 x %struct.ToolsAppCapability]* %9, i32 0, i32 0, !dbg !525
  %98 = bitcast %struct.ToolsAppCapability* %97 to i8*, !dbg !525
  %99 = load i32, i32* %10, align 4, !dbg !526
  %100 = call %struct._GArray* @VMTools_WrapArray(i8* %98, i32 24, i32 %99), !dbg !527
  ret %struct._GArray* %100, !dbg !528
}

; Function Attrs: nounwind uwtable
define internal void @ResolutionKMSShutdown(i8*, %struct.ToolsAppCtx*, i8*) #0 !dbg !529 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ToolsAppCtx*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !532, metadata !153), !dbg !533
  store %struct.ToolsAppCtx* %1, %struct.ToolsAppCtx** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %5, metadata !534, metadata !153), !dbg !535
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !536, metadata !153), !dbg !537
  %7 = load i32, i32* getelementptr inbounds (%struct.KMSInfoType, %struct.KMSInfoType* @kmsInfo, i32 0, i32 0), align 4, !dbg !538
  %8 = icmp ne i32 %7, 0, !dbg !540
  br i1 %8, label %9, label %26, !dbg !541

; <label>:9:                                      ; preds = %3
  %10 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %5, align 8, !dbg !542
  %11 = icmp ne %struct.ToolsAppCtx* %10, null, !dbg !542
  br i1 %11, label %12, label %26, !dbg !544

; <label>:12:                                     ; preds = %9
  %13 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %5, align 8, !dbg !545
  %14 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %13, i32 0, i32 5, !dbg !547
  %15 = load %struct._RpcChannel*, %struct._RpcChannel** %14, align 8, !dbg !547
  %16 = icmp ne %struct._RpcChannel* %15, null, !dbg !545
  br i1 %16, label %17, label %26, !dbg !548

; <label>:17:                                     ; preds = %12
  %18 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %5, align 8, !dbg !549
  %19 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %18, i32 0, i32 2, !dbg !551
  %20 = load i32, i32* %19, align 8, !dbg !551
  %21 = icmp ne i32 %20, 0, !dbg !549
  br i1 %21, label %22, label %26, !dbg !552

; <label>:22:                                     ; preds = %17
  %23 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %5, align 8, !dbg !553
  %24 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %23, i32 0, i32 5, !dbg !555
  %25 = load %struct._RpcChannel*, %struct._RpcChannel** %24, align 8, !dbg !555
  call void @ResolutionKMSServerCapability(%struct._RpcChannel* %25, i32 0), !dbg !556
  br label %26, !dbg !557

; <label>:26:                                     ; preds = %22, %17, %12, %9, %3
  %27 = load i32, i32* getelementptr inbounds (%struct.KMSInfoType, %struct.KMSInfoType* @kmsInfo, i32 0, i32 0), align 4, !dbg !558
  %28 = icmp ne i32 %27, 0, !dbg !560
  br i1 %28, label %29, label %31, !dbg !561

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* getelementptr inbounds (%struct.KMSInfoType, %struct.KMSInfoType* @kmsInfo, i32 0, i32 1), align 4, !dbg !562
  call void @resolutionDRMClose(i32 %30), !dbg !564
  store i32 0, i32* getelementptr inbounds (%struct.KMSInfoType, %struct.KMSInfoType* @kmsInfo, i32 0, i32 0), align 4, !dbg !565
  br label %31, !dbg !566

; <label>:31:                                     ; preds = %29, %26
  ret void, !dbg !567
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

declare %struct._GArray* @VMTools_WrapArray(i8*, i32, i32) #3

declare i32 @resolutionCheckForKMS(%struct.ToolsAppCtx*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #5

declare void @g_log(i8*, i32, i8*, ...) #3

declare i32 @RpcChannel_SetRetVals(%struct.RpcInData*, i8*, i32) #3

declare signext i8 @StrUtil_GetNextUintToken(i32*, i32*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @ResolutionWriteToKernel(%struct.drm_vmw_rect*, i32) #0 !dbg !568 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_vmw_rect*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_vmw_update_layout_arg, align 8
  %7 = alloca i32, align 4
  store %struct.drm_vmw_rect* %0, %struct.drm_vmw_rect** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_vmw_rect** %4, metadata !573, metadata !153), !dbg !574
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !575, metadata !153), !dbg !576
  call void @llvm.dbg.declare(metadata %struct.drm_vmw_update_layout_arg* %6, metadata !577, metadata !153), !dbg !584
  call void @llvm.dbg.declare(metadata i32* %7, metadata !585, metadata !153), !dbg !586
  %8 = bitcast %struct.drm_vmw_update_layout_arg* %6 to i8*, !dbg !587
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 16, i32 8, i1 false), !dbg !587
  %9 = load i32, i32* %5, align 4, !dbg !588
  %10 = getelementptr inbounds %struct.drm_vmw_update_layout_arg, %struct.drm_vmw_update_layout_arg* %6, i32 0, i32 0, !dbg !589
  store i32 %9, i32* %10, align 8, !dbg !590
  %11 = load %struct.drm_vmw_rect*, %struct.drm_vmw_rect** %4, align 8, !dbg !591
  %12 = ptrtoint %struct.drm_vmw_rect* %11 to i64, !dbg !592
  %13 = getelementptr inbounds %struct.drm_vmw_update_layout_arg, %struct.drm_vmw_update_layout_arg* %6, i32 0, i32 2, !dbg !593
  store i64 %12, i64* %13, align 8, !dbg !594
  %14 = load %struct.Drm2Interface*, %struct.Drm2Interface** @drmi, align 8, !dbg !595
  %15 = getelementptr inbounds %struct.Drm2Interface, %struct.Drm2Interface* %14, i32 0, i32 5, !dbg !596
  %16 = load i32 (i32, i64, i8*, i64)*, i32 (i32, i64, i8*, i64)** %15, align 8, !dbg !596
  %17 = load i32, i32* getelementptr inbounds (%struct.KMSInfoType, %struct.KMSInfoType* @kmsInfo, i32 0, i32 1), align 4, !dbg !597
  %18 = bitcast %struct.drm_vmw_update_layout_arg* %6 to i8*, !dbg !598
  %19 = call i32 %16(i32 %17, i64 20, i8* %18, i64 16), !dbg !595
  store i32 %19, i32* %7, align 4, !dbg !599
  %20 = load i32, i32* %7, align 4, !dbg !600
  %21 = icmp slt i32 %20, 0, !dbg !602
  br i1 %21, label %22, label %24, !dbg !603

; <label>:22:                                     ; preds = %2
  %23 = load i32, i32* %7, align 4, !dbg !604
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.ResolutionWriteToKernel, i32 0, i32 0), i32 %23), !dbg !606
  store i32 0, i32* %3, align 4, !dbg !607
  br label %25, !dbg !607

; <label>:24:                                     ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !608
  br label %25, !dbg !608

; <label>:25:                                     ; preds = %24, %22
  %26 = load i32, i32* %3, align 4, !dbg !609
  ret i32 %26, !dbg !609
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #6

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind
declare void @free(i8*) #6

; Function Attrs: nounwind uwtable
define internal void @ResolutionKMSServerCapability(%struct._RpcChannel*, i32) #0 !dbg !610 {
  %3 = alloca %struct._RpcChannel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %3, metadata !613, metadata !153), !dbg !614
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !615, metadata !153), !dbg !616
  call void @llvm.dbg.declare(metadata i8** %5, metadata !617, metadata !153), !dbg !618
  %7 = load i8*, i8** @rpcChannelName, align 8, !dbg !619
  %8 = icmp ne i8* %7, null, !dbg !619
  br i1 %8, label %10, label %9, !dbg !621

; <label>:9:                                      ; preds = %2
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.30, i32 0, i32 0)), !dbg !622
  br label %41, !dbg !624

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** @rpcChannelName, align 8, !dbg !625
  %12 = load i32, i32* %4, align 4, !dbg !626
  %13 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i32 0, i32 0), i8* %11, i32 %12), !dbg !627
  store i8* %13, i8** %5, align 8, !dbg !628
  %14 = load %struct._RpcChannel*, %struct._RpcChannel** %3, align 8, !dbg !629
  %15 = load i8*, i8** %5, align 8, !dbg !631
  %16 = load i8*, i8** %5, align 8, !dbg !632
  %17 = call i64 @strlen(i8* %16) #7, !dbg !633
  %18 = call i32 @RpcChannel_Send(%struct._RpcChannel* %14, i8* %15, i64 %17, i8** null, i64* null), !dbg !634
  %19 = icmp ne i32 %18, 0, !dbg !636
  br i1 %19, label %21, label %20, !dbg !637

; <label>:20:                                     ; preds = %10
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__FUNCTION__.ResolutionKMSServerCapability, i32 0, i32 0)), !dbg !638
  br label %21, !dbg !640

; <label>:21:                                     ; preds = %20, %10
  %22 = load i32, i32* %4, align 4, !dbg !641
  %23 = icmp eq i32 %22, 1, !dbg !643
  br i1 %23, label %24, label %39, !dbg !644

; <label>:24:                                     ; preds = %21
  call void @llvm.dbg.declare(metadata i8** %6, metadata !645, metadata !153), !dbg !647
  %25 = load i8*, i8** @rpcChannelName, align 8, !dbg !648
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)) #7, !dbg !649
  %27 = icmp eq i32 %26, 0, !dbg !650
  %28 = select i1 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), !dbg !649
  %29 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i32 0, i32 0), i8* %28), !dbg !651
  store i8* %29, i8** %6, align 8, !dbg !652
  %30 = load %struct._RpcChannel*, %struct._RpcChannel** %3, align 8, !dbg !653
  %31 = load i8*, i8** %6, align 8, !dbg !655
  %32 = load i8*, i8** %6, align 8, !dbg !656
  %33 = call i64 @strlen(i8* %32) #7, !dbg !657
  %34 = call i32 @RpcChannel_Send(%struct._RpcChannel* %30, i8* %31, i64 %33, i8** null, i64* null), !dbg !658
  %35 = icmp ne i32 %34, 0, !dbg !660
  br i1 %35, label %37, label %36, !dbg !661

; <label>:36:                                     ; preds = %24
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__FUNCTION__.ResolutionKMSServerCapability, i32 0, i32 0)), !dbg !662
  br label %37, !dbg !664

; <label>:37:                                     ; preds = %36, %24
  %38 = load i8*, i8** %6, align 8, !dbg !665
  call void @g_free(i8* %38), !dbg !666
  br label %39, !dbg !667

; <label>:39:                                     ; preds = %37, %21
  %40 = load i8*, i8** %5, align 8, !dbg !668
  call void @g_free(i8* %40), !dbg !669
  br label %41, !dbg !670

; <label>:41:                                     ; preds = %39, %9
  ret void, !dbg !671
}

declare noalias i8* @g_strdup_printf(i8*, ...) #3

declare i32 @RpcChannel_Send(%struct._RpcChannel*, i8*, i64, i8**, i64*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare void @g_free(i8*) #3

declare void @resolutionDRMClose(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!149, !150}
!llvm.ident = !{!151}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !65, globals: !67)
!1 = !DIFile(filename: "libresolutionKMS_la-resolutionKMS.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1496")
!2 = !{!3, !7, !13, !25, !30}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 232, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/plugin.h", directory: "/home/lichi/Desktop/open-vm-tools/line1496")
!5 = !{!6}
!6 = !DIEnumerator(name: "TOOLS_CORE_API_V1", value: 1)
!7 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 339, size: 32, align: 32, elements: !8)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "TOOLS_APP_GUESTRPC", value: 1)
!10 = !DIEnumerator(name: "TOOLS_APP_SIGNALS", value: 2)
!11 = !DIEnumerator(name: "TOOLS_APP_PROVIDER", value: 3)
!12 = !DIEnumerator(name: "TOOLS_SVC_PROPERTY", value: 4)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 51, size: 32, align: 32, elements: !15)
!14 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1496")
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
!31 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/guestrpc/capabilities.h", directory: "/home/lichi/Desktop/open-vm-tools/line1496")
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
!65 = !{!66}
!66 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!67 = !{!68, !75, !142, !148}
!68 = distinct !DIGlobalVariable(name: "vm_version", scope: !0, file: !69, line: 48, type: !70, isLocal: false, isDefinition: true, variable: [20 x i8]* @vm_version)
!69 = !DIFile(filename: "resolutionKMS.c", directory: "/home/lichi/Desktop/open-vm-tools/line1496")
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 160, align: 8, elements: !73)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!73 = !{!74}
!74 = !DISubrange(count: 20)
!75 = distinct !DIGlobalVariable(name: "regData", scope: !76, file: !69, line: 444, type: !80, isLocal: true, isDefinition: true, variable: %struct.ToolsPluginData* @ToolsOnLoad.regData)
!76 = distinct !DISubprogram(name: "ToolsOnLoad", scope: !69, file: !69, line: 437, type: !77, isLocal: false, isDefinition: true, scopeLine: 438, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!77 = !DISubroutineType(types: !78)
!78 = !{!79, !105}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsPluginData", file: !4, line: 545, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsPluginData", file: !4, line: 501, size: 256, align: 64, elements: !82)
!82 = !{!83, !85, !98, !140}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !81, file: !4, line: 503, baseType: !84, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !81, file: !4, line: 508, baseType: !86, size: 64, align: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "GArray", file: !88, line: 37, baseType: !89)
!88 = !DIFile(filename: "/usr/include/glib-2.0/glib/garray.h", directory: "/home/lichi/Desktop/open-vm-tools/line1496")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GArray", file: !88, line: 41, size: 128, align: 64, elements: !90)
!90 = !{!91, !95}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !89, file: !88, line: 43, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !94, line: 46, baseType: !72)
!94 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1496")
!95 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !89, file: !88, line: 44, baseType: !96, size: 32, align: 32, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !94, line: 55, baseType: !97)
!97 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "errorCb", scope: !81, file: !4, line: 539, baseType: !99, size: 64, align: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !105, !138, !136, !139}
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !94, line: 50, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !94, line: 49, baseType: !104)
!104 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppCtx", file: !4, line: 274, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppCtx", file: !4, line: 241, size: 576, align: 64, elements: !108)
!108 = !{!109, !111, !114, !115, !116, !121, !126, !131, !132, !133, !135}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !107, file: !4, line: 243, baseType: !110, size: 32, align: 32)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCoreAPI", file: !4, line: 234, baseType: !3)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !107, file: !4, line: 245, baseType: !112, size: 64, align: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "isVMware", scope: !107, file: !4, line: 247, baseType: !102, size: 32, align: 32, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "errorCode", scope: !107, file: !4, line: 249, baseType: !104, size: 32, align: 32, offset: 160)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "mainLoop", scope: !107, file: !4, line: 251, baseType: !117, size: 64, align: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainLoop", file: !119, line: 56, baseType: !120)
!119 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line1496")
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainLoop", file: !119, line: 56, flags: DIFlagFwdDecl)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !107, file: !4, line: 253, baseType: !122, size: 64, align: 64, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !124, line: 48, baseType: !125)
!124 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line1496")
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !124, line: 48, flags: DIFlagFwdDecl)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !107, file: !4, line: 255, baseType: !127, size: 64, align: 64, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !129, line: 48, baseType: !130)
!129 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1496")
!130 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !129, line: 48, flags: DIFlagFwdDecl)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "blockFD", scope: !107, file: !4, line: 261, baseType: !104, size: 32, align: 32, offset: 384)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "uinputFD", scope: !107, file: !4, line: 263, baseType: !104, size: 32, align: 32, offset: 416)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !107, file: !4, line: 265, baseType: !134, size: 64, align: 64, offset: 448)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "serviceObj", scope: !107, file: !4, line: 273, baseType: !136, size: 64, align: 64, offset: 512)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !94, line: 77, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppType", file: !4, line: 360, baseType: !7)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !81, file: !4, line: 544, baseType: !136, size: 64, align: 64, offset: 192)
!141 = !{}
!142 = distinct !DIGlobalVariable(name: "kmsInfo", scope: !0, file: !69, line: 68, type: !143, isLocal: false, isDefinition: true, variable: %struct.KMSInfoType* @kmsInfo)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "KMSInfoType", file: !69, line: 63, baseType: !144)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !69, line: 60, size: 64, align: 32, elements: !145)
!145 = !{!146, !147}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !144, file: !69, line: 61, baseType: !102, size: 32, align: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !144, file: !69, line: 62, baseType: !104, size: 32, align: 32, offset: 32)
!148 = distinct !DIGlobalVariable(name: "rpcChannelName", scope: !0, file: !69, line: 74, type: !84, isLocal: true, isDefinition: true, variable: i8** @rpcChannelName)
!149 = !{i32 2, !"Dwarf Version", i32 4}
!150 = !{i32 2, !"Debug Info Version", i32 3}
!151 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!152 = !DILocalVariable(name: "ctx", arg: 1, scope: !76, file: !69, line: 437, type: !105)
!153 = !DIExpression()
!154 = !DILocation(line: 437, column: 26, scope: !76)
!155 = !DILocalVariable(name: "rpcs", scope: !76, file: !69, line: 439, type: !156)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 768, align: 64, elements: !185)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannelCallback", file: !124, line: 115, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcChannelCallback", file: !124, line: 94, size: 384, align: 64, elements: !159)
!159 = !{!160, !161, !181, !182, !183, !184}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !158, file: !124, line: 96, baseType: !84, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !158, file: !124, line: 98, baseType: !162, size: 64, align: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcIn_Callback", file: !124, line: 90, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!102, !166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcInData", file: !124, line: 77, baseType: !168)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcInData", file: !124, line: 51, size: 512, align: 64, elements: !169)
!169 = !{!170, !171, !172, !175, !177, !178, !179, !180}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !168, file: !124, line: 53, baseType: !84, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !168, file: !124, line: 58, baseType: !84, size: 64, align: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "argsSize", scope: !168, file: !124, line: 60, baseType: !173, size: 64, align: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !174, line: 216, baseType: !66)
!174 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1496")
!175 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !168, file: !124, line: 65, baseType: !176, size: 64, align: 64, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "resultLen", scope: !168, file: !124, line: 67, baseType: !173, size: 64, align: 64, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "freeResult", scope: !168, file: !124, line: 72, baseType: !102, size: 32, align: 32, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "appCtx", scope: !168, file: !124, line: 74, baseType: !137, size: 64, align: 64, offset: 384)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !168, file: !124, line: 76, baseType: !137, size: 64, align: 64, offset: 448)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !158, file: !124, line: 100, baseType: !136, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "xdrIn", scope: !158, file: !124, line: 102, baseType: !136, size: 64, align: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "xdrOut", scope: !158, file: !124, line: 109, baseType: !136, size: 64, align: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "xdrInSize", scope: !158, file: !124, line: 114, baseType: !173, size: 64, align: 64, offset: 320)
!185 = !{!186}
!186 = !DISubrange(count: 2)
!187 = !DILocation(line: 439, column: 23, scope: !76)
!188 = !DILocalVariable(name: "sigs", scope: !76, file: !69, line: 450, type: !189)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 384, align: 64, elements: !185)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsPluginSignalCb", file: !4, line: 484, baseType: !191)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsPluginSignalCb", file: !4, line: 480, size: 192, align: 64, elements: !192)
!192 = !{!193, !194, !195}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "signame", scope: !191, file: !4, line: 481, baseType: !112, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !191, file: !4, line: 482, baseType: !136, size: 64, align: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !191, file: !4, line: 483, baseType: !136, size: 64, align: 64, offset: 128)
!196 = !DILocation(line: 450, column: 24, scope: !76)
!197 = !DILocalVariable(name: "regs", scope: !76, file: !69, line: 455, type: !198)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 256, align: 64, elements: !185)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppReg", file: !4, line: 450, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppReg", file: !4, line: 447, size: 128, align: 64, elements: !201)
!201 = !{!202, !203}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !200, file: !4, line: 448, baseType: !138, size: 32, align: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !200, file: !4, line: 449, baseType: !86, size: 64, align: 64, offset: 64)
!204 = !DILocation(line: 455, column: 16, scope: !76)
!205 = !DILocation(line: 455, column: 25, scope: !76)
!206 = !DILocation(line: 456, column: 7, scope: !76)
!207 = !DILocation(line: 457, column: 7, scope: !76)
!208 = !DILocation(line: 457, column: 46, scope: !76)
!209 = !DILocation(line: 457, column: 28, scope: !76)
!210 = !DILocation(line: 464, column: 9, scope: !211)
!211 = distinct !DILexicalBlock(scope: !76, file: !69, line: 464, column: 8)
!212 = !DILocation(line: 464, column: 14, scope: !211)
!213 = !DILocation(line: 464, column: 8, scope: !76)
!214 = !DILocation(line: 465, column: 7, scope: !215)
!215 = distinct !DILexicalBlock(scope: !211, file: !69, line: 464, column: 24)
!216 = !DILocation(line: 468, column: 39, scope: !76)
!217 = !DILocation(line: 468, column: 17, scope: !76)
!218 = !DILocation(line: 468, column: 15, scope: !76)
!219 = !DILocation(line: 469, column: 16, scope: !220)
!220 = distinct !DILexicalBlock(scope: !76, file: !69, line: 469, column: 8)
!221 = !DILocation(line: 469, column: 19, scope: !220)
!222 = !DILocation(line: 469, column: 8, scope: !76)
!223 = !DILocation(line: 470, column: 7, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !69, line: 469, column: 24)
!225 = !DILocation(line: 472, column: 24, scope: !76)
!226 = !DILocation(line: 479, column: 15, scope: !227)
!227 = distinct !DILexicalBlock(scope: !76, file: !69, line: 479, column: 8)
!228 = !DILocation(line: 479, column: 20, scope: !227)
!229 = !DILocation(line: 479, column: 8, scope: !227)
!230 = !DILocation(line: 479, column: 35, scope: !227)
!231 = !DILocation(line: 479, column: 8, scope: !76)
!232 = !DILocation(line: 480, column: 22, scope: !233)
!233 = distinct !DILexicalBlock(scope: !227, file: !69, line: 479, column: 41)
!234 = !DILocation(line: 481, column: 4, scope: !233)
!235 = !DILocation(line: 481, column: 22, scope: !236)
!236 = !DILexicalBlockFile(scope: !237, file: !69, discriminator: 1)
!237 = distinct !DILexicalBlock(scope: !227, file: !69, line: 481, column: 15)
!238 = !DILocation(line: 481, column: 27, scope: !236)
!239 = !DILocation(line: 481, column: 15, scope: !236)
!240 = !DILocation(line: 481, column: 42, scope: !236)
!241 = !DILocation(line: 482, column: 22, scope: !242)
!242 = distinct !DILexicalBlock(scope: !237, file: !69, line: 481, column: 48)
!243 = !DILocation(line: 483, column: 4, scope: !242)
!244 = !DILocation(line: 484, column: 7, scope: !245)
!245 = distinct !DILexicalBlock(scope: !237, file: !69, line: 483, column: 11)
!246 = !DILocation(line: 487, column: 37, scope: !76)
!247 = !DILocation(line: 487, column: 19, scope: !76)
!248 = !DILocation(line: 487, column: 4, scope: !76)
!249 = !DILocation(line: 487, column: 12, scope: !76)
!250 = !DILocation(line: 487, column: 17, scope: !76)
!251 = !DILocation(line: 488, column: 37, scope: !76)
!252 = !DILocation(line: 488, column: 19, scope: !76)
!253 = !DILocation(line: 488, column: 17, scope: !76)
!254 = !DILocation(line: 489, column: 4, scope: !76)
!255 = !DILocation(line: 490, column: 1, scope: !76)
!256 = distinct !DISubprogram(name: "ResolutionResolutionSetCB", scope: !69, file: !69, line: 135, type: !164, isLocal: true, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!257 = !DILocalVariable(name: "data", arg: 1, scope: !256, file: !69, line: 135, type: !166)
!258 = !DILocation(line: 135, column: 38, scope: !256)
!259 = !DILocalVariable(name: "rect", scope: !256, file: !69, line: 137, type: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vmw_rect", file: !261, line: 119, size: 128, align: 32, elements: !262)
!261 = !DIFile(filename: "../resolutionSet/resolutionDL.h", directory: "/home/lichi/Desktop/open-vm-tools/line1496")
!262 = !{!263, !266, !267, !270}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !260, file: !261, line: 120, baseType: !264, size: 32, align: 32)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !265, line: 196, baseType: !104)
!265 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1496")
!266 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !260, file: !261, line: 121, baseType: !264, size: 32, align: 32, offset: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !260, file: !261, line: 122, baseType: !268, size: 32, align: 32, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !269, line: 51, baseType: !97)
!269 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1496")
!270 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !260, file: !261, line: 123, baseType: !268, size: 32, align: 32, offset: 96)
!271 = !DILocation(line: 137, column: 24, scope: !256)
!272 = !DILocalVariable(name: "index", scope: !256, file: !69, line: 138, type: !97)
!273 = !DILocation(line: 138, column: 17, scope: !256)
!274 = !DILocalVariable(name: "retval", scope: !256, file: !69, line: 139, type: !102)
!275 = !DILocation(line: 139, column: 13, scope: !256)
!276 = !DILocation(line: 141, column: 17, scope: !277)
!277 = distinct !DILexicalBlock(scope: !256, file: !69, line: 141, column: 8)
!278 = !DILocation(line: 141, column: 9, scope: !277)
!279 = !DILocation(line: 141, column: 8, scope: !256)
!280 = !DILocation(line: 142, column: 7, scope: !281)
!281 = distinct !DILexicalBlock(scope: !277, file: !69, line: 141, column: 30)
!282 = !DILocation(line: 144, column: 36, scope: !281)
!283 = !DILocation(line: 144, column: 14, scope: !281)
!284 = !DILocation(line: 144, column: 7, scope: !281)
!285 = !DILocation(line: 147, column: 9, scope: !256)
!286 = !DILocation(line: 147, column: 11, scope: !256)
!287 = !DILocation(line: 148, column: 9, scope: !256)
!288 = !DILocation(line: 148, column: 11, scope: !256)
!289 = !DILocation(line: 151, column: 40, scope: !290)
!290 = distinct !DILexicalBlock(scope: !256, file: !69, line: 151, column: 8)
!291 = !DILocation(line: 151, column: 51, scope: !290)
!292 = !DILocation(line: 151, column: 57, scope: !290)
!293 = !DILocation(line: 151, column: 9, scope: !290)
!294 = !DILocation(line: 151, column: 8, scope: !256)
!295 = !DILocation(line: 152, column: 7, scope: !296)
!296 = distinct !DILexicalBlock(scope: !290, file: !69, line: 151, column: 69)
!297 = !DILocation(line: 154, column: 40, scope: !298)
!298 = distinct !DILexicalBlock(scope: !256, file: !69, line: 154, column: 8)
!299 = !DILocation(line: 154, column: 51, scope: !298)
!300 = !DILocation(line: 154, column: 57, scope: !298)
!301 = !DILocation(line: 154, column: 9, scope: !298)
!302 = !DILocation(line: 154, column: 8, scope: !256)
!303 = !DILocation(line: 155, column: 7, scope: !304)
!304 = distinct !DILexicalBlock(scope: !298, file: !69, line: 154, column: 68)
!305 = !DILocation(line: 158, column: 13, scope: !256)
!306 = !DILocation(line: 158, column: 11, scope: !256)
!307 = !DILocation(line: 158, column: 4, scope: !256)
!308 = !DILocation(line: 161, column: 33, scope: !256)
!309 = !DILocation(line: 161, column: 39, scope: !256)
!310 = !DILocation(line: 161, column: 74, scope: !256)
!311 = !DILocation(line: 161, column: 11, scope: !256)
!312 = !DILocation(line: 161, column: 4, scope: !256)
!313 = !DILocation(line: 162, column: 1, scope: !256)
!314 = distinct !DISubprogram(name: "ResolutionDisplayTopologySetCB", scope: !69, file: !69, line: 184, type: !164, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!315 = !DILocalVariable(name: "data", arg: 1, scope: !314, file: !69, line: 184, type: !166)
!316 = !DILocation(line: 184, column: 43, scope: !314)
!317 = !DILocalVariable(name: "rects", scope: !314, file: !69, line: 186, type: !318)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!319 = !DILocation(line: 186, column: 25, scope: !314)
!320 = !DILocalVariable(name: "count", scope: !314, file: !69, line: 187, type: !97)
!321 = !DILocation(line: 187, column: 17, scope: !314)
!322 = !DILocalVariable(name: "i", scope: !314, file: !69, line: 187, type: !97)
!323 = !DILocation(line: 187, column: 24, scope: !314)
!324 = !DILocalVariable(name: "success", scope: !314, file: !69, line: 188, type: !102)
!325 = !DILocation(line: 188, column: 13, scope: !314)
!326 = !DILocalVariable(name: "p", scope: !314, file: !69, line: 189, type: !84)
!327 = !DILocation(line: 189, column: 16, scope: !314)
!328 = !DILocation(line: 191, column: 17, scope: !329)
!329 = distinct !DILexicalBlock(scope: !314, file: !69, line: 191, column: 8)
!330 = !DILocation(line: 191, column: 9, scope: !329)
!331 = !DILocation(line: 191, column: 8, scope: !314)
!332 = !DILocation(line: 192, column: 7, scope: !333)
!333 = distinct !DILexicalBlock(scope: !329, file: !69, line: 191, column: 30)
!334 = !DILocation(line: 194, column: 29, scope: !333)
!335 = !DILocation(line: 194, column: 7, scope: !333)
!336 = !DILocation(line: 195, column: 7, scope: !333)
!337 = !DILocation(line: 206, column: 15, scope: !338)
!338 = distinct !DILexicalBlock(scope: !314, file: !69, line: 206, column: 8)
!339 = !DILocation(line: 206, column: 21, scope: !338)
!340 = !DILocation(line: 206, column: 8, scope: !338)
!341 = !DILocation(line: 206, column: 41, scope: !338)
!342 = !DILocation(line: 206, column: 8, scope: !314)
!343 = !DILocation(line: 207, column: 36, scope: !344)
!344 = distinct !DILexicalBlock(scope: !338, file: !69, line: 206, column: 47)
!345 = !DILocation(line: 207, column: 14, scope: !344)
!346 = !DILocation(line: 207, column: 7, scope: !344)
!347 = !DILocation(line: 212, column: 35, scope: !314)
!348 = !DILocation(line: 212, column: 33, scope: !314)
!349 = !DILocation(line: 212, column: 12, scope: !314)
!350 = !DILocation(line: 212, column: 10, scope: !314)
!351 = !DILocation(line: 213, column: 9, scope: !352)
!352 = distinct !DILexicalBlock(scope: !314, file: !69, line: 213, column: 8)
!353 = !DILocation(line: 213, column: 8, scope: !314)
!354 = !DILocation(line: 214, column: 29, scope: !355)
!355 = distinct !DILexicalBlock(scope: !352, file: !69, line: 213, column: 16)
!356 = !DILocation(line: 214, column: 7, scope: !355)
!357 = !DILocation(line: 217, column: 7, scope: !355)
!358 = !DILocation(line: 220, column: 13, scope: !359)
!359 = distinct !DILexicalBlock(scope: !314, file: !69, line: 220, column: 4)
!360 = !DILocation(line: 220, column: 19, scope: !359)
!361 = !DILocation(line: 220, column: 11, scope: !359)
!362 = !DILocation(line: 220, column: 27, scope: !359)
!363 = !DILocation(line: 220, column: 9, scope: !359)
!364 = !DILocation(line: 220, column: 32, scope: !365)
!365 = !DILexicalBlockFile(scope: !366, file: !69, discriminator: 1)
!366 = distinct !DILexicalBlock(scope: !359, file: !69, line: 220, column: 4)
!367 = !DILocation(line: 220, column: 36, scope: !365)
!368 = !DILocation(line: 220, column: 34, scope: !365)
!369 = !DILocation(line: 220, column: 4, scope: !365)
!370 = !DILocation(line: 221, column: 18, scope: !371)
!371 = distinct !DILexicalBlock(scope: !366, file: !69, line: 220, column: 48)
!372 = !DILocation(line: 221, column: 11, scope: !371)
!373 = !DILocation(line: 221, column: 9, scope: !371)
!374 = !DILocation(line: 222, column: 12, scope: !375)
!375 = distinct !DILexicalBlock(scope: !371, file: !69, line: 222, column: 11)
!376 = !DILocation(line: 222, column: 11, scope: !371)
!377 = !DILocation(line: 223, column: 32, scope: !378)
!378 = distinct !DILexicalBlock(scope: !375, file: !69, line: 222, column: 15)
!379 = !DILocation(line: 223, column: 10, scope: !378)
!380 = !DILocation(line: 226, column: 10, scope: !378)
!381 = !DILocation(line: 228, column: 8, scope: !371)
!382 = !DILocation(line: 230, column: 18, scope: !383)
!383 = distinct !DILexicalBlock(scope: !371, file: !69, line: 230, column: 11)
!384 = !DILocation(line: 230, column: 45, scope: !383)
!385 = !DILocation(line: 230, column: 39, scope: !383)
!386 = !DILocation(line: 230, column: 48, scope: !383)
!387 = !DILocation(line: 231, column: 25, scope: !383)
!388 = !DILocation(line: 231, column: 19, scope: !383)
!389 = !DILocation(line: 231, column: 28, scope: !383)
!390 = !DILocation(line: 231, column: 38, scope: !383)
!391 = !DILocation(line: 231, column: 32, scope: !383)
!392 = !DILocation(line: 231, column: 41, scope: !383)
!393 = !DILocation(line: 231, column: 51, scope: !383)
!394 = !DILocation(line: 231, column: 45, scope: !383)
!395 = !DILocation(line: 231, column: 54, scope: !383)
!396 = !DILocation(line: 230, column: 11, scope: !383)
!397 = !DILocation(line: 231, column: 57, scope: !383)
!398 = !DILocation(line: 230, column: 11, scope: !371)
!399 = !DILocation(line: 232, column: 32, scope: !400)
!400 = distinct !DILexicalBlock(scope: !383, file: !69, line: 231, column: 63)
!401 = !DILocation(line: 232, column: 10, scope: !400)
!402 = !DILocation(line: 235, column: 10, scope: !400)
!403 = !DILocation(line: 237, column: 4, scope: !371)
!404 = !DILocation(line: 220, column: 44, scope: !405)
!405 = !DILexicalBlockFile(scope: !366, file: !69, discriminator: 2)
!406 = !DILocation(line: 220, column: 4, scope: !405)
!407 = distinct !{!407, !408}
!408 = !DILocation(line: 220, column: 4, scope: !314)
!409 = !DILocation(line: 239, column: 38, scope: !314)
!410 = !DILocation(line: 239, column: 45, scope: !314)
!411 = !DILocation(line: 239, column: 14, scope: !314)
!412 = !DILocation(line: 239, column: 12, scope: !314)
!413 = !DILocation(line: 240, column: 26, scope: !314)
!414 = !DILocation(line: 240, column: 32, scope: !314)
!415 = !DILocation(line: 240, column: 79, scope: !314)
!416 = !DILocation(line: 240, column: 4, scope: !314)
!417 = !DILocation(line: 242, column: 9, scope: !314)
!418 = !DILocation(line: 242, column: 4, scope: !314)
!419 = !DILocation(line: 243, column: 11, scope: !314)
!420 = !DILocation(line: 243, column: 4, scope: !314)
!421 = !DILocation(line: 244, column: 1, scope: !314)
!422 = distinct !DISubprogram(name: "ResolutionKMSCapabilities", scope: !69, file: !69, line: 357, type: !423, isLocal: true, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!423 = !DISubroutineType(types: !424)
!424 = !{!86, !136, !105, !102, !136}
!425 = !DILocalVariable(name: "src", arg: 1, scope: !422, file: !69, line: 357, type: !136)
!426 = !DILocation(line: 357, column: 36, scope: !422)
!427 = !DILocalVariable(name: "ctx", arg: 2, scope: !422, file: !69, line: 358, type: !105)
!428 = !DILocation(line: 358, column: 40, scope: !422)
!429 = !DILocalVariable(name: "set", arg: 3, scope: !422, file: !69, line: 359, type: !102)
!430 = !DILocation(line: 359, column: 36, scope: !422)
!431 = !DILocalVariable(name: "data", arg: 4, scope: !422, file: !69, line: 361, type: !136)
!432 = !DILocation(line: 361, column: 36, scope: !422)
!433 = !DILocalVariable(name: "capabilityArray", scope: !422, file: !69, line: 364, type: !434)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 960, align: 64, elements: !444)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppCapability", file: !4, line: 333, baseType: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppCapability", file: !4, line: 318, size: 192, align: 64, elements: !437)
!437 = !{!438, !440, !441, !443}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !436, file: !4, line: 320, baseType: !439, size: 32, align: 32)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCapabilityType", file: !4, line: 307, baseType: !25)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !436, file: !4, line: 325, baseType: !112, size: 64, align: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !436, file: !4, line: 330, baseType: !442, size: 32, align: 32, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestCapabilities", file: !31, line: 79, baseType: !30)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !436, file: !4, line: 332, baseType: !96, size: 32, align: 32, offset: 160)
!444 = !{!445}
!445 = !DISubrange(count: 5)
!446 = !DILocation(line: 364, column: 23, scope: !422)
!447 = !DILocalVariable(name: "capabilityCount", scope: !422, file: !69, line: 367, type: !97)
!448 = !DILocation(line: 367, column: 17, scope: !422)
!449 = !DILocation(line: 369, column: 4, scope: !422)
!450 = !DILocation(line: 381, column: 20, scope: !422)
!451 = !DILocation(line: 381, column: 4, scope: !422)
!452 = !DILocation(line: 381, column: 37, scope: !422)
!453 = !DILocation(line: 381, column: 42, scope: !422)
!454 = !DILocation(line: 382, column: 20, scope: !422)
!455 = !DILocation(line: 382, column: 4, scope: !422)
!456 = !DILocation(line: 382, column: 37, scope: !422)
!457 = !DILocation(line: 382, column: 42, scope: !422)
!458 = !DILocation(line: 383, column: 20, scope: !422)
!459 = !DILocation(line: 383, column: 4, scope: !422)
!460 = !DILocation(line: 383, column: 37, scope: !422)
!461 = !DILocation(line: 383, column: 43, scope: !422)
!462 = !DILocation(line: 384, column: 45, scope: !422)
!463 = !DILocation(line: 384, column: 20, scope: !422)
!464 = !DILocation(line: 384, column: 4, scope: !422)
!465 = !DILocation(line: 384, column: 37, scope: !422)
!466 = !DILocation(line: 384, column: 43, scope: !422)
!467 = !DILocation(line: 385, column: 19, scope: !422)
!468 = !DILocation(line: 387, column: 20, scope: !422)
!469 = !DILocation(line: 387, column: 4, scope: !422)
!470 = !DILocation(line: 387, column: 37, scope: !422)
!471 = !DILocation(line: 387, column: 42, scope: !422)
!472 = !DILocation(line: 388, column: 20, scope: !422)
!473 = !DILocation(line: 388, column: 4, scope: !422)
!474 = !DILocation(line: 388, column: 37, scope: !422)
!475 = !DILocation(line: 388, column: 42, scope: !422)
!476 = !DILocation(line: 389, column: 20, scope: !422)
!477 = !DILocation(line: 389, column: 4, scope: !422)
!478 = !DILocation(line: 389, column: 37, scope: !422)
!479 = !DILocation(line: 389, column: 43, scope: !422)
!480 = !DILocation(line: 390, column: 45, scope: !422)
!481 = !DILocation(line: 390, column: 20, scope: !422)
!482 = !DILocation(line: 390, column: 4, scope: !422)
!483 = !DILocation(line: 390, column: 37, scope: !422)
!484 = !DILocation(line: 390, column: 43, scope: !422)
!485 = !DILocation(line: 391, column: 19, scope: !422)
!486 = !DILocation(line: 393, column: 20, scope: !422)
!487 = !DILocation(line: 393, column: 4, scope: !422)
!488 = !DILocation(line: 393, column: 37, scope: !422)
!489 = !DILocation(line: 393, column: 42, scope: !422)
!490 = !DILocation(line: 394, column: 20, scope: !422)
!491 = !DILocation(line: 394, column: 4, scope: !422)
!492 = !DILocation(line: 394, column: 37, scope: !422)
!493 = !DILocation(line: 394, column: 42, scope: !422)
!494 = !DILocation(line: 395, column: 20, scope: !422)
!495 = !DILocation(line: 395, column: 4, scope: !422)
!496 = !DILocation(line: 395, column: 37, scope: !422)
!497 = !DILocation(line: 395, column: 43, scope: !422)
!498 = !DILocation(line: 396, column: 45, scope: !422)
!499 = !DILocation(line: 396, column: 20, scope: !422)
!500 = !DILocation(line: 396, column: 4, scope: !422)
!501 = !DILocation(line: 396, column: 37, scope: !422)
!502 = !DILocation(line: 396, column: 43, scope: !422)
!503 = !DILocation(line: 397, column: 19, scope: !422)
!504 = !DILocation(line: 408, column: 16, scope: !505)
!505 = distinct !DILexicalBlock(scope: !422, file: !69, line: 408, column: 8)
!506 = !DILocation(line: 408, column: 8, scope: !505)
!507 = !DILocation(line: 408, column: 28, scope: !505)
!508 = !DILocation(line: 408, column: 31, scope: !509)
!509 = !DILexicalBlockFile(scope: !505, file: !69, discriminator: 1)
!510 = !DILocation(line: 408, column: 35, scope: !509)
!511 = !DILocation(line: 408, column: 38, scope: !512)
!512 = !DILexicalBlockFile(scope: !505, file: !69, discriminator: 2)
!513 = !DILocation(line: 408, column: 43, scope: !512)
!514 = !DILocation(line: 408, column: 47, scope: !512)
!515 = !DILocation(line: 408, column: 50, scope: !516)
!516 = !DILexicalBlockFile(scope: !505, file: !69, discriminator: 3)
!517 = !DILocation(line: 408, column: 55, scope: !516)
!518 = !DILocation(line: 408, column: 8, scope: !516)
!519 = !DILocation(line: 409, column: 37, scope: !520)
!520 = distinct !DILexicalBlock(scope: !505, file: !69, line: 408, column: 65)
!521 = !DILocation(line: 409, column: 42, scope: !520)
!522 = !DILocation(line: 409, column: 47, scope: !520)
!523 = !DILocation(line: 409, column: 7, scope: !520)
!524 = !DILocation(line: 410, column: 4, scope: !520)
!525 = !DILocation(line: 414, column: 29, scope: !422)
!526 = !DILocation(line: 416, column: 29, scope: !422)
!527 = !DILocation(line: 414, column: 11, scope: !422)
!528 = !DILocation(line: 414, column: 4, scope: !422)
!529 = distinct !DISubprogram(name: "ResolutionKMSShutdown", scope: !69, file: !69, line: 325, type: !530, isLocal: true, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !136, !105, !136}
!532 = !DILocalVariable(name: "src", arg: 1, scope: !529, file: !69, line: 325, type: !136)
!533 = !DILocation(line: 325, column: 32, scope: !529)
!534 = !DILocalVariable(name: "ctx", arg: 2, scope: !529, file: !69, line: 326, type: !105)
!535 = !DILocation(line: 326, column: 36, scope: !529)
!536 = !DILocalVariable(name: "data", arg: 3, scope: !529, file: !69, line: 327, type: !136)
!537 = !DILocation(line: 327, column: 32, scope: !529)
!538 = !DILocation(line: 329, column: 16, scope: !539)
!539 = distinct !DILexicalBlock(scope: !529, file: !69, line: 329, column: 8)
!540 = !DILocation(line: 329, column: 8, scope: !539)
!541 = !DILocation(line: 329, column: 28, scope: !539)
!542 = !DILocation(line: 329, column: 31, scope: !543)
!543 = !DILexicalBlockFile(scope: !539, file: !69, discriminator: 1)
!544 = !DILocation(line: 329, column: 35, scope: !543)
!545 = !DILocation(line: 329, column: 38, scope: !546)
!546 = !DILexicalBlockFile(scope: !539, file: !69, discriminator: 2)
!547 = !DILocation(line: 329, column: 43, scope: !546)
!548 = !DILocation(line: 329, column: 47, scope: !546)
!549 = !DILocation(line: 329, column: 50, scope: !550)
!550 = !DILexicalBlockFile(scope: !539, file: !69, discriminator: 3)
!551 = !DILocation(line: 329, column: 55, scope: !550)
!552 = !DILocation(line: 329, column: 8, scope: !550)
!553 = !DILocation(line: 330, column: 37, scope: !554)
!554 = distinct !DILexicalBlock(scope: !539, file: !69, line: 329, column: 65)
!555 = !DILocation(line: 330, column: 42, scope: !554)
!556 = !DILocation(line: 330, column: 7, scope: !554)
!557 = !DILocation(line: 331, column: 4, scope: !554)
!558 = !DILocation(line: 333, column: 16, scope: !559)
!559 = distinct !DILexicalBlock(scope: !529, file: !69, line: 333, column: 8)
!560 = !DILocation(line: 333, column: 8, scope: !559)
!561 = !DILocation(line: 333, column: 8, scope: !529)
!562 = !DILocation(line: 334, column: 34, scope: !563)
!563 = distinct !DILexicalBlock(scope: !559, file: !69, line: 333, column: 29)
!564 = !DILocation(line: 334, column: 7, scope: !563)
!565 = !DILocation(line: 335, column: 27, scope: !563)
!566 = !DILocation(line: 336, column: 4, scope: !563)
!567 = !DILocation(line: 337, column: 1, scope: !529)
!568 = distinct !DISubprogram(name: "ResolutionWriteToKernel", scope: !69, file: !69, line: 94, type: !569, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!569 = !DISubroutineType(types: !570)
!570 = !{!102, !571, !97}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64, align: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!573 = !DILocalVariable(name: "rects", arg: 1, scope: !568, file: !69, line: 94, type: !571)
!574 = !DILocation(line: 94, column: 52, scope: !568)
!575 = !DILocalVariable(name: "num_rects", arg: 2, scope: !568, file: !69, line: 95, type: !97)
!576 = !DILocation(line: 95, column: 17, scope: !568)
!577 = !DILocalVariable(name: "arg", scope: !568, file: !69, line: 98, type: !578)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vmw_update_layout_arg", file: !261, line: 134, size: 128, align: 64, elements: !579)
!579 = !{!580, !581, !582}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "num_outputs", scope: !578, file: !261, line: 135, baseType: !268, size: 32, align: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "pad64", scope: !578, file: !261, line: 136, baseType: !268, size: 32, align: 32, offset: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "rects", scope: !578, file: !261, line: 137, baseType: !583, size: 64, align: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !269, line: 55, baseType: !66)
!584 = !DILocation(line: 98, column: 37, scope: !568)
!585 = !DILocalVariable(name: "ret", scope: !568, file: !69, line: 99, type: !104)
!586 = !DILocation(line: 99, column: 8, scope: !568)
!587 = !DILocation(line: 101, column: 4, scope: !568)
!588 = !DILocation(line: 102, column: 22, scope: !568)
!589 = !DILocation(line: 102, column: 8, scope: !568)
!590 = !DILocation(line: 102, column: 20, scope: !568)
!591 = !DILocation(line: 103, column: 32, scope: !568)
!592 = !DILocation(line: 103, column: 16, scope: !568)
!593 = !DILocation(line: 103, column: 8, scope: !568)
!594 = !DILocation(line: 103, column: 14, scope: !568)
!595 = !DILocation(line: 105, column: 10, scope: !568)
!596 = !DILocation(line: 105, column: 16, scope: !568)
!597 = !DILocation(line: 105, column: 37, scope: !568)
!598 = !DILocation(line: 105, column: 45, scope: !568)
!599 = !DILocation(line: 105, column: 8, scope: !568)
!600 = !DILocation(line: 106, column: 8, scope: !601)
!601 = distinct !DILexicalBlock(scope: !568, file: !69, line: 106, column: 8)
!602 = !DILocation(line: 106, column: 12, scope: !601)
!603 = !DILocation(line: 106, column: 8, scope: !568)
!604 = !DILocation(line: 107, column: 120, scope: !605)
!605 = distinct !DILexicalBlock(scope: !601, file: !69, line: 106, column: 17)
!606 = !DILocation(line: 107, column: 7, scope: !605)
!607 = !DILocation(line: 109, column: 7, scope: !605)
!608 = !DILocation(line: 112, column: 4, scope: !568)
!609 = !DILocation(line: 113, column: 1, scope: !568)
!610 = distinct !DISubprogram(name: "ResolutionKMSServerCapability", scope: !69, file: !69, line: 261, type: !611, isLocal: true, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !122, !97}
!613 = !DILocalVariable(name: "chan", arg: 1, scope: !610, file: !69, line: 261, type: !122)
!614 = !DILocation(line: 261, column: 43, scope: !610)
!615 = !DILocalVariable(name: "value", arg: 2, scope: !610, file: !69, line: 262, type: !97)
!616 = !DILocation(line: 262, column: 44, scope: !610)
!617 = !DILocalVariable(name: "msg", scope: !610, file: !69, line: 265, type: !92)
!618 = !DILocation(line: 265, column: 11, scope: !610)
!619 = !DILocation(line: 267, column: 9, scope: !620)
!620 = distinct !DILexicalBlock(scope: !610, file: !69, line: 267, column: 8)
!621 = !DILocation(line: 267, column: 8, scope: !610)
!622 = !DILocation(line: 268, column: 7, scope: !623)
!623 = distinct !DILexicalBlock(scope: !620, file: !69, line: 267, column: 25)
!624 = !DILocation(line: 269, column: 7, scope: !623)
!625 = !DILocation(line: 273, column: 5, scope: !610)
!626 = !DILocation(line: 274, column: 5, scope: !610)
!627 = !DILocation(line: 272, column: 10, scope: !610)
!628 = !DILocation(line: 272, column: 8, scope: !610)
!629 = !DILocation(line: 275, column: 25, scope: !630)
!630 = distinct !DILexicalBlock(scope: !610, file: !69, line: 275, column: 8)
!631 = !DILocation(line: 275, column: 31, scope: !630)
!632 = !DILocation(line: 275, column: 43, scope: !630)
!633 = !DILocation(line: 275, column: 36, scope: !630)
!634 = !DILocation(line: 275, column: 9, scope: !635)
!635 = !DILexicalBlockFile(scope: !630, file: !69, discriminator: 1)
!636 = !DILocation(line: 275, column: 9, scope: !630)
!637 = !DILocation(line: 275, column: 8, scope: !610)
!638 = !DILocation(line: 276, column: 7, scope: !639)
!639 = distinct !DILexicalBlock(scope: !630, file: !69, line: 275, column: 61)
!640 = !DILocation(line: 278, column: 4, scope: !639)
!641 = !DILocation(line: 280, column: 8, scope: !642)
!642 = distinct !DILexicalBlock(scope: !610, file: !69, line: 280, column: 8)
!643 = !DILocation(line: 280, column: 14, scope: !642)
!644 = !DILocation(line: 280, column: 8, scope: !610)
!645 = !DILocalVariable(name: "msgClear", scope: !646, file: !69, line: 296, type: !92)
!646 = distinct !DILexicalBlock(scope: !642, file: !69, line: 280, column: 20)
!647 = !DILocation(line: 296, column: 14, scope: !646)
!648 = !DILocation(line: 298, column: 42, scope: !646)
!649 = !DILocation(line: 298, column: 35, scope: !646)
!650 = !DILocation(line: 298, column: 69, scope: !646)
!651 = !DILocation(line: 297, column: 18, scope: !646)
!652 = !DILocation(line: 297, column: 16, scope: !646)
!653 = !DILocation(line: 300, column: 28, scope: !654)
!654 = distinct !DILexicalBlock(scope: !646, file: !69, line: 300, column: 11)
!655 = !DILocation(line: 300, column: 34, scope: !654)
!656 = !DILocation(line: 300, column: 51, scope: !654)
!657 = !DILocation(line: 300, column: 44, scope: !654)
!658 = !DILocation(line: 300, column: 12, scope: !659)
!659 = !DILexicalBlockFile(scope: !654, file: !69, discriminator: 1)
!660 = !DILocation(line: 300, column: 12, scope: !654)
!661 = !DILocation(line: 300, column: 11, scope: !646)
!662 = !DILocation(line: 301, column: 10, scope: !663)
!663 = distinct !DILexicalBlock(scope: !654, file: !69, line: 300, column: 74)
!664 = !DILocation(line: 303, column: 7, scope: !663)
!665 = !DILocation(line: 304, column: 14, scope: !646)
!666 = !DILocation(line: 304, column: 7, scope: !646)
!667 = !DILocation(line: 305, column: 4, scope: !646)
!668 = !DILocation(line: 307, column: 11, scope: !610)
!669 = !DILocation(line: 307, column: 4, scope: !610)
!670 = !DILocation(line: 308, column: 1, scope: !610)
!671 = !DILocation(line: 308, column: 1, scope: !672)
!672 = !DILexicalBlockFile(scope: !610, file: !69, discriminator: 1)
