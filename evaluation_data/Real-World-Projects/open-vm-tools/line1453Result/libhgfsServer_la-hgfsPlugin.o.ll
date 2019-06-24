; ModuleID = './libhgfsServer_la-hgfsPlugin.o.i'
source_filename = "./libhgfsServer_la-hgfsPlugin.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ToolsPluginData = type { i8*, %struct._GArray*, i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)*, i8* }
%struct._GArray = type { i8*, i32 }
%struct.ToolsAppCtx = type { i32, i8*, i32, i32, %struct._GMainLoop*, %struct._RpcChannel*, %struct._GKeyFile*, i32, i32, i8**, i8* }
%struct._GMainLoop = type opaque
%struct._RpcChannel = type opaque
%struct._GKeyFile = type opaque
%struct.HgfsServerMgrData = type { i8*, i8*, i8*, i8* }
%struct.RpcChannelCallback = type { i8*, i32 (%struct.RpcInData*)*, i8*, i8*, i8*, i64 }
%struct.RpcInData = type { i8*, i8*, i64, i8*, i64, i32, i8*, i8* }
%struct.ToolsPluginSignalCb = type { i8*, i8*, i8* }
%struct.ToolsAppReg = type { i32, %struct._GArray* }

@vm_version = constant [20 x i8] c"version=10.3.0.5330\00", section ".modinfo", align 16
@ToolsOnLoad.regData = internal global %struct.ToolsPluginData { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), %struct._GArray* null, i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)* null, i8* null }, align 8
@.str = private unnamed_addr constant [11 x i8] c"hgfsServer\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"vmsvc\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"vmusr\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"hgfsd\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Unknown container '%s', not loading HGFS plugin.\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"NOT_REACHED %s:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"hgfsPlugin.c\00", align 1
@.str.7 = private unnamed_addr constant [82 x i8] c"VM is not running in a hosted product skip HGFS client redirector initialization.\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"HgfsServer_InitState() failed, aborting HGFS server init.\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"tcs_capabilities\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"tcs_shutdown\00", align 1
@HgfsServerRpcDispatch.reply = internal global [63488 x i8] zeroinitializer, align 16
@.str.12 = private unnamed_addr constant [20 x i8] c"1 argument required\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"toolbox\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"toolbox-dnd\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"tools.capability.hgfs_server %s %d\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Setting HGFS server capability failed!\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.ToolsPluginData* @ToolsOnLoad(%struct.ToolsAppCtx*) #0 !dbg !45 {
  %2 = alloca %struct.ToolsPluginData*, align 8
  %3 = alloca %struct.ToolsAppCtx*, align 8
  %4 = alloca %struct.HgfsServerMgrData*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1 x %struct.RpcChannelCallback], align 16
  %8 = alloca [2 x %struct.ToolsPluginSignalCb], align 16
  %9 = alloca [2 x %struct.ToolsAppReg], align 16
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %3, metadata !136, metadata !137), !dbg !138
  call void @llvm.dbg.declare(metadata %struct.HgfsServerMgrData** %4, metadata !139, metadata !137), !dbg !149
  call void @llvm.dbg.declare(metadata i32* %5, metadata !150, metadata !137), !dbg !155
  store i32 0, i32* %5, align 4, !dbg !155
  call void @llvm.dbg.declare(metadata i32* %6, metadata !156, metadata !137), !dbg !157
  store i32 0, i32* %6, align 4, !dbg !157
  %10 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !158
  %11 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %10, i32 0, i32 1, !dbg !160
  %12 = load i8*, i8** %11, align 8, !dbg !160
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)) #6, !dbg !161
  %14 = icmp eq i32 %13, 0, !dbg !162
  br i1 %14, label %25, label %15, !dbg !163

; <label>:15:                                     ; preds = %1
  %16 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !164
  %17 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %16, i32 0, i32 1, !dbg !166
  %18 = load i8*, i8** %17, align 8, !dbg !166
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #6, !dbg !167
  %20 = icmp eq i32 %19, 0, !dbg !168
  br i1 %20, label %25, label %21, !dbg !169

; <label>:21:                                     ; preds = %15
  %22 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !170
  %23 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %22, i32 0, i32 1, !dbg !172
  %24 = load i8*, i8** %23, align 8, !dbg !172
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i32 0, i32 0), i8* %24), !dbg !173
  store %struct.ToolsPluginData* null, %struct.ToolsPluginData** %2, align 8, !dbg !174
  br label %109, !dbg !174

; <label>:25:                                     ; preds = %15, %1
  %26 = call signext i8 @VmCheck_GetVersion(i32* %5, i32* %6), !dbg !175
  %27 = sext i8 %26 to i32, !dbg !175
  %28 = icmp ne i32 %27, 0, !dbg !175
  br i1 %28, label %29, label %49, !dbg !177

; <label>:29:                                     ; preds = %25
  %30 = load i32, i32* %6, align 4, !dbg !178
  %31 = icmp ne i32 %30, 2, !dbg !179
  br i1 %31, label %32, label %49, !dbg !180

; <label>:32:                                     ; preds = %29
  %33 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !182
  %34 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %33, i32 0, i32 1, !dbg !185
  %35 = load i8*, i8** %34, align 8, !dbg !185
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)) #6, !dbg !186
  %37 = icmp eq i32 %36, 0, !dbg !187
  br i1 %37, label %38, label %39, !dbg !188

; <label>:38:                                     ; preds = %32
  call void @HgfsServerClientRdrStart(), !dbg !189
  br label %48, !dbg !191

; <label>:39:                                     ; preds = %32
  %40 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !192
  %41 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %40, i32 0, i32 1, !dbg !195
  %42 = load i8*, i8** %41, align 8, !dbg !195
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #6, !dbg !196
  %44 = icmp eq i32 %43, 0, !dbg !197
  br i1 %44, label %45, label %46, !dbg !198

; <label>:45:                                     ; preds = %39
  call void @HgfsServerClientRdrConnectDrives(), !dbg !199
  br label %47, !dbg !201

; <label>:46:                                     ; preds = %39
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 1109) #7, !dbg !202
  unreachable, !dbg !202

; <label>:47:                                     ; preds = %45
  br label %48

; <label>:48:                                     ; preds = %47, %38
  br label %50, !dbg !204

; <label>:49:                                     ; preds = %29, %25
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.7, i32 0, i32 0)), !dbg !205
  br label %50

; <label>:50:                                     ; preds = %49, %48
  %51 = call noalias i8* @g_malloc0(i64 32), !dbg !207
  %52 = bitcast i8* %51 to %struct.HgfsServerMgrData*, !dbg !207
  store %struct.HgfsServerMgrData* %52, %struct.HgfsServerMgrData** %4, align 8, !dbg !208
  br label %53, !dbg !209, !llvm.loop !210

