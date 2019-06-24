; ModuleID = './libvix_la-vixPlugin.o.i'
source_filename = "./libvix_la-vixPlugin.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ToolsPluginData = type { i8*, %struct._GArray*, i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)*, i8* }
%struct._GArray = type { i8*, i32 }
%struct.ToolsAppCtx = type { i32, i8*, i32, i32, %struct._GMainLoop*, %struct._RpcChannel*, %struct._GKeyFile*, i32, i32, i8**, i8* }
%struct._GMainLoop = type opaque
%struct._RpcChannel = type opaque
%struct._GKeyFile = type opaque
%struct.RpcChannelCallback = type { i8*, i32 (%struct.RpcInData*)*, i8*, i8*, i8*, i64 }
%struct.RpcInData = type { i8*, i8*, i64, i8*, i64, i32, i8*, i8* }
%struct.ToolsPluginSignalCb = type { i8*, i8*, i8* }
%struct.ToolsAppReg = type { i32, %struct._GArray* }

@vm_version = constant [20 x i8] c"version=10.3.0.5330\00", section ".modinfo", align 16
@ToolsOnLoad.regData = internal global %struct.ToolsPluginData { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), %struct._GArray* null, i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)* null, i8* null }, align 8
@.str = private unnamed_addr constant [4 x i8] c"vix\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Vix_1_Run_Program\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Vix_1_Get_ToolsProperties\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Vix_1_Send_Hgfs_Packet\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Vix_1_Relayed_Command\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Vix_1_Mount_Volumes\00", align 1
@ToolsOnLoad.rpcs = private unnamed_addr constant [5 x %struct.RpcChannelCallback] [%struct.RpcChannelCallback { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.RpcInData*)* @FoundryToolsDaemonRunProgram, i8* null, i8* null, i8* null, i64 0 }, %struct.RpcChannelCallback { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.RpcInData*)* @FoundryToolsDaemonGetToolsProperties, i8* null, i8* null, i8* null, i64 0 }, %struct.RpcChannelCallback { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.RpcInData*)* @ToolsDaemonHgfsImpersonated, i8* null, i8* null, i8* null, i64 0 }, %struct.RpcChannelCallback { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.RpcInData*)* @ToolsDaemonTcloReceiveVixCommand, i8* null, i8* null, i8* null, i64 0 }, %struct.RpcChannelCallback { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.RpcInData*)* @ToolsDaemonTcloMountHGFS, i8* null, i8* null, i8* null, i64 0 }], align 16
@.str.6 = private unnamed_addr constant [13 x i8] c"tcs_shutdown\00", align 1
@ToolsOnLoad.sigs = private unnamed_addr constant [1 x %struct.ToolsPluginSignalCb] [%struct.ToolsPluginSignalCb { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* bitcast (void (i8*, %struct.ToolsAppCtx*, %struct.ToolsPluginData*)* @VixShutdown to i8*), i8* bitcast (%struct.ToolsPluginData* @ToolsOnLoad.regData to i8*) }], align 16
@.str.7 = private unnamed_addr constant [6 x i8] c"vmsvc\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"tcs_io_freeze\00", align 1
@ToolsOnLoad.sysSigs = private unnamed_addr constant [1 x %struct.ToolsPluginSignalCb] [%struct.ToolsPluginSignalCb { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (void (i8*, %struct.ToolsAppCtx*, i32, i8*)* @VixIOFreeze to i8*), i8* null }], align 16
@.str.9 = private unnamed_addr constant [24 x i8] c"Vix_1_SyncDriver_Freeze\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Vix_1_SyncDriver_Thaw\00", align 1
@ToolsOnLoad.sysRpcs = private unnamed_addr constant [2 x %struct.RpcChannelCallback] [%struct.RpcChannelCallback { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.RpcInData*)* @ToolsDaemonTcloSyncDriverFreeze, i8* null, i8* null, i8* null, i64 0 }, %struct.RpcChannelCallback { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.RpcInData*)* @ToolsDaemonTcloSyncDriverThaw, i8* null, i8* null, i8* null, i64 0 }], align 16

