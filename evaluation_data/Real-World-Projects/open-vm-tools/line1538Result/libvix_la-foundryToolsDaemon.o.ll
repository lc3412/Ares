; ModuleID = './libvix_la-foundryToolsDaemon.o.i'
source_filename = "./libvix_la-foundryToolsDaemon.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.HgfsServerMgrData = type { i8*, i8*, i8*, i8* }
%struct.SyncHandle = type opaque
%struct.RpcInData = type { i8*, i8*, i64, i8*, i64, i32, i8*, i8* }
%struct._GMainLoop = type opaque
%struct.ToolsAppCtx = type { i32, i8*, i32, i32, %struct._GMainLoop*, %struct._RpcChannel*, %struct._GKeyFile*, i32, i32, i8**, i8* }
%struct._RpcChannel = type opaque
%struct._GKeyFile = type opaque
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct.ProcMgr_ProcArgs = type { i8**, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.mntent = type { i8*, i8*, i8*, i8*, i32, i32 }
%struct.VixCommandRequestHeader = type <{ %struct.VixMsgHeader, i32, i32, i32, i64, i32, i32 }>
%struct.VixMsgHeader = type <{ i32, i16, i32, i32, i32, i32, i8 }>

@FoundryToolsDaemonRunProgram.resultBuffer = internal global [1024 x i8] zeroinitializer, align 16
@thisProcessRunsAsRoot = internal global i8 0, align 1
@.str = private unnamed_addr constant [11 x i8] c"%ld %d %ld\00", align 1
@FoundryToolsDaemonGetToolsProperties.resultBuffer = internal global [1024 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%ld %d %s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"vmsvc\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Vix_1_Send_Hgfs_Packet\00", align 1
@gFoundryHgfsBkdrConn = internal global %struct.HgfsServerMgrData zeroinitializer, align 8
@ToolsDaemonTcloSyncDriverFreeze.resultBuffer = internal global [1024 x i8] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [4 x i8] c"vix\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"%s: Failed to get string args\0A\00", align 1
@__FUNCTION__.ToolsDaemonTcloSyncDriverFreeze = private unnamed_addr constant [32 x i8] c"ToolsDaemonTcloSyncDriverFreeze\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"%s: Bad args, timeout '%s'\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"%s: Got request to freeze '%s', timeout %d\0A\00", align 1
@gSyncDriverHandle = internal global %struct.SyncHandle* null, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"vmbackup\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"enableNullDriver\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"%s: Failed to Freeze drives '%s'\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"%s: Starting timer callback %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"%ld %d\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"%s: returning %s\0A\00", align 1
@ToolsDaemonTcloSyncDriverThaw.resultBuffer = internal global [1024 x i8] zeroinitializer, align 16
@.str.15 = private unnamed_addr constant [25 x i8] c"%s: Got request to thaw\0A\00", align 1
@__FUNCTION__.ToolsDaemonTcloSyncDriverThaw = private unnamed_addr constant [30 x i8] c"ToolsDaemonTcloSyncDriverThaw\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"%s: No drives are frozen.\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"%s: Failed to Thaw drives\0A\00", align 1
@ToolsDaemonTcloMountHGFS.resultBuffer = internal global [1024 x i8] zeroinitializer, align 16
@.str.18 = private unnamed_addr constant [31 x i8] c"/usr/bin/vmhgfs-fuse --enabled\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"%s: vmhgfs-fuse -> FUSE not installed\0A\00", align 1
@__FUNCTION__.ToolsDaemonTcloMountHGFS = private unnamed_addr constant [25 x i8] c"ToolsDaemonTcloMountHGFS\00", align 1
@.str.20 = private unnamed_addr constant [61 x i8] c"%s: vmhgfs-fuse -> %d: not supported on this kernel version\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"%s: vmhgfs already mounted\0A\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"/mnt/hgfs\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"%s: no mount point found, create %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"%s: ERROR: vmhgfs mount point creation -> %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [74 x i8] c"/usr/bin/vmhgfs-fuse .host:/ /mnt/hgfs -o subtype=vmhgfs-fuse,allow_other\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"/usr/bin/mount\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"/usr/bin/mount -t vmhgfs .host:/ /mnt/hgfs\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"/bin/mount\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"/bin/mount -t vmhgfs .host:/ /mnt/hgfs\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"%s: failed to find mount -> %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"%s: Mounting: %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"%s: ERROR: no vmhgfs mount\0A\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"%s: vmhgfs mount point not deleted %d\0A\00", align 1
@ToolsDaemonHgfsImpersonated.resultPacket = internal global [63512 x i8] zeroinitializer, align 16
@.str.34 = private unnamed_addr constant [7 x i8] c"%ld 0 \00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"1 0 #\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__FUNCTION__.ToolsDaemonHgfsImpersonated = private unnamed_addr constant [28 x i8] c"ToolsDaemonHgfsImpersonated\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"%s %s %ld %d %d %ld\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"Run_Program_Done\00", align 1
@.str.39 = private unnamed_addr constant [61 x i8] c"%s: Unable to send results from polling the result program.\0A\00", align 1
@__FUNCTION__.ToolsDaemonTcloReportProgramCompleted = private unnamed_addr constant [38 x i8] c"ToolsDaemonTcloReportProgramCompleted\00", align 1
@ToolsDaemonTcloReceiveVixCommand.tcloBuffer = internal global [65536 x i8] zeroinitializer, align 16
@.str.40 = private unnamed_addr constant [38 x i8] c"%s: command %u, additionalError = %u\0A\00", align 1
@__FUNCTION__.ToolsDaemonTcloReceiveVixCommand = private unnamed_addr constant [33 x i8] c"ToolsDaemonTcloReceiveVixCommand\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"%ld %d \00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"%s: Timed out waiting for thaw.\0A\00", align 1
@__FUNCTION__.ToolsDaemonSyncDriverThawCallback = private unnamed_addr constant [34 x i8] c"ToolsDaemonSyncDriverThawCallback\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"%s: Failed to thaw.\0A\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"/etc/mtab\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.46 = private unnamed_addr constant [52 x i8] c"%s: ERROR: opening mounted file system table -> %d\0A\00", align 1
@__FUNCTION__.ToolsDaemonCheckMountedHGFS = private unnamed_addr constant [28 x i8] c"ToolsDaemonCheckMountedHGFS\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"vmhgfs-fuse\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"fuse.vmhgfs-fuse\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c".host:/\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"vmhgfs\00", align 1
@.str.51 = private unnamed_addr constant [36 x i8] c"%s: mnt fs \22%s\22 type \22%s\22 dir \22%s\22\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @FoundryToolsDaemonRunProgram(%struct.RpcInData*) #0 !dbg !409 {
  %2 = alloca %struct.RpcInData*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct._GMainLoop*, align 8
  store %struct.RpcInData* %0, %struct.RpcInData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %2, metadata !467, metadata !468), !dbg !469
  call void @llvm.dbg.declare(metadata i64* %3, metadata !470, metadata !468), !dbg !472
  store i64 0, i64* %3, align 8, !dbg !472
  call void @llvm.dbg.declare(metadata i8** %4, metadata !473, metadata !468), !dbg !474
  store i8* null, i8** %4, align 8, !dbg !474
  call void @llvm.dbg.declare(metadata i8** %5, metadata !475, metadata !468), !dbg !476
  store i8* null, i8** %5, align 8, !dbg !476
  call void @llvm.dbg.declare(metadata i8** %6, metadata !477, metadata !468), !dbg !478
  store i8* null, i8** %6, align 8, !dbg !478
  call void @llvm.dbg.declare(metadata i8** %7, metadata !479, metadata !468), !dbg !480
  store i8* null, i8** %7, align 8, !dbg !480
  call void @llvm.dbg.declare(metadata i8** %8, metadata !481, metadata !468), !dbg !482
  store i8* null, i8** %8, align 8, !dbg !482
  call void @llvm.dbg.declare(metadata i8** %9, metadata !483, metadata !468), !dbg !484
  store i8* null, i8** %9, align 8, !dbg !484
  call void @llvm.dbg.declare(metadata i8** %10, metadata !485, metadata !468), !dbg !486
  store i8* null, i8** %10, align 8, !dbg !486
  call void @llvm.dbg.declare(metadata i8* %11, metadata !487, metadata !468), !dbg !488
  store i8 0, i8* %11, align 1, !dbg !488
  call void @llvm.dbg.declare(metadata i8** %12, metadata !489, metadata !468), !dbg !490
  store i8* null, i8** %12, align 8, !dbg !490
  call void @llvm.dbg.declare(metadata i32* %13, metadata !491, metadata !468), !dbg !497
  store i32 -1, i32* %13, align 4, !dbg !497
  call void @llvm.dbg.declare(metadata %struct._GMainLoop** %14, metadata !498, metadata !468), !dbg !499
  %15 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !500
  %16 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %15, i32 0, i32 6, !dbg !501
  %17 = load i8*, i8** %16, align 8, !dbg !501
  %18 = bitcast i8* %17 to %struct.ToolsAppCtx*, !dbg !502
  %19 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %18, i32 0, i32 4, !dbg !503
  %20 = load %struct._GMainLoop*, %struct._GMainLoop** %19, align 8, !dbg !503
  store %struct._GMainLoop* %20, %struct._GMainLoop** %14, align 8, !dbg !499
  %21 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !504
  %22 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %21, i32 0, i32 1, !dbg !505
  %23 = load i8*, i8** %22, align 8, !dbg !505
  %24 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !506
  %25 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %24, i32 0, i32 1, !dbg !507
  %26 = call i8* @ToolsDaemonTcloGetQuotedString(i8* %23, i8** %25), !dbg !508
  store i8* %26, i8** %4, align 8, !dbg !509
  %27 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !510
  %28 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %27, i32 0, i32 1, !dbg !511
  %29 = load i8*, i8** %28, align 8, !dbg !511
  %30 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !512
  %31 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %30, i32 0, i32 1, !dbg !513
  %32 = call i64 @ToolsDaemonTcloGetEncodedQuotedString(i8* %29, i8** %31, i8** %5), !dbg !514
  store i64 %32, i64* %3, align 8, !dbg !515
  %33 = load i64, i64* %3, align 8, !dbg !516
  %34 = icmp ne i64 %33, 0, !dbg !518
  br i1 %34, label %35, label %36, !dbg !519

; <label>:35:                                     ; preds = %1
  br label %106, !dbg !520

; <label>:36:                                     ; preds = %1
  %37 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !522
  %38 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %37, i32 0, i32 1, !dbg !523
  %39 = load i8*, i8** %38, align 8, !dbg !523
  %40 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !524
  %41 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %40, i32 0, i32 1, !dbg !525
  %42 = call i64 @ToolsDaemonTcloGetEncodedQuotedString(i8* %39, i8** %41, i8** %6), !dbg !526
  store i64 %42, i64* %3, align 8, !dbg !527
  %43 = load i64, i64* %3, align 8, !dbg !528
  %44 = icmp ne i64 %43, 0, !dbg !530
  br i1 %44, label %45, label %46, !dbg !531

; <label>:45:                                     ; preds = %36
  br label %106, !dbg !532

; <label>:46:                                     ; preds = %36
  %47 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !534
  %48 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %47, i32 0, i32 1, !dbg !535
  %49 = load i8*, i8** %48, align 8, !dbg !535
  %50 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !536
  %51 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %50, i32 0, i32 1, !dbg !537
  %52 = call i8* @ToolsDaemonTcloGetQuotedString(i8* %49, i8** %51), !dbg !538
  store i8* %52, i8** %7, align 8, !dbg !539
  %53 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !540
  %54 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %53, i32 0, i32 1, !dbg !541
  %55 = load i8*, i8** %54, align 8, !dbg !541
  %56 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !542
  %57 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %56, i32 0, i32 1, !dbg !543
  %58 = call i8* @ToolsDaemonTcloGetQuotedString(i8* %55, i8** %57), !dbg !544
  store i8* %58, i8** %8, align 8, !dbg !545
  %59 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !546
  %60 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %59, i32 0, i32 1, !dbg !547
  %61 = load i8*, i8** %60, align 8, !dbg !547
  %62 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !548
  %63 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %62, i32 0, i32 1, !dbg !549
  %64 = call i8* @ToolsDaemonTcloGetQuotedString(i8* %61, i8** %63), !dbg !550
  store i8* %64, i8** %9, align 8, !dbg !551
  %65 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !552
  %66 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %65, i32 0, i32 1, !dbg !553
  %67 = load i8*, i8** %66, align 8, !dbg !553
  %68 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !554
  %69 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %68, i32 0, i32 1, !dbg !555
  %70 = call i8* @ToolsDaemonTcloGetQuotedString(i8* %67, i8** %69), !dbg !556
  store i8* %70, i8** %10, align 8, !dbg !557
  %71 = load i8*, i8** %4, align 8, !dbg !558
  %72 = icmp eq i8* null, %71, !dbg !560
  br i1 %72, label %76, label %73, !dbg !561

; <label>:73:                                     ; preds = %46
  %74 = load i8*, i8** %5, align 8, !dbg !562
  %75 = icmp eq i8* null, %74, !dbg !564
  br i1 %75, label %76, label %77, !dbg !565

; <label>:76:                                     ; preds = %73, %46
  store i64 3, i64* %3, align 8, !dbg !566
  br label %106, !dbg !568

; <label>:77:                                     ; preds = %73
  %78 = load i8*, i8** %7, align 8, !dbg !569
  %79 = icmp ne i8* null, %78, !dbg !571
  br i1 %79, label %80, label %97, !dbg !572

; <label>:80:                                     ; preds = %77
  %81 = load i8*, i8** %7, align 8, !dbg !573
  %82 = load i8, i8* %81, align 1, !dbg !575
  %83 = sext i8 %82 to i32, !dbg !576
  %84 = icmp ne i32 %83, 0, !dbg !576
  br i1 %84, label %85, label %97, !dbg !577

; <label>:85:                                     ; preds = %80
  %86 = load i8, i8* @thisProcessRunsAsRoot, align 1, !dbg !578
  %87 = sext i8 %86 to i32, !dbg !579
  %88 = icmp ne i32 %87, 0, !dbg !579
  br i1 %88, label %89, label %97, !dbg !580

; <label>:89:                                     ; preds = %85
  %90 = load i8*, i8** %7, align 8, !dbg !582
  %91 = load i8*, i8** %8, align 8, !dbg !584
  %92 = call signext i8 @VixToolsImpersonateUserImpl(i8* %90, i32 0, i8* %91, i8** %12), !dbg !585
  store i8 %92, i8* %11, align 1, !dbg !586
  %93 = load i8, i8* %11, align 1, !dbg !587
  %94 = icmp ne i8 %93, 0, !dbg !587
  br i1 %94, label %96, label %95, !dbg !589

; <label>:95:                                     ; preds = %89
  store i64 3015, i64* %3, align 8, !dbg !590
  br label %106, !dbg !592

; <label>:96:                                     ; preds = %89
  br label %97, !dbg !593

; <label>:97:                                     ; preds = %96, %85, %80, %77
  %98 = load i8*, i8** %4, align 8, !dbg !594
  %99 = load i8*, i8** %5, align 8, !dbg !595
  %100 = load i8*, i8** %6, align 8, !dbg !596
  %101 = load i8*, i8** %12, align 8, !dbg !597
  %102 = load %struct._GMainLoop*, %struct._GMainLoop** %14, align 8, !dbg !598
  %103 = bitcast %struct._GMainLoop* %102 to i8*, !dbg !598
  %104 = bitcast i32* %13 to i64*, !dbg !599
  %105 = call i64 @VixToolsRunProgramImpl(i8* %98, i8* %99, i8* %100, i32 0, i8* %101, i8* %103, i64* %104), !dbg !600
  store i64 %105, i64* %3, align 8, !dbg !601
  br label %106, !dbg !602

; <label>:106:                                    ; preds = %97, %95, %76, %45, %35
  %107 = load i8, i8* %11, align 1, !dbg !603
  %108 = icmp ne i8 %107, 0, !dbg !603
  br i1 %108, label %109, label %111, !dbg !605

; <label>:109:                                    ; preds = %106
  %110 = load i8*, i8** %12, align 8, !dbg !606
  call void @VixToolsUnimpersonateUser(i8* %110), !dbg !608
  br label %111, !dbg !609

; <label>:111:                                    ; preds = %109, %106
  %112 = load i8*, i8** %12, align 8, !dbg !610
  call void @VixToolsLogoutUser(i8* %112), !dbg !611
  %113 = load i64, i64* %3, align 8, !dbg !612
  %114 = call i32* @__errno_location() #1, !dbg !613
  %115 = load i32, i32* %114, align 4, !dbg !614
  %116 = load i32, i32* %13, align 4, !dbg !615
  %117 = sext i32 %116 to i64, !dbg !616
  %118 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @FoundryToolsDaemonRunProgram.resultBuffer, i32 0, i32 0), i64 1024, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i64 %113, i32 %115, i64 %117), !dbg !617
  %119 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !618
  %120 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %119, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @FoundryToolsDaemonRunProgram.resultBuffer, i32 0, i32 0), i32 1), !dbg !619
  %121 = load i8*, i8** %4, align 8, !dbg !620
  call void @free(i8* %121) #7, !dbg !621
  %122 = load i8*, i8** %5, align 8, !dbg !622
  call void @free(i8* %122) #7, !dbg !623
  %123 = load i8*, i8** %7, align 8, !dbg !624
  call void @free(i8* %123) #7, !dbg !625
  %124 = load i8*, i8** %8, align 8, !dbg !626
  call void @free(i8* %124) #7, !dbg !627
  %125 = load i8*, i8** %9, align 8, !dbg !628
  call void @free(i8* %125) #7, !dbg !629
  %126 = load i8*, i8** %10, align 8, !dbg !630
  call void @free(i8* %126) #7, !dbg !631
  %127 = load i8*, i8** %6, align 8, !dbg !632
  call void @free(i8* %127) #7, !dbg !633
  ret i32 1, !dbg !634
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i8* @ToolsDaemonTcloGetQuotedString(i8*, i8**) #0 !dbg !635 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !638, metadata !468), !dbg !639
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !640, metadata !468), !dbg !641
  call void @llvm.dbg.declare(metadata i8** %5, metadata !642, metadata !468), !dbg !643
  store i8* null, i8** %5, align 8, !dbg !643
  call void @llvm.dbg.declare(metadata i8** %6, metadata !644, metadata !468), !dbg !645
  br label %7, !dbg !646

; <label>:7:                                      ; preds = %19, %2
  %8 = load i8*, i8** %3, align 8, !dbg !647
  %9 = load i8, i8* %8, align 1, !dbg !649
  %10 = sext i8 %9 to i32, !dbg !650
  %11 = icmp ne i32 %10, 0, !dbg !650
  br i1 %11, label %12, label %17, !dbg !651

; <label>:12:                                     ; preds = %7
  %13 = load i8*, i8** %3, align 8, !dbg !652
  %14 = load i8, i8* %13, align 1, !dbg !654
  %15 = sext i8 %14 to i32, !dbg !654
  %16 = icmp ne i32 34, %15, !dbg !655
  br label %17

; <label>:17:                                     ; preds = %12, %7
  %18 = phi i1 [ false, %7 ], [ %16, %12 ]
  br i1 %18, label %19, label %22, !dbg !656

; <label>:19:                                     ; preds = %17
  %20 = load i8*, i8** %3, align 8, !dbg !658
  %21 = getelementptr inbounds i8, i8* %20, i32 1, !dbg !658
  store i8* %21, i8** %3, align 8, !dbg !658
  br label %7, !dbg !660, !llvm.loop !662

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %3, align 8, !dbg !663
  %24 = load i8, i8* %23, align 1, !dbg !665
  %25 = sext i8 %24 to i32, !dbg !665
  %26 = icmp eq i32 34, %25, !dbg !666
  br i1 %26, label %27, label %30, !dbg !667

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %3, align 8, !dbg !668
  %29 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !668
  store i8* %29, i8** %3, align 8, !dbg !668
  br label %30, !dbg !670

; <label>:30:                                     ; preds = %27, %22
  %31 = load i8*, i8** %3, align 8, !dbg !671
  %32 = call i8* @UtilSafeStrdup0(i8* %31), !dbg !672
  store i8* %32, i8** %5, align 8, !dbg !673
  %33 = load i8*, i8** %5, align 8, !dbg !674
  store i8* %33, i8** %6, align 8, !dbg !675
  br label %34, !dbg !676

; <label>:34:                                     ; preds = %65, %30
  %35 = load i8*, i8** %6, align 8, !dbg !677
  %36 = load i8, i8* %35, align 1, !dbg !678
  %37 = icmp ne i8 %36, 0, !dbg !679
  br i1 %37, label %38, label %66, !dbg !679

; <label>:38:                                     ; preds = %34
  %39 = load i8*, i8** %6, align 8, !dbg !680
  %40 = load i8, i8* %39, align 1, !dbg !683
  %41 = sext i8 %40 to i32, !dbg !683
  %42 = icmp eq i32 92, %41, !dbg !684
  br i1 %42, label %43, label %52, !dbg !685

; <label>:43:                                     ; preds = %38
  %44 = load i8*, i8** %6, align 8, !dbg !686
  %45 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !688
  %46 = load i8, i8* %45, align 1, !dbg !689
  %47 = sext i8 %46 to i32, !dbg !690
  %48 = icmp ne i32 %47, 0, !dbg !690
  br i1 %48, label %49, label %52, !dbg !691

; <label>:49:                                     ; preds = %43
  %50 = load i8*, i8** %6, align 8, !dbg !692
  %51 = getelementptr inbounds i8, i8* %50, i64 2, !dbg !692
  store i8* %51, i8** %6, align 8, !dbg !692
  br label %65, !dbg !694

; <label>:52:                                     ; preds = %43, %38
  %53 = load i8*, i8** %6, align 8, !dbg !695
  %54 = load i8, i8* %53, align 1, !dbg !698
  %55 = sext i8 %54 to i32, !dbg !698
  %56 = icmp eq i32 34, %55, !dbg !699
  br i1 %56, label %57, label %61, !dbg !700

; <label>:57:                                     ; preds = %52
  %58 = load i8*, i8** %6, align 8, !dbg !701
  store i8 0, i8* %58, align 1, !dbg !703
  %59 = load i8*, i8** %6, align 8, !dbg !704
  %60 = getelementptr inbounds i8, i8* %59, i32 1, !dbg !704
  store i8* %60, i8** %6, align 8, !dbg !704
  br label %66, !dbg !705

; <label>:61:                                     ; preds = %52
  %62 = load i8*, i8** %6, align 8, !dbg !706
  %63 = getelementptr inbounds i8, i8* %62, i32 1, !dbg !706
  store i8* %63, i8** %6, align 8, !dbg !706
  br label %64

; <label>:64:                                     ; preds = %61
  br label %65

; <label>:65:                                     ; preds = %64, %49
  br label %34, !dbg !708, !llvm.loop !709

; <label>:66:                                     ; preds = %57, %34
  %67 = load i8**, i8*** %4, align 8, !dbg !710
  %68 = icmp ne i8** null, %67, !dbg !712
  br i1 %68, label %69, label %88, !dbg !713

; <label>:69:                                     ; preds = %66
  %70 = load i8*, i8** %6, align 8, !dbg !714
  %71 = load i8*, i8** %5, align 8, !dbg !716
  %72 = ptrtoint i8* %70 to i64, !dbg !717
  %73 = ptrtoint i8* %71 to i64, !dbg !717
  %74 = sub i64 %72, %73, !dbg !717
  %75 = load i8*, i8** %3, align 8, !dbg !718
  %76 = getelementptr inbounds i8, i8* %75, i64 %74, !dbg !718
  store i8* %76, i8** %3, align 8, !dbg !718
  br label %77, !dbg !719

; <label>:77:                                     ; preds = %82, %69
  %78 = load i8*, i8** %3, align 8, !dbg !720
  %79 = load i8, i8* %78, align 1, !dbg !722
  %80 = sext i8 %79 to i32, !dbg !722
  %81 = icmp eq i32 32, %80, !dbg !723
  br i1 %81, label %82, label %85, !dbg !724

; <label>:82:                                     ; preds = %77
  %83 = load i8*, i8** %3, align 8, !dbg !725
  %84 = getelementptr inbounds i8, i8* %83, i32 1, !dbg !725
  store i8* %84, i8** %3, align 8, !dbg !725
  br label %77, !dbg !727, !llvm.loop !729

; <label>:85:                                     ; preds = %77
  %86 = load i8*, i8** %3, align 8, !dbg !730
  %87 = load i8**, i8*** %4, align 8, !dbg !731
  store i8* %86, i8** %87, align 8, !dbg !732
  br label %88, !dbg !733

; <label>:88:                                     ; preds = %85, %66
  %89 = load i8*, i8** %5, align 8, !dbg !734
  ret i8* %89, !dbg !735
}

; Function Attrs: nounwind uwtable
define internal i64 @ToolsDaemonTcloGetEncodedQuotedString(i8*, i8**, i8**) #0 !dbg !736 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !740, metadata !468), !dbg !741
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !742, metadata !468), !dbg !743
  store i8** %2, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !744, metadata !468), !dbg !745
  call void @llvm.dbg.declare(metadata i64* %7, metadata !746, metadata !468), !dbg !747
  store i64 0, i64* %7, align 8, !dbg !747
  call void @llvm.dbg.declare(metadata i8** %8, metadata !748, metadata !468), !dbg !749
  store i8* null, i8** %8, align 8, !dbg !749
  call void @llvm.dbg.declare(metadata i8** %9, metadata !750, metadata !468), !dbg !751
  store i8* null, i8** %9, align 8, !dbg !751
  %10 = load i8*, i8** %4, align 8, !dbg !752
  %11 = load i8**, i8*** %5, align 8, !dbg !753
  %12 = call i8* @ToolsDaemonTcloGetQuotedString(i8* %10, i8** %11), !dbg !754
  store i8* %12, i8** %8, align 8, !dbg !755
  %13 = load i8*, i8** %8, align 8, !dbg !756
  %14 = icmp eq i8* null, %13, !dbg !758
  br i1 %14, label %15, label %16, !dbg !759

; <label>:15:                                     ; preds = %3
  br label %19, !dbg !760

; <label>:16:                                     ; preds = %3
  %17 = load i8*, i8** %8, align 8, !dbg !762
  %18 = call i64 @VixMsg_DecodeString(i8* %17, i8** %9), !dbg !763
  store i64 %18, i64* %7, align 8, !dbg !764
  br label %19, !dbg !765

; <label>:19:                                     ; preds = %16, %15
  %20 = load i8*, i8** %8, align 8, !dbg !766
  call void @free(i8* %20) #7, !dbg !767
  %21 = load i8*, i8** %9, align 8, !dbg !768
  %22 = load i8**, i8*** %6, align 8, !dbg !769
  store i8* %21, i8** %22, align 8, !dbg !770
  %23 = load i64, i64* %7, align 8, !dbg !771
  ret i64 %23, !dbg !772
}

declare signext i8 @VixToolsImpersonateUserImpl(i8*, i32, i8*, i8**) #2

declare i64 @VixToolsRunProgramImpl(i8*, i8*, i8*, i32, i8*, i8*, i64*) #2

declare void @VixToolsUnimpersonateUser(i8*) #2

declare void @VixToolsLogoutUser(i8*) #2

declare i32 @Str_Sprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare i32 @RpcChannel_SetRetVals(%struct.RpcInData*, i8*, i32) #2

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @FoundryToolsDaemonGetToolsProperties(%struct.RpcInData*) #0 !dbg !432 {
  %2 = alloca %struct.RpcInData*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca %struct._GKeyFile*, align 8
  store %struct.RpcInData* %0, %struct.RpcInData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %2, metadata !773, metadata !468), !dbg !774
  call void @llvm.dbg.declare(metadata i64* %3, metadata !775, metadata !468), !dbg !776
  store i64 0, i64* %3, align 8, !dbg !776
  call void @llvm.dbg.declare(metadata i32* %4, metadata !777, metadata !468), !dbg !778
  store i32 0, i32* %4, align 4, !dbg !778
  call void @llvm.dbg.declare(metadata i8** %5, metadata !779, metadata !468), !dbg !780
  store i8* null, i8** %5, align 8, !dbg !780
  call void @llvm.dbg.declare(metadata i64* %6, metadata !781, metadata !468), !dbg !782
  store i64 0, i64* %6, align 8, !dbg !782
  call void @llvm.dbg.declare(metadata i8** %7, metadata !783, metadata !468), !dbg !784
  store i8* null, i8** %7, align 8, !dbg !784
  call void @llvm.dbg.declare(metadata i64* %8, metadata !785, metadata !468), !dbg !786
  store i64 0, i64* %8, align 8, !dbg !786
  call void @llvm.dbg.declare(metadata i8* %9, metadata !787, metadata !468), !dbg !788
  call void @llvm.dbg.declare(metadata i8** %10, metadata !789, metadata !468), !dbg !790
  store i8* null, i8** %10, align 8, !dbg !790
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %11, metadata !791, metadata !468), !dbg !792
  %12 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !793
  %13 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %12, i32 0, i32 7, !dbg !794
  %14 = load i8*, i8** %13, align 8, !dbg !794
  %15 = bitcast i8* %14 to %struct._GKeyFile*, !dbg !793
  store %struct._GKeyFile* %15, %struct._GKeyFile** %11, align 8, !dbg !795
  %16 = load %struct._GKeyFile*, %struct._GKeyFile** %11, align 8, !dbg !796
  %17 = call i64 @VixTools_GetToolsPropertiesImpl(%struct._GKeyFile* %16, i8** %5, i64* %6), !dbg !797
  store i64 %17, i64* %3, align 8, !dbg !798
  %18 = load i64, i64* %3, align 8, !dbg !799
  %19 = icmp eq i64 0, %18, !dbg !801
  br i1 %19, label %20, label %41, !dbg !802

; <label>:20:                                     ; preds = %1
  %21 = load i8*, i8** %5, align 8, !dbg !803
  %22 = load i64, i64* %6, align 8, !dbg !805
  %23 = call i64 @Base64_EncodedLength(i8* %21, i64 %22), !dbg !806
  %24 = add i64 %23, 1, !dbg !807
  store i64 %24, i64* %8, align 8, !dbg !808
  %25 = load i64, i64* %8, align 8, !dbg !809
  %26 = call i8* @UtilSafeMalloc0(i64 %25), !dbg !810
  store i8* %26, i8** %7, align 8, !dbg !811
  %27 = load i8*, i8** %5, align 8, !dbg !812
  %28 = load i64, i64* %6, align 8, !dbg !813
  %29 = load i8*, i8** %7, align 8, !dbg !814
  %30 = load i64, i64* %8, align 8, !dbg !815
  %31 = call signext i8 @Base64_Encode(i8* %27, i64 %28, i8* %29, i64 %30, i64* %8), !dbg !816
  store i8 %31, i8* %9, align 1, !dbg !817
  %32 = load i8, i8* %9, align 1, !dbg !818
  %33 = icmp ne i8 %32, 0, !dbg !818
  br i1 %33, label %37, label %34, !dbg !820

