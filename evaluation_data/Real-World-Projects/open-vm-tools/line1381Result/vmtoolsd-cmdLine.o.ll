; ModuleID = './vmtoolsd-cmdLine.o.i'
source_filename = "./vmtoolsd-cmdLine.o.i"
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
%struct._GOptionEntry = type { i8*, i8, i32, i32, i8*, i8*, i8* }
%struct._GError = type { i32, i32, i8* }
%struct._GOptionContext = type opaque
%struct._GOptionGroup = type opaque

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"vmtoolsd\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"@&!*@*@(cmdline.name)Name of the service being started.\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"@&!*@*@(cmdline.name.argument)svcname\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"common-path\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"@&!*@*@(cmdline.commonpath)Path to the common plugin directory.\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"@&!*@*@(cmdline.path)path\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"plugin-path\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"@&!*@*@(cmdline.pluginpath)Path to the plugin directory.\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.10 = private unnamed_addr constant [64 x i8] c"@&!*@*@(cmdline.rpc)Sends an RPC command to the host and exits.\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"@&!*@*@(cmdline.rpc.command)command\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"background\00", align 1
@.str.13 = private unnamed_addr constant [74 x i8] c"@&!*@*@(cmdline.background)Runs in the background and creates a pid file.\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"@&!*@*@(cmdline.background.pidfile)pidfile\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"blockFd\00", align 1
@.str.16 = private unnamed_addr constant [68 x i8] c"@&!*@*@(cmdline.blockfd)File descriptor for the VMware blocking fs.\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"@&!*@*@(cmdline.blockfd.fd)fd\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"uinputFd\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"@&!*@*@(cmdline.uinputfd)File descriptor for the uinput device.\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"@&!*@*@(cmdline.uinputfd.fd)fd\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.22 = private unnamed_addr constant [63 x i8] c"@&!*@*@(cmdline.config)Uses the config file at the given path.\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.24 = private unnamed_addr constant [66 x i8] c"@&!*@*@(cmdline.debug)Runs in debug mode, using the given plugin.\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.26 = private unnamed_addr constant [63 x i8] c"@&!*@*@(cmdline.log)Ignored, kept for backwards compatibility.\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.28 = private unnamed_addr constant [61 x i8] c"@&!*@*@(cmdline.version)Prints the daemon version and exits.\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"Runs the VMware Tools daemon.\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"Command line parsing failed\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"%s %s (%s)\0A\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"VMware Tools daemon, version\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"10.3.0.5330\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"build-8931395\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"vmsvc\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"vmusr\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"%s is an invalid service name.\0A\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"CmdLine: \22%s\22\0A\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.44 = private unnamed_addr constant [70 x i8] c"@&!*@*@(cmdline.rpcerror)Unable to send command to VMware hypervisor.\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ToolsCore_ParseCommandLine(%struct.ToolsServiceState*, i32, i8**) #0 !dbg !42 {
  %4 = alloca %struct.ToolsServiceState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [12 x %struct._GOptionEntry], align 16
  %13 = alloca %struct._GError*, align 8
  %14 = alloca %struct._GOptionContext*, align 8
  %15 = alloca i8*, align 8
  store %struct.ToolsServiceState* %0, %struct.ToolsServiceState** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsServiceState** %4, metadata !223, metadata !224), !dbg !225
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !226, metadata !224), !dbg !227
  store i8** %2, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !228, metadata !224), !dbg !229
  call void @llvm.dbg.declare(metadata i32* %7, metadata !230, metadata !224), !dbg !231
  store i32 0, i32* %7, align 4, !dbg !231
  call void @llvm.dbg.declare(metadata i8** %8, metadata !232, metadata !224), !dbg !233
  store i8* null, i8** %8, align 8, !dbg !233
  call void @llvm.dbg.declare(metadata i32* %9, metadata !234, metadata !224), !dbg !235
  store i32 0, i32* %9, align 4, !dbg !235
  call void @llvm.dbg.declare(metadata i32* %10, metadata !236, metadata !224), !dbg !237
  store i32 0, i32* %10, align 4, !dbg !237
  call void @llvm.dbg.declare(metadata i32* %11, metadata !238, metadata !224), !dbg !239
  call void @llvm.dbg.declare(metadata [12 x %struct._GOptionEntry]* %12, metadata !240, metadata !224), !dbg !255
  %16 = getelementptr inbounds [12 x %struct._GOptionEntry], [12 x %struct._GOptionEntry]* %12, i64 0, i64 0, !dbg !256
  %17 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %16, i32 0, i32 0, !dbg !257
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8** %17, align 16, !dbg !257
  %18 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %16, i32 0, i32 1, !dbg !257
  store i8 110, i8* %18, align 8, !dbg !257
  %19 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %16, i32 0, i32 2, !dbg !257
  store i32 0, i32* %19, align 4, !dbg !257
  %20 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %16, i32 0, i32 3, !dbg !257
  store i32 1, i32* %20, align 16, !dbg !257
  %21 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %16, i32 0, i32 4, !dbg !257
  %22 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !258
  %23 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %22, i32 0, i32 0, !dbg !259
  %24 = bitcast i8** %23 to i8*, !dbg !260
  store i8* %24, i8** %21, align 8, !dbg !257
  %25 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %16, i32 0, i32 5, !dbg !257
  %26 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i32 0, i32 0)), !dbg !261
  store i8* %26, i8** %25, align 16, !dbg !257
  %27 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %16, i32 0, i32 6, !dbg !257
  %28 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0)), !dbg !262
  store i8* %28, i8** %27, align 8, !dbg !257
  %29 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %16, i64 1, !dbg !256
  %30 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %29, i32 0, i32 0, !dbg !263
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8** %30, align 16, !dbg !263
  %31 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %29, i32 0, i32 1, !dbg !263
  store i8 0, i8* %31, align 8, !dbg !263
  %32 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %29, i32 0, i32 2, !dbg !263
  store i32 0, i32* %32, align 4, !dbg !263
  %33 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %29, i32 0, i32 3, !dbg !263
  store i32 4, i32* %33, align 16, !dbg !263
  %34 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %29, i32 0, i32 4, !dbg !263
  %35 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !264
  %36 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %35, i32 0, i32 6, !dbg !265
  %37 = bitcast i8** %36 to i8*, !dbg !266
  store i8* %37, i8** %34, align 8, !dbg !263
  %38 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %29, i32 0, i32 5, !dbg !263
  %39 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i32 0, i32 0)), !dbg !267
  store i8* %39, i8** %38, align 16, !dbg !263
  %40 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %29, i32 0, i32 6, !dbg !263
  %41 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0)), !dbg !268
  store i8* %41, i8** %40, align 8, !dbg !263
  %42 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %29, i64 1, !dbg !256
  %43 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %42, i32 0, i32 0, !dbg !269
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8** %43, align 16, !dbg !269
  %44 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %42, i32 0, i32 1, !dbg !269
  store i8 112, i8* %44, align 8, !dbg !269
  %45 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %42, i32 0, i32 2, !dbg !269
  store i32 0, i32* %45, align 4, !dbg !269
  %46 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %42, i32 0, i32 3, !dbg !269
  store i32 4, i32* %46, align 16, !dbg !269
  %47 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %42, i32 0, i32 4, !dbg !269
  %48 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !270
  %49 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %48, i32 0, i32 7, !dbg !271
  %50 = bitcast i8** %49 to i8*, !dbg !272
  store i8* %50, i8** %47, align 8, !dbg !269
  %51 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %42, i32 0, i32 5, !dbg !269
  %52 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i32 0, i32 0)), !dbg !273
  store i8* %52, i8** %51, align 16, !dbg !269
  %53 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %42, i32 0, i32 6, !dbg !269
  %54 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0)), !dbg !274
  store i8* %54, i8** %53, align 8, !dbg !269
  %55 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %42, i64 1, !dbg !256
  %56 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %55, i32 0, i32 0, !dbg !275
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8** %56, align 16, !dbg !275
  %57 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %55, i32 0, i32 1, !dbg !275
  store i8 0, i8* %57, align 8, !dbg !275
  %58 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %55, i32 0, i32 2, !dbg !275
  store i32 0, i32* %58, align 4, !dbg !275
  %59 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %55, i32 0, i32 3, !dbg !275
  store i32 3, i32* %59, align 16, !dbg !275
  %60 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %55, i32 0, i32 4, !dbg !275
  store i8* bitcast (i32 (i8*, i8*, i8*, %struct._GError**)* @ToolsCoreRunCommand to i8*), i8** %60, align 8, !dbg !275
  %61 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %55, i32 0, i32 5, !dbg !275
  %62 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.10, i32 0, i32 0)), !dbg !276
  store i8* %62, i8** %61, align 16, !dbg !275
  %63 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %55, i32 0, i32 6, !dbg !275
  %64 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0)), !dbg !277
  store i8* %64, i8** %63, align 8, !dbg !275
  %65 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %55, i64 1, !dbg !256
  %66 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %65, i32 0, i32 0, !dbg !278
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8** %66, align 16, !dbg !278
  %67 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %65, i32 0, i32 1, !dbg !278
  store i8 98, i8* %67, align 8, !dbg !278
  %68 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %65, i32 0, i32 2, !dbg !278
  store i32 0, i32* %68, align 4, !dbg !278
  %69 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %65, i32 0, i32 3, !dbg !278
  store i32 4, i32* %69, align 16, !dbg !278
  %70 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %65, i32 0, i32 4, !dbg !278
  %71 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !279
  %72 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %71, i32 0, i32 9, !dbg !280
  %73 = bitcast i8** %72 to i8*, !dbg !281
  store i8* %73, i8** %70, align 8, !dbg !278
  %74 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %65, i32 0, i32 5, !dbg !278
  %75 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.13, i32 0, i32 0)), !dbg !282
  store i8* %75, i8** %74, align 16, !dbg !278
  %76 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %65, i32 0, i32 6, !dbg !278
  %77 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i32 0, i32 0)), !dbg !283
  store i8* %77, i8** %76, align 8, !dbg !278
  %78 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %65, i64 1, !dbg !256
  %79 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %78, i32 0, i32 0, !dbg !284
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8** %79, align 16, !dbg !284
  %80 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %78, i32 0, i32 1, !dbg !284
  store i8 0, i8* %80, align 8, !dbg !284
  %81 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %78, i32 0, i32 2, !dbg !284
  store i32 0, i32* %81, align 4, !dbg !284
  %82 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %78, i32 0, i32 3, !dbg !284
  store i32 2, i32* %82, align 16, !dbg !284
  %83 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %78, i32 0, i32 4, !dbg !284
  %84 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !285
  %85 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %84, i32 0, i32 13, !dbg !286
  %86 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %85, i32 0, i32 7, !dbg !287
  %87 = bitcast i32* %86 to i8*, !dbg !288
  store i8* %87, i8** %83, align 8, !dbg !284
  %88 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %78, i32 0, i32 5, !dbg !284
  %89 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.16, i32 0, i32 0)), !dbg !289
  store i8* %89, i8** %88, align 16, !dbg !284
  %90 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %78, i32 0, i32 6, !dbg !284
  %91 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0)), !dbg !290
  store i8* %91, i8** %90, align 8, !dbg !284
  %92 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %78, i64 1, !dbg !256
  %93 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %92, i32 0, i32 0, !dbg !291
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8** %93, align 16, !dbg !291
  %94 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %92, i32 0, i32 1, !dbg !291
  store i8 0, i8* %94, align 8, !dbg !291
  %95 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %92, i32 0, i32 2, !dbg !291
  store i32 0, i32* %95, align 4, !dbg !291
  %96 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %92, i32 0, i32 3, !dbg !291
  store i32 2, i32* %96, align 16, !dbg !291
  %97 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %92, i32 0, i32 4, !dbg !291
  %98 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !292
  %99 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %98, i32 0, i32 13, !dbg !293
  %100 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %99, i32 0, i32 8, !dbg !294
  %101 = bitcast i32* %100 to i8*, !dbg !295
  store i8* %101, i8** %97, align 8, !dbg !291
  %102 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %92, i32 0, i32 5, !dbg !291
  %103 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i32 0, i32 0)), !dbg !296
  store i8* %103, i8** %102, align 16, !dbg !291
  %104 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %92, i32 0, i32 6, !dbg !291
  %105 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i32 0, i32 0)), !dbg !297
  store i8* %105, i8** %104, align 8, !dbg !291
  %106 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %92, i64 1, !dbg !256
  %107 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %106, i32 0, i32 0, !dbg !298
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8** %107, align 16, !dbg !298
  %108 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %106, i32 0, i32 1, !dbg !298
  store i8 99, i8* %108, align 8, !dbg !298
  %109 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %106, i32 0, i32 2, !dbg !298
  store i32 0, i32* %109, align 4, !dbg !298
  %110 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %106, i32 0, i32 3, !dbg !298
  store i32 4, i32* %110, align 16, !dbg !298
  %111 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %106, i32 0, i32 4, !dbg !298
  %112 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !299
  %113 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %112, i32 0, i32 1, !dbg !300
  %114 = bitcast i8** %113 to i8*, !dbg !301
  store i8* %114, i8** %111, align 8, !dbg !298
  %115 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %106, i32 0, i32 5, !dbg !298
  %116 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.22, i32 0, i32 0)), !dbg !302
  store i8* %116, i8** %115, align 16, !dbg !298
  %117 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %106, i32 0, i32 6, !dbg !298
  %118 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0)), !dbg !303
  store i8* %118, i8** %117, align 8, !dbg !298
  %119 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %106, i64 1, !dbg !256
  %120 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %119, i32 0, i32 0, !dbg !304
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8** %120, align 16, !dbg !304
  %121 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %119, i32 0, i32 1, !dbg !304
  store i8 103, i8* %121, align 8, !dbg !304
  %122 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %119, i32 0, i32 2, !dbg !304
  store i32 0, i32* %122, align 4, !dbg !304
  %123 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %119, i32 0, i32 3, !dbg !304
  store i32 4, i32* %123, align 16, !dbg !304
  %124 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %119, i32 0, i32 4, !dbg !304
  %125 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !305
  %126 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %125, i32 0, i32 11, !dbg !306
  %127 = bitcast i8** %126 to i8*, !dbg !307
  store i8* %127, i8** %124, align 8, !dbg !304
  %128 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %119, i32 0, i32 5, !dbg !304
  %129 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.24, i32 0, i32 0)), !dbg !308
  store i8* %129, i8** %128, align 16, !dbg !304
  %130 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %119, i32 0, i32 6, !dbg !304
  %131 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0)), !dbg !309
  store i8* %131, i8** %130, align 8, !dbg !304
  %132 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %119, i64 1, !dbg !256
  %133 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %132, i32 0, i32 0, !dbg !310
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8** %133, align 16, !dbg !310
  %134 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %132, i32 0, i32 1, !dbg !310
  store i8 108, i8* %134, align 8, !dbg !310
  %135 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %132, i32 0, i32 2, !dbg !310
  store i32 0, i32* %135, align 4, !dbg !310
  %136 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %132, i32 0, i32 3, !dbg !310
  store i32 0, i32* %136, align 16, !dbg !310
  %137 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %132, i32 0, i32 4, !dbg !310
  %138 = bitcast i32* %11 to i8*, !dbg !311
  store i8* %138, i8** %137, align 8, !dbg !310
  %139 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %132, i32 0, i32 5, !dbg !310
  %140 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.26, i32 0, i32 0)), !dbg !312
  store i8* %140, i8** %139, align 16, !dbg !310
  %141 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %132, i32 0, i32 6, !dbg !310
  store i8* null, i8** %141, align 8, !dbg !310
  %142 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %132, i64 1, !dbg !256
  %143 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %142, i32 0, i32 0, !dbg !313
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8** %143, align 16, !dbg !313
  %144 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %142, i32 0, i32 1, !dbg !313
  store i8 118, i8* %144, align 8, !dbg !313
  %145 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %142, i32 0, i32 2, !dbg !313
  store i32 0, i32* %145, align 4, !dbg !313
  %146 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %142, i32 0, i32 3, !dbg !313
  store i32 0, i32* %146, align 16, !dbg !313
  %147 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %142, i32 0, i32 4, !dbg !313
  %148 = bitcast i32* %10 to i8*, !dbg !314
  store i8* %148, i8** %147, align 8, !dbg !313
  %149 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %142, i32 0, i32 5, !dbg !313
  %150 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.28, i32 0, i32 0)), !dbg !315
  store i8* %150, i8** %149, align 16, !dbg !313
  %151 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %142, i32 0, i32 6, !dbg !313
  store i8* null, i8** %151, align 8, !dbg !313
  %152 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %142, i64 1, !dbg !256
  %153 = bitcast %struct._GOptionEntry* %152 to i8*, !dbg !256
  call void @llvm.memset.p0i8.i64(i8* %153, i8 0, i64 48, i32 16, i1 false), !dbg !256
  call void @llvm.dbg.declare(metadata %struct._GError** %13, metadata !316, metadata !224), !dbg !329
  store %struct._GError* null, %struct._GError** %13, align 8, !dbg !329
  call void @llvm.dbg.declare(metadata %struct._GOptionContext** %14, metadata !330, metadata !224), !dbg !334
  store %struct._GOptionContext* null, %struct._GOptionContext** %14, align 8, !dbg !334
  %154 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !335
  %155 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %154, i32 0, i32 13, !dbg !336
  %156 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %155, i32 0, i32 7, !dbg !337
  store i32 -1, i32* %156, align 8, !dbg !338
  %157 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !339
  %158 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %157, i32 0, i32 13, !dbg !340
  %159 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %158, i32 0, i32 8, !dbg !341
  store i32 -1, i32* %159, align 4, !dbg !342
  %160 = load i8**, i8*** %6, align 8, !dbg !343
  %161 = getelementptr inbounds i8*, i8** %160, i64 0, !dbg !343
  %162 = load i8*, i8** %161, align 8, !dbg !343
  %163 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* %162), !dbg !344
  store i8* %163, i8** %8, align 8, !dbg !345
  store i32 1, i32* %7, align 4, !dbg !346
  br label %164, !dbg !348