; Function Attrs: nounwind uwtable
define %struct.ToolsPluginData* @ToolsOnLoad(%struct.ToolsAppCtx*) #0 !dbg !22 {
  %2 = alloca %struct.ToolsAppCtx*, align 8
  %3 = alloca [5 x %struct.RpcChannelCallback], align 16
  %4 = alloca [1 x %struct.ToolsPluginSignalCb], align 16
  %5 = alloca [2 x %struct.ToolsAppReg], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [1 x %struct.ToolsPluginSignalCb], align 16
  %9 = alloca [2 x %struct.RpcChannelCallback], align 16
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %2, metadata !91, metadata !92), !dbg !93
  call void @llvm.dbg.declare(metadata [5 x %struct.RpcChannelCallback]* %3, metadata !94, metadata !92), !dbg !127
  %10 = bitcast [5 x %struct.RpcChannelCallback]* %3 to i8*, !dbg !127
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast ([5 x %struct.RpcChannelCallback]* @ToolsOnLoad.rpcs to i8*), i64 240, i32 16, i1 false), !dbg !127
  call void @llvm.dbg.declare(metadata [1 x %struct.ToolsPluginSignalCb]* %4, metadata !128, metadata !92), !dbg !138
  %11 = bitcast [1 x %struct.ToolsPluginSignalCb]* %4 to i8*, !dbg !138
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast ([1 x %struct.ToolsPluginSignalCb]* @ToolsOnLoad.sigs to i8*), i64 24, i32 16, i1 false), !dbg !138
  call void @llvm.dbg.declare(metadata [2 x %struct.ToolsAppReg]* %5, metadata !139, metadata !92), !dbg !148
  %12 = getelementptr inbounds [2 x %struct.ToolsAppReg], [2 x %struct.ToolsAppReg]* %5, i64 0, i64 0, !dbg !149
  %13 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %12, i32 0, i32 0, !dbg !150
  store i32 1, i32* %13, align 16, !dbg !150
  %14 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %12, i32 0, i32 1, !dbg !150
  %15 = getelementptr inbounds [5 x %struct.RpcChannelCallback], [5 x %struct.RpcChannelCallback]* %3, i32 0, i32 0, !dbg !151
  %16 = bitcast %struct.RpcChannelCallback* %15 to i8*, !dbg !151
  %17 = call %struct._GArray* @VMTools_WrapArray(i8* %16, i32 48, i32 5), !dbg !152
  store %struct._GArray* %17, %struct._GArray** %14, align 8, !dbg !150
  %18 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %12, i64 1, !dbg !149
  %19 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %18, i32 0, i32 0, !dbg !153
  store i32 2, i32* %19, align 16, !dbg !153
  %20 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %18, i32 0, i32 1, !dbg !153
  %21 = getelementptr inbounds [1 x %struct.ToolsPluginSignalCb], [1 x %struct.ToolsPluginSignalCb]* %4, i32 0, i32 0, !dbg !154
  %22 = bitcast %struct.ToolsPluginSignalCb* %21 to i8*, !dbg !154
  %23 = call %struct._GArray* @VMTools_WrapArray(i8* %22, i32 24, i32 1), !dbg !155
  store %struct._GArray* %23, %struct._GArray** %20, align 8, !dbg !153
  %24 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %2, align 8, !dbg !156
  call void @FoundryToolsDaemon_Initialize(%struct.ToolsAppCtx* %24), !dbg !157
  %25 = getelementptr inbounds [2 x %struct.ToolsAppReg], [2 x %struct.ToolsAppReg]* %5, i32 0, i32 0, !dbg !158
  %26 = bitcast %struct.ToolsAppReg* %25 to i8*, !dbg !158
  %27 = call %struct._GArray* @VMTools_WrapArray(i8* %26, i32 16, i32 2), !dbg !159
  store %struct._GArray* %27, %struct._GArray** getelementptr inbounds (%struct.ToolsPluginData, %struct.ToolsPluginData* @ToolsOnLoad.regData, i32 0, i32 1), align 8, !dbg !160
  %28 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %2, align 8, !dbg !161
  %29 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %28, i32 0, i32 1, !dbg !163
  %30 = load i8*, i8** %29, align 8, !dbg !163
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)) #5, !dbg !164
  %32 = icmp eq i32 %31, 0, !dbg !165
  br i1 %32, label %33, label %95, !dbg !166

; <label>:33:                                     ; preds = %1
  %34 = call signext i8 @SyncDriver_Init(), !dbg !167
  %35 = sext i8 %34 to i32, !dbg !167
  %36 = icmp ne i32 %35, 0, !dbg !167
  br i1 %36, label %37, label %95, !dbg !169

; <label>:37:                                     ; preds = %33
  call void @llvm.dbg.declare(metadata i64* %6, metadata !170, metadata !92), !dbg !172
  call void @llvm.dbg.declare(metadata i64* %7, metadata !173, metadata !92), !dbg !174
  store i64 0, i64* %7, align 8, !dbg !175
  br label %38, !dbg !177