; <label>:34:                                     ; preds = %20
  %35 = load i8*, i8** %7, align 8, !dbg !821
  %36 = getelementptr inbounds i8, i8* %35, i64 0, !dbg !821
  store i8 0, i8* %36, align 1, !dbg !823
  store i64 1, i64* %3, align 8, !dbg !824
  br label %42, !dbg !825

; <label>:37:                                     ; preds = %20
  %38 = load i64, i64* %8, align 8, !dbg !826
  %39 = load i8*, i8** %7, align 8, !dbg !827
  %40 = getelementptr inbounds i8, i8* %39, i64 %38, !dbg !827
  store i8 0, i8* %40, align 1, !dbg !828
  br label %41, !dbg !829

; <label>:41:                                     ; preds = %37, %1
  br label %42, !dbg !830

; <label>:42:                                     ; preds = %41, %34
  %43 = load i8*, i8** %7, align 8, !dbg !832
  store i8* %43, i8** %10, align 8, !dbg !833
  %44 = load i8*, i8** %7, align 8, !dbg !834
  %45 = icmp eq i8* null, %44, !dbg !836
  br i1 %45, label %46, label %47, !dbg !837

; <label>:46:                                     ; preds = %42
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %10, align 8, !dbg !838
  br label %47, !dbg !840

; <label>:47:                                     ; preds = %46, %42
  %48 = load i64, i64* %3, align 8, !dbg !841
  %49 = icmp ne i64 0, %48, !dbg !843
  br i1 %49, label %50, label %53, !dbg !844

; <label>:50:                                     ; preds = %47
  %51 = call i32* @__errno_location() #1, !dbg !845
  %52 = load i32, i32* %51, align 4, !dbg !847
  store i32 %52, i32* %4, align 4, !dbg !848
  br label %53, !dbg !849

; <label>:53:                                     ; preds = %50, %47
  %54 = load i64, i64* %3, align 8, !dbg !850
  %55 = load i32, i32* %4, align 4, !dbg !851
  %56 = load i8*, i8** %10, align 8, !dbg !852
  %57 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @FoundryToolsDaemonGetToolsProperties.resultBuffer, i32 0, i32 0), i64 1024, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i64 %54, i32 %55, i8* %56), !dbg !853
  %58 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !854
  %59 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %58, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @FoundryToolsDaemonGetToolsProperties.resultBuffer, i32 0, i32 0), i32 1), !dbg !855
  %60 = load i8*, i8** %5, align 8, !dbg !856
  call void @free(i8* %60) #7, !dbg !857
  %61 = load i8*, i8** %7, align 8, !dbg !858
  call void @free(i8* %61) #7, !dbg !859
  ret i32 1, !dbg !860
}

declare i64 @VixTools_GetToolsPropertiesImpl(%struct._GKeyFile*, i8**, i64*) #2

declare i64 @Base64_EncodedLength(i8*, i64) #2

declare i8* @UtilSafeMalloc0(i64) #2

declare signext i8 @Base64_Encode(i8*, i64, i8*, i64, i64*) #2

; Function Attrs: nounwind uwtable
define void @FoundryToolsDaemon_Initialize(%struct.ToolsAppCtx*) #0 !dbg !861 {
  %2 = alloca %struct.ToolsAppCtx*, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %2, metadata !864, metadata !468), !dbg !865
  %3 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %2, align 8, !dbg !866
  %4 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %3, i32 0, i32 1, !dbg !867
  %5 = load i8*, i8** %4, align 8, !dbg !867
  %6 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !868
  %7 = icmp eq i32 %6, 0, !dbg !869
  %8 = zext i1 %7 to i32, !dbg !869
  %9 = trunc i32 %8 to i8, !dbg !870
  store i8 %9, i8* @thisProcessRunsAsRoot, align 1, !dbg !871
  %10 = load i8, i8* @thisProcessRunsAsRoot, align 1, !dbg !872
  %11 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %2, align 8, !dbg !873
  %12 = bitcast %struct.ToolsAppCtx* %11 to i8*, !dbg !873
  %13 = call i64 @VixTools_Initialize(i8 signext %10, i8** null, void (i8*, i64, i32, i64, i8*)* @ToolsDaemonTcloReportProgramCompleted, i8* %12), !dbg !874
  %14 = load i8, i8* @thisProcessRunsAsRoot, align 1, !dbg !875
  %15 = icmp ne i8 %14, 0, !dbg !875
  br i1 %15, label %16, label %17, !dbg !877

; <label>:16:                                     ; preds = %1
  call void @Impersonate_Init(), !dbg !878
  br label %17, !dbg !880

; <label>:17:                                     ; preds = %16, %1
  br label %18, !dbg !881, !llvm.loop !882

; <label>:18:                                     ; preds = %17
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8** getelementptr inbounds (%struct.HgfsServerMgrData, %struct.HgfsServerMgrData* @gFoundryHgfsBkdrConn, i32 0, i32 0), align 8, !dbg !883
  store i8* null, i8** getelementptr inbounds (%struct.HgfsServerMgrData, %struct.HgfsServerMgrData* @gFoundryHgfsBkdrConn, i32 0, i32 1), align 8, !dbg !886
  store i8* null, i8** getelementptr inbounds (%struct.HgfsServerMgrData, %struct.HgfsServerMgrData* @gFoundryHgfsBkdrConn, i32 0, i32 2), align 8, !dbg !887
  store i8* null, i8** getelementptr inbounds (%struct.HgfsServerMgrData, %struct.HgfsServerMgrData* @gFoundryHgfsBkdrConn, i32 0, i32 3), align 8, !dbg !883
  br label %19, !dbg !888

; <label>:19:                                     ; preds = %18
  %20 = call signext i8 @HgfsServerManager_Register(%struct.HgfsServerMgrData* @gFoundryHgfsBkdrConn), !dbg !889
  ret void, !dbg !890
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare i64 @VixTools_Initialize(i8 signext, i8**, void (i8*, i64, i32, i64, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define void @ToolsDaemonTcloReportProgramCompleted(i8*, i64, i32, i64, i8*) #0 !dbg !891 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.ToolsAppCtx*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !894, metadata !468), !dbg !895
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !896, metadata !468), !dbg !897
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !898, metadata !468), !dbg !899
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !900, metadata !468), !dbg !901
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !902, metadata !468), !dbg !903
  call void @llvm.dbg.declare(metadata i8* %11, metadata !904, metadata !468), !dbg !905
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %12, metadata !906, metadata !468), !dbg !907
  %14 = load i8*, i8** %10, align 8, !dbg !908
  %15 = bitcast i8* %14 to %struct.ToolsAppCtx*, !dbg !908
  store %struct.ToolsAppCtx* %15, %struct.ToolsAppCtx** %12, align 8, !dbg !907
  call void @llvm.dbg.declare(metadata i8** %13, metadata !909, metadata !468), !dbg !911
  %16 = load i8*, i8** %6, align 8, !dbg !912
  %17 = load i64, i64* %7, align 8, !dbg !913
  %18 = call i32* @__errno_location() #1, !dbg !914
  %19 = load i32, i32* %18, align 4, !dbg !915
  %20 = load i32, i32* %8, align 4, !dbg !916
  %21 = load i64, i64* %9, align 8, !dbg !917
  %22 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0), i8* %16, i64 %17, i32 %19, i32 %20, i64 %21), !dbg !918
  store i8* %22, i8** %13, align 8, !dbg !911
  %23 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %12, align 8, !dbg !919
  %24 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %23, i32 0, i32 5, !dbg !920
  %25 = load %struct._RpcChannel*, %struct._RpcChannel** %24, align 8, !dbg !920
  %26 = load i8*, i8** %13, align 8, !dbg !921
  %27 = load i8*, i8** %13, align 8, !dbg !922
  %28 = call i64 @strlen(i8* %27) #8, !dbg !923
  %29 = add i64 %28, 1, !dbg !924
  %30 = call i32 @RpcChannel_Send(%struct._RpcChannel* %25, i8* %26, i64 %29, i8** null, i64* null), !dbg !925
  %31 = trunc i32 %30 to i8, !dbg !927
  store i8 %31, i8* %11, align 1, !dbg !928
  %32 = load i8*, i8** %13, align 8, !dbg !929
  call void @g_free(i8* %32), !dbg !930
  %33 = load i8, i8* %11, align 1, !dbg !931
  %34 = icmp ne i8 %33, 0, !dbg !931
  br i1 %34, label %36, label %35, !dbg !933

; <label>:35:                                     ; preds = %5
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__FUNCTION__.ToolsDaemonTcloReportProgramCompleted, i32 0, i32 0)), !dbg !934
  br label %36, !dbg !936

; <label>:36:                                     ; preds = %35, %5
  ret void, !dbg !937
}

declare void @Impersonate_Init() #2

declare signext i8 @HgfsServerManager_Register(%struct.HgfsServerMgrData*) #2

; Function Attrs: nounwind uwtable
define void @FoundryToolsDaemon_Uninitialize(%struct.ToolsAppCtx*) #0 !dbg !938 {
  %2 = alloca %struct.ToolsAppCtx*, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %2, metadata !939, metadata !468), !dbg !940
  call void @HgfsServerManager_Unregister(%struct.HgfsServerMgrData* @gFoundryHgfsBkdrConn), !dbg !941
  call void @VixTools_Uninitialize(), !dbg !942
  ret void, !dbg !943
}

declare void @HgfsServerManager_Unregister(%struct.HgfsServerMgrData*) #2

declare void @VixTools_Uninitialize() #2

; Function Attrs: nounwind uwtable
define void @FoundryToolsDaemon_RestrictVixCommands(%struct.ToolsAppCtx*, i32) #0 !dbg !944 {
  %3 = alloca %struct.ToolsAppCtx*, align 8
  %4 = alloca i32, align 4
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %3, metadata !947, metadata !468), !dbg !948
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !949, metadata !468), !dbg !950
  %5 = load i32, i32* %4, align 4, !dbg !951
  call void @VixTools_RestrictCommands(i32 %5), !dbg !952
  ret void, !dbg !953
}

declare void @VixTools_RestrictCommands(i32) #2

; Function Attrs: nounwind uwtable
define i32 @ToolsDaemonTcloSyncDriverFreeze(%struct.RpcInData*) #0 !dbg !434 {
  %2 = alloca %struct.RpcInData*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ToolsAppCtx*, align 8
  %9 = alloca %struct._GKeyFile*, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct._GSource*, align 8
  %12 = alloca %struct._GSource*, align 8
  store %struct.RpcInData* %0, %struct.RpcInData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %2, metadata !954, metadata !468), !dbg !955
  call void @llvm.dbg.declare(metadata i64* %3, metadata !956, metadata !468), !dbg !957
  store i64 0, i64* %3, align 8, !dbg !957
  call void @llvm.dbg.declare(metadata i8** %4, metadata !958, metadata !468), !dbg !959
  store i8* null, i8** %4, align 8, !dbg !959
  call void @llvm.dbg.declare(metadata i8** %5, metadata !960, metadata !468), !dbg !961
  store i8* null, i8** %5, align 8, !dbg !961
  call void @llvm.dbg.declare(metadata i32* %6, metadata !962, metadata !468), !dbg !963
  call void @llvm.dbg.declare(metadata i32* %7, metadata !964, metadata !468), !dbg !965
  store i32 0, i32* %7, align 4, !dbg !965
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %8, metadata !966, metadata !468), !dbg !967
  %13 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !968
  %14 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %13, i32 0, i32 6, !dbg !969
  %15 = load i8*, i8** %14, align 8, !dbg !969
  %16 = bitcast i8* %15 to %struct.ToolsAppCtx*, !dbg !968
  store %struct.ToolsAppCtx* %16, %struct.ToolsAppCtx** %8, align 8, !dbg !967
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %9, metadata !970, metadata !468), !dbg !971
  %17 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !972
  %18 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %17, i32 0, i32 6, !dbg !973
  %19 = load %struct._GKeyFile*, %struct._GKeyFile** %18, align 8, !dbg !973
  store %struct._GKeyFile* %19, %struct._GKeyFile** %9, align 8, !dbg !971
  call void @llvm.dbg.declare(metadata i8* %10, metadata !974, metadata !468), !dbg !975
  call void @llvm.dbg.declare(metadata %struct._GSource** %11, metadata !976, metadata !468), !dbg !1051
  %20 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1052
  %21 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %20, i32 0, i32 1, !dbg !1053
  %22 = load i8*, i8** %21, align 8, !dbg !1053
  %23 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1054
  %24 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %23, i32 0, i32 1, !dbg !1055
  %25 = call i8* @ToolsDaemonTcloGetQuotedString(i8* %22, i8** %24), !dbg !1056
  store i8* %25, i8** %4, align 8, !dbg !1057
  %26 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1058
  %27 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %26, i32 0, i32 1, !dbg !1059
  %28 = load i8*, i8** %27, align 8, !dbg !1059
  %29 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1060
  %30 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %29, i32 0, i32 1, !dbg !1061
  %31 = call i8* @ToolsDaemonTcloGetQuotedString(i8* %28, i8** %30), !dbg !1062
  store i8* %31, i8** %5, align 8, !dbg !1063
  %32 = load i8*, i8** %4, align 8, !dbg !1064
  %33 = icmp eq i8* null, %32, !dbg !1066
  br i1 %33, label %37, label %34, !dbg !1067

; <label>:34:                                     ; preds = %1
  %35 = load i8*, i8** %5, align 8, !dbg !1068
  %36 = icmp eq i8* null, %35, !dbg !1070
  br i1 %36, label %37, label %38, !dbg !1071

; <label>:37:                                     ; preds = %34, %1
  store i64 3, i64* %3, align 8, !dbg !1072
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__FUNCTION__.ToolsDaemonTcloSyncDriverFreeze, i32 0, i32 0)), !dbg !1074
  br label %95, !dbg !1075

; <label>:38:                                     ; preds = %34
  %39 = load i8*, i8** %5, align 8, !dbg !1076
  %40 = call signext i8 @StrUtil_StrToInt(i32* %6, i8* %39), !dbg !1078
  %41 = icmp ne i8 %40, 0, !dbg !1078
  br i1 %41, label %42, label %45, !dbg !1079

; <label>:42:                                     ; preds = %38
  %43 = load i32, i32* %6, align 4, !dbg !1080
  %44 = icmp slt i32 %43, 0, !dbg !1082
  br i1 %44, label %45, label %47, !dbg !1083

; <label>:45:                                     ; preds = %42, %38
  %46 = load i8*, i8** %5, align 8, !dbg !1084
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__FUNCTION__.ToolsDaemonTcloSyncDriverFreeze, i32 0, i32 0), i8* %46), !dbg !1086
  store i64 3, i64* %3, align 8, !dbg !1087
  br label %95, !dbg !1088

; <label>:47:                                     ; preds = %42
  %48 = load i8*, i8** %4, align 8, !dbg !1089
  %49 = load i32, i32* %6, align 4, !dbg !1090
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__FUNCTION__.ToolsDaemonTcloSyncDriverFreeze, i32 0, i32 0), i8* %48, i32 %49), !dbg !1091
  %50 = load %struct.SyncHandle*, %struct.SyncHandle** @gSyncDriverHandle, align 8, !dbg !1092
  %51 = icmp ne %struct.SyncHandle* %50, null, !dbg !1094
  br i1 %51, label %52, label %53, !dbg !1095

; <label>:52:                                     ; preds = %47
  store i64 5, i64* %3, align 8, !dbg !1096
  br label %95, !dbg !1098

; <label>:53:                                     ; preds = %47
  %54 = load %struct._GKeyFile*, %struct._GKeyFile** %9, align 8, !dbg !1099
  %55 = call i32 @VixTools_ConfigGetBoolean(%struct._GKeyFile* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i32 0), !dbg !1100
  %56 = trunc i32 %55 to i8, !dbg !1100
  store i8 %56, i8* %10, align 1, !dbg !1101
  %57 = load i8*, i8** %4, align 8, !dbg !1102
  %58 = load i8, i8* %10, align 1, !dbg !1104
  %59 = call signext i8 @SyncDriver_Freeze(i8* %57, i8 signext %58, %struct.SyncHandle** @gSyncDriverHandle, i8* null), !dbg !1105
  %60 = icmp ne i8 %59, 0, !dbg !1105
  br i1 %60, label %61, label %65, !dbg !1106

; <label>:61:                                     ; preds = %53
  %62 = load %struct.SyncHandle*, %struct.SyncHandle** @gSyncDriverHandle, align 8, !dbg !1107
  %63 = call i32 @SyncDriver_QueryStatus(%struct.SyncHandle* %62, i32 -1), !dbg !1108
  %64 = icmp ne i32 %63, 0, !dbg !1109
  br i1 %64, label %65, label %75, !dbg !1110

; <label>:65:                                     ; preds = %61, %53
  %66 = load i8*, i8** %4, align 8, !dbg !1112
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__FUNCTION__.ToolsDaemonTcloSyncDriverFreeze, i32 0, i32 0), i8* %66), !dbg !1114
  store i64 1, i64* %3, align 8, !dbg !1115
  %67 = call i32* @__errno_location() #1, !dbg !1116
  %68 = load i32, i32* %67, align 4, !dbg !1117
  store i32 %68, i32* %7, align 4, !dbg !1118
  %69 = load %struct.SyncHandle*, %struct.SyncHandle** @gSyncDriverHandle, align 8, !dbg !1119
  %70 = icmp ne %struct.SyncHandle* %69, null, !dbg !1121
  br i1 %70, label %71, label %74, !dbg !1122

; <label>:71:                                     ; preds = %65
  %72 = load %struct.SyncHandle*, %struct.SyncHandle** @gSyncDriverHandle, align 8, !dbg !1123
  %73 = call signext i8 @SyncDriver_Thaw(%struct.SyncHandle* %72), !dbg !1125
  call void @SyncDriver_CloseHandle(%struct.SyncHandle** @gSyncDriverHandle), !dbg !1126
  br label %74, !dbg !1127

; <label>:74:                                     ; preds = %71, %65
  br label %95, !dbg !1128

; <label>:75:                                     ; preds = %61
  %76 = load i32, i32* %6, align 4, !dbg !1129
  %77 = icmp ne i32 0, %76, !dbg !1131
  br i1 %77, label %78, label %94, !dbg !1132

; <label>:78:                                     ; preds = %75
  %79 = load i32, i32* %6, align 4, !dbg !1133
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__FUNCTION__.ToolsDaemonTcloSyncDriverFreeze, i32 0, i32 0), i32 %79), !dbg !1135
  %80 = load i32, i32* %6, align 4, !dbg !1136
  %81 = mul nsw i32 %80, 10, !dbg !1137
  %82 = call %struct._GSource* @g_timeout_source_new(i32 %81), !dbg !1138
  store %struct._GSource* %82, %struct._GSource** %11, align 8, !dbg !1139
  br label %83, !dbg !1140, !llvm.loop !1141

; <label>:83:                                     ; preds = %78
  call void @llvm.dbg.declare(metadata %struct._GSource** %12, metadata !1142, metadata !468), !dbg !1144
  %84 = load %struct._GSource*, %struct._GSource** %11, align 8, !dbg !1145
  store %struct._GSource* %84, %struct._GSource** %12, align 8, !dbg !1147
  %85 = load %struct._GSource*, %struct._GSource** %12, align 8, !dbg !1148
  call void @g_source_set_callback(%struct._GSource* %85, i32 (i8*)* bitcast (i8 (i8*)* @ToolsDaemonSyncDriverThawCallback to i32 (i8*)*), i8* null, void (i8*)* null), !dbg !1149
  %86 = load %struct._GSource*, %struct._GSource** %12, align 8, !dbg !1150
  %87 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !1151
  %88 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %87, i32 0, i32 4, !dbg !1152
  %89 = load %struct._GMainLoop*, %struct._GMainLoop** %88, align 8, !dbg !1152
  %90 = call %struct._GMainContext* @g_main_loop_get_context(%struct._GMainLoop* %89), !dbg !1153
  %91 = call i32 @g_source_attach(%struct._GSource* %86, %struct._GMainContext* %90), !dbg !1155
  br label %92, !dbg !1157

; <label>:92:                                     ; preds = %83
  %93 = load %struct._GSource*, %struct._GSource** %11, align 8, !dbg !1158
  call void @g_source_unref(%struct._GSource* %93), !dbg !1159
  br label %94, !dbg !1160

; <label>:94:                                     ; preds = %92, %75
  br label %95, !dbg !1161

; <label>:95:                                     ; preds = %94, %74, %52, %45, %37
  %96 = load i8*, i8** %4, align 8, !dbg !1163
  call void @free(i8* %96) #7, !dbg !1164
  %97 = load i8*, i8** %5, align 8, !dbg !1165
  call void @free(i8* %97) #7, !dbg !1166
  %98 = load i64, i64* %3, align 8, !dbg !1167
  %99 = load i32, i32* %7, align 4, !dbg !1168
  %100 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @ToolsDaemonTcloSyncDriverFreeze.resultBuffer, i32 0, i32 0), i64 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i64 %98, i32 %99), !dbg !1169
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__FUNCTION__.ToolsDaemonTcloSyncDriverFreeze, i32 0, i32 0), i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @ToolsDaemonTcloSyncDriverFreeze.resultBuffer, i32 0, i32 0)), !dbg !1170
  %101 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1171
  %102 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %101, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @ToolsDaemonTcloSyncDriverFreeze.resultBuffer, i32 0, i32 0), i32 1), !dbg !1172
  ret i32 %102, !dbg !1173
}

declare void @g_log(i8*, i32, i8*, ...) #2

declare signext i8 @StrUtil_StrToInt(i32*, i8*) #2

declare i32 @VixTools_ConfigGetBoolean(%struct._GKeyFile*, i8*, i8*, i32) #2

declare signext i8 @SyncDriver_Freeze(i8*, i8 signext, %struct.SyncHandle**, i8*) #2

declare i32 @SyncDriver_QueryStatus(%struct.SyncHandle*, i32) #2

declare signext i8 @SyncDriver_Thaw(%struct.SyncHandle*) #2

declare void @SyncDriver_CloseHandle(%struct.SyncHandle**) #2

declare %struct._GSource* @g_timeout_source_new(i32) #2

declare void @g_source_set_callback(%struct._GSource*, i32 (i8*)*, i8*, void (i8*)*) #2

; Function Attrs: nounwind uwtable
define internal signext i8 @ToolsDaemonSyncDriverThawCallback(i8*) #0 !dbg !1174 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1177, metadata !468), !dbg !1178
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__FUNCTION__.ToolsDaemonSyncDriverThawCallback, i32 0, i32 0)), !dbg !1179
  %3 = load %struct.SyncHandle*, %struct.SyncHandle** @gSyncDriverHandle, align 8, !dbg !1180
  %4 = icmp eq %struct.SyncHandle* %3, null, !dbg !1182
  br i1 %4, label %5, label %6, !dbg !1183

; <label>:5:                                      ; preds = %1
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__FUNCTION__.ToolsDaemonSyncDriverThawCallback, i32 0, i32 0)), !dbg !1184
  br label %12, !dbg !1186

; <label>:6:                                      ; preds = %1
  %7 = load %struct.SyncHandle*, %struct.SyncHandle** @gSyncDriverHandle, align 8, !dbg !1187
  %8 = call signext i8 @SyncDriver_Thaw(%struct.SyncHandle* %7), !dbg !1189
  %9 = icmp ne i8 %8, 0, !dbg !1189
  br i1 %9, label %11, label %10, !dbg !1190

; <label>:10:                                     ; preds = %6
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__FUNCTION__.ToolsDaemonSyncDriverThawCallback, i32 0, i32 0)), !dbg !1191
  br label %11, !dbg !1193

; <label>:11:                                     ; preds = %10, %6
  br label %12, !dbg !1194

; <label>:12:                                     ; preds = %11, %5
  call void @SyncDriver_CloseHandle(%struct.SyncHandle** @gSyncDriverHandle), !dbg !1196
  ret i8 1, !dbg !1197
}

declare i32 @g_source_attach(%struct._GSource*, %struct._GMainContext*) #2

declare %struct._GMainContext* @g_main_loop_get_context(%struct._GMainLoop*) #2

declare void @g_source_unref(%struct._GSource*) #2

; Function Attrs: nounwind uwtable
define i32 @ToolsDaemonTcloSyncDriverThaw(%struct.RpcInData*) #0 !dbg !436 {
  %2 = alloca %struct.RpcInData*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.RpcInData* %0, %struct.RpcInData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %2, metadata !1198, metadata !468), !dbg !1199
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1200, metadata !468), !dbg !1201
  store i64 0, i64* %3, align 8, !dbg !1201
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1202, metadata !468), !dbg !1203
  store i32 0, i32* %4, align 4, !dbg !1203
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__FUNCTION__.ToolsDaemonTcloSyncDriverThaw, i32 0, i32 0)), !dbg !1204
  %5 = load %struct.SyncHandle*, %struct.SyncHandle** @gSyncDriverHandle, align 8, !dbg !1205
  %6 = icmp eq %struct.SyncHandle* %5, null, !dbg !1207
  br i1 %6, label %7, label %10, !dbg !1208

; <label>:7:                                      ; preds = %1
  store i64 20000, i64* %3, align 8, !dbg !1209
  %8 = call i32* @__errno_location() #1, !dbg !1211
  %9 = load i32, i32* %8, align 4, !dbg !1212
  store i32 %9, i32* %4, align 4, !dbg !1213
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__FUNCTION__.ToolsDaemonTcloSyncDriverThaw, i32 0, i32 0)), !dbg !1214
  br label %18, !dbg !1215

; <label>:10:                                     ; preds = %1
  %11 = load %struct.SyncHandle*, %struct.SyncHandle** @gSyncDriverHandle, align 8, !dbg !1216
  %12 = call signext i8 @SyncDriver_Thaw(%struct.SyncHandle* %11), !dbg !1219
  %13 = icmp ne i8 %12, 0, !dbg !1219
  br i1 %13, label %17, label %14, !dbg !1220

; <label>:14:                                     ; preds = %10
  store i64 1, i64* %3, align 8, !dbg !1221
  %15 = call i32* @__errno_location() #1, !dbg !1223
  %16 = load i32, i32* %15, align 4, !dbg !1224
  store i32 %16, i32* %4, align 4, !dbg !1225
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__FUNCTION__.ToolsDaemonTcloSyncDriverThaw, i32 0, i32 0)), !dbg !1226
  br label %17, !dbg !1227

; <label>:17:                                     ; preds = %14, %10
  br label %18

; <label>:18:                                     ; preds = %17, %7
  call void @SyncDriver_CloseHandle(%struct.SyncHandle** @gSyncDriverHandle), !dbg !1228
  %19 = load i64, i64* %3, align 8, !dbg !1229
  %20 = load i32, i32* %4, align 4, !dbg !1230
  %21 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @ToolsDaemonTcloSyncDriverThaw.resultBuffer, i32 0, i32 0), i64 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i64 %19, i32 %20), !dbg !1231
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__FUNCTION__.ToolsDaemonTcloSyncDriverThaw, i32 0, i32 0), i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @ToolsDaemonTcloSyncDriverThaw.resultBuffer, i32 0, i32 0)), !dbg !1232
  %22 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1233
  %23 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %22, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @ToolsDaemonTcloSyncDriverThaw.resultBuffer, i32 0, i32 0), i32 1), !dbg !1234
  ret i32 %23, !dbg !1235
}

; Function Attrs: nounwind uwtable
define i32 @ToolsDaemonTcloMountHGFS(%struct.RpcInData*) #0 !dbg !438 {
  %2 = alloca %struct.RpcInData*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ProcMgr_ProcArgs, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.RpcInData* %0, %struct.RpcInData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %2, metadata !1236, metadata !468), !dbg !1237
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1238, metadata !468), !dbg !1239
  store i64 0, i64* %3, align 8, !dbg !1239
  call void @llvm.dbg.declare(metadata %struct.ProcMgr_ProcArgs* %4, metadata !1240, metadata !468), !dbg !1246
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1247, metadata !468), !dbg !1248
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1249, metadata !468), !dbg !1250
  store i8* null, i8** %6, align 8, !dbg !1250
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1251, metadata !468), !dbg !1252
  store i8 1, i8* %7, align 1, !dbg !1252
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1253, metadata !468), !dbg !1254
  store i8 0, i8* %8, align 1, !dbg !1254
  call void @llvm.dbg.declare(metadata i8* %9, metadata !1255, metadata !468), !dbg !1256
  store i8 0, i8* %9, align 1, !dbg !1256
  call void @llvm.dbg.declare(metadata i8* %10, metadata !1257, metadata !468), !dbg !1258
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1259, metadata !468), !dbg !1260
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1261, metadata !468), !dbg !1262
  %13 = getelementptr inbounds %struct.ProcMgr_ProcArgs, %struct.ProcMgr_ProcArgs* %4, i32 0, i32 0, !dbg !1263
  store i8** null, i8*** %13, align 8, !dbg !1264
  %14 = getelementptr inbounds %struct.ProcMgr_ProcArgs, %struct.ProcMgr_ProcArgs* %4, i32 0, i32 1, !dbg !1265
  store i8* null, i8** %14, align 8, !dbg !1266
  %15 = call signext i8 @ProcMgr_ExecSyncWithExitCode(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0), %struct.ProcMgr_ProcArgs* %4, i8* %10, i32* %11), !dbg !1267
  store i8 %15, i8* %5, align 1, !dbg !1268
  %16 = load i8, i8* %5, align 1, !dbg !1269
  %17 = icmp ne i8 %16, 0, !dbg !1269
  br i1 %17, label %35, label %18, !dbg !1271

; <label>:18:                                     ; preds = %1
  %19 = load i8, i8* %10, align 1, !dbg !1272
  %20 = sext i8 %19 to i32, !dbg !1272
  %21 = icmp ne i32 %20, 0, !dbg !1272
  br i1 %21, label %22, label %26, !dbg !1275

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %11, align 4, !dbg !1276
  %24 = icmp eq i32 %23, 2, !dbg !1278
  br i1 %24, label %25, label %26, !dbg !1279

; <label>:25:                                     ; preds = %22
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.ToolsDaemonTcloMountHGFS, i32 0, i32 0)), !dbg !1280
  store i64 20050, i64* %3, align 8, !dbg !1282
  br label %84, !dbg !1283

; <label>:26:                                     ; preds = %22, %18
  %27 = load i8, i8* %10, align 1, !dbg !1284
  %28 = sext i8 %27 to i32, !dbg !1284
  %29 = icmp ne i32 %28, 0, !dbg !1284
  br i1 %29, label %30, label %32, !dbg !1284

; <label>:30:                                     ; preds = %26
  %31 = load i32, i32* %11, align 4, !dbg !1285
  br label %33, !dbg !1287

; <label>:32:                                     ; preds = %26
  br label %33, !dbg !1288