; <label>:164:                                    ; preds = %178, %3
  %165 = load i32, i32* %7, align 4, !dbg !349
  %166 = load i32, i32* %5, align 4, !dbg !352
  %167 = icmp slt i32 %165, %166, !dbg !353
  br i1 %167, label %168, label %181, !dbg !354

; <label>:168:                                    ; preds = %164
  call void @llvm.dbg.declare(metadata i8** %15, metadata !355, metadata !224), !dbg !357
  %169 = load i8*, i8** %8, align 8, !dbg !358
  store i8* %169, i8** %15, align 8, !dbg !357
  %170 = load i8*, i8** %15, align 8, !dbg !359
  %171 = load i32, i32* %7, align 4, !dbg !360
  %172 = sext i32 %171 to i64, !dbg !361
  %173 = load i8**, i8*** %6, align 8, !dbg !361
  %174 = getelementptr inbounds i8*, i8** %173, i64 %172, !dbg !361
  %175 = load i8*, i8** %174, align 8, !dbg !361
  %176 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* %170, i8* %175), !dbg !362
  store i8* %176, i8** %8, align 8, !dbg !363
  %177 = load i8*, i8** %15, align 8, !dbg !364
  call void @free(i8* %177) #7, !dbg !365
  br label %178, !dbg !366