; <label>:38:                                     ; preds = %91, %37
  %39 = load i64, i64* %7, align 8, !dbg !178
  %40 = icmp ult i64 %39, 2, !dbg !181
  br i1 %40, label %41, label %94, !dbg !182

; <label>:41:                                     ; preds = %38
  %42 = load i64, i64* %7, align 8, !dbg !183
  %43 = getelementptr inbounds [2 x %struct.ToolsAppReg], [2 x %struct.ToolsAppReg]* %5, i64 0, i64 %42, !dbg !186
  %44 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %43, i32 0, i32 0, !dbg !187
  %45 = load i32, i32* %44, align 16, !dbg !187
  %46 = icmp eq i32 %45, 2, !dbg !188
  br i1 %46, label %47, label %65, !dbg !189

; <label>:47:                                     ; preds = %41
  call void @llvm.dbg.declare(metadata [1 x %struct.ToolsPluginSignalCb]* %8, metadata !190, metadata !92), !dbg !192
  %48 = bitcast [1 x %struct.ToolsPluginSignalCb]* %8 to i8*, !dbg !192
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* bitcast ([1 x %struct.ToolsPluginSignalCb]* @ToolsOnLoad.sysSigs to i8*), i64 24, i32 16, i1 false), !dbg !192
  store i64 0, i64* %6, align 8, !dbg !193
  br label %49, !dbg !195

; <label>:49:                                     ; preds = %61, %47
  %50 = load i64, i64* %6, align 8, !dbg !196
  %51 = icmp ult i64 %50, 1, !dbg !199
  br i1 %51, label %52, label %64, !dbg !200

; <label>:52:                                     ; preds = %49
  %53 = load i64, i64* %7, align 8, !dbg !201
  %54 = getelementptr inbounds [2 x %struct.ToolsAppReg], [2 x %struct.ToolsAppReg]* %5, i64 0, i64 %53, !dbg !203
  %55 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %54, i32 0, i32 1, !dbg !204
  %56 = load %struct._GArray*, %struct._GArray** %55, align 8, !dbg !204
  %57 = load i64, i64* %6, align 8, !dbg !205
  %58 = getelementptr inbounds [1 x %struct.ToolsPluginSignalCb], [1 x %struct.ToolsPluginSignalCb]* %8, i64 0, i64 %57, !dbg !206
  %59 = bitcast %struct.ToolsPluginSignalCb* %58 to i8*, !dbg !207
  %60 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %56, i8* %59, i32 1), !dbg !208
  br label %61, !dbg !209

; <label>:61:                                     ; preds = %52
  %62 = load i64, i64* %6, align 8, !dbg !210
  %63 = add i64 %62, 1, !dbg !210
  store i64 %63, i64* %6, align 8, !dbg !210
  br label %49, !dbg !212, !llvm.loop !213

; <label>:64:                                     ; preds = %49
  br label %90, !dbg !215

; <label>:65:                                     ; preds = %41
  %66 = load i64, i64* %7, align 8, !dbg !216
  %67 = getelementptr inbounds [2 x %struct.ToolsAppReg], [2 x %struct.ToolsAppReg]* %5, i64 0, i64 %66, !dbg !218
  %68 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %67, i32 0, i32 0, !dbg !219
  %69 = load i32, i32* %68, align 16, !dbg !219
  %70 = icmp eq i32 %69, 1, !dbg !220
  br i1 %70, label %71, label %89, !dbg !221

; <label>:71:                                     ; preds = %65
  call void @llvm.dbg.declare(metadata [2 x %struct.RpcChannelCallback]* %9, metadata !222, metadata !92), !dbg !225
  %72 = bitcast [2 x %struct.RpcChannelCallback]* %9 to i8*, !dbg !225
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* bitcast ([2 x %struct.RpcChannelCallback]* @ToolsOnLoad.sysRpcs to i8*), i64 96, i32 16, i1 false), !dbg !225
  store i64 0, i64* %6, align 8, !dbg !226
  br label %73, !dbg !228

; <label>:73:                                     ; preds = %85, %71
  %74 = load i64, i64* %6, align 8, !dbg !229
  %75 = icmp ult i64 %74, 2, !dbg !232
  br i1 %75, label %76, label %88, !dbg !233