; <label>:33:                                     ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ], !dbg !1290
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.ToolsDaemonTcloMountHGFS, i32 0, i32 0), i32 %34), !dbg !1292
  store i8 0, i8* %7, align 1, !dbg !1293
  br label %35, !dbg !1294

; <label>:35:                                     ; preds = %33, %1
  %36 = load i8, i8* %7, align 1, !dbg !1295
  %37 = call i64 @ToolsDaemonCheckMountedHGFS(i8 signext %36, i8* %8), !dbg !1296
  store i64 %37, i64* %3, align 8, !dbg !1297
  %38 = load i64, i64* %3, align 8, !dbg !1298
  %39 = icmp ne i64 %38, 0, !dbg !1300
  br i1 %39, label %40, label %41, !dbg !1301

; <label>:40:                                     ; preds = %35
  br label %84, !dbg !1302

; <label>:41:                                     ; preds = %35
  %42 = load i8, i8* %8, align 1, !dbg !1304
  %43 = icmp ne i8 %42, 0, !dbg !1304
  br i1 %43, label %44, label %45, !dbg !1306

; <label>:44:                                     ; preds = %41
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.ToolsDaemonTcloMountHGFS, i32 0, i32 0)), !dbg !1307
  br label %84, !dbg !1309

; <label>:45:                                     ; preds = %41
  %46 = call i32 @g_access(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 0), !dbg !1310
  store i32 %46, i32* %12, align 4, !dbg !1311
  %47 = load i32, i32* %12, align 4, !dbg !1312
  %48 = icmp ne i32 %47, 0, !dbg !1314
  br i1 %48, label %49, label %57, !dbg !1315

; <label>:49:                                     ; preds = %45
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.ToolsDaemonTcloMountHGFS, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0)), !dbg !1316
  %50 = call i32 @g_mkdir_with_parents(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 493), !dbg !1318
  store i32 %50, i32* %12, align 4, !dbg !1319
  %51 = load i32, i32* %12, align 4, !dbg !1320
  %52 = icmp ne i32 %51, 0, !dbg !1322
  br i1 %52, label %53, label %56, !dbg !1323

; <label>:53:                                     ; preds = %49
  store i64 20050, i64* %3, align 8, !dbg !1324
  %54 = call i32* @__errno_location() #1, !dbg !1326
  %55 = load i32, i32* %54, align 4, !dbg !1327
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.ToolsDaemonTcloMountHGFS, i32 0, i32 0), i32 %55), !dbg !1328
  br label %84, !dbg !1330

; <label>:56:                                     ; preds = %49
  store i8 1, i8* %9, align 1, !dbg !1331
  br label %57, !dbg !1332

; <label>:57:                                     ; preds = %56, %45
  %58 = load i8, i8* %7, align 1, !dbg !1333
  %59 = icmp ne i8 %58, 0, !dbg !1333
  br i1 %59, label %60, label %61, !dbg !1335

; <label>:60:                                     ; preds = %57
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.25, i32 0, i32 0), i8** %6, align 8, !dbg !1336
  br label %76, !dbg !1338

; <label>:61:                                     ; preds = %57
  %62 = call i32 @g_access(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i32 0), !dbg !1339
  store i32 %62, i32* %12, align 4, !dbg !1341
  %63 = load i32, i32* %12, align 4, !dbg !1342
  %64 = icmp eq i32 %63, 0, !dbg !1344
  br i1 %64, label %65, label %66, !dbg !1345

; <label>:65:                                     ; preds = %61
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i32 0, i32 0), i8** %6, align 8, !dbg !1346
  br label %75, !dbg !1348

; <label>:66:                                     ; preds = %61
  %67 = call i32 @g_access(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i32 0), !dbg !1349
  store i32 %67, i32* %12, align 4, !dbg !1351
  %68 = load i32, i32* %12, align 4, !dbg !1352
  %69 = icmp eq i32 %68, 0, !dbg !1354
  br i1 %69, label %70, label %71, !dbg !1355

; <label>:70:                                     ; preds = %66
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i32 0, i32 0), i8** %6, align 8, !dbg !1356
  br label %74, !dbg !1358

; <label>:71:                                     ; preds = %66
  %72 = call i32* @__errno_location() #1, !dbg !1359
  %73 = load i32, i32* %72, align 4, !dbg !1361
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.ToolsDaemonTcloMountHGFS, i32 0, i32 0), i32 %73), !dbg !1362
  store i64 20050, i64* %3, align 8, !dbg !1364
  br label %84, !dbg !1365

; <label>:74:                                     ; preds = %70
  br label %75

; <label>:75:                                     ; preds = %74, %65
  br label %76

; <label>:76:                                     ; preds = %75, %60
  %77 = load i8*, i8** %6, align 8, !dbg !1366
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.ToolsDaemonTcloMountHGFS, i32 0, i32 0), i8* %77), !dbg !1367
  %78 = load i8*, i8** %6, align 8, !dbg !1368
  %79 = call signext i8 @ProcMgr_ExecSync(i8* %78, %struct.ProcMgr_ProcArgs* %4), !dbg !1369
  store i8 %79, i8* %5, align 1, !dbg !1370
  %80 = load i8, i8* %5, align 1, !dbg !1371
  %81 = icmp ne i8 %80, 0, !dbg !1371
  br i1 %81, label %83, label %82, !dbg !1373

; <label>:82:                                     ; preds = %76
  store i64 20050, i64* %3, align 8, !dbg !1374
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.ToolsDaemonTcloMountHGFS, i32 0, i32 0)), !dbg !1376
  br label %83, !dbg !1377

; <label>:83:                                     ; preds = %82, %76
  br label %84, !dbg !1378

; <label>:84:                                     ; preds = %83, %71, %53, %44, %40, %25
  %85 = load i64, i64* %3, align 8, !dbg !1380
  %86 = icmp ne i64 %85, 0, !dbg !1382
  br i1 %86, label %87, label %99, !dbg !1383

; <label>:87:                                     ; preds = %84
  %88 = load i8, i8* %9, align 1, !dbg !1384
  %89 = icmp ne i8 %88, 0, !dbg !1384
  br i1 %89, label %90, label %98, !dbg !1387

; <label>:90:                                     ; preds = %87
  %91 = call i32 @g_rmdir(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0)), !dbg !1388
  store i32 %91, i32* %12, align 4, !dbg !1390
  %92 = load i32, i32* %12, align 4, !dbg !1391
  %93 = icmp ne i32 %92, 0, !dbg !1393
  br i1 %93, label %94, label %97, !dbg !1394

; <label>:94:                                     ; preds = %90
  %95 = call i32* @__errno_location() #1, !dbg !1395
  %96 = load i32, i32* %95, align 4, !dbg !1397
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.ToolsDaemonTcloMountHGFS, i32 0, i32 0), i32 %96), !dbg !1398
  br label %97, !dbg !1400

; <label>:97:                                     ; preds = %94, %90
  br label %98, !dbg !1401

; <label>:98:                                     ; preds = %97, %87
  br label %99, !dbg !1402

; <label>:99:                                     ; preds = %98, %84
  %100 = load i64, i64* %3, align 8, !dbg !1403
  %101 = call i32* @__errno_location() #1, !dbg !1404
  %102 = load i32, i32* %101, align 4, !dbg !1405
  %103 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @ToolsDaemonTcloMountHGFS.resultBuffer, i32 0, i32 0), i64 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i64 %100, i32 %102), !dbg !1406
  %104 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1407
  %105 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %104, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @ToolsDaemonTcloMountHGFS.resultBuffer, i32 0, i32 0), i32 1), !dbg !1408
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.ToolsDaemonTcloMountHGFS, i32 0, i32 0), i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @ToolsDaemonTcloMountHGFS.resultBuffer, i32 0, i32 0)), !dbg !1409
  ret i32 1, !dbg !1410
}

declare signext i8 @ProcMgr_ExecSyncWithExitCode(i8*, %struct.ProcMgr_ProcArgs*, i8*, i32*) #2

; Function Attrs: nounwind uwtable
define internal i64 @ToolsDaemonCheckMountedHGFS(i8 signext, i8*) #0 !dbg !1411 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct.mntent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1415, metadata !468), !dbg !1416
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1417, metadata !468), !dbg !1418
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !1419, metadata !468), !dbg !1473
  call void @llvm.dbg.declare(metadata %struct.mntent** %6, metadata !1474, metadata !468), !dbg !1485
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1486, metadata !468), !dbg !1487
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1488, metadata !468), !dbg !1489
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1490, metadata !468), !dbg !1491
  store i64 0, i64* %9, align 8, !dbg !1491
  %10 = call %struct._IO_FILE* @Posix_Setmntent(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0)), !dbg !1492
  store %struct._IO_FILE* %10, %struct._IO_FILE** %5, align 8, !dbg !1494
  %11 = icmp eq %struct._IO_FILE* %10, null, !dbg !1495
  br i1 %11, label %12, label %15, !dbg !1496

; <label>:12:                                     ; preds = %2
  store i64 1, i64* %9, align 8, !dbg !1497
  %13 = call i32* @__errno_location() #1, !dbg !1499
  %14 = load i32, i32* %13, align 4, !dbg !1500
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.ToolsDaemonCheckMountedHGFS, i32 0, i32 0), i32 %14), !dbg !1501
  br label %63, !dbg !1503

; <label>:15:                                     ; preds = %2
  %16 = load i8*, i8** %4, align 8, !dbg !1504
  store i8 0, i8* %16, align 1, !dbg !1505
  %17 = load i8, i8* %3, align 1, !dbg !1506
  %18 = icmp ne i8 %17, 0, !dbg !1506
  br i1 %18, label %19, label %20, !dbg !1508

; <label>:19:                                     ; preds = %15
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), i8** %7, align 8, !dbg !1509
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0), i8** %8, align 8, !dbg !1511
  br label %21, !dbg !1512

; <label>:20:                                     ; preds = %15
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i8** %7, align 8, !dbg !1513
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i8** %8, align 8, !dbg !1515
  br label %21

; <label>:21:                                     ; preds = %20, %19
  br label %22, !dbg !1516

; <label>:22:                                     ; preds = %57, %21
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1517
  %24 = call %struct.mntent* @Posix_Getmntent(%struct._IO_FILE* %23), !dbg !1519
  store %struct.mntent* %24, %struct.mntent** %6, align 8, !dbg !1520
  %25 = icmp ne %struct.mntent* %24, null, !dbg !1521
  br i1 %25, label %26, label %58, !dbg !1522

; <label>:26:                                     ; preds = %22
  %27 = load %struct.mntent*, %struct.mntent** %6, align 8, !dbg !1523
  %28 = getelementptr inbounds %struct.mntent, %struct.mntent* %27, i32 0, i32 0, !dbg !1526
  %29 = load i8*, i8** %28, align 8, !dbg !1526
  %30 = load i8*, i8** %7, align 8, !dbg !1527
  %31 = call i32 @strcmp(i8* %29, i8* %30) #8, !dbg !1528
  %32 = icmp eq i32 %31, 0, !dbg !1529
  br i1 %32, label %33, label %57, !dbg !1530

; <label>:33:                                     ; preds = %26
  %34 = load %struct.mntent*, %struct.mntent** %6, align 8, !dbg !1531
  %35 = getelementptr inbounds %struct.mntent, %struct.mntent* %34, i32 0, i32 2, !dbg !1532
  %36 = load i8*, i8** %35, align 8, !dbg !1532
  %37 = load i8*, i8** %8, align 8, !dbg !1533
  %38 = call i32 @strcmp(i8* %36, i8* %37) #8, !dbg !1534
  %39 = icmp eq i32 %38, 0, !dbg !1535
  br i1 %39, label %40, label %57, !dbg !1536

; <label>:40:                                     ; preds = %33
  %41 = load %struct.mntent*, %struct.mntent** %6, align 8, !dbg !1537
  %42 = getelementptr inbounds %struct.mntent, %struct.mntent* %41, i32 0, i32 1, !dbg !1538
  %43 = load i8*, i8** %42, align 8, !dbg !1538
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0)) #8, !dbg !1539
  %45 = icmp eq i32 %44, 0, !dbg !1540
  br i1 %45, label %46, label %57, !dbg !1541

; <label>:46:                                     ; preds = %40
  %47 = load i8*, i8** %4, align 8, !dbg !1543
  store i8 1, i8* %47, align 1, !dbg !1545
  %48 = load %struct.mntent*, %struct.mntent** %6, align 8, !dbg !1546
  %49 = getelementptr inbounds %struct.mntent, %struct.mntent* %48, i32 0, i32 0, !dbg !1547
  %50 = load i8*, i8** %49, align 8, !dbg !1547
  %51 = load %struct.mntent*, %struct.mntent** %6, align 8, !dbg !1548
  %52 = getelementptr inbounds %struct.mntent, %struct.mntent* %51, i32 0, i32 2, !dbg !1549
  %53 = load i8*, i8** %52, align 8, !dbg !1549
  %54 = load %struct.mntent*, %struct.mntent** %6, align 8, !dbg !1550
  %55 = getelementptr inbounds %struct.mntent, %struct.mntent* %54, i32 0, i32 1, !dbg !1551
  %56 = load i8*, i8** %55, align 8, !dbg !1551
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.ToolsDaemonCheckMountedHGFS, i32 0, i32 0), i8* %50, i8* %53, i8* %56), !dbg !1552
  br label %58, !dbg !1553

; <label>:57:                                     ; preds = %40, %33, %26
  br label %22, !dbg !1554, !llvm.loop !1556

; <label>:58:                                     ; preds = %46, %22
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1557
  %60 = call i32 @endmntent(%struct._IO_FILE* %59) #7, !dbg !1558
  %61 = icmp eq i32 %60, 1, !dbg !1559
  %62 = zext i1 %61 to i32, !dbg !1559
  br label %63, !dbg !1560

; <label>:63:                                     ; preds = %58, %12
  %64 = load i64, i64* %9, align 8, !dbg !1561
  ret i64 %64, !dbg !1562
}

declare i32 @g_access(i8*, i32) #2

declare i32 @g_mkdir_with_parents(i8*, i32) #2

declare signext i8 @ProcMgr_ExecSync(i8*, %struct.ProcMgr_ProcArgs*) #2

declare i32 @g_rmdir(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @ToolsDaemonHgfsImpersonated(%struct.RpcInData*) #0 !dbg !440 {
  %2 = alloca %struct.RpcInData*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.RpcInData* %0, %struct.RpcInData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %2, metadata !1563, metadata !468), !dbg !1564
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1565, metadata !468), !dbg !1566
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1567, metadata !468), !dbg !1568
  store i64 0, i64* %4, align 8, !dbg !1568
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1569, metadata !468), !dbg !1570
  store i64 0, i64* %5, align 8, !dbg !1570
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1571, metadata !468), !dbg !1572
  %13 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1573
  %14 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %13, i32 0, i32 1, !dbg !1574
  %15 = load i8*, i8** %14, align 8, !dbg !1574
  store i8* %15, i8** %6, align 8, !dbg !1572
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1575, metadata !468), !dbg !1576
  store i8 0, i8* %7, align 1, !dbg !1576
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1577, metadata !468), !dbg !1578
  store i8* null, i8** %8, align 8, !dbg !1578
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1579, metadata !468), !dbg !1580
  store i8* null, i8** %9, align 8, !dbg !1580
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1581, metadata !468), !dbg !1582
  store i8* null, i8** %10, align 8, !dbg !1582
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1583, metadata !468), !dbg !1584
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1585, metadata !468), !dbg !1586
  store i8* getelementptr inbounds ([63512 x i8], [63512 x i8]* @ToolsDaemonHgfsImpersonated.resultPacket, i32 0, i64 24), i8** %12, align 8, !dbg !1586
  store i64 0, i64* %3, align 8, !dbg !1587
  br label %16, !dbg !1588, !llvm.loop !1589

; <label>:16:                                     ; preds = %1
  br label %17, !dbg !1590

; <label>:17:                                     ; preds = %16
  %18 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1593
  %19 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %18, i32 0, i32 1, !dbg !1594
  %20 = load i8*, i8** %19, align 8, !dbg !1594
  %21 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1595
  %22 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %21, i32 0, i32 1, !dbg !1596
  %23 = call i8* @ToolsDaemonTcloGetQuotedString(i8* %20, i8** %22), !dbg !1597
  store i8* %23, i8** %8, align 8, !dbg !1598
  %24 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1599
  %25 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %24, i32 0, i32 1, !dbg !1600
  %26 = load i8*, i8** %25, align 8, !dbg !1600
  %27 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1601
  %28 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %27, i32 0, i32 1, !dbg !1602
  %29 = call i8* @ToolsDaemonTcloGetQuotedString(i8* %26, i8** %28), !dbg !1603
  store i8* %29, i8** %9, align 8, !dbg !1604
  %30 = load i8*, i8** %8, align 8, !dbg !1605
  %31 = icmp eq i8* null, %30, !dbg !1607
  br i1 %31, label %35, label %32, !dbg !1608

; <label>:32:                                     ; preds = %17
  %33 = load i8*, i8** %9, align 8, !dbg !1609
  %34 = icmp eq i8* null, %33, !dbg !1611
  br i1 %34, label %35, label %36, !dbg !1612

; <label>:35:                                     ; preds = %32, %17
  store i64 3, i64* %3, align 8, !dbg !1613
  br label %97, !dbg !1615

; <label>:36:                                     ; preds = %32
  %37 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1616
  %38 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %37, i32 0, i32 1, !dbg !1618
  %39 = load i8*, i8** %38, align 8, !dbg !1618
  %40 = load i8*, i8** %6, align 8, !dbg !1619
  %41 = ptrtoint i8* %39 to i64, !dbg !1620
  %42 = ptrtoint i8* %40 to i64, !dbg !1620
  %43 = sub i64 %41, %42, !dbg !1620
  %44 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1621
  %45 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %44, i32 0, i32 2, !dbg !1622
  %46 = load i64, i64* %45, align 8, !dbg !1622
  %47 = icmp uge i64 %43, %46, !dbg !1623
  br i1 %47, label %55, label %48, !dbg !1624

; <label>:48:                                     ; preds = %36
  %49 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1625
  %50 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %49, i32 0, i32 1, !dbg !1627
  %51 = load i8*, i8** %50, align 8, !dbg !1627
  %52 = load i8, i8* %51, align 1, !dbg !1628
  %53 = sext i8 %52 to i32, !dbg !1628
  %54 = icmp ne i32 35, %53, !dbg !1629
  br i1 %54, label %55, label %56, !dbg !1630

; <label>:55:                                     ; preds = %48, %36
  store i64 1, i64* %3, align 8, !dbg !1631
  br label %97, !dbg !1633

; <label>:56:                                     ; preds = %48
  %57 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1634
  %58 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %57, i32 0, i32 1, !dbg !1635
  %59 = load i8*, i8** %58, align 8, !dbg !1636
  %60 = getelementptr inbounds i8, i8* %59, i32 1, !dbg !1636
  store i8* %60, i8** %58, align 8, !dbg !1636
  %61 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1637
  %62 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %61, i32 0, i32 2, !dbg !1638
  %63 = load i64, i64* %62, align 8, !dbg !1638
  %64 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1639
  %65 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %64, i32 0, i32 1, !dbg !1640
  %66 = load i8*, i8** %65, align 8, !dbg !1640
  %67 = load i8*, i8** %6, align 8, !dbg !1641
  %68 = ptrtoint i8* %66 to i64, !dbg !1642
  %69 = ptrtoint i8* %67 to i64, !dbg !1642
  %70 = sub i64 %68, %69, !dbg !1642
  %71 = sub i64 %63, %70, !dbg !1643
  store i64 %71, i64* %4, align 8, !dbg !1644
  %72 = load i64, i64* %4, align 8, !dbg !1645
  %73 = icmp ule i64 %72, 0, !dbg !1647
  br i1 %73, label %74, label %75, !dbg !1648

; <label>:74:                                     ; preds = %56
  store i64 1, i64* %3, align 8, !dbg !1649
  br label %97, !dbg !1651

; <label>:75:                                     ; preds = %56
  %76 = load i8, i8* @thisProcessRunsAsRoot, align 1, !dbg !1652
  %77 = icmp ne i8 %76, 0, !dbg !1652
  br i1 %77, label %78, label %86, !dbg !1654

; <label>:78:                                     ; preds = %75
  %79 = load i8*, i8** %8, align 8, !dbg !1655
  %80 = load i8*, i8** %9, align 8, !dbg !1657
  %81 = call signext i8 @VixToolsImpersonateUserImpl(i8* %79, i32 0, i8* %80, i8** %10), !dbg !1658
  store i8 %81, i8* %7, align 1, !dbg !1659
  %82 = load i8, i8* %7, align 1, !dbg !1660
  %83 = icmp ne i8 %82, 0, !dbg !1660
  br i1 %83, label %85, label %84, !dbg !1662

; <label>:84:                                     ; preds = %78
  store i64 3015, i64* %3, align 8, !dbg !1663
  br label %97, !dbg !1665

; <label>:85:                                     ; preds = %78
  br label %86, !dbg !1666

; <label>:86:                                     ; preds = %85, %75
  %87 = load i8*, i8** %12, align 8, !dbg !1667
  %88 = ptrtoint i8* %87 to i64, !dbg !1668
  %89 = sub i64 %88, ptrtoint ([63512 x i8]* @ToolsDaemonHgfsImpersonated.resultPacket to i64), !dbg !1668
  %90 = sub i64 63512, %89, !dbg !1669
  store i64 %90, i64* %5, align 8, !dbg !1670
  %91 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1671
  %92 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %91, i32 0, i32 1, !dbg !1672
  %93 = load i8*, i8** %92, align 8, !dbg !1672
  %94 = load i64, i64* %4, align 8, !dbg !1673
  %95 = load i8*, i8** %12, align 8, !dbg !1674
  %96 = call signext i8 @HgfsServerManager_ProcessPacket(%struct.HgfsServerMgrData* @gFoundryHgfsBkdrConn, i8* %93, i64 %94, i8* %95, i64* %5), !dbg !1675
  br label %97, !dbg !1675

; <label>:97:                                     ; preds = %86, %84, %74, %55, %35
  %98 = load i8, i8* %7, align 1, !dbg !1676
  %99 = icmp ne i8 %98, 0, !dbg !1676
  br i1 %99, label %100, label %102, !dbg !1678

; <label>:100:                                    ; preds = %97
  %101 = load i8*, i8** %10, align 8, !dbg !1679
  call void @VixToolsUnimpersonateUser(i8* %101), !dbg !1681
  br label %102, !dbg !1682

; <label>:102:                                    ; preds = %100, %97
  %103 = load i8*, i8** %10, align 8, !dbg !1683
  call void @VixToolsLogoutUser(i8* %103), !dbg !1684
  %104 = load i8*, i8** %8, align 8, !dbg !1685
  call void @free(i8* %104) #7, !dbg !1686
  %105 = load i8*, i8** %9, align 8, !dbg !1687
  call void @free(i8* %105) #7, !dbg !1688
  %106 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1689
  %107 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %106, i32 0, i32 3, !dbg !1690
  store i8* getelementptr inbounds ([63512 x i8], [63512 x i8]* @ToolsDaemonHgfsImpersonated.resultPacket, i32 0, i32 0), i8** %107, align 8, !dbg !1691
  %108 = load i64, i64* %5, align 8, !dbg !1692
  %109 = add i64 24, %108, !dbg !1693
  %110 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1694
  %111 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %110, i32 0, i32 4, !dbg !1695
  store i64 %109, i64* %111, align 8, !dbg !1696
  %112 = load i64, i64* %3, align 8, !dbg !1697
  %113 = call i32 (i8*, i64, i8*, ...) @Str_Snprintf(i8* getelementptr inbounds ([63512 x i8], [63512 x i8]* @ToolsDaemonHgfsImpersonated.resultPacket, i32 0, i32 0), i64 24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i64 %112), !dbg !1698
  store i32 %113, i32* %11, align 4, !dbg !1699
  %114 = load i32, i32* %11, align 4, !dbg !1700
  %115 = icmp slt i32 %114, 0, !dbg !1702
  br i1 %115, label %116, label %122, !dbg !1703

; <label>:116:                                    ; preds = %102
  %117 = call i32 (i8*, i64, i8*, ...) @Str_Snprintf(i8* getelementptr inbounds ([63512 x i8], [63512 x i8]* @ToolsDaemonHgfsImpersonated.resultPacket, i32 0, i32 0), i64 20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0)), !dbg !1704
  store i32 %117, i32* %11, align 4, !dbg !1706
  %118 = load i32, i32* %11, align 4, !dbg !1707
  %119 = sext i32 %118 to i64, !dbg !1707
  %120 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1708
  %121 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %120, i32 0, i32 4, !dbg !1709
  store i64 %119, i64* %121, align 8, !dbg !1710
  br label %129, !dbg !1711

; <label>:122:                                    ; preds = %102
  %123 = load i32, i32* %11, align 4, !dbg !1712
  %124 = sext i32 %123 to i64, !dbg !1714
  %125 = getelementptr inbounds i8, i8* getelementptr inbounds ([63512 x i8], [63512 x i8]* @ToolsDaemonHgfsImpersonated.resultPacket, i32 0, i32 0), i64 %124, !dbg !1714
  %126 = load i32, i32* %11, align 4, !dbg !1715
  %127 = sub nsw i32 24, %126, !dbg !1716
  %128 = sext i32 %127 to i64, !dbg !1717
  call void @llvm.memset.p0i8.i64(i8* %125, i8 32, i64 %128, i32 1, i1 false), !dbg !1718
  store i8 35, i8* getelementptr inbounds ([63512 x i8], [63512 x i8]* @ToolsDaemonHgfsImpersonated.resultPacket, i64 0, i64 23), align 1, !dbg !1719
  br label %129

; <label>:129:                                    ; preds = %122, %116
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.ToolsDaemonHgfsImpersonated, i32 0, i32 0)), !dbg !1720
  ret i32 1, !dbg !1721
}

declare signext i8 @HgfsServerManager_ProcessPacket(%struct.HgfsServerMgrData*, i8*, i64, i8*, i64*) #2

declare i32 @Str_Snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare i32 @RpcChannel_Send(%struct._RpcChannel*, i8*, i64, i8**, i64*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @ToolsDaemonTcloReceiveVixCommand(%struct.RpcInData*) #0 !dbg !445 {
  %2 = alloca %struct.RpcInData*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.VixCommandRequestHeader*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ToolsAppCtx*, align 8
  %15 = alloca %struct._GMainLoop*, align 8
  %16 = alloca %struct._GKeyFile*, align 8
  store %struct.RpcInData* %0, %struct.RpcInData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %2, metadata !1722, metadata !468), !dbg !1723
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1724, metadata !468), !dbg !1725
  store i64 0, i64* %3, align 8, !dbg !1725
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1726, metadata !468), !dbg !1727
  store i32 0, i32* %4, align 4, !dbg !1727
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1728, metadata !468), !dbg !1729
  store i8* null, i8** %5, align 8, !dbg !1729
  call void @llvm.dbg.declare(metadata %struct.VixCommandRequestHeader** %6, metadata !1730, metadata !468), !dbg !1731
  store %struct.VixCommandRequestHeader* null, %struct.VixCommandRequestHeader** %6, align 8, !dbg !1731
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1732, metadata !468), !dbg !1733
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1734, metadata !468), !dbg !1735
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1736, metadata !468), !dbg !1737
  store i8* null, i8** %9, align 8, !dbg !1737
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1738, metadata !468), !dbg !1739
  store i64 0, i64* %10, align 8, !dbg !1739
  call void @llvm.dbg.declare(metadata i8* %11, metadata !1740, metadata !468), !dbg !1741
  store i8 0, i8* %11, align 1, !dbg !1741
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1742, metadata !468), !dbg !1743
  store i8* null, i8** %12, align 8, !dbg !1743
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1744, metadata !468), !dbg !1745
  store i32 92, i32* %13, align 4, !dbg !1745
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %14, metadata !1746, metadata !468), !dbg !1747
  %17 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1748
  %18 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %17, i32 0, i32 6, !dbg !1749
  %19 = load i8*, i8** %18, align 8, !dbg !1749
  %20 = bitcast i8* %19 to %struct.ToolsAppCtx*, !dbg !1748
  store %struct.ToolsAppCtx* %20, %struct.ToolsAppCtx** %14, align 8, !dbg !1747
  call void @llvm.dbg.declare(metadata %struct._GMainLoop** %15, metadata !1750, metadata !468), !dbg !1751
  %21 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %14, align 8, !dbg !1752
  %22 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %21, i32 0, i32 4, !dbg !1753
  %23 = load %struct._GMainLoop*, %struct._GMainLoop** %22, align 8, !dbg !1753
  store %struct._GMainLoop* %23, %struct._GMainLoop** %15, align 8, !dbg !1751
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %16, metadata !1754, metadata !468), !dbg !1755
  %24 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %14, align 8, !dbg !1756
  %25 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %24, i32 0, i32 6, !dbg !1757
  %26 = load %struct._GKeyFile*, %struct._GKeyFile** %25, align 8, !dbg !1757
  store %struct._GKeyFile* %26, %struct._GKeyFile** %16, align 8, !dbg !1755
  %27 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1758
  %28 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %27, i32 0, i32 1, !dbg !1759
  %29 = load i8*, i8** %28, align 8, !dbg !1759
  %30 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1760
  %31 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %30, i32 0, i32 1, !dbg !1761
  %32 = call i8* @ToolsDaemonTcloGetQuotedString(i8* %29, i8** %31), !dbg !1762
  store i8* %32, i8** %5, align 8, !dbg !1763
  br label %33, !dbg !1764

; <label>:33:                                     ; preds = %39, %1
  %34 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1765
  %35 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %34, i32 0, i32 1, !dbg !1767
  %36 = load i8*, i8** %35, align 8, !dbg !1767
  %37 = load i8, i8* %36, align 1, !dbg !1768
  %38 = icmp ne i8 %37, 0, !dbg !1769
  br i1 %38, label %39, label %44, !dbg !1769

; <label>:39:                                     ; preds = %33
  %40 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1770
  %41 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %40, i32 0, i32 1, !dbg !1772
  %42 = load i8*, i8** %41, align 8, !dbg !1773
  %43 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !1773
  store i8* %43, i8** %41, align 8, !dbg !1773
  br label %33, !dbg !1774, !llvm.loop !1776

; <label>:44:                                     ; preds = %33
  %45 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1777
  %46 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %45, i32 0, i32 1, !dbg !1778
  %47 = load i8*, i8** %46, align 8, !dbg !1779
  %48 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !1779
  store i8* %48, i8** %46, align 8, !dbg !1779
  %49 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1780
  %50 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %49, i32 0, i32 1, !dbg !1781
  %51 = load i8*, i8** %50, align 8, !dbg !1781
  %52 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1782
  %53 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %52, i32 0, i32 2, !dbg !1783
  %54 = load i64, i64* %53, align 8, !dbg !1783
  %55 = call i64 @VixMsg_ValidateMessage(i8* %51, i64 %54), !dbg !1784
  store i64 %55, i64* %3, align 8, !dbg !1785
  %56 = load i64, i64* %3, align 8, !dbg !1786
  %57 = icmp ne i64 0, %56, !dbg !1788
  br i1 %57, label %58, label %59, !dbg !1789