; <label>:178:                                    ; preds = %168
  %179 = load i32, i32* %7, align 4, !dbg !367
  %180 = add nsw i32 %179, 1, !dbg !367
  store i32 %180, i32* %7, align 4, !dbg !367
  br label %164, !dbg !369, !llvm.loop !370

; <label>:181:                                    ; preds = %164
  %182 = call %struct._GOptionContext* @g_option_context_new(i8* null), !dbg !372
  store %struct._GOptionContext* %182, %struct._GOptionContext** %14, align 8, !dbg !373
  %183 = load %struct._GOptionContext*, %struct._GOptionContext** %14, align 8, !dbg !374
  call void @g_option_context_set_summary(%struct._GOptionContext* %183, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i32 0, i32 0)), !dbg !375
  %184 = load %struct._GOptionContext*, %struct._GOptionContext** %14, align 8, !dbg !376
  %185 = getelementptr inbounds [12 x %struct._GOptionEntry], [12 x %struct._GOptionEntry]* %12, i32 0, i32 0, !dbg !377
  call void @g_option_context_add_main_entries(%struct._GOptionContext* %184, %struct._GOptionEntry* %185, i8* null), !dbg !378
  %186 = load %struct._GOptionContext*, %struct._GOptionContext** %14, align 8, !dbg !379
  %187 = call %struct._GOptionGroup* @g_option_context_get_main_group(%struct._GOptionContext* %186), !dbg !380
  call void @g_option_group_set_error_hook(%struct._GOptionGroup* %187, void (%struct._GOptionContext*, %struct._GOptionGroup*, i8*, %struct._GError**)* @ToolsCoreCmdLineError), !dbg !381
  %188 = load %struct._GOptionContext*, %struct._GOptionContext** %14, align 8, !dbg !383
  %189 = call i32 @g_option_context_parse(%struct._GOptionContext* %188, i32* %5, i8*** %6, %struct._GError** %13), !dbg !385
  %190 = icmp ne i32 %189, 0, !dbg !385
  br i1 %190, label %195, label %191, !dbg !386

; <label>:191:                                    ; preds = %181
  %192 = load %struct._GError*, %struct._GError** %13, align 8, !dbg !387
  %193 = getelementptr inbounds %struct._GError, %struct._GError* %192, i32 0, i32 2, !dbg !389
  %194 = load i8*, i8** %193, align 8, !dbg !389
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0), i8* %194), !dbg !390
  br label %275, !dbg !391

; <label>:195:                                    ; preds = %181
  %196 = load i32, i32* %10, align 4, !dbg !392
  %197 = icmp ne i32 %196, 0, !dbg !392
  br i1 %197, label %198, label %200, !dbg !394

; <label>:198:                                    ; preds = %195
  %199 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i32 0, i32 0)) #7, !dbg !395
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i8* %199, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0)), !dbg !397
  call void @exit(i32 0) #8, !dbg !399
  unreachable, !dbg !399

; <label>:200:                                    ; preds = %195
  %201 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !400
  %202 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %201, i32 0, i32 0, !dbg !402
  %203 = load i8*, i8** %202, align 8, !dbg !402
  %204 = icmp eq i8* %203, null, !dbg !403
  br i1 %204, label %205, label %210, !dbg !404

; <label>:205:                                    ; preds = %200
  %206 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !405
  %207 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %206, i32 0, i32 0, !dbg !407
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8** %207, align 8, !dbg !408
  %208 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !409
  %209 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %208, i32 0, i32 4, !dbg !410
  store i32 1, i32* %209, align 4, !dbg !411
  br label %235, !dbg !412

; <label>:210:                                    ; preds = %200
  %211 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !413
  %212 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %211, i32 0, i32 0, !dbg !416
  %213 = load i8*, i8** %212, align 8, !dbg !416
  %214 = call i32 @strcmp(i8* %213, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0)) #9, !dbg !417
  %215 = icmp ne i32 %214, 0, !dbg !418
  br i1 %215, label %216, label %226, !dbg !419

; <label>:216:                                    ; preds = %210
  %217 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !420
  %218 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %217, i32 0, i32 0, !dbg !421
  %219 = load i8*, i8** %218, align 8, !dbg !421
  %220 = call i32 @strcmp(i8* %219, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0)) #9, !dbg !422
  %221 = icmp ne i32 %220, 0, !dbg !423
  br i1 %221, label %222, label %226, !dbg !424

; <label>:222:                                    ; preds = %216
  %223 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !426
  %224 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %223, i32 0, i32 0, !dbg !428
  %225 = load i8*, i8** %224, align 8, !dbg !428
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.40, i32 0, i32 0), i8* %225), !dbg !429
  br label %275, !dbg !430

; <label>:226:                                    ; preds = %216, %210
  %227 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !431
  %228 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %227, i32 0, i32 0, !dbg !432
  %229 = load i8*, i8** %228, align 8, !dbg !432
  %230 = call i32 @strcmp(i8* %229, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0)) #9, !dbg !433
  %231 = icmp eq i32 %230, 0, !dbg !434
  %232 = zext i1 %231 to i32, !dbg !434
  %233 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !435
  %234 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %233, i32 0, i32 4, !dbg !436
  store i32 %232, i32* %234, align 4, !dbg !437
  br label %235

; <label>:235:                                    ; preds = %226, %205
  %236 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !438
  call void @ToolsCore_ReloadConfig(%struct.ToolsServiceState* %236, i32 1), !dbg !439
  %237 = load i8*, i8** %8, align 8, !dbg !440
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0), i8* %237), !dbg !441
  %238 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !442
  %239 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %238, i32 0, i32 0, !dbg !444
  %240 = load i8*, i8** %239, align 8, !dbg !444
  %241 = call i32 @strcmp(i8* %240, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0)) #9, !dbg !445
  %242 = icmp eq i32 %241, 0, !dbg !446
  br i1 %242, label %274, label %243, !dbg !447

; <label>:243:                                    ; preds = %235
  %244 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !448
  %245 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %244, i32 0, i32 13, !dbg !451
  %246 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %245, i32 0, i32 7, !dbg !452
  %247 = load i32, i32* %246, align 8, !dbg !452
  %248 = icmp sge i32 %247, 0, !dbg !453
  br i1 %248, label %249, label %255, !dbg !454