; <label>:53:                                     ; preds = %50
  %54 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !211
  %55 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %54, i32 0, i32 1, !dbg !214
  %56 = load i8*, i8** %55, align 8, !dbg !214
  %57 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %4, align 8, !dbg !215
  %58 = getelementptr inbounds %struct.HgfsServerMgrData, %struct.HgfsServerMgrData* %57, i32 0, i32 0, !dbg !216
  store i8* %56, i8** %58, align 8, !dbg !217
  %59 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %4, align 8, !dbg !218
  %60 = getelementptr inbounds %struct.HgfsServerMgrData, %struct.HgfsServerMgrData* %59, i32 0, i32 1, !dbg !219
  store i8* null, i8** %60, align 8, !dbg !220
  %61 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %4, align 8, !dbg !221
  %62 = getelementptr inbounds %struct.HgfsServerMgrData, %struct.HgfsServerMgrData* %61, i32 0, i32 2, !dbg !222
  store i8* null, i8** %62, align 8, !dbg !223
  %63 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %4, align 8, !dbg !221
  %64 = getelementptr inbounds %struct.HgfsServerMgrData, %struct.HgfsServerMgrData* %63, i32 0, i32 3, !dbg !222
  store i8* null, i8** %64, align 8, !dbg !217
  br label %65, !dbg !224

; <label>:65:                                     ; preds = %53
  %66 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %4, align 8, !dbg !225
  %67 = call signext i8 @HgfsServerManager_Register(%struct.HgfsServerMgrData* %66), !dbg !227
  %68 = icmp ne i8 %67, 0, !dbg !227
  br i1 %68, label %72, label %69, !dbg !228

; <label>:69:                                     ; preds = %65
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i32 0, i32 0)), !dbg !229
  %70 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %4, align 8, !dbg !231
  %71 = bitcast %struct.HgfsServerMgrData* %70 to i8*, !dbg !231
  call void @g_free(i8* %71), !dbg !232
  store %struct.ToolsPluginData* null, %struct.ToolsPluginData** %2, align 8, !dbg !233
  br label %109, !dbg !233

; <label>:72:                                     ; preds = %65
  call void @llvm.dbg.declare(metadata [1 x %struct.RpcChannelCallback]* %7, metadata !234, metadata !137), !dbg !250
  %73 = getelementptr inbounds [1 x %struct.RpcChannelCallback], [1 x %struct.RpcChannelCallback]* %7, i64 0, i64 0, !dbg !251
  %74 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %73, i32 0, i32 0, !dbg !252
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8** %74, align 16, !dbg !252
  %75 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %73, i32 0, i32 1, !dbg !252
  store i32 (%struct.RpcInData*)* @HgfsServerRpcDispatch, i32 (%struct.RpcInData*)** %75, align 8, !dbg !252
  %76 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %73, i32 0, i32 2, !dbg !252
  %77 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %4, align 8, !dbg !253
  %78 = bitcast %struct.HgfsServerMgrData* %77 to i8*, !dbg !253
  store i8* %78, i8** %76, align 16, !dbg !252
  %79 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %73, i32 0, i32 3, !dbg !252
  store i8* null, i8** %79, align 8, !dbg !252
  %80 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %73, i32 0, i32 4, !dbg !252
  store i8* null, i8** %80, align 16, !dbg !252
  %81 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %73, i32 0, i32 5, !dbg !252
  store i64 0, i64* %81, align 8, !dbg !252
  call void @llvm.dbg.declare(metadata [2 x %struct.ToolsPluginSignalCb]* %8, metadata !254, metadata !137), !dbg !264
  %82 = bitcast [2 x %struct.ToolsPluginSignalCb]* %8 to i8*, !dbg !264
  call void @llvm.memset.p0i8.i64(i8* %82, i8 0, i64 48, i32 16, i1 false), !dbg !264
  %83 = bitcast i8* %82 to [2 x %struct.ToolsPluginSignalCb]*, !dbg !264
  %84 = getelementptr [2 x %struct.ToolsPluginSignalCb], [2 x %struct.ToolsPluginSignalCb]* %83, i32 0, i32 0, !dbg !264
  %85 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %84, i32 0, i32 0, !dbg !264
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8** %85, !dbg !264
  %86 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %84, i32 0, i32 1, !dbg !264
  store i8* bitcast (%struct._GArray* (i8*, %struct.ToolsAppCtx*, i32, %struct.ToolsPluginData*)* @HgfsServerCapReg to i8*), i8** %86, !dbg !264
  %87 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %84, i32 0, i32 2, !dbg !264
  store i8* bitcast (%struct.ToolsPluginData* @ToolsOnLoad.regData to i8*), i8** %87, !dbg !264
  %88 = getelementptr [2 x %struct.ToolsPluginSignalCb], [2 x %struct.ToolsPluginSignalCb]* %83, i32 0, i32 1, !dbg !264
  %89 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %88, i32 0, i32 0, !dbg !264
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8** %89, !dbg !264
  %90 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %88, i32 0, i32 1, !dbg !264
  store i8* bitcast (void (i8*, %struct.ToolsAppCtx*, %struct.ToolsPluginData*)* @HgfsServerShutdown to i8*), i8** %90, !dbg !264
  %91 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %88, i32 0, i32 2, !dbg !264
  store i8* bitcast (%struct.ToolsPluginData* @ToolsOnLoad.regData to i8*), i8** %91, !dbg !264
  call void @llvm.dbg.declare(metadata [2 x %struct.ToolsAppReg]* %9, metadata !265, metadata !137), !dbg !272
  %92 = getelementptr inbounds [2 x %struct.ToolsAppReg], [2 x %struct.ToolsAppReg]* %9, i64 0, i64 0, !dbg !273
  %93 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %92, i32 0, i32 0, !dbg !274
  store i32 1, i32* %93, align 16, !dbg !274
  %94 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %92, i32 0, i32 1, !dbg !274
  %95 = getelementptr inbounds [1 x %struct.RpcChannelCallback], [1 x %struct.RpcChannelCallback]* %7, i32 0, i32 0, !dbg !275
  %96 = bitcast %struct.RpcChannelCallback* %95 to i8*, !dbg !275
  %97 = call %struct._GArray* @VMTools_WrapArray(i8* %96, i32 48, i32 1), !dbg !276
  store %struct._GArray* %97, %struct._GArray** %94, align 8, !dbg !274
  %98 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %92, i64 1, !dbg !273
  %99 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %98, i32 0, i32 0, !dbg !277
  store i32 2, i32* %99, align 16, !dbg !277
  %100 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %98, i32 0, i32 1, !dbg !277
  %101 = getelementptr inbounds [2 x %struct.ToolsPluginSignalCb], [2 x %struct.ToolsPluginSignalCb]* %8, i32 0, i32 0, !dbg !278
  %102 = bitcast %struct.ToolsPluginSignalCb* %101 to i8*, !dbg !278
  %103 = call %struct._GArray* @VMTools_WrapArray(i8* %102, i32 24, i32 2), !dbg !279
  store %struct._GArray* %103, %struct._GArray** %100, align 8, !dbg !277
  %104 = getelementptr inbounds [2 x %struct.ToolsAppReg], [2 x %struct.ToolsAppReg]* %9, i32 0, i32 0, !dbg !280
  %105 = bitcast %struct.ToolsAppReg* %104 to i8*, !dbg !280
  %106 = call %struct._GArray* @VMTools_WrapArray(i8* %105, i32 16, i32 2), !dbg !281
  store %struct._GArray* %106, %struct._GArray** getelementptr inbounds (%struct.ToolsPluginData, %struct.ToolsPluginData* @ToolsOnLoad.regData, i32 0, i32 1), align 8, !dbg !282
  %107 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %4, align 8, !dbg !283
  %108 = bitcast %struct.HgfsServerMgrData* %107 to i8*, !dbg !283
  store i8* %108, i8** getelementptr inbounds (%struct.ToolsPluginData, %struct.ToolsPluginData* @ToolsOnLoad.regData, i32 0, i32 3), align 8, !dbg !284
  store %struct.ToolsPluginData* @ToolsOnLoad.regData, %struct.ToolsPluginData** %2, align 8, !dbg !285
  br label %109, !dbg !285