; <label>:58:                                     ; preds = %44
  br label %91, !dbg !1790

; <label>:59:                                     ; preds = %44
  %60 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1792
  %61 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %60, i32 0, i32 1, !dbg !1793
  %62 = load i8*, i8** %61, align 8, !dbg !1793
  %63 = bitcast i8* %62 to %struct.VixCommandRequestHeader*, !dbg !1794
  store %struct.VixCommandRequestHeader* %63, %struct.VixCommandRequestHeader** %6, align 8, !dbg !1795
  %64 = load i32, i32* %13, align 4, !dbg !1796
  %65 = sext i32 %64 to i64, !dbg !1796
  %66 = sub i64 65536, %65, !dbg !1797
  store i64 %66, i64* %7, align 8, !dbg !1798
  %67 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %6, align 8, !dbg !1799
  %68 = load i8*, i8** %5, align 8, !dbg !1800
  %69 = load i64, i64* %7, align 8, !dbg !1801
  %70 = load %struct._GKeyFile*, %struct._GKeyFile** %16, align 8, !dbg !1802
  %71 = load %struct._GMainLoop*, %struct._GMainLoop** %15, align 8, !dbg !1803
  %72 = call i64 @VixTools_ProcessVixCommand(%struct.VixCommandRequestHeader* %67, i8* %68, i64 %69, %struct._GKeyFile* %70, %struct._GMainLoop* %71, i8** %9, i64* %10, i8* %11), !dbg !1804
  store i64 %72, i64* %3, align 8, !dbg !1805
  %73 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %6, align 8, !dbg !1806
  %74 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %73, i32 0, i32 1, !dbg !1807
  %75 = load i32, i32* %74, align 1, !dbg !1807
  %76 = load i64, i64* %3, align 8, !dbg !1808
  %77 = call i32 @VixTools_GetAdditionalError(i32 %75, i64 %76), !dbg !1809
  store i32 %77, i32* %4, align 4, !dbg !1810
  %78 = load i32, i32* %4, align 4, !dbg !1811
  %79 = icmp ne i32 %78, 0, !dbg !1811
  br i1 %79, label %80, label %85, !dbg !1813

; <label>:80:                                     ; preds = %59
  %81 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %6, align 8, !dbg !1814
  %82 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %81, i32 0, i32 1, !dbg !1816
  %83 = load i32, i32* %82, align 1, !dbg !1816
  %84 = load i32, i32* %4, align 4, !dbg !1817
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__FUNCTION__.ToolsDaemonTcloReceiveVixCommand, i32 0, i32 0), i32 %83, i32 %84), !dbg !1818
  br label %90, !dbg !1819

; <label>:85:                                     ; preds = %59
  %86 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %6, align 8, !dbg !1820
  %87 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %86, i32 0, i32 1, !dbg !1822
  %88 = load i32, i32* %87, align 1, !dbg !1822
  %89 = load i32, i32* %4, align 4, !dbg !1823
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__FUNCTION__.ToolsDaemonTcloReceiveVixCommand, i32 0, i32 0), i32 %88, i32 %89), !dbg !1824
  br label %90

; <label>:90:                                     ; preds = %85, %80
  br label %91, !dbg !1825

; <label>:91:                                     ; preds = %90, %58
  %92 = load i64, i64* %10, align 8, !dbg !1827
  %93 = load i32, i32* %13, align 4, !dbg !1828
  %94 = sext i32 %93 to i64, !dbg !1828
  %95 = add i64 %92, %94, !dbg !1829
  store i64 %95, i64* %8, align 8, !dbg !1830
  %96 = load i64, i64* %8, align 8, !dbg !1831
  %97 = icmp ugt i64 %96, 65536, !dbg !1833
  br i1 %97, label %98, label %104, !dbg !1834

; <label>:98:                                     ; preds = %91
  %99 = load i8*, i8** %9, align 8, !dbg !1835
  %100 = getelementptr inbounds i8, i8* %99, i64 0, !dbg !1835
  store i8 0, i8* %100, align 1, !dbg !1837
  %101 = load i64, i64* %8, align 8, !dbg !1838
  %102 = load i64, i64* %10, align 8, !dbg !1839
  %103 = sub i64 %101, %102, !dbg !1840
  store i64 %103, i64* %8, align 8, !dbg !1841
  store i64 2, i64* %3, align 8, !dbg !1842
  br label %104, !dbg !1843

; <label>:104:                                    ; preds = %98, %91
  %105 = load i64, i64* %3, align 8, !dbg !1844
  %106 = load i32, i32* %4, align 4, !dbg !1845
  %107 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* getelementptr inbounds ([65536 x i8], [65536 x i8]* @ToolsDaemonTcloReceiveVixCommand.tcloBuffer, i32 0, i32 0), i64 65536, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i64 %105, i32 %106), !dbg !1846
  %108 = call i64 @strlen(i8* getelementptr inbounds ([65536 x i8], [65536 x i8]* @ToolsDaemonTcloReceiveVixCommand.tcloBuffer, i32 0, i32 0)) #8, !dbg !1847
  %109 = getelementptr inbounds i8, i8* getelementptr inbounds ([65536 x i8], [65536 x i8]* @ToolsDaemonTcloReceiveVixCommand.tcloBuffer, i32 0, i32 0), i64 %108, !dbg !1848
  store i8* %109, i8** %12, align 8, !dbg !1849
  %110 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %6, align 8, !dbg !1850
  %111 = icmp ne %struct.VixCommandRequestHeader* null, %110, !dbg !1852
  br i1 %111, label %112, label %130, !dbg !1853

; <label>:112:                                    ; preds = %104
  %113 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %6, align 8, !dbg !1854
  %114 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %113, i32 0, i32 0, !dbg !1856
  %115 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %114, i32 0, i32 6, !dbg !1857
  %116 = load i8, i8* %115, align 1, !dbg !1857
  %117 = zext i8 %116 to i32, !dbg !1854
  %118 = and i32 %117, 128, !dbg !1858
  %119 = icmp ne i32 %118, 0, !dbg !1858
  br i1 %119, label %120, label %130, !dbg !1859

; <label>:120:                                    ; preds = %112
  %121 = load i8*, i8** %12, align 8, !dbg !1860
  %122 = getelementptr inbounds i8, i8* %121, i32 1, !dbg !1860
  store i8* %122, i8** %12, align 8, !dbg !1860
  store i8 35, i8* %121, align 1, !dbg !1862
  %123 = load i8*, i8** %12, align 8, !dbg !1863
  %124 = ptrtoint i8* %123 to i64, !dbg !1864
  %125 = sub i64 %124, ptrtoint ([65536 x i8]* @ToolsDaemonTcloReceiveVixCommand.tcloBuffer to i64), !dbg !1864
  %126 = load i64, i64* %10, align 8, !dbg !1865
  %127 = add i64 %125, %126, !dbg !1866
  %128 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1867
  %129 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %128, i32 0, i32 4, !dbg !1868
  store i64 %127, i64* %129, align 8, !dbg !1869
  br label %130, !dbg !1870

; <label>:130:                                    ; preds = %120, %112, %104
  %131 = load i8*, i8** %12, align 8, !dbg !1871
  %132 = load i8*, i8** %9, align 8, !dbg !1872
  %133 = load i64, i64* %10, align 8, !dbg !1873
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %131, i8* %132, i64 %133, i32 1, i1 false), !dbg !1874
  %134 = load i64, i64* %10, align 8, !dbg !1875
  %135 = load i8*, i8** %12, align 8, !dbg !1876
  %136 = getelementptr inbounds i8, i8* %135, i64 %134, !dbg !1876
  store i8* %136, i8** %12, align 8, !dbg !1876
  %137 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %6, align 8, !dbg !1877
  %138 = icmp eq %struct.VixCommandRequestHeader* null, %137, !dbg !1879
  br i1 %138, label %147, label %139, !dbg !1880

; <label>:139:                                    ; preds = %130
  %140 = load %struct.VixCommandRequestHeader*, %struct.VixCommandRequestHeader** %6, align 8, !dbg !1881
  %141 = getelementptr inbounds %struct.VixCommandRequestHeader, %struct.VixCommandRequestHeader* %140, i32 0, i32 0, !dbg !1883
  %142 = getelementptr inbounds %struct.VixMsgHeader, %struct.VixMsgHeader* %141, i32 0, i32 6, !dbg !1884
  %143 = load i8, i8* %142, align 1, !dbg !1884
  %144 = zext i8 %143 to i32, !dbg !1881
  %145 = and i32 %144, 128, !dbg !1885
  %146 = icmp ne i32 %145, 0, !dbg !1885
  br i1 %146, label %154, label %147, !dbg !1886

; <label>:147:                                    ; preds = %139, %130
  %148 = load i8*, i8** %12, align 8, !dbg !1887
  %149 = getelementptr inbounds i8, i8* %148, i32 1, !dbg !1887
  store i8* %149, i8** %12, align 8, !dbg !1887
  store i8 0, i8* %148, align 1, !dbg !1889
  %150 = call i64 @strlen(i8* getelementptr inbounds ([65536 x i8], [65536 x i8]* @ToolsDaemonTcloReceiveVixCommand.tcloBuffer, i32 0, i32 0)) #8, !dbg !1890
  %151 = add i64 %150, 1, !dbg !1891
  %152 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1892
  %153 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %152, i32 0, i32 4, !dbg !1893
  store i64 %151, i64* %153, align 8, !dbg !1894
  br label %154, !dbg !1895

; <label>:154:                                    ; preds = %147, %139
  %155 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1896
  %156 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %155, i32 0, i32 3, !dbg !1897
  store i8* getelementptr inbounds ([65536 x i8], [65536 x i8]* @ToolsDaemonTcloReceiveVixCommand.tcloBuffer, i32 0, i32 0), i8** %156, align 8, !dbg !1898
  %157 = load i8, i8* %11, align 1, !dbg !1899
  %158 = icmp ne i8 %157, 0, !dbg !1899
  br i1 %158, label %159, label %161, !dbg !1901

; <label>:159:                                    ; preds = %154
  %160 = load i8*, i8** %9, align 8, !dbg !1902
  call void @free(i8* %160) #7, !dbg !1904
  br label %161, !dbg !1905

; <label>:161:                                    ; preds = %159, %154
  %162 = load i8*, i8** %5, align 8, !dbg !1906
  call void @free(i8* %162) #7, !dbg !1907
  ret i32 1, !dbg !1908
}

declare i64 @VixMsg_ValidateMessage(i8*, i64) #2

declare i64 @VixTools_ProcessVixCommand(%struct.VixCommandRequestHeader*, i8*, i64, %struct._GKeyFile*, %struct._GMainLoop*, i8**, i64*, i8*) #2