; <label>:249:                                    ; preds = %243
  %250 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !455
  %251 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %250, i32 0, i32 13, !dbg !457
  %252 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %251, i32 0, i32 7, !dbg !458
  %253 = load i32, i32* %252, align 8, !dbg !458
  %254 = call i32 @close(i32 %253), !dbg !459
  br label %255, !dbg !460

; <label>:255:                                    ; preds = %249, %243
  %256 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !461
  %257 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %256, i32 0, i32 13, !dbg !462
  %258 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %257, i32 0, i32 7, !dbg !463
  store i32 -1, i32* %258, align 8, !dbg !464
  %259 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !465
  %260 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %259, i32 0, i32 13, !dbg !467
  %261 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %260, i32 0, i32 8, !dbg !468
  %262 = load i32, i32* %261, align 4, !dbg !468
  %263 = icmp sge i32 %262, 0, !dbg !469
  br i1 %263, label %264, label %270, !dbg !470

; <label>:264:                                    ; preds = %255
  %265 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !471
  %266 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %265, i32 0, i32 13, !dbg !473
  %267 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %266, i32 0, i32 8, !dbg !474
  %268 = load i32, i32* %267, align 4, !dbg !474
  %269 = call i32 @close(i32 %268), !dbg !475
  br label %270, !dbg !476

; <label>:270:                                    ; preds = %264, %255
  %271 = load %struct.ToolsServiceState*, %struct.ToolsServiceState** %4, align 8, !dbg !477
  %272 = getelementptr inbounds %struct.ToolsServiceState, %struct.ToolsServiceState* %271, i32 0, i32 13, !dbg !478
  %273 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %272, i32 0, i32 8, !dbg !479
  store i32 -1, i32* %273, align 4, !dbg !480
  br label %274, !dbg !481

; <label>:274:                                    ; preds = %270, %235
  store i32 1, i32* %9, align 4, !dbg !482
  br label %275, !dbg !483

; <label>:275:                                    ; preds = %274, %222, %191
  %276 = load i8*, i8** %8, align 8, !dbg !484
  call void @free(i8* %276) #7, !dbg !485
  call void @g_clear_error(%struct._GError** %13), !dbg !486
  %277 = load %struct._GOptionContext*, %struct._GOptionContext** %14, align 8, !dbg !487
  call void @g_option_context_free(%struct._GOptionContext* %277), !dbg !488
  %278 = load i32, i32* %9, align 4, !dbg !489
  ret i32 %278, !dbg !490
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @VMTools_GetString(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ToolsCoreRunCommand(i8*, i8*, i8*, %struct._GError**) #0 !dbg !491 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._GError**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !495, metadata !224), !dbg !496
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !497, metadata !224), !dbg !498
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !499, metadata !224), !dbg !500
  store %struct._GError** %3, %struct._GError*** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._GError*** %9, metadata !501, metadata !224), !dbg !502
  %12 = call signext i8 @VmCheck_IsVirtualWorld(), !dbg !503
  %13 = icmp ne i8 %12, 0, !dbg !503
  br i1 %13, label %14, label %36, !dbg !505

; <label>:14:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata i8** %10, metadata !506, metadata !224), !dbg !508
  store i8* null, i8** %10, align 8, !dbg !508
  call void @llvm.dbg.declare(metadata i8* %11, metadata !509, metadata !224), !dbg !512
  store i8 0, i8* %11, align 1, !dbg !512
  %15 = load i8*, i8** %7, align 8, !dbg !513
  %16 = call i32 (i8**, i64*, i8*, ...) @RpcChannel_SendOne(i8** %10, i64* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* %15), !dbg !514
  %17 = trunc i32 %16 to i8, !dbg !514
  store i8 %17, i8* %11, align 1, !dbg !515
  %18 = load i8, i8* %11, align 1, !dbg !516
  %19 = icmp ne i8 %18, 0, !dbg !516
  br i1 %19, label %28, label %20, !dbg !518

; <label>:20:                                     ; preds = %14
  %21 = load i8*, i8** %10, align 8, !dbg !519
  %22 = icmp ne i8* %21, null, !dbg !519
  br i1 %22, label %23, label %25, !dbg !519

; <label>:23:                                     ; preds = %20
  %24 = load i8*, i8** %10, align 8, !dbg !521
  br label %26, !dbg !523

; <label>:25:                                     ; preds = %20
  br label %26, !dbg !524

; <label>:26:                                     ; preds = %25, %23
  %27 = phi i8* [ %24, %23 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), %25 ], !dbg !526
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i8* %27), !dbg !528
  br label %30, !dbg !529

; <label>:28:                                     ; preds = %14
  %29 = load i8*, i8** %10, align 8, !dbg !530
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i8* %29), !dbg !532
  br label %30

; <label>:30:                                     ; preds = %28, %26
  %31 = load i8*, i8** %10, align 8, !dbg !533
  call void @vm_free(i8* %31), !dbg !534
  %32 = load i8, i8* %11, align 1, !dbg !535
  %33 = sext i8 %32 to i32, !dbg !535
  %34 = icmp ne i32 %33, 0, !dbg !535
  %35 = select i1 %34, i32 0, i32 1, !dbg !535
  call void @exit(i32 %35) #8, !dbg !536
  unreachable, !dbg !536

; <label>:36:                                     ; preds = %4
  %37 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.44, i32 0, i32 0)), !dbg !537
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i8* %37), !dbg !538
  call void @exit(i32 1) #8, !dbg !539
  unreachable, !dbg !539
                                                  ; No predecessors!
  %39 = load i32, i32* %5, align 4, !dbg !540
  ret i32 %39, !dbg !540
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

declare i8* @Str_SafeAsprintf(i64*, i8*, ...) #2

; Function Attrs: nounwind
declare void @free(i8*) #4

declare %struct._GOptionContext* @g_option_context_new(i8*) #2

declare void @g_option_context_set_summary(%struct._GOptionContext*, i8*) #2

declare void @g_option_context_add_main_entries(%struct._GOptionContext*, %struct._GOptionEntry*, i8*) #2

declare void @g_option_group_set_error_hook(%struct._GOptionGroup*, void (%struct._GOptionContext*, %struct._GOptionGroup*, i8*, %struct._GError**)*) #2

declare %struct._GOptionGroup* @g_option_context_get_main_group(%struct._GOptionContext*) #2

; Function Attrs: nounwind uwtable
define internal void @ToolsCoreCmdLineError(%struct._GOptionContext*, %struct._GOptionGroup*, i8*, %struct._GError**) #0 !dbg !541 {
  %5 = alloca %struct._GOptionContext*, align 8
  %6 = alloca %struct._GOptionGroup*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._GError**, align 8
  store %struct._GOptionContext* %0, %struct._GOptionContext** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GOptionContext** %5, metadata !547, metadata !224), !dbg !548
  store %struct._GOptionGroup* %1, %struct._GOptionGroup** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GOptionGroup** %6, metadata !549, metadata !224), !dbg !550
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !551, metadata !224), !dbg !552
  store %struct._GError** %3, %struct._GError*** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._GError*** %8, metadata !553, metadata !224), !dbg !554
  ret void, !dbg !555
}

declare i32 @g_option_context_parse(%struct._GOptionContext*, i32*, i8***, %struct._GError**) #2

declare void @g_printerr(i8*, ...) #2