; <label>:109:                                    ; preds = %72, %69, %21
  %110 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %2, align 8, !dbg !286
  ret %struct.ToolsPluginData* %110, !dbg !286
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare void @g_log(i8*, i32, i8*, ...) #3

declare signext i8 @VmCheck_GetVersion(i32*, i32*) #3

; Function Attrs: nounwind uwtable
define internal void @HgfsServerClientRdrStart() #0 !dbg !287 {
  ret void, !dbg !290
}

; Function Attrs: nounwind uwtable
define internal void @HgfsServerClientRdrConnectDrives() #0 !dbg !291 {
  ret void, !dbg !292
}

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #4

declare noalias i8* @g_malloc0(i64) #3

declare signext i8 @HgfsServerManager_Register(%struct.HgfsServerMgrData*) #3

declare void @g_free(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @HgfsServerRpcDispatch(%struct.RpcInData*) #0 !dbg !111 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.RpcInData*, align 8
  %4 = alloca %struct.HgfsServerMgrData*, align 8
  %5 = alloca i64, align 8
  store %struct.RpcInData* %0, %struct.RpcInData** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %3, metadata !293, metadata !137), !dbg !294
  call void @llvm.dbg.declare(metadata %struct.HgfsServerMgrData** %4, metadata !295, metadata !137), !dbg !296
  call void @llvm.dbg.declare(metadata i64* %5, metadata !297, metadata !137), !dbg !298
  %6 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !299
  %7 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %6, i32 0, i32 7, !dbg !300
  %8 = load i8*, i8** %7, align 8, !dbg !300
  %9 = bitcast i8* %8 to %struct.HgfsServerMgrData*, !dbg !299
  store %struct.HgfsServerMgrData* %9, %struct.HgfsServerMgrData** %4, align 8, !dbg !301
  %10 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !302
  %11 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %10, i32 0, i32 2, !dbg !304
  %12 = load i64, i64* %11, align 8, !dbg !304
  %13 = icmp eq i64 %12, 0, !dbg !305
  br i1 %13, label %14, label %17, !dbg !306

; <label>:14:                                     ; preds = %1
  %15 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !307
  %16 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0), !dbg !309
  store i32 %16, i32* %2, align 4, !dbg !310
  br label %33, !dbg !310

; <label>:17:                                     ; preds = %1
  store i64 63488, i64* %5, align 8, !dbg !311
  %18 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %4, align 8, !dbg !312
  %19 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !313
  %20 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %19, i32 0, i32 1, !dbg !314
  %21 = load i8*, i8** %20, align 8, !dbg !314
  %22 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !315
  %23 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !316
  %24 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %23, i32 0, i32 2, !dbg !317
  %25 = load i64, i64* %24, align 8, !dbg !317
  %26 = sub i64 %25, 1, !dbg !318
  %27 = call signext i8 @HgfsServerManager_ProcessPacket(%struct.HgfsServerMgrData* %18, i8* %22, i64 %26, i8* getelementptr inbounds ([63488 x i8], [63488 x i8]* @HgfsServerRpcDispatch.reply, i32 0, i32 0), i64* %5), !dbg !319
  %28 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !320
  %29 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %28, i32 0, i32 3, !dbg !321
  store i8* getelementptr inbounds ([63488 x i8], [63488 x i8]* @HgfsServerRpcDispatch.reply, i32 0, i32 0), i8** %29, align 8, !dbg !322
  %30 = load i64, i64* %5, align 8, !dbg !323
  %31 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !324
  %32 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %31, i32 0, i32 4, !dbg !325
  store i64 %30, i64* %32, align 8, !dbg !326
  store i32 1, i32* %2, align 4, !dbg !327
  br label %33, !dbg !327

; <label>:33:                                     ; preds = %17, %14
  %34 = load i32, i32* %2, align 4, !dbg !328
  ret i32 %34, !dbg !328
}

; Function Attrs: nounwind uwtable
define internal %struct._GArray* @HgfsServerCapReg(i8*, %struct.ToolsAppCtx*, i32, %struct.ToolsPluginData*) #0 !dbg !329 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ToolsAppCtx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ToolsPluginData*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !332, metadata !137), !dbg !333
  store %struct.ToolsAppCtx* %1, %struct.ToolsAppCtx** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %6, metadata !334, metadata !137), !dbg !335
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !336, metadata !137), !dbg !337
  store %struct.ToolsPluginData* %3, %struct.ToolsPluginData** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsPluginData** %8, metadata !338, metadata !137), !dbg !339
  call void @llvm.dbg.declare(metadata i8** %9, metadata !340, metadata !137), !dbg !341
  call void @llvm.dbg.declare(metadata i8** %10, metadata !342, metadata !137), !dbg !343
  store i8* null, i8** %10, align 8, !dbg !343
  %11 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %6, align 8, !dbg !344
  %12 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %11, i32 0, i32 1, !dbg !346
  %13 = load i8*, i8** %12, align 8, !dbg !346
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)) #6, !dbg !347
  %15 = icmp eq i32 %14, 0, !dbg !348
  br i1 %15, label %16, label %17, !dbg !349