; <label>:76:                                     ; preds = %73
  %77 = load i64, i64* %7, align 8, !dbg !234
  %78 = getelementptr inbounds [2 x %struct.ToolsAppReg], [2 x %struct.ToolsAppReg]* %5, i64 0, i64 %77, !dbg !236
  %79 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %78, i32 0, i32 1, !dbg !237
  %80 = load %struct._GArray*, %struct._GArray** %79, align 8, !dbg !237
  %81 = load i64, i64* %6, align 8, !dbg !238
  %82 = getelementptr inbounds [2 x %struct.RpcChannelCallback], [2 x %struct.RpcChannelCallback]* %9, i64 0, i64 %81, !dbg !239
  %83 = bitcast %struct.RpcChannelCallback* %82 to i8*, !dbg !240
  %84 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %80, i8* %83, i32 1), !dbg !241
  br label %85, !dbg !242

; <label>:85:                                     ; preds = %76
  %86 = load i64, i64* %6, align 8, !dbg !243
  %87 = add i64 %86, 1, !dbg !243
  store i64 %87, i64* %6, align 8, !dbg !243
  br label %73, !dbg !245, !llvm.loop !246

; <label>:88:                                     ; preds = %73
  br label %89, !dbg !248

; <label>:89:                                     ; preds = %88, %65
  br label %90

; <label>:90:                                     ; preds = %89, %64
  br label %91, !dbg !249

; <label>:91:                                     ; preds = %90
  %92 = load i64, i64* %7, align 8, !dbg !250
  %93 = add i64 %92, 1, !dbg !250
  store i64 %93, i64* %7, align 8, !dbg !250
  br label %38, !dbg !252, !llvm.loop !253

; <label>:94:                                     ; preds = %38
  br label %95, !dbg !255

; <label>:95:                                     ; preds = %94, %33, %1
  ret %struct.ToolsPluginData* @ToolsOnLoad.regData, !dbg !256
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @FoundryToolsDaemonRunProgram(%struct.RpcInData*) #2

declare i32 @FoundryToolsDaemonGetToolsProperties(%struct.RpcInData*) #2

declare i32 @ToolsDaemonHgfsImpersonated(%struct.RpcInData*) #2

declare i32 @ToolsDaemonTcloReceiveVixCommand(%struct.RpcInData*) #2

declare i32 @ToolsDaemonTcloMountHGFS(%struct.RpcInData*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @VixShutdown(i8*, %struct.ToolsAppCtx*, %struct.ToolsPluginData*) #0 !dbg !257 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ToolsAppCtx*, align 8
  %6 = alloca %struct.ToolsPluginData*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !260, metadata !92), !dbg !261
  store %struct.ToolsAppCtx* %1, %struct.ToolsAppCtx** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %5, metadata !262, metadata !92), !dbg !263
  store %struct.ToolsPluginData* %2, %struct.ToolsPluginData** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsPluginData** %6, metadata !264, metadata !92), !dbg !265
  %7 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %5, align 8, !dbg !266
  call void @FoundryToolsDaemon_Uninitialize(%struct.ToolsAppCtx* %7), !dbg !267
  ret void, !dbg !268
}

declare %struct._GArray* @VMTools_WrapArray(i8*, i32, i32) #2

declare void @FoundryToolsDaemon_Initialize(%struct.ToolsAppCtx*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare signext i8 @SyncDriver_Init() #2

; Function Attrs: nounwind uwtable
define internal void @VixIOFreeze(i8*, %struct.ToolsAppCtx*, i32, i8*) #0 !dbg !269 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ToolsAppCtx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !272, metadata !92), !dbg !273
  store %struct.ToolsAppCtx* %1, %struct.ToolsAppCtx** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %6, metadata !274, metadata !92), !dbg !275
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !276, metadata !92), !dbg !277
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !278, metadata !92), !dbg !279
  %9 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %6, align 8, !dbg !280
  %10 = load i32, i32* %7, align 4, !dbg !281
  call void @FoundryToolsDaemon_RestrictVixCommands(%struct.ToolsAppCtx* %9, i32 %10), !dbg !282
  ret void, !dbg !283
}

declare %struct._GArray* @g_array_append_vals(%struct._GArray*, i8*, i32) #2

declare i32 @ToolsDaemonTcloSyncDriverFreeze(%struct.RpcInData*) #2

declare i32 @ToolsDaemonTcloSyncDriverThaw(%struct.RpcInData*) #2

declare void @FoundryToolsDaemon_Uninitialize(%struct.ToolsAppCtx*) #2