declare void @g_print(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

declare void @ToolsCore_ReloadConfig(%struct.ToolsServiceState*, i32) #2

declare void @g_log(i8*, i32, i8*, ...) #2

declare i32 @close(i32) #2

declare void @g_clear_error(%struct._GError**) #2

declare void @g_option_context_free(%struct._GOptionContext*) #2

declare signext i8 @VmCheck_IsVirtualWorld() #2

declare i32 @RpcChannel_SendOne(i8**, i64*, i8*, ...) #2

declare void @vm_free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!39, !40}
!llvm.ident = !{!41}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !37)
!1 = !DIFile(filename: "vmtoolsd-cmdLine.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1381")
!2 = !{!3, !7, !13, !25}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 232, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/plugin.h", directory: "/home/lichi/Desktop/open-vm-tools/line1381")
!5 = !{!6}
!6 = !DIEnumerator(name: "TOOLS_CORE_API_V1", value: 1)
!7 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 339, size: 32, align: 32, elements: !8)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "TOOLS_APP_GUESTRPC", value: 1)
!10 = !DIEnumerator(name: "TOOLS_APP_SIGNALS", value: 2)
!11 = !DIEnumerator(name: "TOOLS_APP_PROVIDER", value: 3)
!12 = !DIEnumerator(name: "TOOLS_SVC_PROPERTY", value: 4)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 118, size: 32, align: 32, elements: !15)
!14 = !DIFile(filename: "/usr/include/glib-2.0/glib/goption.h", directory: "/home/lichi/Desktop/open-vm-tools/line1381")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24}
!16 = !DIEnumerator(name: "G_OPTION_ARG_NONE", value: 0)
!17 = !DIEnumerator(name: "G_OPTION_ARG_STRING", value: 1)
!18 = !DIEnumerator(name: "G_OPTION_ARG_INT", value: 2)
!19 = !DIEnumerator(name: "G_OPTION_ARG_CALLBACK", value: 3)
!20 = !DIEnumerator(name: "G_OPTION_ARG_FILENAME", value: 4)
!21 = !DIEnumerator(name: "G_OPTION_ARG_STRING_ARRAY", value: 5)
!22 = !DIEnumerator(name: "G_OPTION_ARG_FILENAME_ARRAY", value: 6)
!23 = !DIEnumerator(name: "G_OPTION_ARG_DOUBLE", value: 7)
!24 = !DIEnumerator(name: "G_OPTION_ARG_INT64", value: 8)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 51, size: 32, align: 32, elements: !27)
!26 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1381")
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35, !36}
!28 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!29 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!30 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!31 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!32 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!33 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!34 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!35 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!36 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!37 = !{!38}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!39 = !{i32 2, !"Dwarf Version", i32 4}
!40 = !{i32 2, !"Debug Info Version", i32 3}
!41 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!42 = distinct !DISubprogram(name: "ToolsCore_ParseCommandLine", scope: !43, file: !43, line: 214, type: !44, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !222)
!43 = !DIFile(filename: "cmdLine.c", directory: "/home/lichi/Desktop/open-vm-tools/line1381")
!44 = !DISubroutineType(types: !45)
!45 = !{!46, !50, !49, !158}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !47, line: 50, baseType: !48)
!47 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1381")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !47, line: 49, baseType: !49)
!49 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsServiceState", file: !52, line: 100, baseType: !53)
!52 = !DIFile(filename: "toolsCoreInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line1381")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsServiceState", file: !52, line: 69, size: 1472, align: 64, elements: !54)
!54 = !{!55, !59, !60, !66, !69, !70, !71, !72, !73, !83, !84, !89, !90, !218, !219, !220, !221}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !53, file: !52, line: 70, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !47, line: 46, baseType: !58)
!58 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "configFile", scope: !53, file: !52, line: 71, baseType: !56, size: 64, align: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "configMtime", scope: !53, file: !52, line: 72, baseType: !61, size: 64, align: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !62, line: 75, baseType: !63)
!62 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line1381")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !64, line: 139, baseType: !65)
!64 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1381")
!65 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "configCheckTask", scope: !53, file: !52, line: 73, baseType: !67, size: 32, align: 32, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !47, line: 55, baseType: !68)
!68 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "mainService", scope: !53, file: !52, line: 74, baseType: !46, size: 32, align: 32, offset: 224)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "capsRegistered", scope: !53, file: !52, line: 75, baseType: !46, size: 32, align: 32, offset: 256)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "commonPath", scope: !53, file: !52, line: 76, baseType: !56, size: 64, align: 64, offset: 320)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "pluginPath", scope: !53, file: !52, line: 77, baseType: !56, size: 64, align: 64, offset: 384)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "plugins", scope: !53, file: !52, line: 78, baseType: !74, size: 64, align: 64, offset: 448)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPtrArray", file: !76, line: 39, baseType: !77)
!76 = !DIFile(filename: "/usr/include/glib-2.0/glib/garray.h", directory: "/home/lichi/Desktop/open-vm-tools/line1381")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GPtrArray", file: !76, line: 53, size: 128, align: 64, elements: !78)
!78 = !{!79, !82}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "pdata", scope: !77, file: !76, line: 55, baseType: !80, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !47, line: 77, baseType: !38)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !77, file: !76, line: 56, baseType: !67, size: 32, align: 32, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "pidFile", scope: !53, file: !52, line: 82, baseType: !56, size: 64, align: 64, offset: 512)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "debugLib", scope: !53, file: !52, line: 84, baseType: !85, size: 64, align: 64, offset: 576)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "GModule", file: !87, line: 49, baseType: !88)
!87 = !DIFile(filename: "/usr/include/glib-2.0/gmodule.h", directory: "/home/lichi/Desktop/open-vm-tools/line1381")
!88 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GModule", file: !87, line: 49, flags: DIFlagFwdDecl)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "debugPlugin", scope: !53, file: !52, line: 85, baseType: !56, size: 64, align: 64, offset: 640)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "debugData", scope: !53, file: !52, line: 86, baseType: !91, size: 64, align: 64, offset: 704)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugLibData", file: !93, line: 150, baseType: !94)
!93 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/rpcdebug.h", directory: "/home/lichi/Desktop/open-vm-tools/line1381")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcDebugLibData", file: !93, line: 142, size: 192, align: 64, elements: !95)
!95 = !{!96, !134, !138}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "newDebugChannel", scope: !94, file: !93, line: 143, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{!100, !104, !133}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !102, line: 48, baseType: !103)
!102 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line1381")
!103 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !102, line: 48, flags: DIFlagFwdDecl)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppCtx", file: !4, line: 274, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppCtx", file: !4, line: 241, size: 576, align: 64, elements: !107)
!107 = !{!108, !110, !113, !114, !115, !120, !121, !126, !127, !128, !132}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !106, file: !4, line: 243, baseType: !109, size: 32, align: 32)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCoreAPI", file: !4, line: 234, baseType: !3)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !106, file: !4, line: 245, baseType: !111, size: 64, align: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "isVMware", scope: !106, file: !4, line: 247, baseType: !46, size: 32, align: 32, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "errorCode", scope: !106, file: !4, line: 249, baseType: !49, size: 32, align: 32, offset: 160)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "mainLoop", scope: !106, file: !4, line: 251, baseType: !116, size: 64, align: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainLoop", file: !118, line: 56, baseType: !119)
!118 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line1381")
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainLoop", file: !118, line: 56, flags: DIFlagFwdDecl)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !106, file: !4, line: 253, baseType: !100, size: 64, align: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !106, file: !4, line: 255, baseType: !122, size: 64, align: 64, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !124, line: 48, baseType: !125)
!124 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1381")
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !124, line: 48, flags: DIFlagFwdDecl)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "blockFD", scope: !106, file: !4, line: 261, baseType: !49, size: 32, align: 32, offset: 384)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "uinputFD", scope: !106, file: !4, line: 263, baseType: !49, size: 32, align: 32, offset: 416)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !106, file: !4, line: 265, baseType: !129, size: 64, align: 64, offset: 448)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "serviceObj", scope: !106, file: !4, line: 273, baseType: !81, size: 64, align: 64, offset: 512)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !94, file: !93, line: 145, baseType: !135, size: 64, align: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{!49, !104, !81, !81, !133}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "debugPlugin", scope: !94, file: !93, line: 149, baseType: !139, size: 64, align: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugPlugin", file: !93, line: 126, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcDebugPlugin", file: !93, line: 112, size: 320, align: 64, elements: !142)
!142 = !{!143, !162, !163, !192, !198}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "recvFns", scope: !141, file: !93, line: 114, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugRecvMapping", file: !93, line: 69, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcDebugRecvMapping", file: !93, line: 59, size: 256, align: 64, elements: !147)
!147 = !{!148, !149, !160, !161}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !146, file: !93, line: 60, baseType: !56, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "recvFn", scope: !146, file: !93, line: 61, baseType: !150, size: 64, align: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugRecvFn", file: !93, line: 53, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!46, !154, !155, !158, !159}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !156, line: 216, baseType: !157)
!156 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1381")
!157 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "xdrProc", scope: !146, file: !93, line: 66, baseType: !81, size: 64, align: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "xdrSize", scope: !146, file: !93, line: 68, baseType: !155, size: 64, align: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "dfltRecvFn", scope: !141, file: !93, line: 119, baseType: !150, size: 64, align: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "sendFn", scope: !141, file: !93, line: 121, baseType: !164, size: 64, align: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugSendFn", file: !93, line: 102, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!46, !168}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugMsgMapping", file: !93, line: 86, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcDebugMsgMapping", file: !93, line: 81, size: 256, align: 64, elements: !171)
!171 = !{!172, !173, !174, !191}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !170, file: !93, line: 82, baseType: !56, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "messageLen", scope: !170, file: !93, line: 83, baseType: !155, size: 64, align: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "validateFn", scope: !170, file: !93, line: 84, baseType: !175, size: 64, align: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugValidateFn", file: !93, line: 77, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!46, !179, !46}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcInData", file: !102, line: 77, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcInData", file: !102, line: 51, size: 512, align: 64, elements: !182)
!182 = !{!183, !184, !185, !186, !187, !188, !189, !190}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !181, file: !102, line: 53, baseType: !130, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !181, file: !102, line: 58, baseType: !130, size: 64, align: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "argsSize", scope: !181, file: !102, line: 60, baseType: !155, size: 64, align: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !181, file: !102, line: 65, baseType: !154, size: 64, align: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "resultLen", scope: !181, file: !102, line: 67, baseType: !155, size: 64, align: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "freeResult", scope: !181, file: !102, line: 72, baseType: !46, size: 32, align: 32, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "appCtx", scope: !181, file: !102, line: 74, baseType: !38, size: 64, align: 64, offset: 384)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !181, file: !102, line: 76, baseType: !38, size: 64, align: 64, offset: 448)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "freeMsg", scope: !170, file: !93, line: 85, baseType: !46, size: 32, align: 32, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "shutdownFn", scope: !141, file: !93, line: 123, baseType: !193, size: 64, align: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcDebugShutdownFn", file: !93, line: 105, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !104, !197}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "plugin", scope: !141, file: !93, line: 125, baseType: !199, size: 64, align: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsPluginData", file: !4, line: 545, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsPluginData", file: !4, line: 501, size: 256, align: 64, elements: !202)
!202 = !{!203, !204, !211, !217}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !201, file: !4, line: 503, baseType: !130, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !201, file: !4, line: 508, baseType: !205, size: 64, align: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "GArray", file: !76, line: 37, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GArray", file: !76, line: 41, size: 128, align: 64, elements: !208)
!208 = !{!209, !210}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !207, file: !76, line: 43, baseType: !56, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !207, file: !76, line: 44, baseType: !67, size: 32, align: 32, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "errorCb", scope: !201, file: !4, line: 539, baseType: !212, size: 64, align: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!46, !104, !215, !81, !216}
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppType", file: !4, line: 360, baseType: !7)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !201, file: !4, line: 544, baseType: !81, size: 64, align: 64, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !53, file: !52, line: 87, baseType: !105, size: 576, align: 64, offset: 768)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "providers", scope: !53, file: !52, line: 88, baseType: !205, size: 64, align: 64, offset: 1344)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "vsockDev", scope: !53, file: !52, line: 97, baseType: !49, size: 32, align: 32, offset: 1408)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "vsockFamily", scope: !53, file: !52, line: 98, baseType: !49, size: 32, align: 32, offset: 1440)
!222 = !{}
!223 = !DILocalVariable(name: "state", arg: 1, scope: !42, file: !43, line: 214, type: !50)
!224 = !DIExpression()
!225 = !DILocation(line: 214, column: 47, scope: !42)
!226 = !DILocalVariable(name: "argc", arg: 2, scope: !42, file: !43, line: 215, type: !49)
!227 = !DILocation(line: 215, column: 32, scope: !42)
!228 = !DILocalVariable(name: "argv", arg: 3, scope: !42, file: !43, line: 216, type: !158)
!229 = !DILocation(line: 216, column: 34, scope: !42)
!230 = !DILocalVariable(name: "i", scope: !42, file: !43, line: 218, type: !49)
!231 = !DILocation(line: 218, column: 8, scope: !42)
!232 = !DILocalVariable(name: "cmdStr", scope: !42, file: !43, line: 219, type: !154)
!233 = !DILocation(line: 219, column: 10, scope: !42)
!234 = !DILocalVariable(name: "ret", scope: !42, file: !43, line: 220, type: !46)
!235 = !DILocation(line: 220, column: 13, scope: !42)
!236 = !DILocalVariable(name: "version", scope: !42, file: !43, line: 221, type: !46)
!237 = !DILocation(line: 221, column: 13, scope: !42)
!238 = !DILocalVariable(name: "unused", scope: !42, file: !43, line: 226, type: !46)
!239 = !DILocation(line: 226, column: 13, scope: !42)
!240 = !DILocalVariable(name: "clOptions", scope: !42, file: !43, line: 227, type: !241)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 4608, align: 64, elements: !253)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOptionEntry", file: !14, line: 52, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GOptionEntry", file: !14, line: 257, size: 384, align: 64, elements: !244)
!244 = !{!245, !246, !247, !248, !250, !251, !252}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "long_name", scope: !243, file: !14, line: 259, baseType: !111, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "short_name", scope: !243, file: !14, line: 260, baseType: !57, size: 8, align: 8, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !243, file: !14, line: 261, baseType: !48, size: 32, align: 32, offset: 96)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !243, file: !14, line: 263, baseType: !249, size: 32, align: 32, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOptionArg", file: !14, line: 129, baseType: !13)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "arg_data", scope: !243, file: !14, line: 264, baseType: !81, size: 64, align: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !243, file: !14, line: 266, baseType: !111, size: 64, align: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "arg_description", scope: !243, file: !14, line: 267, baseType: !111, size: 64, align: 64, offset: 320)
!253 = !{!254}
!254 = !DISubrange(count: 12)
!255 = !DILocation(line: 227, column: 17, scope: !42)
!256 = !DILocation(line: 227, column: 31, scope: !42)
!257 = !DILocation(line: 228, column: 7, scope: !42)
!258 = !DILocation(line: 228, column: 47, scope: !42)
!259 = !DILocation(line: 228, column: 54, scope: !42)
!260 = !DILocation(line: 228, column: 46, scope: !42)
!261 = !DILocation(line: 229, column: 10, scope: !42)
!262 = !DILocation(line: 230, column: 10, scope: !42)
!263 = !DILocation(line: 231, column: 7, scope: !42)
!264 = !DILocation(line: 231, column: 57, scope: !42)
!265 = !DILocation(line: 231, column: 64, scope: !42)
!266 = !DILocation(line: 231, column: 56, scope: !42)
!267 = !DILocation(line: 232, column: 10, scope: !42)
!268 = !DILocation(line: 233, column: 10, scope: !42)
!269 = !DILocation(line: 234, column: 7, scope: !42)
!270 = !DILocation(line: 234, column: 56, scope: !42)
!271 = !DILocation(line: 234, column: 63, scope: !42)
!272 = !DILocation(line: 234, column: 55, scope: !42)
!273 = !DILocation(line: 235, column: 10, scope: !42)
!274 = !DILocation(line: 236, column: 10, scope: !42)
!275 = !DILocation(line: 237, column: 7, scope: !42)
!276 = !DILocation(line: 238, column: 10, scope: !42)
!277 = !DILocation(line: 239, column: 10, scope: !42)
!278 = !DILocation(line: 257, column: 7, scope: !42)
!279 = !DILocation(line: 257, column: 55, scope: !42)
!280 = !DILocation(line: 257, column: 62, scope: !42)
!281 = !DILocation(line: 257, column: 54, scope: !42)
!282 = !DILocation(line: 258, column: 10, scope: !42)
!283 = !DILocation(line: 259, column: 10, scope: !42)
!284 = !DILocation(line: 260, column: 7, scope: !42)
!285 = !DILocation(line: 260, column: 48, scope: !42)
!286 = !DILocation(line: 260, column: 55, scope: !42)
!287 = !DILocation(line: 260, column: 59, scope: !42)
!288 = !DILocation(line: 260, column: 47, scope: !42)
!289 = !DILocation(line: 261, column: 10, scope: !42)
!290 = !DILocation(line: 262, column: 10, scope: !42)
!291 = !DILocation(line: 263, column: 7, scope: !42)
!292 = !DILocation(line: 263, column: 49, scope: !42)
!293 = !DILocation(line: 263, column: 56, scope: !42)
!294 = !DILocation(line: 263, column: 60, scope: !42)
!295 = !DILocation(line: 263, column: 48, scope: !42)
!296 = !DILocation(line: 264, column: 10, scope: !42)
!297 = !DILocation(line: 265, column: 10, scope: !42)
!298 = !DILocation(line: 267, column: 7, scope: !42)
!299 = !DILocation(line: 267, column: 51, scope: !42)
!300 = !DILocation(line: 267, column: 58, scope: !42)
!301 = !DILocation(line: 267, column: 50, scope: !42)
!302 = !DILocation(line: 268, column: 10, scope: !42)
!303 = !DILocation(line: 269, column: 10, scope: !42)
!304 = !DILocation(line: 270, column: 7, scope: !42)
!305 = !DILocation(line: 270, column: 50, scope: !42)
!306 = !DILocation(line: 270, column: 57, scope: !42)
!307 = !DILocation(line: 270, column: 49, scope: !42)
!308 = !DILocation(line: 271, column: 10, scope: !42)
!309 = !DILocation(line: 272, column: 10, scope: !42)
!310 = !DILocation(line: 273, column: 7, scope: !42)
!311 = !DILocation(line: 273, column: 43, scope: !42)
!312 = !DILocation(line: 274, column: 10, scope: !42)
!313 = !DILocation(line: 276, column: 7, scope: !42)
!314 = !DILocation(line: 276, column: 47, scope: !42)
!315 = !DILocation(line: 277, column: 10, scope: !42)
!316 = !DILocalVariable(name: "error", scope: !42, file: !43, line: 281, type: !317)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !319, line: 42, baseType: !320)
!319 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/open-vm-tools/line1381")
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !319, line: 44, size: 128, align: 64, elements: !321)
!321 = !{!322, !327, !328}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !320, file: !319, line: 46, baseType: !323, size: 32, align: 32)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !324, line: 36, baseType: !325)
!324 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/open-vm-tools/line1381")
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !326, line: 45, baseType: !68)
!326 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/open-vm-tools/line1381")
!327 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !320, file: !319, line: 47, baseType: !48, size: 32, align: 32, offset: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !320, file: !319, line: 48, baseType: !56, size: 64, align: 64, offset: 64)
!329 = !DILocation(line: 281, column: 12, scope: !42)
!330 = !DILocalVariable(name: "context", scope: !42, file: !43, line: 282, type: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOptionContext", file: !14, line: 38, baseType: !333)
!333 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GOptionContext", file: !14, line: 38, flags: DIFlagFwdDecl)
!334 = !DILocation(line: 282, column: 20, scope: !42)
!335 = !DILocation(line: 285, column: 4, scope: !42)
!336 = !DILocation(line: 285, column: 11, scope: !42)
!337 = !DILocation(line: 285, column: 15, scope: !42)
!338 = !DILocation(line: 285, column: 23, scope: !42)
!339 = !DILocation(line: 286, column: 4, scope: !42)
!340 = !DILocation(line: 286, column: 11, scope: !42)
!341 = !DILocation(line: 286, column: 15, scope: !42)
!342 = !DILocation(line: 286, column: 24, scope: !42)
!343 = !DILocation(line: 293, column: 41, scope: !42)
!344 = !DILocation(line: 293, column: 13, scope: !42)
!345 = !DILocation(line: 293, column: 11, scope: !42)
!346 = !DILocation(line: 294, column: 11, scope: !347)
!347 = distinct !DILexicalBlock(scope: !42, file: !43, line: 294, column: 4)
!348 = !DILocation(line: 294, column: 9, scope: !347)
!349 = !DILocation(line: 294, column: 16, scope: !350)
!350 = !DILexicalBlockFile(scope: !351, file: !43, discriminator: 1)
!351 = distinct !DILexicalBlock(scope: !347, file: !43, line: 294, column: 4)
!352 = !DILocation(line: 294, column: 20, scope: !350)
!353 = !DILocation(line: 294, column: 18, scope: !350)
!354 = !DILocation(line: 294, column: 4, scope: !350)
!355 = !DILocalVariable(name: "prefix", scope: !356, file: !43, line: 295, type: !154)
!356 = distinct !DILexicalBlock(scope: !351, file: !43, line: 294, column: 31)
!357 = !DILocation(line: 295, column: 13, scope: !356)
!358 = !DILocation(line: 295, column: 22, scope: !356)
!359 = !DILocation(line: 296, column: 47, scope: !356)
!360 = !DILocation(line: 296, column: 60, scope: !356)
!361 = !DILocation(line: 296, column: 55, scope: !356)
!362 = !DILocation(line: 296, column: 16, scope: !356)
!363 = !DILocation(line: 296, column: 14, scope: !356)
!364 = !DILocation(line: 297, column: 12, scope: !356)
!365 = !DILocation(line: 297, column: 7, scope: !356)
!366 = !DILocation(line: 304, column: 4, scope: !356)
!367 = !DILocation(line: 294, column: 27, scope: !368)
!368 = !DILexicalBlockFile(scope: !351, file: !43, discriminator: 2)
!369 = !DILocation(line: 294, column: 4, scope: !368)
!370 = distinct !{!370, !371}
!371 = !DILocation(line: 294, column: 4, scope: !42)
!372 = !DILocation(line: 306, column: 14, scope: !42)
!373 = !DILocation(line: 306, column: 12, scope: !42)
!374 = !DILocation(line: 308, column: 33, scope: !42)
!375 = !DILocation(line: 308, column: 4, scope: !42)
!376 = !DILocation(line: 310, column: 38, scope: !42)
!377 = !DILocation(line: 310, column: 47, scope: !42)
!378 = !DILocation(line: 310, column: 4, scope: !42)
!379 = !DILocation(line: 311, column: 66, scope: !42)
!380 = !DILocation(line: 311, column: 34, scope: !42)
!381 = !DILocation(line: 311, column: 4, scope: !382)
!382 = !DILexicalBlockFile(scope: !42, file: !43, discriminator: 1)
!383 = !DILocation(line: 314, column: 32, scope: !384)
!384 = distinct !DILexicalBlock(scope: !42, file: !43, line: 314, column: 8)
!385 = !DILocation(line: 314, column: 9, scope: !384)
!386 = !DILocation(line: 314, column: 8, scope: !42)
!387 = !DILocation(line: 315, column: 63, scope: !388)
!388 = distinct !DILexicalBlock(scope: !384, file: !43, line: 314, column: 64)
!389 = !DILocation(line: 315, column: 70, scope: !388)
!390 = !DILocation(line: 315, column: 7, scope: !388)
!391 = !DILocation(line: 316, column: 7, scope: !388)
!392 = !DILocation(line: 319, column: 8, scope: !393)
!393 = distinct !DILexicalBlock(scope: !42, file: !43, line: 319, column: 8)
!394 = !DILocation(line: 319, column: 8, scope: !42)
!395 = !DILocation(line: 320, column: 31, scope: !396)
!396 = distinct !DILexicalBlock(scope: !393, file: !43, line: 319, column: 17)
!397 = !DILocation(line: 320, column: 7, scope: !398)
!398 = !DILexicalBlockFile(scope: !396, file: !43, discriminator: 1)
!399 = !DILocation(line: 322, column: 7, scope: !396)
!400 = !DILocation(line: 325, column: 8, scope: !401)
!401 = distinct !DILexicalBlock(scope: !42, file: !43, line: 325, column: 8)
!402 = !DILocation(line: 325, column: 15, scope: !401)
!403 = !DILocation(line: 325, column: 20, scope: !401)
!404 = !DILocation(line: 325, column: 8, scope: !42)
!405 = !DILocation(line: 326, column: 7, scope: !406)
!406 = distinct !DILexicalBlock(scope: !401, file: !43, line: 325, column: 28)
!407 = !DILocation(line: 326, column: 14, scope: !406)
!408 = !DILocation(line: 326, column: 19, scope: !406)
!409 = !DILocation(line: 327, column: 7, scope: !406)
!410 = !DILocation(line: 327, column: 14, scope: !406)
!411 = !DILocation(line: 327, column: 26, scope: !406)
!412 = !DILocation(line: 328, column: 4, scope: !406)
!413 = !DILocation(line: 329, column: 18, scope: !414)
!414 = distinct !DILexicalBlock(scope: !415, file: !43, line: 329, column: 11)
!415 = distinct !DILexicalBlock(scope: !401, file: !43, line: 328, column: 11)
!416 = !DILocation(line: 329, column: 25, scope: !414)
!417 = !DILocation(line: 329, column: 11, scope: !414)
!418 = !DILocation(line: 329, column: 40, scope: !414)
!419 = !DILocation(line: 329, column: 45, scope: !414)
!420 = !DILocation(line: 330, column: 18, scope: !414)
!421 = !DILocation(line: 330, column: 25, scope: !414)
!422 = !DILocation(line: 330, column: 11, scope: !414)
!423 = !DILocation(line: 330, column: 40, scope: !414)
!424 = !DILocation(line: 329, column: 11, scope: !425)
!425 = !DILexicalBlockFile(scope: !415, file: !43, discriminator: 1)
!426 = !DILocation(line: 331, column: 57, scope: !427)
!427 = distinct !DILexicalBlock(scope: !414, file: !43, line: 330, column: 46)
!428 = !DILocation(line: 331, column: 64, scope: !427)
!429 = !DILocation(line: 331, column: 10, scope: !427)
!430 = !DILocation(line: 332, column: 10, scope: !427)
!431 = !DILocation(line: 334, column: 37, scope: !415)
!432 = !DILocation(line: 334, column: 45, scope: !415)
!433 = !DILocation(line: 334, column: 29, scope: !415)
!434 = !DILocation(line: 334, column: 60, scope: !415)
!435 = !DILocation(line: 334, column: 7, scope: !415)
!436 = !DILocation(line: 334, column: 14, scope: !415)
!437 = !DILocation(line: 334, column: 26, scope: !415)
!438 = !DILocation(line: 338, column: 27, scope: !42)
!439 = !DILocation(line: 338, column: 4, scope: !42)
!440 = !DILocation(line: 341, column: 62, scope: !42)
!441 = !DILocation(line: 341, column: 4, scope: !42)
!442 = !DILocation(line: 352, column: 18, scope: !443)
!443 = distinct !DILexicalBlock(scope: !42, file: !43, line: 352, column: 8)
!444 = !DILocation(line: 352, column: 26, scope: !443)
!445 = !DILocation(line: 352, column: 10, scope: !443)
!446 = !DILocation(line: 352, column: 41, scope: !443)
!447 = !DILocation(line: 352, column: 8, scope: !42)
!448 = !DILocation(line: 353, column: 11, scope: !449)
!449 = distinct !DILexicalBlock(scope: !450, file: !43, line: 353, column: 11)
!450 = distinct !DILexicalBlock(scope: !443, file: !43, line: 352, column: 48)
!451 = !DILocation(line: 353, column: 18, scope: !449)
!452 = !DILocation(line: 353, column: 22, scope: !449)
!453 = !DILocation(line: 353, column: 30, scope: !449)
!454 = !DILocation(line: 353, column: 11, scope: !450)
!455 = !DILocation(line: 354, column: 16, scope: !456)
!456 = distinct !DILexicalBlock(scope: !449, file: !43, line: 353, column: 36)
!457 = !DILocation(line: 354, column: 23, scope: !456)
!458 = !DILocation(line: 354, column: 27, scope: !456)
!459 = !DILocation(line: 354, column: 10, scope: !456)
!460 = !DILocation(line: 355, column: 7, scope: !456)
!461 = !DILocation(line: 356, column: 7, scope: !450)
!462 = !DILocation(line: 356, column: 14, scope: !450)
!463 = !DILocation(line: 356, column: 18, scope: !450)
!464 = !DILocation(line: 356, column: 26, scope: !450)
!465 = !DILocation(line: 358, column: 11, scope: !466)
!466 = distinct !DILexicalBlock(scope: !450, file: !43, line: 358, column: 11)
!467 = !DILocation(line: 358, column: 18, scope: !466)
!468 = !DILocation(line: 358, column: 22, scope: !466)
!469 = !DILocation(line: 358, column: 31, scope: !466)
!470 = !DILocation(line: 358, column: 11, scope: !450)
!471 = !DILocation(line: 359, column: 16, scope: !472)
!472 = distinct !DILexicalBlock(scope: !466, file: !43, line: 358, column: 37)
!473 = !DILocation(line: 359, column: 23, scope: !472)
!474 = !DILocation(line: 359, column: 27, scope: !472)
!475 = !DILocation(line: 359, column: 10, scope: !472)
!476 = !DILocation(line: 360, column: 7, scope: !472)
!477 = !DILocation(line: 361, column: 7, scope: !450)
!478 = !DILocation(line: 361, column: 14, scope: !450)
!479 = !DILocation(line: 361, column: 18, scope: !450)
!480 = !DILocation(line: 361, column: 27, scope: !450)
!481 = !DILocation(line: 362, column: 4, scope: !450)
!482 = !DILocation(line: 365, column: 8, scope: !42)
!483 = !DILocation(line: 365, column: 4, scope: !42)
!484 = !DILocation(line: 368, column: 9, scope: !42)
!485 = !DILocation(line: 368, column: 4, scope: !42)
!486 = !DILocation(line: 369, column: 4, scope: !42)
!487 = !DILocation(line: 370, column: 26, scope: !42)
!488 = !DILocation(line: 370, column: 4, scope: !42)
!489 = !DILocation(line: 371, column: 11, scope: !42)
!490 = !DILocation(line: 371, column: 4, scope: !42)
!491 = distinct !DISubprogram(name: "ToolsCoreRunCommand", scope: !43, file: !43, line: 60, type: !492, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !222)
!492 = !DISubroutineType(types: !493)
!493 = !{!46, !111, !111, !81, !494}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!495 = !DILocalVariable(name: "option", arg: 1, scope: !491, file: !43, line: 60, type: !111)
!496 = !DILocation(line: 60, column: 34, scope: !491)
!497 = !DILocalVariable(name: "value", arg: 2, scope: !491, file: !43, line: 61, type: !111)
!498 = !DILocation(line: 61, column: 34, scope: !491)
!499 = !DILocalVariable(name: "data", arg: 3, scope: !491, file: !43, line: 62, type: !81)
!500 = !DILocation(line: 62, column: 30, scope: !491)
!501 = !DILocalVariable(name: "error", arg: 4, scope: !491, file: !43, line: 63, type: !494)
!502 = !DILocation(line: 63, column: 30, scope: !491)
!503 = !DILocation(line: 68, column: 8, scope: !504)
!504 = distinct !DILexicalBlock(scope: !491, file: !43, line: 68, column: 8)
!505 = !DILocation(line: 68, column: 8, scope: !491)
!506 = !DILocalVariable(name: "result", scope: !507, file: !43, line: 69, type: !154)
!507 = distinct !DILexicalBlock(scope: !504, file: !43, line: 68, column: 34)
!508 = !DILocation(line: 69, column: 13, scope: !507)
!509 = !DILocalVariable(name: "status", scope: !507, file: !43, line: 70, type: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !511, line: 230, baseType: !58)
!511 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1381")
!512 = !DILocation(line: 70, column: 12, scope: !507)
!513 = !DILocation(line: 72, column: 55, scope: !507)
!514 = !DILocation(line: 72, column: 16, scope: !507)
!515 = !DILocation(line: 72, column: 14, scope: !507)
!516 = !DILocation(line: 74, column: 12, scope: !517)
!517 = distinct !DILexicalBlock(scope: !507, file: !43, line: 74, column: 11)
!518 = !DILocation(line: 74, column: 11, scope: !507)
!519 = !DILocation(line: 75, column: 29, scope: !520)
!520 = distinct !DILexicalBlock(scope: !517, file: !43, line: 74, column: 20)
!521 = !DILocation(line: 75, column: 38, scope: !522)
!522 = !DILexicalBlockFile(scope: !520, file: !43, discriminator: 1)
!523 = !DILocation(line: 75, column: 29, scope: !522)
!524 = !DILocation(line: 75, column: 29, scope: !525)
!525 = !DILexicalBlockFile(scope: !520, file: !43, discriminator: 2)
!526 = !DILocation(line: 75, column: 29, scope: !527)
!527 = !DILexicalBlockFile(scope: !520, file: !43, discriminator: 3)
!528 = !DILocation(line: 75, column: 10, scope: !527)
!529 = !DILocation(line: 76, column: 7, scope: !520)
!530 = !DILocation(line: 77, column: 26, scope: !531)
!531 = distinct !DILexicalBlock(scope: !517, file: !43, line: 76, column: 14)
!532 = !DILocation(line: 77, column: 10, scope: !531)
!533 = !DILocation(line: 80, column: 15, scope: !507)
!534 = !DILocation(line: 80, column: 7, scope: !507)
!535 = !DILocation(line: 81, column: 12, scope: !507)
!536 = !DILocation(line: 81, column: 7, scope: !507)
!537 = !DILocation(line: 84, column: 15, scope: !491)
!538 = !DILocation(line: 83, column: 4, scope: !491)
!539 = !DILocation(line: 85, column: 4, scope: !491)
!540 = !DILocation(line: 86, column: 1, scope: !491)
!541 = distinct !DISubprogram(name: "ToolsCoreCmdLineError", scope: !43, file: !43, line: 191, type: !542, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !222)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !331, !544, !81, !494}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64, align: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOptionGroup", file: !14, line: 51, baseType: !546)
!546 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GOptionGroup", file: !14, line: 51, flags: DIFlagFwdDecl)
!547 = !DILocalVariable(name: "context", arg: 1, scope: !541, file: !43, line: 191, type: !331)
!548 = !DILocation(line: 191, column: 39, scope: !541)
!549 = !DILocalVariable(name: "group", arg: 2, scope: !541, file: !43, line: 192, type: !544)
!550 = !DILocation(line: 192, column: 37, scope: !541)
!551 = !DILocalVariable(name: "data", arg: 3, scope: !541, file: !43, line: 193, type: !81)
!552 = !DILocation(line: 193, column: 32, scope: !541)
!553 = !DILocalVariable(name: "error", arg: 4, scope: !541, file: !43, line: 194, type: !494)
!554 = !DILocation(line: 194, column: 32, scope: !541)
!555 = !DILocation(line: 199, column: 1, scope: !541)