declare i32 @VixTools_GetAdditionalError(i32, i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

declare i8* @UtilSafeStrdup0(i8*) #2

declare i64 @VixMsg_DecodeString(i8*, i8**) #2

declare %struct._IO_FILE* @Posix_Setmntent(i8*, i8*) #2

declare %struct.mntent* @Posix_Getmntent(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @endmntent(%struct._IO_FILE*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!464, !465}
!llvm.ident = !{!466}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !320, globals: !407)
!1 = !DIFile(filename: "libvix_la-foundryToolsDaemon.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1538")
!2 = !{!3, !272, !276, !288, !294, !310}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 87, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vix.h", directory: "/home/lichi/Desktop/open-vm-tools/line1538")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271}
!6 = !DIEnumerator(name: "VIX_OK", value: 0)
!7 = !DIEnumerator(name: "VIX_E_FAIL", value: 1)
!8 = !DIEnumerator(name: "VIX_E_OUT_OF_MEMORY", value: 2)
!9 = !DIEnumerator(name: "VIX_E_INVALID_ARG", value: 3)
!10 = !DIEnumerator(name: "VIX_E_FILE_NOT_FOUND", value: 4)
!11 = !DIEnumerator(name: "VIX_E_OBJECT_IS_BUSY", value: 5)
!12 = !DIEnumerator(name: "VIX_E_NOT_SUPPORTED", value: 6)
!13 = !DIEnumerator(name: "VIX_E_FILE_ERROR", value: 7)
!14 = !DIEnumerator(name: "VIX_E_DISK_FULL", value: 8)
!15 = !DIEnumerator(name: "VIX_E_INCORRECT_FILE_TYPE", value: 9)
!16 = !DIEnumerator(name: "VIX_E_CANCELLED", value: 10)
!17 = !DIEnumerator(name: "VIX_E_FILE_READ_ONLY", value: 11)
!18 = !DIEnumerator(name: "VIX_E_FILE_ALREADY_EXISTS", value: 12)
!19 = !DIEnumerator(name: "VIX_E_FILE_ACCESS_ERROR", value: 13)
!20 = !DIEnumerator(name: "VIX_E_REQUIRES_LARGE_FILES", value: 14)
!21 = !DIEnumerator(name: "VIX_E_FILE_ALREADY_LOCKED", value: 15)
!22 = !DIEnumerator(name: "VIX_E_VMDB", value: 16)
!23 = !DIEnumerator(name: "VIX_E_NOT_SUPPORTED_ON_REMOTE_OBJECT", value: 20)
!24 = !DIEnumerator(name: "VIX_E_FILE_TOO_BIG", value: 21)
!25 = !DIEnumerator(name: "VIX_E_FILE_NAME_INVALID", value: 22)
!26 = !DIEnumerator(name: "VIX_E_ALREADY_EXISTS", value: 23)
!27 = !DIEnumerator(name: "VIX_E_BUFFER_TOOSMALL", value: 24)
!28 = !DIEnumerator(name: "VIX_E_OBJECT_NOT_FOUND", value: 25)
!29 = !DIEnumerator(name: "VIX_E_HOST_NOT_CONNECTED", value: 26)
!30 = !DIEnumerator(name: "VIX_E_INVALID_UTF8_STRING", value: 27)
!31 = !DIEnumerator(name: "VIX_E_OPERATION_ALREADY_IN_PROGRESS", value: 31)
!32 = !DIEnumerator(name: "VIX_E_UNFINISHED_JOB", value: 29)
!33 = !DIEnumerator(name: "VIX_E_NEED_KEY", value: 30)
!34 = !DIEnumerator(name: "VIX_E_LICENSE", value: 32)
!35 = !DIEnumerator(name: "VIX_E_VM_HOST_DISCONNECTED", value: 34)
!36 = !DIEnumerator(name: "VIX_E_AUTHENTICATION_FAIL", value: 35)
!37 = !DIEnumerator(name: "VIX_E_HOST_CONNECTION_LOST", value: 36)
!38 = !DIEnumerator(name: "VIX_E_DUPLICATE_NAME", value: 41)
!39 = !DIEnumerator(name: "VIX_E_ARGUMENT_TOO_BIG", value: 44)
!40 = !DIEnumerator(name: "VIX_E_INVALID_HANDLE", value: 1000)
!41 = !DIEnumerator(name: "VIX_E_NOT_SUPPORTED_ON_HANDLE_TYPE", value: 1001)
!42 = !DIEnumerator(name: "VIX_E_TOO_MANY_HANDLES", value: 1002)
!43 = !DIEnumerator(name: "VIX_E_NOT_FOUND", value: 2000)
!44 = !DIEnumerator(name: "VIX_E_TYPE_MISMATCH", value: 2001)
!45 = !DIEnumerator(name: "VIX_E_INVALID_XML", value: 2002)
!46 = !DIEnumerator(name: "VIX_E_TIMEOUT_WAITING_FOR_TOOLS", value: 3000)
!47 = !DIEnumerator(name: "VIX_E_UNRECOGNIZED_COMMAND", value: 3001)
!48 = !DIEnumerator(name: "VIX_E_OP_NOT_SUPPORTED_ON_GUEST", value: 3003)
!49 = !DIEnumerator(name: "VIX_E_PROGRAM_NOT_STARTED", value: 3004)
!50 = !DIEnumerator(name: "VIX_E_CANNOT_START_READ_ONLY_VM", value: 3005)
!51 = !DIEnumerator(name: "VIX_E_VM_NOT_RUNNING", value: 3006)
!52 = !DIEnumerator(name: "VIX_E_VM_IS_RUNNING", value: 3007)
!53 = !DIEnumerator(name: "VIX_E_CANNOT_CONNECT_TO_VM", value: 3008)
!54 = !DIEnumerator(name: "VIX_E_POWEROP_SCRIPTS_NOT_AVAILABLE", value: 3009)
!55 = !DIEnumerator(name: "VIX_E_NO_GUEST_OS_INSTALLED", value: 3010)
!56 = !DIEnumerator(name: "VIX_E_VM_INSUFFICIENT_HOST_MEMORY", value: 3011)
!57 = !DIEnumerator(name: "VIX_E_SUSPEND_ERROR", value: 3012)
!58 = !DIEnumerator(name: "VIX_E_VM_NOT_ENOUGH_CPUS", value: 3013)
!59 = !DIEnumerator(name: "VIX_E_HOST_USER_PERMISSIONS", value: 3014)
!60 = !DIEnumerator(name: "VIX_E_GUEST_USER_PERMISSIONS", value: 3015)
!61 = !DIEnumerator(name: "VIX_E_TOOLS_NOT_RUNNING", value: 3016)
!62 = !DIEnumerator(name: "VIX_E_GUEST_OPERATIONS_PROHIBITED", value: 3017)
!63 = !DIEnumerator(name: "VIX_E_ANON_GUEST_OPERATIONS_PROHIBITED", value: 3018)
!64 = !DIEnumerator(name: "VIX_E_ROOT_GUEST_OPERATIONS_PROHIBITED", value: 3019)
!65 = !DIEnumerator(name: "VIX_E_MISSING_ANON_GUEST_ACCOUNT", value: 3023)
!66 = !DIEnumerator(name: "VIX_E_CANNOT_AUTHENTICATE_WITH_GUEST", value: 3024)
!67 = !DIEnumerator(name: "VIX_E_UNRECOGNIZED_COMMAND_IN_GUEST", value: 3025)
!68 = !DIEnumerator(name: "VIX_E_CONSOLE_GUEST_OPERATIONS_PROHIBITED", value: 3026)
!69 = !DIEnumerator(name: "VIX_E_MUST_BE_CONSOLE_USER", value: 3027)
!70 = !DIEnumerator(name: "VIX_E_VMX_MSG_DIALOG_AND_NO_UI", value: 3028)
!71 = !DIEnumerator(name: "VIX_E_OPERATION_NOT_ALLOWED_FOR_LOGIN_TYPE", value: 3031)
!72 = !DIEnumerator(name: "VIX_E_LOGIN_TYPE_NOT_SUPPORTED", value: 3032)
!73 = !DIEnumerator(name: "VIX_E_EMPTY_PASSWORD_NOT_ALLOWED_IN_GUEST", value: 3033)
!74 = !DIEnumerator(name: "VIX_E_INTERACTIVE_SESSION_NOT_PRESENT", value: 3034)
!75 = !DIEnumerator(name: "VIX_E_INTERACTIVE_SESSION_USER_MISMATCH", value: 3035)
!76 = !DIEnumerator(name: "VIX_E_CANNOT_POWER_ON_VM", value: 3041)
!77 = !DIEnumerator(name: "VIX_E_NO_DISPLAY_SERVER", value: 3043)
!78 = !DIEnumerator(name: "VIX_E_TOO_MANY_LOGONS", value: 3046)
!79 = !DIEnumerator(name: "VIX_E_INVALID_AUTHENTICATION_SESSION", value: 3047)
!80 = !DIEnumerator(name: "VIX_E_VM_NOT_FOUND", value: 4000)
!81 = !DIEnumerator(name: "VIX_E_NOT_SUPPORTED_FOR_VM_VERSION", value: 4001)
!82 = !DIEnumerator(name: "VIX_E_CANNOT_READ_VM_CONFIG", value: 4002)
!83 = !DIEnumerator(name: "VIX_E_TEMPLATE_VM", value: 4003)
!84 = !DIEnumerator(name: "VIX_E_VM_ALREADY_LOADED", value: 4004)
!85 = !DIEnumerator(name: "VIX_E_VM_ALREADY_UP_TO_DATE", value: 4006)
!86 = !DIEnumerator(name: "VIX_E_VM_UNSUPPORTED_GUEST", value: 4011)
!87 = !DIEnumerator(name: "VIX_E_UNRECOGNIZED_PROPERTY", value: 6000)
!88 = !DIEnumerator(name: "VIX_E_INVALID_PROPERTY_VALUE", value: 6001)
!89 = !DIEnumerator(name: "VIX_E_READ_ONLY_PROPERTY", value: 6002)
!90 = !DIEnumerator(name: "VIX_E_MISSING_REQUIRED_PROPERTY", value: 6003)
!91 = !DIEnumerator(name: "VIX_E_INVALID_SERIALIZED_DATA", value: 6004)
!92 = !DIEnumerator(name: "VIX_E_PROPERTY_TYPE_MISMATCH", value: 6005)
!93 = !DIEnumerator(name: "VIX_E_BAD_VM_INDEX", value: 8000)
!94 = !DIEnumerator(name: "VIX_E_INVALID_MESSAGE_HEADER", value: 10000)
!95 = !DIEnumerator(name: "VIX_E_INVALID_MESSAGE_BODY", value: 10001)
!96 = !DIEnumerator(name: "VIX_E_SNAPSHOT_INVAL", value: 13000)
!97 = !DIEnumerator(name: "VIX_E_SNAPSHOT_DUMPER", value: 13001)
!98 = !DIEnumerator(name: "VIX_E_SNAPSHOT_DISKLIB", value: 13002)
!99 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NOTFOUND", value: 13003)
!100 = !DIEnumerator(name: "VIX_E_SNAPSHOT_EXISTS", value: 13004)
!101 = !DIEnumerator(name: "VIX_E_SNAPSHOT_VERSION", value: 13005)
!102 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NOPERM", value: 13006)
!103 = !DIEnumerator(name: "VIX_E_SNAPSHOT_CONFIG", value: 13007)
!104 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NOCHANGE", value: 13008)
!105 = !DIEnumerator(name: "VIX_E_SNAPSHOT_CHECKPOINT", value: 13009)
!106 = !DIEnumerator(name: "VIX_E_SNAPSHOT_LOCKED", value: 13010)
!107 = !DIEnumerator(name: "VIX_E_SNAPSHOT_INCONSISTENT", value: 13011)
!108 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NAMETOOLONG", value: 13012)
!109 = !DIEnumerator(name: "VIX_E_SNAPSHOT_VIXFILE", value: 13013)
!110 = !DIEnumerator(name: "VIX_E_SNAPSHOT_DISKLOCKED", value: 13014)
!111 = !DIEnumerator(name: "VIX_E_SNAPSHOT_DUPLICATEDDISK", value: 13015)
!112 = !DIEnumerator(name: "VIX_E_SNAPSHOT_INDEPENDENTDISK", value: 13016)
!113 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NONUNIQUE_NAME", value: 13017)
!114 = !DIEnumerator(name: "VIX_E_SNAPSHOT_MEMORY_ON_INDEPENDENT_DISK", value: 13018)
!115 = !DIEnumerator(name: "VIX_E_SNAPSHOT_MAXSNAPSHOTS", value: 13019)
!116 = !DIEnumerator(name: "VIX_E_SNAPSHOT_MIN_FREE_SPACE", value: 13020)
!117 = !DIEnumerator(name: "VIX_E_SNAPSHOT_HIERARCHY_TOODEEP", value: 13021)
!118 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NOT_REVERTABLE", value: 13024)
!119 = !DIEnumerator(name: "VIX_E_HOST_DISK_INVALID_VALUE", value: 14003)
!120 = !DIEnumerator(name: "VIX_E_HOST_DISK_SECTORSIZE", value: 14004)
!121 = !DIEnumerator(name: "VIX_E_HOST_FILE_ERROR_EOF", value: 14005)
!122 = !DIEnumerator(name: "VIX_E_HOST_NETBLKDEV_HANDSHAKE", value: 14006)
!123 = !DIEnumerator(name: "VIX_E_HOST_SOCKET_CREATION_ERROR", value: 14007)
!124 = !DIEnumerator(name: "VIX_E_HOST_SERVER_NOT_FOUND", value: 14008)
!125 = !DIEnumerator(name: "VIX_E_HOST_NETWORK_CONN_REFUSED", value: 14009)
!126 = !DIEnumerator(name: "VIX_E_HOST_TCP_SOCKET_ERROR", value: 14010)
!127 = !DIEnumerator(name: "VIX_E_HOST_TCP_CONN_LOST", value: 14011)
!128 = !DIEnumerator(name: "VIX_E_HOST_NBD_HASHFILE_VOLUME", value: 14012)
!129 = !DIEnumerator(name: "VIX_E_HOST_NBD_HASHFILE_INIT", value: 14013)
!130 = !DIEnumerator(name: "VIX_E_DISK_INVAL", value: 16000)
!131 = !DIEnumerator(name: "VIX_E_DISK_NOINIT", value: 16001)
!132 = !DIEnumerator(name: "VIX_E_DISK_NOIO", value: 16002)
!133 = !DIEnumerator(name: "VIX_E_DISK_PARTIALCHAIN", value: 16003)
!134 = !DIEnumerator(name: "VIX_E_DISK_NEEDSREPAIR", value: 16006)
!135 = !DIEnumerator(name: "VIX_E_DISK_OUTOFRANGE", value: 16007)
!136 = !DIEnumerator(name: "VIX_E_DISK_CID_MISMATCH", value: 16008)
!137 = !DIEnumerator(name: "VIX_E_DISK_CANTSHRINK", value: 16009)
!138 = !DIEnumerator(name: "VIX_E_DISK_PARTMISMATCH", value: 16010)
!139 = !DIEnumerator(name: "VIX_E_DISK_UNSUPPORTEDDISKVERSION", value: 16011)
!140 = !DIEnumerator(name: "VIX_E_DISK_OPENPARENT", value: 16012)
!141 = !DIEnumerator(name: "VIX_E_DISK_NOTSUPPORTED", value: 16013)
!142 = !DIEnumerator(name: "VIX_E_DISK_NEEDKEY", value: 16014)
!143 = !DIEnumerator(name: "VIX_E_DISK_NOKEYOVERRIDE", value: 16015)
!144 = !DIEnumerator(name: "VIX_E_DISK_NOTENCRYPTED", value: 16016)
!145 = !DIEnumerator(name: "VIX_E_DISK_NOKEY", value: 16017)
!146 = !DIEnumerator(name: "VIX_E_DISK_INVALIDPARTITIONTABLE", value: 16018)
!147 = !DIEnumerator(name: "VIX_E_DISK_NOTNORMAL", value: 16019)
!148 = !DIEnumerator(name: "VIX_E_DISK_NOTENCDESC", value: 16020)
!149 = !DIEnumerator(name: "VIX_E_DISK_NEEDVMFS", value: 16022)
!150 = !DIEnumerator(name: "VIX_E_DISK_RAWTOOBIG", value: 16024)
!151 = !DIEnumerator(name: "VIX_E_DISK_TOOMANYOPENFILES", value: 16027)
!152 = !DIEnumerator(name: "VIX_E_DISK_TOOMANYREDO", value: 16028)
!153 = !DIEnumerator(name: "VIX_E_DISK_RAWTOOSMALL", value: 16029)
!154 = !DIEnumerator(name: "VIX_E_DISK_INVALIDCHAIN", value: 16030)
!155 = !DIEnumerator(name: "VIX_E_DISK_KEY_NOTFOUND", value: 16052)
!156 = !DIEnumerator(name: "VIX_E_DISK_SUBSYSTEM_INIT_FAIL", value: 16053)
!157 = !DIEnumerator(name: "VIX_E_DISK_INVALID_CONNECTION", value: 16054)
!158 = !DIEnumerator(name: "VIX_E_DISK_ENCODING", value: 16061)
!159 = !DIEnumerator(name: "VIX_E_DISK_CANTREPAIR", value: 16062)
!160 = !DIEnumerator(name: "VIX_E_DISK_INVALIDDISK", value: 16063)
!161 = !DIEnumerator(name: "VIX_E_DISK_NOLICENSE", value: 16064)
!162 = !DIEnumerator(name: "VIX_E_DISK_NODEVICE", value: 16065)
!163 = !DIEnumerator(name: "VIX_E_DISK_UNSUPPORTEDDEVICE", value: 16066)
!164 = !DIEnumerator(name: "VIX_E_DISK_CAPACITY_MISMATCH", value: 16067)
!165 = !DIEnumerator(name: "VIX_E_DISK_PARENT_NOTALLOWED", value: 16068)
!166 = !DIEnumerator(name: "VIX_E_DISK_ATTACH_ROOTLINK", value: 16069)
!167 = !DIEnumerator(name: "VIX_E_CRYPTO_UNKNOWN_ALGORITHM", value: 17000)
!168 = !DIEnumerator(name: "VIX_E_CRYPTO_BAD_BUFFER_SIZE", value: 17001)
!169 = !DIEnumerator(name: "VIX_E_CRYPTO_INVALID_OPERATION", value: 17002)
!170 = !DIEnumerator(name: "VIX_E_CRYPTO_RANDOM_DEVICE", value: 17003)
!171 = !DIEnumerator(name: "VIX_E_CRYPTO_NEED_PASSWORD", value: 17004)
!172 = !DIEnumerator(name: "VIX_E_CRYPTO_BAD_PASSWORD", value: 17005)
!173 = !DIEnumerator(name: "VIX_E_CRYPTO_NOT_IN_DICTIONARY", value: 17006)
!174 = !DIEnumerator(name: "VIX_E_CRYPTO_NO_CRYPTO", value: 17007)
!175 = !DIEnumerator(name: "VIX_E_CRYPTO_ERROR", value: 17008)
!176 = !DIEnumerator(name: "VIX_E_CRYPTO_BAD_FORMAT", value: 17009)
!177 = !DIEnumerator(name: "VIX_E_CRYPTO_LOCKED", value: 17010)
!178 = !DIEnumerator(name: "VIX_E_CRYPTO_EMPTY", value: 17011)
!179 = !DIEnumerator(name: "VIX_E_CRYPTO_KEYSAFE_LOCATOR", value: 17012)
!180 = !DIEnumerator(name: "VIX_E_CANNOT_CONNECT_TO_HOST", value: 18000)
!181 = !DIEnumerator(name: "VIX_E_NOT_FOR_REMOTE_HOST", value: 18001)
!182 = !DIEnumerator(name: "VIX_E_INVALID_HOSTNAME_SPECIFICATION", value: 18002)
!183 = !DIEnumerator(name: "VIX_E_SCREEN_CAPTURE_ERROR", value: 19000)
!184 = !DIEnumerator(name: "VIX_E_SCREEN_CAPTURE_BAD_FORMAT", value: 19001)
!185 = !DIEnumerator(name: "VIX_E_SCREEN_CAPTURE_COMPRESSION_FAIL", value: 19002)
!186 = !DIEnumerator(name: "VIX_E_SCREEN_CAPTURE_LARGE_DATA", value: 19003)
!187 = !DIEnumerator(name: "VIX_E_GUEST_VOLUMES_NOT_FROZEN", value: 20000)
!188 = !DIEnumerator(name: "VIX_E_NOT_A_FILE", value: 20001)
!189 = !DIEnumerator(name: "VIX_E_NOT_A_DIRECTORY", value: 20002)
!190 = !DIEnumerator(name: "VIX_E_NO_SUCH_PROCESS", value: 20003)
!191 = !DIEnumerator(name: "VIX_E_FILE_NAME_TOO_LONG", value: 20004)
!192 = !DIEnumerator(name: "VIX_E_OPERATION_DISABLED", value: 20005)
!193 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_NO_IMAGE", value: 21000)
!194 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_IMAGE_INACCESIBLE", value: 21001)
!195 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_NO_DEVICE", value: 21002)
!196 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_DEVICE_NOT_CONNECTED", value: 21003)
!197 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_CANCELLED", value: 21004)
!198 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_INIT_FAILED", value: 21005)
!199 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_AUTO_NOT_SUPPORTED", value: 21006)
!200 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_GUEST_NOT_READY", value: 21007)
!201 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_SIG_CHECK_FAILED", value: 21008)
!202 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_ERROR", value: 21009)
!203 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_ALREADY_UP_TO_DATE", value: 21010)
!204 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_IN_PROGRESS", value: 21011)
!205 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_IMAGE_COPY_FAILED", value: 21012)
!206 = !DIEnumerator(name: "VIX_E_WRAPPER_WORKSTATION_NOT_INSTALLED", value: 22001)
!207 = !DIEnumerator(name: "VIX_E_WRAPPER_VERSION_NOT_FOUND", value: 22002)
!208 = !DIEnumerator(name: "VIX_E_WRAPPER_SERVICEPROVIDER_NOT_FOUND", value: 22003)
!209 = !DIEnumerator(name: "VIX_E_WRAPPER_PLAYER_NOT_INSTALLED", value: 22004)
!210 = !DIEnumerator(name: "VIX_E_WRAPPER_RUNTIME_NOT_INSTALLED", value: 22005)
!211 = !DIEnumerator(name: "VIX_E_WRAPPER_MULTIPLE_SERVICEPROVIDERS", value: 22006)
!212 = !DIEnumerator(name: "VIX_E_MNTAPI_MOUNTPT_NOT_FOUND", value: 24000)
!213 = !DIEnumerator(name: "VIX_E_MNTAPI_MOUNTPT_IN_USE", value: 24001)
!214 = !DIEnumerator(name: "VIX_E_MNTAPI_DISK_NOT_FOUND", value: 24002)
!215 = !DIEnumerator(name: "VIX_E_MNTAPI_DISK_NOT_MOUNTED", value: 24003)
!216 = !DIEnumerator(name: "VIX_E_MNTAPI_DISK_IS_MOUNTED", value: 24004)
!217 = !DIEnumerator(name: "VIX_E_MNTAPI_DISK_NOT_SAFE", value: 24005)
!218 = !DIEnumerator(name: "VIX_E_MNTAPI_DISK_CANT_OPEN", value: 24006)
!219 = !DIEnumerator(name: "VIX_E_MNTAPI_CANT_READ_PARTS", value: 24007)
!220 = !DIEnumerator(name: "VIX_E_MNTAPI_UMOUNT_APP_NOT_FOUND", value: 24008)
!221 = !DIEnumerator(name: "VIX_E_MNTAPI_UMOUNT", value: 24009)
!222 = !DIEnumerator(name: "VIX_E_MNTAPI_NO_MOUNTABLE_PARTITONS", value: 24010)
!223 = !DIEnumerator(name: "VIX_E_MNTAPI_PARTITION_RANGE", value: 24011)
!224 = !DIEnumerator(name: "VIX_E_MNTAPI_PERM", value: 24012)
!225 = !DIEnumerator(name: "VIX_E_MNTAPI_DICT", value: 24013)
!226 = !DIEnumerator(name: "VIX_E_MNTAPI_DICT_LOCKED", value: 24014)
!227 = !DIEnumerator(name: "VIX_E_MNTAPI_OPEN_HANDLES", value: 24015)
!228 = !DIEnumerator(name: "VIX_E_MNTAPI_CANT_MAKE_VAR_DIR", value: 24016)
!229 = !DIEnumerator(name: "VIX_E_MNTAPI_NO_ROOT", value: 24017)
!230 = !DIEnumerator(name: "VIX_E_MNTAPI_LOOP_FAILED", value: 24018)
!231 = !DIEnumerator(name: "VIX_E_MNTAPI_DAEMON", value: 24019)
!232 = !DIEnumerator(name: "VIX_E_MNTAPI_INTERNAL", value: 24020)
!233 = !DIEnumerator(name: "VIX_E_MNTAPI_SYSTEM", value: 24021)
!234 = !DIEnumerator(name: "VIX_E_MNTAPI_NO_CONNECTION_DETAILS", value: 24022)
!235 = !DIEnumerator(name: "VIX_E_MNTAPI_INCOMPATIBLE_VERSION", value: 24300)
!236 = !DIEnumerator(name: "VIX_E_MNTAPI_OS_ERROR", value: 24301)
!237 = !DIEnumerator(name: "VIX_E_MNTAPI_DRIVE_LETTER_IN_USE", value: 24302)
!238 = !DIEnumerator(name: "VIX_E_MNTAPI_DRIVE_LETTER_ALREADY_ASSIGNED", value: 24303)
!239 = !DIEnumerator(name: "VIX_E_MNTAPI_VOLUME_NOT_MOUNTED", value: 24304)
!240 = !DIEnumerator(name: "VIX_E_MNTAPI_VOLUME_ALREADY_MOUNTED", value: 24305)
!241 = !DIEnumerator(name: "VIX_E_MNTAPI_FORMAT_FAILURE", value: 24306)
!242 = !DIEnumerator(name: "VIX_E_MNTAPI_NO_DRIVER", value: 24307)
!243 = !DIEnumerator(name: "VIX_E_MNTAPI_ALREADY_OPENED", value: 24308)
!244 = !DIEnumerator(name: "VIX_E_MNTAPI_ITEM_NOT_FOUND", value: 24309)
!245 = !DIEnumerator(name: "VIX_E_MNTAPI_UNSUPPROTED_BOOT_LOADER", value: 24310)
!246 = !DIEnumerator(name: "VIX_E_MNTAPI_UNSUPPROTED_OS", value: 24311)
!247 = !DIEnumerator(name: "VIX_E_MNTAPI_CODECONVERSION", value: 24312)
!248 = !DIEnumerator(name: "VIX_E_MNTAPI_REGWRITE_ERROR", value: 24313)
!249 = !DIEnumerator(name: "VIX_E_MNTAPI_UNSUPPORTED_FT_VOLUME", value: 24314)
!250 = !DIEnumerator(name: "VIX_E_MNTAPI_PARTITION_NOT_FOUND", value: 24315)
!251 = !DIEnumerator(name: "VIX_E_MNTAPI_PUTFILE_ERROR", value: 24316)
!252 = !DIEnumerator(name: "VIX_E_MNTAPI_GETFILE_ERROR", value: 24317)
!253 = !DIEnumerator(name: "VIX_E_MNTAPI_REG_NOT_OPENED", value: 24318)
!254 = !DIEnumerator(name: "VIX_E_MNTAPI_REGDELKEY_ERROR", value: 24319)
!255 = !DIEnumerator(name: "VIX_E_MNTAPI_CREATE_PARTITIONTABLE_ERROR", value: 24320)
!256 = !DIEnumerator(name: "VIX_E_MNTAPI_OPEN_FAILURE", value: 24321)
!257 = !DIEnumerator(name: "VIX_E_MNTAPI_VOLUME_NOT_WRITABLE", value: 24322)
!258 = !DIEnumerator(name: "VIX_ASYNC", value: 25000)
!259 = !DIEnumerator(name: "VIX_E_ASYNC_MIXEDMODE_UNSUPPORTED", value: 26000)
!260 = !DIEnumerator(name: "VIX_E_NET_HTTP_UNSUPPORTED_PROTOCOL", value: 30001)
!261 = !DIEnumerator(name: "VIX_E_NET_HTTP_URL_MALFORMAT", value: 30003)
!262 = !DIEnumerator(name: "VIX_E_NET_HTTP_COULDNT_RESOLVE_PROXY", value: 30005)
!263 = !DIEnumerator(name: "VIX_E_NET_HTTP_COULDNT_RESOLVE_HOST", value: 30006)
!264 = !DIEnumerator(name: "VIX_E_NET_HTTP_COULDNT_CONNECT", value: 30007)
!265 = !DIEnumerator(name: "VIX_E_NET_HTTP_HTTP_RETURNED_ERROR", value: 30022)
!266 = !DIEnumerator(name: "VIX_E_NET_HTTP_OPERATION_TIMEDOUT", value: 30028)
!267 = !DIEnumerator(name: "VIX_E_NET_HTTP_SSL_CONNECT_ERROR", value: 30035)
!268 = !DIEnumerator(name: "VIX_E_NET_HTTP_TOO_MANY_REDIRECTS", value: 30047)
!269 = !DIEnumerator(name: "VIX_E_NET_HTTP_TRANSFER", value: 30200)
!270 = !DIEnumerator(name: "VIX_E_NET_HTTP_SSL_SECURITY", value: 30201)
!271 = !DIEnumerator(name: "VIX_E_NET_HTTP_GENERIC", value: 30202)
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !273, line: 232, size: 32, align: 32, elements: !274)
!273 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/plugin.h", directory: "/home/lichi/Desktop/open-vm-tools/line1538")
!274 = !{!275}
!275 = !DIEnumerator(name: "TOOLS_CORE_API_V1", value: 1)
!276 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !277, line: 51, size: 32, align: 32, elements: !278)
!277 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1538")
!278 = !{!279, !280, !281, !282, !283, !284, !285, !286, !287}
!279 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!280 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!281 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!282 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!283 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!284 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!285 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!286 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!287 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!288 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !289, line: 45, size: 32, align: 32, elements: !290)
!289 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/syncDriver.h", directory: "/home/lichi/Desktop/open-vm-tools/line1538")
!290 = !{!291, !292, !293}
!291 = !DIEnumerator(name: "SYNCDRIVER_IDLE", value: 0)
!292 = !DIEnumerator(name: "SYNCDRIVER_BUSY", value: 1)
!293 = !DIEnumerator(name: "SYNCDRIVER_ERROR", value: 2)
!294 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !295, line: 191, size: 32, align: 32, elements: !296)
!295 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vixOpenSource.h", directory: "/home/lichi/Desktop/open-vm-tools/line1538")
!296 = !{!297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309}
!297 = !DIEnumerator(name: "VIX_E_OP_NOT_SUPPORTED_ON_NON_VMWARE_VM", value: 3038)
!298 = !DIEnumerator(name: "VIX_E_VI_OP_NOT_SUPPORTED_ON_GUEST", value: 3048)
!299 = !DIEnumerator(name: "VIX_E_INVALID_LOGIN_CREDENTIALS", value: 3050)
!300 = !DIEnumerator(name: "VIX_E_GUEST_AUTHTYPE_DISABLED", value: 3051)
!301 = !DIEnumerator(name: "VIX_E_DIRECTORY_NOT_EMPTY", value: 20006)
!302 = !DIEnumerator(name: "VIX_E_GUEST_AUTH_MULIPLE_MAPPINGS", value: 20007)
!303 = !DIEnumerator(name: "VIX_E_REG_KEY_INVALID", value: 20008)
!304 = !DIEnumerator(name: "VIX_E_REG_KEY_HAS_SUBKEYS", value: 20009)
!305 = !DIEnumerator(name: "VIX_E_REG_VALUE_NOT_FOUND", value: 20010)
!306 = !DIEnumerator(name: "VIX_E_REG_KEY_ALREADY_EXISTS", value: 20011)
!307 = !DIEnumerator(name: "VIX_E_REG_KEY_PARENT_VOLATILE", value: 20012)
!308 = !DIEnumerator(name: "VIX_E_HGFS_MOUNT_FAIL", value: 20050)
!309 = !DIEnumerator(name: "VIX_E_REG_INCORRECT_VALUE_TYPE", value: 25000)
!310 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "VixCommonCommandOptionValues", file: !311, line: 88, size: 32, align: 32, elements: !312)
!311 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vixCommands.h", directory: "/home/lichi/Desktop/open-vm-tools/line1538")
!312 = !{!313, !314, !315, !316, !317, !318, !319}
!313 = !DIEnumerator(name: "VIX_COMMAND_REQUEST", value: 1)
!314 = !DIEnumerator(name: "VIX_COMMAND_REPORT_EVENT", value: 2)
!315 = !DIEnumerator(name: "VIX_COMMAND_FORWARD_TO_GUEST", value: 4)
!316 = !DIEnumerator(name: "VIX_COMMAND_GUEST_RETURNS_STRING", value: 8)
!317 = !DIEnumerator(name: "VIX_COMMAND_GUEST_RETURNS_INTEGER_STRING", value: 16)
!318 = !DIEnumerator(name: "VIX_COMMAND_GUEST_RETURNS_PROPERTY_LIST", value: 64)
!319 = !DIEnumerator(name: "VIX_COMMAND_GUEST_RETURNS_BINARY", value: 128)
!320 = !{!321, !322, !362, !363, !368, !372, !373}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppCtx", file: !273, line: 274, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppCtx", file: !273, line: 241, size: 576, align: 64, elements: !325)
!325 = !{!326, !328, !334, !338, !339, !344, !349, !354, !355, !356, !360}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !324, file: !273, line: 243, baseType: !327, size: 32, align: 32)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCoreAPI", file: !273, line: 234, baseType: !272)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !324, file: !273, line: 245, baseType: !329, size: 64, align: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !332, line: 46, baseType: !333)
!332 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1538")
!333 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "isVMware", scope: !324, file: !273, line: 247, baseType: !335, size: 32, align: 32, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !332, line: 50, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !332, line: 49, baseType: !337)
!337 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "errorCode", scope: !324, file: !273, line: 249, baseType: !337, size: 32, align: 32, offset: 160)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "mainLoop", scope: !324, file: !273, line: 251, baseType: !340, size: 64, align: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainLoop", file: !342, line: 56, baseType: !343)
!342 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line1538")
!343 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainLoop", file: !342, line: 56, flags: DIFlagFwdDecl)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !324, file: !273, line: 253, baseType: !345, size: 64, align: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !347, line: 48, baseType: !348)
!347 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line1538")
!348 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !347, line: 48, flags: DIFlagFwdDecl)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !324, file: !273, line: 255, baseType: !350, size: 64, align: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !352, line: 48, baseType: !353)
!352 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1538")
!353 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !352, line: 48, flags: DIFlagFwdDecl)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "blockFD", scope: !324, file: !273, line: 261, baseType: !337, size: 32, align: 32, offset: 384)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "uinputFD", scope: !324, file: !273, line: 263, baseType: !337, size: 32, align: 32, offset: 416)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !324, file: !273, line: 265, baseType: !357, size: 64, align: 64, offset: 448)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "serviceObj", scope: !324, file: !273, line: 273, baseType: !361, size: 64, align: 64, offset: 512)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !332, line: 77, baseType: !321)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !364, line: 172, baseType: !365)
!364 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1538")
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !366, line: 197, baseType: !367)
!366 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1538")
!367 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !342, line: 155, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!335, !361}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "VixCommandRequestHeader", file: !311, line: 196, baseType: !375)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VixCommandRequestHeader", file: !311, line: 182, size: 408, align: 8, elements: !376)
!376 = !{!377, !398, !399, !400, !401, !405, !406}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "commonHeader", scope: !375, file: !311, line: 183, baseType: !378, size: 184, align: 8)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "VixMsgHeader", file: !311, line: 170, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VixMsgHeader", file: !311, line: 158, size: 184, align: 8, elements: !380)
!380 = !{!381, !386, !390, !391, !392, !393, !394}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !379, file: !311, line: 159, baseType: !382, size: 32, align: 32)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !364, line: 173, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !384, line: 51, baseType: !385)
!384 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1538")
!385 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "messageVersion", scope: !379, file: !311, line: 160, baseType: !387, size: 16, align: 16, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !364, line: 175, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !384, line: 49, baseType: !389)
!389 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "totalMessageLength", scope: !379, file: !311, line: 162, baseType: !382, size: 32, align: 32, offset: 48)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "headerLength", scope: !379, file: !311, line: 163, baseType: !382, size: 32, align: 32, offset: 80)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "bodyLength", scope: !379, file: !311, line: 164, baseType: !382, size: 32, align: 32, offset: 112)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "credentialLength", scope: !379, file: !311, line: 165, baseType: !382, size: 32, align: 32, offset: 144)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "commonFlags", scope: !379, file: !311, line: 167, baseType: !395, size: 8, align: 8, offset: 176)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !364, line: 177, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !384, line: 48, baseType: !397)
!397 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "opCode", scope: !375, file: !311, line: 185, baseType: !382, size: 32, align: 32, offset: 184)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "requestFlags", scope: !375, file: !311, line: 186, baseType: !382, size: 32, align: 32, offset: 216)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "timeOut", scope: !375, file: !311, line: 188, baseType: !382, size: 32, align: 32, offset: 248)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !375, file: !311, line: 190, baseType: !402, size: 64, align: 64, offset: 280)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !364, line: 171, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !384, line: 55, baseType: !404)
!404 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "clientHandleId", scope: !375, file: !311, line: 191, baseType: !382, size: 32, align: 32, offset: 344)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "userCredentialType", scope: !375, file: !311, line: 193, baseType: !382, size: 32, align: 32, offset: 376)
!407 = !{!408, !431, !433, !435, !437, !439, !444, !449, !458, !460}
!408 = distinct !DIGlobalVariable(name: "resultBuffer", scope: !409, file: !410, line: 176, type: !428, isLocal: true, isDefinition: true, variable: [1024 x i8]* @FoundryToolsDaemonRunProgram.resultBuffer)
!409 = distinct !DISubprogram(name: "FoundryToolsDaemonRunProgram", scope: !410, file: !410, line: 166, type: !411, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !427)
!410 = !DIFile(filename: "foundryToolsDaemon.c", directory: "/home/lichi/Desktop/open-vm-tools/line1538")
!411 = !DISubroutineType(types: !412)
!412 = !{!335, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64, align: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcInData", file: !347, line: 77, baseType: !415)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcInData", file: !347, line: 51, size: 512, align: 64, elements: !416)
!416 = !{!417, !418, !419, !422, !423, !424, !425, !426}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !415, file: !347, line: 53, baseType: !358, size: 64, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !415, file: !347, line: 58, baseType: !358, size: 64, align: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "argsSize", scope: !415, file: !347, line: 60, baseType: !420, size: 64, align: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !421, line: 216, baseType: !404)
!421 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1538")
!422 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !415, file: !347, line: 65, baseType: !372, size: 64, align: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "resultLen", scope: !415, file: !347, line: 67, baseType: !420, size: 64, align: 64, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "freeResult", scope: !415, file: !347, line: 72, baseType: !335, size: 32, align: 32, offset: 320)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "appCtx", scope: !415, file: !347, line: 74, baseType: !321, size: 64, align: 64, offset: 384)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !415, file: !347, line: 76, baseType: !321, size: 64, align: 64, offset: 448)
!427 = !{}
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 8192, align: 8, elements: !429)
!429 = !{!430}
!430 = !DISubrange(count: 1024)
!431 = distinct !DIGlobalVariable(name: "resultBuffer", scope: !432, file: !410, line: 291, type: !428, isLocal: true, isDefinition: true, variable: [1024 x i8]* @FoundryToolsDaemonGetToolsProperties.resultBuffer)
!432 = distinct !DISubprogram(name: "FoundryToolsDaemonGetToolsProperties", scope: !410, file: !410, line: 287, type: !411, isLocal: false, isDefinition: true, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !427)
!433 = distinct !DIGlobalVariable(name: "resultBuffer", scope: !434, file: !410, line: 548, type: !428, isLocal: true, isDefinition: true, variable: [1024 x i8]* @ToolsDaemonTcloSyncDriverFreeze.resultBuffer)
!434 = distinct !DISubprogram(name: "ToolsDaemonTcloSyncDriverFreeze", scope: !410, file: !410, line: 546, type: !411, isLocal: false, isDefinition: true, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !427)
!435 = distinct !DIGlobalVariable(name: "resultBuffer", scope: !436, file: !410, line: 696, type: !428, isLocal: true, isDefinition: true, variable: [1024 x i8]* @ToolsDaemonTcloSyncDriverThaw.resultBuffer)
!436 = distinct !DISubprogram(name: "ToolsDaemonTcloSyncDriverThaw", scope: !410, file: !410, line: 694, type: !411, isLocal: false, isDefinition: true, scopeLine: 695, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !427)
!437 = distinct !DIGlobalVariable(name: "resultBuffer", scope: !438, file: !410, line: 815, type: !428, isLocal: true, isDefinition: true, variable: [1024 x i8]* @ToolsDaemonTcloMountHGFS.resultBuffer)
!438 = distinct !DISubprogram(name: "ToolsDaemonTcloMountHGFS", scope: !410, file: !410, line: 812, type: !411, isLocal: false, isDefinition: true, scopeLine: 813, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !427)
!439 = distinct !DIGlobalVariable(name: "resultPacket", scope: !440, file: !410, line: 991, type: !441, isLocal: true, isDefinition: true, variable: [63512 x i8]* @ToolsDaemonHgfsImpersonated.resultPacket)
!440 = distinct !DISubprogram(name: "ToolsDaemonHgfsImpersonated", scope: !410, file: !410, line: 978, type: !411, isLocal: false, isDefinition: true, scopeLine: 979, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !427)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 508096, align: 8, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 63512)
!444 = distinct !DIGlobalVariable(name: "tcloBuffer", scope: !445, file: !410, line: 1225, type: !446, isLocal: true, isDefinition: true, variable: [65536 x i8]* @ToolsDaemonTcloReceiveVixCommand.tcloBuffer)
!445 = distinct !DISubprogram(name: "ToolsDaemonTcloReceiveVixCommand", scope: !410, file: !410, line: 1204, type: !411, isLocal: false, isDefinition: true, scopeLine: 1205, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !427)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 524288, align: 8, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 65536)
!449 = distinct !DIGlobalVariable(name: "gFoundryHgfsBkdrConn", scope: !0, file: !410, line: 121, type: !450, isLocal: true, isDefinition: true, variable: %struct.HgfsServerMgrData* @gFoundryHgfsBkdrConn)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerMgrData", file: !451, line: 49, baseType: !452)
!451 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfsServerManager.h", directory: "/home/lichi/Desktop/open-vm-tools/line1538")
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsServerMgrData", file: !451, line: 44, size: 256, align: 64, elements: !453)
!453 = !{!454, !455, !456, !457}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "appName", scope: !452, file: !451, line: 45, baseType: !358, size: 64, align: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !452, file: !451, line: 46, baseType: !321, size: 64, align: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "rpcCallback", scope: !452, file: !451, line: 47, baseType: !321, size: 64, align: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !452, file: !451, line: 48, baseType: !321, size: 64, align: 64, offset: 192)
!458 = distinct !DIGlobalVariable(name: "thisProcessRunsAsRoot", scope: !0, file: !410, line: 145, type: !459, isLocal: true, isDefinition: true, variable: i8* @thisProcessRunsAsRoot)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !364, line: 230, baseType: !333)
!460 = distinct !DIGlobalVariable(name: "gSyncDriverHandle", scope: !0, file: !410, line: 107, type: !461, isLocal: true, isDefinition: true, variable: %struct.SyncHandle** @gSyncDriverHandle)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyncDriverHandle", file: !289, line: 41, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!463 = !DICompositeType(tag: DW_TAG_structure_type, name: "SyncHandle", file: !289, line: 41, flags: DIFlagFwdDecl)
!464 = !{i32 2, !"Dwarf Version", i32 4}
!465 = !{i32 2, !"Debug Info Version", i32 3}
!466 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!467 = !DILocalVariable(name: "data", arg: 1, scope: !409, file: !410, line: 166, type: !413)
!468 = !DIExpression()
!469 = !DILocation(line: 166, column: 41, scope: !409)
!470 = !DILocalVariable(name: "err", scope: !409, file: !410, line: 168, type: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "VixError", file: !4, line: 79, baseType: !402)
!472 = !DILocation(line: 168, column: 13, scope: !409)
!473 = !DILocalVariable(name: "requestName", scope: !409, file: !410, line: 169, type: !372)
!474 = !DILocation(line: 169, column: 10, scope: !409)
!475 = !DILocalVariable(name: "commandLine", scope: !409, file: !410, line: 170, type: !372)
!476 = !DILocation(line: 170, column: 10, scope: !409)
!477 = !DILocalVariable(name: "commandLineArgs", scope: !409, file: !410, line: 171, type: !372)
!478 = !DILocation(line: 171, column: 10, scope: !409)
!479 = !DILocalVariable(name: "credentialTypeStr", scope: !409, file: !410, line: 172, type: !372)
!480 = !DILocation(line: 172, column: 10, scope: !409)
!481 = !DILocalVariable(name: "obfuscatedNamePassword", scope: !409, file: !410, line: 173, type: !372)
!482 = !DILocation(line: 173, column: 10, scope: !409)
!483 = !DILocalVariable(name: "directoryPath", scope: !409, file: !410, line: 174, type: !372)
!484 = !DILocation(line: 174, column: 10, scope: !409)
!485 = !DILocalVariable(name: "environmentVariables", scope: !409, file: !410, line: 175, type: !372)
!486 = !DILocation(line: 175, column: 10, scope: !409)
!487 = !DILocalVariable(name: "impersonatingVMWareUser", scope: !409, file: !410, line: 177, type: !459)
!488 = !DILocation(line: 177, column: 9, scope: !409)
!489 = !DILocalVariable(name: "userToken", scope: !409, file: !410, line: 178, type: !321)
!490 = !DILocation(line: 178, column: 10, scope: !409)
!491 = !DILocalVariable(name: "pid", scope: !409, file: !410, line: 179, type: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProcMgr_Pid", file: !493, line: 47, baseType: !494)
!493 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/procMgr.h", directory: "/home/lichi/Desktop/open-vm-tools/line1538")
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !366, line: 98, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !496, line: 133, baseType: !337)
!496 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1538")
!497 = !DILocation(line: 179, column: 16, scope: !409)
!498 = !DILocalVariable(name: "eventQueue", scope: !409, file: !410, line: 180, type: !340)
!499 = !DILocation(line: 180, column: 15, scope: !409)
!500 = !DILocation(line: 180, column: 44, scope: !409)
!501 = !DILocation(line: 180, column: 50, scope: !409)
!502 = !DILocation(line: 180, column: 29, scope: !409)
!503 = !DILocation(line: 180, column: 59, scope: !409)
!504 = !DILocation(line: 186, column: 49, scope: !409)
!505 = !DILocation(line: 186, column: 55, scope: !409)
!506 = !DILocation(line: 186, column: 62, scope: !409)
!507 = !DILocation(line: 186, column: 68, scope: !409)
!508 = !DILocation(line: 186, column: 18, scope: !409)
!509 = !DILocation(line: 186, column: 16, scope: !409)
!510 = !DILocation(line: 188, column: 48, scope: !409)
!511 = !DILocation(line: 188, column: 54, scope: !409)
!512 = !DILocation(line: 188, column: 61, scope: !409)
!513 = !DILocation(line: 188, column: 67, scope: !409)
!514 = !DILocation(line: 188, column: 10, scope: !409)
!515 = !DILocation(line: 188, column: 8, scope: !409)
!516 = !DILocation(line: 190, column: 8, scope: !517)
!517 = distinct !DILexicalBlock(scope: !409, file: !410, line: 190, column: 8)
!518 = !DILocation(line: 190, column: 12, scope: !517)
!519 = !DILocation(line: 190, column: 8, scope: !409)
!520 = !DILocation(line: 191, column: 7, scope: !521)
!521 = distinct !DILexicalBlock(scope: !517, file: !410, line: 190, column: 23)
!522 = !DILocation(line: 194, column: 48, scope: !409)
!523 = !DILocation(line: 194, column: 54, scope: !409)
!524 = !DILocation(line: 194, column: 61, scope: !409)
!525 = !DILocation(line: 194, column: 67, scope: !409)
!526 = !DILocation(line: 194, column: 10, scope: !409)
!527 = !DILocation(line: 194, column: 8, scope: !409)
!528 = !DILocation(line: 196, column: 8, scope: !529)
!529 = distinct !DILexicalBlock(scope: !409, file: !410, line: 196, column: 8)
!530 = !DILocation(line: 196, column: 12, scope: !529)
!531 = !DILocation(line: 196, column: 8, scope: !409)
!532 = !DILocation(line: 197, column: 7, scope: !533)
!533 = distinct !DILexicalBlock(scope: !529, file: !410, line: 196, column: 23)
!534 = !DILocation(line: 200, column: 55, scope: !409)
!535 = !DILocation(line: 200, column: 61, scope: !409)
!536 = !DILocation(line: 200, column: 68, scope: !409)
!537 = !DILocation(line: 200, column: 74, scope: !409)
!538 = !DILocation(line: 200, column: 24, scope: !409)
!539 = !DILocation(line: 200, column: 22, scope: !409)
!540 = !DILocation(line: 201, column: 60, scope: !409)
!541 = !DILocation(line: 201, column: 66, scope: !409)
!542 = !DILocation(line: 201, column: 73, scope: !409)
!543 = !DILocation(line: 201, column: 79, scope: !409)
!544 = !DILocation(line: 201, column: 29, scope: !409)
!545 = !DILocation(line: 201, column: 27, scope: !409)
!546 = !DILocation(line: 202, column: 51, scope: !409)
!547 = !DILocation(line: 202, column: 57, scope: !409)
!548 = !DILocation(line: 202, column: 64, scope: !409)
!549 = !DILocation(line: 202, column: 70, scope: !409)
!550 = !DILocation(line: 202, column: 20, scope: !409)
!551 = !DILocation(line: 202, column: 18, scope: !409)
!552 = !DILocation(line: 203, column: 58, scope: !409)
!553 = !DILocation(line: 203, column: 64, scope: !409)
!554 = !DILocation(line: 203, column: 71, scope: !409)
!555 = !DILocation(line: 203, column: 77, scope: !409)
!556 = !DILocation(line: 203, column: 27, scope: !409)
!557 = !DILocation(line: 203, column: 25, scope: !409)
!558 = !DILocation(line: 210, column: 16, scope: !559)
!559 = distinct !DILexicalBlock(scope: !409, file: !410, line: 210, column: 8)
!560 = !DILocation(line: 210, column: 13, scope: !559)
!561 = !DILocation(line: 210, column: 29, scope: !559)
!562 = !DILocation(line: 210, column: 41, scope: !563)
!563 = !DILexicalBlockFile(scope: !559, file: !410, discriminator: 1)
!564 = !DILocation(line: 210, column: 38, scope: !563)
!565 = !DILocation(line: 210, column: 8, scope: !563)
!566 = !DILocation(line: 211, column: 11, scope: !567)
!567 = distinct !DILexicalBlock(scope: !559, file: !410, line: 210, column: 55)
!568 = !DILocation(line: 212, column: 7, scope: !567)
!569 = !DILocation(line: 215, column: 16, scope: !570)
!570 = distinct !DILexicalBlock(scope: !409, file: !410, line: 215, column: 8)
!571 = !DILocation(line: 215, column: 13, scope: !570)
!572 = !DILocation(line: 216, column: 10, scope: !570)
!573 = !DILocation(line: 216, column: 15, scope: !574)
!574 = !DILexicalBlockFile(scope: !570, file: !410, discriminator: 1)
!575 = !DILocation(line: 216, column: 14, scope: !574)
!576 = !DILocation(line: 216, column: 13, scope: !574)
!577 = !DILocation(line: 217, column: 10, scope: !570)
!578 = !DILocation(line: 217, column: 14, scope: !574)
!579 = !DILocation(line: 217, column: 13, scope: !574)
!580 = !DILocation(line: 215, column: 8, scope: !581)
!581 = !DILexicalBlockFile(scope: !409, file: !410, discriminator: 1)
!582 = !DILocation(line: 218, column: 61, scope: !583)
!583 = distinct !DILexicalBlock(scope: !570, file: !410, line: 217, column: 38)
!584 = !DILocation(line: 220, column: 61, scope: !583)
!585 = !DILocation(line: 218, column: 33, scope: !583)
!586 = !DILocation(line: 218, column: 31, scope: !583)
!587 = !DILocation(line: 222, column: 12, scope: !588)
!588 = distinct !DILexicalBlock(scope: !583, file: !410, line: 222, column: 11)
!589 = !DILocation(line: 222, column: 11, scope: !583)
!590 = !DILocation(line: 223, column: 14, scope: !591)
!591 = distinct !DILexicalBlock(scope: !588, file: !410, line: 222, column: 37)
!592 = !DILocation(line: 224, column: 10, scope: !591)
!593 = !DILocation(line: 226, column: 4, scope: !583)
!594 = !DILocation(line: 228, column: 33, scope: !409)
!595 = !DILocation(line: 229, column: 33, scope: !409)
!596 = !DILocation(line: 230, column: 33, scope: !409)
!597 = !DILocation(line: 232, column: 33, scope: !409)
!598 = !DILocation(line: 233, column: 33, scope: !409)
!599 = !DILocation(line: 234, column: 33, scope: !409)
!600 = !DILocation(line: 228, column: 10, scope: !409)
!601 = !DILocation(line: 228, column: 8, scope: !409)
!602 = !DILocation(line: 228, column: 4, scope: !409)
!603 = !DILocation(line: 237, column: 8, scope: !604)
!604 = distinct !DILexicalBlock(scope: !409, file: !410, line: 237, column: 8)
!605 = !DILocation(line: 237, column: 8, scope: !409)
!606 = !DILocation(line: 238, column: 33, scope: !607)
!607 = distinct !DILexicalBlock(scope: !604, file: !410, line: 237, column: 33)
!608 = !DILocation(line: 238, column: 7, scope: !607)
!609 = !DILocation(line: 239, column: 4, scope: !607)
!610 = !DILocation(line: 240, column: 23, scope: !409)
!611 = !DILocation(line: 240, column: 4, scope: !409)
!612 = !DILocation(line: 249, column: 16, scope: !409)
!613 = !DILocation(line: 250, column: 17, scope: !409)
!614 = !DILocation(line: 250, column: 16, scope: !409)
!615 = !DILocation(line: 251, column: 24, scope: !409)
!616 = !DILocation(line: 251, column: 16, scope: !409)
!617 = !DILocation(line: 246, column: 4, scope: !409)
!618 = !DILocation(line: 252, column: 26, scope: !409)
!619 = !DILocation(line: 252, column: 4, scope: !409)
!620 = !DILocation(line: 257, column: 9, scope: !409)
!621 = !DILocation(line: 257, column: 4, scope: !409)
!622 = !DILocation(line: 258, column: 9, scope: !409)
!623 = !DILocation(line: 258, column: 4, scope: !409)
!624 = !DILocation(line: 259, column: 9, scope: !409)
!625 = !DILocation(line: 259, column: 4, scope: !409)
!626 = !DILocation(line: 260, column: 9, scope: !409)
!627 = !DILocation(line: 260, column: 4, scope: !409)
!628 = !DILocation(line: 261, column: 9, scope: !409)
!629 = !DILocation(line: 261, column: 4, scope: !409)
!630 = !DILocation(line: 262, column: 9, scope: !409)
!631 = !DILocation(line: 262, column: 4, scope: !409)
!632 = !DILocation(line: 263, column: 9, scope: !409)
!633 = !DILocation(line: 263, column: 4, scope: !409)
!634 = !DILocation(line: 265, column: 4, scope: !409)
!635 = distinct !DISubprogram(name: "ToolsDaemonTcloGetQuotedString", scope: !410, file: !410, line: 446, type: !636, isLocal: true, isDefinition: true, scopeLine: 448, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !427)
!636 = !DISubroutineType(types: !637)
!637 = !{!372, !358, !357}
!638 = !DILocalVariable(name: "args", arg: 1, scope: !635, file: !410, line: 446, type: !358)
!639 = !DILocation(line: 446, column: 44, scope: !635)
!640 = !DILocalVariable(name: "endOfArg", arg: 2, scope: !635, file: !410, line: 447, type: !357)
!641 = !DILocation(line: 447, column: 45, scope: !635)
!642 = !DILocalVariable(name: "resultStr", scope: !635, file: !410, line: 449, type: !372)
!643 = !DILocation(line: 449, column: 10, scope: !635)
!644 = !DILocalVariable(name: "endStr", scope: !635, file: !410, line: 450, type: !372)
!645 = !DILocation(line: 450, column: 10, scope: !635)
!646 = !DILocation(line: 452, column: 4, scope: !635)
!647 = !DILocation(line: 452, column: 13, scope: !648)
!648 = !DILexicalBlockFile(scope: !635, file: !410, discriminator: 1)
!649 = !DILocation(line: 452, column: 12, scope: !648)
!650 = !DILocation(line: 452, column: 11, scope: !648)
!651 = !DILocation(line: 452, column: 19, scope: !648)
!652 = !DILocation(line: 452, column: 32, scope: !653)
!653 = !DILexicalBlockFile(scope: !635, file: !410, discriminator: 2)
!654 = !DILocation(line: 452, column: 31, scope: !653)
!655 = !DILocation(line: 452, column: 28, scope: !653)
!656 = !DILocation(line: 452, column: 4, scope: !657)
!657 = !DILexicalBlockFile(scope: !635, file: !410, discriminator: 3)
!658 = !DILocation(line: 453, column: 11, scope: !659)
!659 = distinct !DILexicalBlock(scope: !635, file: !410, line: 452, column: 39)
!660 = !DILocation(line: 452, column: 4, scope: !661)
!661 = !DILexicalBlockFile(scope: !635, file: !410, discriminator: 4)
!662 = distinct !{!662, !646}
!663 = !DILocation(line: 455, column: 17, scope: !664)
!664 = distinct !DILexicalBlock(scope: !635, file: !410, line: 455, column: 8)
!665 = !DILocation(line: 455, column: 16, scope: !664)
!666 = !DILocation(line: 455, column: 13, scope: !664)
!667 = !DILocation(line: 455, column: 8, scope: !635)
!668 = !DILocation(line: 456, column: 11, scope: !669)
!669 = distinct !DILexicalBlock(scope: !664, file: !410, line: 455, column: 23)
!670 = !DILocation(line: 457, column: 4, scope: !669)
!671 = !DILocation(line: 459, column: 33, scope: !635)
!672 = !DILocation(line: 459, column: 16, scope: !635)
!673 = !DILocation(line: 459, column: 14, scope: !635)
!674 = !DILocation(line: 461, column: 13, scope: !635)
!675 = !DILocation(line: 461, column: 11, scope: !635)
!676 = !DILocation(line: 462, column: 4, scope: !635)
!677 = !DILocation(line: 462, column: 12, scope: !648)
!678 = !DILocation(line: 462, column: 11, scope: !648)
!679 = !DILocation(line: 462, column: 4, scope: !648)
!680 = !DILocation(line: 463, column: 21, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !410, line: 463, column: 11)
!682 = distinct !DILexicalBlock(scope: !635, file: !410, line: 462, column: 20)
!683 = !DILocation(line: 463, column: 20, scope: !681)
!684 = !DILocation(line: 463, column: 17, scope: !681)
!685 = !DILocation(line: 463, column: 29, scope: !681)
!686 = !DILocation(line: 463, column: 35, scope: !687)
!687 = !DILexicalBlockFile(scope: !681, file: !410, discriminator: 1)
!688 = !DILocation(line: 463, column: 42, scope: !687)
!689 = !DILocation(line: 463, column: 33, scope: !687)
!690 = !DILocation(line: 463, column: 32, scope: !687)
!691 = !DILocation(line: 463, column: 11, scope: !687)
!692 = !DILocation(line: 464, column: 17, scope: !693)
!693 = distinct !DILexicalBlock(scope: !681, file: !410, line: 463, column: 49)
!694 = !DILocation(line: 465, column: 7, scope: !693)
!695 = !DILocation(line: 465, column: 27, scope: !696)
!696 = !DILexicalBlockFile(scope: !697, file: !410, discriminator: 1)
!697 = distinct !DILexicalBlock(scope: !681, file: !410, line: 465, column: 18)
!698 = !DILocation(line: 465, column: 26, scope: !696)
!699 = !DILocation(line: 465, column: 23, scope: !696)
!700 = !DILocation(line: 465, column: 18, scope: !696)
!701 = !DILocation(line: 466, column: 11, scope: !702)
!702 = distinct !DILexicalBlock(scope: !697, file: !410, line: 465, column: 35)
!703 = !DILocation(line: 466, column: 18, scope: !702)
!704 = !DILocation(line: 467, column: 16, scope: !702)
!705 = !DILocation(line: 468, column: 10, scope: !702)
!706 = !DILocation(line: 470, column: 16, scope: !707)
!707 = distinct !DILexicalBlock(scope: !697, file: !410, line: 469, column: 14)
!708 = !DILocation(line: 462, column: 4, scope: !653)
!709 = distinct !{!709, !676}
!710 = !DILocation(line: 474, column: 15, scope: !711)
!711 = distinct !DILexicalBlock(scope: !635, file: !410, line: 474, column: 7)
!712 = !DILocation(line: 474, column: 12, scope: !711)
!713 = !DILocation(line: 474, column: 7, scope: !635)
!714 = !DILocation(line: 475, column: 16, scope: !715)
!715 = distinct !DILexicalBlock(scope: !711, file: !410, line: 474, column: 25)
!716 = !DILocation(line: 475, column: 25, scope: !715)
!717 = !DILocation(line: 475, column: 23, scope: !715)
!718 = !DILocation(line: 475, column: 12, scope: !715)
!719 = !DILocation(line: 476, column: 7, scope: !715)
!720 = !DILocation(line: 476, column: 22, scope: !721)
!721 = !DILexicalBlockFile(scope: !715, file: !410, discriminator: 1)
!722 = !DILocation(line: 476, column: 21, scope: !721)
!723 = !DILocation(line: 476, column: 18, scope: !721)
!724 = !DILocation(line: 476, column: 7, scope: !721)
!725 = !DILocation(line: 477, column: 14, scope: !726)
!726 = distinct !DILexicalBlock(scope: !715, file: !410, line: 476, column: 28)
!727 = !DILocation(line: 476, column: 7, scope: !728)
!728 = !DILexicalBlockFile(scope: !715, file: !410, discriminator: 2)
!729 = distinct !{!729, !719}
!730 = !DILocation(line: 479, column: 19, scope: !715)
!731 = !DILocation(line: 479, column: 8, scope: !715)
!732 = !DILocation(line: 479, column: 17, scope: !715)
!733 = !DILocation(line: 480, column: 4, scope: !715)
!734 = !DILocation(line: 482, column: 11, scope: !635)
!735 = !DILocation(line: 482, column: 4, scope: !635)
!736 = distinct !DISubprogram(name: "ToolsDaemonTcloGetEncodedQuotedString", scope: !410, file: !410, line: 504, type: !737, isLocal: true, isDefinition: true, scopeLine: 507, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !427)
!737 = !DISubroutineType(types: !738)
!738 = !{!471, !358, !357, !739}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!740 = !DILocalVariable(name: "args", arg: 1, scope: !736, file: !410, line: 504, type: !358)
!741 = !DILocation(line: 504, column: 51, scope: !736)
!742 = !DILocalVariable(name: "endOfArg", arg: 2, scope: !736, file: !410, line: 505, type: !357)
!743 = !DILocation(line: 505, column: 52, scope: !736)
!744 = !DILocalVariable(name: "result", arg: 3, scope: !736, file: !410, line: 506, type: !739)
!745 = !DILocation(line: 506, column: 46, scope: !736)
!746 = !DILocalVariable(name: "err", scope: !736, file: !410, line: 508, type: !471)
!747 = !DILocation(line: 508, column: 13, scope: !736)
!748 = !DILocalVariable(name: "rawResultStr", scope: !736, file: !410, line: 509, type: !372)
!749 = !DILocation(line: 509, column: 10, scope: !736)
!750 = !DILocalVariable(name: "resultStr", scope: !736, file: !410, line: 510, type: !372)
!751 = !DILocation(line: 510, column: 10, scope: !736)
!752 = !DILocation(line: 512, column: 50, scope: !736)
!753 = !DILocation(line: 512, column: 56, scope: !736)
!754 = !DILocation(line: 512, column: 19, scope: !736)
!755 = !DILocation(line: 512, column: 17, scope: !736)
!756 = !DILocation(line: 513, column: 15, scope: !757)
!757 = distinct !DILexicalBlock(scope: !736, file: !410, line: 513, column: 7)
!758 = !DILocation(line: 513, column: 12, scope: !757)
!759 = !DILocation(line: 513, column: 7, scope: !736)
!760 = !DILocation(line: 514, column: 7, scope: !761)
!761 = distinct !DILexicalBlock(scope: !757, file: !410, line: 513, column: 29)
!762 = !DILocation(line: 517, column: 30, scope: !736)
!763 = !DILocation(line: 517, column: 10, scope: !736)
!764 = !DILocation(line: 517, column: 8, scope: !736)
!765 = !DILocation(line: 517, column: 4, scope: !736)
!766 = !DILocation(line: 520, column: 9, scope: !736)
!767 = !DILocation(line: 520, column: 4, scope: !736)
!768 = !DILocation(line: 521, column: 14, scope: !736)
!769 = !DILocation(line: 521, column: 5, scope: !736)
!770 = !DILocation(line: 521, column: 12, scope: !736)
!771 = !DILocation(line: 523, column: 11, scope: !736)
!772 = !DILocation(line: 523, column: 4, scope: !736)
!773 = !DILocalVariable(name: "data", arg: 1, scope: !432, file: !410, line: 287, type: !413)
!774 = !DILocation(line: 287, column: 49, scope: !432)
!775 = !DILocalVariable(name: "err", scope: !432, file: !410, line: 289, type: !471)
!776 = !DILocation(line: 289, column: 13, scope: !432)
!777 = !DILocalVariable(name: "additionalError", scope: !432, file: !410, line: 290, type: !337)
!778 = !DILocation(line: 290, column: 8, scope: !432)
!779 = !DILocalVariable(name: "serializedBuffer", scope: !432, file: !410, line: 292, type: !372)
!780 = !DILocation(line: 292, column: 10, scope: !432)
!781 = !DILocalVariable(name: "serializedBufferLength", scope: !432, file: !410, line: 293, type: !420)
!782 = !DILocation(line: 293, column: 11, scope: !432)
!783 = !DILocalVariable(name: "base64Buffer", scope: !432, file: !410, line: 294, type: !372)
!784 = !DILocation(line: 294, column: 10, scope: !432)
!785 = !DILocalVariable(name: "base64BufferLength", scope: !432, file: !410, line: 295, type: !420)
!786 = !DILocation(line: 295, column: 11, scope: !432)
!787 = !DILocalVariable(name: "success", scope: !432, file: !410, line: 296, type: !459)
!788 = !DILocation(line: 296, column: 9, scope: !432)
!789 = !DILocalVariable(name: "returnBuffer", scope: !432, file: !410, line: 297, type: !372)
!790 = !DILocation(line: 297, column: 10, scope: !432)
!791 = !DILocalVariable(name: "confDictRef", scope: !432, file: !410, line: 298, type: !350)
!792 = !DILocation(line: 298, column: 14, scope: !432)
!793 = !DILocation(line: 303, column: 18, scope: !432)
!794 = !DILocation(line: 303, column: 24, scope: !432)
!795 = !DILocation(line: 303, column: 16, scope: !432)
!796 = !DILocation(line: 305, column: 42, scope: !432)
!797 = !DILocation(line: 305, column: 10, scope: !432)
!798 = !DILocation(line: 305, column: 8, scope: !432)
!799 = !DILocation(line: 308, column: 18, scope: !800)
!800 = distinct !DILexicalBlock(scope: !432, file: !410, line: 308, column: 8)
!801 = !DILocation(line: 308, column: 15, scope: !800)
!802 = !DILocation(line: 308, column: 8, scope: !432)
!803 = !DILocation(line: 309, column: 49, scope: !804)
!804 = distinct !DILexicalBlock(scope: !800, file: !410, line: 308, column: 23)
!805 = !DILocation(line: 309, column: 67, scope: !804)
!806 = !DILocation(line: 309, column: 28, scope: !804)
!807 = !DILocation(line: 309, column: 91, scope: !804)
!808 = !DILocation(line: 309, column: 26, scope: !804)
!809 = !DILocation(line: 310, column: 39, scope: !804)
!810 = !DILocation(line: 310, column: 22, scope: !804)
!811 = !DILocation(line: 310, column: 20, scope: !804)
!812 = !DILocation(line: 311, column: 31, scope: !804)
!813 = !DILocation(line: 312, column: 31, scope: !804)
!814 = !DILocation(line: 313, column: 31, scope: !804)
!815 = !DILocation(line: 314, column: 31, scope: !804)
!816 = !DILocation(line: 311, column: 17, scope: !804)
!817 = !DILocation(line: 311, column: 15, scope: !804)
!818 = !DILocation(line: 316, column: 12, scope: !819)
!819 = distinct !DILexicalBlock(scope: !804, file: !410, line: 316, column: 11)
!820 = !DILocation(line: 316, column: 11, scope: !804)
!821 = !DILocation(line: 317, column: 10, scope: !822)
!822 = distinct !DILexicalBlock(scope: !819, file: !410, line: 316, column: 21)
!823 = !DILocation(line: 317, column: 26, scope: !822)
!824 = !DILocation(line: 318, column: 14, scope: !822)
!825 = !DILocation(line: 319, column: 10, scope: !822)
!826 = !DILocation(line: 321, column: 20, scope: !804)
!827 = !DILocation(line: 321, column: 7, scope: !804)
!828 = !DILocation(line: 321, column: 40, scope: !804)
!829 = !DILocation(line: 322, column: 4, scope: !804)
!830 = !DILocation(line: 308, column: 18, scope: !831)
!831 = !DILexicalBlockFile(scope: !800, file: !410, discriminator: 1)
!832 = !DILocation(line: 326, column: 19, scope: !432)
!833 = !DILocation(line: 326, column: 17, scope: !432)
!834 = !DILocation(line: 327, column: 15, scope: !835)
!835 = distinct !DILexicalBlock(scope: !432, file: !410, line: 327, column: 7)
!836 = !DILocation(line: 327, column: 12, scope: !835)
!837 = !DILocation(line: 327, column: 7, scope: !432)
!838 = !DILocation(line: 328, column: 20, scope: !839)
!839 = distinct !DILexicalBlock(scope: !835, file: !410, line: 327, column: 29)
!840 = !DILocation(line: 329, column: 4, scope: !839)
!841 = !DILocation(line: 330, column: 18, scope: !842)
!842 = distinct !DILexicalBlock(scope: !432, file: !410, line: 330, column: 8)
!843 = !DILocation(line: 330, column: 15, scope: !842)
!844 = !DILocation(line: 330, column: 8, scope: !432)
!845 = !DILocation(line: 331, column: 26, scope: !846)
!846 = distinct !DILexicalBlock(scope: !842, file: !410, line: 330, column: 23)
!847 = !DILocation(line: 331, column: 25, scope: !846)
!848 = !DILocation(line: 331, column: 23, scope: !846)
!849 = !DILocation(line: 332, column: 4, scope: !846)
!850 = !DILocation(line: 341, column: 16, scope: !432)
!851 = !DILocation(line: 342, column: 16, scope: !432)
!852 = !DILocation(line: 343, column: 16, scope: !432)
!853 = !DILocation(line: 338, column: 4, scope: !432)
!854 = !DILocation(line: 344, column: 26, scope: !432)
!855 = !DILocation(line: 344, column: 4, scope: !432)
!856 = !DILocation(line: 346, column: 9, scope: !432)
!857 = !DILocation(line: 346, column: 4, scope: !432)
!858 = !DILocation(line: 347, column: 9, scope: !432)
!859 = !DILocation(line: 347, column: 4, scope: !432)
!860 = !DILocation(line: 349, column: 4, scope: !432)
!861 = distinct !DISubprogram(name: "FoundryToolsDaemon_Initialize", scope: !410, file: !410, line: 360, type: !862, isLocal: false, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !427)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !322}
!864 = !DILocalVariable(name: "ctx", arg: 1, scope: !861, file: !410, line: 360, type: !322)
!865 = !DILocation(line: 360, column: 44, scope: !861)
!866 = !DILocation(line: 362, column: 37, scope: !861)
!867 = !DILocation(line: 362, column: 43, scope: !861)
!868 = !DILocation(line: 362, column: 29, scope: !861)
!869 = !DILocation(line: 362, column: 58, scope: !861)
!870 = !DILocation(line: 362, column: 28, scope: !861)
!871 = !DILocation(line: 362, column: 26, scope: !861)
!872 = !DILocation(line: 369, column: 31, scope: !861)
!873 = !DILocation(line: 376, column: 31, scope: !861)
!874 = !DILocation(line: 369, column: 11, scope: !861)
!875 = !DILocation(line: 379, column: 8, scope: !876)
!876 = distinct !DILexicalBlock(scope: !861, file: !410, line: 379, column: 8)
!877 = !DILocation(line: 379, column: 8, scope: !861)
!878 = !DILocation(line: 380, column: 7, scope: !879)
!879 = distinct !DILexicalBlock(scope: !876, file: !410, line: 379, column: 31)
!880 = !DILocation(line: 381, column: 4, scope: !879)
!881 = !DILocation(line: 385, column: 4, scope: !861)
!882 = distinct !{!882, !881}
!883 = !DILocation(line: 385, column: 42, scope: !884)
!884 = !DILexicalBlockFile(scope: !885, file: !410, discriminator: 1)
!885 = distinct !DILexicalBlock(scope: !861, file: !410, line: 385, column: 7)
!886 = !DILocation(line: 385, column: 103, scope: !884)
!887 = !DILocation(line: 385, column: 43, scope: !884)
!888 = !DILocation(line: 385, column: 5, scope: !884)
!889 = !DILocation(line: 389, column: 4, scope: !861)
!890 = !DILocation(line: 391, column: 1, scope: !861)
!891 = distinct !DISubprogram(name: "ToolsDaemonTcloReportProgramCompleted", scope: !410, file: !410, line: 1161, type: !892, isLocal: false, isDefinition: true, scopeLine: 1166, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !427)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !358, !471, !337, !363, !321}
!894 = !DILocalVariable(name: "requestName", arg: 1, scope: !891, file: !410, line: 1161, type: !358)
!895 = !DILocation(line: 1161, column: 51, scope: !891)
!896 = !DILocalVariable(name: "err", arg: 2, scope: !891, file: !410, line: 1162, type: !471)
!897 = !DILocation(line: 1162, column: 48, scope: !891)
!898 = !DILocalVariable(name: "exitCode", arg: 3, scope: !891, file: !410, line: 1163, type: !337)
!899 = !DILocation(line: 1163, column: 43, scope: !891)
!900 = !DILocalVariable(name: "pid", arg: 4, scope: !891, file: !410, line: 1164, type: !363)
!901 = !DILocation(line: 1164, column: 45, scope: !891)
!902 = !DILocalVariable(name: "clientData", arg: 5, scope: !891, file: !410, line: 1165, type: !321)
!903 = !DILocation(line: 1165, column: 45, scope: !891)
!904 = !DILocalVariable(name: "sentResult", scope: !891, file: !410, line: 1167, type: !459)
!905 = !DILocation(line: 1167, column: 9, scope: !891)
!906 = !DILocalVariable(name: "ctx", scope: !891, file: !410, line: 1168, type: !322)
!907 = !DILocation(line: 1168, column: 17, scope: !891)
!908 = !DILocation(line: 1168, column: 23, scope: !891)
!909 = !DILocalVariable(name: "msg", scope: !891, file: !410, line: 1169, type: !910)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!911 = !DILocation(line: 1169, column: 11, scope: !891)
!912 = !DILocation(line: 1171, column: 33, scope: !891)
!913 = !DILocation(line: 1172, column: 33, scope: !891)
!914 = !DILocation(line: 1173, column: 34, scope: !891)
!915 = !DILocation(line: 1173, column: 33, scope: !891)
!916 = !DILocation(line: 1174, column: 33, scope: !891)
!917 = !DILocation(line: 1175, column: 41, scope: !891)
!918 = !DILocation(line: 1169, column: 17, scope: !891)
!919 = !DILocation(line: 1177, column: 33, scope: !891)
!920 = !DILocation(line: 1177, column: 38, scope: !891)
!921 = !DILocation(line: 1177, column: 43, scope: !891)
!922 = !DILocation(line: 1177, column: 55, scope: !891)
!923 = !DILocation(line: 1177, column: 48, scope: !891)
!924 = !DILocation(line: 1177, column: 60, scope: !891)
!925 = !DILocation(line: 1177, column: 17, scope: !926)
!926 = !DILexicalBlockFile(scope: !891, file: !410, discriminator: 1)
!927 = !DILocation(line: 1177, column: 17, scope: !891)
!928 = !DILocation(line: 1177, column: 15, scope: !891)
!929 = !DILocation(line: 1178, column: 11, scope: !891)
!930 = !DILocation(line: 1178, column: 4, scope: !891)
!931 = !DILocation(line: 1180, column: 9, scope: !932)
!932 = distinct !DILexicalBlock(scope: !891, file: !410, line: 1180, column: 8)
!933 = !DILocation(line: 1180, column: 8, scope: !891)
!934 = !DILocation(line: 1181, column: 7, scope: !935)
!935 = distinct !DILexicalBlock(scope: !932, file: !410, line: 1180, column: 21)
!936 = !DILocation(line: 1183, column: 4, scope: !935)
!937 = !DILocation(line: 1184, column: 1, scope: !891)
!938 = distinct !DISubprogram(name: "FoundryToolsDaemon_Uninitialize", scope: !410, file: !410, line: 401, type: !862, isLocal: false, isDefinition: true, scopeLine: 402, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !427)
!939 = !DILocalVariable(name: "ctx", arg: 1, scope: !938, file: !410, line: 401, type: !322)
!940 = !DILocation(line: 401, column: 46, scope: !938)
!941 = !DILocation(line: 403, column: 4, scope: !938)
!942 = !DILocation(line: 404, column: 4, scope: !938)
!943 = !DILocation(line: 405, column: 1, scope: !938)
!944 = distinct !DISubprogram(name: "FoundryToolsDaemon_RestrictVixCommands", scope: !410, file: !410, line: 416, type: !945, isLocal: false, isDefinition: true, scopeLine: 417, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !427)
!945 = !DISubroutineType(types: !946)
!946 = !{null, !322, !335}
!947 = !DILocalVariable(name: "ctx", arg: 1, scope: !944, file: !410, line: 416, type: !322)
!948 = !DILocation(line: 416, column: 53, scope: !944)
!949 = !DILocalVariable(name: "restricted", arg: 2, scope: !944, file: !410, line: 416, type: !335)
!950 = !DILocation(line: 416, column: 67, scope: !944)
!951 = !DILocation(line: 418, column: 30, scope: !944)
!952 = !DILocation(line: 418, column: 4, scope: !944)
!953 = !DILocation(line: 419, column: 1, scope: !944)
!954 = !DILocalVariable(name: "data", arg: 1, scope: !434, file: !410, line: 546, type: !413)
!955 = !DILocation(line: 546, column: 44, scope: !434)
!956 = !DILocalVariable(name: "err", scope: !434, file: !410, line: 549, type: !471)
!957 = !DILocation(line: 549, column: 13, scope: !434)
!958 = !DILocalVariable(name: "driveList", scope: !434, file: !410, line: 550, type: !372)
!959 = !DILocation(line: 550, column: 10, scope: !434)
!960 = !DILocalVariable(name: "timeout", scope: !434, file: !410, line: 551, type: !372)
!961 = !DILocation(line: 551, column: 10, scope: !434)
!962 = !DILocalVariable(name: "timeoutVal", scope: !434, file: !410, line: 552, type: !337)
!963 = !DILocation(line: 552, column: 8, scope: !434)
!964 = !DILocalVariable(name: "sysError", scope: !434, file: !410, line: 553, type: !337)
!965 = !DILocation(line: 553, column: 8, scope: !434)
!966 = !DILocalVariable(name: "ctx", scope: !434, file: !410, line: 554, type: !322)
!967 = !DILocation(line: 554, column: 17, scope: !434)
!968 = !DILocation(line: 554, column: 23, scope: !434)
!969 = !DILocation(line: 554, column: 29, scope: !434)
!970 = !DILocalVariable(name: "confDictRef", scope: !434, file: !410, line: 555, type: !350)
!971 = !DILocation(line: 555, column: 14, scope: !434)
!972 = !DILocation(line: 555, column: 28, scope: !434)
!973 = !DILocation(line: 555, column: 33, scope: !434)
!974 = !DILocalVariable(name: "enableNullDriver", scope: !434, file: !410, line: 556, type: !459)
!975 = !DILocation(line: 556, column: 9, scope: !434)
!976 = !DILocalVariable(name: "timer", scope: !434, file: !410, line: 557, type: !977)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64, align: 64)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !342, line: 64, baseType: !979)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !342, line: 171, size: 768, align: 64, elements: !980)
!980 = !{!981, !982, !998, !1027, !1029, !1033, !1034, !1035, !1036, !1044, !1045, !1046, !1047}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !979, file: !342, line: 174, baseType: !361, size: 64, align: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !979, file: !342, line: 175, baseType: !983, size: 64, align: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64, align: 64)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !342, line: 77, baseType: !985)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !342, line: 196, size: 192, align: 64, elements: !986)
!986 = !{!987, !991, !992}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !985, file: !342, line: 198, baseType: !988, size: 64, align: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64, align: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{null, !361}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !985, file: !342, line: 199, baseType: !988, size: 64, align: 64, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !985, file: !342, line: 200, baseType: !993, size: 64, align: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64, align: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{null, !361, !977, !996, !997}
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !979, file: !342, line: 177, baseType: !999, size: 64, align: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64, align: 64)
!1000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1001)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !342, line: 130, baseType: !1002)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !342, line: 214, size: 384, align: 64, elements: !1003)
!1003 = !{!1004, !1009, !1013, !1017, !1021, !1022}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1002, file: !342, line: 216, baseType: !1005, size: 64, align: 64)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64, align: 64)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!335, !977, !1008}
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1002, file: !342, line: 218, baseType: !1010, size: 64, align: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64, align: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!335, !977}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !1002, file: !342, line: 219, baseType: !1014, size: 64, align: 64, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64, align: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!335, !977, !368, !361}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !1002, file: !342, line: 222, baseType: !1018, size: 64, align: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64, align: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{null, !977}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !1002, file: !342, line: 226, baseType: !368, size: 64, align: 64, offset: 256)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !1002, file: !342, line: 227, baseType: !1023, size: 64, align: 64, offset: 320)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !342, line: 212, baseType: !1024)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64, align: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !979, file: !342, line: 178, baseType: !1028, size: 32, align: 32, offset: 192)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !332, line: 55, baseType: !385)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !979, file: !342, line: 180, baseType: !1030, size: 64, align: 64, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64, align: 64)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !342, line: 48, baseType: !1032)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !342, line: 48, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !979, file: !342, line: 182, baseType: !336, size: 32, align: 32, offset: 320)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !979, file: !342, line: 183, baseType: !1028, size: 32, align: 32, offset: 352)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !979, file: !342, line: 184, baseType: !1028, size: 32, align: 32, offset: 384)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !979, file: !342, line: 186, baseType: !1037, size: 64, align: 64, offset: 448)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64, align: 64)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !1039, line: 37, baseType: !1040)
!1039 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/open-vm-tools/line1538")
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !1039, line: 39, size: 128, align: 64, elements: !1041)
!1041 = !{!1042, !1043}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1040, file: !1039, line: 41, baseType: !361, size: 64, align: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1040, file: !1039, line: 42, baseType: !1037, size: 64, align: 64, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !979, file: !342, line: 188, baseType: !977, size: 64, align: 64, offset: 512)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !979, file: !342, line: 189, baseType: !977, size: 64, align: 64, offset: 576)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !979, file: !342, line: 191, baseType: !372, size: 64, align: 64, offset: 640)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !979, file: !342, line: 193, baseType: !1048, size: 64, align: 64, offset: 704)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64, align: 64)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !342, line: 65, baseType: !1050)
!1050 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !342, line: 65, flags: DIFlagFwdDecl)
!1051 = !DILocation(line: 557, column: 13, scope: !434)
!1052 = !DILocation(line: 562, column: 47, scope: !434)
!1053 = !DILocation(line: 562, column: 53, scope: !434)
!1054 = !DILocation(line: 562, column: 60, scope: !434)
!1055 = !DILocation(line: 562, column: 66, scope: !434)
!1056 = !DILocation(line: 562, column: 16, scope: !434)
!1057 = !DILocation(line: 562, column: 14, scope: !434)
!1058 = !DILocation(line: 563, column: 45, scope: !434)
!1059 = !DILocation(line: 563, column: 51, scope: !434)
!1060 = !DILocation(line: 563, column: 58, scope: !434)
!1061 = !DILocation(line: 563, column: 64, scope: !434)
!1062 = !DILocation(line: 563, column: 14, scope: !434)
!1063 = !DILocation(line: 563, column: 12, scope: !434)
!1064 = !DILocation(line: 568, column: 15, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !434, file: !410, line: 568, column: 7)
!1066 = !DILocation(line: 568, column: 12, scope: !1065)
!1067 = !DILocation(line: 568, column: 25, scope: !1065)
!1068 = !DILocation(line: 568, column: 36, scope: !1069)
!1069 = !DILexicalBlockFile(scope: !1065, file: !410, discriminator: 1)
!1070 = !DILocation(line: 568, column: 33, scope: !1069)
!1071 = !DILocation(line: 568, column: 7, scope: !1069)
!1072 = !DILocation(line: 569, column: 11, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1065, file: !410, line: 568, column: 45)
!1074 = !DILocation(line: 570, column: 7, scope: !1073)
!1075 = !DILocation(line: 571, column: 7, scope: !1073)
!1076 = !DILocation(line: 574, column: 39, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !434, file: !410, line: 574, column: 8)
!1078 = !DILocation(line: 574, column: 9, scope: !1077)
!1079 = !DILocation(line: 574, column: 48, scope: !1077)
!1080 = !DILocation(line: 574, column: 51, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1077, file: !410, discriminator: 1)
!1082 = !DILocation(line: 574, column: 62, scope: !1081)
!1083 = !DILocation(line: 574, column: 8, scope: !1081)
!1084 = !DILocation(line: 575, column: 88, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1077, file: !410, line: 574, column: 67)
!1086 = !DILocation(line: 575, column: 7, scope: !1085)
!1087 = !DILocation(line: 577, column: 11, scope: !1085)
!1088 = !DILocation(line: 578, column: 7, scope: !1085)
!1089 = !DILocation(line: 581, column: 99, scope: !434)
!1090 = !DILocation(line: 581, column: 110, scope: !434)
!1091 = !DILocation(line: 581, column: 4, scope: !434)
!1092 = !DILocation(line: 585, column: 8, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !434, file: !410, line: 585, column: 8)
!1094 = !DILocation(line: 585, column: 26, scope: !1093)
!1095 = !DILocation(line: 585, column: 8, scope: !434)
!1096 = !DILocation(line: 586, column: 11, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1093, file: !410, line: 585, column: 55)
!1098 = !DILocation(line: 587, column: 7, scope: !1097)
!1099 = !DILocation(line: 590, column: 49, scope: !434)
!1100 = !DILocation(line: 590, column: 23, scope: !434)
!1101 = !DILocation(line: 590, column: 21, scope: !434)
!1102 = !DILocation(line: 596, column: 27, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !434, file: !410, line: 596, column: 8)
!1104 = !DILocation(line: 596, column: 38, scope: !1103)
!1105 = !DILocation(line: 596, column: 9, scope: !1103)
!1106 = !DILocation(line: 597, column: 32, scope: !1103)
!1107 = !DILocation(line: 598, column: 31, scope: !1103)
!1108 = !DILocation(line: 598, column: 8, scope: !1103)
!1109 = !DILocation(line: 598, column: 54, scope: !1103)
!1110 = !DILocation(line: 596, column: 8, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !434, file: !410, discriminator: 1)
!1112 = !DILocation(line: 599, column: 94, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1103, file: !410, line: 598, column: 74)
!1114 = !DILocation(line: 599, column: 7, scope: !1113)
!1115 = !DILocation(line: 601, column: 11, scope: !1113)
!1116 = !DILocation(line: 602, column: 19, scope: !1113)
!1117 = !DILocation(line: 602, column: 18, scope: !1113)
!1118 = !DILocation(line: 602, column: 16, scope: !1113)
!1119 = !DILocation(line: 603, column: 11, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1113, file: !410, line: 603, column: 11)
!1121 = !DILocation(line: 603, column: 29, scope: !1120)
!1122 = !DILocation(line: 603, column: 11, scope: !1113)
!1123 = !DILocation(line: 604, column: 26, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1120, file: !410, line: 603, column: 58)
!1125 = !DILocation(line: 604, column: 10, scope: !1124)
!1126 = !DILocation(line: 605, column: 10, scope: !1124)
!1127 = !DILocation(line: 606, column: 7, scope: !1124)
!1128 = !DILocation(line: 607, column: 7, scope: !1113)
!1129 = !DILocation(line: 611, column: 13, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !434, file: !410, line: 611, column: 8)
!1131 = !DILocation(line: 611, column: 10, scope: !1130)
!1132 = !DILocation(line: 611, column: 8, scope: !434)
!1133 = !DILocation(line: 612, column: 90, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1130, file: !410, line: 611, column: 25)
!1135 = !DILocation(line: 612, column: 7, scope: !1134)
!1136 = !DILocation(line: 614, column: 36, scope: !1134)
!1137 = !DILocation(line: 614, column: 47, scope: !1134)
!1138 = !DILocation(line: 614, column: 15, scope: !1134)
!1139 = !DILocation(line: 614, column: 13, scope: !1134)
!1140 = !DILocation(line: 615, column: 7, scope: !1134)
!1141 = distinct !{!1141, !1140}
!1142 = !DILocalVariable(name: "__src", scope: !1143, file: !410, line: 615, type: !977)
!1143 = distinct !DILexicalBlock(scope: !1134, file: !410, line: 615, column: 10)
!1144 = !DILocation(line: 615, column: 21, scope: !1143)
!1145 = !DILocation(line: 615, column: 30, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1143, file: !410, discriminator: 1)
!1147 = !DILocation(line: 615, column: 21, scope: !1146)
!1148 = !DILocation(line: 615, column: 60, scope: !1146)
!1149 = !DILocation(line: 615, column: 38, scope: !1146)
!1150 = !DILocation(line: 615, column: 26, scope: !1146)
!1151 = !DILocation(line: 615, column: 58, scope: !1146)
!1152 = !DILocation(line: 615, column: 64, scope: !1146)
!1153 = !DILocation(line: 615, column: 33, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !1146, file: !410, discriminator: 2)
!1155 = !DILocation(line: 615, column: 10, scope: !1156)
!1156 = !DILexicalBlockFile(scope: !1146, file: !410, discriminator: 3)
!1157 = !DILocation(line: 615, column: 76, scope: !1146)
!1158 = !DILocation(line: 616, column: 22, scope: !1134)
!1159 = !DILocation(line: 616, column: 7, scope: !1134)
!1160 = !DILocation(line: 617, column: 4, scope: !1134)
!1161 = !DILocation(line: 611, column: 13, scope: !1162)
!1162 = !DILexicalBlockFile(scope: !1130, file: !410, discriminator: 1)
!1163 = !DILocation(line: 623, column: 9, scope: !434)
!1164 = !DILocation(line: 623, column: 4, scope: !434)
!1165 = !DILocation(line: 624, column: 9, scope: !434)
!1166 = !DILocation(line: 624, column: 4, scope: !434)
!1167 = !DILocation(line: 630, column: 65, scope: !434)
!1168 = !DILocation(line: 630, column: 70, scope: !434)
!1169 = !DILocation(line: 630, column: 4, scope: !434)
!1170 = !DILocation(line: 631, column: 4, scope: !434)
!1171 = !DILocation(line: 632, column: 33, scope: !434)
!1172 = !DILocation(line: 632, column: 11, scope: !434)
!1173 = !DILocation(line: 632, column: 4, scope: !434)
!1174 = distinct !DISubprogram(name: "ToolsDaemonSyncDriverThawCallback", scope: !410, file: !410, line: 656, type: !1175, isLocal: true, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !427)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!459, !321}
!1177 = !DILocalVariable(name: "clientData", arg: 1, scope: !1174, file: !410, line: 656, type: !321)
!1178 = !DILocation(line: 656, column: 41, scope: !1174)
!1179 = !DILocation(line: 658, column: 4, scope: !1174)
!1180 = !DILocation(line: 660, column: 8, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1174, file: !410, line: 660, column: 8)
!1182 = !DILocation(line: 660, column: 26, scope: !1181)
!1183 = !DILocation(line: 660, column: 8, scope: !1174)
!1184 = !DILocation(line: 661, column: 7, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1181, file: !410, line: 660, column: 55)
!1186 = !DILocation(line: 662, column: 7, scope: !1185)
!1187 = !DILocation(line: 664, column: 25, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1174, file: !410, line: 664, column: 8)
!1189 = !DILocation(line: 664, column: 9, scope: !1188)
!1190 = !DILocation(line: 664, column: 8, scope: !1174)
!1191 = !DILocation(line: 665, column: 7, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1188, file: !410, line: 664, column: 45)
!1193 = !DILocation(line: 666, column: 4, scope: !1192)
!1194 = !DILocation(line: 664, column: 42, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1188, file: !410, discriminator: 1)
!1196 = !DILocation(line: 669, column: 4, scope: !1174)
!1197 = !DILocation(line: 670, column: 4, scope: !1174)
!1198 = !DILocalVariable(name: "data", arg: 1, scope: !436, file: !410, line: 694, type: !413)
!1199 = !DILocation(line: 694, column: 42, scope: !436)
!1200 = !DILocalVariable(name: "err", scope: !436, file: !410, line: 697, type: !471)
!1201 = !DILocation(line: 697, column: 13, scope: !436)
!1202 = !DILocalVariable(name: "sysError", scope: !436, file: !410, line: 698, type: !337)
!1203 = !DILocation(line: 698, column: 8, scope: !436)
!1204 = !DILocation(line: 704, column: 4, scope: !436)
!1205 = !DILocation(line: 706, column: 8, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !436, file: !410, line: 706, column: 8)
!1207 = !DILocation(line: 706, column: 26, scope: !1206)
!1208 = !DILocation(line: 706, column: 8, scope: !436)
!1209 = !DILocation(line: 707, column: 11, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1206, file: !410, line: 706, column: 55)
!1211 = !DILocation(line: 708, column: 19, scope: !1210)
!1212 = !DILocation(line: 708, column: 18, scope: !1210)
!1213 = !DILocation(line: 708, column: 16, scope: !1210)
!1214 = !DILocation(line: 709, column: 7, scope: !1210)
!1215 = !DILocation(line: 710, column: 4, scope: !1210)
!1216 = !DILocation(line: 710, column: 32, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !1218, file: !410, discriminator: 1)
!1218 = distinct !DILexicalBlock(scope: !1206, file: !410, line: 710, column: 15)
!1219 = !DILocation(line: 710, column: 16, scope: !1217)
!1220 = !DILocation(line: 710, column: 15, scope: !1217)
!1221 = !DILocation(line: 711, column: 11, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1218, file: !410, line: 710, column: 52)
!1223 = !DILocation(line: 712, column: 19, scope: !1222)
!1224 = !DILocation(line: 712, column: 18, scope: !1222)
!1225 = !DILocation(line: 712, column: 16, scope: !1222)
!1226 = !DILocation(line: 713, column: 7, scope: !1222)
!1227 = !DILocation(line: 714, column: 4, scope: !1222)
!1228 = !DILocation(line: 716, column: 4, scope: !436)
!1229 = !DILocation(line: 722, column: 65, scope: !436)
!1230 = !DILocation(line: 722, column: 70, scope: !436)
!1231 = !DILocation(line: 722, column: 4, scope: !436)
!1232 = !DILocation(line: 723, column: 4, scope: !436)
!1233 = !DILocation(line: 724, column: 33, scope: !436)
!1234 = !DILocation(line: 724, column: 11, scope: !436)
!1235 = !DILocation(line: 724, column: 4, scope: !436)
!1236 = !DILocalVariable(name: "data", arg: 1, scope: !438, file: !410, line: 812, type: !413)
!1237 = !DILocation(line: 812, column: 37, scope: !438)
!1238 = !DILocalVariable(name: "err", scope: !438, file: !410, line: 814, type: !471)
!1239 = !DILocation(line: 814, column: 13, scope: !438)
!1240 = !DILocalVariable(name: "vmhgfsExecProcArgs", scope: !438, file: !410, line: 828, type: !1241)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProcMgr_ProcArgs", file: !493, line: 123, baseType: !1242)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ProcMgr_ProcArgs", file: !493, line: 70, size: 128, align: 64, elements: !1243)
!1243 = !{!1244, !1245}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1242, file: !493, line: 115, baseType: !739, size: 64, align: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "workingDirectory", scope: !1242, file: !493, line: 121, baseType: !372, size: 64, align: 64, offset: 64)
!1246 = !DILocation(line: 828, column: 21, scope: !438)
!1247 = !DILocalVariable(name: "execRes", scope: !438, file: !410, line: 829, type: !459)
!1248 = !DILocation(line: 829, column: 9, scope: !438)
!1249 = !DILocalVariable(name: "mountCmd", scope: !438, file: !410, line: 830, type: !358)
!1250 = !DILocation(line: 830, column: 16, scope: !438)
!1251 = !DILocalVariable(name: "isFuseEnabled", scope: !438, file: !410, line: 831, type: !459)
!1252 = !DILocation(line: 831, column: 9, scope: !438)
!1253 = !DILocalVariable(name: "vmhgfsMntFound", scope: !438, file: !410, line: 832, type: !459)
!1254 = !DILocation(line: 832, column: 9, scope: !438)
!1255 = !DILocalVariable(name: "vmhgfsMntPointCreated", scope: !438, file: !410, line: 833, type: !459)
!1256 = !DILocation(line: 833, column: 9, scope: !438)
!1257 = !DILocalVariable(name: "validFuseExitCode", scope: !438, file: !410, line: 834, type: !459)
!1258 = !DILocation(line: 834, column: 9, scope: !438)
!1259 = !DILocalVariable(name: "fuseExitCode", scope: !438, file: !410, line: 835, type: !337)
!1260 = !DILocation(line: 835, column: 8, scope: !438)
!1261 = !DILocalVariable(name: "ret", scope: !438, file: !410, line: 836, type: !337)
!1262 = !DILocation(line: 836, column: 8, scope: !438)
!1263 = !DILocation(line: 838, column: 23, scope: !438)
!1264 = !DILocation(line: 838, column: 28, scope: !438)
!1265 = !DILocation(line: 839, column: 23, scope: !438)
!1266 = !DILocation(line: 839, column: 40, scope: !438)
!1267 = !DILocation(line: 841, column: 14, scope: !438)
!1268 = !DILocation(line: 841, column: 12, scope: !438)
!1269 = !DILocation(line: 845, column: 9, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !438, file: !410, line: 845, column: 8)
!1271 = !DILocation(line: 845, column: 8, scope: !438)
!1272 = !DILocation(line: 846, column: 11, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !410, line: 846, column: 11)
!1274 = distinct !DILexicalBlock(scope: !1270, file: !410, line: 845, column: 18)
!1275 = !DILocation(line: 846, column: 29, scope: !1273)
!1276 = !DILocation(line: 846, column: 32, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !1273, file: !410, discriminator: 1)
!1278 = !DILocation(line: 846, column: 45, scope: !1277)
!1279 = !DILocation(line: 846, column: 11, scope: !1277)
!1280 = !DILocation(line: 847, column: 10, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1273, file: !410, line: 846, column: 51)
!1282 = !DILocation(line: 848, column: 14, scope: !1281)
!1283 = !DILocation(line: 849, column: 10, scope: !1281)
!1284 = !DILocation(line: 851, column: 121, scope: !1274)
!1285 = !DILocation(line: 851, column: 141, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !1274, file: !410, discriminator: 1)
!1287 = !DILocation(line: 851, column: 121, scope: !1286)
!1288 = !DILocation(line: 851, column: 121, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !1274, file: !410, discriminator: 2)
!1290 = !DILocation(line: 851, column: 121, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1274, file: !410, discriminator: 3)
!1292 = !DILocation(line: 851, column: 7, scope: !1291)
!1293 = !DILocation(line: 853, column: 21, scope: !1274)
!1294 = !DILocation(line: 854, column: 4, scope: !1274)
!1295 = !DILocation(line: 856, column: 38, scope: !438)
!1296 = !DILocation(line: 856, column: 10, scope: !438)
!1297 = !DILocation(line: 856, column: 8, scope: !438)
!1298 = !DILocation(line: 857, column: 8, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !438, file: !410, line: 857, column: 8)
!1300 = !DILocation(line: 857, column: 12, scope: !1299)
!1301 = !DILocation(line: 857, column: 8, scope: !438)
!1302 = !DILocation(line: 858, column: 7, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1299, file: !410, line: 857, column: 23)
!1304 = !DILocation(line: 861, column: 8, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !438, file: !410, line: 861, column: 8)
!1306 = !DILocation(line: 861, column: 8, scope: !438)
!1307 = !DILocation(line: 862, column: 7, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1305, file: !410, line: 861, column: 24)
!1309 = !DILocation(line: 863, column: 7, scope: !1308)
!1310 = !DILocation(line: 867, column: 10, scope: !438)
!1311 = !DILocation(line: 867, column: 8, scope: !438)
!1312 = !DILocation(line: 868, column: 8, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !438, file: !410, line: 868, column: 8)
!1314 = !DILocation(line: 868, column: 12, scope: !1313)
!1315 = !DILocation(line: 868, column: 8, scope: !438)
!1316 = !DILocation(line: 869, column: 7, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1313, file: !410, line: 868, column: 18)
!1318 = !DILocation(line: 870, column: 13, scope: !1317)
!1319 = !DILocation(line: 870, column: 11, scope: !1317)
!1320 = !DILocation(line: 871, column: 11, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1317, file: !410, line: 871, column: 11)
!1322 = !DILocation(line: 871, column: 15, scope: !1321)
!1323 = !DILocation(line: 871, column: 11, scope: !1317)
!1324 = !DILocation(line: 872, column: 14, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1321, file: !410, line: 871, column: 21)
!1326 = !DILocation(line: 873, column: 11, scope: !1325)
!1327 = !DILocation(line: 873, column: 10, scope: !1325)
!1328 = !DILocation(line: 873, column: 10, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1325, file: !410, discriminator: 1)
!1330 = !DILocation(line: 874, column: 10, scope: !1325)
!1331 = !DILocation(line: 876, column: 29, scope: !1317)
!1332 = !DILocation(line: 877, column: 4, scope: !1317)
!1333 = !DILocation(line: 880, column: 8, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !438, file: !410, line: 880, column: 8)
!1335 = !DILocation(line: 880, column: 8, scope: !438)
!1336 = !DILocation(line: 881, column: 16, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1334, file: !410, line: 880, column: 23)
!1338 = !DILocation(line: 882, column: 4, scope: !1337)
!1339 = !DILocation(line: 889, column: 13, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1334, file: !410, line: 882, column: 11)
!1341 = !DILocation(line: 889, column: 11, scope: !1340)
!1342 = !DILocation(line: 890, column: 11, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1340, file: !410, line: 890, column: 11)
!1344 = !DILocation(line: 890, column: 15, scope: !1343)
!1345 = !DILocation(line: 890, column: 11, scope: !1340)
!1346 = !DILocation(line: 891, column: 19, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1343, file: !410, line: 890, column: 21)
!1348 = !DILocation(line: 892, column: 7, scope: !1347)
!1349 = !DILocation(line: 893, column: 16, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1343, file: !410, line: 892, column: 14)
!1351 = !DILocation(line: 893, column: 14, scope: !1350)
!1352 = !DILocation(line: 894, column: 14, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1350, file: !410, line: 894, column: 14)
!1354 = !DILocation(line: 894, column: 18, scope: !1353)
!1355 = !DILocation(line: 894, column: 14, scope: !1350)
!1356 = !DILocation(line: 895, column: 22, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1353, file: !410, line: 894, column: 24)
!1358 = !DILocation(line: 896, column: 10, scope: !1357)
!1359 = !DILocation(line: 897, column: 14, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1353, file: !410, line: 896, column: 17)
!1361 = !DILocation(line: 897, column: 13, scope: !1360)
!1362 = !DILocation(line: 897, column: 13, scope: !1363)
!1363 = !DILexicalBlockFile(scope: !1360, file: !410, discriminator: 1)
!1364 = !DILocation(line: 898, column: 17, scope: !1360)
!1365 = !DILocation(line: 899, column: 13, scope: !1360)
!1366 = !DILocation(line: 904, column: 73, scope: !438)
!1367 = !DILocation(line: 904, column: 4, scope: !438)
!1368 = !DILocation(line: 905, column: 31, scope: !438)
!1369 = !DILocation(line: 905, column: 14, scope: !438)
!1370 = !DILocation(line: 905, column: 12, scope: !438)
!1371 = !DILocation(line: 906, column: 9, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !438, file: !410, line: 906, column: 8)
!1373 = !DILocation(line: 906, column: 8, scope: !438)
!1374 = !DILocation(line: 907, column: 11, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1372, file: !410, line: 906, column: 18)
!1376 = !DILocation(line: 908, column: 7, scope: !1375)
!1377 = !DILocation(line: 909, column: 4, scope: !1375)
!1378 = !DILocation(line: 906, column: 9, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !1372, file: !410, discriminator: 1)
!1380 = !DILocation(line: 911, column: 8, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !438, file: !410, line: 911, column: 8)
!1382 = !DILocation(line: 911, column: 12, scope: !1381)
!1383 = !DILocation(line: 911, column: 8, scope: !438)
!1384 = !DILocation(line: 912, column: 11, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !410, line: 912, column: 11)
!1386 = distinct !DILexicalBlock(scope: !1381, file: !410, line: 911, column: 23)
!1387 = !DILocation(line: 912, column: 11, scope: !1386)
!1388 = !DILocation(line: 913, column: 16, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1385, file: !410, line: 912, column: 34)
!1390 = !DILocation(line: 913, column: 14, scope: !1389)
!1391 = !DILocation(line: 914, column: 14, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1389, file: !410, line: 914, column: 14)
!1393 = !DILocation(line: 914, column: 18, scope: !1392)
!1394 = !DILocation(line: 914, column: 14, scope: !1389)
!1395 = !DILocation(line: 915, column: 14, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1392, file: !410, line: 914, column: 24)
!1397 = !DILocation(line: 915, column: 13, scope: !1396)
!1398 = !DILocation(line: 915, column: 13, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1396, file: !410, discriminator: 1)
!1400 = !DILocation(line: 916, column: 10, scope: !1396)
!1401 = !DILocation(line: 917, column: 7, scope: !1389)
!1402 = !DILocation(line: 918, column: 4, scope: !1386)
!1403 = !DILocation(line: 928, column: 16, scope: !438)
!1404 = !DILocation(line: 929, column: 17, scope: !438)
!1405 = !DILocation(line: 929, column: 16, scope: !438)
!1406 = !DILocation(line: 925, column: 4, scope: !438)
!1407 = !DILocation(line: 930, column: 26, scope: !438)
!1408 = !DILocation(line: 930, column: 4, scope: !438)
!1409 = !DILocation(line: 932, column: 4, scope: !438)
!1410 = !DILocation(line: 934, column: 4, scope: !438)
!1411 = distinct !DISubprogram(name: "ToolsDaemonCheckMountedHGFS", scope: !410, file: !410, line: 748, type: !1412, isLocal: true, isDefinition: true, scopeLine: 750, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !427)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!471, !459, !1414}
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!1415 = !DILocalVariable(name: "isFuseEnabled", arg: 1, scope: !1411, file: !410, line: 748, type: !459)
!1416 = !DILocation(line: 748, column: 34, scope: !1411)
!1417 = !DILocalVariable(name: "vmhgfsMntFound", arg: 2, scope: !1411, file: !410, line: 749, type: !1414)
!1418 = !DILocation(line: 749, column: 35, scope: !1411)
!1419 = !DILocalVariable(name: "mtab", scope: !1411, file: !410, line: 751, type: !1420)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64, align: 64)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1422, line: 48, baseType: !1423)
!1422 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1538")
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1424, line: 241, size: 1728, align: 64, elements: !1425)
!1424 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1538")
!1425 = !{!1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1446, !1447, !1448, !1449, !1451, !1452, !1454, !1458, !1461, !1463, !1464, !1465, !1466, !1467, !1468, !1469}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1423, file: !1424, line: 242, baseType: !337, size: 32, align: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1423, file: !1424, line: 247, baseType: !372, size: 64, align: 64, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1423, file: !1424, line: 248, baseType: !372, size: 64, align: 64, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1423, file: !1424, line: 249, baseType: !372, size: 64, align: 64, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1423, file: !1424, line: 250, baseType: !372, size: 64, align: 64, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1423, file: !1424, line: 251, baseType: !372, size: 64, align: 64, offset: 320)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1423, file: !1424, line: 252, baseType: !372, size: 64, align: 64, offset: 384)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1423, file: !1424, line: 253, baseType: !372, size: 64, align: 64, offset: 448)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1423, file: !1424, line: 254, baseType: !372, size: 64, align: 64, offset: 512)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1423, file: !1424, line: 256, baseType: !372, size: 64, align: 64, offset: 576)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1423, file: !1424, line: 257, baseType: !372, size: 64, align: 64, offset: 640)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1423, file: !1424, line: 258, baseType: !372, size: 64, align: 64, offset: 704)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1423, file: !1424, line: 260, baseType: !1439, size: 64, align: 64, offset: 768)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64, align: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1424, line: 156, size: 192, align: 64, elements: !1441)
!1441 = !{!1442, !1443, !1445}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1440, file: !1424, line: 157, baseType: !1439, size: 64, align: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1440, file: !1424, line: 158, baseType: !1444, size: 64, align: 64, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64, align: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1440, file: !1424, line: 162, baseType: !337, size: 32, align: 32, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1423, file: !1424, line: 262, baseType: !1444, size: 64, align: 64, offset: 832)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1423, file: !1424, line: 264, baseType: !337, size: 32, align: 32, offset: 896)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1423, file: !1424, line: 268, baseType: !337, size: 32, align: 32, offset: 928)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1423, file: !1424, line: 270, baseType: !1450, size: 64, align: 64, offset: 960)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !496, line: 131, baseType: !367)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1423, file: !1424, line: 274, baseType: !389, size: 16, align: 16, offset: 1024)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1423, file: !1424, line: 275, baseType: !1453, size: 8, align: 8, offset: 1040)
!1453 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1423, file: !1424, line: 276, baseType: !1455, size: 8, align: 8, offset: 1048)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 8, align: 8, elements: !1456)
!1456 = !{!1457}
!1457 = !DISubrange(count: 1)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1423, file: !1424, line: 280, baseType: !1459, size: 64, align: 64, offset: 1088)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64, align: 64)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1424, line: 150, baseType: null)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1423, file: !1424, line: 289, baseType: !1462, size: 64, align: 64, offset: 1152)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !496, line: 132, baseType: !367)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1423, file: !1424, line: 297, baseType: !321, size: 64, align: 64, offset: 1216)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1423, file: !1424, line: 298, baseType: !321, size: 64, align: 64, offset: 1280)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1423, file: !1424, line: 299, baseType: !321, size: 64, align: 64, offset: 1344)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1423, file: !1424, line: 300, baseType: !321, size: 64, align: 64, offset: 1408)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1423, file: !1424, line: 302, baseType: !420, size: 64, align: 64, offset: 1472)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1423, file: !1424, line: 303, baseType: !337, size: 32, align: 32, offset: 1536)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1423, file: !1424, line: 305, baseType: !1470, size: 160, align: 8, offset: 1568)
!1470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 160, align: 8, elements: !1471)
!1471 = !{!1472}
!1472 = !DISubrange(count: 20)
!1473 = !DILocation(line: 751, column: 11, scope: !1411)
!1474 = !DILocalVariable(name: "mnt", scope: !1411, file: !410, line: 752, type: !1475)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64, align: 64)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mntent", file: !1477, line: 53, size: 320, align: 64, elements: !1478)
!1477 = !DIFile(filename: "/usr/include/mntent.h", directory: "/home/lichi/Desktop/open-vm-tools/line1538")
!1478 = !{!1479, !1480, !1481, !1482, !1483, !1484}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsname", scope: !1476, file: !1477, line: 55, baseType: !372, size: 64, align: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_dir", scope: !1476, file: !1477, line: 56, baseType: !372, size: 64, align: 64, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_type", scope: !1476, file: !1477, line: 57, baseType: !372, size: 64, align: 64, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_opts", scope: !1476, file: !1477, line: 58, baseType: !372, size: 64, align: 64, offset: 192)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_freq", scope: !1476, file: !1477, line: 59, baseType: !337, size: 32, align: 32, offset: 256)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_passno", scope: !1476, file: !1477, line: 60, baseType: !337, size: 32, align: 32, offset: 288)
!1485 = !DILocation(line: 752, column: 19, scope: !1411)
!1486 = !DILocalVariable(name: "fsName", scope: !1411, file: !410, line: 753, type: !358)
!1487 = !DILocation(line: 753, column: 16, scope: !1411)
!1488 = !DILocalVariable(name: "fsType", scope: !1411, file: !410, line: 754, type: !358)
!1489 = !DILocation(line: 754, column: 16, scope: !1411)
!1490 = !DILocalVariable(name: "err", scope: !1411, file: !410, line: 755, type: !471)
!1491 = !DILocation(line: 755, column: 13, scope: !1411)
!1492 = !DILocation(line: 757, column: 16, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1411, file: !410, line: 757, column: 8)
!1494 = !DILocation(line: 757, column: 14, scope: !1493)
!1495 = !DILocation(line: 757, column: 23, scope: !1493)
!1496 = !DILocation(line: 757, column: 8, scope: !1411)
!1497 = !DILocation(line: 758, column: 11, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1493, file: !410, line: 757, column: 43)
!1499 = !DILocation(line: 759, column: 8, scope: !1498)
!1500 = !DILocation(line: 759, column: 7, scope: !1498)
!1501 = !DILocation(line: 759, column: 7, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1498, file: !410, discriminator: 1)
!1503 = !DILocation(line: 760, column: 7, scope: !1498)
!1504 = !DILocation(line: 763, column: 5, scope: !1411)
!1505 = !DILocation(line: 763, column: 20, scope: !1411)
!1506 = !DILocation(line: 764, column: 8, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1411, file: !410, line: 764, column: 8)
!1508 = !DILocation(line: 764, column: 8, scope: !1411)
!1509 = !DILocation(line: 765, column: 14, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1507, file: !410, line: 764, column: 23)
!1511 = !DILocation(line: 766, column: 14, scope: !1510)
!1512 = !DILocation(line: 767, column: 4, scope: !1510)
!1513 = !DILocation(line: 768, column: 14, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1507, file: !410, line: 767, column: 11)
!1515 = !DILocation(line: 769, column: 14, scope: !1514)
!1516 = !DILocation(line: 771, column: 4, scope: !1411)
!1517 = !DILocation(line: 771, column: 35, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1411, file: !410, discriminator: 1)
!1519 = !DILocation(line: 771, column: 19, scope: !1518)
!1520 = !DILocation(line: 771, column: 17, scope: !1518)
!1521 = !DILocation(line: 771, column: 42, scope: !1518)
!1522 = !DILocation(line: 771, column: 4, scope: !1518)
!1523 = !DILocation(line: 772, column: 19, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !410, line: 772, column: 11)
!1525 = distinct !DILexicalBlock(scope: !1411, file: !410, line: 771, column: 13)
!1526 = !DILocation(line: 772, column: 24, scope: !1524)
!1527 = !DILocation(line: 772, column: 36, scope: !1524)
!1528 = !DILocation(line: 772, column: 12, scope: !1524)
!1529 = !DILocation(line: 772, column: 44, scope: !1524)
!1530 = !DILocation(line: 772, column: 50, scope: !1524)
!1531 = !DILocation(line: 773, column: 21, scope: !1524)
!1532 = !DILocation(line: 773, column: 26, scope: !1524)
!1533 = !DILocation(line: 773, column: 36, scope: !1524)
!1534 = !DILocation(line: 773, column: 14, scope: !1524)
!1535 = !DILocation(line: 773, column: 44, scope: !1524)
!1536 = !DILocation(line: 773, column: 50, scope: !1524)
!1537 = !DILocation(line: 774, column: 21, scope: !1524)
!1538 = !DILocation(line: 774, column: 26, scope: !1524)
!1539 = !DILocation(line: 774, column: 14, scope: !1524)
!1540 = !DILocation(line: 774, column: 48, scope: !1524)
!1541 = !DILocation(line: 772, column: 11, scope: !1542)
!1542 = !DILexicalBlockFile(scope: !1525, file: !410, discriminator: 1)
!1543 = !DILocation(line: 775, column: 11, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1524, file: !410, line: 774, column: 55)
!1545 = !DILocation(line: 775, column: 26, scope: !1544)
!1546 = !DILocation(line: 776, column: 103, scope: !1544)
!1547 = !DILocation(line: 776, column: 108, scope: !1544)
!1548 = !DILocation(line: 776, column: 120, scope: !1544)
!1549 = !DILocation(line: 776, column: 125, scope: !1544)
!1550 = !DILocation(line: 776, column: 135, scope: !1544)
!1551 = !DILocation(line: 776, column: 140, scope: !1544)
!1552 = !DILocation(line: 776, column: 10, scope: !1544)
!1553 = !DILocation(line: 778, column: 10, scope: !1544)
!1554 = !DILocation(line: 771, column: 4, scope: !1555)
!1555 = !DILexicalBlockFile(scope: !1411, file: !410, discriminator: 2)
!1556 = distinct !{!1556, !1516}
!1557 = !DILocation(line: 781, column: 15, scope: !1411)
!1558 = !DILocation(line: 781, column: 5, scope: !1411)
!1559 = !DILocation(line: 781, column: 21, scope: !1411)
!1560 = !DILocation(line: 781, column: 4, scope: !1411)
!1561 = !DILocation(line: 784, column: 11, scope: !1411)
!1562 = !DILocation(line: 784, column: 4, scope: !1411)
!1563 = !DILocalVariable(name: "data", arg: 1, scope: !440, file: !410, line: 978, type: !413)
!1564 = !DILocation(line: 978, column: 40, scope: !440)
!1565 = !DILocalVariable(name: "err", scope: !440, file: !410, line: 980, type: !471)
!1566 = !DILocation(line: 980, column: 13, scope: !440)
!1567 = !DILocalVariable(name: "hgfsPacketSize", scope: !440, file: !410, line: 981, type: !420)
!1568 = !DILocation(line: 981, column: 11, scope: !440)
!1569 = !DILocalVariable(name: "hgfsReplySize", scope: !440, file: !410, line: 982, type: !420)
!1570 = !DILocation(line: 982, column: 11, scope: !440)
!1571 = !DILocalVariable(name: "origArgs", scope: !440, file: !410, line: 983, type: !358)
!1572 = !DILocation(line: 983, column: 16, scope: !440)
!1573 = !DILocation(line: 983, column: 27, scope: !440)
!1574 = !DILocation(line: 983, column: 33, scope: !440)
!1575 = !DILocalVariable(name: "impersonatingVMWareUser", scope: !440, file: !410, line: 984, type: !459)
!1576 = !DILocation(line: 984, column: 9, scope: !440)
!1577 = !DILocalVariable(name: "credentialTypeStr", scope: !440, file: !410, line: 985, type: !372)
!1578 = !DILocation(line: 985, column: 10, scope: !440)
!1579 = !DILocalVariable(name: "obfuscatedNamePassword", scope: !440, file: !410, line: 986, type: !372)
!1580 = !DILocation(line: 986, column: 10, scope: !440)
!1581 = !DILocalVariable(name: "userToken", scope: !440, file: !410, line: 987, type: !321)
!1582 = !DILocation(line: 987, column: 10, scope: !440)
!1583 = !DILocalVariable(name: "actualUsed", scope: !440, file: !410, line: 988, type: !337)
!1584 = !DILocation(line: 988, column: 8, scope: !440)
!1585 = !DILocalVariable(name: "hgfsReplyPacket", scope: !440, file: !410, line: 994, type: !372)
!1586 = !DILocation(line: 994, column: 10, scope: !440)
!1587 = !DILocation(line: 999, column: 8, scope: !440)
!1588 = !DILocation(line: 1010, column: 4, scope: !440)
!1589 = distinct !{!1589, !1588}
!1590 = !DILocation(line: 1010, column: 89, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1592, file: !410, discriminator: 1)
!1592 = distinct !DILexicalBlock(scope: !440, file: !410, line: 1010, column: 7)
!1593 = !DILocation(line: 1015, column: 55, scope: !440)
!1594 = !DILocation(line: 1015, column: 61, scope: !440)
!1595 = !DILocation(line: 1015, column: 68, scope: !440)
!1596 = !DILocation(line: 1015, column: 74, scope: !440)
!1597 = !DILocation(line: 1015, column: 24, scope: !440)
!1598 = !DILocation(line: 1015, column: 22, scope: !440)
!1599 = !DILocation(line: 1016, column: 60, scope: !440)
!1600 = !DILocation(line: 1016, column: 66, scope: !440)
!1601 = !DILocation(line: 1016, column: 73, scope: !440)
!1602 = !DILocation(line: 1016, column: 79, scope: !440)
!1603 = !DILocation(line: 1016, column: 29, scope: !440)
!1604 = !DILocation(line: 1016, column: 27, scope: !440)
!1605 = !DILocation(line: 1021, column: 16, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !440, file: !410, line: 1021, column: 8)
!1607 = !DILocation(line: 1021, column: 13, scope: !1606)
!1608 = !DILocation(line: 1021, column: 35, scope: !1606)
!1609 = !DILocation(line: 1021, column: 47, scope: !1610)
!1610 = !DILexicalBlockFile(scope: !1606, file: !410, discriminator: 1)
!1611 = !DILocation(line: 1021, column: 44, scope: !1610)
!1612 = !DILocation(line: 1021, column: 8, scope: !1610)
!1613 = !DILocation(line: 1022, column: 11, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1606, file: !410, line: 1021, column: 72)
!1615 = !DILocation(line: 1023, column: 7, scope: !1614)
!1616 = !DILocation(line: 1032, column: 10, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !440, file: !410, line: 1032, column: 8)
!1618 = !DILocation(line: 1032, column: 16, scope: !1617)
!1619 = !DILocation(line: 1032, column: 23, scope: !1617)
!1620 = !DILocation(line: 1032, column: 21, scope: !1617)
!1621 = !DILocation(line: 1032, column: 36, scope: !1617)
!1622 = !DILocation(line: 1032, column: 42, scope: !1617)
!1623 = !DILocation(line: 1032, column: 33, scope: !1617)
!1624 = !DILocation(line: 1032, column: 52, scope: !1617)
!1625 = !DILocation(line: 1032, column: 65, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !1617, file: !410, discriminator: 1)
!1627 = !DILocation(line: 1032, column: 71, scope: !1626)
!1628 = !DILocation(line: 1032, column: 63, scope: !1626)
!1629 = !DILocation(line: 1032, column: 60, scope: !1626)
!1630 = !DILocation(line: 1032, column: 8, scope: !1626)
!1631 = !DILocation(line: 1036, column: 11, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1617, file: !410, line: 1032, column: 79)
!1633 = !DILocation(line: 1037, column: 7, scope: !1632)
!1634 = !DILocation(line: 1039, column: 4, scope: !440)
!1635 = !DILocation(line: 1039, column: 10, scope: !440)
!1636 = !DILocation(line: 1039, column: 14, scope: !440)
!1637 = !DILocation(line: 1046, column: 21, scope: !440)
!1638 = !DILocation(line: 1046, column: 27, scope: !440)
!1639 = !DILocation(line: 1046, column: 39, scope: !440)
!1640 = !DILocation(line: 1046, column: 45, scope: !440)
!1641 = !DILocation(line: 1046, column: 52, scope: !440)
!1642 = !DILocation(line: 1046, column: 50, scope: !440)
!1643 = !DILocation(line: 1046, column: 36, scope: !440)
!1644 = !DILocation(line: 1046, column: 19, scope: !440)
!1645 = !DILocation(line: 1047, column: 8, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !440, file: !410, line: 1047, column: 8)
!1647 = !DILocation(line: 1047, column: 23, scope: !1646)
!1648 = !DILocation(line: 1047, column: 8, scope: !440)
!1649 = !DILocation(line: 1048, column: 11, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1646, file: !410, line: 1047, column: 29)
!1651 = !DILocation(line: 1049, column: 7, scope: !1650)
!1652 = !DILocation(line: 1052, column: 8, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !440, file: !410, line: 1052, column: 8)
!1654 = !DILocation(line: 1052, column: 8, scope: !440)
!1655 = !DILocation(line: 1053, column: 61, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1653, file: !410, line: 1052, column: 31)
!1657 = !DILocation(line: 1055, column: 61, scope: !1656)
!1658 = !DILocation(line: 1053, column: 33, scope: !1656)
!1659 = !DILocation(line: 1053, column: 31, scope: !1656)
!1660 = !DILocation(line: 1057, column: 12, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1656, file: !410, line: 1057, column: 11)
!1662 = !DILocation(line: 1057, column: 11, scope: !1656)
!1663 = !DILocation(line: 1058, column: 14, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1661, file: !410, line: 1057, column: 37)
!1665 = !DILocation(line: 1059, column: 10, scope: !1664)
!1666 = !DILocation(line: 1061, column: 4, scope: !1656)
!1667 = !DILocation(line: 1067, column: 43, scope: !440)
!1668 = !DILocation(line: 1067, column: 59, scope: !440)
!1669 = !DILocation(line: 1067, column: 40, scope: !440)
!1670 = !DILocation(line: 1067, column: 18, scope: !440)
!1671 = !DILocation(line: 1069, column: 36, scope: !440)
!1672 = !DILocation(line: 1069, column: 42, scope: !440)
!1673 = !DILocation(line: 1070, column: 36, scope: !440)
!1674 = !DILocation(line: 1071, column: 36, scope: !440)
!1675 = !DILocation(line: 1068, column: 4, scope: !440)
!1676 = !DILocation(line: 1075, column: 8, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !440, file: !410, line: 1075, column: 8)
!1678 = !DILocation(line: 1075, column: 8, scope: !440)
!1679 = !DILocation(line: 1076, column: 33, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1677, file: !410, line: 1075, column: 33)
!1681 = !DILocation(line: 1076, column: 7, scope: !1680)
!1682 = !DILocation(line: 1077, column: 4, scope: !1680)
!1683 = !DILocation(line: 1078, column: 23, scope: !440)
!1684 = !DILocation(line: 1078, column: 4, scope: !440)
!1685 = !DILocation(line: 1083, column: 9, scope: !440)
!1686 = !DILocation(line: 1083, column: 4, scope: !440)
!1687 = !DILocation(line: 1084, column: 9, scope: !440)
!1688 = !DILocation(line: 1084, column: 4, scope: !440)
!1689 = !DILocation(line: 1086, column: 4, scope: !440)
!1690 = !DILocation(line: 1086, column: 10, scope: !440)
!1691 = !DILocation(line: 1086, column: 17, scope: !440)
!1692 = !DILocation(line: 1089, column: 27, scope: !440)
!1693 = !DILocation(line: 1089, column: 25, scope: !440)
!1694 = !DILocation(line: 1087, column: 4, scope: !440)
!1695 = !DILocation(line: 1087, column: 10, scope: !440)
!1696 = !DILocation(line: 1087, column: 20, scope: !440)
!1697 = !DILocation(line: 1098, column: 30, scope: !440)
!1698 = !DILocation(line: 1094, column: 17, scope: !440)
!1699 = !DILocation(line: 1094, column: 15, scope: !440)
!1700 = !DILocation(line: 1100, column: 8, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !440, file: !410, line: 1100, column: 8)
!1702 = !DILocation(line: 1100, column: 19, scope: !1701)
!1703 = !DILocation(line: 1100, column: 8, scope: !440)
!1704 = !DILocation(line: 1111, column: 20, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1701, file: !410, line: 1100, column: 24)
!1706 = !DILocation(line: 1111, column: 18, scope: !1705)
!1707 = !DILocation(line: 1114, column: 25, scope: !1705)
!1708 = !DILocation(line: 1114, column: 7, scope: !1705)
!1709 = !DILocation(line: 1114, column: 13, scope: !1705)
!1710 = !DILocation(line: 1114, column: 23, scope: !1705)
!1711 = !DILocation(line: 1115, column: 4, scope: !1705)
!1712 = !DILocation(line: 1124, column: 29, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1701, file: !410, line: 1115, column: 11)
!1714 = !DILocation(line: 1124, column: 27, scope: !1713)
!1715 = !DILocation(line: 1128, column: 36, scope: !1713)
!1716 = !DILocation(line: 1128, column: 34, scope: !1713)
!1717 = !DILocation(line: 1126, column: 14, scope: !1713)
!1718 = !DILocation(line: 1124, column: 7, scope: !1713)
!1719 = !DILocation(line: 1135, column: 30, scope: !1713)
!1720 = !DILocation(line: 1138, column: 4, scope: !440)
!1721 = !DILocation(line: 1139, column: 4, scope: !440)
!1722 = !DILocalVariable(name: "data", arg: 1, scope: !445, file: !410, line: 1204, type: !413)
!1723 = !DILocation(line: 1204, column: 45, scope: !445)
!1724 = !DILocalVariable(name: "err", scope: !445, file: !410, line: 1206, type: !471)
!1725 = !DILocation(line: 1206, column: 13, scope: !445)
!1726 = !DILocalVariable(name: "additionalError", scope: !445, file: !410, line: 1207, type: !382)
!1727 = !DILocation(line: 1207, column: 11, scope: !445)
!1728 = !DILocalVariable(name: "requestName", scope: !445, file: !410, line: 1208, type: !372)
!1729 = !DILocation(line: 1208, column: 10, scope: !445)
!1730 = !DILocalVariable(name: "requestMsg", scope: !445, file: !410, line: 1209, type: !373)
!1731 = !DILocation(line: 1209, column: 29, scope: !445)
!1732 = !DILocalVariable(name: "maxResultBufferSize", scope: !445, file: !410, line: 1210, type: !420)
!1733 = !DILocation(line: 1210, column: 11, scope: !445)
!1734 = !DILocalVariable(name: "tcloBufferLen", scope: !445, file: !410, line: 1211, type: !420)
!1735 = !DILocation(line: 1211, column: 11, scope: !445)
!1736 = !DILocalVariable(name: "resultValue", scope: !445, file: !410, line: 1212, type: !372)
!1737 = !DILocation(line: 1212, column: 10, scope: !445)
!1738 = !DILocalVariable(name: "resultValueLength", scope: !445, file: !410, line: 1213, type: !420)
!1739 = !DILocation(line: 1213, column: 11, scope: !445)
!1740 = !DILocalVariable(name: "deleteResultValue", scope: !445, file: !410, line: 1214, type: !459)
!1741 = !DILocation(line: 1214, column: 9, scope: !445)
!1742 = !DILocalVariable(name: "destPtr", scope: !445, file: !410, line: 1215, type: !372)
!1743 = !DILocation(line: 1215, column: 10, scope: !445)
!1744 = !DILocalVariable(name: "vixPrefixDataSize", scope: !445, file: !410, line: 1216, type: !337)
!1745 = !DILocation(line: 1216, column: 8, scope: !445)
!1746 = !DILocalVariable(name: "ctx", scope: !445, file: !410, line: 1227, type: !322)
!1747 = !DILocation(line: 1227, column: 17, scope: !445)
!1748 = !DILocation(line: 1227, column: 23, scope: !445)
!1749 = !DILocation(line: 1227, column: 29, scope: !445)
!1750 = !DILocalVariable(name: "eventQueue", scope: !445, file: !410, line: 1228, type: !340)
!1751 = !DILocation(line: 1228, column: 15, scope: !445)
!1752 = !DILocation(line: 1228, column: 28, scope: !445)
!1753 = !DILocation(line: 1228, column: 33, scope: !445)
!1754 = !DILocalVariable(name: "confDictRef", scope: !445, file: !410, line: 1229, type: !350)
!1755 = !DILocation(line: 1229, column: 14, scope: !445)
!1756 = !DILocation(line: 1229, column: 28, scope: !445)
!1757 = !DILocation(line: 1229, column: 33, scope: !445)
!1758 = !DILocation(line: 1231, column: 49, scope: !445)
!1759 = !DILocation(line: 1231, column: 55, scope: !445)
!1760 = !DILocation(line: 1231, column: 62, scope: !445)
!1761 = !DILocation(line: 1231, column: 68, scope: !445)
!1762 = !DILocation(line: 1231, column: 18, scope: !445)
!1763 = !DILocation(line: 1231, column: 16, scope: !445)
!1764 = !DILocation(line: 1237, column: 4, scope: !445)
!1765 = !DILocation(line: 1237, column: 12, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !445, file: !410, discriminator: 1)
!1767 = !DILocation(line: 1237, column: 18, scope: !1766)
!1768 = !DILocation(line: 1237, column: 11, scope: !1766)
!1769 = !DILocation(line: 1237, column: 4, scope: !1766)
!1770 = !DILocation(line: 1238, column: 7, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !445, file: !410, line: 1237, column: 24)
!1772 = !DILocation(line: 1238, column: 13, scope: !1771)
!1773 = !DILocation(line: 1238, column: 18, scope: !1771)
!1774 = !DILocation(line: 1237, column: 4, scope: !1775)
!1775 = !DILexicalBlockFile(scope: !445, file: !410, discriminator: 2)
!1776 = distinct !{!1776, !1764}
!1777 = !DILocation(line: 1240, column: 4, scope: !445)
!1778 = !DILocation(line: 1240, column: 10, scope: !445)
!1779 = !DILocation(line: 1240, column: 15, scope: !445)
!1780 = !DILocation(line: 1241, column: 42, scope: !445)
!1781 = !DILocation(line: 1241, column: 48, scope: !445)
!1782 = !DILocation(line: 1241, column: 54, scope: !445)
!1783 = !DILocation(line: 1241, column: 60, scope: !445)
!1784 = !DILocation(line: 1241, column: 10, scope: !445)
!1785 = !DILocation(line: 1241, column: 8, scope: !445)
!1786 = !DILocation(line: 1242, column: 18, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !445, file: !410, line: 1242, column: 8)
!1788 = !DILocation(line: 1242, column: 15, scope: !1787)
!1789 = !DILocation(line: 1242, column: 8, scope: !445)
!1790 = !DILocation(line: 1243, column: 7, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1787, file: !410, line: 1242, column: 23)
!1792 = !DILocation(line: 1245, column: 45, scope: !445)
!1793 = !DILocation(line: 1245, column: 51, scope: !445)
!1794 = !DILocation(line: 1245, column: 17, scope: !445)
!1795 = !DILocation(line: 1245, column: 15, scope: !445)
!1796 = !DILocation(line: 1246, column: 47, scope: !445)
!1797 = !DILocation(line: 1246, column: 45, scope: !445)
!1798 = !DILocation(line: 1246, column: 24, scope: !445)
!1799 = !DILocation(line: 1248, column: 37, scope: !445)
!1800 = !DILocation(line: 1249, column: 37, scope: !445)
!1801 = !DILocation(line: 1250, column: 37, scope: !445)
!1802 = !DILocation(line: 1251, column: 37, scope: !445)
!1803 = !DILocation(line: 1252, column: 37, scope: !445)
!1804 = !DILocation(line: 1248, column: 10, scope: !445)
!1805 = !DILocation(line: 1248, column: 8, scope: !445)
!1806 = !DILocation(line: 1267, column: 50, scope: !445)
!1807 = !DILocation(line: 1267, column: 62, scope: !445)
!1808 = !DILocation(line: 1267, column: 70, scope: !445)
!1809 = !DILocation(line: 1267, column: 22, scope: !445)
!1810 = !DILocation(line: 1267, column: 20, scope: !445)
!1811 = !DILocation(line: 1268, column: 8, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !445, file: !410, line: 1268, column: 8)
!1813 = !DILocation(line: 1268, column: 8, scope: !445)
!1814 = !DILocation(line: 1269, column: 98, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1812, file: !410, line: 1268, column: 25)
!1816 = !DILocation(line: 1269, column: 110, scope: !1815)
!1817 = !DILocation(line: 1269, column: 118, scope: !1815)
!1818 = !DILocation(line: 1269, column: 7, scope: !1815)
!1819 = !DILocation(line: 1271, column: 4, scope: !1815)
!1820 = !DILocation(line: 1272, column: 96, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1812, file: !410, line: 1271, column: 11)
!1822 = !DILocation(line: 1272, column: 108, scope: !1821)
!1823 = !DILocation(line: 1272, column: 116, scope: !1821)
!1824 = !DILocation(line: 1272, column: 7, scope: !1821)
!1825 = !DILocation(line: 1268, column: 8, scope: !1826)
!1826 = !DILexicalBlockFile(scope: !1812, file: !410, discriminator: 1)
!1827 = !DILocation(line: 1277, column: 20, scope: !445)
!1828 = !DILocation(line: 1277, column: 40, scope: !445)
!1829 = !DILocation(line: 1277, column: 38, scope: !445)
!1830 = !DILocation(line: 1277, column: 18, scope: !445)
!1831 = !DILocation(line: 1283, column: 8, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !445, file: !410, line: 1283, column: 8)
!1833 = !DILocation(line: 1283, column: 22, scope: !1832)
!1834 = !DILocation(line: 1283, column: 8, scope: !445)
!1835 = !DILocation(line: 1285, column: 7, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1832, file: !410, line: 1283, column: 43)
!1837 = !DILocation(line: 1285, column: 22, scope: !1836)
!1838 = !DILocation(line: 1286, column: 23, scope: !1836)
!1839 = !DILocation(line: 1286, column: 39, scope: !1836)
!1840 = !DILocation(line: 1286, column: 37, scope: !1836)
!1841 = !DILocation(line: 1286, column: 21, scope: !1836)
!1842 = !DILocation(line: 1287, column: 11, scope: !1836)
!1843 = !DILocation(line: 1288, column: 4, scope: !1836)
!1844 = !DILocation(line: 1297, column: 16, scope: !445)
!1845 = !DILocation(line: 1298, column: 16, scope: !445)
!1846 = !DILocation(line: 1294, column: 4, scope: !445)
!1847 = !DILocation(line: 1299, column: 27, scope: !445)
!1848 = !DILocation(line: 1299, column: 25, scope: !445)
!1849 = !DILocation(line: 1299, column: 12, scope: !445)
!1850 = !DILocation(line: 1305, column: 16, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !445, file: !410, line: 1305, column: 8)
!1852 = !DILocation(line: 1305, column: 13, scope: !1851)
!1853 = !DILocation(line: 1306, column: 10, scope: !1851)
!1854 = !DILocation(line: 1306, column: 14, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1851, file: !410, discriminator: 1)
!1856 = !DILocation(line: 1306, column: 26, scope: !1855)
!1857 = !DILocation(line: 1306, column: 39, scope: !1855)
!1858 = !DILocation(line: 1306, column: 51, scope: !1855)
!1859 = !DILocation(line: 1305, column: 8, scope: !1766)
!1860 = !DILocation(line: 1307, column: 16, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1851, file: !410, line: 1306, column: 88)
!1862 = !DILocation(line: 1307, column: 20, scope: !1861)
!1863 = !DILocation(line: 1308, column: 25, scope: !1861)
!1864 = !DILocation(line: 1308, column: 33, scope: !1861)
!1865 = !DILocation(line: 1308, column: 48, scope: !1861)
!1866 = !DILocation(line: 1308, column: 46, scope: !1861)
!1867 = !DILocation(line: 1308, column: 7, scope: !1861)
!1868 = !DILocation(line: 1308, column: 13, scope: !1861)
!1869 = !DILocation(line: 1308, column: 23, scope: !1861)
!1870 = !DILocation(line: 1309, column: 4, scope: !1861)
!1871 = !DILocation(line: 1314, column: 11, scope: !445)
!1872 = !DILocation(line: 1314, column: 20, scope: !445)
!1873 = !DILocation(line: 1314, column: 33, scope: !445)
!1874 = !DILocation(line: 1314, column: 4, scope: !445)
!1875 = !DILocation(line: 1315, column: 15, scope: !445)
!1876 = !DILocation(line: 1315, column: 12, scope: !445)
!1877 = !DILocation(line: 1320, column: 16, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !445, file: !410, line: 1320, column: 8)
!1879 = !DILocation(line: 1320, column: 13, scope: !1878)
!1880 = !DILocation(line: 1321, column: 10, scope: !1878)
!1881 = !DILocation(line: 1321, column: 15, scope: !1882)
!1882 = !DILexicalBlockFile(scope: !1878, file: !410, discriminator: 1)
!1883 = !DILocation(line: 1321, column: 27, scope: !1882)
!1884 = !DILocation(line: 1321, column: 40, scope: !1882)
!1885 = !DILocation(line: 1321, column: 52, scope: !1882)
!1886 = !DILocation(line: 1320, column: 8, scope: !1766)
!1887 = !DILocation(line: 1322, column: 16, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1878, file: !410, line: 1321, column: 89)
!1889 = !DILocation(line: 1322, column: 20, scope: !1888)
!1890 = !DILocation(line: 1323, column: 25, scope: !1888)
!1891 = !DILocation(line: 1323, column: 44, scope: !1888)
!1892 = !DILocation(line: 1323, column: 7, scope: !1888)
!1893 = !DILocation(line: 1323, column: 13, scope: !1888)
!1894 = !DILocation(line: 1323, column: 23, scope: !1888)
!1895 = !DILocation(line: 1324, column: 4, scope: !1888)
!1896 = !DILocation(line: 1326, column: 4, scope: !445)
!1897 = !DILocation(line: 1326, column: 10, scope: !445)
!1898 = !DILocation(line: 1326, column: 17, scope: !445)
!1899 = !DILocation(line: 1328, column: 8, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !445, file: !410, line: 1328, column: 8)
!1901 = !DILocation(line: 1328, column: 8, scope: !445)
!1902 = !DILocation(line: 1329, column: 12, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1900, file: !410, line: 1328, column: 27)
!1904 = !DILocation(line: 1329, column: 7, scope: !1903)
!1905 = !DILocation(line: 1330, column: 4, scope: !1903)
!1906 = !DILocation(line: 1331, column: 9, scope: !445)
!1907 = !DILocation(line: 1331, column: 4, scope: !445)
!1908 = !DILocation(line: 1333, column: 4, scope: !445)