declare void @FoundryToolsDaemon_RestrictVixCommands(%struct.ToolsAppCtx*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!88, !89}
!llvm.ident = !{!90}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !13)
!1 = !DIFile(filename: "libvix_la-vixPlugin.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1544")
!2 = !{!3, !7}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 232, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/plugin.h", directory: "/home/lichi/Desktop/open-vm-tools/line1544")
!5 = !{!6}
!6 = !DIEnumerator(name: "TOOLS_CORE_API_V1", value: 1)
!7 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 339, size: 32, align: 32, elements: !8)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "TOOLS_APP_GUESTRPC", value: 1)
!10 = !DIEnumerator(name: "TOOLS_APP_SIGNALS", value: 2)
!11 = !DIEnumerator(name: "TOOLS_APP_PROVIDER", value: 3)
!12 = !DIEnumerator(name: "TOOLS_SVC_PROPERTY", value: 4)
!13 = !{!14, !21}
!14 = distinct !DIGlobalVariable(name: "vm_version", scope: !0, file: !15, line: 40, type: !16, isLocal: false, isDefinition: true, variable: [20 x i8]* @vm_version)
!15 = !DIFile(filename: "vixPlugin.c", directory: "/home/lichi/Desktop/open-vm-tools/line1544")
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 160, align: 8, elements: !19)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!19 = !{!20}
!20 = !DISubrange(count: 20)
!21 = distinct !DIGlobalVariable(name: "regData", scope: !22, file: !15, line: 89, type: !26, isLocal: true, isDefinition: true, variable: %struct.ToolsPluginData* @ToolsOnLoad.regData)
!22 = distinct !DISubprogram(name: "ToolsOnLoad", scope: !15, file: !15, line: 87, type: !23, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!23 = !DISubroutineType(types: !24)
!24 = !{!25, !51}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsPluginData", file: !4, line: 545, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsPluginData", file: !4, line: 501, size: 256, align: 64, elements: !28)
!28 = !{!29, !31, !44, !86}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !27, file: !4, line: 503, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !27, file: !4, line: 508, baseType: !32, size: 64, align: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "GArray", file: !34, line: 37, baseType: !35)
!34 = !DIFile(filename: "/usr/include/glib-2.0/glib/garray.h", directory: "/home/lichi/Desktop/open-vm-tools/line1544")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GArray", file: !34, line: 41, size: 128, align: 64, elements: !36)
!36 = !{!37, !41}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !35, file: !34, line: 43, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !40, line: 46, baseType: !18)
!40 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1544")
!41 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !35, file: !34, line: 44, baseType: !42, size: 32, align: 32, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !40, line: 55, baseType: !43)
!43 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "errorCb", scope: !27, file: !4, line: 539, baseType: !45, size: 64, align: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !51, !84, !82, !85}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !40, line: 50, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !40, line: 49, baseType: !50)
!50 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppCtx", file: !4, line: 274, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppCtx", file: !4, line: 241, size: 576, align: 64, elements: !54)
!54 = !{!55, !57, !60, !61, !62, !67, !72, !77, !78, !79, !81}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !53, file: !4, line: 243, baseType: !56, size: 32, align: 32)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCoreAPI", file: !4, line: 234, baseType: !3)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !53, file: !4, line: 245, baseType: !58, size: 64, align: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "isVMware", scope: !53, file: !4, line: 247, baseType: !48, size: 32, align: 32, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "errorCode", scope: !53, file: !4, line: 249, baseType: !50, size: 32, align: 32, offset: 160)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "mainLoop", scope: !53, file: !4, line: 251, baseType: !63, size: 64, align: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainLoop", file: !65, line: 56, baseType: !66)
!65 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line1544")
!66 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainLoop", file: !65, line: 56, flags: DIFlagFwdDecl)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !53, file: !4, line: 253, baseType: !68, size: 64, align: 64, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !70, line: 48, baseType: !71)
!70 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line1544")
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !70, line: 48, flags: DIFlagFwdDecl)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !53, file: !4, line: 255, baseType: !73, size: 64, align: 64, offset: 320)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !75, line: 48, baseType: !76)
!75 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1544")
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !75, line: 48, flags: DIFlagFwdDecl)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "blockFD", scope: !53, file: !4, line: 261, baseType: !50, size: 32, align: 32, offset: 384)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "uinputFD", scope: !53, file: !4, line: 263, baseType: !50, size: 32, align: 32, offset: 416)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !53, file: !4, line: 265, baseType: !80, size: 64, align: 64, offset: 448)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "serviceObj", scope: !53, file: !4, line: 273, baseType: !82, size: 64, align: 64, offset: 512)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !40, line: 77, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppType", file: !4, line: 360, baseType: !7)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !27, file: !4, line: 544, baseType: !82, size: 64, align: 64, offset: 192)
!87 = !{}
!88 = !{i32 2, !"Dwarf Version", i32 4}
!89 = !{i32 2, !"Debug Info Version", i32 3}
!90 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!91 = !DILocalVariable(name: "ctx", arg: 1, scope: !22, file: !15, line: 87, type: !51)
!92 = !DIExpression()
!93 = !DILocation(line: 87, column: 26, scope: !22)
!94 = !DILocalVariable(name: "rpcs", scope: !22, file: !15, line: 95, type: !95)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 1920, align: 64, elements: !125)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannelCallback", file: !70, line: 115, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcChannelCallback", file: !70, line: 94, size: 384, align: 64, elements: !98)
!98 = !{!99, !100, !121, !122, !123, !124}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !97, file: !70, line: 96, baseType: !30, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !97, file: !70, line: 98, baseType: !101, size: 64, align: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcIn_Callback", file: !70, line: 90, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!48, !105}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcInData", file: !70, line: 77, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcInData", file: !70, line: 51, size: 512, align: 64, elements: !108)
!108 = !{!109, !110, !111, !115, !117, !118, !119, !120}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !107, file: !70, line: 53, baseType: !30, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !107, file: !70, line: 58, baseType: !30, size: 64, align: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "argsSize", scope: !107, file: !70, line: 60, baseType: !112, size: 64, align: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !113, line: 216, baseType: !114)
!113 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1544")
!114 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !107, file: !70, line: 65, baseType: !116, size: 64, align: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "resultLen", scope: !107, file: !70, line: 67, baseType: !112, size: 64, align: 64, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "freeResult", scope: !107, file: !70, line: 72, baseType: !48, size: 32, align: 32, offset: 320)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "appCtx", scope: !107, file: !70, line: 74, baseType: !83, size: 64, align: 64, offset: 384)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !107, file: !70, line: 76, baseType: !83, size: 64, align: 64, offset: 448)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !97, file: !70, line: 100, baseType: !82, size: 64, align: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "xdrIn", scope: !97, file: !70, line: 102, baseType: !82, size: 64, align: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "xdrOut", scope: !97, file: !70, line: 109, baseType: !82, size: 64, align: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "xdrInSize", scope: !97, file: !70, line: 114, baseType: !112, size: 64, align: 64, offset: 320)
!125 = !{!126}
!126 = !DISubrange(count: 5)
!127 = !DILocation(line: 95, column: 23, scope: !22)
!128 = !DILocalVariable(name: "sigs", scope: !22, file: !15, line: 107, type: !129)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 192, align: 64, elements: !136)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsPluginSignalCb", file: !4, line: 484, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsPluginSignalCb", file: !4, line: 480, size: 192, align: 64, elements: !132)
!132 = !{!133, !134, !135}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "signame", scope: !131, file: !4, line: 481, baseType: !58, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !131, file: !4, line: 482, baseType: !82, size: 64, align: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !131, file: !4, line: 483, baseType: !82, size: 64, align: 64, offset: 128)
!136 = !{!137}
!137 = !DISubrange(count: 1)
!138 = !DILocation(line: 107, column: 24, scope: !22)
!139 = !DILocalVariable(name: "regs", scope: !22, file: !15, line: 110, type: !140)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 256, align: 64, elements: !146)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppReg", file: !4, line: 450, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppReg", file: !4, line: 447, size: 128, align: 64, elements: !143)
!143 = !{!144, !145}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !142, file: !4, line: 448, baseType: !84, size: 32, align: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !142, file: !4, line: 449, baseType: !32, size: 64, align: 64, offset: 64)
!146 = !{!147}
!147 = !DISubrange(count: 2)
!148 = !DILocation(line: 110, column: 16, scope: !22)
!149 = !DILocation(line: 110, column: 25, scope: !22)
!150 = !DILocation(line: 111, column: 7, scope: !22)
!151 = !DILocation(line: 111, column: 47, scope: !22)
!152 = !DILocation(line: 111, column: 29, scope: !22)
!153 = !DILocation(line: 112, column: 7, scope: !22)
!154 = !DILocation(line: 112, column: 46, scope: !22)
!155 = !DILocation(line: 112, column: 28, scope: !22)
!156 = !DILocation(line: 119, column: 34, scope: !22)
!157 = !DILocation(line: 119, column: 4, scope: !22)
!158 = !DILocation(line: 120, column: 37, scope: !22)
!159 = !DILocation(line: 120, column: 19, scope: !22)
!160 = !DILocation(line: 120, column: 17, scope: !22)
!161 = !DILocation(line: 122, column: 17, scope: !162)
!162 = distinct !DILexicalBlock(scope: !22, file: !15, line: 122, column: 8)
!163 = !DILocation(line: 122, column: 23, scope: !162)
!164 = !DILocation(line: 122, column: 9, scope: !162)
!165 = !DILocation(line: 122, column: 38, scope: !162)
!166 = !DILocation(line: 122, column: 44, scope: !162)
!167 = !DILocation(line: 122, column: 47, scope: !168)
!168 = !DILexicalBlockFile(scope: !162, file: !15, discriminator: 1)
!169 = !DILocation(line: 122, column: 8, scope: !168)
!170 = !DILocalVariable(name: "i", scope: !171, file: !15, line: 123, type: !112)
!171 = distinct !DILexicalBlock(scope: !162, file: !15, line: 122, column: 66)
!172 = !DILocation(line: 123, column: 14, scope: !171)
!173 = !DILocalVariable(name: "reg", scope: !171, file: !15, line: 124, type: !112)
!174 = !DILocation(line: 124, column: 14, scope: !171)
!175 = !DILocation(line: 126, column: 16, scope: !176)
!176 = distinct !DILexicalBlock(scope: !171, file: !15, line: 126, column: 7)
!177 = !DILocation(line: 126, column: 12, scope: !176)
!178 = !DILocation(line: 126, column: 21, scope: !179)
!179 = !DILexicalBlockFile(scope: !180, file: !15, discriminator: 1)
!180 = distinct !DILexicalBlock(scope: !176, file: !15, line: 126, column: 7)
!181 = !DILocation(line: 126, column: 25, scope: !179)
!182 = !DILocation(line: 126, column: 7, scope: !179)
!183 = !DILocation(line: 127, column: 19, scope: !184)
!184 = distinct !DILexicalBlock(scope: !185, file: !15, line: 127, column: 14)
!185 = distinct !DILexicalBlock(scope: !180, file: !15, line: 126, column: 68)
!186 = !DILocation(line: 127, column: 14, scope: !184)
!187 = !DILocation(line: 127, column: 24, scope: !184)
!188 = !DILocation(line: 127, column: 29, scope: !184)
!189 = !DILocation(line: 127, column: 14, scope: !185)
!190 = !DILocalVariable(name: "sysSigs", scope: !191, file: !15, line: 132, type: !129)
!191 = distinct !DILexicalBlock(scope: !184, file: !15, line: 127, column: 51)
!192 = !DILocation(line: 132, column: 33, scope: !191)
!193 = !DILocation(line: 136, column: 20, scope: !194)
!194 = distinct !DILexicalBlock(scope: !191, file: !15, line: 136, column: 13)
!195 = !DILocation(line: 136, column: 18, scope: !194)
!196 = !DILocation(line: 136, column: 25, scope: !197)
!197 = !DILexicalBlockFile(scope: !198, file: !15, discriminator: 1)
!198 = distinct !DILexicalBlock(scope: !194, file: !15, line: 136, column: 13)
!199 = !DILocation(line: 136, column: 27, scope: !197)
!200 = !DILocation(line: 136, column: 13, scope: !197)
!201 = !DILocation(line: 137, column: 42, scope: !202)
!202 = distinct !DILexicalBlock(scope: !198, file: !15, line: 136, column: 74)
!203 = !DILocation(line: 137, column: 37, scope: !202)
!204 = !DILocation(line: 137, column: 47, scope: !202)
!205 = !DILocation(line: 137, column: 63, scope: !202)
!206 = !DILocation(line: 137, column: 55, scope: !202)
!207 = !DILocation(line: 137, column: 53, scope: !202)
!208 = !DILocation(line: 137, column: 16, scope: !202)
!209 = !DILocation(line: 138, column: 13, scope: !202)
!210 = !DILocation(line: 136, column: 70, scope: !211)
!211 = !DILexicalBlockFile(scope: !198, file: !15, discriminator: 2)
!212 = !DILocation(line: 136, column: 13, scope: !211)
!213 = distinct !{!213, !214}
!214 = !DILocation(line: 136, column: 13, scope: !191)
!215 = !DILocation(line: 139, column: 10, scope: !191)
!216 = !DILocation(line: 141, column: 24, scope: !217)
!217 = distinct !DILexicalBlock(scope: !184, file: !15, line: 141, column: 19)
!218 = !DILocation(line: 141, column: 19, scope: !217)
!219 = !DILocation(line: 141, column: 29, scope: !217)
!220 = !DILocation(line: 141, column: 34, scope: !217)
!221 = !DILocation(line: 141, column: 19, scope: !184)
!222 = !DILocalVariable(name: "sysRpcs", scope: !223, file: !15, line: 146, type: !224)
!223 = distinct !DILexicalBlock(scope: !217, file: !15, line: 141, column: 57)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 768, align: 64, elements: !146)
!225 = !DILocation(line: 146, column: 32, scope: !223)
!226 = !DILocation(line: 153, column: 20, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !15, line: 153, column: 13)
!228 = !DILocation(line: 153, column: 18, scope: !227)
!229 = !DILocation(line: 153, column: 25, scope: !230)
!230 = !DILexicalBlockFile(scope: !231, file: !15, discriminator: 1)
!231 = distinct !DILexicalBlock(scope: !227, file: !15, line: 153, column: 13)
!232 = !DILocation(line: 153, column: 27, scope: !230)
!233 = !DILocation(line: 153, column: 13, scope: !230)
!234 = !DILocation(line: 154, column: 42, scope: !235)
!235 = distinct !DILexicalBlock(scope: !231, file: !15, line: 153, column: 74)
!236 = !DILocation(line: 154, column: 37, scope: !235)
!237 = !DILocation(line: 154, column: 47, scope: !235)
!238 = !DILocation(line: 154, column: 63, scope: !235)
!239 = !DILocation(line: 154, column: 55, scope: !235)
!240 = !DILocation(line: 154, column: 53, scope: !235)
!241 = !DILocation(line: 154, column: 16, scope: !235)
!242 = !DILocation(line: 155, column: 13, scope: !235)
!243 = !DILocation(line: 153, column: 70, scope: !244)
!244 = !DILexicalBlockFile(scope: !231, file: !15, discriminator: 2)
!245 = !DILocation(line: 153, column: 13, scope: !244)
!246 = distinct !{!246, !247}
!247 = !DILocation(line: 153, column: 13, scope: !223)
!248 = !DILocation(line: 156, column: 10, scope: !223)
!249 = !DILocation(line: 158, column: 7, scope: !185)
!250 = !DILocation(line: 126, column: 64, scope: !251)
!251 = !DILexicalBlockFile(scope: !180, file: !15, discriminator: 2)
!252 = !DILocation(line: 126, column: 7, scope: !251)
!253 = distinct !{!253, !254}
!254 = !DILocation(line: 126, column: 7, scope: !171)
!255 = !DILocation(line: 159, column: 4, scope: !171)
!256 = !DILocation(line: 161, column: 4, scope: !22)
!257 = distinct !DISubprogram(name: "VixShutdown", scope: !15, file: !15, line: 70, type: !258, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !82, !51, !25}
!260 = !DILocalVariable(name: "src", arg: 1, scope: !257, file: !15, line: 70, type: !82)
!261 = !DILocation(line: 70, column: 22, scope: !257)
!262 = !DILocalVariable(name: "ctx", arg: 2, scope: !257, file: !15, line: 71, type: !51)
!263 = !DILocation(line: 71, column: 26, scope: !257)
!264 = !DILocalVariable(name: "plugin", arg: 3, scope: !257, file: !15, line: 72, type: !25)
!265 = !DILocation(line: 72, column: 30, scope: !257)
!266 = !DILocation(line: 74, column: 36, scope: !257)
!267 = !DILocation(line: 74, column: 4, scope: !257)
!268 = !DILocation(line: 75, column: 1, scope: !257)
!269 = distinct !DISubprogram(name: "VixIOFreeze", scope: !15, file: !15, line: 53, type: !270, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !82, !51, !48, !82}
!272 = !DILocalVariable(name: "src", arg: 1, scope: !269, file: !15, line: 53, type: !82)
!273 = !DILocation(line: 53, column: 22, scope: !269)
!274 = !DILocalVariable(name: "ctx", arg: 2, scope: !269, file: !15, line: 54, type: !51)
!275 = !DILocation(line: 54, column: 26, scope: !269)
!276 = !DILocalVariable(name: "freeze", arg: 3, scope: !269, file: !15, line: 55, type: !48)
!277 = !DILocation(line: 55, column: 22, scope: !269)
!278 = !DILocalVariable(name: "data", arg: 4, scope: !269, file: !15, line: 56, type: !82)
!279 = !DILocation(line: 56, column: 22, scope: !269)
!280 = !DILocation(line: 58, column: 43, scope: !269)
!281 = !DILocation(line: 58, column: 48, scope: !269)
!282 = !DILocation(line: 58, column: 4, scope: !269)
!283 = !DILocation(line: 59, column: 1, scope: !269)