; <label>:16:                                     ; preds = %4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8** %10, align 8, !dbg !350
  br label %26, !dbg !352

; <label>:17:                                     ; preds = %4
  %18 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %6, align 8, !dbg !353
  %19 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %18, i32 0, i32 1, !dbg !356
  %20 = load i8*, i8** %19, align 8, !dbg !356
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #6, !dbg !357
  %22 = icmp eq i32 %21, 0, !dbg !358
  br i1 %22, label %23, label %24, !dbg !359

; <label>:23:                                     ; preds = %17
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8** %10, align 8, !dbg !360
  br label %25, !dbg !362

; <label>:24:                                     ; preds = %17
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 151) #7, !dbg !363
  unreachable, !dbg !363

; <label>:25:                                     ; preds = %23
  br label %26

; <label>:26:                                     ; preds = %25, %16
  %27 = load i8*, i8** %10, align 8, !dbg !365
  %28 = load i32, i32* %7, align 4, !dbg !366
  %29 = icmp ne i32 %28, 0, !dbg !366
  %30 = select i1 %29, i32 1, i32 0, !dbg !366
  %31 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i32 0, i32 0), i8* %27, i32 %30), !dbg !367
  store i8* %31, i8** %9, align 8, !dbg !368
  %32 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %6, align 8, !dbg !369
  %33 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %32, i32 0, i32 5, !dbg !371
  %34 = load %struct._RpcChannel*, %struct._RpcChannel** %33, align 8, !dbg !371
  %35 = icmp ne %struct._RpcChannel* %34, null, !dbg !369
  br i1 %35, label %36, label %47, !dbg !372

; <label>:36:                                     ; preds = %26
  %37 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %6, align 8, !dbg !373
  %38 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %37, i32 0, i32 5, !dbg !375
  %39 = load %struct._RpcChannel*, %struct._RpcChannel** %38, align 8, !dbg !375
  %40 = load i8*, i8** %9, align 8, !dbg !376
  %41 = load i8*, i8** %9, align 8, !dbg !377
  %42 = call i64 @strlen(i8* %41) #6, !dbg !378
  %43 = add i64 %42, 1, !dbg !379
  %44 = call i32 @RpcChannel_Send(%struct._RpcChannel* %39, i8* %40, i64 %43, i8** null, i64* null), !dbg !380
  %45 = icmp ne i32 %44, 0, !dbg !382
  br i1 %45, label %47, label %46, !dbg !383

; <label>:46:                                     ; preds = %36
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i32 0, i32 0)), !dbg !384
  br label %47, !dbg !386

; <label>:47:                                     ; preds = %46, %36, %26
  %48 = load i8*, i8** %9, align 8, !dbg !387
  call void @g_free(i8* %48), !dbg !388
  ret %struct._GArray* null, !dbg !389
}

; Function Attrs: nounwind uwtable
define internal void @HgfsServerShutdown(i8*, %struct.ToolsAppCtx*, %struct.ToolsPluginData*) #0 !dbg !390 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ToolsAppCtx*, align 8
  %6 = alloca %struct.ToolsPluginData*, align 8
  %7 = alloca %struct.HgfsServerMgrData*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !393, metadata !137), !dbg !394
  store %struct.ToolsAppCtx* %1, %struct.ToolsAppCtx** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %5, metadata !395, metadata !137), !dbg !396
  store %struct.ToolsPluginData* %2, %struct.ToolsPluginData** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsPluginData** %6, metadata !397, metadata !137), !dbg !398
  call void @llvm.dbg.declare(metadata %struct.HgfsServerMgrData** %7, metadata !399, metadata !137), !dbg !400
  %8 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %6, align 8, !dbg !401
  %9 = getelementptr inbounds %struct.ToolsPluginData, %struct.ToolsPluginData* %8, i32 0, i32 3, !dbg !402
  %10 = load i8*, i8** %9, align 8, !dbg !402
  %11 = bitcast i8* %10 to %struct.HgfsServerMgrData*, !dbg !401
  store %struct.HgfsServerMgrData* %11, %struct.HgfsServerMgrData** %7, align 8, !dbg !400
  %12 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %7, align 8, !dbg !403
  call void @HgfsServerManager_Unregister(%struct.HgfsServerMgrData* %12), !dbg !404
  %13 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %7, align 8, !dbg !405
  %14 = bitcast %struct.HgfsServerMgrData* %13 to i8*, !dbg !405
  call void @g_free(i8* %14), !dbg !406
  call void @HgfsServerCloseClientRdrEvent(), !dbg !407
  ret void, !dbg !408
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

declare %struct._GArray* @VMTools_WrapArray(i8*, i32, i32) #3

declare i32 @RpcChannel_SetRetVals(%struct.RpcInData*, i8*, i32) #3

declare signext i8 @HgfsServerManager_ProcessPacket(%struct.HgfsServerMgrData*, i8*, i64, i8*, i64*) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #3

declare i32 @RpcChannel_Send(%struct._RpcChannel*, i8*, i64, i8**, i64*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @HgfsServerManager_Unregister(%struct.HgfsServerMgrData*) #3

; Function Attrs: nounwind uwtable
define internal void @HgfsServerCloseClientRdrEvent() #0 !dbg !409 {
  ret void, !dbg !410
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!133, !134}
!llvm.ident = !{!135}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !34, globals: !36)
!1 = !DIFile(filename: "libhgfsServer_la-hgfsPlugin.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1453")
!2 = !{!3, !7, !13, !22}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 232, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/plugin.h", directory: "/home/lichi/Desktop/open-vm-tools/line1453")
!5 = !{!6}
!6 = !DIEnumerator(name: "TOOLS_CORE_API_V1", value: 1)
!7 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 339, size: 32, align: 32, elements: !8)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "TOOLS_APP_GUESTRPC", value: 1)
!10 = !DIEnumerator(name: "TOOLS_APP_SIGNALS", value: 2)
!11 = !DIEnumerator(name: "TOOLS_APP_PROVIDER", value: 3)
!12 = !DIEnumerator(name: "TOOLS_SVC_PROPERTY", value: 4)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 35, size: 32, align: 32, elements: !15)
!14 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_vmx_type.h", directory: "/home/lichi/Desktop/open-vm-tools/line1453")
!15 = !{!16, !17, !18, !19, !20, !21}
!16 = !DIEnumerator(name: "VMX_TYPE_UNSET", value: 0)
!17 = !DIEnumerator(name: "VMX_TYPE_EXPRESS", value: 1)
!18 = !DIEnumerator(name: "VMX_TYPE_SCALABLE_SERVER", value: 2)
!19 = !DIEnumerator(name: "VMX_TYPE_WGS", value: 3)
!20 = !DIEnumerator(name: "VMX_TYPE_WORKSTATION", value: 4)
!21 = !DIEnumerator(name: "VMX_TYPE_WORKSTATION_ENTERPRISE", value: 5)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 51, size: 32, align: 32, elements: !24)
!23 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1453")
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33}
!25 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!26 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!27 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!28 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!29 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!30 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!31 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!32 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!33 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!34 = !{!35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!36 = !{!37, !44, !110}
!37 = distinct !DIGlobalVariable(name: "vm_version", scope: !0, file: !38, line: 55, type: !39, isLocal: false, isDefinition: true, variable: [20 x i8]* @vm_version)
!38 = !DIFile(filename: "hgfsPlugin.c", directory: "/home/lichi/Desktop/open-vm-tools/line1453")
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 160, align: 8, elements: !42)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!42 = !{!43}
!43 = !DISubrange(count: 20)
!44 = distinct !DIGlobalVariable(name: "regData", scope: !45, file: !38, line: 1078, type: !49, isLocal: true, isDefinition: true, variable: %struct.ToolsPluginData* @ToolsOnLoad.regData)
!45 = distinct !DISubprogram(name: "ToolsOnLoad", scope: !38, file: !38, line: 1076, type: !46, isLocal: false, isDefinition: true, scopeLine: 1077, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !74}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsPluginData", file: !4, line: 545, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsPluginData", file: !4, line: 501, size: 256, align: 64, elements: !51)
!51 = !{!52, !54, !67, !108}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !50, file: !4, line: 503, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !50, file: !4, line: 508, baseType: !55, size: 64, align: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "GArray", file: !57, line: 37, baseType: !58)
!57 = !DIFile(filename: "/usr/include/glib-2.0/glib/garray.h", directory: "/home/lichi/Desktop/open-vm-tools/line1453")
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GArray", file: !57, line: 41, size: 128, align: 64, elements: !59)
!59 = !{!60, !64}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !58, file: !57, line: 43, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !63, line: 46, baseType: !41)
!63 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1453")
!64 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !58, file: !57, line: 44, baseType: !65, size: 32, align: 32, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !63, line: 55, baseType: !66)
!66 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "errorCb", scope: !50, file: !4, line: 539, baseType: !68, size: 64, align: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!71, !74, !106, !105, !107}
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !63, line: 50, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !63, line: 49, baseType: !73)
!73 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppCtx", file: !4, line: 274, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppCtx", file: !4, line: 241, size: 576, align: 64, elements: !77)
!77 = !{!78, !80, !83, !84, !85, !90, !95, !100, !101, !102, !104}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !76, file: !4, line: 243, baseType: !79, size: 32, align: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCoreAPI", file: !4, line: 234, baseType: !3)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !76, file: !4, line: 245, baseType: !81, size: 64, align: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "isVMware", scope: !76, file: !4, line: 247, baseType: !71, size: 32, align: 32, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "errorCode", scope: !76, file: !4, line: 249, baseType: !73, size: 32, align: 32, offset: 160)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "mainLoop", scope: !76, file: !4, line: 251, baseType: !86, size: 64, align: 64, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainLoop", file: !88, line: 56, baseType: !89)
!88 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line1453")
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainLoop", file: !88, line: 56, flags: DIFlagFwdDecl)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !76, file: !4, line: 253, baseType: !91, size: 64, align: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !93, line: 48, baseType: !94)
!93 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line1453")
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !93, line: 48, flags: DIFlagFwdDecl)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !76, file: !4, line: 255, baseType: !96, size: 64, align: 64, offset: 320)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !98, line: 48, baseType: !99)
!98 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1453")
!99 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !98, line: 48, flags: DIFlagFwdDecl)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "blockFD", scope: !76, file: !4, line: 261, baseType: !73, size: 32, align: 32, offset: 384)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "uinputFD", scope: !76, file: !4, line: 263, baseType: !73, size: 32, align: 32, offset: 416)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !76, file: !4, line: 265, baseType: !103, size: 64, align: 64, offset: 448)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "serviceObj", scope: !76, file: !4, line: 273, baseType: !105, size: 64, align: 64, offset: 512)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !63, line: 77, baseType: !35)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppType", file: !4, line: 360, baseType: !7)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !50, file: !4, line: 544, baseType: !105, size: 64, align: 64, offset: 192)
!109 = !{}
!110 = distinct !DIGlobalVariable(name: "reply", scope: !111, file: !38, line: 107, type: !130, isLocal: true, isDefinition: true, variable: [63488 x i8]* @HgfsServerRpcDispatch.reply)
!111 = distinct !DISubprogram(name: "HgfsServerRpcDispatch", scope: !38, file: !38, line: 103, type: !112, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!112 = !DISubroutineType(types: !113)
!113 = !{!71, !114}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcInData", file: !93, line: 77, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcInData", file: !93, line: 51, size: 512, align: 64, elements: !117)
!117 = !{!118, !119, !120, !124, !126, !127, !128, !129}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !116, file: !93, line: 53, baseType: !53, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !116, file: !93, line: 58, baseType: !53, size: 64, align: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "argsSize", scope: !116, file: !93, line: 60, baseType: !121, size: 64, align: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !122, line: 216, baseType: !123)
!122 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1453")
!123 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !116, file: !93, line: 65, baseType: !125, size: 64, align: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "resultLen", scope: !116, file: !93, line: 67, baseType: !121, size: 64, align: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "freeResult", scope: !116, file: !93, line: 72, baseType: !71, size: 32, align: 32, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "appCtx", scope: !116, file: !93, line: 74, baseType: !35, size: 64, align: 64, offset: 384)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !116, file: !93, line: 76, baseType: !35, size: 64, align: 64, offset: 448)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 507904, align: 8, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 63488)
!133 = !{i32 2, !"Dwarf Version", i32 4}
!134 = !{i32 2, !"Debug Info Version", i32 3}
!135 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!136 = !DILocalVariable(name: "ctx", arg: 1, scope: !45, file: !38, line: 1076, type: !74)
!137 = !DIExpression()
!138 = !DILocation(line: 1076, column: 26, scope: !45)
!139 = !DILocalVariable(name: "mgrData", scope: !45, file: !38, line: 1083, type: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerMgrData", file: !142, line: 49, baseType: !143)
!142 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfsServerManager.h", directory: "/home/lichi/Desktop/open-vm-tools/line1453")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsServerMgrData", file: !142, line: 44, size: 256, align: 64, elements: !144)
!144 = !{!145, !146, !147, !148}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "appName", scope: !143, file: !142, line: 45, baseType: !53, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !143, file: !142, line: 46, baseType: !35, size: 64, align: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "rpcCallback", scope: !143, file: !142, line: 47, baseType: !35, size: 64, align: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !143, file: !142, line: 48, baseType: !35, size: 64, align: 64, offset: 192)
!149 = !DILocation(line: 1083, column: 23, scope: !45)
!150 = !DILocalVariable(name: "vmxVersion", scope: !45, file: !38, line: 1084, type: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !152, line: 173, baseType: !153)
!152 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1453")
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !154, line: 51, baseType: !66)
!154 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1453")
!155 = !DILocation(line: 1084, column: 11, scope: !45)
!156 = !DILocalVariable(name: "vmxType", scope: !45, file: !38, line: 1085, type: !151)
!157 = !DILocation(line: 1085, column: 11, scope: !45)
!158 = !DILocation(line: 1087, column: 18, scope: !159)
!159 = distinct !DILexicalBlock(scope: !45, file: !38, line: 1087, column: 8)
!160 = !DILocation(line: 1087, column: 24, scope: !159)
!161 = !DILocation(line: 1087, column: 10, scope: !159)
!162 = !DILocation(line: 1087, column: 39, scope: !159)
!163 = !DILocation(line: 1087, column: 45, scope: !159)
!164 = !DILocation(line: 1087, column: 58, scope: !165)
!165 = !DILexicalBlockFile(scope: !159, file: !38, discriminator: 1)
!166 = !DILocation(line: 1087, column: 64, scope: !165)
!167 = !DILocation(line: 1087, column: 50, scope: !165)
!168 = !DILocation(line: 1087, column: 79, scope: !165)
!169 = !DILocation(line: 1087, column: 8, scope: !165)
!170 = !DILocation(line: 1088, column: 93, scope: !171)
!171 = distinct !DILexicalBlock(scope: !159, file: !38, line: 1087, column: 86)
!172 = !DILocation(line: 1088, column: 98, scope: !171)
!173 = !DILocation(line: 1088, column: 7, scope: !171)
!174 = !DILocation(line: 1089, column: 7, scope: !171)
!175 = !DILocation(line: 1096, column: 8, scope: !176)
!176 = distinct !DILexicalBlock(scope: !45, file: !38, line: 1096, column: 8)
!177 = !DILocation(line: 1096, column: 50, scope: !176)
!178 = !DILocation(line: 1097, column: 8, scope: !176)
!179 = !DILocation(line: 1097, column: 16, scope: !176)
!180 = !DILocation(line: 1096, column: 8, scope: !181)
!181 = !DILexicalBlockFile(scope: !45, file: !38, discriminator: 1)
!182 = !DILocation(line: 1098, column: 20, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !38, line: 1098, column: 11)
!184 = distinct !DILexicalBlock(scope: !176, file: !38, line: 1097, column: 45)
!185 = !DILocation(line: 1098, column: 26, scope: !183)
!186 = !DILocation(line: 1098, column: 12, scope: !183)
!187 = !DILocation(line: 1098, column: 41, scope: !183)
!188 = !DILocation(line: 1098, column: 11, scope: !184)
!189 = !DILocation(line: 1100, column: 10, scope: !190)
!190 = distinct !DILexicalBlock(scope: !183, file: !38, line: 1098, column: 48)
!191 = !DILocation(line: 1101, column: 7, scope: !190)
!192 = !DILocation(line: 1101, column: 27, scope: !193)
!193 = !DILexicalBlockFile(scope: !194, file: !38, discriminator: 1)
!194 = distinct !DILexicalBlock(scope: !183, file: !38, line: 1101, column: 18)
!195 = !DILocation(line: 1101, column: 33, scope: !193)
!196 = !DILocation(line: 1101, column: 19, scope: !193)
!197 = !DILocation(line: 1101, column: 48, scope: !193)
!198 = !DILocation(line: 1101, column: 18, scope: !193)
!199 = !DILocation(line: 1107, column: 10, scope: !200)
!200 = distinct !DILexicalBlock(scope: !194, file: !38, line: 1101, column: 55)
!201 = !DILocation(line: 1108, column: 7, scope: !200)
!202 = !DILocation(line: 1109, column: 10, scope: !203)
!203 = distinct !DILexicalBlock(scope: !194, file: !38, line: 1108, column: 14)
!204 = !DILocation(line: 1111, column: 4, scope: !184)
!205 = !DILocation(line: 1112, column: 7, scope: !206)
!206 = distinct !DILexicalBlock(scope: !176, file: !38, line: 1111, column: 11)
!207 = !DILocation(line: 1115, column: 14, scope: !45)
!208 = !DILocation(line: 1115, column: 12, scope: !45)
!209 = !DILocation(line: 1116, column: 4, scope: !45)
!210 = distinct !{!210, !209}
!211 = !DILocation(line: 1116, column: 31, scope: !212)
!212 = !DILexicalBlockFile(scope: !213, file: !38, discriminator: 1)
!213 = distinct !DILexicalBlock(scope: !45, file: !38, line: 1116, column: 7)
!214 = !DILocation(line: 1116, column: 36, scope: !212)
!215 = !DILocation(line: 1116, column: 10, scope: !212)
!216 = !DILocation(line: 1116, column: 20, scope: !212)
!217 = !DILocation(line: 1116, column: 28, scope: !212)
!218 = !DILocation(line: 1116, column: 44, scope: !212)
!219 = !DILocation(line: 1116, column: 54, scope: !212)
!220 = !DILocation(line: 1116, column: 58, scope: !212)
!221 = !DILocation(line: 1116, column: 7, scope: !212)
!222 = !DILocation(line: 1116, column: 17, scope: !212)
!223 = !DILocation(line: 1116, column: 29, scope: !212)
!224 = !DILocation(line: 1116, column: 5, scope: !212)
!225 = !DILocation(line: 1121, column: 36, scope: !226)
!226 = distinct !DILexicalBlock(scope: !45, file: !38, line: 1121, column: 8)
!227 = !DILocation(line: 1121, column: 9, scope: !226)
!228 = !DILocation(line: 1121, column: 8, scope: !45)
!229 = !DILocation(line: 1122, column: 7, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !38, line: 1121, column: 46)
!231 = !DILocation(line: 1123, column: 14, scope: !230)
!232 = !DILocation(line: 1123, column: 7, scope: !230)
!233 = !DILocation(line: 1124, column: 7, scope: !230)
!234 = !DILocalVariable(name: "rpcs", scope: !235, file: !38, line: 1128, type: !236)
!235 = distinct !DILexicalBlock(scope: !45, file: !38, line: 1127, column: 4)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 384, align: 64, elements: !248)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannelCallback", file: !93, line: 115, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcChannelCallback", file: !93, line: 94, size: 384, align: 64, elements: !239)
!239 = !{!240, !241, !244, !245, !246, !247}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !238, file: !93, line: 96, baseType: !53, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !238, file: !93, line: 98, baseType: !242, size: 64, align: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcIn_Callback", file: !93, line: 90, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !238, file: !93, line: 100, baseType: !105, size: 64, align: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "xdrIn", scope: !238, file: !93, line: 102, baseType: !105, size: 64, align: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "xdrOut", scope: !238, file: !93, line: 109, baseType: !105, size: 64, align: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "xdrInSize", scope: !238, file: !93, line: 114, baseType: !121, size: 64, align: 64, offset: 320)
!248 = !{!249}
!249 = !DISubrange(count: 1)
!250 = !DILocation(line: 1128, column: 26, scope: !235)
!251 = !DILocation(line: 1128, column: 35, scope: !235)
!252 = !DILocation(line: 1129, column: 10, scope: !235)
!253 = !DILocation(line: 1129, column: 40, scope: !235)
!254 = !DILocalVariable(name: "sigs", scope: !235, file: !38, line: 1131, type: !255)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 384, align: 64, elements: !262)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsPluginSignalCb", file: !4, line: 484, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsPluginSignalCb", file: !4, line: 480, size: 192, align: 64, elements: !258)
!258 = !{!259, !260, !261}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "signame", scope: !257, file: !4, line: 481, baseType: !81, size: 64, align: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !257, file: !4, line: 482, baseType: !105, size: 64, align: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !257, file: !4, line: 483, baseType: !105, size: 64, align: 64, offset: 128)
!262 = !{!263}
!263 = !DISubrange(count: 2)
!264 = !DILocation(line: 1131, column: 27, scope: !235)
!265 = !DILocalVariable(name: "regs", scope: !235, file: !38, line: 1135, type: !266)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 256, align: 64, elements: !262)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppReg", file: !4, line: 450, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppReg", file: !4, line: 447, size: 128, align: 64, elements: !269)
!269 = !{!270, !271}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !268, file: !4, line: 448, baseType: !106, size: 32, align: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !268, file: !4, line: 449, baseType: !55, size: 64, align: 64, offset: 64)
!272 = !DILocation(line: 1135, column: 19, scope: !235)
!273 = !DILocation(line: 1135, column: 28, scope: !235)
!274 = !DILocation(line: 1136, column: 10, scope: !235)
!275 = !DILocation(line: 1136, column: 50, scope: !235)
!276 = !DILocation(line: 1136, column: 32, scope: !235)
!277 = !DILocation(line: 1137, column: 10, scope: !235)
!278 = !DILocation(line: 1137, column: 49, scope: !235)
!279 = !DILocation(line: 1137, column: 31, scope: !235)
!280 = !DILocation(line: 1140, column: 40, scope: !235)
!281 = !DILocation(line: 1140, column: 22, scope: !235)
!282 = !DILocation(line: 1140, column: 20, scope: !235)
!283 = !DILocation(line: 1142, column: 23, scope: !45)
!284 = !DILocation(line: 1142, column: 21, scope: !45)
!285 = !DILocation(line: 1144, column: 4, scope: !45)
!286 = !DILocation(line: 1145, column: 1, scope: !45)
!287 = distinct !DISubprogram(name: "HgfsServerClientRdrStart", scope: !38, file: !38, line: 1006, type: !288, isLocal: true, isDefinition: true, scopeLine: 1007, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!288 = !DISubroutineType(types: !289)
!289 = !{null}
!290 = !DILocation(line: 1023, column: 1, scope: !287)
!291 = distinct !DISubprogram(name: "HgfsServerClientRdrConnectDrives", scope: !38, file: !38, line: 1033, type: !288, isLocal: true, isDefinition: true, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!292 = !DILocation(line: 1063, column: 1, scope: !291)
!293 = !DILocalVariable(name: "data", arg: 1, scope: !111, file: !38, line: 103, type: !114)
!294 = !DILocation(line: 103, column: 34, scope: !111)
!295 = !DILocalVariable(name: "mgrData", scope: !111, file: !38, line: 105, type: !140)
!296 = !DILocation(line: 105, column: 23, scope: !111)
!297 = !DILocalVariable(name: "replySize", scope: !111, file: !38, line: 106, type: !121)
!298 = !DILocation(line: 106, column: 11, scope: !111)
!299 = !DILocation(line: 111, column: 14, scope: !111)
!300 = !DILocation(line: 111, column: 20, scope: !111)
!301 = !DILocation(line: 111, column: 12, scope: !111)
!302 = !DILocation(line: 113, column: 8, scope: !303)
!303 = distinct !DILexicalBlock(scope: !111, file: !38, line: 113, column: 8)
!304 = !DILocation(line: 113, column: 14, scope: !303)
!305 = !DILocation(line: 113, column: 23, scope: !303)
!306 = !DILocation(line: 113, column: 8, scope: !111)
!307 = !DILocation(line: 114, column: 36, scope: !308)
!308 = distinct !DILexicalBlock(scope: !303, file: !38, line: 113, column: 29)
!309 = !DILocation(line: 114, column: 14, scope: !308)
!310 = !DILocation(line: 114, column: 7, scope: !308)
!311 = !DILocation(line: 117, column: 14, scope: !111)
!312 = !DILocation(line: 118, column: 36, scope: !111)
!313 = !DILocation(line: 118, column: 45, scope: !111)
!314 = !DILocation(line: 118, column: 51, scope: !111)
!315 = !DILocation(line: 118, column: 56, scope: !111)
!316 = !DILocation(line: 118, column: 61, scope: !111)
!317 = !DILocation(line: 118, column: 67, scope: !111)
!318 = !DILocation(line: 118, column: 76, scope: !111)
!319 = !DILocation(line: 118, column: 4, scope: !111)
!320 = !DILocation(line: 120, column: 4, scope: !111)
!321 = !DILocation(line: 120, column: 10, scope: !111)
!322 = !DILocation(line: 120, column: 17, scope: !111)
!323 = !DILocation(line: 121, column: 22, scope: !111)
!324 = !DILocation(line: 121, column: 4, scope: !111)
!325 = !DILocation(line: 121, column: 10, scope: !111)
!326 = !DILocation(line: 121, column: 20, scope: !111)
!327 = !DILocation(line: 122, column: 4, scope: !111)
!328 = !DILocation(line: 123, column: 1, scope: !111)
!329 = distinct !DISubprogram(name: "HgfsServerCapReg", scope: !38, file: !38, line: 138, type: !330, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!330 = !DISubroutineType(types: !331)
!331 = !{!55, !105, !74, !71, !48}
!332 = !DILocalVariable(name: "src", arg: 1, scope: !329, file: !38, line: 138, type: !105)
!333 = !DILocation(line: 138, column: 27, scope: !329)
!334 = !DILocalVariable(name: "ctx", arg: 2, scope: !329, file: !38, line: 139, type: !74)
!335 = !DILocation(line: 139, column: 31, scope: !329)
!336 = !DILocalVariable(name: "set", arg: 3, scope: !329, file: !38, line: 140, type: !71)
!337 = !DILocation(line: 140, column: 27, scope: !329)
!338 = !DILocalVariable(name: "plugin", arg: 4, scope: !329, file: !38, line: 141, type: !48)
!339 = !DILocation(line: 141, column: 35, scope: !329)
!340 = !DILocalVariable(name: "msg", scope: !329, file: !38, line: 143, type: !61)
!341 = !DILocation(line: 143, column: 11, scope: !329)
!342 = !DILocalVariable(name: "appName", scope: !329, file: !38, line: 144, type: !53)
!343 = !DILocation(line: 144, column: 16, scope: !329)
!344 = !DILocation(line: 146, column: 17, scope: !345)
!345 = distinct !DILexicalBlock(scope: !329, file: !38, line: 146, column: 8)
!346 = !DILocation(line: 146, column: 23, scope: !345)
!347 = !DILocation(line: 146, column: 9, scope: !345)
!348 = !DILocation(line: 146, column: 38, scope: !345)
!349 = !DILocation(line: 146, column: 8, scope: !329)
!350 = !DILocation(line: 147, column: 15, scope: !351)
!351 = distinct !DILexicalBlock(scope: !345, file: !38, line: 146, column: 45)
!352 = !DILocation(line: 148, column: 4, scope: !351)
!353 = !DILocation(line: 148, column: 24, scope: !354)
!354 = !DILexicalBlockFile(scope: !355, file: !38, discriminator: 1)
!355 = distinct !DILexicalBlock(scope: !345, file: !38, line: 148, column: 15)
!356 = !DILocation(line: 148, column: 30, scope: !354)
!357 = !DILocation(line: 148, column: 16, scope: !354)
!358 = !DILocation(line: 148, column: 45, scope: !354)
!359 = !DILocation(line: 148, column: 15, scope: !354)
!360 = !DILocation(line: 149, column: 15, scope: !361)
!361 = distinct !DILexicalBlock(scope: !355, file: !38, line: 148, column: 52)
!362 = !DILocation(line: 150, column: 4, scope: !361)
!363 = !DILocation(line: 151, column: 7, scope: !364)
!364 = distinct !DILexicalBlock(scope: !355, file: !38, line: 150, column: 11)
!365 = !DILocation(line: 155, column: 26, scope: !329)
!366 = !DILocation(line: 156, column: 26, scope: !329)
!367 = !DILocation(line: 154, column: 10, scope: !329)
!368 = !DILocation(line: 154, column: 8, scope: !329)
!369 = !DILocation(line: 166, column: 8, scope: !370)
!370 = distinct !DILexicalBlock(scope: !329, file: !38, line: 166, column: 8)
!371 = !DILocation(line: 166, column: 13, scope: !370)
!372 = !DILocation(line: 166, column: 17, scope: !370)
!373 = !DILocation(line: 166, column: 37, scope: !374)
!374 = !DILexicalBlockFile(scope: !370, file: !38, discriminator: 1)
!375 = !DILocation(line: 166, column: 42, scope: !374)
!376 = !DILocation(line: 166, column: 47, scope: !374)
!377 = !DILocation(line: 166, column: 59, scope: !374)
!378 = !DILocation(line: 166, column: 52, scope: !374)
!379 = !DILocation(line: 166, column: 64, scope: !374)
!380 = !DILocation(line: 166, column: 21, scope: !381)
!381 = !DILexicalBlockFile(scope: !374, file: !38, discriminator: 2)
!382 = !DILocation(line: 166, column: 21, scope: !374)
!383 = !DILocation(line: 166, column: 8, scope: !374)
!384 = !DILocation(line: 167, column: 7, scope: !385)
!385 = distinct !DILexicalBlock(scope: !370, file: !38, line: 166, column: 81)
!386 = !DILocation(line: 168, column: 4, scope: !385)
!387 = !DILocation(line: 170, column: 11, scope: !329)
!388 = !DILocation(line: 170, column: 4, scope: !329)
!389 = !DILocation(line: 171, column: 4, scope: !329)
!390 = distinct !DISubprogram(name: "HgfsServerShutdown", scope: !38, file: !38, line: 83, type: !391, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !105, !74, !48}
!393 = !DILocalVariable(name: "src", arg: 1, scope: !390, file: !38, line: 83, type: !105)
!394 = !DILocation(line: 83, column: 29, scope: !390)
!395 = !DILocalVariable(name: "ctx", arg: 2, scope: !390, file: !38, line: 84, type: !74)
!396 = !DILocation(line: 84, column: 33, scope: !390)
!397 = !DILocalVariable(name: "plugin", arg: 3, scope: !390, file: !38, line: 85, type: !48)
!398 = !DILocation(line: 85, column: 37, scope: !390)
!399 = !DILocalVariable(name: "mgrData", scope: !390, file: !38, line: 87, type: !140)
!400 = !DILocation(line: 87, column: 23, scope: !390)
!401 = !DILocation(line: 87, column: 33, scope: !390)
!402 = !DILocation(line: 87, column: 41, scope: !390)
!403 = !DILocation(line: 88, column: 33, scope: !390)
!404 = !DILocation(line: 88, column: 4, scope: !390)
!405 = !DILocation(line: 89, column: 11, scope: !390)
!406 = !DILocation(line: 89, column: 4, scope: !390)
!407 = !DILocation(line: 90, column: 4, scope: !390)
!408 = !DILocation(line: 91, column: 1, scope: !390)
!409 = distinct !DISubprogram(name: "HgfsServerCloseClientRdrEvent", scope: !38, file: !38, line: 987, type: !288, isLocal: true, isDefinition: true, scopeLine: 988, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!410 = !DILocation(line: 996, column: 1, scope: !409)
