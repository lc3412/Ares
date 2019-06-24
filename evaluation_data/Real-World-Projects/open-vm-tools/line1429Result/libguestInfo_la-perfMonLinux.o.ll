; ModuleID = './libguestInfo_la-perfMonLinux.o.i'
source_filename = "./libguestInfo_la-perfMonLinux.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GuestInfoQuery = type { i8*, i8*, i8, i8*, i32, i32, i32 }
%struct.GuestInfoCollector = type { %struct.HashTable*, i32, %struct.GuestInfoStat**, i32, %struct.GuestInfoStat*, %struct.HashTable*, i8, double }
%struct.GuestInfoStat = type { i32, i32, i64, %struct.GuestInfoQuery* }
%struct.HashTable = type opaque
%struct.GuestInfoDiskStatsList = type { %struct.GuestInfoDiskStatsList*, i8*, [2 x i32] }
%struct.DynBuf = type { i8*, i64, i64 }
%struct.GuestMemInfoLegacy = type { i32, i32, i64, [9 x i64], i64, [2 x i64] }
%struct.ToolsAppCtx = type { i32, i8*, i32, i32, %struct._GMainLoop*, %struct._RpcChannel*, %struct._GKeyFile*, i32, i32, i8**, i8* }
%struct._GMainLoop = type opaque
%struct._RpcChannel = type opaque
%struct._GKeyFile = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.GuestStatHeader = type { i32 }
%struct.GuestDatumHeader = type { i16, [0 x i8] }

@.str = private unnamed_addr constant [14 x i8] c"/proc/meminfo\00", align 1
@gReleased = internal global i8 1, align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Hugepagesize\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"/proc/zoneinfo\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"present\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"MemFree\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Active(file)\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"SwapFree\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"HugePages_Total\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"/proc/vmstat\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"pgpgin\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"pgpgout\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"/proc/stat\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"ctxt\00", align 1
@gInternal = internal global i8 0, align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"MemAvailable\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Inactive(file)\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"SReclaimable\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Buffers\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Cached\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"MemTotal\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"procs_running\00", align 1
@guestInfoQuerySpecTable = global [22 x %struct.GuestInfoQuery] [%struct.GuestInfoQuery { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* @gReleased, i8 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 11, i32 2051, i32 9 }, %struct.GuestInfoQuery { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* @gReleased, i8 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 6, i32 2051, i32 9 }, %struct.GuestInfoQuery { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* @gReleased, i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 4, i32 2051, i32 9 }, %struct.GuestInfoQuery { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* @gReleased, i8 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 3, i32 2051, i32 9 }, %struct.GuestInfoQuery { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* @gReleased, i8 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 9, i32 2051, i32 9 }, %struct.GuestInfoQuery { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* @gReleased, i8 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 12, i32 34819, i32 9 }, %struct.GuestInfoQuery { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* @gReleased, i8 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 7, i32 32835, i32 11 }, %struct.GuestInfoQuery { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* @gReleased, i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 8, i32 32835, i32 11 }, %struct.GuestInfoQuery { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* @gReleased, i8 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 2, i32 66, i32 11 }, %struct.GuestInfoQuery { i8* null, i8* @gReleased, i8 0, i8* null, i32 10, i32 3, i32 9 }, %struct.GuestInfoQuery { i8* null, i8* @gReleased, i8 0, i8* null, i32 5, i32 2051, i32 9 }, %struct.GuestInfoQuery { i8* null, i8* @gReleased, i8 0, i8* null, i32 13, i32 2051, i32 9 }, %struct.GuestInfoQuery { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* @gInternal, i8 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 25, i32 2051, i32 9 }, %struct.GuestInfoQuery { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* @gInternal, i8 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 32, i32 2051, i32 9 }, %struct.GuestInfoQuery { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* @gInternal, i8 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i32 34, i32 2051, i32 9 }, %struct.GuestInfoQuery { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* @gInternal, i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i32 26, i32 2051, i32 9 }, %struct.GuestInfoQuery { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* @gInternal, i8 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 27, i32 2051, i32 9 }, %struct.GuestInfoQuery { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* @gInternal, i8 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i32 22, i32 32771, i32 9 }, %struct.GuestInfoQuery { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* @gInternal, i8 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 60, i32 2051, i32 9 }, %struct.GuestInfoQuery { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* @gReleased, i8 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i32 61, i32 2, i32 9 }, %struct.GuestInfoQuery { i8* null, i8* @gReleased, i8 0, i8* null, i32 62, i32 2, i32 9 }, %struct.GuestInfoQuery { i8* null, i8* @gReleased, i8 0, i8* null, i32 63, i32 2, i32 11 }], align 16
@gPreviousCollector = internal global %struct.GuestInfoCollector* null, align 8
@gCurrentCollector = internal global %struct.GuestInfoCollector* null, align 8
@.str.21 = private unnamed_addr constant [10 x i8] c"guestinfo\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"Entered guest info stats gather.\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"Failed to get vmstats.\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"Failed to send vmstats.\0A\00", align 1
@gDiskStatsList = internal global %struct.GuestInfoDiskStatsList* null, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"%s|%s\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"%s: Error opening %s.\0A\00", align 1
@__FUNCTION__.GuestInfoProcData = private unnamed_addr constant [18 x i8] c"GuestInfoProcData\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"/proc/uptime\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"%lf %lf\00", align 1
@GuestInfoProcDiskStatsData.curr = internal global i32 0, align 4
@.str.32 = private unnamed_addr constant [16 x i8] c"/proc/diskstats\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"%s: Error opening /proc/diskstats.\0A\00", align 1
@__FUNCTION__.GuestInfoProcDiskStatsData = private unnamed_addr constant [27 x i8] c"GuestInfoProcDiskStatsData\00", align 1
@.str.34 = private unnamed_addr constant [56 x i8] c"%*d %*d %255s %lu %*u %*u %*u %lu %*u %*u %*u %u %*u %u\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"/sys/block\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"_tools/v1\00", align 1

; Function Attrs: nounwind uwtable
define signext i8 @GuestInfoTakeSample(%struct.DynBuf*) #0 !dbg !469 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.DynBuf*, align 8
  %4 = alloca %struct.GuestInfoCollector*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %3, metadata !482, metadata !483), !dbg !484
  call void @llvm.dbg.declare(metadata %struct.GuestInfoCollector** %4, metadata !485, metadata !483), !dbg !486
  %5 = load %struct.DynBuf*, %struct.DynBuf** %3, align 8, !dbg !487
  %6 = call signext i8 @DynBuf_Enlarge(%struct.DynBuf* %5, i64 4096), !dbg !489
  %7 = icmp ne i8 %6, 0, !dbg !489
  br i1 %7, label %9, label %8, !dbg !490

; <label>:8:                                      ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !491
  br label %32, !dbg !491

; <label>:9:                                      ; preds = %1
  %10 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** @gPreviousCollector, align 8, !dbg !493
  %11 = icmp eq %struct.GuestInfoCollector* %10, null, !dbg !495
  br i1 %11, label %12, label %15, !dbg !496

; <label>:12:                                     ; preds = %9
  %13 = call %struct.GuestInfoCollector* @GuestInfoConstructCollector(%struct.GuestInfoQuery* getelementptr inbounds ([22 x %struct.GuestInfoQuery], [22 x %struct.GuestInfoQuery]* @guestInfoQuerySpecTable, i32 0, i32 0), i32 22), !dbg !497
  store %struct.GuestInfoCollector* %13, %struct.GuestInfoCollector** @gCurrentCollector, align 8, !dbg !499
  %14 = call %struct.GuestInfoCollector* @GuestInfoConstructCollector(%struct.GuestInfoQuery* getelementptr inbounds ([22 x %struct.GuestInfoQuery], [22 x %struct.GuestInfoQuery]* @guestInfoQuerySpecTable, i32 0, i32 0), i32 22), !dbg !500
  store %struct.GuestInfoCollector* %14, %struct.GuestInfoCollector** @gPreviousCollector, align 8, !dbg !501
  br label %15, !dbg !502

; <label>:15:                                     ; preds = %12, %9
  %16 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** @gCurrentCollector, align 8, !dbg !503
  %17 = icmp eq %struct.GuestInfoCollector* %16, null, !dbg !505
  br i1 %17, label %21, label %18, !dbg !506

; <label>:18:                                     ; preds = %15
  %19 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** @gPreviousCollector, align 8, !dbg !507
  %20 = icmp eq %struct.GuestInfoCollector* %19, null, !dbg !508
  br i1 %20, label %21, label %24, !dbg !509

; <label>:21:                                     ; preds = %18, %15
  %22 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** @gCurrentCollector, align 8, !dbg !511
  call void @GuestInfoDestroyCollector(%struct.GuestInfoCollector* %22), !dbg !513
  store %struct.GuestInfoCollector* null, %struct.GuestInfoCollector** @gCurrentCollector, align 8, !dbg !514
  %23 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** @gPreviousCollector, align 8, !dbg !515
  call void @GuestInfoDestroyCollector(%struct.GuestInfoCollector* %23), !dbg !516
  store %struct.GuestInfoCollector* null, %struct.GuestInfoCollector** @gPreviousCollector, align 8, !dbg !517
  store i8 0, i8* %2, align 1, !dbg !518
  br label %32, !dbg !518

; <label>:24:                                     ; preds = %18
  %25 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** @gCurrentCollector, align 8, !dbg !519
  call void @GuestInfoCollect(%struct.GuestInfoCollector* %25), !dbg !520
  %26 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** @gCurrentCollector, align 8, !dbg !521
  %27 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** @gPreviousCollector, align 8, !dbg !522
  %28 = load %struct.DynBuf*, %struct.DynBuf** %3, align 8, !dbg !523
  call void @GuestInfoEncodeStats(%struct.GuestInfoCollector* %26, %struct.GuestInfoCollector* %27, %struct.DynBuf* %28), !dbg !524
  %29 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** @gCurrentCollector, align 8, !dbg !525
  store %struct.GuestInfoCollector* %29, %struct.GuestInfoCollector** %4, align 8, !dbg !526
  %30 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** @gPreviousCollector, align 8, !dbg !527
  store %struct.GuestInfoCollector* %30, %struct.GuestInfoCollector** @gCurrentCollector, align 8, !dbg !528
  %31 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %4, align 8, !dbg !529
  store %struct.GuestInfoCollector* %31, %struct.GuestInfoCollector** @gPreviousCollector, align 8, !dbg !530
  store i8 1, i8* %2, align 1, !dbg !531
  br label %32, !dbg !531

; <label>:32:                                     ; preds = %24, %21, %8
  %33 = load i8, i8* %2, align 1, !dbg !532
  ret i8 %33, !dbg !532
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare signext i8 @DynBuf_Enlarge(%struct.DynBuf*, i64) #2

; Function Attrs: nounwind uwtable
define internal %struct.GuestInfoCollector* @GuestInfoConstructCollector(%struct.GuestInfoQuery*, i32) #0 !dbg !533 {
  %3 = alloca %struct.GuestInfoCollector*, align 8
  %4 = alloca %struct.GuestInfoQuery*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.GuestInfoCollector*, align 8
  %9 = alloca %struct.GuestInfoQuery*, align 8
  %10 = alloca %struct.GuestInfoStat*, align 8
  %11 = alloca i8*, align 8
  store %struct.GuestInfoQuery* %0, %struct.GuestInfoQuery** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestInfoQuery** %4, metadata !536, metadata !483), !dbg !537
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !538, metadata !483), !dbg !539
  call void @llvm.dbg.declare(metadata i32* %6, metadata !540, metadata !483), !dbg !541
  call void @llvm.dbg.declare(metadata i32* %7, metadata !542, metadata !483), !dbg !543
  store i32 0, i32* %7, align 4, !dbg !543
  call void @llvm.dbg.declare(metadata %struct.GuestInfoCollector** %8, metadata !544, metadata !483), !dbg !545
  %12 = call i8* @UtilSafeCalloc0(i64 1, i64 64), !dbg !546
  %13 = bitcast i8* %12 to %struct.GuestInfoCollector*, !dbg !546
  store %struct.GuestInfoCollector* %13, %struct.GuestInfoCollector** %8, align 8, !dbg !545
  %14 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %8, align 8, !dbg !547
  %15 = icmp eq %struct.GuestInfoCollector* %14, null, !dbg !549
  br i1 %15, label %16, label %17, !dbg !550

; <label>:16:                                     ; preds = %2
  store %struct.GuestInfoCollector* null, %struct.GuestInfoCollector** %3, align 8, !dbg !551
  br label %172, !dbg !551

; <label>:17:                                     ; preds = %2
  %18 = call %struct.HashTable* @HashTable_Alloc(i32 256, i32 2, void (i8*)* null), !dbg !553
  %19 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %8, align 8, !dbg !554
  %20 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %19, i32 0, i32 5, !dbg !555
  store %struct.HashTable* %18, %struct.HashTable** %20, align 8, !dbg !556
  %21 = call %struct.HashTable* @HashTable_Alloc(i32 256, i32 16, void (i8*)* null), !dbg !557
  %22 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %8, align 8, !dbg !558
  %23 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %22, i32 0, i32 0, !dbg !559
  store %struct.HashTable* %21, %struct.HashTable** %23, align 8, !dbg !560
  %24 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %8, align 8, !dbg !561
  %25 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %24, i32 0, i32 1, !dbg !562
  store i32 0, i32* %25, align 8, !dbg !563
  store i32 0, i32* %6, align 4, !dbg !564
  br label %26, !dbg !566

; <label>:26:                                     ; preds = %44, %17
  %27 = load i32, i32* %6, align 4, !dbg !567
  %28 = load i32, i32* %5, align 4, !dbg !570
  %29 = icmp ult i32 %27, %28, !dbg !571
  br i1 %29, label %30, label %47, !dbg !572

; <label>:30:                                     ; preds = %26
  %31 = load i32, i32* %6, align 4, !dbg !573
  %32 = zext i32 %31 to i64, !dbg !576
  %33 = load %struct.GuestInfoQuery*, %struct.GuestInfoQuery** %4, align 8, !dbg !576
  %34 = getelementptr inbounds %struct.GuestInfoQuery, %struct.GuestInfoQuery* %33, i64 %32, !dbg !576
  %35 = getelementptr inbounds %struct.GuestInfoQuery, %struct.GuestInfoQuery* %34, i32 0, i32 2, !dbg !577
  %36 = load i8, i8* %35, align 8, !dbg !577
  %37 = icmp ne i8 %36, 0, !dbg !576
  br i1 %37, label %38, label %43, !dbg !578

; <label>:38:                                     ; preds = %30
  %39 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %8, align 8, !dbg !579
  %40 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %39, i32 0, i32 1, !dbg !581
  %41 = load i32, i32* %40, align 8, !dbg !582
  %42 = add i32 %41, 1, !dbg !582
  store i32 %42, i32* %40, align 8, !dbg !582
  br label %43, !dbg !583

; <label>:43:                                     ; preds = %38, %30
  br label %44, !dbg !584

; <label>:44:                                     ; preds = %43
  %45 = load i32, i32* %6, align 4, !dbg !585
  %46 = add i32 %45, 1, !dbg !585
  store i32 %46, i32* %6, align 4, !dbg !585
  br label %26, !dbg !587, !llvm.loop !588

; <label>:47:                                     ; preds = %26
  %48 = load i32, i32* %5, align 4, !dbg !590
  %49 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %8, align 8, !dbg !591
  %50 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %49, i32 0, i32 3, !dbg !592
  store i32 %48, i32* %50, align 8, !dbg !593
  %51 = load i32, i32* %5, align 4, !dbg !594
  %52 = zext i32 %51 to i64, !dbg !595
  %53 = call i8* @UtilSafeCalloc0(i64 %52, i64 24), !dbg !596
  %54 = bitcast i8* %53 to %struct.GuestInfoStat*, !dbg !596
  %55 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %8, align 8, !dbg !597
  %56 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %55, i32 0, i32 4, !dbg !598
  store %struct.GuestInfoStat* %54, %struct.GuestInfoStat** %56, align 8, !dbg !599
  %57 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %8, align 8, !dbg !600
  %58 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %57, i32 0, i32 1, !dbg !601
  %59 = load i32, i32* %58, align 8, !dbg !601
  %60 = zext i32 %59 to i64, !dbg !602
  %61 = call i8* @UtilSafeCalloc0(i64 %60, i64 8), !dbg !603
  %62 = bitcast i8* %61 to %struct.GuestInfoStat**, !dbg !603
  %63 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %8, align 8, !dbg !604
  %64 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %63, i32 0, i32 2, !dbg !605
  store %struct.GuestInfoStat** %62, %struct.GuestInfoStat*** %64, align 8, !dbg !606
  %65 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %8, align 8, !dbg !607
  %66 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %65, i32 0, i32 0, !dbg !609
  %67 = load %struct.HashTable*, %struct.HashTable** %66, align 8, !dbg !609
  %68 = icmp eq %struct.HashTable* %67, null, !dbg !610
  br i1 %68, label %94, label %69, !dbg !611

; <label>:69:                                     ; preds = %47
  %70 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %8, align 8, !dbg !612
  %71 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %70, i32 0, i32 5, !dbg !613
  %72 = load %struct.HashTable*, %struct.HashTable** %71, align 8, !dbg !613
  %73 = icmp eq %struct.HashTable* %72, null, !dbg !614
  br i1 %73, label %94, label %74, !dbg !615

; <label>:74:                                     ; preds = %69
  %75 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %8, align 8, !dbg !616
  %76 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %75, i32 0, i32 1, !dbg !617
  %77 = load i32, i32* %76, align 8, !dbg !617
  %78 = icmp ne i32 %77, 0, !dbg !618
  br i1 %78, label %79, label %84, !dbg !619

; <label>:79:                                     ; preds = %74
  %80 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %8, align 8, !dbg !620
  %81 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %80, i32 0, i32 2, !dbg !622
  %82 = load %struct.GuestInfoStat**, %struct.GuestInfoStat*** %81, align 8, !dbg !622
  %83 = icmp eq %struct.GuestInfoStat** %82, null, !dbg !623
  br i1 %83, label %94, label %84, !dbg !624

; <label>:84:                                     ; preds = %79, %74
  %85 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %8, align 8, !dbg !625
  %86 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %85, i32 0, i32 3, !dbg !626
  %87 = load i32, i32* %86, align 8, !dbg !626
  %88 = icmp ne i32 %87, 0, !dbg !627
  br i1 %88, label %89, label %96, !dbg !628

; <label>:89:                                     ; preds = %84
  %90 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %8, align 8, !dbg !629
  %91 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %90, i32 0, i32 4, !dbg !630
  %92 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %91, align 8, !dbg !630
  %93 = icmp eq %struct.GuestInfoStat* %92, null, !dbg !631
  br i1 %93, label %94, label %96, !dbg !632

; <label>:94:                                     ; preds = %89, %79, %69, %47
  %95 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %8, align 8, !dbg !634
  call void @GuestInfoDestroyCollector(%struct.GuestInfoCollector* %95), !dbg !636
  store %struct.GuestInfoCollector* null, %struct.GuestInfoCollector** %3, align 8, !dbg !637
  br label %172, !dbg !637

; <label>:96:                                     ; preds = %89, %84
  store i32 0, i32* %7, align 4, !dbg !638
  store i32 0, i32* %6, align 4, !dbg !639
  br label %97, !dbg !641

; <label>:97:                                     ; preds = %167, %96
  %98 = load i32, i32* %6, align 4, !dbg !642
  %99 = load i32, i32* %5, align 4, !dbg !645
  %100 = icmp ult i32 %98, %99, !dbg !646
  br i1 %100, label %101, label %170, !dbg !647

; <label>:101:                                    ; preds = %97
  call void @llvm.dbg.declare(metadata %struct.GuestInfoQuery** %9, metadata !648, metadata !483), !dbg !650
  %102 = load i32, i32* %6, align 4, !dbg !651
  %103 = zext i32 %102 to i64, !dbg !652
  %104 = load %struct.GuestInfoQuery*, %struct.GuestInfoQuery** %4, align 8, !dbg !652
  %105 = getelementptr inbounds %struct.GuestInfoQuery, %struct.GuestInfoQuery* %104, i64 %103, !dbg !652
  store %struct.GuestInfoQuery* %105, %struct.GuestInfoQuery** %9, align 8, !dbg !650
  call void @llvm.dbg.declare(metadata %struct.GuestInfoStat** %10, metadata !653, metadata !483), !dbg !654
  %106 = load i32, i32* %6, align 4, !dbg !655
  %107 = zext i32 %106 to i64, !dbg !656
  %108 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %8, align 8, !dbg !656
  %109 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %108, i32 0, i32 4, !dbg !657
  %110 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %109, align 8, !dbg !657
  %111 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %110, i64 %107, !dbg !656
  store %struct.GuestInfoStat* %111, %struct.GuestInfoStat** %10, align 8, !dbg !654
  %112 = load %struct.GuestInfoQuery*, %struct.GuestInfoQuery** %9, align 8, !dbg !658
  %113 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %10, align 8, !dbg !659
  %114 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %113, i32 0, i32 3, !dbg !660
  store %struct.GuestInfoQuery* %112, %struct.GuestInfoQuery** %114, align 8, !dbg !661
  %115 = load %struct.GuestInfoQuery*, %struct.GuestInfoQuery** %9, align 8, !dbg !662
  %116 = getelementptr inbounds %struct.GuestInfoQuery, %struct.GuestInfoQuery* %115, i32 0, i32 2, !dbg !664
  %117 = load i8, i8* %116, align 8, !dbg !664
  %118 = icmp ne i8 %117, 0, !dbg !662
  br i1 %118, label %119, label %128, !dbg !665

; <label>:119:                                    ; preds = %101
  %120 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %10, align 8, !dbg !666
  %121 = load i32, i32* %7, align 4, !dbg !668
  %122 = add i32 %121, 1, !dbg !668
  store i32 %122, i32* %7, align 4, !dbg !668
  %123 = zext i32 %121 to i64, !dbg !669
  %124 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %8, align 8, !dbg !669
  %125 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %124, i32 0, i32 2, !dbg !670
  %126 = load %struct.GuestInfoStat**, %struct.GuestInfoStat*** %125, align 8, !dbg !670
  %127 = getelementptr inbounds %struct.GuestInfoStat*, %struct.GuestInfoStat** %126, i64 %123, !dbg !669
  store %struct.GuestInfoStat* %120, %struct.GuestInfoStat** %127, align 8, !dbg !671
  br label %155, !dbg !672

; <label>:128:                                    ; preds = %101
  %129 = load %struct.GuestInfoQuery*, %struct.GuestInfoQuery** %9, align 8, !dbg !673
  %130 = getelementptr inbounds %struct.GuestInfoQuery, %struct.GuestInfoQuery* %129, i32 0, i32 0, !dbg !676
  %131 = load i8*, i8** %130, align 8, !dbg !676
  %132 = icmp ne i8* %131, null, !dbg !677
  br i1 %132, label %133, label %154, !dbg !678

; <label>:133:                                    ; preds = %128
  %134 = load %struct.GuestInfoQuery*, %struct.GuestInfoQuery** %9, align 8, !dbg !679
  %135 = getelementptr inbounds %struct.GuestInfoQuery, %struct.GuestInfoQuery* %134, i32 0, i32 3, !dbg !681
  %136 = load i8*, i8** %135, align 8, !dbg !681
  %137 = icmp ne i8* %136, null, !dbg !682
  br i1 %137, label %138, label %154, !dbg !683

; <label>:138:                                    ; preds = %133
  call void @llvm.dbg.declare(metadata i8** %11, metadata !684, metadata !483), !dbg !686
  %139 = load %struct.GuestInfoQuery*, %struct.GuestInfoQuery** %9, align 8, !dbg !687
  %140 = getelementptr inbounds %struct.GuestInfoQuery, %struct.GuestInfoQuery* %139, i32 0, i32 0, !dbg !688
  %141 = load i8*, i8** %140, align 8, !dbg !688
  %142 = load %struct.GuestInfoQuery*, %struct.GuestInfoQuery** %9, align 8, !dbg !689
  %143 = getelementptr inbounds %struct.GuestInfoQuery, %struct.GuestInfoQuery* %142, i32 0, i32 3, !dbg !690
  %144 = load i8*, i8** %143, align 8, !dbg !690
  %145 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* %141, i8* %144), !dbg !691
  store i8* %145, i8** %11, align 8, !dbg !686
  %146 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %8, align 8, !dbg !692
  %147 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %146, i32 0, i32 0, !dbg !693
  %148 = load %struct.HashTable*, %struct.HashTable** %147, align 8, !dbg !693
  %149 = load i8*, i8** %11, align 8, !dbg !694
  %150 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %10, align 8, !dbg !695
  %151 = bitcast %struct.GuestInfoStat* %150 to i8*, !dbg !695
  %152 = call signext i8 @HashTable_Insert(%struct.HashTable* %148, i8* %149, i8* %151), !dbg !696
  %153 = load i8*, i8** %11, align 8, !dbg !697
  call void @free(i8* %153) #6, !dbg !698
  br label %154, !dbg !699

; <label>:154:                                    ; preds = %138, %133, %128
  br label %155

; <label>:155:                                    ; preds = %154, %119
  %156 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %8, align 8, !dbg !700
  %157 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %156, i32 0, i32 5, !dbg !701
  %158 = load %struct.HashTable*, %struct.HashTable** %157, align 8, !dbg !701
  %159 = load %struct.GuestInfoQuery*, %struct.GuestInfoQuery** %9, align 8, !dbg !702
  %160 = getelementptr inbounds %struct.GuestInfoQuery, %struct.GuestInfoQuery* %159, i32 0, i32 4, !dbg !703
  %161 = load i32, i32* %160, align 8, !dbg !703
  %162 = zext i32 %161 to i64, !dbg !704
  %163 = inttoptr i64 %162 to i8*, !dbg !705
  %164 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %10, align 8, !dbg !706
  %165 = bitcast %struct.GuestInfoStat* %164 to i8*, !dbg !706
  %166 = call signext i8 @HashTable_Insert(%struct.HashTable* %158, i8* %163, i8* %165), !dbg !707
  br label %167, !dbg !708

; <label>:167:                                    ; preds = %155
  %168 = load i32, i32* %6, align 4, !dbg !709
  %169 = add i32 %168, 1, !dbg !709
  store i32 %169, i32* %6, align 4, !dbg !709
  br label %97, !dbg !711, !llvm.loop !712

; <label>:170:                                    ; preds = %97
  %171 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %8, align 8, !dbg !714
  store %struct.GuestInfoCollector* %171, %struct.GuestInfoCollector** %3, align 8, !dbg !715
  br label %172, !dbg !715

; <label>:172:                                    ; preds = %170, %94, %16
  %173 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %3, align 8, !dbg !716
  ret %struct.GuestInfoCollector* %173, !dbg !716
}

; Function Attrs: nounwind uwtable
define internal void @GuestInfoDestroyCollector(%struct.GuestInfoCollector*) #0 !dbg !717 {
  %2 = alloca %struct.GuestInfoCollector*, align 8
  store %struct.GuestInfoCollector* %0, %struct.GuestInfoCollector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestInfoCollector** %2, metadata !720, metadata !483), !dbg !721
  %3 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !722
  %4 = icmp ne %struct.GuestInfoCollector* %3, null, !dbg !724
  br i1 %4, label %5, label %22, !dbg !725

; <label>:5:                                      ; preds = %1
  %6 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !726
  %7 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %6, i32 0, i32 0, !dbg !728
  %8 = load %struct.HashTable*, %struct.HashTable** %7, align 8, !dbg !728
  call void @HashTable_Free(%struct.HashTable* %8), !dbg !729
  %9 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !730
  %10 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %9, i32 0, i32 5, !dbg !731
  %11 = load %struct.HashTable*, %struct.HashTable** %10, align 8, !dbg !731
  call void @HashTable_Free(%struct.HashTable* %11), !dbg !732
  %12 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !733
  %13 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %12, i32 0, i32 2, !dbg !734
  %14 = load %struct.GuestInfoStat**, %struct.GuestInfoStat*** %13, align 8, !dbg !734
  %15 = bitcast %struct.GuestInfoStat** %14 to i8*, !dbg !733
  call void @free(i8* %15) #6, !dbg !735
  %16 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !736
  %17 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %16, i32 0, i32 4, !dbg !737
  %18 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %17, align 8, !dbg !737
  %19 = bitcast %struct.GuestInfoStat* %18 to i8*, !dbg !736
  call void @free(i8* %19) #6, !dbg !738
  %20 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !739
  %21 = bitcast %struct.GuestInfoCollector* %20 to i8*, !dbg !739
  call void @free(i8* %21) #6, !dbg !740
  br label %22, !dbg !741

; <label>:22:                                     ; preds = %5, %1
  ret void, !dbg !742
}

; Function Attrs: nounwind uwtable
define internal void @GuestInfoCollect(%struct.GuestInfoCollector*) #0 !dbg !743 {
  %2 = alloca %struct.GuestInfoCollector*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.GuestInfoStat*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.GuestInfoStat*, align 8
  %7 = alloca %struct.GuestInfoStat*, align 8
  store %struct.GuestInfoCollector* %0, %struct.GuestInfoCollector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestInfoCollector** %2, metadata !744, metadata !483), !dbg !745
  call void @llvm.dbg.declare(metadata i32* %3, metadata !746, metadata !483), !dbg !747
  call void @llvm.dbg.declare(metadata %struct.GuestInfoStat** %4, metadata !748, metadata !483), !dbg !749
  call void @llvm.dbg.declare(metadata i64* %5, metadata !750, metadata !483), !dbg !751
  %8 = call i64 @sysconf(i32 30) #6, !dbg !752
  store i64 %8, i64* %5, align 8, !dbg !751
  store i32 0, i32* %3, align 4, !dbg !753
  br label %9, !dbg !755

; <label>:9:                                      ; preds = %28, %1
  %10 = load i32, i32* %3, align 4, !dbg !756
  %11 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !759
  %12 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %11, i32 0, i32 3, !dbg !760
  %13 = load i32, i32* %12, align 8, !dbg !760
  %14 = icmp ult i32 %10, %13, !dbg !761
  br i1 %14, label %15, label %31, !dbg !762

; <label>:15:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata %struct.GuestInfoStat** %6, metadata !763, metadata !483), !dbg !765
  %16 = load i32, i32* %3, align 4, !dbg !766
  %17 = zext i32 %16 to i64, !dbg !767
  %18 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !767
  %19 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %18, i32 0, i32 4, !dbg !768
  %20 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %19, align 8, !dbg !768
  %21 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %20, i64 %17, !dbg !767
  store %struct.GuestInfoStat* %21, %struct.GuestInfoStat** %6, align 8, !dbg !765
  %22 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %6, align 8, !dbg !769
  %23 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %22, i32 0, i32 0, !dbg !770
  store i32 2, i32* %23, align 8, !dbg !771
  %24 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %6, align 8, !dbg !772
  %25 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %24, i32 0, i32 1, !dbg !773
  store i32 0, i32* %25, align 4, !dbg !774
  %26 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %6, align 8, !dbg !775
  %27 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %26, i32 0, i32 2, !dbg !776
  store i64 0, i64* %27, align 8, !dbg !777
  br label %28, !dbg !778

; <label>:28:                                     ; preds = %15
  %29 = load i32, i32* %3, align 4, !dbg !779
  %30 = add i32 %29, 1, !dbg !779
  store i32 %30, i32* %3, align 4, !dbg !779
  br label %9, !dbg !781, !llvm.loop !782

; <label>:31:                                     ; preds = %9
  %32 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !784
  %33 = call signext i8 @GuestInfoProcData(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8 signext 58, %struct.GuestInfoCollector* %32), !dbg !785
  %34 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !786
  %35 = call signext i8 @GuestInfoProcData(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8 signext 0, %struct.GuestInfoCollector* %34), !dbg !787
  %36 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !788
  %37 = call signext i8 @GuestInfoProcData(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8 signext 0, %struct.GuestInfoCollector* %36), !dbg !789
  %38 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !790
  %39 = call signext i8 @GuestInfoProcData(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8 signext 0, %struct.GuestInfoCollector* %38), !dbg !791
  %40 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !792
  %41 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %40, i32 0, i32 7, !dbg !793
  %42 = call signext i8 @GuestInfoGetUpTime(double* %41), !dbg !794
  %43 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !795
  %44 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %43, i32 0, i32 6, !dbg !796
  store i8 %42, i8* %44, align 8, !dbg !797
  %45 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !798
  %46 = load i64, i64* %5, align 8, !dbg !799
  call void @GuestInfoStoreStatByID(i32 10, %struct.GuestInfoCollector* %45, i64 %46), !dbg !800
  store %struct.GuestInfoStat* null, %struct.GuestInfoStat** %4, align 8, !dbg !801
  %47 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !802
  %48 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %47, i32 0, i32 5, !dbg !803
  %49 = load %struct.HashTable*, %struct.HashTable** %48, align 8, !dbg !803
  %50 = bitcast %struct.GuestInfoStat** %4 to i8**, !dbg !804
  %51 = call signext i8 @HashTable_Lookup(%struct.HashTable* %49, i8* inttoptr (i64 6 to i8*), i8** %50), !dbg !805
  %52 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %4, align 8, !dbg !806
  %53 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %52, i32 0, i32 0, !dbg !808
  %54 = load i32, i32* %53, align 8, !dbg !808
  %55 = icmp eq i32 %54, 0, !dbg !809
  br i1 %55, label %56, label %63, !dbg !810

; <label>:56:                                     ; preds = %31
  %57 = load i64, i64* %5, align 8, !dbg !811
  %58 = udiv i64 %57, 1024, !dbg !813
  %59 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %4, align 8, !dbg !814
  %60 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %59, i32 0, i32 2, !dbg !815
  %61 = load i64, i64* %60, align 8, !dbg !816
  %62 = mul i64 %61, %58, !dbg !816
  store i64 %62, i64* %60, align 8, !dbg !816
  br label %87, !dbg !817

; <label>:63:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata %struct.GuestInfoStat** %7, metadata !818, metadata !483), !dbg !820
  store %struct.GuestInfoStat* null, %struct.GuestInfoStat** %7, align 8, !dbg !820
  %64 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !821
  %65 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %64, i32 0, i32 5, !dbg !822
  %66 = load %struct.HashTable*, %struct.HashTable** %65, align 8, !dbg !822
  %67 = bitcast %struct.GuestInfoStat** %7 to i8**, !dbg !823
  %68 = call signext i8 @HashTable_Lookup(%struct.HashTable* %66, i8* inttoptr (i64 60 to i8*), i8** %67), !dbg !824
  %69 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %7, align 8, !dbg !825
  %70 = icmp ne %struct.GuestInfoStat* %69, null, !dbg !827
  br i1 %70, label %71, label %86, !dbg !828

; <label>:71:                                     ; preds = %63
  %72 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %7, align 8, !dbg !829
  %73 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %72, i32 0, i32 0, !dbg !831
  %74 = load i32, i32* %73, align 8, !dbg !831
  %75 = icmp eq i32 %74, 0, !dbg !832
  br i1 %75, label %76, label %86, !dbg !833

; <label>:76:                                     ; preds = %71
  %77 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %4, align 8, !dbg !834
  %78 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %77, i32 0, i32 0, !dbg !836
  store i32 0, i32* %78, align 8, !dbg !837
  %79 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %4, align 8, !dbg !838
  %80 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %79, i32 0, i32 1, !dbg !839
  store i32 1, i32* %80, align 4, !dbg !840
  %81 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %7, align 8, !dbg !841
  %82 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %81, i32 0, i32 2, !dbg !842
  %83 = load i64, i64* %82, align 8, !dbg !842
  %84 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %4, align 8, !dbg !843
  %85 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %84, i32 0, i32 2, !dbg !844
  store i64 %83, i64* %85, align 8, !dbg !845
  br label %86, !dbg !846

; <label>:86:                                     ; preds = %76, %71, %63
  br label %87

; <label>:87:                                     ; preds = %86, %56
  %88 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !847
  call void @GuestInfoDeriveMemNeeded(%struct.GuestInfoCollector* %88), !dbg !848
  %89 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !849
  call void @GuestInfoDecreaseCpuRunQueueByOne(%struct.GuestInfoCollector* %89), !dbg !850
  %90 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !851
  %91 = call signext i8 @GuestInfoProcDiskStatsData(%struct.GuestInfoCollector* %90), !dbg !852
  ret void, !dbg !853
}

; Function Attrs: nounwind uwtable
define internal void @GuestInfoEncodeStats(%struct.GuestInfoCollector*, %struct.GuestInfoCollector*, %struct.DynBuf*) #0 !dbg !854 {
  %4 = alloca %struct.GuestInfoCollector*, align 8
  %5 = alloca %struct.GuestInfoCollector*, align 8
  %6 = alloca %struct.DynBuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.GuestMemInfoLegacy, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.GuestInfoStat*, align 8
  store %struct.GuestInfoCollector* %0, %struct.GuestInfoCollector** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestInfoCollector** %4, metadata !857, metadata !483), !dbg !858
  store %struct.GuestInfoCollector* %1, %struct.GuestInfoCollector** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestInfoCollector** %5, metadata !859, metadata !483), !dbg !860
  store %struct.DynBuf* %2, %struct.DynBuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %6, metadata !861, metadata !483), !dbg !862
  call void @llvm.dbg.declare(metadata i32* %7, metadata !863, metadata !483), !dbg !864
  call void @llvm.dbg.declare(metadata %struct.GuestMemInfoLegacy* %8, metadata !865, metadata !483), !dbg !879
  call void @llvm.dbg.declare(metadata i8* %9, metadata !880, metadata !483), !dbg !881
  store i8 1, i8* %9, align 1, !dbg !881
  %11 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %4, align 8, !dbg !882
  call void @GuestInfoLegacy(%struct.GuestInfoCollector* %11, %struct.GuestMemInfoLegacy* %8), !dbg !883
  %12 = load %struct.DynBuf*, %struct.DynBuf** %6, align 8, !dbg !884
  %13 = bitcast %struct.GuestMemInfoLegacy* %8 to i8*, !dbg !885
  %14 = call signext i8 @DynBuf_Append(%struct.DynBuf* %12, i8* %13, i64 112), !dbg !886
  store i32 0, i32* %7, align 4, !dbg !887
  br label %15, !dbg !889

; <label>:15:                                     ; preds = %83, %3
  %16 = load i32, i32* %7, align 4, !dbg !890
  %17 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %4, align 8, !dbg !893
  %18 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %17, i32 0, i32 3, !dbg !894
  %19 = load i32, i32* %18, align 8, !dbg !894
  %20 = icmp ult i32 %16, %19, !dbg !895
  br i1 %20, label %21, label %86, !dbg !896

; <label>:21:                                     ; preds = %15
  call void @llvm.dbg.declare(metadata %struct.GuestInfoStat** %10, metadata !897, metadata !483), !dbg !899
  %22 = load i32, i32* %7, align 4, !dbg !900
  %23 = zext i32 %22 to i64, !dbg !901
  %24 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %4, align 8, !dbg !901
  %25 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %24, i32 0, i32 4, !dbg !902
  %26 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %25, align 8, !dbg !902
  %27 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %26, i64 %23, !dbg !901
  store %struct.GuestInfoStat* %27, %struct.GuestInfoStat** %10, align 8, !dbg !899
  %28 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %10, align 8, !dbg !903
  %29 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %28, i32 0, i32 3, !dbg !905
  %30 = load %struct.GuestInfoQuery*, %struct.GuestInfoQuery** %29, align 8, !dbg !905
  %31 = getelementptr inbounds %struct.GuestInfoQuery, %struct.GuestInfoQuery* %30, i32 0, i32 1, !dbg !906
  %32 = load i8*, i8** %31, align 8, !dbg !906
  %33 = load i8, i8* %32, align 1, !dbg !907
  %34 = icmp ne i8 %33, 0, !dbg !907
  br i1 %34, label %36, label %35, !dbg !908

; <label>:35:                                     ; preds = %21
  br label %83, !dbg !909

; <label>:36:                                     ; preds = %21
  %37 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %10, align 8, !dbg !911
  %38 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %37, i32 0, i32 3, !dbg !913
  %39 = load %struct.GuestInfoQuery*, %struct.GuestInfoQuery** %38, align 8, !dbg !913
  %40 = getelementptr inbounds %struct.GuestInfoQuery, %struct.GuestInfoQuery* %39, i32 0, i32 6, !dbg !914
  %41 = load i32, i32* %40, align 8, !dbg !914
  %42 = icmp eq i32 %41, 11, !dbg !915
  br i1 %42, label %43, label %53, !dbg !916

; <label>:43:                                     ; preds = %36
  %44 = load i8, i8* %9, align 1, !dbg !917
  %45 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %10, align 8, !dbg !919
  %46 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %45, i32 0, i32 3, !dbg !920
  %47 = load %struct.GuestInfoQuery*, %struct.GuestInfoQuery** %46, align 8, !dbg !920
  %48 = getelementptr inbounds %struct.GuestInfoQuery, %struct.GuestInfoQuery* %47, i32 0, i32 4, !dbg !921
  %49 = load i32, i32* %48, align 8, !dbg !921
  %50 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %4, align 8, !dbg !922
  %51 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %5, align 8, !dbg !923
  %52 = load %struct.DynBuf*, %struct.DynBuf** %6, align 8, !dbg !924
  call void @GuestInfoAppendRate(i8 signext %44, i32 %49, %struct.GuestInfoCollector* %50, %struct.GuestInfoCollector* %51, %struct.DynBuf* %52), !dbg !925
  br label %82, !dbg !926

; <label>:53:                                     ; preds = %36
  %54 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %10, align 8, !dbg !927
  %55 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %54, i32 0, i32 0, !dbg !929
  %56 = load i32, i32* %55, align 8, !dbg !929
  %57 = load i8, i8* %9, align 1, !dbg !930
  %58 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %10, align 8, !dbg !931
  %59 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %58, i32 0, i32 3, !dbg !932
  %60 = load %struct.GuestInfoQuery*, %struct.GuestInfoQuery** %59, align 8, !dbg !932
  %61 = getelementptr inbounds %struct.GuestInfoQuery, %struct.GuestInfoQuery* %60, i32 0, i32 4, !dbg !933
  %62 = load i32, i32* %61, align 8, !dbg !933
  %63 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %10, align 8, !dbg !934
  %64 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %63, i32 0, i32 3, !dbg !935
  %65 = load %struct.GuestInfoQuery*, %struct.GuestInfoQuery** %64, align 8, !dbg !935
  %66 = getelementptr inbounds %struct.GuestInfoQuery, %struct.GuestInfoQuery* %65, i32 0, i32 5, !dbg !936
  %67 = load i32, i32* %66, align 4, !dbg !936
  %68 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %10, align 8, !dbg !937
  %69 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %68, i32 0, i32 3, !dbg !938
  %70 = load %struct.GuestInfoQuery*, %struct.GuestInfoQuery** %69, align 8, !dbg !938
  %71 = getelementptr inbounds %struct.GuestInfoQuery, %struct.GuestInfoQuery* %70, i32 0, i32 6, !dbg !939
  %72 = load i32, i32* %71, align 8, !dbg !939
  %73 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %10, align 8, !dbg !940
  %74 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %73, i32 0, i32 2, !dbg !941
  %75 = bitcast i64* %74 to i8*, !dbg !942
  %76 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %10, align 8, !dbg !943
  %77 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %76, i32 0, i32 2, !dbg !944
  %78 = load i64, i64* %77, align 8, !dbg !944
  %79 = call zeroext i16 @GuestInfoBytesNeededUIntDatum(i64 %78), !dbg !945
  %80 = zext i16 %79 to i64, !dbg !945
  %81 = load %struct.DynBuf*, %struct.DynBuf** %6, align 8, !dbg !946
  call void @GuestInfoAppendStat(i32 %56, i8 signext %57, i32 %62, i32 %67, i32 %72, i8* %75, i64 %80, %struct.DynBuf* %81), !dbg !947
  br label %82

; <label>:82:                                     ; preds = %53, %43
  store i8 0, i8* %9, align 1, !dbg !948
  br label %83, !dbg !949

; <label>:83:                                     ; preds = %82, %35
  %84 = load i32, i32* %7, align 4, !dbg !950
  %85 = add i32 %84, 1, !dbg !950
  store i32 %85, i32* %7, align 4, !dbg !950
  br label %15, !dbg !952, !llvm.loop !953

; <label>:86:                                     ; preds = %15
  ret void, !dbg !955
}

; Function Attrs: nounwind uwtable
define i32 @GuestInfo_StatProviderPoll(i8*) #0 !dbg !956 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ToolsAppCtx*, align 8
  %4 = alloca %struct.DynBuf, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !963, metadata !483), !dbg !964
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %3, metadata !965, metadata !483), !dbg !998
  %5 = load i8*, i8** %2, align 8, !dbg !999
  %6 = bitcast i8* %5 to %struct.ToolsAppCtx*, !dbg !999
  store %struct.ToolsAppCtx* %6, %struct.ToolsAppCtx** %3, align 8, !dbg !998
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %4, metadata !1000, metadata !483), !dbg !1001
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i32 0, i32 0)), !dbg !1002
  call void @DynBuf_Init(%struct.DynBuf* %4), !dbg !1003
  %7 = call signext i8 @GuestInfoTakeSample(%struct.DynBuf* %4), !dbg !1004
  %8 = icmp ne i8 %7, 0, !dbg !1004
  br i1 %8, label %10, label %9, !dbg !1006

; <label>:9:                                      ; preds = %1
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0)), !dbg !1007
  br label %16, !dbg !1009

; <label>:10:                                     ; preds = %1
  %11 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !1010
  %12 = call signext i8 @GuestInfo_ServerReportStats(%struct.ToolsAppCtx* %11, %struct.DynBuf* %4), !dbg !1013
  %13 = icmp ne i8 %12, 0, !dbg !1013
  br i1 %13, label %15, label %14, !dbg !1014

; <label>:14:                                     ; preds = %10
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0)), !dbg !1015
  br label %15, !dbg !1017

; <label>:15:                                     ; preds = %14, %10
  br label %16

; <label>:16:                                     ; preds = %15, %9
  call void @DynBuf_Destroy(%struct.DynBuf* %4), !dbg !1018
  ret i32 1, !dbg !1019
}

declare void @g_log(i8*, i32, i8*, ...) #2

declare void @DynBuf_Init(%struct.DynBuf*) #2

declare signext i8 @GuestInfo_ServerReportStats(%struct.ToolsAppCtx*, %struct.DynBuf*) #2

declare void @DynBuf_Destroy(%struct.DynBuf*) #2

; Function Attrs: nounwind uwtable
define void @GuestInfo_StatProviderShutdown() #0 !dbg !1020 {
  %1 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** @gDiskStatsList, align 8, !dbg !1023
  call void @GuestInfoDeleteDiskStatsList(%struct.GuestInfoDiskStatsList* %1), !dbg !1024
  store %struct.GuestInfoDiskStatsList* null, %struct.GuestInfoDiskStatsList** @gDiskStatsList, align 8, !dbg !1025
  %2 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** @gCurrentCollector, align 8, !dbg !1026
  call void @GuestInfoDestroyCollector(%struct.GuestInfoCollector* %2), !dbg !1027
  store %struct.GuestInfoCollector* null, %struct.GuestInfoCollector** @gCurrentCollector, align 8, !dbg !1028
  %3 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** @gPreviousCollector, align 8, !dbg !1029
  call void @GuestInfoDestroyCollector(%struct.GuestInfoCollector* %3), !dbg !1030
  store %struct.GuestInfoCollector* null, %struct.GuestInfoCollector** @gPreviousCollector, align 8, !dbg !1031
  ret void, !dbg !1032
}

; Function Attrs: nounwind uwtable
define internal void @GuestInfoDeleteDiskStatsList(%struct.GuestInfoDiskStatsList*) #0 !dbg !1033 {
  %2 = alloca %struct.GuestInfoDiskStatsList*, align 8
  %3 = alloca %struct.GuestInfoDiskStatsList*, align 8
  %4 = alloca %struct.GuestInfoDiskStatsList*, align 8
  store %struct.GuestInfoDiskStatsList* %0, %struct.GuestInfoDiskStatsList** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestInfoDiskStatsList** %2, metadata !1036, metadata !483), !dbg !1037
  call void @llvm.dbg.declare(metadata %struct.GuestInfoDiskStatsList** %3, metadata !1038, metadata !483), !dbg !1039
  %5 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** %2, align 8, !dbg !1040
  store %struct.GuestInfoDiskStatsList* %5, %struct.GuestInfoDiskStatsList** %3, align 8, !dbg !1039
  br label %6, !dbg !1041

; <label>:6:                                      ; preds = %9, %1
  %7 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** %3, align 8, !dbg !1042
  %8 = icmp ne %struct.GuestInfoDiskStatsList* %7, null, !dbg !1044
  br i1 %8, label %9, label %19, !dbg !1045

; <label>:9:                                      ; preds = %6
  call void @llvm.dbg.declare(metadata %struct.GuestInfoDiskStatsList** %4, metadata !1046, metadata !483), !dbg !1048
  %10 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** %3, align 8, !dbg !1049
  %11 = getelementptr inbounds %struct.GuestInfoDiskStatsList, %struct.GuestInfoDiskStatsList* %10, i32 0, i32 0, !dbg !1050
  %12 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** %11, align 8, !dbg !1050
  store %struct.GuestInfoDiskStatsList* %12, %struct.GuestInfoDiskStatsList** %4, align 8, !dbg !1048
  %13 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** %3, align 8, !dbg !1051
  %14 = getelementptr inbounds %struct.GuestInfoDiskStatsList, %struct.GuestInfoDiskStatsList* %13, i32 0, i32 1, !dbg !1052
  %15 = load i8*, i8** %14, align 8, !dbg !1052
  call void @free(i8* %15) #6, !dbg !1053
  %16 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** %3, align 8, !dbg !1054
  %17 = bitcast %struct.GuestInfoDiskStatsList* %16 to i8*, !dbg !1054
  call void @free(i8* %17) #6, !dbg !1055
  %18 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** %4, align 8, !dbg !1056
  store %struct.GuestInfoDiskStatsList* %18, %struct.GuestInfoDiskStatsList** %3, align 8, !dbg !1057
  br label %6, !dbg !1058, !llvm.loop !1060

; <label>:19:                                     ; preds = %6
  ret void, !dbg !1061
}

declare i8* @UtilSafeCalloc0(i64, i64) #2

declare %struct.HashTable* @HashTable_Alloc(i32, i32, void (i8*)*) #2

declare i8* @Str_SafeAsprintf(i64*, i8*, ...) #2

declare signext i8 @HashTable_Insert(%struct.HashTable*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

declare void @HashTable_Free(%struct.HashTable*) #2

; Function Attrs: nounwind
declare i64 @sysconf(i32) #3

; Function Attrs: nounwind uwtable
define internal signext i8 @GuestInfoProcData(i8*, i8 signext, %struct.GuestInfoCollector*) #0 !dbg !1062 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.GuestInfoCollector*, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1065, metadata !483), !dbg !1066
  store i8 %1, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1067, metadata !483), !dbg !1068
  store %struct.GuestInfoCollector* %2, %struct.GuestInfoCollector** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestInfoCollector** %7, metadata !1069, metadata !483), !dbg !1070
  call void @llvm.dbg.declare(metadata [4096 x i8]* %8, metadata !1071, metadata !483), !dbg !1075
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %9, metadata !1076, metadata !483), !dbg !1131
  %15 = load i8*, i8** %5, align 8, !dbg !1132
  %16 = call %struct._IO_FILE* @Posix_Fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)), !dbg !1133
  store %struct._IO_FILE* %16, %struct._IO_FILE** %9, align 8, !dbg !1131
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !1134
  %18 = icmp eq %struct._IO_FILE* %17, null, !dbg !1136
  br i1 %18, label %19, label %21, !dbg !1137

; <label>:19:                                     ; preds = %3
  %20 = load i8*, i8** %5, align 8, !dbg !1138
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.GuestInfoProcData, i32 0, i32 0), i8* %20), !dbg !1140
  store i8 0, i8* %4, align 1, !dbg !1141
  br label %66, !dbg !1141

; <label>:21:                                     ; preds = %3
  br label %22, !dbg !1142

; <label>:22:                                     ; preds = %58, %57, %46, %34, %21
  %23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0, !dbg !1143
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !1145
  %25 = call i8* @fgets(i8* %23, i32 4096, %struct._IO_FILE* %24), !dbg !1146
  %26 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0, !dbg !1147
  %27 = icmp eq i8* %25, %26, !dbg !1148
  br i1 %27, label %28, label %63, !dbg !1149

; <label>:28:                                     ; preds = %22
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1150, metadata !483), !dbg !1152
  store i64 0, i64* %10, align 8, !dbg !1152
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1153, metadata !483), !dbg !1154
  store i8* null, i8** %11, align 8, !dbg !1154
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1155, metadata !483), !dbg !1156
  %29 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0, !dbg !1157
  %30 = call i8* @strtok_r(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8** %11) #6, !dbg !1158
  store i8* %30, i8** %12, align 8, !dbg !1156
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1159, metadata !483), !dbg !1160
  %31 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8** %11) #6, !dbg !1161
  store i8* %31, i8** %13, align 8, !dbg !1160
  %32 = load i8*, i8** %12, align 8, !dbg !1162
  %33 = icmp eq i8* %32, null, !dbg !1164
  br i1 %33, label %34, label %35, !dbg !1165

; <label>:34:                                     ; preds = %28
  br label %22, !dbg !1166, !llvm.loop !1168

; <label>:35:                                     ; preds = %28
  %36 = load i8, i8* %6, align 1, !dbg !1169
  %37 = sext i8 %36 to i32, !dbg !1169
  %38 = icmp ne i32 %37, 0, !dbg !1171
  br i1 %38, label %39, label %50, !dbg !1172

; <label>:39:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1173, metadata !483), !dbg !1175
  %40 = load i8*, i8** %12, align 8, !dbg !1176
  %41 = load i8, i8* %6, align 1, !dbg !1177
  %42 = sext i8 %41 to i32, !dbg !1177
  %43 = call i8* @strrchr(i8* %40, i32 %42) #7, !dbg !1178
  store i8* %43, i8** %14, align 8, !dbg !1175
  %44 = load i8*, i8** %14, align 8, !dbg !1179
  %45 = icmp eq i8* %44, null, !dbg !1181
  br i1 %45, label %46, label %47, !dbg !1182

; <label>:46:                                     ; preds = %39
  br label %22, !dbg !1183, !llvm.loop !1168

; <label>:47:                                     ; preds = %39
  %48 = load i8*, i8** %14, align 8, !dbg !1185
  store i8 0, i8* %48, align 1, !dbg !1187
  br label %49

; <label>:49:                                     ; preds = %47
  br label %50, !dbg !1188

; <label>:50:                                     ; preds = %49, %35
  %51 = load i8*, i8** %13, align 8, !dbg !1189
  %52 = icmp eq i8* %51, null, !dbg !1191
  br i1 %52, label %57, label %53, !dbg !1192

; <label>:53:                                     ; preds = %50
  %54 = load i8*, i8** %13, align 8, !dbg !1193
  %55 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i64* %10) #6, !dbg !1194
  %56 = icmp ne i32 %55, 1, !dbg !1195
  br i1 %56, label %57, label %58, !dbg !1196

; <label>:57:                                     ; preds = %53, %50
  br label %22, !dbg !1198, !llvm.loop !1168

; <label>:58:                                     ; preds = %53
  %59 = load i8*, i8** %5, align 8, !dbg !1200
  %60 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %7, align 8, !dbg !1201
  %61 = load i8*, i8** %12, align 8, !dbg !1202
  %62 = load i64, i64* %10, align 8, !dbg !1203
  call void @GuestInfoCollectStat(i8* %59, %struct.GuestInfoCollector* %60, i8* %61, i64 %62), !dbg !1204
  br label %22, !dbg !1205, !llvm.loop !1168

; <label>:63:                                     ; preds = %22
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !1207
  %65 = call i32 @fclose(%struct._IO_FILE* %64), !dbg !1208
  store i8 1, i8* %4, align 1, !dbg !1209
  br label %66, !dbg !1209

; <label>:66:                                     ; preds = %63, %19
  %67 = load i8, i8* %4, align 1, !dbg !1210
  ret i8 %67, !dbg !1210
}

; Function Attrs: nounwind uwtable
define internal signext i8 @GuestInfoGetUpTime(double*) #0 !dbg !1211 {
  %2 = alloca i8, align 1
  %3 = alloca double*, align 8
  %4 = alloca [512 x i8], align 16
  %5 = alloca i8, align 1
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca double, align 8
  store double* %0, double** %3, align 8
  call void @llvm.dbg.declare(metadata double** %3, metadata !1215, metadata !483), !dbg !1216
  call void @llvm.dbg.declare(metadata [512 x i8]* %4, metadata !1217, metadata !483), !dbg !1221
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1222, metadata !483), !dbg !1223
  store i8 0, i8* %5, align 1, !dbg !1223
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !1224, metadata !483), !dbg !1225
  %8 = call %struct._IO_FILE* @Posix_Fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)), !dbg !1226
  store %struct._IO_FILE* %8, %struct._IO_FILE** %6, align 8, !dbg !1225
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1227
  %10 = icmp eq %struct._IO_FILE* %9, null, !dbg !1229
  br i1 %10, label %11, label %13, !dbg !1230

; <label>:11:                                     ; preds = %1
  %12 = load i8, i8* %5, align 1, !dbg !1231
  store i8 %12, i8* %2, align 1, !dbg !1233
  br label %30, !dbg !1233

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0, !dbg !1234
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1236
  %16 = call i8* @fgets(i8* %14, i32 512, %struct._IO_FILE* %15), !dbg !1237
  %17 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0, !dbg !1238
  %18 = icmp eq i8* %16, %17, !dbg !1239
  br i1 %18, label %19, label %26, !dbg !1240

; <label>:19:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata double* %7, metadata !1241, metadata !483), !dbg !1243
  %20 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0, !dbg !1244
  %21 = load double*, double** %3, align 8, !dbg !1246
  %22 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), double* %21, double* %7) #6, !dbg !1247
  %23 = icmp eq i32 %22, 2, !dbg !1248
  br i1 %23, label %24, label %25, !dbg !1249

; <label>:24:                                     ; preds = %19
  store i8 1, i8* %5, align 1, !dbg !1250
  br label %25, !dbg !1252

; <label>:25:                                     ; preds = %24, %19
  br label %26, !dbg !1253

; <label>:26:                                     ; preds = %25, %13
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1254
  %28 = call i32 @fclose(%struct._IO_FILE* %27), !dbg !1255
  %29 = load i8, i8* %5, align 1, !dbg !1256
  store i8 %29, i8* %2, align 1, !dbg !1257
  br label %30, !dbg !1257

; <label>:30:                                     ; preds = %26, %11
  %31 = load i8, i8* %2, align 1, !dbg !1258
  ret i8 %31, !dbg !1258
}

; Function Attrs: nounwind uwtable
define internal void @GuestInfoStoreStatByID(i32, %struct.GuestInfoCollector*, i64) #0 !dbg !1259 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.GuestInfoCollector*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.GuestInfoStat*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1262, metadata !483), !dbg !1263
  store %struct.GuestInfoCollector* %1, %struct.GuestInfoCollector** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestInfoCollector** %5, metadata !1264, metadata !483), !dbg !1265
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1266, metadata !483), !dbg !1267
  call void @llvm.dbg.declare(metadata %struct.GuestInfoStat** %7, metadata !1268, metadata !483), !dbg !1269
  store %struct.GuestInfoStat* null, %struct.GuestInfoStat** %7, align 8, !dbg !1269
  %8 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %5, align 8, !dbg !1270
  %9 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %8, i32 0, i32 5, !dbg !1271
  %10 = load %struct.HashTable*, %struct.HashTable** %9, align 8, !dbg !1271
  %11 = load i32, i32* %4, align 4, !dbg !1272
  %12 = zext i32 %11 to i64, !dbg !1273
  %13 = inttoptr i64 %12 to i8*, !dbg !1274
  %14 = bitcast %struct.GuestInfoStat** %7 to i8**, !dbg !1275
  %15 = call signext i8 @HashTable_Lookup(%struct.HashTable* %10, i8* %13, i8** %14), !dbg !1276
  %16 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %7, align 8, !dbg !1277
  %17 = load i64, i64* %6, align 8, !dbg !1278
  call void @GuestInfoStoreStat(%struct.GuestInfoStat* %16, i64 %17), !dbg !1279
  ret void, !dbg !1280
}

declare signext i8 @HashTable_Lookup(%struct.HashTable*, i8*, i8**) #2

; Function Attrs: nounwind uwtable
define internal void @GuestInfoDeriveMemNeeded(%struct.GuestInfoCollector*) #0 !dbg !1281 {
  %2 = alloca %struct.GuestInfoCollector*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.GuestInfoStat*, align 8
  %7 = alloca %struct.GuestInfoStat*, align 8
  %8 = alloca %struct.GuestInfoStat*, align 8
  %9 = alloca %struct.GuestInfoStat*, align 8
  %10 = alloca %struct.GuestInfoStat*, align 8
  %11 = alloca %struct.GuestInfoStat*, align 8
  %12 = alloca %struct.GuestInfoStat*, align 8
  %13 = alloca %struct.GuestInfoStat*, align 8
  %14 = alloca %struct.GuestInfoStat*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.GuestInfoCollector* %0, %struct.GuestInfoCollector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestInfoCollector** %2, metadata !1282, metadata !483), !dbg !1283
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1284, metadata !483), !dbg !1285
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1286, metadata !483), !dbg !1287
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1288, metadata !483), !dbg !1289
  store i64 0, i64* %5, align 8, !dbg !1289
  call void @llvm.dbg.declare(metadata %struct.GuestInfoStat** %6, metadata !1290, metadata !483), !dbg !1291
  store %struct.GuestInfoStat* null, %struct.GuestInfoStat** %6, align 8, !dbg !1291
  call void @llvm.dbg.declare(metadata %struct.GuestInfoStat** %7, metadata !1292, metadata !483), !dbg !1293
  store %struct.GuestInfoStat* null, %struct.GuestInfoStat** %7, align 8, !dbg !1293
  %18 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !1294
  %19 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %18, i32 0, i32 5, !dbg !1295
  %20 = load %struct.HashTable*, %struct.HashTable** %19, align 8, !dbg !1295
  %21 = bitcast %struct.GuestInfoStat** %7 to i8**, !dbg !1296
  %22 = call signext i8 @HashTable_Lookup(%struct.HashTable* %20, i8* inttoptr (i64 6 to i8*), i8** %21), !dbg !1297
  %23 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !1298
  %24 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %23, i32 0, i32 5, !dbg !1299
  %25 = load %struct.HashTable*, %struct.HashTable** %24, align 8, !dbg !1299
  %26 = bitcast %struct.GuestInfoStat** %6 to i8**, !dbg !1300
  %27 = call signext i8 @HashTable_Lookup(%struct.HashTable* %25, i8* inttoptr (i64 25 to i8*), i8** %26), !dbg !1301
  %28 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %6, align 8, !dbg !1302
  %29 = icmp ne %struct.GuestInfoStat* %28, null, !dbg !1304
  br i1 %29, label %30, label %39, !dbg !1305

; <label>:30:                                     ; preds = %1
  %31 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %6, align 8, !dbg !1306
  %32 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %31, i32 0, i32 0, !dbg !1308
  %33 = load i32, i32* %32, align 8, !dbg !1308
  %34 = icmp eq i32 %33, 0, !dbg !1309
  br i1 %34, label %35, label %39, !dbg !1310

; <label>:35:                                     ; preds = %30
  %36 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %6, align 8, !dbg !1311
  %37 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %36, i32 0, i32 2, !dbg !1313
  %38 = load i64, i64* %37, align 8, !dbg !1313
  store i64 %38, i64* %5, align 8, !dbg !1314
  br label %202, !dbg !1315

; <label>:39:                                     ; preds = %30, %1
  call void @llvm.dbg.declare(metadata %struct.GuestInfoStat** %8, metadata !1316, metadata !483), !dbg !1318
  store %struct.GuestInfoStat* null, %struct.GuestInfoStat** %8, align 8, !dbg !1318
  call void @llvm.dbg.declare(metadata %struct.GuestInfoStat** %9, metadata !1319, metadata !483), !dbg !1320
  store %struct.GuestInfoStat* null, %struct.GuestInfoStat** %9, align 8, !dbg !1320
  call void @llvm.dbg.declare(metadata %struct.GuestInfoStat** %10, metadata !1321, metadata !483), !dbg !1322
  store %struct.GuestInfoStat* null, %struct.GuestInfoStat** %10, align 8, !dbg !1322
  call void @llvm.dbg.declare(metadata %struct.GuestInfoStat** %11, metadata !1323, metadata !483), !dbg !1324
  store %struct.GuestInfoStat* null, %struct.GuestInfoStat** %11, align 8, !dbg !1324
  call void @llvm.dbg.declare(metadata %struct.GuestInfoStat** %12, metadata !1325, metadata !483), !dbg !1326
  store %struct.GuestInfoStat* null, %struct.GuestInfoStat** %12, align 8, !dbg !1326
  call void @llvm.dbg.declare(metadata %struct.GuestInfoStat** %13, metadata !1327, metadata !483), !dbg !1328
  store %struct.GuestInfoStat* null, %struct.GuestInfoStat** %13, align 8, !dbg !1328
  call void @llvm.dbg.declare(metadata %struct.GuestInfoStat** %14, metadata !1329, metadata !483), !dbg !1330
  store %struct.GuestInfoStat* null, %struct.GuestInfoStat** %14, align 8, !dbg !1330
  %40 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !1331
  %41 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %40, i32 0, i32 5, !dbg !1332
  %42 = load %struct.HashTable*, %struct.HashTable** %41, align 8, !dbg !1332
  %43 = bitcast %struct.GuestInfoStat** %8 to i8**, !dbg !1333
  %44 = call signext i8 @HashTable_Lookup(%struct.HashTable* %42, i8* inttoptr (i64 4 to i8*), i8** %43), !dbg !1334
  %45 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !1335
  %46 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %45, i32 0, i32 5, !dbg !1336
  %47 = load %struct.HashTable*, %struct.HashTable** %46, align 8, !dbg !1336
  %48 = bitcast %struct.GuestInfoStat** %9 to i8**, !dbg !1337
  %49 = call signext i8 @HashTable_Lookup(%struct.HashTable* %47, i8* inttoptr (i64 27 to i8*), i8** %48), !dbg !1338
  %50 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !1339
  %51 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %50, i32 0, i32 5, !dbg !1340
  %52 = load %struct.HashTable*, %struct.HashTable** %51, align 8, !dbg !1340
  %53 = bitcast %struct.GuestInfoStat** %10 to i8**, !dbg !1341
  %54 = call signext i8 @HashTable_Lookup(%struct.HashTable* %52, i8* inttoptr (i64 26 to i8*), i8** %53), !dbg !1342
  %55 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !1343
  %56 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %55, i32 0, i32 5, !dbg !1344
  %57 = load %struct.HashTable*, %struct.HashTable** %56, align 8, !dbg !1344
  %58 = bitcast %struct.GuestInfoStat** %11 to i8**, !dbg !1345
  %59 = call signext i8 @HashTable_Lookup(%struct.HashTable* %57, i8* inttoptr (i64 3 to i8*), i8** %58), !dbg !1346
  %60 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !1347
  %61 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %60, i32 0, i32 5, !dbg !1348
  %62 = load %struct.HashTable*, %struct.HashTable** %61, align 8, !dbg !1348
  %63 = bitcast %struct.GuestInfoStat** %12 to i8**, !dbg !1349
  %64 = call signext i8 @HashTable_Lookup(%struct.HashTable* %62, i8* inttoptr (i64 34 to i8*), i8** %63), !dbg !1350
  %65 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !1351
  %66 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %65, i32 0, i32 5, !dbg !1352
  %67 = load %struct.HashTable*, %struct.HashTable** %66, align 8, !dbg !1352
  %68 = bitcast %struct.GuestInfoStat** %13 to i8**, !dbg !1353
  %69 = call signext i8 @HashTable_Lookup(%struct.HashTable* %67, i8* inttoptr (i64 32 to i8*), i8** %68), !dbg !1354
  %70 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !1355
  %71 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %70, i32 0, i32 5, !dbg !1356
  %72 = load %struct.HashTable*, %struct.HashTable** %71, align 8, !dbg !1356
  %73 = bitcast %struct.GuestInfoStat** %14 to i8**, !dbg !1357
  %74 = call signext i8 @HashTable_Lookup(%struct.HashTable* %72, i8* inttoptr (i64 22 to i8*), i8** %73), !dbg !1358
  %75 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %8, align 8, !dbg !1359
  %76 = icmp ne %struct.GuestInfoStat* %75, null, !dbg !1361
  br i1 %76, label %77, label %201, !dbg !1362

; <label>:77:                                     ; preds = %39
  %78 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %8, align 8, !dbg !1363
  %79 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %78, i32 0, i32 0, !dbg !1365
  %80 = load i32, i32* %79, align 8, !dbg !1365
  %81 = icmp eq i32 %80, 0, !dbg !1366
  br i1 %81, label %82, label %201, !dbg !1367

; <label>:82:                                     ; preds = %77
  %83 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %9, align 8, !dbg !1368
  %84 = icmp ne %struct.GuestInfoStat* %83, null, !dbg !1369
  br i1 %84, label %85, label %201, !dbg !1370

; <label>:85:                                     ; preds = %82
  %86 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %9, align 8, !dbg !1371
  %87 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %86, i32 0, i32 0, !dbg !1372
  %88 = load i32, i32* %87, align 8, !dbg !1372
  %89 = icmp eq i32 %88, 0, !dbg !1373
  br i1 %89, label %90, label %201, !dbg !1374

; <label>:90:                                     ; preds = %85
  %91 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %10, align 8, !dbg !1375
  %92 = icmp ne %struct.GuestInfoStat* %91, null, !dbg !1376
  br i1 %92, label %93, label %201, !dbg !1377

; <label>:93:                                     ; preds = %90
  %94 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %10, align 8, !dbg !1378
  %95 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %94, i32 0, i32 0, !dbg !1379
  %96 = load i32, i32* %95, align 8, !dbg !1379
  %97 = icmp eq i32 %96, 0, !dbg !1380
  br i1 %97, label %98, label %201, !dbg !1381

; <label>:98:                                     ; preds = %93
  %99 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %11, align 8, !dbg !1382
  %100 = icmp ne %struct.GuestInfoStat* %99, null, !dbg !1383
  br i1 %100, label %101, label %201, !dbg !1384

; <label>:101:                                    ; preds = %98
  %102 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %12, align 8, !dbg !1385
  %103 = icmp ne %struct.GuestInfoStat* %102, null, !dbg !1386
  br i1 %103, label %104, label %201, !dbg !1387

; <label>:104:                                    ; preds = %101
  %105 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %13, align 8, !dbg !1388
  %106 = icmp ne %struct.GuestInfoStat* %105, null, !dbg !1389
  br i1 %106, label %107, label %201, !dbg !1390

; <label>:107:                                    ; preds = %104
  %108 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %14, align 8, !dbg !1391
  %109 = icmp ne %struct.GuestInfoStat* %108, null, !dbg !1392
  br i1 %109, label %110, label %201, !dbg !1393

; <label>:110:                                    ; preds = %107
  %111 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %14, align 8, !dbg !1394
  %112 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %111, i32 0, i32 0, !dbg !1395
  %113 = load i32, i32* %112, align 8, !dbg !1395
  %114 = icmp eq i32 %113, 0, !dbg !1396
  br i1 %114, label %115, label %201, !dbg !1397

; <label>:115:                                    ; preds = %110
  call void @llvm.dbg.declare(metadata i64* %15, metadata !1399, metadata !483), !dbg !1401
  call void @llvm.dbg.declare(metadata i64* %16, metadata !1402, metadata !483), !dbg !1403
  %116 = call i64 @sysconf(i32 30) #6, !dbg !1404
  %117 = udiv i64 %116, 1024, !dbg !1405
  store i64 %117, i64* %16, align 8, !dbg !1403
  call void @llvm.dbg.declare(metadata i64* %17, metadata !1406, metadata !483), !dbg !1407
  %118 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %14, align 8, !dbg !1408
  %119 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %118, i32 0, i32 2, !dbg !1409
  %120 = load i64, i64* %119, align 8, !dbg !1409
  %121 = load i64, i64* %16, align 8, !dbg !1410
  %122 = mul i64 %120, %121, !dbg !1411
  store i64 %122, i64* %17, align 8, !dbg !1407
  %123 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %8, align 8, !dbg !1412
  %124 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %123, i32 0, i32 2, !dbg !1413
  %125 = load i64, i64* %124, align 8, !dbg !1413
  %126 = load i64, i64* %17, align 8, !dbg !1414
  %127 = sub i64 %125, %126, !dbg !1415
  store i64 %127, i64* %5, align 8, !dbg !1416
  %128 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %11, align 8, !dbg !1417
  %129 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %128, i32 0, i32 0, !dbg !1419
  %130 = load i32, i32* %129, align 8, !dbg !1419
  %131 = icmp eq i32 %130, 0, !dbg !1420
  br i1 %131, label %132, label %145, !dbg !1421

; <label>:132:                                    ; preds = %115
  %133 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %13, align 8, !dbg !1422
  %134 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %133, i32 0, i32 0, !dbg !1424
  %135 = load i32, i32* %134, align 8, !dbg !1424
  %136 = icmp eq i32 %135, 0, !dbg !1425
  br i1 %136, label %137, label %145, !dbg !1426

; <label>:137:                                    ; preds = %132
  %138 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %11, align 8, !dbg !1427
  %139 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %138, i32 0, i32 2, !dbg !1429
  %140 = load i64, i64* %139, align 8, !dbg !1429
  %141 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %13, align 8, !dbg !1430
  %142 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %141, i32 0, i32 2, !dbg !1431
  %143 = load i64, i64* %142, align 8, !dbg !1431
  %144 = add i64 %140, %143, !dbg !1432
  store i64 %144, i64* %15, align 8, !dbg !1433
  br label %153, !dbg !1434

; <label>:145:                                    ; preds = %132, %115
  %146 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %9, align 8, !dbg !1435
  %147 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %146, i32 0, i32 2, !dbg !1437
  %148 = load i64, i64* %147, align 8, !dbg !1437
  %149 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %10, align 8, !dbg !1438
  %150 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %149, i32 0, i32 2, !dbg !1439
  %151 = load i64, i64* %150, align 8, !dbg !1439
  %152 = add i64 %148, %151, !dbg !1440
  store i64 %152, i64* %15, align 8, !dbg !1441
  br label %153

; <label>:153:                                    ; preds = %145, %137
  %154 = load i64, i64* %15, align 8, !dbg !1442
  %155 = udiv i64 %154, 2, !dbg !1443
  %156 = load i64, i64* %17, align 8, !dbg !1442
  %157 = icmp ult i64 %155, %156, !dbg !1444
  br i1 %157, label %158, label %161, !dbg !1444

; <label>:158:                                    ; preds = %153
  %159 = load i64, i64* %15, align 8, !dbg !1445
  %160 = udiv i64 %159, 2, !dbg !1447
  br label %163, !dbg !1448

; <label>:161:                                    ; preds = %153
  %162 = load i64, i64* %17, align 8, !dbg !1449
  br label %163, !dbg !1451

; <label>:163:                                    ; preds = %161, %158
  %164 = phi i64 [ %160, %158 ], [ %162, %161 ], !dbg !1452
  %165 = load i64, i64* %15, align 8, !dbg !1454
  %166 = sub i64 %165, %164, !dbg !1454
  store i64 %166, i64* %15, align 8, !dbg !1454
  %167 = load i64, i64* %15, align 8, !dbg !1455
  %168 = load i64, i64* %5, align 8, !dbg !1456
  %169 = add i64 %168, %167, !dbg !1456
  store i64 %169, i64* %5, align 8, !dbg !1456
  %170 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %12, align 8, !dbg !1457
  %171 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %170, i32 0, i32 0, !dbg !1459
  %172 = load i32, i32* %171, align 8, !dbg !1459
  %173 = icmp eq i32 %172, 0, !dbg !1460
  br i1 %173, label %174, label %196, !dbg !1461

; <label>:174:                                    ; preds = %163
  %175 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %12, align 8, !dbg !1462
  %176 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %175, i32 0, i32 2, !dbg !1464
  %177 = load i64, i64* %176, align 8, !dbg !1464
  %178 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %12, align 8, !dbg !1465
  %179 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %178, i32 0, i32 2, !dbg !1466
  %180 = load i64, i64* %179, align 8, !dbg !1466
  %181 = udiv i64 %180, 2, !dbg !1467
  %182 = load i64, i64* %17, align 8, !dbg !1465
  %183 = icmp ult i64 %181, %182, !dbg !1468
  br i1 %183, label %184, label %189, !dbg !1468

; <label>:184:                                    ; preds = %174
  %185 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %12, align 8, !dbg !1469
  %186 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %185, i32 0, i32 2, !dbg !1471
  %187 = load i64, i64* %186, align 8, !dbg !1471
  %188 = udiv i64 %187, 2, !dbg !1472
  br label %191, !dbg !1473

; <label>:189:                                    ; preds = %174
  %190 = load i64, i64* %17, align 8, !dbg !1474
  br label %191, !dbg !1476

; <label>:191:                                    ; preds = %189, %184
  %192 = phi i64 [ %188, %184 ], [ %190, %189 ], !dbg !1477
  %193 = sub i64 %177, %192, !dbg !1479
  %194 = load i64, i64* %5, align 8, !dbg !1480
  %195 = add i64 %194, %193, !dbg !1480
  store i64 %195, i64* %5, align 8, !dbg !1480
  br label %196, !dbg !1481

; <label>:196:                                    ; preds = %191, %163
  %197 = load i64, i64* %5, align 8, !dbg !1482
  %198 = icmp slt i64 %197, 0, !dbg !1484
  br i1 %198, label %199, label %200, !dbg !1485

; <label>:199:                                    ; preds = %196
  store i64 0, i64* %5, align 8, !dbg !1486
  br label %200, !dbg !1488

; <label>:200:                                    ; preds = %199, %196
  br label %201, !dbg !1489

; <label>:201:                                    ; preds = %200, %110, %107, %104, %101, %98, %93, %90, %85, %82, %77, %39
  br label %202

; <label>:202:                                    ; preds = %201, %35
  %203 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %7, align 8, !dbg !1490
  %204 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %203, i32 0, i32 0, !dbg !1492
  %205 = load i32, i32* %204, align 8, !dbg !1492
  %206 = icmp eq i32 %205, 0, !dbg !1493
  br i1 %206, label %207, label %226, !dbg !1494

; <label>:207:                                    ; preds = %202
  %208 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %7, align 8, !dbg !1495
  %209 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %208, i32 0, i32 2, !dbg !1497
  %210 = load i64, i64* %209, align 8, !dbg !1497
  %211 = udiv i64 %210, 20, !dbg !1498
  store i64 %211, i64* %4, align 8, !dbg !1499
  %212 = load i64, i64* %5, align 8, !dbg !1500
  %213 = load i64, i64* %4, align 8, !dbg !1502
  %214 = icmp ugt i64 %212, %213, !dbg !1503
  br i1 %214, label %215, label %219, !dbg !1504

; <label>:215:                                    ; preds = %207
  %216 = load i64, i64* %4, align 8, !dbg !1505
  %217 = load i64, i64* %5, align 8, !dbg !1507
  %218 = sub i64 %217, %216, !dbg !1507
  store i64 %218, i64* %5, align 8, !dbg !1507
  br label %220, !dbg !1508

; <label>:219:                                    ; preds = %207
  store i64 0, i64* %5, align 8, !dbg !1509
  br label %220

; <label>:220:                                    ; preds = %219, %215
  %221 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %7, align 8, !dbg !1511
  %222 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %221, i32 0, i32 2, !dbg !1512
  %223 = load i64, i64* %222, align 8, !dbg !1512
  %224 = load i64, i64* %5, align 8, !dbg !1513
  %225 = sub i64 %223, %224, !dbg !1514
  store i64 %225, i64* %3, align 8, !dbg !1515
  br label %227, !dbg !1516

; <label>:226:                                    ; preds = %202
  store i64 0, i64* %3, align 8, !dbg !1517
  store i64 0, i64* %4, align 8, !dbg !1519
  br label %227

; <label>:227:                                    ; preds = %226, %220
  %228 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !1520
  %229 = load i64, i64* %3, align 8, !dbg !1521
  call void @GuestInfoStoreStatByID(i32 5, %struct.GuestInfoCollector* %228, i64 %229), !dbg !1522
  %230 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !1523
  %231 = load i64, i64* %4, align 8, !dbg !1524
  call void @GuestInfoStoreStatByID(i32 13, %struct.GuestInfoCollector* %230, i64 %231), !dbg !1525
  ret void, !dbg !1526
}

; Function Attrs: nounwind uwtable
define internal void @GuestInfoDecreaseCpuRunQueueByOne(%struct.GuestInfoCollector*) #0 !dbg !1527 {
  %2 = alloca %struct.GuestInfoCollector*, align 8
  %3 = alloca %struct.GuestInfoStat*, align 8
  store %struct.GuestInfoCollector* %0, %struct.GuestInfoCollector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestInfoCollector** %2, metadata !1528, metadata !483), !dbg !1529
  call void @llvm.dbg.declare(metadata %struct.GuestInfoStat** %3, metadata !1530, metadata !483), !dbg !1531
  store %struct.GuestInfoStat* null, %struct.GuestInfoStat** %3, align 8, !dbg !1531
  %4 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %2, align 8, !dbg !1532
  %5 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %4, i32 0, i32 5, !dbg !1533
  %6 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !1533
  %7 = bitcast %struct.GuestInfoStat** %3 to i8**, !dbg !1534
  %8 = call signext i8 @HashTable_Lookup(%struct.HashTable* %6, i8* inttoptr (i64 61 to i8*), i8** %7), !dbg !1535
  %9 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %3, align 8, !dbg !1536
  %10 = icmp ne %struct.GuestInfoStat* %9, null, !dbg !1538
  br i1 %10, label %11, label %32, !dbg !1539

; <label>:11:                                     ; preds = %1
  %12 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %3, align 8, !dbg !1540
  %13 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %12, i32 0, i32 0, !dbg !1542
  %14 = load i32, i32* %13, align 8, !dbg !1542
  %15 = icmp eq i32 %14, 0, !dbg !1543
  br i1 %15, label %16, label %32, !dbg !1544

; <label>:16:                                     ; preds = %11
  %17 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %3, align 8, !dbg !1545
  %18 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %17, i32 0, i32 1, !dbg !1547
  %19 = load i32, i32* %18, align 4, !dbg !1547
  %20 = icmp eq i32 %19, 1, !dbg !1548
  br i1 %20, label %21, label %32, !dbg !1549

; <label>:21:                                     ; preds = %16
  %22 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %3, align 8, !dbg !1550
  %23 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %22, i32 0, i32 2, !dbg !1553
  %24 = load i64, i64* %23, align 8, !dbg !1553
  %25 = icmp ugt i64 %24, 0, !dbg !1554
  br i1 %25, label %26, label %31, !dbg !1555

; <label>:26:                                     ; preds = %21
  %27 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %3, align 8, !dbg !1556
  %28 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %27, i32 0, i32 2, !dbg !1558
  %29 = load i64, i64* %28, align 8, !dbg !1559
  %30 = add i64 %29, -1, !dbg !1559
  store i64 %30, i64* %28, align 8, !dbg !1559
  br label %31, !dbg !1560

; <label>:31:                                     ; preds = %26, %21
  br label %32, !dbg !1561

; <label>:32:                                     ; preds = %31, %16, %11, %1
  ret void, !dbg !1562
}

; Function Attrs: nounwind uwtable
define internal signext i8 @GuestInfoProcDiskStatsData(%struct.GuestInfoCollector*) #0 !dbg !461 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.GuestInfoCollector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.GuestInfoDiskStatsList**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca [512 x i8], align 16
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [256 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.GuestInfoDiskStatsList*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.GuestInfoCollector* %0, %struct.GuestInfoCollector** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestInfoCollector** %3, metadata !1563, metadata !483), !dbg !1564
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1565, metadata !483), !dbg !1566
  call void @llvm.dbg.declare(metadata %struct.GuestInfoDiskStatsList*** %5, metadata !1567, metadata !483), !dbg !1569
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1570, metadata !483), !dbg !1571
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1572, metadata !483), !dbg !1573
  call void @llvm.dbg.declare(metadata [512 x i8]* %8, metadata !1574, metadata !483), !dbg !1575
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %9, metadata !1576, metadata !483), !dbg !1577
  %19 = call %struct._IO_FILE* @Posix_Fopen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)), !dbg !1578
  store %struct._IO_FILE* %19, %struct._IO_FILE** %9, align 8, !dbg !1577
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !1579
  %21 = icmp eq %struct._IO_FILE* %20, null, !dbg !1581
  br i1 %21, label %22, label %23, !dbg !1582

; <label>:22:                                     ; preds = %1
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.GuestInfoProcDiskStatsData, i32 0, i32 0)), !dbg !1583
  store i8 0, i8* %2, align 1, !dbg !1585
  br label %164, !dbg !1585

; <label>:23:                                     ; preds = %1
  %24 = load i32, i32* @GuestInfoProcDiskStatsData.curr, align 4, !dbg !1586
  %25 = xor i32 %24, 1, !dbg !1587
  store i32 %25, i32* %4, align 4, !dbg !1588
  store %struct.GuestInfoDiskStatsList** @gDiskStatsList, %struct.GuestInfoDiskStatsList*** %5, align 8, !dbg !1589
  store i64 0, i64* %6, align 8, !dbg !1590
  %26 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** @gDiskStatsList, align 8, !dbg !1591
  %27 = icmp ne %struct.GuestInfoDiskStatsList* %26, null, !dbg !1592
  %28 = select i1 %27, i32 1, i32 0, !dbg !1593
  %29 = trunc i32 %28 to i8, !dbg !1593
  store i8 %29, i8* %7, align 1, !dbg !1594
  br label %30, !dbg !1595

; <label>:30:                                     ; preds = %111, %52, %23
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i32 0, i32 0, !dbg !1596
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !1598
  %33 = call i8* @fgets(i8* %31, i32 512, %struct._IO_FILE* %32), !dbg !1599
  %34 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i32 0, i32 0, !dbg !1600
  %35 = icmp eq i8* %33, %34, !dbg !1601
  br i1 %35, label %36, label %115, !dbg !1602

; <label>:36:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1603, metadata !483), !dbg !1605
  call void @llvm.dbg.declare(metadata [256 x i8]* %11, metadata !1606, metadata !483), !dbg !1610
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1611, metadata !483), !dbg !1612
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1613, metadata !483), !dbg !1614
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1615, metadata !483), !dbg !1616
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1617, metadata !483), !dbg !1618
  %37 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i32 0, i32 0, !dbg !1619
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i32 0, i32 0, !dbg !1620
  %39 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %37, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.34, i32 0, i32 0), i8* %38, i64* %12, i64* %13, i32* %14, i32* %15) #6, !dbg !1621
  store i32 %39, i32* %10, align 4, !dbg !1622
  %40 = load i32, i32* %10, align 4, !dbg !1623
  %41 = icmp ne i32 %40, 5, !dbg !1625
  br i1 %41, label %52, label %42, !dbg !1626

; <label>:42:                                     ; preds = %36
  %43 = load i64, i64* %12, align 8, !dbg !1627
  %44 = icmp eq i64 %43, 0, !dbg !1628
  br i1 %44, label %45, label %48, !dbg !1629

; <label>:45:                                     ; preds = %42
  %46 = load i64, i64* %13, align 8, !dbg !1630
  %47 = icmp eq i64 %46, 0, !dbg !1632
  br i1 %47, label %52, label %48, !dbg !1633

; <label>:48:                                     ; preds = %45, %42
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i32 0, i32 0, !dbg !1634
  %50 = call signext i8 @GuestInfoIsBlockDevice(i8* %49), !dbg !1635
  %51 = icmp ne i8 %50, 0, !dbg !1635
  br i1 %51, label %53, label %52, !dbg !1636

; <label>:52:                                     ; preds = %48, %45, %36
  br label %30, !dbg !1638, !llvm.loop !1640

; <label>:53:                                     ; preds = %48
  %54 = load i32, i32* %14, align 4, !dbg !1641
  %55 = zext i32 %54 to i64, !dbg !1641
  %56 = load i64, i64* %6, align 8, !dbg !1642
  %57 = add i64 %56, %55, !dbg !1642
  store i64 %57, i64* %6, align 8, !dbg !1642
  %58 = load %struct.GuestInfoDiskStatsList**, %struct.GuestInfoDiskStatsList*** %5, align 8, !dbg !1643
  %59 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** %58, align 8, !dbg !1645
  %60 = icmp ne %struct.GuestInfoDiskStatsList* %59, null, !dbg !1646
  br i1 %60, label %61, label %82, !dbg !1647

; <label>:61:                                     ; preds = %53
  %62 = load %struct.GuestInfoDiskStatsList**, %struct.GuestInfoDiskStatsList*** %5, align 8, !dbg !1648
  %63 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** %62, align 8, !dbg !1651
  %64 = getelementptr inbounds %struct.GuestInfoDiskStatsList, %struct.GuestInfoDiskStatsList* %63, i32 0, i32 1, !dbg !1652
  %65 = load i8*, i8** %64, align 8, !dbg !1652
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i32 0, i32 0, !dbg !1653
  %67 = call i32 @strcmp(i8* %65, i8* %66) #7, !dbg !1654
  %68 = icmp eq i32 %67, 0, !dbg !1655
  br i1 %68, label %69, label %77, !dbg !1656

; <label>:69:                                     ; preds = %61
  %70 = load i32, i32* %15, align 4, !dbg !1657
  %71 = load i32, i32* @GuestInfoProcDiskStatsData.curr, align 4, !dbg !1659
  %72 = sext i32 %71 to i64, !dbg !1660
  %73 = load %struct.GuestInfoDiskStatsList**, %struct.GuestInfoDiskStatsList*** %5, align 8, !dbg !1661
  %74 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** %73, align 8, !dbg !1662
  %75 = getelementptr inbounds %struct.GuestInfoDiskStatsList, %struct.GuestInfoDiskStatsList* %74, i32 0, i32 2, !dbg !1663
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %75, i64 0, i64 %72, !dbg !1660
  store i32 %70, i32* %76, align 4, !dbg !1664
  br label %81, !dbg !1665

; <label>:77:                                     ; preds = %61
  %78 = load %struct.GuestInfoDiskStatsList**, %struct.GuestInfoDiskStatsList*** %5, align 8, !dbg !1666
  %79 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** %78, align 8, !dbg !1668
  call void @GuestInfoDeleteDiskStatsList(%struct.GuestInfoDiskStatsList* %79), !dbg !1669
  %80 = load %struct.GuestInfoDiskStatsList**, %struct.GuestInfoDiskStatsList*** %5, align 8, !dbg !1670
  store %struct.GuestInfoDiskStatsList* null, %struct.GuestInfoDiskStatsList** %80, align 8, !dbg !1671
  br label %81

; <label>:81:                                     ; preds = %77, %69
  br label %82, !dbg !1672

; <label>:82:                                     ; preds = %81, %53
  %83 = load %struct.GuestInfoDiskStatsList**, %struct.GuestInfoDiskStatsList*** %5, align 8, !dbg !1673
  %84 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** %83, align 8, !dbg !1675
  %85 = icmp eq %struct.GuestInfoDiskStatsList* %84, null, !dbg !1676
  br i1 %85, label %86, label %111, !dbg !1677

; <label>:86:                                     ; preds = %82
  %87 = call i8* @UtilSafeMalloc0(i64 24), !dbg !1678
  %88 = bitcast i8* %87 to %struct.GuestInfoDiskStatsList*, !dbg !1680
  %89 = load %struct.GuestInfoDiskStatsList**, %struct.GuestInfoDiskStatsList*** %5, align 8, !dbg !1681
  store %struct.GuestInfoDiskStatsList* %88, %struct.GuestInfoDiskStatsList** %89, align 8, !dbg !1682
  %90 = load %struct.GuestInfoDiskStatsList**, %struct.GuestInfoDiskStatsList*** %5, align 8, !dbg !1683
  %91 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** %90, align 8, !dbg !1684
  %92 = getelementptr inbounds %struct.GuestInfoDiskStatsList, %struct.GuestInfoDiskStatsList* %91, i32 0, i32 0, !dbg !1685
  store %struct.GuestInfoDiskStatsList* null, %struct.GuestInfoDiskStatsList** %92, align 8, !dbg !1686
  %93 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i32 0, i32 0, !dbg !1687
  %94 = call i8* @UtilSafeStrdup0(i8* %93), !dbg !1688
  %95 = load %struct.GuestInfoDiskStatsList**, %struct.GuestInfoDiskStatsList*** %5, align 8, !dbg !1689
  %96 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** %95, align 8, !dbg !1690
  %97 = getelementptr inbounds %struct.GuestInfoDiskStatsList, %struct.GuestInfoDiskStatsList* %96, i32 0, i32 1, !dbg !1691
  store i8* %94, i8** %97, align 8, !dbg !1692
  %98 = load i32, i32* %15, align 4, !dbg !1693
  %99 = load i32, i32* @GuestInfoProcDiskStatsData.curr, align 4, !dbg !1694
  %100 = sext i32 %99 to i64, !dbg !1695
  %101 = load %struct.GuestInfoDiskStatsList**, %struct.GuestInfoDiskStatsList*** %5, align 8, !dbg !1696
  %102 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** %101, align 8, !dbg !1697
  %103 = getelementptr inbounds %struct.GuestInfoDiskStatsList, %struct.GuestInfoDiskStatsList* %102, i32 0, i32 2, !dbg !1698
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %103, i64 0, i64 %100, !dbg !1695
  store i32 %98, i32* %104, align 4, !dbg !1699
  %105 = load i32, i32* %4, align 4, !dbg !1700
  %106 = sext i32 %105 to i64, !dbg !1701
  %107 = load %struct.GuestInfoDiskStatsList**, %struct.GuestInfoDiskStatsList*** %5, align 8, !dbg !1702
  %108 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** %107, align 8, !dbg !1703
  %109 = getelementptr inbounds %struct.GuestInfoDiskStatsList, %struct.GuestInfoDiskStatsList* %108, i32 0, i32 2, !dbg !1704
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %109, i64 0, i64 %106, !dbg !1701
  store i32 0, i32* %110, align 4, !dbg !1705
  store i8 0, i8* %7, align 1, !dbg !1706
  br label %111, !dbg !1707

; <label>:111:                                    ; preds = %86, %82
  %112 = load %struct.GuestInfoDiskStatsList**, %struct.GuestInfoDiskStatsList*** %5, align 8, !dbg !1708
  %113 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** %112, align 8, !dbg !1709
  %114 = getelementptr inbounds %struct.GuestInfoDiskStatsList, %struct.GuestInfoDiskStatsList* %113, i32 0, i32 0, !dbg !1710
  store %struct.GuestInfoDiskStatsList** %114, %struct.GuestInfoDiskStatsList*** %5, align 8, !dbg !1711
  br label %30, !dbg !1712, !llvm.loop !1640

; <label>:115:                                    ; preds = %30
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !1714
  %117 = call i32 @fclose(%struct._IO_FILE* %116), !dbg !1715
  %118 = load %struct.GuestInfoDiskStatsList**, %struct.GuestInfoDiskStatsList*** %5, align 8, !dbg !1716
  %119 = icmp eq %struct.GuestInfoDiskStatsList** %118, @gDiskStatsList, !dbg !1718
  br i1 %119, label %124, label %120, !dbg !1719

; <label>:120:                                    ; preds = %115
  %121 = load %struct.GuestInfoDiskStatsList**, %struct.GuestInfoDiskStatsList*** %5, align 8, !dbg !1720
  %122 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** %121, align 8, !dbg !1722
  %123 = icmp ne %struct.GuestInfoDiskStatsList* %122, null, !dbg !1723
  br i1 %123, label %124, label %128, !dbg !1724

; <label>:124:                                    ; preds = %120, %115
  %125 = load %struct.GuestInfoDiskStatsList**, %struct.GuestInfoDiskStatsList*** %5, align 8, !dbg !1725
  %126 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** %125, align 8, !dbg !1727
  call void @GuestInfoDeleteDiskStatsList(%struct.GuestInfoDiskStatsList* %126), !dbg !1728
  %127 = load %struct.GuestInfoDiskStatsList**, %struct.GuestInfoDiskStatsList*** %5, align 8, !dbg !1729
  store %struct.GuestInfoDiskStatsList* null, %struct.GuestInfoDiskStatsList** %127, align 8, !dbg !1730
  store i8 0, i8* %7, align 1, !dbg !1731
  br label %128, !dbg !1732

; <label>:128:                                    ; preds = %124, %120
  %129 = load i8, i8* %7, align 1, !dbg !1733
  %130 = icmp ne i8 %129, 0, !dbg !1733
  br i1 %130, label %131, label %162, !dbg !1735

; <label>:131:                                    ; preds = %128
  call void @llvm.dbg.declare(metadata %struct.GuestInfoDiskStatsList** %16, metadata !1736, metadata !483), !dbg !1738
  %132 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** @gDiskStatsList, align 8, !dbg !1739
  store %struct.GuestInfoDiskStatsList* %132, %struct.GuestInfoDiskStatsList** %16, align 8, !dbg !1738
  call void @llvm.dbg.declare(metadata i64* %17, metadata !1740, metadata !483), !dbg !1741
  store i64 0, i64* %17, align 8, !dbg !1741
  br label %133, !dbg !1742

; <label>:133:                                    ; preds = %136, %131
  %134 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** %16, align 8, !dbg !1743
  %135 = icmp ne %struct.GuestInfoDiskStatsList* %134, null, !dbg !1745
  br i1 %135, label %136, label %157, !dbg !1746

; <label>:136:                                    ; preds = %133
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1747, metadata !483), !dbg !1749
  %137 = load i32, i32* @GuestInfoProcDiskStatsData.curr, align 4, !dbg !1750
  %138 = sext i32 %137 to i64, !dbg !1751
  %139 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** %16, align 8, !dbg !1751
  %140 = getelementptr inbounds %struct.GuestInfoDiskStatsList, %struct.GuestInfoDiskStatsList* %139, i32 0, i32 2, !dbg !1752
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %140, i64 0, i64 %138, !dbg !1751
  %142 = load i32, i32* %141, align 4, !dbg !1751
  %143 = load i32, i32* %4, align 4, !dbg !1753
  %144 = sext i32 %143 to i64, !dbg !1754
  %145 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** %16, align 8, !dbg !1754
  %146 = getelementptr inbounds %struct.GuestInfoDiskStatsList, %struct.GuestInfoDiskStatsList* %145, i32 0, i32 2, !dbg !1755
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %146, i64 0, i64 %144, !dbg !1754
  %148 = load i32, i32* %147, align 4, !dbg !1754
  %149 = sub i32 %142, %148, !dbg !1756
  store i32 %149, i32* %18, align 4, !dbg !1749
  %150 = load i32, i32* %18, align 4, !dbg !1757
  %151 = zext i32 %150 to i64, !dbg !1757
  %152 = load i64, i64* %17, align 8, !dbg !1758
  %153 = add i64 %152, %151, !dbg !1758
  store i64 %153, i64* %17, align 8, !dbg !1758
  %154 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** %16, align 8, !dbg !1759
  %155 = getelementptr inbounds %struct.GuestInfoDiskStatsList, %struct.GuestInfoDiskStatsList* %154, i32 0, i32 0, !dbg !1760
  %156 = load %struct.GuestInfoDiskStatsList*, %struct.GuestInfoDiskStatsList** %155, align 8, !dbg !1760
  store %struct.GuestInfoDiskStatsList* %156, %struct.GuestInfoDiskStatsList** %16, align 8, !dbg !1761
  br label %133, !dbg !1762, !llvm.loop !1764

; <label>:157:                                    ; preds = %133
  %158 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %3, align 8, !dbg !1765
  %159 = load i64, i64* %6, align 8, !dbg !1766
  call void @GuestInfoStoreStatByID(i32 62, %struct.GuestInfoCollector* %158, i64 %159), !dbg !1767
  %160 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %3, align 8, !dbg !1768
  %161 = load i64, i64* %17, align 8, !dbg !1769
  call void @GuestInfoStoreStatByID(i32 63, %struct.GuestInfoCollector* %160, i64 %161), !dbg !1770
  br label %162, !dbg !1771

; <label>:162:                                    ; preds = %157, %128
  %163 = load i32, i32* %4, align 4, !dbg !1772
  store i32 %163, i32* @GuestInfoProcDiskStatsData.curr, align 4, !dbg !1773
  store i8 1, i8* %2, align 1, !dbg !1774
  br label %164, !dbg !1774

; <label>:164:                                    ; preds = %162, %22
  %165 = load i8, i8* %2, align 1, !dbg !1775
  ret i8 %165, !dbg !1775
}

declare %struct._IO_FILE* @Posix_Fopen(i8*, i8*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i8* @strtok_r(i8*, i8*, i8**) #3

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @GuestInfoCollectStat(i8*, %struct.GuestInfoCollector*, i8*, i64) #0 !dbg !1776 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.GuestInfoCollector*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.GuestInfoStat*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.GuestInfoStat*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1779, metadata !483), !dbg !1780
  store %struct.GuestInfoCollector* %1, %struct.GuestInfoCollector** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestInfoCollector** %6, metadata !1781, metadata !483), !dbg !1782
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1783, metadata !483), !dbg !1784
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1785, metadata !483), !dbg !1786
  call void @llvm.dbg.declare(metadata %struct.GuestInfoStat** %9, metadata !1787, metadata !483), !dbg !1788
  store %struct.GuestInfoStat* null, %struct.GuestInfoStat** %9, align 8, !dbg !1788
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1789, metadata !483), !dbg !1790
  %13 = load i8*, i8** %5, align 8, !dbg !1791
  %14 = load i8*, i8** %7, align 8, !dbg !1792
  %15 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* %13, i8* %14), !dbg !1793
  store i8* %15, i8** %10, align 8, !dbg !1790
  %16 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %6, align 8, !dbg !1794
  %17 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %16, i32 0, i32 0, !dbg !1796
  %18 = load %struct.HashTable*, %struct.HashTable** %17, align 8, !dbg !1796
  %19 = load i8*, i8** %10, align 8, !dbg !1797
  %20 = bitcast %struct.GuestInfoStat** %9 to i8**, !dbg !1798
  %21 = call signext i8 @HashTable_Lookup(%struct.HashTable* %18, i8* %19, i8** %20), !dbg !1799
  %22 = icmp ne i8 %21, 0, !dbg !1799
  br i1 %22, label %63, label %23, !dbg !1800

; <label>:23:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1801, metadata !483), !dbg !1803
  store i32 0, i32* %11, align 4, !dbg !1804
  br label %24, !dbg !1806

; <label>:24:                                     ; preds = %59, %23
  %25 = load i32, i32* %11, align 4, !dbg !1807
  %26 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %6, align 8, !dbg !1810
  %27 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %26, i32 0, i32 1, !dbg !1811
  %28 = load i32, i32* %27, align 8, !dbg !1811
  %29 = icmp ult i32 %25, %28, !dbg !1812
  br i1 %29, label %30, label %62, !dbg !1813

; <label>:30:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.GuestInfoStat** %12, metadata !1814, metadata !483), !dbg !1816
  %31 = load i32, i32* %11, align 4, !dbg !1817
  %32 = zext i32 %31 to i64, !dbg !1818
  %33 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %6, align 8, !dbg !1818
  %34 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %33, i32 0, i32 2, !dbg !1819
  %35 = load %struct.GuestInfoStat**, %struct.GuestInfoStat*** %34, align 8, !dbg !1819
  %36 = getelementptr inbounds %struct.GuestInfoStat*, %struct.GuestInfoStat** %35, i64 %32, !dbg !1818
  %37 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %36, align 8, !dbg !1818
  store %struct.GuestInfoStat* %37, %struct.GuestInfoStat** %12, align 8, !dbg !1816
  %38 = load i8*, i8** %5, align 8, !dbg !1820
  %39 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %12, align 8, !dbg !1822
  %40 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %39, i32 0, i32 3, !dbg !1823
  %41 = load %struct.GuestInfoQuery*, %struct.GuestInfoQuery** %40, align 8, !dbg !1823
  %42 = getelementptr inbounds %struct.GuestInfoQuery, %struct.GuestInfoQuery* %41, i32 0, i32 0, !dbg !1824
  %43 = load i8*, i8** %42, align 8, !dbg !1824
  %44 = call i32 @strcmp(i8* %38, i8* %43) #7, !dbg !1825
  %45 = icmp eq i32 %44, 0, !dbg !1826
  br i1 %45, label %46, label %58, !dbg !1827

; <label>:46:                                     ; preds = %30
  %47 = load i8*, i8** %7, align 8, !dbg !1828
  %48 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %12, align 8, !dbg !1829
  %49 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %48, i32 0, i32 3, !dbg !1830
  %50 = load %struct.GuestInfoQuery*, %struct.GuestInfoQuery** %49, align 8, !dbg !1830
  %51 = getelementptr inbounds %struct.GuestInfoQuery, %struct.GuestInfoQuery* %50, i32 0, i32 3, !dbg !1831
  %52 = load i8*, i8** %51, align 8, !dbg !1831
  %53 = call signext i8 @StrUtil_StartsWith(i8* %47, i8* %52), !dbg !1832
  %54 = sext i8 %53 to i32, !dbg !1832
  %55 = icmp ne i32 %54, 0, !dbg !1832
  br i1 %55, label %56, label %58, !dbg !1833

; <label>:56:                                     ; preds = %46
  %57 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %12, align 8, !dbg !1835
  store %struct.GuestInfoStat* %57, %struct.GuestInfoStat** %9, align 8, !dbg !1837
  br label %62, !dbg !1838

; <label>:58:                                     ; preds = %46, %30
  br label %59, !dbg !1839

; <label>:59:                                     ; preds = %58
  %60 = load i32, i32* %11, align 4, !dbg !1840
  %61 = add i32 %60, 1, !dbg !1840
  store i32 %61, i32* %11, align 4, !dbg !1840
  br label %24, !dbg !1842, !llvm.loop !1843

; <label>:62:                                     ; preds = %56, %24
  br label %63, !dbg !1845

; <label>:63:                                     ; preds = %62, %4
  %64 = load i8*, i8** %10, align 8, !dbg !1846
  call void @free(i8* %64) #6, !dbg !1847
  %65 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %9, align 8, !dbg !1848
  %66 = icmp ne %struct.GuestInfoStat* %65, null, !dbg !1850
  br i1 %66, label %67, label %70, !dbg !1851

; <label>:67:                                     ; preds = %63
  %68 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %9, align 8, !dbg !1852
  %69 = load i64, i64* %8, align 8, !dbg !1854
  call void @GuestInfoStoreStat(%struct.GuestInfoStat* %68, i64 %69), !dbg !1855
  br label %70, !dbg !1856

; <label>:70:                                     ; preds = %67, %63
  ret void, !dbg !1857
}

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare signext i8 @StrUtil_StartsWith(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @GuestInfoStoreStat(%struct.GuestInfoStat*, i64) #0 !dbg !1858 {
  %3 = alloca %struct.GuestInfoStat*, align 8
  %4 = alloca i64, align 8
  store %struct.GuestInfoStat* %0, %struct.GuestInfoStat** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestInfoStat** %3, metadata !1861, metadata !483), !dbg !1862
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1863, metadata !483), !dbg !1864
  %5 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %3, align 8, !dbg !1865
  %6 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %5, i32 0, i32 0, !dbg !1866
  %7 = load i32, i32* %6, align 8, !dbg !1866
  switch i32 %7, label %49 [
    i32 0, label %8
    i32 2, label %41
  ], !dbg !1867

; <label>:8:                                      ; preds = %2
  %9 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %3, align 8, !dbg !1868
  %10 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %9, i32 0, i32 1, !dbg !1871
  %11 = load i32, i32* %10, align 4, !dbg !1871
  %12 = add i32 %11, 1, !dbg !1872
  %13 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %3, align 8, !dbg !1873
  %14 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %13, i32 0, i32 1, !dbg !1874
  %15 = load i32, i32* %14, align 4, !dbg !1874
  %16 = icmp ult i32 %12, %15, !dbg !1875
  br i1 %16, label %27, label %17, !dbg !1876

; <label>:17:                                     ; preds = %8
  %18 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %3, align 8, !dbg !1877
  %19 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %18, i32 0, i32 2, !dbg !1878
  %20 = load i64, i64* %19, align 8, !dbg !1878
  %21 = load i64, i64* %4, align 8, !dbg !1879
  %22 = add i64 %20, %21, !dbg !1880
  %23 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %3, align 8, !dbg !1881
  %24 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %23, i32 0, i32 2, !dbg !1882
  %25 = load i64, i64* %24, align 8, !dbg !1882
  %26 = icmp ult i64 %22, %25, !dbg !1883
  br i1 %26, label %27, label %30, !dbg !1884

; <label>:27:                                     ; preds = %17, %8
  %28 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %3, align 8, !dbg !1886
  %29 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %28, i32 0, i32 0, !dbg !1888
  store i32 75, i32* %29, align 8, !dbg !1889
  br label %40, !dbg !1890

; <label>:30:                                     ; preds = %17
  %31 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %3, align 8, !dbg !1891
  %32 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %31, i32 0, i32 1, !dbg !1893
  %33 = load i32, i32* %32, align 4, !dbg !1894
  %34 = add i32 %33, 1, !dbg !1894
  store i32 %34, i32* %32, align 4, !dbg !1894
  %35 = load i64, i64* %4, align 8, !dbg !1895
  %36 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %3, align 8, !dbg !1896
  %37 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %36, i32 0, i32 2, !dbg !1897
  %38 = load i64, i64* %37, align 8, !dbg !1898
  %39 = add i64 %38, %35, !dbg !1898
  store i64 %39, i64* %37, align 8, !dbg !1898
  br label %40

; <label>:40:                                     ; preds = %30, %27
  br label %50, !dbg !1899

; <label>:41:                                     ; preds = %2
  %42 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %3, align 8, !dbg !1900
  %43 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %42, i32 0, i32 0, !dbg !1901
  store i32 0, i32* %43, align 8, !dbg !1902
  %44 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %3, align 8, !dbg !1903
  %45 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %44, i32 0, i32 1, !dbg !1904
  store i32 1, i32* %45, align 4, !dbg !1905
  %46 = load i64, i64* %4, align 8, !dbg !1906
  %47 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %3, align 8, !dbg !1907
  %48 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %47, i32 0, i32 2, !dbg !1908
  store i64 %46, i64* %48, align 8, !dbg !1909
  br label %50, !dbg !1910

; <label>:49:                                     ; preds = %2
  br label %50, !dbg !1911

; <label>:50:                                     ; preds = %49, %41, %40
  ret void, !dbg !1912
}

; Function Attrs: nounwind uwtable
define internal signext i8 @GuestInfoIsBlockDevice(i8*) #0 !dbg !1913 {
  %2 = alloca i8*, align 8
  %3 = alloca [4096 x i8], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1916, metadata !483), !dbg !1917
  call void @llvm.dbg.declare(metadata [4096 x i8]* %3, metadata !1918, metadata !483), !dbg !1919
  %4 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i32 0, i32 0, !dbg !1920
  %5 = load i8*, i8** %2, align 8, !dbg !1921
  %6 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* %4, i64 4096, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i8* %5), !dbg !1922
  %7 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i32 0, i32 0, !dbg !1923
  %8 = call i32 @access(i8* %7, i32 0) #6, !dbg !1924
  %9 = icmp eq i32 %8, 0, !dbg !1925
  %10 = zext i1 %9 to i32, !dbg !1925
  %11 = trunc i32 %10 to i8, !dbg !1926
  ret i8 %11, !dbg !1927
}

declare i8* @UtilSafeMalloc0(i64) #2

declare i8* @UtilSafeStrdup0(i8*) #2

declare i32 @Str_Sprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind
declare i32 @access(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @GuestInfoLegacy(%struct.GuestInfoCollector*, %struct.GuestMemInfoLegacy*) #0 !dbg !1928 {
  %3 = alloca %struct.GuestInfoCollector*, align 8
  %4 = alloca %struct.GuestMemInfoLegacy*, align 8
  %5 = alloca %struct.GuestInfoStat*, align 8
  store %struct.GuestInfoCollector* %0, %struct.GuestInfoCollector** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestInfoCollector** %3, metadata !1932, metadata !483), !dbg !1933
  store %struct.GuestMemInfoLegacy* %1, %struct.GuestMemInfoLegacy** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestMemInfoLegacy** %4, metadata !1934, metadata !483), !dbg !1935
  call void @llvm.dbg.declare(metadata %struct.GuestInfoStat** %5, metadata !1936, metadata !483), !dbg !1937
  %6 = load %struct.GuestMemInfoLegacy*, %struct.GuestMemInfoLegacy** %4, align 8, !dbg !1938
  %7 = bitcast %struct.GuestMemInfoLegacy* %6 to i8*, !dbg !1939
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 112, i32 1, i1 false), !dbg !1939
  %8 = load %struct.GuestMemInfoLegacy*, %struct.GuestMemInfoLegacy** %4, align 8, !dbg !1940
  %9 = getelementptr inbounds %struct.GuestMemInfoLegacy, %struct.GuestMemInfoLegacy* %8, i32 0, i32 0, !dbg !1941
  store i32 5, i32* %9, align 1, !dbg !1942
  %10 = load %struct.GuestMemInfoLegacy*, %struct.GuestMemInfoLegacy** %4, align 8, !dbg !1943
  %11 = getelementptr inbounds %struct.GuestMemInfoLegacy, %struct.GuestMemInfoLegacy* %10, i32 0, i32 1, !dbg !1944
  store i32 0, i32* %11, align 1, !dbg !1945
  store %struct.GuestInfoStat* null, %struct.GuestInfoStat** %5, align 8, !dbg !1946
  %12 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %3, align 8, !dbg !1947
  %13 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %12, i32 0, i32 5, !dbg !1948
  %14 = load %struct.HashTable*, %struct.HashTable** %13, align 8, !dbg !1948
  %15 = bitcast %struct.GuestInfoStat** %5 to i8**, !dbg !1949
  %16 = call signext i8 @HashTable_Lookup(%struct.HashTable* %14, i8* inttoptr (i64 6 to i8*), i8** %15), !dbg !1950
  %17 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %5, align 8, !dbg !1951
  %18 = icmp ne %struct.GuestInfoStat* %17, null, !dbg !1953
  br i1 %18, label %19, label %34, !dbg !1954

; <label>:19:                                     ; preds = %2
  %20 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %5, align 8, !dbg !1955
  %21 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %20, i32 0, i32 0, !dbg !1957
  %22 = load i32, i32* %21, align 8, !dbg !1957
  %23 = icmp eq i32 %22, 0, !dbg !1958
  br i1 %23, label %24, label %34, !dbg !1959

; <label>:24:                                     ; preds = %19
  %25 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %5, align 8, !dbg !1960
  %26 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %25, i32 0, i32 2, !dbg !1962
  %27 = load i64, i64* %26, align 8, !dbg !1962
  %28 = load %struct.GuestMemInfoLegacy*, %struct.GuestMemInfoLegacy** %4, align 8, !dbg !1963
  %29 = getelementptr inbounds %struct.GuestMemInfoLegacy, %struct.GuestMemInfoLegacy* %28, i32 0, i32 2, !dbg !1964
  store i64 %27, i64* %29, align 1, !dbg !1965
  %30 = load %struct.GuestMemInfoLegacy*, %struct.GuestMemInfoLegacy** %4, align 8, !dbg !1966
  %31 = getelementptr inbounds %struct.GuestMemInfoLegacy, %struct.GuestMemInfoLegacy* %30, i32 0, i32 1, !dbg !1967
  %32 = load i32, i32* %31, align 1, !dbg !1968
  %33 = or i32 %32, 1, !dbg !1968
  store i32 %33, i32* %31, align 1, !dbg !1968
  br label %34, !dbg !1969

; <label>:34:                                     ; preds = %24, %19, %2
  store %struct.GuestInfoStat* null, %struct.GuestInfoStat** %5, align 8, !dbg !1970
  %35 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %3, align 8, !dbg !1971
  %36 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %35, i32 0, i32 5, !dbg !1972
  %37 = load %struct.HashTable*, %struct.HashTable** %36, align 8, !dbg !1972
  %38 = bitcast %struct.GuestInfoStat** %5 to i8**, !dbg !1973
  %39 = call signext i8 @HashTable_Lookup(%struct.HashTable* %37, i8* inttoptr (i64 12 to i8*), i8** %38), !dbg !1974
  %40 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %5, align 8, !dbg !1975
  %41 = icmp ne %struct.GuestInfoStat* %40, null, !dbg !1977
  br i1 %41, label %42, label %57, !dbg !1978

; <label>:42:                                     ; preds = %34
  %43 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %5, align 8, !dbg !1979
  %44 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %43, i32 0, i32 0, !dbg !1981
  %45 = load i32, i32* %44, align 8, !dbg !1981
  %46 = icmp eq i32 %45, 0, !dbg !1982
  br i1 %46, label %47, label %57, !dbg !1983

; <label>:47:                                     ; preds = %42
  %48 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %5, align 8, !dbg !1984
  %49 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %48, i32 0, i32 2, !dbg !1986
  %50 = load i64, i64* %49, align 8, !dbg !1986
  %51 = load %struct.GuestMemInfoLegacy*, %struct.GuestMemInfoLegacy** %4, align 8, !dbg !1987
  %52 = getelementptr inbounds %struct.GuestMemInfoLegacy, %struct.GuestMemInfoLegacy* %51, i32 0, i32 4, !dbg !1988
  store i64 %50, i64* %52, align 1, !dbg !1989
  %53 = load %struct.GuestMemInfoLegacy*, %struct.GuestMemInfoLegacy** %4, align 8, !dbg !1990
  %54 = getelementptr inbounds %struct.GuestMemInfoLegacy, %struct.GuestMemInfoLegacy* %53, i32 0, i32 1, !dbg !1991
  %55 = load i32, i32* %54, align 1, !dbg !1992
  %56 = or i32 %55, 1024, !dbg !1992
  store i32 %56, i32* %54, align 1, !dbg !1992
  br label %57, !dbg !1993

; <label>:57:                                     ; preds = %47, %42, %34
  ret void, !dbg !1994
}

declare signext i8 @DynBuf_Append(%struct.DynBuf*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @GuestInfoAppendRate(i8 signext, i32, %struct.GuestInfoCollector*, %struct.GuestInfoCollector*, %struct.DynBuf*) #0 !dbg !1995 {
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.GuestInfoCollector*, align 8
  %9 = alloca %struct.GuestInfoCollector*, align 8
  %10 = alloca %struct.DynBuf*, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.GuestInfoStat*, align 8
  %14 = alloca %struct.GuestInfoStat*, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca float, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store i8 %0, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1998, metadata !483), !dbg !1999
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2000, metadata !483), !dbg !2001
  store %struct.GuestInfoCollector* %2, %struct.GuestInfoCollector** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestInfoCollector** %8, metadata !2002, metadata !483), !dbg !2003
  store %struct.GuestInfoCollector* %3, %struct.GuestInfoCollector** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestInfoCollector** %9, metadata !2004, metadata !483), !dbg !2005
  store %struct.DynBuf* %4, %struct.DynBuf** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %10, metadata !2006, metadata !483), !dbg !2007
  call void @llvm.dbg.declare(metadata double* %11, metadata !2008, metadata !483), !dbg !2009
  store double 0.000000e+00, double* %11, align 8, !dbg !2009
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2010, metadata !483), !dbg !2011
  store i32 2, i32* %12, align 4, !dbg !2011
  call void @llvm.dbg.declare(metadata %struct.GuestInfoStat** %13, metadata !2012, metadata !483), !dbg !2013
  store %struct.GuestInfoStat* null, %struct.GuestInfoStat** %13, align 8, !dbg !2013
  call void @llvm.dbg.declare(metadata %struct.GuestInfoStat** %14, metadata !2014, metadata !483), !dbg !2015
  store %struct.GuestInfoStat* null, %struct.GuestInfoStat** %14, align 8, !dbg !2015
  %20 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %8, align 8, !dbg !2016
  %21 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %20, i32 0, i32 5, !dbg !2017
  %22 = load %struct.HashTable*, %struct.HashTable** %21, align 8, !dbg !2017
  %23 = load i32, i32* %7, align 4, !dbg !2018
  %24 = zext i32 %23 to i64, !dbg !2019
  %25 = inttoptr i64 %24 to i8*, !dbg !2020
  %26 = bitcast %struct.GuestInfoStat** %13 to i8**, !dbg !2021
  %27 = call signext i8 @HashTable_Lookup(%struct.HashTable* %22, i8* %25, i8** %26), !dbg !2022
  %28 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %9, align 8, !dbg !2023
  %29 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %28, i32 0, i32 5, !dbg !2024
  %30 = load %struct.HashTable*, %struct.HashTable** %29, align 8, !dbg !2024
  %31 = load i32, i32* %7, align 4, !dbg !2025
  %32 = zext i32 %31 to i64, !dbg !2026
  %33 = inttoptr i64 %32 to i8*, !dbg !2027
  %34 = bitcast %struct.GuestInfoStat** %14 to i8**, !dbg !2028
  %35 = call signext i8 @HashTable_Lookup(%struct.HashTable* %30, i8* %33, i8** %34), !dbg !2029
  %36 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %8, align 8, !dbg !2030
  %37 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %36, i32 0, i32 6, !dbg !2032
  %38 = load i8, i8* %37, align 8, !dbg !2032
  %39 = sext i8 %38 to i32, !dbg !2030
  %40 = icmp ne i32 %39, 0, !dbg !2030
  br i1 %40, label %41, label %92, !dbg !2033

; <label>:41:                                     ; preds = %5
  %42 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %9, align 8, !dbg !2034
  %43 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %42, i32 0, i32 6, !dbg !2035
  %44 = load i8, i8* %43, align 8, !dbg !2035
  %45 = sext i8 %44 to i32, !dbg !2034
  %46 = icmp ne i32 %45, 0, !dbg !2034
  br i1 %46, label %47, label %92, !dbg !2036

; <label>:47:                                     ; preds = %41
  %48 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %13, align 8, !dbg !2037
  %49 = icmp ne %struct.GuestInfoStat* %48, null, !dbg !2038
  br i1 %49, label %50, label %92, !dbg !2039

; <label>:50:                                     ; preds = %47
  %51 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %13, align 8, !dbg !2040
  %52 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %51, i32 0, i32 0, !dbg !2042
  %53 = load i32, i32* %52, align 8, !dbg !2042
  %54 = icmp eq i32 %53, 0, !dbg !2043
  br i1 %54, label %55, label %92, !dbg !2044

; <label>:55:                                     ; preds = %50
  %56 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %14, align 8, !dbg !2045
  %57 = icmp ne %struct.GuestInfoStat* %56, null, !dbg !2046
  br i1 %57, label %58, label %92, !dbg !2047

; <label>:58:                                     ; preds = %55
  %59 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %14, align 8, !dbg !2048
  %60 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %59, i32 0, i32 0, !dbg !2049
  %61 = load i32, i32* %60, align 8, !dbg !2049
  %62 = icmp eq i32 %61, 0, !dbg !2050
  br i1 %62, label %63, label %92, !dbg !2051

; <label>:63:                                     ; preds = %58
  call void @llvm.dbg.declare(metadata double* %15, metadata !2053, metadata !483), !dbg !2055
  %64 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %8, align 8, !dbg !2056
  %65 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %64, i32 0, i32 7, !dbg !2057
  %66 = load double, double* %65, align 8, !dbg !2057
  %67 = load %struct.GuestInfoCollector*, %struct.GuestInfoCollector** %9, align 8, !dbg !2058
  %68 = getelementptr inbounds %struct.GuestInfoCollector, %struct.GuestInfoCollector* %67, i32 0, i32 7, !dbg !2059
  %69 = load double, double* %68, align 8, !dbg !2059
  %70 = fsub double %66, %69, !dbg !2060
  store double %70, double* %15, align 8, !dbg !2055
  call void @llvm.dbg.declare(metadata double* %16, metadata !2061, metadata !483), !dbg !2062
  %71 = load i32, i32* %7, align 4, !dbg !2063
  %72 = icmp eq i32 %71, 63, !dbg !2065
  br i1 %72, label %73, label %79, !dbg !2066

; <label>:73:                                     ; preds = %63
  %74 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %13, align 8, !dbg !2067
  %75 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %74, i32 0, i32 2, !dbg !2069
  %76 = load i64, i64* %75, align 8, !dbg !2069
  %77 = uitofp i64 %76 to double, !dbg !2070
  %78 = fdiv double %77, 1.000000e+01, !dbg !2071
  store double %78, double* %16, align 8, !dbg !2072
  br label %88, !dbg !2073

; <label>:79:                                     ; preds = %63
  %80 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %13, align 8, !dbg !2074
  %81 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %80, i32 0, i32 2, !dbg !2076
  %82 = load i64, i64* %81, align 8, !dbg !2076
  %83 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %14, align 8, !dbg !2077
  %84 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %83, i32 0, i32 2, !dbg !2078
  %85 = load i64, i64* %84, align 8, !dbg !2078
  %86 = sub i64 %82, %85, !dbg !2079
  %87 = uitofp i64 %86 to double, !dbg !2074
  store double %87, double* %16, align 8, !dbg !2080
  br label %88

; <label>:88:                                     ; preds = %79, %73
  %89 = load double, double* %16, align 8, !dbg !2081
  %90 = load double, double* %15, align 8, !dbg !2082
  %91 = fdiv double %89, %90, !dbg !2083
  store double %91, double* %11, align 8, !dbg !2084
  store i32 0, i32* %12, align 4, !dbg !2085
  br label %92, !dbg !2086

; <label>:92:                                     ; preds = %88, %58, %55, %50, %47, %41, %5
  %93 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %13, align 8, !dbg !2087
  %94 = icmp ne %struct.GuestInfoStat* %93, null, !dbg !2089
  br i1 %94, label %95, label %123, !dbg !2090

; <label>:95:                                     ; preds = %92
  call void @llvm.dbg.declare(metadata float* %17, metadata !2091, metadata !483), !dbg !2093
  call void @llvm.dbg.declare(metadata i8** %18, metadata !2094, metadata !483), !dbg !2095
  call void @llvm.dbg.declare(metadata i64* %19, metadata !2096, metadata !483), !dbg !2097
  %96 = load double, double* %11, align 8, !dbg !2098
  %97 = fcmp oeq double %96, 0.000000e+00, !dbg !2100
  br i1 %97, label %98, label %99, !dbg !2101

; <label>:98:                                     ; preds = %95
  store i8* null, i8** %18, align 8, !dbg !2102
  store i64 0, i64* %19, align 8, !dbg !2104
  br label %111, !dbg !2105

; <label>:99:                                     ; preds = %95
  %100 = load double, double* %11, align 8, !dbg !2106
  %101 = fptrunc double %100 to float, !dbg !2108
  store float %101, float* %17, align 4, !dbg !2109
  %102 = load float, float* %17, align 4, !dbg !2110
  %103 = fpext float %102 to double, !dbg !2112
  %104 = load double, double* %11, align 8, !dbg !2113
  %105 = fcmp oeq double %103, %104, !dbg !2114
  br i1 %105, label %106, label %108, !dbg !2115

; <label>:106:                                    ; preds = %99
  %107 = bitcast float* %17 to i8*, !dbg !2116
  store i8* %107, i8** %18, align 8, !dbg !2118
  store i64 4, i64* %19, align 8, !dbg !2119
  br label %110, !dbg !2120

; <label>:108:                                    ; preds = %99
  %109 = bitcast double* %11 to i8*, !dbg !2121
  store i8* %109, i8** %18, align 8, !dbg !2123
  store i64 8, i64* %19, align 8, !dbg !2124
  br label %110

; <label>:110:                                    ; preds = %108, %106
  br label %111

; <label>:111:                                    ; preds = %110, %98
  %112 = load i32, i32* %12, align 4, !dbg !2125
  %113 = load i8, i8* %6, align 1, !dbg !2126
  %114 = load i32, i32* %7, align 4, !dbg !2127
  %115 = load %struct.GuestInfoStat*, %struct.GuestInfoStat** %13, align 8, !dbg !2128
  %116 = getelementptr inbounds %struct.GuestInfoStat, %struct.GuestInfoStat* %115, i32 0, i32 3, !dbg !2129
  %117 = load %struct.GuestInfoQuery*, %struct.GuestInfoQuery** %116, align 8, !dbg !2129
  %118 = getelementptr inbounds %struct.GuestInfoQuery, %struct.GuestInfoQuery* %117, i32 0, i32 5, !dbg !2130
  %119 = load i32, i32* %118, align 4, !dbg !2130
  %120 = load i8*, i8** %18, align 8, !dbg !2131
  %121 = load i64, i64* %19, align 8, !dbg !2132
  %122 = load %struct.DynBuf*, %struct.DynBuf** %10, align 8, !dbg !2133
  call void @GuestInfoAppendStat(i32 %112, i8 signext %113, i32 %114, i32 %119, i32 11, i8* %120, i64 %121, %struct.DynBuf* %122), !dbg !2134
  br label %123, !dbg !2135

; <label>:123:                                    ; preds = %111, %92
  ret void, !dbg !2136
}

; Function Attrs: nounwind uwtable
define internal void @GuestInfoAppendStat(i32, i8 signext, i32, i32, i32, i8*, i64, %struct.DynBuf*) #0 !dbg !2137 {
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.DynBuf*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.GuestStatHeader, align 1
  %20 = alloca %struct.GuestDatumHeader, align 1
  %21 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2140, metadata !483), !dbg !2141
  store i8 %1, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !2142, metadata !483), !dbg !2143
  store i32 %2, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2144, metadata !483), !dbg !2145
  store i32 %3, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2146, metadata !483), !dbg !2147
  store i32 %4, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2148, metadata !483), !dbg !2149
  store i8* %5, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !2150, metadata !483), !dbg !2151
  store i64 %6, i64* %15, align 8
  call void @llvm.dbg.declare(metadata i64* %15, metadata !2152, metadata !483), !dbg !2153
  store %struct.DynBuf* %7, %struct.DynBuf** %16, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %16, metadata !2154, metadata !483), !dbg !2155
  call void @llvm.dbg.declare(metadata i8** %17, metadata !2156, metadata !483), !dbg !2157
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8** %17, align 8, !dbg !2157
  call void @llvm.dbg.declare(metadata i64* %18, metadata !2158, metadata !483), !dbg !2159
  call void @llvm.dbg.declare(metadata %struct.GuestStatHeader* %19, metadata !2160, metadata !483), !dbg !2166
  call void @llvm.dbg.declare(metadata %struct.GuestDatumHeader* %20, metadata !2167, metadata !483), !dbg !2176
  %22 = getelementptr inbounds %struct.GuestStatHeader, %struct.GuestStatHeader* %19, i32 0, i32 0, !dbg !2177
  store i32 44, i32* %22, align 1, !dbg !2178
  %23 = load i8, i8* %10, align 1, !dbg !2179
  %24 = icmp ne i8 %23, 0, !dbg !2179
  br i1 %24, label %25, label %29, !dbg !2181

; <label>:25:                                     ; preds = %8
  %26 = getelementptr inbounds %struct.GuestStatHeader, %struct.GuestStatHeader* %19, i32 0, i32 0, !dbg !2182
  %27 = load i32, i32* %26, align 1, !dbg !2184
  %28 = or i32 %27, 2, !dbg !2184
  store i32 %28, i32* %26, align 1, !dbg !2184
  br label %29, !dbg !2185

; <label>:29:                                     ; preds = %25, %8
  %30 = load i32, i32* %9, align 4, !dbg !2186
  %31 = icmp eq i32 %30, 0, !dbg !2188
  br i1 %31, label %32, label %36, !dbg !2189

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds %struct.GuestStatHeader, %struct.GuestStatHeader* %19, i32 0, i32 0, !dbg !2190
  %34 = load i32, i32* %33, align 1, !dbg !2192
  %35 = or i32 %34, 128, !dbg !2192
  store i32 %35, i32* %33, align 1, !dbg !2192
  br label %36, !dbg !2193

; <label>:36:                                     ; preds = %32, %29
  %37 = load %struct.DynBuf*, %struct.DynBuf** %16, align 8, !dbg !2194
  %38 = bitcast %struct.GuestStatHeader* %19 to i8*, !dbg !2195
  %39 = call signext i8 @DynBuf_Append(%struct.DynBuf* %37, i8* %38, i64 4), !dbg !2196
  %40 = getelementptr inbounds %struct.GuestStatHeader, %struct.GuestStatHeader* %19, i32 0, i32 0, !dbg !2197
  %41 = load i32, i32* %40, align 1, !dbg !2197
  %42 = and i32 %41, 2, !dbg !2199
  %43 = icmp ne i32 %42, 0, !dbg !2199
  br i1 %43, label %44, label %58, !dbg !2200

; <label>:44:                                     ; preds = %36
  call void @llvm.dbg.declare(metadata i64* %21, metadata !2201, metadata !483), !dbg !2203
  %45 = load i8*, i8** %17, align 8, !dbg !2204
  %46 = call i64 @strlen(i8* %45) #7, !dbg !2205
  %47 = add i64 %46, 1, !dbg !2206
  store i64 %47, i64* %21, align 8, !dbg !2203
  %48 = load i64, i64* %21, align 8, !dbg !2207
  %49 = trunc i64 %48 to i16, !dbg !2207
  %50 = getelementptr inbounds %struct.GuestDatumHeader, %struct.GuestDatumHeader* %20, i32 0, i32 0, !dbg !2208
  store i16 %49, i16* %50, align 1, !dbg !2209
  %51 = load %struct.DynBuf*, %struct.DynBuf** %16, align 8, !dbg !2210
  %52 = bitcast %struct.GuestDatumHeader* %20 to i8*, !dbg !2211
  %53 = call signext i8 @DynBuf_Append(%struct.DynBuf* %51, i8* %52, i64 2), !dbg !2212
  %54 = load %struct.DynBuf*, %struct.DynBuf** %16, align 8, !dbg !2213
  %55 = load i8*, i8** %17, align 8, !dbg !2214
  %56 = load i64, i64* %21, align 8, !dbg !2215
  %57 = call signext i8 @DynBuf_Append(%struct.DynBuf* %54, i8* %55, i64 %56), !dbg !2216
  br label %58, !dbg !2217

; <label>:58:                                     ; preds = %44, %36
  %59 = getelementptr inbounds %struct.GuestStatHeader, %struct.GuestStatHeader* %19, i32 0, i32 0, !dbg !2218
  %60 = load i32, i32* %59, align 1, !dbg !2218
  %61 = and i32 %60, 4, !dbg !2220
  %62 = icmp ne i32 %61, 0, !dbg !2220
  br i1 %62, label %63, label %78, !dbg !2221

; <label>:63:                                     ; preds = %58
  %64 = load i32, i32* %11, align 4, !dbg !2222
  %65 = zext i32 %64 to i64, !dbg !2222
  store i64 %65, i64* %18, align 8, !dbg !2224
  %66 = load i64, i64* %18, align 8, !dbg !2225
  %67 = call zeroext i16 @GuestInfoBytesNeededUIntDatum(i64 %66), !dbg !2226
  %68 = getelementptr inbounds %struct.GuestDatumHeader, %struct.GuestDatumHeader* %20, i32 0, i32 0, !dbg !2227
  store i16 %67, i16* %68, align 1, !dbg !2228
  %69 = load %struct.DynBuf*, %struct.DynBuf** %16, align 8, !dbg !2229
  %70 = bitcast %struct.GuestDatumHeader* %20 to i8*, !dbg !2230
  %71 = call signext i8 @DynBuf_Append(%struct.DynBuf* %69, i8* %70, i64 2), !dbg !2231
  %72 = load %struct.DynBuf*, %struct.DynBuf** %16, align 8, !dbg !2232
  %73 = bitcast i64* %18 to i8*, !dbg !2233
  %74 = getelementptr inbounds %struct.GuestDatumHeader, %struct.GuestDatumHeader* %20, i32 0, i32 0, !dbg !2234
  %75 = load i16, i16* %74, align 1, !dbg !2234
  %76 = zext i16 %75 to i64, !dbg !2235
  %77 = call signext i8 @DynBuf_Append(%struct.DynBuf* %72, i8* %73, i64 %76), !dbg !2236
  br label %78, !dbg !2237

; <label>:78:                                     ; preds = %63, %58
  %79 = getelementptr inbounds %struct.GuestStatHeader, %struct.GuestStatHeader* %19, i32 0, i32 0, !dbg !2238
  %80 = load i32, i32* %79, align 1, !dbg !2238
  %81 = and i32 %80, 8, !dbg !2240
  %82 = icmp ne i32 %81, 0, !dbg !2240
  br i1 %82, label %83, label %98, !dbg !2241

; <label>:83:                                     ; preds = %78
  %84 = load i32, i32* %13, align 4, !dbg !2242
  %85 = zext i32 %84 to i64, !dbg !2242
  store i64 %85, i64* %18, align 8, !dbg !2244
  %86 = load i64, i64* %18, align 8, !dbg !2245
  %87 = call zeroext i16 @GuestInfoBytesNeededUIntDatum(i64 %86), !dbg !2246
  %88 = getelementptr inbounds %struct.GuestDatumHeader, %struct.GuestDatumHeader* %20, i32 0, i32 0, !dbg !2247
  store i16 %87, i16* %88, align 1, !dbg !2248
  %89 = load %struct.DynBuf*, %struct.DynBuf** %16, align 8, !dbg !2249
  %90 = bitcast %struct.GuestDatumHeader* %20 to i8*, !dbg !2250
  %91 = call signext i8 @DynBuf_Append(%struct.DynBuf* %89, i8* %90, i64 2), !dbg !2251
  %92 = load %struct.DynBuf*, %struct.DynBuf** %16, align 8, !dbg !2252
  %93 = bitcast i64* %18 to i8*, !dbg !2253
  %94 = getelementptr inbounds %struct.GuestDatumHeader, %struct.GuestDatumHeader* %20, i32 0, i32 0, !dbg !2254
  %95 = load i16, i16* %94, align 1, !dbg !2254
  %96 = zext i16 %95 to i64, !dbg !2255
  %97 = call signext i8 @DynBuf_Append(%struct.DynBuf* %92, i8* %93, i64 %96), !dbg !2256
  br label %98, !dbg !2257

; <label>:98:                                     ; preds = %83, %78
  %99 = getelementptr inbounds %struct.GuestStatHeader, %struct.GuestStatHeader* %19, i32 0, i32 0, !dbg !2258
  %100 = load i32, i32* %99, align 1, !dbg !2258
  %101 = and i32 %100, 32, !dbg !2260
  %102 = icmp ne i32 %101, 0, !dbg !2260
  br i1 %102, label %103, label %118, !dbg !2261

; <label>:103:                                    ; preds = %98
  %104 = load i32, i32* %12, align 4, !dbg !2262
  %105 = zext i32 %104 to i64, !dbg !2262
  store i64 %105, i64* %18, align 8, !dbg !2264
  %106 = load i64, i64* %18, align 8, !dbg !2265
  %107 = call zeroext i16 @GuestInfoBytesNeededUIntDatum(i64 %106), !dbg !2266
  %108 = getelementptr inbounds %struct.GuestDatumHeader, %struct.GuestDatumHeader* %20, i32 0, i32 0, !dbg !2267
  store i16 %107, i16* %108, align 1, !dbg !2268
  %109 = load %struct.DynBuf*, %struct.DynBuf** %16, align 8, !dbg !2269
  %110 = bitcast %struct.GuestDatumHeader* %20 to i8*, !dbg !2270
  %111 = call signext i8 @DynBuf_Append(%struct.DynBuf* %109, i8* %110, i64 2), !dbg !2271
  %112 = load %struct.DynBuf*, %struct.DynBuf** %16, align 8, !dbg !2272
  %113 = bitcast i64* %18 to i8*, !dbg !2273
  %114 = getelementptr inbounds %struct.GuestDatumHeader, %struct.GuestDatumHeader* %20, i32 0, i32 0, !dbg !2274
  %115 = load i16, i16* %114, align 1, !dbg !2274
  %116 = zext i16 %115 to i64, !dbg !2275
  %117 = call signext i8 @DynBuf_Append(%struct.DynBuf* %112, i8* %113, i64 %116), !dbg !2276
  br label %118, !dbg !2277

; <label>:118:                                    ; preds = %103, %98
  %119 = getelementptr inbounds %struct.GuestStatHeader, %struct.GuestStatHeader* %19, i32 0, i32 0, !dbg !2278
  %120 = load i32, i32* %119, align 1, !dbg !2278
  %121 = and i32 %120, 128, !dbg !2280
  %122 = icmp ne i32 %121, 0, !dbg !2280
  br i1 %122, label %123, label %134, !dbg !2281

; <label>:123:                                    ; preds = %118
  %124 = load i64, i64* %15, align 8, !dbg !2282
  %125 = trunc i64 %124 to i16, !dbg !2282
  %126 = getelementptr inbounds %struct.GuestDatumHeader, %struct.GuestDatumHeader* %20, i32 0, i32 0, !dbg !2284
  store i16 %125, i16* %126, align 1, !dbg !2285
  %127 = load %struct.DynBuf*, %struct.DynBuf** %16, align 8, !dbg !2286
  %128 = bitcast %struct.GuestDatumHeader* %20 to i8*, !dbg !2287
  %129 = call signext i8 @DynBuf_Append(%struct.DynBuf* %127, i8* %128, i64 2), !dbg !2288
  %130 = load %struct.DynBuf*, %struct.DynBuf** %16, align 8, !dbg !2289
  %131 = load i8*, i8** %14, align 8, !dbg !2290
  %132 = load i64, i64* %15, align 8, !dbg !2291
  %133 = call signext i8 @DynBuf_Append(%struct.DynBuf* %130, i8* %131, i64 %132), !dbg !2292
  br label %134, !dbg !2293

; <label>:134:                                    ; preds = %123, %118
  ret void, !dbg !2294
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @GuestInfoBytesNeededUIntDatum(i64) #0 !dbg !2295 {
  %2 = alloca i16, align 2
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2298, metadata !483), !dbg !2299
  %4 = load i64, i64* %3, align 8, !dbg !2300
  %5 = icmp eq i64 %4, 0, !dbg !2302
  br i1 %5, label %6, label %7, !dbg !2303

; <label>:6:                                      ; preds = %1
  store i16 0, i16* %2, align 2, !dbg !2304
  br label %20, !dbg !2304

; <label>:7:                                      ; preds = %1
  %8 = load i64, i64* %3, align 8, !dbg !2306
  %9 = icmp ule i64 %8, 255, !dbg !2308
  br i1 %9, label %10, label %11, !dbg !2309

; <label>:10:                                     ; preds = %7
  store i16 1, i16* %2, align 2, !dbg !2310
  br label %20, !dbg !2310

; <label>:11:                                     ; preds = %7
  %12 = load i64, i64* %3, align 8, !dbg !2312
  %13 = icmp ule i64 %12, 65535, !dbg !2314
  br i1 %13, label %14, label %15, !dbg !2315

; <label>:14:                                     ; preds = %11
  store i16 2, i16* %2, align 2, !dbg !2316
  br label %20, !dbg !2316

; <label>:15:                                     ; preds = %11
  %16 = load i64, i64* %3, align 8, !dbg !2318
  %17 = icmp ule i64 %16, 4294967295, !dbg !2320
  br i1 %17, label %18, label %19, !dbg !2321

; <label>:18:                                     ; preds = %15
  store i16 4, i16* %2, align 2, !dbg !2322
  br label %20, !dbg !2322

; <label>:19:                                     ; preds = %15
  store i16 8, i16* %2, align 2, !dbg !2324
  br label %20, !dbg !2324

; <label>:20:                                     ; preds = %19, %18, %14, %10, %6
  %21 = load i16, i16* %2, align 2, !dbg !2326
  ret i16 %21, !dbg !2326
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!466, !467}
!llvm.ident = !{!468}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !366, globals: !404)
!1 = !DIFile(filename: "libguestInfo_la-perfMonLinux.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1429")
!2 = !{!3, !74, !106, !122, !126, !138, !356}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "GuestStatToolsID", file: !4, line: 335, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/guestStats.h", directory: "/home/lichi/Desktop/open-vm-tools/line1429")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!6 = !DIEnumerator(name: "GuestStatID_Invalid", value: 0)
!7 = !DIEnumerator(name: "GuestStatID_None", value: 1)
!8 = !DIEnumerator(name: "GuestStatID_ContextSwapRate", value: 2)
!9 = !DIEnumerator(name: "GuestStatID_MemActiveFileCache", value: 3)
!10 = !DIEnumerator(name: "GuestStatID_MemFree", value: 4)
!11 = !DIEnumerator(name: "GuestStatID_MemNeeded", value: 5)
!12 = !DIEnumerator(name: "GuestStatID_MemPhysUsable", value: 6)
!13 = !DIEnumerator(name: "GuestStatID_PageInRate", value: 7)
!14 = !DIEnumerator(name: "GuestStatID_PageOutRate", value: 8)
!15 = !DIEnumerator(name: "GuestStatID_SwapSpaceRemaining", value: 9)
!16 = !DIEnumerator(name: "GuestStatID_PhysicalPageSize", value: 10)
!17 = !DIEnumerator(name: "GuestStatID_HugePageSize", value: 11)
!18 = !DIEnumerator(name: "GuestStatID_Linux_HugePagesTotal", value: 12)
!19 = !DIEnumerator(name: "GuestStatID_MemNeededReservation", value: 13)
!20 = !DIEnumerator(name: "GuestStatID_PageSwapInRate", value: 14)
!21 = !DIEnumerator(name: "GuestStatID_PageSwapOutRate", value: 15)
!22 = !DIEnumerator(name: "GuestStatID_ProcessCreationRate", value: 16)
!23 = !DIEnumerator(name: "GuestStatID_SwapSpaceUsed", value: 17)
!24 = !DIEnumerator(name: "GuestStatID_SwapFilesCurrent", value: 18)
!25 = !DIEnumerator(name: "GuestStatID_SwapFilesMax", value: 19)
!26 = !DIEnumerator(name: "GuestStatID_ThreadCreationRate", value: 20)
!27 = !DIEnumerator(name: "GuestStatID_Linux_HugePagesFree", value: 21)
!28 = !DIEnumerator(name: "GuestStatID_Linux_LowWaterMark", value: 22)
!29 = !DIEnumerator(name: "GuestStatID_Linux_MemActive", value: 23)
!30 = !DIEnumerator(name: "GuestStatID_Linux_MemActiveAnon", value: 24)
!31 = !DIEnumerator(name: "GuestStatID_Linux_MemAvailable", value: 25)
!32 = !DIEnumerator(name: "GuestStatID_Linux_MemBuffers", value: 26)
!33 = !DIEnumerator(name: "GuestStatID_Linux_MemCached", value: 27)
!34 = !DIEnumerator(name: "GuestStatID_Linux_MemCommitted", value: 28)
!35 = !DIEnumerator(name: "GuestStatID_Linux_MemDirty", value: 29)
!36 = !DIEnumerator(name: "GuestStatID_Linux_MemInactive", value: 30)
!37 = !DIEnumerator(name: "GuestStatID_Linux_MemInactiveAnon", value: 31)
!38 = !DIEnumerator(name: "GuestStatID_Linux_MemInactiveFile", value: 32)
!39 = !DIEnumerator(name: "GuestStatID_Linux_MemPinned", value: 33)
!40 = !DIEnumerator(name: "GuestStatID_Linux_MemSlabReclaim", value: 34)
!41 = !DIEnumerator(name: "GuestStatID_Linux_MemSwapCached", value: 35)
!42 = !DIEnumerator(name: "GuestStatID_Linux_PageDirectScanRate", value: 36)
!43 = !DIEnumerator(name: "GuestStatID_Linux_PageFaultRate", value: 37)
!44 = !DIEnumerator(name: "GuestStatID_Linux_PageFreeRate", value: 38)
!45 = !DIEnumerator(name: "GuestStatID_Linux_PageMajorFaultRate", value: 39)
!46 = !DIEnumerator(name: "GuestStatID_Linux_PageStealRate", value: 40)
!47 = !DIEnumerator(name: "GuestStatID_Linux_PageSwapScanRate", value: 41)
!48 = !DIEnumerator(name: "GuestStatID_Linux_Swappiness", value: 42)
!49 = !DIEnumerator(name: "GuestStatID_Windows_MemModifiedPages", value: 43)
!50 = !DIEnumerator(name: "GuestStatID_Windows_MemAvailableToMm", value: 44)
!51 = !DIEnumerator(name: "GuestStatID_Windows_MemStandbyCore", value: 45)
!52 = !DIEnumerator(name: "GuestStatID_Windows_MemStandbyNormal", value: 46)
!53 = !DIEnumerator(name: "GuestStatID_Windows_MemStandbyReserve", value: 47)
!54 = !DIEnumerator(name: "GuestStatID_Windows_MemPagedPoolResident", value: 48)
!55 = !DIEnumerator(name: "GuestStatID_Windows_MemSystemCodeResident", value: 49)
!56 = !DIEnumerator(name: "GuestStatID_Windows_MemSystemDriverResident", value: 50)
!57 = !DIEnumerator(name: "GuestStatID_Windows_MemNonPagedPool", value: 51)
!58 = !DIEnumerator(name: "GuestStatID_Windows_MemCache", value: 52)
!59 = !DIEnumerator(name: "GuestStatID_Windows_FreeSystemPtes", value: 53)
!60 = !DIEnumerator(name: "GuestStatID_Windows_MemCommitLimit", value: 54)
!61 = !DIEnumerator(name: "GuestStatID_Windows_MemCommitted", value: 55)
!62 = !DIEnumerator(name: "GuestStatID_Windows_MemPrivateWorkingSet", value: 56)
!63 = !DIEnumerator(name: "GuestStatID_Windows_DiskReadRate", value: 57)
!64 = !DIEnumerator(name: "GuestStatID_Windows_DiskWriteRate", value: 58)
!65 = !DIEnumerator(name: "GuestStatID_Windows_AutomaticSwapFileMax", value: 59)
!66 = !DIEnumerator(name: "GuestStatID_Linux_MemTotal", value: 60)
!67 = !DIEnumerator(name: "GuestStatID_Linux_CpuRunQueue", value: 61)
!68 = !DIEnumerator(name: "GuestStatID_Linux_DiskRequestQueue", value: 62)
!69 = !DIEnumerator(name: "GuestStatID_Linux_DiskRequestQueueAvg", value: 63)
!70 = !DIEnumerator(name: "GuestStatID_Windows_ProcessorQueue", value: 64)
!71 = !DIEnumerator(name: "GuestStatID_Windows_DiskQueue", value: 65)
!72 = !DIEnumerator(name: "GuestStatID_Windows_DiskQueueAvg", value: 66)
!73 = !DIEnumerator(name: "GuestStatID_Max", value: 67)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 179, size: 32, align: 32, elements: !75)
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105}
!76 = !DIEnumerator(name: "GuestUnitsInvalid", value: 0)
!77 = !DIEnumerator(name: "GuestUnitsNone", value: 1)
!78 = !DIEnumerator(name: "GuestUnitsNumber", value: 2)
!79 = !DIEnumerator(name: "GuestUnitsInformation", value: 3)
!80 = !DIEnumerator(name: "GuestUnitsDuration", value: 4)
!81 = !DIEnumerator(name: "GuestUnitsCycles", value: 5)
!82 = !DIEnumerator(name: "GuestUnitsBytes", value: 3)
!83 = !DIEnumerator(name: "GuestUnitsKiB", value: 2051)
!84 = !DIEnumerator(name: "GuestUnitsMiB", value: 4099)
!85 = !DIEnumerator(name: "GuestUnitsPages", value: 32771)
!86 = !DIEnumerator(name: "GuestUnitsHugePages", value: 34819)
!87 = !DIEnumerator(name: "GuestUnitsBytesPerSecond", value: 67)
!88 = !DIEnumerator(name: "GuestUnitsKiBPerSecond", value: 2115)
!89 = !DIEnumerator(name: "GuestUnitsMiBPerSecond", value: 4163)
!90 = !DIEnumerator(name: "GuestUnitsPagesPerSecond", value: 32835)
!91 = !DIEnumerator(name: "GuestUnitsHugePagesPerSecond", value: 34883)
!92 = !DIEnumerator(name: "GuestUnitsAttoSeconds", value: 26628)
!93 = !DIEnumerator(name: "GuestUnitsFemtoSeconds", value: 24580)
!94 = !DIEnumerator(name: "GuestUnitsPicoSeconds", value: 22532)
!95 = !DIEnumerator(name: "GuestUnitsNanoSeconds", value: 20484)
!96 = !DIEnumerator(name: "GuestUnitsMicroSeconds", value: 18436)
!97 = !DIEnumerator(name: "GuestUnitsMilliSeconds", value: 16388)
!98 = !DIEnumerator(name: "GuestUnitsSeconds", value: 4)
!99 = !DIEnumerator(name: "GuestUnitsHz", value: 69)
!100 = !DIEnumerator(name: "GuestUnitsKiloHz", value: 2117)
!101 = !DIEnumerator(name: "GuestUnitsMegaHz", value: 4165)
!102 = !DIEnumerator(name: "GuestUnitsGigaHz", value: 6213)
!103 = !DIEnumerator(name: "GuestUnitsTeraHz", value: 8261)
!104 = !DIEnumerator(name: "GuestUnitsPercent", value: 32770)
!105 = !DIEnumerator(name: "GuestUnitsNumberPerSecond", value: 66)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 226, size: 32, align: 32, elements: !107)
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121}
!108 = !DIEnumerator(name: "GuestTypeInvalid", value: 0)
!109 = !DIEnumerator(name: "GuestTypeNil", value: 1)
!110 = !DIEnumerator(name: "GuestTypeInt8", value: 2)
!111 = !DIEnumerator(name: "GuestTypeUint8", value: 3)
!112 = !DIEnumerator(name: "GuestTypeInt16", value: 4)
!113 = !DIEnumerator(name: "GuestTypeUint16", value: 5)
!114 = !DIEnumerator(name: "GuestTypeInt32", value: 6)
!115 = !DIEnumerator(name: "GuestTypeUint32", value: 7)
!116 = !DIEnumerator(name: "GuestTypeInt64", value: 8)
!117 = !DIEnumerator(name: "GuestTypeUint64", value: 9)
!118 = !DIEnumerator(name: "GuestTypeFloat", value: 10)
!119 = !DIEnumerator(name: "GuestTypeDouble", value: 11)
!120 = !DIEnumerator(name: "GuestTypeString", value: 12)
!121 = !DIEnumerator(name: "GuestTypeBinary", value: 13)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !123, line: 232, size: 32, align: 32, elements: !124)
!123 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/plugin.h", directory: "/home/lichi/Desktop/open-vm-tools/line1429")
!124 = !{!125}
!125 = !DIEnumerator(name: "TOOLS_CORE_API_V1", value: 1)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !127, line: 51, size: 32, align: 32, elements: !128)
!127 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1429")
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137}
!129 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!130 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!131 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!132 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!133 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!134 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!135 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!136 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!137 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !139, line: 71, size: 32, align: 32, elements: !140)
!139 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/confname.h", directory: "/home/lichi/Desktop/open-vm-tools/line1429")
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355}
!141 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!142 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!143 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!144 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!145 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!146 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!147 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!148 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!149 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!150 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!151 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!152 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!153 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!154 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!155 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!156 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!157 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!158 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!159 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!160 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!161 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!162 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!163 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!164 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!165 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!166 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!167 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!168 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!169 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!170 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!171 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!172 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!173 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!174 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!175 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!176 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!177 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!178 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!179 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!180 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!181 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!182 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!183 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!184 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!185 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!186 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!187 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!188 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!189 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!190 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!191 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!192 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!193 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!194 = !DIEnumerator(name: "_SC_PII", value: 53)
!195 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!196 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!197 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!198 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!199 = !DIEnumerator(name: "_SC_POLL", value: 58)
!200 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!201 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!202 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!203 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!204 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!205 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!206 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!207 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!208 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!209 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!210 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!211 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!212 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!213 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!214 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!215 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!216 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!217 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!218 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!219 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!220 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!221 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!222 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!223 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!224 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!225 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!226 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!227 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!228 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!229 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!230 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!231 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!232 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!233 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!234 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!235 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!236 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!237 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!238 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!239 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!240 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!241 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!242 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!243 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!244 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!245 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!246 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!247 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!248 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!249 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!250 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!251 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!252 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!253 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!254 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!255 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!256 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!257 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!258 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!259 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!260 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!261 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!262 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!263 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!264 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!265 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!266 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!267 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!268 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!269 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!270 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!271 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!272 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!273 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!274 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!275 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!276 = !DIEnumerator(name: "_SC_BASE", value: 134)
!277 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!278 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!279 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!280 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!281 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!282 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!283 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!284 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!285 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!286 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!287 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!288 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!289 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!290 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!291 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!292 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!293 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!294 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!295 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!296 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!297 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!298 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!299 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!300 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!301 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!302 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!303 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!304 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!305 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!306 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!307 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!308 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!309 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!310 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!311 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!312 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!313 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!314 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!315 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!316 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!317 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!318 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!319 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!320 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!321 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!322 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!323 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!324 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!325 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!326 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!327 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!328 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!329 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!330 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!331 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!332 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!333 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!334 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!335 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!336 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!337 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!338 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!339 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!340 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!341 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!342 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!343 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!344 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!345 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!346 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!347 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!348 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!349 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!350 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!351 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!352 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!353 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!354 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!355 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!356 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 105, size: 32, align: 32, elements: !357)
!357 = !{!358, !359, !360, !361, !362, !363, !364, !365}
!358 = !DIEnumerator(name: "GUEST_DATUM_PRAGMA", value: 1)
!359 = !DIEnumerator(name: "GUEST_DATUM_NAMESPACE", value: 2)
!360 = !DIEnumerator(name: "GUEST_DATUM_ID", value: 4)
!361 = !DIEnumerator(name: "GUEST_DATUM_VALUE_TYPE_ENUM", value: 8)
!362 = !DIEnumerator(name: "GUEST_DATUM_VALUE_TYPE_STRING", value: 16)
!363 = !DIEnumerator(name: "GUEST_DATUM_VALUE_UNIT_ENUM", value: 32)
!364 = !DIEnumerator(name: "GUEST_DATUM_VALUE_UNIT_STRING", value: 64)
!365 = !DIEnumerator(name: "GUEST_DATUM_VALUE", value: 128)
!366 = !{!367, !368, !370, !373, !374, !379, !394, !395, !396, !399, !402}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !371, line: 122, baseType: !372)
!371 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1429")
!372 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !375, line: 172, baseType: !376)
!375 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1429")
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !377, line: 197, baseType: !378)
!377 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1429")
!378 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestInfoDiskStatsList", file: !381, line: 172, baseType: !382)
!381 = !DIFile(filename: "perfMonLinux.c", directory: "/home/lichi/Desktop/open-vm-tools/line1429")
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestInfoDiskStatsList", file: !381, line: 168, size: 192, align: 64, elements: !383)
!383 = !{!384, !386, !389}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !382, file: !381, line: 169, baseType: !385, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "diskName", scope: !382, file: !381, line: 170, baseType: !387, size: 64, align: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "weightedTime", scope: !382, file: !381, line: 171, baseType: !390, size: 64, align: 32, offset: 128)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 64, align: 32, elements: !392)
!391 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!392 = !{!393}
!393 = !DISubrange(count: 2)
!394 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!395 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !375, line: 177, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !371, line: 48, baseType: !398)
!398 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !375, line: 175, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !371, line: 49, baseType: !401)
!401 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !375, line: 173, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !371, line: 51, baseType: !391)
!404 = !{!405, !427, !428, !429, !459, !460, !465}
!405 = distinct !DIGlobalVariable(name: "guestInfoQuerySpecTable", scope: !0, file: !381, line: 78, type: !406, isLocal: false, isDefinition: true, variable: [22 x %struct.GuestInfoQuery]* @guestInfoQuerySpecTable)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 8448, align: 64, elements: !425)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestInfoQuery", file: !381, line: 76, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !381, line: 68, size: 384, align: 64, elements: !409)
!409 = !{!410, !413, !417, !418, !419, !421, !423}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "sourceFile", scope: !408, file: !381, line: 69, baseType: !411, size: 64, align: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64, align: 64)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "publish", scope: !408, file: !381, line: 70, baseType: !414, size: 64, align: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !375, line: 230, baseType: !388)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "isRegExp", scope: !408, file: !381, line: 71, baseType: !416, size: 8, align: 8, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "locatorString", scope: !408, file: !381, line: 72, baseType: !411, size: 64, align: 64, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "reportID", scope: !408, file: !381, line: 73, baseType: !420, size: 32, align: 32, offset: 256)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestStatToolsID", file: !4, line: 337, baseType: !3)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !408, file: !381, line: 74, baseType: !422, size: 32, align: 32, offset: 288)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestValueUnits", file: !4, line: 214, baseType: !74)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "dataType", scope: !408, file: !381, line: 75, baseType: !424, size: 32, align: 32, offset: 320)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestValueType", file: !4, line: 241, baseType: !106)
!425 = !{!426}
!426 = !DISubrange(count: 22)
!427 = distinct !DIGlobalVariable(name: "gReleased", scope: !0, file: !381, line: 56, type: !416, isLocal: true, isDefinition: true, variable: i8* @gReleased)
!428 = distinct !DIGlobalVariable(name: "gInternal", scope: !0, file: !381, line: 57, type: !416, isLocal: true, isDefinition: true, variable: i8* @gInternal)
!429 = distinct !DIGlobalVariable(name: "gPreviousCollector", scope: !0, file: !381, line: 163, type: !430, isLocal: true, isDefinition: true, variable: %struct.GuestInfoCollector** @gPreviousCollector)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestInfoCollector", file: !381, line: 160, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !381, line: 147, size: 512, align: 64, elements: !433)
!433 = !{!434, !439, !440, !454, !455, !456, !457, !458}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "exactMatches", scope: !432, file: !381, line: 148, baseType: !435, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "HashTable", file: !437, line: 40, baseType: !438)
!437 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hashTable.h", directory: "/home/lichi/Desktop/open-vm-tools/line1429")
!438 = !DICompositeType(tag: DW_TAG_structure_type, name: "HashTable", file: !437, line: 40, flags: DIFlagFwdDecl)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "numRegExps", scope: !432, file: !381, line: 150, baseType: !402, size: 32, align: 32, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "regExps", scope: !432, file: !381, line: 151, baseType: !441, size: 64, align: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64, align: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestInfoStat", file: !381, line: 145, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !381, line: 140, size: 192, align: 64, elements: !445)
!445 = !{!446, !448, !449, !452}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !444, file: !381, line: 141, baseType: !447, size: 32, align: 32)
!447 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !444, file: !381, line: 142, baseType: !402, size: 32, align: 32, offset: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !444, file: !381, line: 143, baseType: !450, size: 64, align: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !375, line: 171, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !371, line: 55, baseType: !372)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !444, file: !381, line: 144, baseType: !453, size: 64, align: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, align: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "numStats", scope: !432, file: !381, line: 153, baseType: !402, size: 32, align: 32, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !432, file: !381, line: 154, baseType: !442, size: 64, align: 64, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "reportMap", scope: !432, file: !381, line: 156, baseType: !435, size: 64, align: 64, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "timeData", scope: !432, file: !381, line: 158, baseType: !416, size: 8, align: 8, offset: 384)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "timeStamp", scope: !432, file: !381, line: 159, baseType: !394, size: 64, align: 64, offset: 448)
!459 = distinct !DIGlobalVariable(name: "gCurrentCollector", scope: !0, file: !381, line: 162, type: !430, isLocal: true, isDefinition: true, variable: %struct.GuestInfoCollector** @gCurrentCollector)
!460 = distinct !DIGlobalVariable(name: "curr", scope: !461, file: !381, line: 683, type: !447, isLocal: true, isDefinition: true, variable: i32* @GuestInfoProcDiskStatsData.curr)
!461 = distinct !DISubprogram(name: "GuestInfoProcDiskStatsData", scope: !381, file: !381, line: 681, type: !462, isLocal: true, isDefinition: true, scopeLine: 682, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !464)
!462 = !DISubroutineType(types: !463)
!463 = !{!416, !430}
!464 = !{}
!465 = distinct !DIGlobalVariable(name: "gDiskStatsList", scope: !0, file: !381, line: 174, type: !379, isLocal: true, isDefinition: true, variable: %struct.GuestInfoDiskStatsList** @gDiskStatsList)
!466 = !{i32 2, !"Dwarf Version", i32 4}
!467 = !{i32 2, !"Debug Info Version", i32 3}
!468 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!469 = distinct !DISubprogram(name: "GuestInfoTakeSample", scope: !381, file: !381, line: 1463, type: !470, isLocal: false, isDefinition: true, scopeLine: 1464, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !464)
!470 = !DISubroutineType(types: !471)
!471 = !{!416, !472}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64, align: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "DynBuf", file: !474, line: 40, baseType: !475)
!474 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dynbuf.h", directory: "/home/lichi/Desktop/open-vm-tools/line1429")
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DynBuf", file: !474, line: 36, size: 192, align: 64, elements: !476)
!476 = !{!477, !478, !481}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !475, file: !474, line: 37, baseType: !387, size: 64, align: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !475, file: !474, line: 38, baseType: !479, size: 64, align: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !480, line: 216, baseType: !372)
!480 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1429")
!481 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !475, file: !474, line: 39, baseType: !479, size: 64, align: 64, offset: 128)
!482 = !DILocalVariable(name: "statBuf", arg: 1, scope: !469, file: !381, line: 1463, type: !472)
!483 = !DIExpression()
!484 = !DILocation(line: 1463, column: 29, scope: !469)
!485 = !DILocalVariable(name: "temp", scope: !469, file: !381, line: 1465, type: !430)
!486 = !DILocation(line: 1465, column: 24, scope: !469)
!487 = !DILocation(line: 1470, column: 24, scope: !488)
!488 = distinct !DILexicalBlock(scope: !469, file: !381, line: 1470, column: 8)
!489 = !DILocation(line: 1470, column: 9, scope: !488)
!490 = !DILocation(line: 1470, column: 8, scope: !469)
!491 = !DILocation(line: 1471, column: 7, scope: !492)
!492 = distinct !DILexicalBlock(scope: !488, file: !381, line: 1470, column: 40)
!493 = !DILocation(line: 1475, column: 8, scope: !494)
!494 = distinct !DILexicalBlock(scope: !469, file: !381, line: 1475, column: 8)
!495 = !DILocation(line: 1475, column: 27, scope: !494)
!496 = !DILocation(line: 1475, column: 8, scope: !469)
!497 = !DILocation(line: 1476, column: 27, scope: !498)
!498 = distinct !DILexicalBlock(scope: !494, file: !381, line: 1475, column: 35)
!499 = !DILocation(line: 1476, column: 25, scope: !498)
!500 = !DILocation(line: 1479, column: 28, scope: !498)
!501 = !DILocation(line: 1479, column: 26, scope: !498)
!502 = !DILocation(line: 1481, column: 4, scope: !498)
!503 = !DILocation(line: 1483, column: 9, scope: !504)
!504 = distinct !DILexicalBlock(scope: !469, file: !381, line: 1483, column: 8)
!505 = !DILocation(line: 1483, column: 27, scope: !504)
!506 = !DILocation(line: 1483, column: 35, scope: !504)
!507 = !DILocation(line: 1484, column: 9, scope: !504)
!508 = !DILocation(line: 1484, column: 28, scope: !504)
!509 = !DILocation(line: 1483, column: 8, scope: !510)
!510 = !DILexicalBlockFile(scope: !469, file: !381, discriminator: 1)
!511 = !DILocation(line: 1485, column: 33, scope: !512)
!512 = distinct !DILexicalBlock(scope: !504, file: !381, line: 1484, column: 37)
!513 = !DILocation(line: 1485, column: 7, scope: !512)
!514 = !DILocation(line: 1486, column: 25, scope: !512)
!515 = !DILocation(line: 1487, column: 33, scope: !512)
!516 = !DILocation(line: 1487, column: 7, scope: !512)
!517 = !DILocation(line: 1488, column: 26, scope: !512)
!518 = !DILocation(line: 1489, column: 7, scope: !512)
!519 = !DILocation(line: 1493, column: 21, scope: !469)
!520 = !DILocation(line: 1493, column: 4, scope: !469)
!521 = !DILocation(line: 1496, column: 25, scope: !469)
!522 = !DILocation(line: 1496, column: 44, scope: !469)
!523 = !DILocation(line: 1496, column: 64, scope: !469)
!524 = !DILocation(line: 1496, column: 4, scope: !469)
!525 = !DILocation(line: 1499, column: 11, scope: !469)
!526 = !DILocation(line: 1499, column: 9, scope: !469)
!527 = !DILocation(line: 1500, column: 24, scope: !469)
!528 = !DILocation(line: 1500, column: 22, scope: !469)
!529 = !DILocation(line: 1501, column: 25, scope: !469)
!530 = !DILocation(line: 1501, column: 23, scope: !469)
!531 = !DILocation(line: 1503, column: 4, scope: !469)
!532 = !DILocation(line: 1504, column: 1, scope: !469)
!533 = distinct !DISubprogram(name: "GuestInfoConstructCollector", scope: !381, file: !381, line: 1375, type: !534, isLocal: true, isDefinition: true, scopeLine: 1377, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !464)
!534 = !DISubroutineType(types: !535)
!535 = !{!430, !453, !402}
!536 = !DILocalVariable(name: "queries", arg: 1, scope: !533, file: !381, line: 1375, type: !453)
!537 = !DILocation(line: 1375, column: 45, scope: !533)
!538 = !DILocalVariable(name: "numQueries", arg: 2, scope: !533, file: !381, line: 1376, type: !402)
!539 = !DILocation(line: 1376, column: 36, scope: !533)
!540 = !DILocalVariable(name: "i", scope: !533, file: !381, line: 1378, type: !402)
!541 = !DILocation(line: 1378, column: 11, scope: !533)
!542 = !DILocalVariable(name: "regExp", scope: !533, file: !381, line: 1379, type: !402)
!543 = !DILocation(line: 1379, column: 11, scope: !533)
!544 = !DILocalVariable(name: "collector", scope: !533, file: !381, line: 1380, type: !430)
!545 = !DILocation(line: 1380, column: 24, scope: !533)
!546 = !DILocation(line: 1380, column: 36, scope: !533)
!547 = !DILocation(line: 1382, column: 8, scope: !548)
!548 = distinct !DILexicalBlock(scope: !533, file: !381, line: 1382, column: 8)
!549 = !DILocation(line: 1382, column: 18, scope: !548)
!550 = !DILocation(line: 1382, column: 8, scope: !533)
!551 = !DILocation(line: 1383, column: 7, scope: !552)
!552 = distinct !DILexicalBlock(scope: !548, file: !381, line: 1382, column: 26)
!553 = !DILocation(line: 1386, column: 27, scope: !533)
!554 = !DILocation(line: 1386, column: 4, scope: !533)
!555 = !DILocation(line: 1386, column: 15, scope: !533)
!556 = !DILocation(line: 1386, column: 25, scope: !533)
!557 = !DILocation(line: 1388, column: 30, scope: !533)
!558 = !DILocation(line: 1388, column: 4, scope: !533)
!559 = !DILocation(line: 1388, column: 15, scope: !533)
!560 = !DILocation(line: 1388, column: 28, scope: !533)
!561 = !DILocation(line: 1392, column: 4, scope: !533)
!562 = !DILocation(line: 1392, column: 15, scope: !533)
!563 = !DILocation(line: 1392, column: 26, scope: !533)
!564 = !DILocation(line: 1393, column: 11, scope: !565)
!565 = distinct !DILexicalBlock(scope: !533, file: !381, line: 1393, column: 4)
!566 = !DILocation(line: 1393, column: 9, scope: !565)
!567 = !DILocation(line: 1393, column: 16, scope: !568)
!568 = !DILexicalBlockFile(scope: !569, file: !381, discriminator: 1)
!569 = distinct !DILexicalBlock(scope: !565, file: !381, line: 1393, column: 4)
!570 = !DILocation(line: 1393, column: 20, scope: !568)
!571 = !DILocation(line: 1393, column: 18, scope: !568)
!572 = !DILocation(line: 1393, column: 4, scope: !568)
!573 = !DILocation(line: 1394, column: 19, scope: !574)
!574 = distinct !DILexicalBlock(scope: !575, file: !381, line: 1394, column: 11)
!575 = distinct !DILexicalBlock(scope: !569, file: !381, line: 1393, column: 37)
!576 = !DILocation(line: 1394, column: 11, scope: !574)
!577 = !DILocation(line: 1394, column: 22, scope: !574)
!578 = !DILocation(line: 1394, column: 11, scope: !575)
!579 = !DILocation(line: 1395, column: 10, scope: !580)
!580 = distinct !DILexicalBlock(scope: !574, file: !381, line: 1394, column: 32)
!581 = !DILocation(line: 1395, column: 21, scope: !580)
!582 = !DILocation(line: 1395, column: 31, scope: !580)
!583 = !DILocation(line: 1396, column: 7, scope: !580)
!584 = !DILocation(line: 1397, column: 4, scope: !575)
!585 = !DILocation(line: 1393, column: 33, scope: !586)
!586 = !DILexicalBlockFile(scope: !569, file: !381, discriminator: 2)
!587 = !DILocation(line: 1393, column: 4, scope: !586)
!588 = distinct !{!588, !589}
!589 = !DILocation(line: 1393, column: 4, scope: !533)
!590 = !DILocation(line: 1399, column: 26, scope: !533)
!591 = !DILocation(line: 1399, column: 4, scope: !533)
!592 = !DILocation(line: 1399, column: 15, scope: !533)
!593 = !DILocation(line: 1399, column: 24, scope: !533)
!594 = !DILocation(line: 1400, column: 40, scope: !533)
!595 = !DILocation(line: 1400, column: 39, scope: !533)
!596 = !DILocation(line: 1400, column: 23, scope: !533)
!597 = !DILocation(line: 1400, column: 4, scope: !533)
!598 = !DILocation(line: 1400, column: 15, scope: !533)
!599 = !DILocation(line: 1400, column: 21, scope: !533)
!600 = !DILocation(line: 1401, column: 42, scope: !533)
!601 = !DILocation(line: 1401, column: 53, scope: !533)
!602 = !DILocation(line: 1401, column: 41, scope: !533)
!603 = !DILocation(line: 1401, column: 25, scope: !533)
!604 = !DILocation(line: 1401, column: 4, scope: !533)
!605 = !DILocation(line: 1401, column: 15, scope: !533)
!606 = !DILocation(line: 1401, column: 23, scope: !533)
!607 = !DILocation(line: 1404, column: 9, scope: !608)
!608 = distinct !DILexicalBlock(scope: !533, file: !381, line: 1404, column: 8)
!609 = !DILocation(line: 1404, column: 20, scope: !608)
!610 = !DILocation(line: 1404, column: 33, scope: !608)
!611 = !DILocation(line: 1404, column: 41, scope: !608)
!612 = !DILocation(line: 1405, column: 9, scope: !608)
!613 = !DILocation(line: 1405, column: 20, scope: !608)
!614 = !DILocation(line: 1405, column: 30, scope: !608)
!615 = !DILocation(line: 1405, column: 38, scope: !608)
!616 = !DILocation(line: 1406, column: 10, scope: !608)
!617 = !DILocation(line: 1406, column: 21, scope: !608)
!618 = !DILocation(line: 1406, column: 32, scope: !608)
!619 = !DILocation(line: 1406, column: 38, scope: !608)
!620 = !DILocation(line: 1406, column: 42, scope: !621)
!621 = !DILexicalBlockFile(scope: !608, file: !381, discriminator: 1)
!622 = !DILocation(line: 1406, column: 53, scope: !621)
!623 = !DILocation(line: 1406, column: 61, scope: !621)
!624 = !DILocation(line: 1406, column: 70, scope: !621)
!625 = !DILocation(line: 1407, column: 10, scope: !608)
!626 = !DILocation(line: 1407, column: 21, scope: !608)
!627 = !DILocation(line: 1407, column: 30, scope: !608)
!628 = !DILocation(line: 1407, column: 36, scope: !608)
!629 = !DILocation(line: 1407, column: 40, scope: !621)
!630 = !DILocation(line: 1407, column: 51, scope: !621)
!631 = !DILocation(line: 1407, column: 57, scope: !621)
!632 = !DILocation(line: 1404, column: 8, scope: !633)
!633 = !DILexicalBlockFile(scope: !533, file: !381, discriminator: 1)
!634 = !DILocation(line: 1408, column: 33, scope: !635)
!635 = distinct !DILexicalBlock(scope: !608, file: !381, line: 1407, column: 67)
!636 = !DILocation(line: 1408, column: 7, scope: !635)
!637 = !DILocation(line: 1409, column: 7, scope: !635)
!638 = !DILocation(line: 1412, column: 11, scope: !533)
!639 = !DILocation(line: 1414, column: 11, scope: !640)
!640 = distinct !DILexicalBlock(scope: !533, file: !381, line: 1414, column: 4)
!641 = !DILocation(line: 1414, column: 9, scope: !640)
!642 = !DILocation(line: 1414, column: 16, scope: !643)
!643 = !DILexicalBlockFile(scope: !644, file: !381, discriminator: 1)
!644 = distinct !DILexicalBlock(scope: !640, file: !381, line: 1414, column: 4)
!645 = !DILocation(line: 1414, column: 20, scope: !643)
!646 = !DILocation(line: 1414, column: 18, scope: !643)
!647 = !DILocation(line: 1414, column: 4, scope: !643)
!648 = !DILocalVariable(name: "query", scope: !649, file: !381, line: 1415, type: !453)
!649 = distinct !DILexicalBlock(scope: !644, file: !381, line: 1414, column: 37)
!650 = !DILocation(line: 1415, column: 23, scope: !649)
!651 = !DILocation(line: 1415, column: 40, scope: !649)
!652 = !DILocation(line: 1415, column: 32, scope: !649)
!653 = !DILocalVariable(name: "stat", scope: !649, file: !381, line: 1416, type: !442)
!654 = !DILocation(line: 1416, column: 22, scope: !649)
!655 = !DILocation(line: 1416, column: 47, scope: !649)
!656 = !DILocation(line: 1416, column: 30, scope: !649)
!657 = !DILocation(line: 1416, column: 41, scope: !649)
!658 = !DILocation(line: 1420, column: 21, scope: !649)
!659 = !DILocation(line: 1420, column: 7, scope: !649)
!660 = !DILocation(line: 1420, column: 13, scope: !649)
!661 = !DILocation(line: 1420, column: 19, scope: !649)
!662 = !DILocation(line: 1422, column: 11, scope: !663)
!663 = distinct !DILexicalBlock(scope: !649, file: !381, line: 1422, column: 11)
!664 = !DILocation(line: 1422, column: 18, scope: !663)
!665 = !DILocation(line: 1422, column: 11, scope: !649)
!666 = !DILocation(line: 1426, column: 41, scope: !667)
!667 = distinct !DILexicalBlock(scope: !663, file: !381, line: 1422, column: 28)
!668 = !DILocation(line: 1426, column: 35, scope: !667)
!669 = !DILocation(line: 1426, column: 10, scope: !667)
!670 = !DILocation(line: 1426, column: 21, scope: !667)
!671 = !DILocation(line: 1426, column: 39, scope: !667)
!672 = !DILocation(line: 1427, column: 7, scope: !667)
!673 = !DILocation(line: 1428, column: 14, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !381, line: 1428, column: 14)
!675 = distinct !DILexicalBlock(scope: !663, file: !381, line: 1427, column: 14)
!676 = !DILocation(line: 1428, column: 21, scope: !674)
!677 = !DILocation(line: 1428, column: 32, scope: !674)
!678 = !DILocation(line: 1428, column: 39, scope: !674)
!679 = !DILocation(line: 1428, column: 42, scope: !680)
!680 = !DILexicalBlockFile(scope: !674, file: !381, discriminator: 1)
!681 = !DILocation(line: 1428, column: 49, scope: !680)
!682 = !DILocation(line: 1428, column: 63, scope: !680)
!683 = !DILocation(line: 1428, column: 14, scope: !680)
!684 = !DILocalVariable(name: "key", scope: !685, file: !381, line: 1429, type: !387)
!685 = distinct !DILexicalBlock(scope: !674, file: !381, line: 1428, column: 72)
!686 = !DILocation(line: 1429, column: 19, scope: !685)
!687 = !DILocation(line: 1429, column: 56, scope: !685)
!688 = !DILocation(line: 1429, column: 63, scope: !685)
!689 = !DILocation(line: 1430, column: 42, scope: !685)
!690 = !DILocation(line: 1430, column: 49, scope: !685)
!691 = !DILocation(line: 1429, column: 25, scope: !685)
!692 = !DILocation(line: 1431, column: 30, scope: !685)
!693 = !DILocation(line: 1431, column: 41, scope: !685)
!694 = !DILocation(line: 1431, column: 55, scope: !685)
!695 = !DILocation(line: 1431, column: 60, scope: !685)
!696 = !DILocation(line: 1431, column: 13, scope: !685)
!697 = !DILocation(line: 1432, column: 18, scope: !685)
!698 = !DILocation(line: 1432, column: 13, scope: !685)
!699 = !DILocation(line: 1433, column: 10, scope: !685)
!700 = !DILocation(line: 1437, column: 24, scope: !649)
!701 = !DILocation(line: 1437, column: 35, scope: !649)
!702 = !DILocation(line: 1437, column: 73, scope: !649)
!703 = !DILocation(line: 1437, column: 80, scope: !649)
!704 = !DILocation(line: 1437, column: 61, scope: !649)
!705 = !DILocation(line: 1437, column: 47, scope: !649)
!706 = !DILocation(line: 1438, column: 24, scope: !649)
!707 = !DILocation(line: 1437, column: 7, scope: !649)
!708 = !DILocation(line: 1439, column: 4, scope: !649)
!709 = !DILocation(line: 1414, column: 33, scope: !710)
!710 = !DILexicalBlockFile(scope: !644, file: !381, discriminator: 2)
!711 = !DILocation(line: 1414, column: 4, scope: !710)
!712 = distinct !{!712, !713}
!713 = !DILocation(line: 1414, column: 4, scope: !533)
!714 = !DILocation(line: 1441, column: 11, scope: !533)
!715 = !DILocation(line: 1441, column: 4, scope: !533)
!716 = !DILocation(line: 1442, column: 1, scope: !533)
!717 = distinct !DISubprogram(name: "GuestInfoDestroyCollector", scope: !381, file: !381, line: 1345, type: !718, isLocal: true, isDefinition: true, scopeLine: 1346, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !464)
!718 = !DISubroutineType(types: !719)
!719 = !{null, !430}
!720 = !DILocalVariable(name: "collector", arg: 1, scope: !717, file: !381, line: 1345, type: !430)
!721 = !DILocation(line: 1345, column: 47, scope: !717)
!722 = !DILocation(line: 1347, column: 8, scope: !723)
!723 = distinct !DILexicalBlock(scope: !717, file: !381, line: 1347, column: 8)
!724 = !DILocation(line: 1347, column: 18, scope: !723)
!725 = !DILocation(line: 1347, column: 8, scope: !717)
!726 = !DILocation(line: 1348, column: 22, scope: !727)
!727 = distinct !DILexicalBlock(scope: !723, file: !381, line: 1347, column: 26)
!728 = !DILocation(line: 1348, column: 33, scope: !727)
!729 = !DILocation(line: 1348, column: 7, scope: !727)
!730 = !DILocation(line: 1349, column: 22, scope: !727)
!731 = !DILocation(line: 1349, column: 33, scope: !727)
!732 = !DILocation(line: 1349, column: 7, scope: !727)
!733 = !DILocation(line: 1350, column: 12, scope: !727)
!734 = !DILocation(line: 1350, column: 23, scope: !727)
!735 = !DILocation(line: 1350, column: 7, scope: !727)
!736 = !DILocation(line: 1351, column: 12, scope: !727)
!737 = !DILocation(line: 1351, column: 23, scope: !727)
!738 = !DILocation(line: 1351, column: 7, scope: !727)
!739 = !DILocation(line: 1352, column: 12, scope: !727)
!740 = !DILocation(line: 1352, column: 7, scope: !727)
!741 = !DILocation(line: 1353, column: 4, scope: !727)
!742 = !DILocation(line: 1354, column: 1, scope: !717)
!743 = distinct !DISubprogram(name: "GuestInfoCollect", scope: !381, file: !381, line: 812, type: !718, isLocal: true, isDefinition: true, scopeLine: 813, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !464)
!744 = !DILocalVariable(name: "collector", arg: 1, scope: !743, file: !381, line: 812, type: !430)
!745 = !DILocation(line: 812, column: 38, scope: !743)
!746 = !DILocalVariable(name: "i", scope: !743, file: !381, line: 814, type: !402)
!747 = !DILocation(line: 814, column: 11, scope: !743)
!748 = !DILocalVariable(name: "stat", scope: !743, file: !381, line: 815, type: !442)
!749 = !DILocation(line: 815, column: 19, scope: !743)
!750 = !DILocalVariable(name: "pageSize", scope: !743, file: !381, line: 816, type: !450)
!751 = !DILocation(line: 816, column: 11, scope: !743)
!752 = !DILocation(line: 816, column: 22, scope: !743)
!753 = !DILocation(line: 819, column: 11, scope: !754)
!754 = distinct !DILexicalBlock(scope: !743, file: !381, line: 819, column: 4)
!755 = !DILocation(line: 819, column: 9, scope: !754)
!756 = !DILocation(line: 819, column: 16, scope: !757)
!757 = !DILexicalBlockFile(scope: !758, file: !381, discriminator: 1)
!758 = distinct !DILexicalBlock(scope: !754, file: !381, line: 819, column: 4)
!759 = !DILocation(line: 819, column: 20, scope: !757)
!760 = !DILocation(line: 819, column: 31, scope: !757)
!761 = !DILocation(line: 819, column: 18, scope: !757)
!762 = !DILocation(line: 819, column: 4, scope: !757)
!763 = !DILocalVariable(name: "stat", scope: !764, file: !381, line: 820, type: !442)
!764 = distinct !DILexicalBlock(scope: !758, file: !381, line: 819, column: 46)
!765 = !DILocation(line: 820, column: 22, scope: !764)
!766 = !DILocation(line: 820, column: 47, scope: !764)
!767 = !DILocation(line: 820, column: 30, scope: !764)
!768 = !DILocation(line: 820, column: 41, scope: !764)
!769 = !DILocation(line: 822, column: 7, scope: !764)
!770 = !DILocation(line: 822, column: 13, scope: !764)
!771 = !DILocation(line: 822, column: 17, scope: !764)
!772 = !DILocation(line: 823, column: 7, scope: !764)
!773 = !DILocation(line: 823, column: 13, scope: !764)
!774 = !DILocation(line: 823, column: 19, scope: !764)
!775 = !DILocation(line: 824, column: 7, scope: !764)
!776 = !DILocation(line: 824, column: 13, scope: !764)
!777 = !DILocation(line: 824, column: 19, scope: !764)
!778 = !DILocation(line: 825, column: 4, scope: !764)
!779 = !DILocation(line: 819, column: 42, scope: !780)
!780 = !DILexicalBlockFile(scope: !758, file: !381, discriminator: 2)
!781 = !DILocation(line: 819, column: 4, scope: !780)
!782 = distinct !{!782, !783}
!783 = !DILocation(line: 819, column: 4, scope: !743)
!784 = !DILocation(line: 828, column: 44, scope: !743)
!785 = !DILocation(line: 828, column: 4, scope: !743)
!786 = !DILocation(line: 829, column: 44, scope: !743)
!787 = !DILocation(line: 829, column: 4, scope: !743)
!788 = !DILocation(line: 830, column: 42, scope: !743)
!789 = !DILocation(line: 830, column: 4, scope: !743)
!790 = !DILocation(line: 831, column: 46, scope: !743)
!791 = !DILocation(line: 831, column: 4, scope: !743)
!792 = !DILocation(line: 837, column: 46, scope: !743)
!793 = !DILocation(line: 837, column: 57, scope: !743)
!794 = !DILocation(line: 837, column: 26, scope: !743)
!795 = !DILocation(line: 837, column: 4, scope: !743)
!796 = !DILocation(line: 837, column: 15, scope: !743)
!797 = !DILocation(line: 837, column: 24, scope: !743)
!798 = !DILocation(line: 843, column: 27, scope: !743)
!799 = !DILocation(line: 844, column: 27, scope: !743)
!800 = !DILocation(line: 842, column: 4, scope: !743)
!801 = !DILocation(line: 850, column: 9, scope: !743)
!802 = !DILocation(line: 851, column: 21, scope: !743)
!803 = !DILocation(line: 851, column: 32, scope: !743)
!804 = !DILocation(line: 853, column: 21, scope: !743)
!805 = !DILocation(line: 851, column: 4, scope: !743)
!806 = !DILocation(line: 857, column: 8, scope: !807)
!807 = distinct !DILexicalBlock(scope: !743, file: !381, line: 857, column: 8)
!808 = !DILocation(line: 857, column: 14, scope: !807)
!809 = !DILocation(line: 857, column: 18, scope: !807)
!810 = !DILocation(line: 857, column: 8, scope: !743)
!811 = !DILocation(line: 858, column: 23, scope: !812)
!812 = distinct !DILexicalBlock(scope: !807, file: !381, line: 857, column: 24)
!813 = !DILocation(line: 858, column: 32, scope: !812)
!814 = !DILocation(line: 858, column: 7, scope: !812)
!815 = !DILocation(line: 858, column: 13, scope: !812)
!816 = !DILocation(line: 858, column: 19, scope: !812)
!817 = !DILocation(line: 859, column: 4, scope: !812)
!818 = !DILocalVariable(name: "memTotal", scope: !819, file: !381, line: 860, type: !442)
!819 = distinct !DILexicalBlock(scope: !807, file: !381, line: 859, column: 11)
!820 = !DILocation(line: 860, column: 22, scope: !819)
!821 = !DILocation(line: 862, column: 24, scope: !819)
!822 = !DILocation(line: 862, column: 35, scope: !819)
!823 = !DILocation(line: 864, column: 24, scope: !819)
!824 = !DILocation(line: 862, column: 7, scope: !819)
!825 = !DILocation(line: 866, column: 12, scope: !826)
!826 = distinct !DILexicalBlock(scope: !819, file: !381, line: 866, column: 11)
!827 = !DILocation(line: 866, column: 21, scope: !826)
!828 = !DILocation(line: 866, column: 29, scope: !826)
!829 = !DILocation(line: 866, column: 33, scope: !830)
!830 = !DILexicalBlockFile(scope: !826, file: !381, discriminator: 1)
!831 = !DILocation(line: 866, column: 43, scope: !830)
!832 = !DILocation(line: 866, column: 47, scope: !830)
!833 = !DILocation(line: 866, column: 11, scope: !830)
!834 = !DILocation(line: 867, column: 10, scope: !835)
!835 = distinct !DILexicalBlock(scope: !826, file: !381, line: 866, column: 54)
!836 = !DILocation(line: 867, column: 16, scope: !835)
!837 = !DILocation(line: 867, column: 20, scope: !835)
!838 = !DILocation(line: 868, column: 10, scope: !835)
!839 = !DILocation(line: 868, column: 16, scope: !835)
!840 = !DILocation(line: 868, column: 22, scope: !835)
!841 = !DILocation(line: 869, column: 24, scope: !835)
!842 = !DILocation(line: 869, column: 34, scope: !835)
!843 = !DILocation(line: 869, column: 10, scope: !835)
!844 = !DILocation(line: 869, column: 16, scope: !835)
!845 = !DILocation(line: 869, column: 22, scope: !835)
!846 = !DILocation(line: 870, column: 7, scope: !835)
!847 = !DILocation(line: 873, column: 29, scope: !743)
!848 = !DILocation(line: 873, column: 4, scope: !743)
!849 = !DILocation(line: 874, column: 38, scope: !743)
!850 = !DILocation(line: 874, column: 4, scope: !743)
!851 = !DILocation(line: 875, column: 31, scope: !743)
!852 = !DILocation(line: 875, column: 4, scope: !743)
!853 = !DILocation(line: 876, column: 1, scope: !743)
!854 = distinct !DISubprogram(name: "GuestInfoEncodeStats", scope: !381, file: !381, line: 1286, type: !855, isLocal: true, isDefinition: true, scopeLine: 1289, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !464)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !430, !430, !472}
!857 = !DILocalVariable(name: "current", arg: 1, scope: !854, file: !381, line: 1286, type: !430)
!858 = !DILocation(line: 1286, column: 42, scope: !854)
!859 = !DILocalVariable(name: "previous", arg: 2, scope: !854, file: !381, line: 1287, type: !430)
!860 = !DILocation(line: 1287, column: 42, scope: !854)
!861 = !DILocalVariable(name: "statBuf", arg: 3, scope: !854, file: !381, line: 1288, type: !472)
!862 = !DILocation(line: 1288, column: 30, scope: !854)
!863 = !DILocalVariable(name: "i", scope: !854, file: !381, line: 1290, type: !402)
!864 = !DILocation(line: 1290, column: 11, scope: !854)
!865 = !DILocalVariable(name: "legacy", scope: !854, file: !381, line: 1291, type: !866)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestMemInfoLegacy", file: !4, line: 96, baseType: !867)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestMemInfoLegacy", file: !4, line: 87, size: 896, align: 8, elements: !868)
!868 = !{!869, !870, !871, !872, !876, !877}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !867, file: !4, line: 88, baseType: !402, size: 32, align: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !867, file: !4, line: 89, baseType: !402, size: 32, align: 32, offset: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "memTotal", scope: !867, file: !4, line: 90, baseType: !450, size: 64, align: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated1", scope: !867, file: !4, line: 91, baseType: !873, size: 576, align: 64, offset: 128)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 576, align: 64, elements: !874)
!874 = !{!875}
!875 = !DISubrange(count: 9)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "hugePagesTotal", scope: !867, file: !4, line: 92, baseType: !450, size: 64, align: 64, offset: 704)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated2", scope: !867, file: !4, line: 93, baseType: !878, size: 128, align: 64, offset: 768)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 128, align: 64, elements: !392)
!879 = !DILocation(line: 1291, column: 23, scope: !854)
!880 = !DILocalVariable(name: "emitNameSpace", scope: !854, file: !381, line: 1292, type: !416)
!881 = !DILocation(line: 1292, column: 9, scope: !854)
!882 = !DILocation(line: 1295, column: 20, scope: !854)
!883 = !DILocation(line: 1295, column: 4, scope: !854)
!884 = !DILocation(line: 1297, column: 18, scope: !854)
!885 = !DILocation(line: 1297, column: 27, scope: !854)
!886 = !DILocation(line: 1297, column: 4, scope: !854)
!887 = !DILocation(line: 1300, column: 11, scope: !888)
!888 = distinct !DILexicalBlock(scope: !854, file: !381, line: 1300, column: 4)
!889 = !DILocation(line: 1300, column: 9, scope: !888)
!890 = !DILocation(line: 1300, column: 16, scope: !891)
!891 = !DILexicalBlockFile(scope: !892, file: !381, discriminator: 1)
!892 = distinct !DILexicalBlock(scope: !888, file: !381, line: 1300, column: 4)
!893 = !DILocation(line: 1300, column: 20, scope: !891)
!894 = !DILocation(line: 1300, column: 29, scope: !891)
!895 = !DILocation(line: 1300, column: 18, scope: !891)
!896 = !DILocation(line: 1300, column: 4, scope: !891)
!897 = !DILocalVariable(name: "stat", scope: !898, file: !381, line: 1301, type: !442)
!898 = distinct !DILexicalBlock(scope: !892, file: !381, line: 1300, column: 44)
!899 = !DILocation(line: 1301, column: 22, scope: !898)
!900 = !DILocation(line: 1301, column: 45, scope: !898)
!901 = !DILocation(line: 1301, column: 30, scope: !898)
!902 = !DILocation(line: 1301, column: 39, scope: !898)
!903 = !DILocation(line: 1303, column: 14, scope: !904)
!904 = distinct !DILexicalBlock(scope: !898, file: !381, line: 1303, column: 11)
!905 = !DILocation(line: 1303, column: 20, scope: !904)
!906 = !DILocation(line: 1303, column: 27, scope: !904)
!907 = !DILocation(line: 1303, column: 12, scope: !904)
!908 = !DILocation(line: 1303, column: 11, scope: !898)
!909 = !DILocation(line: 1304, column: 10, scope: !910)
!910 = distinct !DILexicalBlock(scope: !904, file: !381, line: 1303, column: 37)
!911 = !DILocation(line: 1307, column: 11, scope: !912)
!912 = distinct !DILexicalBlock(scope: !898, file: !381, line: 1307, column: 11)
!913 = !DILocation(line: 1307, column: 17, scope: !912)
!914 = !DILocation(line: 1307, column: 24, scope: !912)
!915 = !DILocation(line: 1307, column: 33, scope: !912)
!916 = !DILocation(line: 1307, column: 11, scope: !898)
!917 = !DILocation(line: 1308, column: 30, scope: !918)
!918 = distinct !DILexicalBlock(scope: !912, file: !381, line: 1307, column: 53)
!919 = !DILocation(line: 1308, column: 45, scope: !918)
!920 = !DILocation(line: 1308, column: 51, scope: !918)
!921 = !DILocation(line: 1308, column: 58, scope: !918)
!922 = !DILocation(line: 1309, column: 30, scope: !918)
!923 = !DILocation(line: 1309, column: 39, scope: !918)
!924 = !DILocation(line: 1309, column: 49, scope: !918)
!925 = !DILocation(line: 1308, column: 10, scope: !918)
!926 = !DILocation(line: 1310, column: 7, scope: !918)
!927 = !DILocation(line: 1313, column: 30, scope: !928)
!928 = distinct !DILexicalBlock(scope: !912, file: !381, line: 1310, column: 14)
!929 = !DILocation(line: 1313, column: 36, scope: !928)
!930 = !DILocation(line: 1314, column: 30, scope: !928)
!931 = !DILocation(line: 1315, column: 30, scope: !928)
!932 = !DILocation(line: 1315, column: 36, scope: !928)
!933 = !DILocation(line: 1315, column: 43, scope: !928)
!934 = !DILocation(line: 1316, column: 30, scope: !928)
!935 = !DILocation(line: 1316, column: 36, scope: !928)
!936 = !DILocation(line: 1316, column: 43, scope: !928)
!937 = !DILocation(line: 1317, column: 30, scope: !928)
!938 = !DILocation(line: 1317, column: 36, scope: !928)
!939 = !DILocation(line: 1317, column: 43, scope: !928)
!940 = !DILocation(line: 1318, column: 31, scope: !928)
!941 = !DILocation(line: 1318, column: 37, scope: !928)
!942 = !DILocation(line: 1318, column: 30, scope: !928)
!943 = !DILocation(line: 1319, column: 60, scope: !928)
!944 = !DILocation(line: 1319, column: 66, scope: !928)
!945 = !DILocation(line: 1319, column: 30, scope: !928)
!946 = !DILocation(line: 1320, column: 30, scope: !928)
!947 = !DILocation(line: 1313, column: 10, scope: !928)
!948 = !DILocation(line: 1323, column: 21, scope: !898)
!949 = !DILocation(line: 1324, column: 4, scope: !898)
!950 = !DILocation(line: 1300, column: 40, scope: !951)
!951 = !DILexicalBlockFile(scope: !892, file: !381, discriminator: 2)
!952 = !DILocation(line: 1300, column: 4, scope: !951)
!953 = distinct !{!953, !954}
!954 = !DILocation(line: 1300, column: 4, scope: !854)
!955 = !DILocation(line: 1325, column: 1, scope: !854)
!956 = distinct !DISubprogram(name: "GuestInfo_StatProviderPoll", scope: !381, file: !381, line: 1524, type: !957, isLocal: false, isDefinition: true, scopeLine: 1525, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !464)
!957 = !DISubroutineType(types: !958)
!958 = !{!959, !962}
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !960, line: 50, baseType: !961)
!960 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1429")
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !960, line: 49, baseType: !447)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !960, line: 77, baseType: !367)
!963 = !DILocalVariable(name: "data", arg: 1, scope: !956, file: !381, line: 1524, type: !962)
!964 = !DILocation(line: 1524, column: 37, scope: !956)
!965 = !DILocalVariable(name: "ctx", scope: !956, file: !381, line: 1526, type: !966)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64, align: 64)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppCtx", file: !123, line: 274, baseType: !968)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppCtx", file: !123, line: 241, size: 576, align: 64, elements: !969)
!969 = !{!970, !972, !976, !977, !978, !983, !988, !993, !994, !995, !997}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !968, file: !123, line: 243, baseType: !971, size: 32, align: 32)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCoreAPI", file: !123, line: 234, baseType: !122)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !968, file: !123, line: 245, baseType: !973, size: 64, align: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64, align: 64)
!974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !975)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !960, line: 46, baseType: !388)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "isVMware", scope: !968, file: !123, line: 247, baseType: !959, size: 32, align: 32, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "errorCode", scope: !968, file: !123, line: 249, baseType: !447, size: 32, align: 32, offset: 160)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "mainLoop", scope: !968, file: !123, line: 251, baseType: !979, size: 64, align: 64, offset: 192)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64, align: 64)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainLoop", file: !981, line: 56, baseType: !982)
!981 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line1429")
!982 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainLoop", file: !981, line: 56, flags: DIFlagFwdDecl)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !968, file: !123, line: 253, baseType: !984, size: 64, align: 64, offset: 256)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64, align: 64)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !986, line: 48, baseType: !987)
!986 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line1429")
!987 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !986, line: 48, flags: DIFlagFwdDecl)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !968, file: !123, line: 255, baseType: !989, size: 64, align: 64, offset: 320)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64, align: 64)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !991, line: 48, baseType: !992)
!991 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1429")
!992 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !991, line: 48, flags: DIFlagFwdDecl)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "blockFD", scope: !968, file: !123, line: 261, baseType: !447, size: 32, align: 32, offset: 384)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "uinputFD", scope: !968, file: !123, line: 263, baseType: !447, size: 32, align: 32, offset: 416)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !968, file: !123, line: 265, baseType: !996, size: 64, align: 64, offset: 448)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64, align: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "serviceObj", scope: !968, file: !123, line: 273, baseType: !962, size: 64, align: 64, offset: 512)
!998 = !DILocation(line: 1526, column: 17, scope: !956)
!999 = !DILocation(line: 1526, column: 23, scope: !956)
!1000 = !DILocalVariable(name: "stats", scope: !956, file: !381, line: 1527, type: !473)
!1001 = !DILocation(line: 1527, column: 11, scope: !956)
!1002 = !DILocation(line: 1529, column: 4, scope: !956)
!1003 = !DILocation(line: 1539, column: 4, scope: !956)
!1004 = !DILocation(line: 1541, column: 9, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !956, file: !381, line: 1541, column: 8)
!1006 = !DILocation(line: 1541, column: 8, scope: !956)
!1007 = !DILocation(line: 1542, column: 7, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1005, file: !381, line: 1541, column: 38)
!1009 = !DILocation(line: 1543, column: 4, scope: !1008)
!1010 = !DILocation(line: 1543, column: 44, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1012, file: !381, discriminator: 1)
!1012 = distinct !DILexicalBlock(scope: !1005, file: !381, line: 1543, column: 15)
!1013 = !DILocation(line: 1543, column: 16, scope: !1011)
!1014 = !DILocation(line: 1543, column: 15, scope: !1011)
!1015 = !DILocation(line: 1544, column: 7, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1012, file: !381, line: 1543, column: 58)
!1017 = !DILocation(line: 1545, column: 4, scope: !1016)
!1018 = !DILocation(line: 1547, column: 4, scope: !956)
!1019 = !DILocation(line: 1548, column: 4, scope: !956)
!1020 = distinct !DISubprogram(name: "GuestInfo_StatProviderShutdown", scope: !381, file: !381, line: 1570, type: !1021, isLocal: false, isDefinition: true, scopeLine: 1571, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !464)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{null}
!1023 = !DILocation(line: 1572, column: 33, scope: !1020)
!1024 = !DILocation(line: 1572, column: 4, scope: !1020)
!1025 = !DILocation(line: 1573, column: 19, scope: !1020)
!1026 = !DILocation(line: 1575, column: 30, scope: !1020)
!1027 = !DILocation(line: 1575, column: 4, scope: !1020)
!1028 = !DILocation(line: 1576, column: 22, scope: !1020)
!1029 = !DILocation(line: 1577, column: 30, scope: !1020)
!1030 = !DILocation(line: 1577, column: 4, scope: !1020)
!1031 = !DILocation(line: 1578, column: 23, scope: !1020)
!1032 = !DILocation(line: 1579, column: 1, scope: !1020)
!1033 = distinct !DISubprogram(name: "GuestInfoDeleteDiskStatsList", scope: !381, file: !381, line: 194, type: !1034, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !464)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{null, !379}
!1036 = !DILocalVariable(name: "head", arg: 1, scope: !1033, file: !381, line: 194, type: !379)
!1037 = !DILocation(line: 194, column: 54, scope: !1033)
!1038 = !DILocalVariable(name: "curr", scope: !1033, file: !381, line: 196, type: !379)
!1039 = !DILocation(line: 196, column: 28, scope: !1033)
!1040 = !DILocation(line: 196, column: 35, scope: !1033)
!1041 = !DILocation(line: 198, column: 4, scope: !1033)
!1042 = !DILocation(line: 198, column: 11, scope: !1043)
!1043 = !DILexicalBlockFile(scope: !1033, file: !381, discriminator: 1)
!1044 = !DILocation(line: 198, column: 16, scope: !1043)
!1045 = !DILocation(line: 198, column: 4, scope: !1043)
!1046 = !DILocalVariable(name: "next", scope: !1047, file: !381, line: 199, type: !379)
!1047 = distinct !DILexicalBlock(scope: !1033, file: !381, line: 198, column: 24)
!1048 = !DILocation(line: 199, column: 31, scope: !1047)
!1049 = !DILocation(line: 199, column: 38, scope: !1047)
!1050 = !DILocation(line: 199, column: 44, scope: !1047)
!1051 = !DILocation(line: 200, column: 12, scope: !1047)
!1052 = !DILocation(line: 200, column: 18, scope: !1047)
!1053 = !DILocation(line: 200, column: 7, scope: !1047)
!1054 = !DILocation(line: 201, column: 12, scope: !1047)
!1055 = !DILocation(line: 201, column: 7, scope: !1047)
!1056 = !DILocation(line: 202, column: 14, scope: !1047)
!1057 = !DILocation(line: 202, column: 12, scope: !1047)
!1058 = !DILocation(line: 198, column: 4, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !1033, file: !381, discriminator: 2)
!1060 = distinct !{!1060, !1041}
!1061 = !DILocation(line: 204, column: 1, scope: !1033)
!1062 = distinct !DISubprogram(name: "GuestInfoProcData", scope: !381, file: !381, line: 430, type: !1063, isLocal: true, isDefinition: true, scopeLine: 433, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !464)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!416, !411, !388, !430}
!1065 = !DILocalVariable(name: "pathName", arg: 1, scope: !1062, file: !381, line: 430, type: !411)
!1066 = !DILocation(line: 430, column: 31, scope: !1062)
!1067 = !DILocalVariable(name: "fieldSeparator", arg: 2, scope: !1062, file: !381, line: 431, type: !388)
!1068 = !DILocation(line: 431, column: 24, scope: !1062)
!1069 = !DILocalVariable(name: "collector", arg: 3, scope: !1062, file: !381, line: 432, type: !430)
!1070 = !DILocation(line: 432, column: 39, scope: !1062)
!1071 = !DILocalVariable(name: "line", scope: !1062, file: !381, line: 434, type: !1072)
!1072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 32768, align: 8, elements: !1073)
!1073 = !{!1074}
!1074 = !DISubrange(count: 4096)
!1075 = !DILocation(line: 434, column: 9, scope: !1062)
!1076 = !DILocalVariable(name: "fp", scope: !1062, file: !381, line: 435, type: !1077)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64, align: 64)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1079, line: 48, baseType: !1080)
!1079 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1429")
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1081, line: 241, size: 1728, align: 64, elements: !1082)
!1081 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1429")
!1082 = !{!1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1103, !1104, !1105, !1106, !1109, !1110, !1112, !1116, !1119, !1121, !1122, !1123, !1124, !1125, !1126, !1127}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1080, file: !1081, line: 242, baseType: !447, size: 32, align: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1080, file: !1081, line: 247, baseType: !387, size: 64, align: 64, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1080, file: !1081, line: 248, baseType: !387, size: 64, align: 64, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1080, file: !1081, line: 249, baseType: !387, size: 64, align: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1080, file: !1081, line: 250, baseType: !387, size: 64, align: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1080, file: !1081, line: 251, baseType: !387, size: 64, align: 64, offset: 320)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1080, file: !1081, line: 252, baseType: !387, size: 64, align: 64, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1080, file: !1081, line: 253, baseType: !387, size: 64, align: 64, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1080, file: !1081, line: 254, baseType: !387, size: 64, align: 64, offset: 512)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1080, file: !1081, line: 256, baseType: !387, size: 64, align: 64, offset: 576)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1080, file: !1081, line: 257, baseType: !387, size: 64, align: 64, offset: 640)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1080, file: !1081, line: 258, baseType: !387, size: 64, align: 64, offset: 704)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1080, file: !1081, line: 260, baseType: !1096, size: 64, align: 64, offset: 768)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64, align: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1081, line: 156, size: 192, align: 64, elements: !1098)
!1098 = !{!1099, !1100, !1102}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1097, file: !1081, line: 157, baseType: !1096, size: 64, align: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1097, file: !1081, line: 158, baseType: !1101, size: 64, align: 64, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64, align: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1097, file: !1081, line: 162, baseType: !447, size: 32, align: 32, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1080, file: !1081, line: 262, baseType: !1101, size: 64, align: 64, offset: 832)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1080, file: !1081, line: 264, baseType: !447, size: 32, align: 32, offset: 896)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1080, file: !1081, line: 268, baseType: !447, size: 32, align: 32, offset: 928)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1080, file: !1081, line: 270, baseType: !1107, size: 64, align: 64, offset: 960)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1108, line: 131, baseType: !378)
!1108 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1429")
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1080, file: !1081, line: 274, baseType: !401, size: 16, align: 16, offset: 1024)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1080, file: !1081, line: 275, baseType: !1111, size: 8, align: 8, offset: 1040)
!1111 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1080, file: !1081, line: 276, baseType: !1113, size: 8, align: 8, offset: 1048)
!1113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 8, align: 8, elements: !1114)
!1114 = !{!1115}
!1115 = !DISubrange(count: 1)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1080, file: !1081, line: 280, baseType: !1117, size: 64, align: 64, offset: 1088)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64, align: 64)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1081, line: 150, baseType: null)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1080, file: !1081, line: 289, baseType: !1120, size: 64, align: 64, offset: 1152)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1108, line: 132, baseType: !378)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1080, file: !1081, line: 297, baseType: !367, size: 64, align: 64, offset: 1216)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1080, file: !1081, line: 298, baseType: !367, size: 64, align: 64, offset: 1280)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1080, file: !1081, line: 299, baseType: !367, size: 64, align: 64, offset: 1344)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1080, file: !1081, line: 300, baseType: !367, size: 64, align: 64, offset: 1408)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1080, file: !1081, line: 302, baseType: !479, size: 64, align: 64, offset: 1472)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1080, file: !1081, line: 303, baseType: !447, size: 32, align: 32, offset: 1536)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1080, file: !1081, line: 305, baseType: !1128, size: 160, align: 8, offset: 1568)
!1128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 160, align: 8, elements: !1129)
!1129 = !{!1130}
!1130 = !DISubrange(count: 20)
!1131 = !DILocation(line: 435, column: 10, scope: !1062)
!1132 = !DILocation(line: 435, column: 27, scope: !1062)
!1133 = !DILocation(line: 435, column: 15, scope: !1062)
!1134 = !DILocation(line: 437, column: 8, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1062, file: !381, line: 437, column: 8)
!1136 = !DILocation(line: 437, column: 11, scope: !1135)
!1137 = !DILocation(line: 437, column: 8, scope: !1062)
!1138 = !DILocation(line: 438, column: 89, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1135, file: !381, line: 437, column: 19)
!1140 = !DILocation(line: 438, column: 7, scope: !1139)
!1141 = !DILocation(line: 439, column: 7, scope: !1139)
!1142 = !DILocation(line: 447, column: 4, scope: !1062)
!1143 = !DILocation(line: 447, column: 17, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1062, file: !381, discriminator: 1)
!1145 = !DILocation(line: 447, column: 36, scope: !1144)
!1146 = !DILocation(line: 447, column: 11, scope: !1144)
!1147 = !DILocation(line: 447, column: 43, scope: !1144)
!1148 = !DILocation(line: 447, column: 40, scope: !1144)
!1149 = !DILocation(line: 447, column: 4, scope: !1144)
!1150 = !DILocalVariable(name: "value", scope: !1151, file: !381, line: 448, type: !450)
!1151 = distinct !DILexicalBlock(scope: !1062, file: !381, line: 447, column: 49)
!1152 = !DILocation(line: 448, column: 14, scope: !1151)
!1153 = !DILocalVariable(name: "savedPtr", scope: !1151, file: !381, line: 449, type: !387)
!1154 = !DILocation(line: 449, column: 13, scope: !1151)
!1155 = !DILocalVariable(name: "fieldName", scope: !1151, file: !381, line: 450, type: !387)
!1156 = !DILocation(line: 450, column: 13, scope: !1151)
!1157 = !DILocation(line: 450, column: 34, scope: !1151)
!1158 = !DILocation(line: 450, column: 25, scope: !1151)
!1159 = !DILocalVariable(name: "fieldData", scope: !1151, file: !381, line: 451, type: !387)
!1160 = !DILocation(line: 451, column: 13, scope: !1151)
!1161 = !DILocation(line: 451, column: 25, scope: !1151)
!1162 = !DILocation(line: 453, column: 11, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1151, file: !381, line: 453, column: 11)
!1164 = !DILocation(line: 453, column: 21, scope: !1163)
!1165 = !DILocation(line: 453, column: 11, scope: !1151)
!1166 = !DILocation(line: 454, column: 10, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1163, file: !381, line: 453, column: 29)
!1168 = distinct !{!1168, !1142}
!1169 = !DILocation(line: 457, column: 11, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1151, file: !381, line: 457, column: 11)
!1171 = !DILocation(line: 457, column: 26, scope: !1170)
!1172 = !DILocation(line: 457, column: 11, scope: !1151)
!1173 = !DILocalVariable(name: "p", scope: !1174, file: !381, line: 458, type: !387)
!1174 = distinct !DILexicalBlock(scope: !1170, file: !381, line: 457, column: 35)
!1175 = !DILocation(line: 458, column: 16, scope: !1174)
!1176 = !DILocation(line: 458, column: 28, scope: !1174)
!1177 = !DILocation(line: 458, column: 39, scope: !1174)
!1178 = !DILocation(line: 458, column: 20, scope: !1174)
!1179 = !DILocation(line: 459, column: 14, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1174, file: !381, line: 459, column: 14)
!1181 = !DILocation(line: 459, column: 16, scope: !1180)
!1182 = !DILocation(line: 459, column: 14, scope: !1174)
!1183 = !DILocation(line: 464, column: 13, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1180, file: !381, line: 459, column: 24)
!1185 = !DILocation(line: 466, column: 14, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1180, file: !381, line: 465, column: 17)
!1187 = !DILocation(line: 466, column: 16, scope: !1186)
!1188 = !DILocation(line: 468, column: 7, scope: !1174)
!1189 = !DILocation(line: 470, column: 12, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1151, file: !381, line: 470, column: 11)
!1191 = !DILocation(line: 470, column: 22, scope: !1190)
!1192 = !DILocation(line: 470, column: 30, scope: !1190)
!1193 = !DILocation(line: 471, column: 19, scope: !1190)
!1194 = !DILocation(line: 471, column: 12, scope: !1190)
!1195 = !DILocation(line: 471, column: 49, scope: !1190)
!1196 = !DILocation(line: 470, column: 11, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1151, file: !381, discriminator: 1)
!1198 = !DILocation(line: 472, column: 10, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1190, file: !381, line: 471, column: 56)
!1200 = !DILocation(line: 475, column: 28, scope: !1151)
!1201 = !DILocation(line: 475, column: 38, scope: !1151)
!1202 = !DILocation(line: 475, column: 49, scope: !1151)
!1203 = !DILocation(line: 475, column: 60, scope: !1151)
!1204 = !DILocation(line: 475, column: 7, scope: !1151)
!1205 = !DILocation(line: 447, column: 4, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !1062, file: !381, discriminator: 2)
!1207 = !DILocation(line: 478, column: 11, scope: !1062)
!1208 = !DILocation(line: 478, column: 4, scope: !1062)
!1209 = !DILocation(line: 480, column: 4, scope: !1062)
!1210 = !DILocation(line: 481, column: 1, scope: !1062)
!1211 = distinct !DISubprogram(name: "GuestInfoGetUpTime", scope: !381, file: !381, line: 253, type: !1212, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !464)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!416, !1214}
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64, align: 64)
!1215 = !DILocalVariable(name: "now", arg: 1, scope: !1211, file: !381, line: 253, type: !1214)
!1216 = !DILocation(line: 253, column: 28, scope: !1211)
!1217 = !DILocalVariable(name: "line", scope: !1211, file: !381, line: 255, type: !1218)
!1218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 4096, align: 8, elements: !1219)
!1219 = !{!1220}
!1220 = !DISubrange(count: 512)
!1221 = !DILocation(line: 255, column: 9, scope: !1211)
!1222 = !DILocalVariable(name: "result", scope: !1211, file: !381, line: 256, type: !416)
!1223 = !DILocation(line: 256, column: 9, scope: !1211)
!1224 = !DILocalVariable(name: "fp", scope: !1211, file: !381, line: 257, type: !1077)
!1225 = !DILocation(line: 257, column: 10, scope: !1211)
!1226 = !DILocation(line: 257, column: 15, scope: !1211)
!1227 = !DILocation(line: 259, column: 8, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1211, file: !381, line: 259, column: 8)
!1229 = !DILocation(line: 259, column: 11, scope: !1228)
!1230 = !DILocation(line: 259, column: 8, scope: !1211)
!1231 = !DILocation(line: 260, column: 14, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1228, file: !381, line: 259, column: 19)
!1233 = !DILocation(line: 260, column: 7, scope: !1232)
!1234 = !DILocation(line: 263, column: 14, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1211, file: !381, line: 263, column: 8)
!1236 = !DILocation(line: 263, column: 33, scope: !1235)
!1237 = !DILocation(line: 263, column: 8, scope: !1235)
!1238 = !DILocation(line: 263, column: 40, scope: !1235)
!1239 = !DILocation(line: 263, column: 37, scope: !1235)
!1240 = !DILocation(line: 263, column: 8, scope: !1211)
!1241 = !DILocalVariable(name: "idle", scope: !1242, file: !381, line: 264, type: !394)
!1242 = distinct !DILexicalBlock(scope: !1235, file: !381, line: 263, column: 46)
!1243 = !DILocation(line: 264, column: 14, scope: !1242)
!1244 = !DILocation(line: 266, column: 18, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1242, file: !381, line: 266, column: 11)
!1246 = !DILocation(line: 266, column: 35, scope: !1245)
!1247 = !DILocation(line: 266, column: 11, scope: !1245)
!1248 = !DILocation(line: 266, column: 47, scope: !1245)
!1249 = !DILocation(line: 266, column: 11, scope: !1242)
!1250 = !DILocation(line: 267, column: 17, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1245, file: !381, line: 266, column: 53)
!1252 = !DILocation(line: 268, column: 7, scope: !1251)
!1253 = !DILocation(line: 269, column: 4, scope: !1242)
!1254 = !DILocation(line: 271, column: 11, scope: !1211)
!1255 = !DILocation(line: 271, column: 4, scope: !1211)
!1256 = !DILocation(line: 273, column: 11, scope: !1211)
!1257 = !DILocation(line: 273, column: 4, scope: !1211)
!1258 = !DILocation(line: 274, column: 1, scope: !1211)
!1259 = distinct !DISubprogram(name: "GuestInfoStoreStatByID", scope: !381, file: !381, line: 344, type: !1260, isLocal: true, isDefinition: true, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !464)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{null, !420, !430, !450}
!1262 = !DILocalVariable(name: "reportID", arg: 1, scope: !1259, file: !381, line: 344, type: !420)
!1263 = !DILocation(line: 344, column: 41, scope: !1259)
!1264 = !DILocalVariable(name: "collector", arg: 2, scope: !1259, file: !381, line: 345, type: !430)
!1265 = !DILocation(line: 345, column: 44, scope: !1259)
!1266 = !DILocalVariable(name: "value", arg: 3, scope: !1259, file: !381, line: 346, type: !450)
!1267 = !DILocation(line: 346, column: 31, scope: !1259)
!1268 = !DILocalVariable(name: "stat", scope: !1259, file: !381, line: 348, type: !442)
!1269 = !DILocation(line: 348, column: 19, scope: !1259)
!1270 = !DILocation(line: 350, column: 21, scope: !1259)
!1271 = !DILocation(line: 350, column: 32, scope: !1259)
!1272 = !DILocation(line: 351, column: 48, scope: !1259)
!1273 = !DILocation(line: 351, column: 36, scope: !1259)
!1274 = !DILocation(line: 351, column: 22, scope: !1259)
!1275 = !DILocation(line: 352, column: 21, scope: !1259)
!1276 = !DILocation(line: 350, column: 4, scope: !1259)
!1277 = !DILocation(line: 354, column: 23, scope: !1259)
!1278 = !DILocation(line: 354, column: 29, scope: !1259)
!1279 = !DILocation(line: 354, column: 4, scope: !1259)
!1280 = !DILocation(line: 355, column: 1, scope: !1259)
!1281 = distinct !DISubprogram(name: "GuestInfoDeriveMemNeeded", scope: !381, file: !381, line: 1148, type: !718, isLocal: true, isDefinition: true, scopeLine: 1149, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !464)
!1282 = !DILocalVariable(name: "collector", arg: 1, scope: !1281, file: !381, line: 1148, type: !430)
!1283 = !DILocation(line: 1148, column: 46, scope: !1281)
!1284 = !DILocalVariable(name: "memNeeded", scope: !1281, file: !381, line: 1150, type: !450)
!1285 = !DILocation(line: 1150, column: 11, scope: !1281)
!1286 = !DILocalVariable(name: "memNeededReservation", scope: !1281, file: !381, line: 1151, type: !450)
!1287 = !DILocation(line: 1151, column: 11, scope: !1281)
!1288 = !DILocalVariable(name: "memAvailable", scope: !1281, file: !381, line: 1152, type: !450)
!1289 = !DILocation(line: 1152, column: 11, scope: !1281)
!1290 = !DILocalVariable(name: "memAvail", scope: !1281, file: !381, line: 1153, type: !442)
!1291 = !DILocation(line: 1153, column: 19, scope: !1281)
!1292 = !DILocalVariable(name: "memPhysUsable", scope: !1281, file: !381, line: 1154, type: !442)
!1293 = !DILocation(line: 1154, column: 19, scope: !1281)
!1294 = !DILocation(line: 1156, column: 21, scope: !1281)
!1295 = !DILocation(line: 1156, column: 32, scope: !1281)
!1296 = !DILocation(line: 1158, column: 21, scope: !1281)
!1297 = !DILocation(line: 1156, column: 4, scope: !1281)
!1298 = !DILocation(line: 1162, column: 21, scope: !1281)
!1299 = !DILocation(line: 1162, column: 32, scope: !1281)
!1300 = !DILocation(line: 1164, column: 21, scope: !1281)
!1301 = !DILocation(line: 1162, column: 4, scope: !1281)
!1302 = !DILocation(line: 1166, column: 9, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1281, file: !381, line: 1166, column: 8)
!1304 = !DILocation(line: 1166, column: 18, scope: !1303)
!1305 = !DILocation(line: 1166, column: 26, scope: !1303)
!1306 = !DILocation(line: 1166, column: 30, scope: !1307)
!1307 = !DILexicalBlockFile(scope: !1303, file: !381, discriminator: 1)
!1308 = !DILocation(line: 1166, column: 40, scope: !1307)
!1309 = !DILocation(line: 1166, column: 44, scope: !1307)
!1310 = !DILocation(line: 1166, column: 8, scope: !1307)
!1311 = !DILocation(line: 1167, column: 22, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1303, file: !381, line: 1166, column: 51)
!1313 = !DILocation(line: 1167, column: 32, scope: !1312)
!1314 = !DILocation(line: 1167, column: 20, scope: !1312)
!1315 = !DILocation(line: 1168, column: 4, scope: !1312)
!1316 = !DILocalVariable(name: "memFree", scope: !1317, file: !381, line: 1169, type: !442)
!1317 = distinct !DILexicalBlock(scope: !1303, file: !381, line: 1168, column: 11)
!1318 = !DILocation(line: 1169, column: 22, scope: !1317)
!1319 = !DILocalVariable(name: "memCache", scope: !1317, file: !381, line: 1170, type: !442)
!1320 = !DILocation(line: 1170, column: 22, scope: !1317)
!1321 = !DILocalVariable(name: "memBuffers", scope: !1317, file: !381, line: 1171, type: !442)
!1322 = !DILocation(line: 1171, column: 22, scope: !1317)
!1323 = !DILocalVariable(name: "memActiveFile", scope: !1317, file: !381, line: 1172, type: !442)
!1324 = !DILocation(line: 1172, column: 22, scope: !1317)
!1325 = !DILocalVariable(name: "memSlabReclaim", scope: !1317, file: !381, line: 1173, type: !442)
!1326 = !DILocation(line: 1173, column: 22, scope: !1317)
!1327 = !DILocalVariable(name: "memInactiveFile", scope: !1317, file: !381, line: 1174, type: !442)
!1328 = !DILocation(line: 1174, column: 22, scope: !1317)
!1329 = !DILocalVariable(name: "lowWaterMark", scope: !1317, file: !381, line: 1175, type: !442)
!1330 = !DILocation(line: 1175, column: 22, scope: !1317)
!1331 = !DILocation(line: 1177, column: 24, scope: !1317)
!1332 = !DILocation(line: 1177, column: 35, scope: !1317)
!1333 = !DILocation(line: 1179, column: 24, scope: !1317)
!1334 = !DILocation(line: 1177, column: 7, scope: !1317)
!1335 = !DILocation(line: 1180, column: 24, scope: !1317)
!1336 = !DILocation(line: 1180, column: 35, scope: !1317)
!1337 = !DILocation(line: 1182, column: 24, scope: !1317)
!1338 = !DILocation(line: 1180, column: 7, scope: !1317)
!1339 = !DILocation(line: 1183, column: 24, scope: !1317)
!1340 = !DILocation(line: 1183, column: 35, scope: !1317)
!1341 = !DILocation(line: 1185, column: 24, scope: !1317)
!1342 = !DILocation(line: 1183, column: 7, scope: !1317)
!1343 = !DILocation(line: 1186, column: 24, scope: !1317)
!1344 = !DILocation(line: 1186, column: 35, scope: !1317)
!1345 = !DILocation(line: 1188, column: 24, scope: !1317)
!1346 = !DILocation(line: 1186, column: 7, scope: !1317)
!1347 = !DILocation(line: 1189, column: 24, scope: !1317)
!1348 = !DILocation(line: 1189, column: 35, scope: !1317)
!1349 = !DILocation(line: 1191, column: 24, scope: !1317)
!1350 = !DILocation(line: 1189, column: 7, scope: !1317)
!1351 = !DILocation(line: 1192, column: 24, scope: !1317)
!1352 = !DILocation(line: 1192, column: 35, scope: !1317)
!1353 = !DILocation(line: 1194, column: 24, scope: !1317)
!1354 = !DILocation(line: 1192, column: 7, scope: !1317)
!1355 = !DILocation(line: 1195, column: 24, scope: !1317)
!1356 = !DILocation(line: 1195, column: 35, scope: !1317)
!1357 = !DILocation(line: 1197, column: 24, scope: !1317)
!1358 = !DILocation(line: 1195, column: 7, scope: !1317)
!1359 = !DILocation(line: 1199, column: 13, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1317, file: !381, line: 1199, column: 11)
!1361 = !DILocation(line: 1199, column: 21, scope: !1360)
!1362 = !DILocation(line: 1199, column: 29, scope: !1360)
!1363 = !DILocation(line: 1199, column: 33, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1360, file: !381, discriminator: 1)
!1365 = !DILocation(line: 1199, column: 42, scope: !1364)
!1366 = !DILocation(line: 1199, column: 46, scope: !1364)
!1367 = !DILocation(line: 1199, column: 53, scope: !1364)
!1368 = !DILocation(line: 1200, column: 13, scope: !1360)
!1369 = !DILocation(line: 1200, column: 22, scope: !1360)
!1370 = !DILocation(line: 1200, column: 30, scope: !1360)
!1371 = !DILocation(line: 1200, column: 34, scope: !1364)
!1372 = !DILocation(line: 1200, column: 44, scope: !1364)
!1373 = !DILocation(line: 1200, column: 48, scope: !1364)
!1374 = !DILocation(line: 1200, column: 55, scope: !1364)
!1375 = !DILocation(line: 1201, column: 13, scope: !1360)
!1376 = !DILocation(line: 1201, column: 24, scope: !1360)
!1377 = !DILocation(line: 1201, column: 32, scope: !1360)
!1378 = !DILocation(line: 1201, column: 36, scope: !1364)
!1379 = !DILocation(line: 1201, column: 48, scope: !1364)
!1380 = !DILocation(line: 1201, column: 52, scope: !1364)
!1381 = !DILocation(line: 1201, column: 59, scope: !1364)
!1382 = !DILocation(line: 1202, column: 12, scope: !1360)
!1383 = !DILocation(line: 1202, column: 26, scope: !1360)
!1384 = !DILocation(line: 1202, column: 34, scope: !1360)
!1385 = !DILocation(line: 1203, column: 12, scope: !1360)
!1386 = !DILocation(line: 1203, column: 27, scope: !1360)
!1387 = !DILocation(line: 1203, column: 35, scope: !1360)
!1388 = !DILocation(line: 1204, column: 12, scope: !1360)
!1389 = !DILocation(line: 1204, column: 28, scope: !1360)
!1390 = !DILocation(line: 1204, column: 36, scope: !1360)
!1391 = !DILocation(line: 1205, column: 13, scope: !1360)
!1392 = !DILocation(line: 1205, column: 26, scope: !1360)
!1393 = !DILocation(line: 1205, column: 34, scope: !1360)
!1394 = !DILocation(line: 1205, column: 38, scope: !1364)
!1395 = !DILocation(line: 1205, column: 52, scope: !1364)
!1396 = !DILocation(line: 1205, column: 56, scope: !1364)
!1397 = !DILocation(line: 1199, column: 11, scope: !1398)
!1398 = !DILexicalBlockFile(scope: !1317, file: !381, discriminator: 2)
!1399 = !DILocalVariable(name: "pageCache", scope: !1400, file: !381, line: 1206, type: !450)
!1400 = distinct !DILexicalBlock(scope: !1360, file: !381, line: 1205, column: 64)
!1401 = !DILocation(line: 1206, column: 17, scope: !1400)
!1402 = !DILocalVariable(name: "kbPerPage", scope: !1400, file: !381, line: 1207, type: !372)
!1403 = !DILocation(line: 1207, column: 24, scope: !1400)
!1404 = !DILocation(line: 1207, column: 36, scope: !1400)
!1405 = !DILocation(line: 1207, column: 57, scope: !1400)
!1406 = !DILocalVariable(name: "lowWaterMarkValue", scope: !1400, file: !381, line: 1208, type: !450)
!1407 = !DILocation(line: 1208, column: 17, scope: !1400)
!1408 = !DILocation(line: 1208, column: 37, scope: !1400)
!1409 = !DILocation(line: 1208, column: 51, scope: !1400)
!1410 = !DILocation(line: 1208, column: 59, scope: !1400)
!1411 = !DILocation(line: 1208, column: 57, scope: !1400)
!1412 = !DILocation(line: 1210, column: 25, scope: !1400)
!1413 = !DILocation(line: 1210, column: 34, scope: !1400)
!1414 = !DILocation(line: 1210, column: 42, scope: !1400)
!1415 = !DILocation(line: 1210, column: 40, scope: !1400)
!1416 = !DILocation(line: 1210, column: 23, scope: !1400)
!1417 = !DILocation(line: 1212, column: 15, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1400, file: !381, line: 1212, column: 14)
!1419 = !DILocation(line: 1212, column: 30, scope: !1418)
!1420 = !DILocation(line: 1212, column: 34, scope: !1418)
!1421 = !DILocation(line: 1212, column: 40, scope: !1418)
!1422 = !DILocation(line: 1212, column: 44, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1418, file: !381, discriminator: 1)
!1424 = !DILocation(line: 1212, column: 61, scope: !1423)
!1425 = !DILocation(line: 1212, column: 65, scope: !1423)
!1426 = !DILocation(line: 1212, column: 14, scope: !1423)
!1427 = !DILocation(line: 1213, column: 25, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1418, file: !381, line: 1212, column: 72)
!1429 = !DILocation(line: 1213, column: 40, scope: !1428)
!1430 = !DILocation(line: 1213, column: 48, scope: !1428)
!1431 = !DILocation(line: 1213, column: 65, scope: !1428)
!1432 = !DILocation(line: 1213, column: 46, scope: !1428)
!1433 = !DILocation(line: 1213, column: 23, scope: !1428)
!1434 = !DILocation(line: 1214, column: 10, scope: !1428)
!1435 = !DILocation(line: 1219, column: 25, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1418, file: !381, line: 1214, column: 17)
!1437 = !DILocation(line: 1219, column: 35, scope: !1436)
!1438 = !DILocation(line: 1219, column: 43, scope: !1436)
!1439 = !DILocation(line: 1219, column: 55, scope: !1436)
!1440 = !DILocation(line: 1219, column: 41, scope: !1436)
!1441 = !DILocation(line: 1219, column: 23, scope: !1436)
!1442 = !DILocation(line: 1222, column: 22, scope: !1400)
!1443 = !DILocation(line: 1222, column: 32, scope: !1400)
!1444 = !DILocation(line: 1222, column: 23, scope: !1400)
!1445 = !DILocation(line: 1222, column: 22, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !1400, file: !381, discriminator: 1)
!1447 = !DILocation(line: 1222, column: 32, scope: !1446)
!1448 = !DILocation(line: 1222, column: 23, scope: !1446)
!1449 = !DILocation(line: 1222, column: 22, scope: !1450)
!1450 = !DILexicalBlockFile(scope: !1400, file: !381, discriminator: 2)
!1451 = !DILocation(line: 1222, column: 23, scope: !1450)
!1452 = !DILocation(line: 1222, column: 23, scope: !1453)
!1453 = !DILexicalBlockFile(scope: !1400, file: !381, discriminator: 3)
!1454 = !DILocation(line: 1222, column: 20, scope: !1453)
!1455 = !DILocation(line: 1223, column: 26, scope: !1400)
!1456 = !DILocation(line: 1223, column: 23, scope: !1400)
!1457 = !DILocation(line: 1225, column: 14, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1400, file: !381, line: 1225, column: 14)
!1459 = !DILocation(line: 1225, column: 30, scope: !1458)
!1460 = !DILocation(line: 1225, column: 34, scope: !1458)
!1461 = !DILocation(line: 1225, column: 14, scope: !1400)
!1462 = !DILocation(line: 1226, column: 29, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1458, file: !381, line: 1225, column: 40)
!1464 = !DILocation(line: 1226, column: 45, scope: !1463)
!1465 = !DILocation(line: 1227, column: 28, scope: !1463)
!1466 = !DILocation(line: 1227, column: 44, scope: !1463)
!1467 = !DILocation(line: 1227, column: 50, scope: !1463)
!1468 = !DILocation(line: 1227, column: 29, scope: !1463)
!1469 = !DILocation(line: 1227, column: 28, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !1463, file: !381, discriminator: 1)
!1471 = !DILocation(line: 1227, column: 44, scope: !1470)
!1472 = !DILocation(line: 1227, column: 50, scope: !1470)
!1473 = !DILocation(line: 1227, column: 29, scope: !1470)
!1474 = !DILocation(line: 1227, column: 28, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !1463, file: !381, discriminator: 2)
!1476 = !DILocation(line: 1227, column: 29, scope: !1475)
!1477 = !DILocation(line: 1227, column: 29, scope: !1478)
!1478 = !DILexicalBlockFile(scope: !1463, file: !381, discriminator: 3)
!1479 = !DILocation(line: 1226, column: 51, scope: !1470)
!1480 = !DILocation(line: 1226, column: 26, scope: !1470)
!1481 = !DILocation(line: 1228, column: 10, scope: !1463)
!1482 = !DILocation(line: 1230, column: 21, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1400, file: !381, line: 1230, column: 14)
!1484 = !DILocation(line: 1230, column: 34, scope: !1483)
!1485 = !DILocation(line: 1230, column: 14, scope: !1400)
!1486 = !DILocation(line: 1231, column: 26, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1483, file: !381, line: 1230, column: 39)
!1488 = !DILocation(line: 1232, column: 10, scope: !1487)
!1489 = !DILocation(line: 1233, column: 7, scope: !1400)
!1490 = !DILocation(line: 1236, column: 8, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1281, file: !381, line: 1236, column: 8)
!1492 = !DILocation(line: 1236, column: 23, scope: !1491)
!1493 = !DILocation(line: 1236, column: 27, scope: !1491)
!1494 = !DILocation(line: 1236, column: 8, scope: !1281)
!1495 = !DILocation(line: 1240, column: 30, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1491, file: !381, line: 1236, column: 33)
!1497 = !DILocation(line: 1240, column: 45, scope: !1496)
!1498 = !DILocation(line: 1240, column: 51, scope: !1496)
!1499 = !DILocation(line: 1240, column: 28, scope: !1496)
!1500 = !DILocation(line: 1242, column: 11, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1496, file: !381, line: 1242, column: 11)
!1502 = !DILocation(line: 1242, column: 26, scope: !1501)
!1503 = !DILocation(line: 1242, column: 24, scope: !1501)
!1504 = !DILocation(line: 1242, column: 11, scope: !1496)
!1505 = !DILocation(line: 1243, column: 26, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1501, file: !381, line: 1242, column: 48)
!1507 = !DILocation(line: 1243, column: 23, scope: !1506)
!1508 = !DILocation(line: 1244, column: 7, scope: !1506)
!1509 = !DILocation(line: 1245, column: 23, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1501, file: !381, line: 1244, column: 14)
!1511 = !DILocation(line: 1253, column: 19, scope: !1496)
!1512 = !DILocation(line: 1253, column: 34, scope: !1496)
!1513 = !DILocation(line: 1253, column: 42, scope: !1496)
!1514 = !DILocation(line: 1253, column: 40, scope: !1496)
!1515 = !DILocation(line: 1253, column: 17, scope: !1496)
!1516 = !DILocation(line: 1254, column: 4, scope: !1496)
!1517 = !DILocation(line: 1255, column: 17, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1491, file: !381, line: 1254, column: 11)
!1519 = !DILocation(line: 1256, column: 28, scope: !1518)
!1520 = !DILocation(line: 1260, column: 27, scope: !1281)
!1521 = !DILocation(line: 1261, column: 27, scope: !1281)
!1522 = !DILocation(line: 1259, column: 4, scope: !1281)
!1523 = !DILocation(line: 1264, column: 27, scope: !1281)
!1524 = !DILocation(line: 1265, column: 27, scope: !1281)
!1525 = !DILocation(line: 1263, column: 4, scope: !1281)
!1526 = !DILocation(line: 1266, column: 1, scope: !1281)
!1527 = distinct !DISubprogram(name: "GuestInfoDecreaseCpuRunQueueByOne", scope: !381, file: !381, line: 643, type: !718, isLocal: true, isDefinition: true, scopeLine: 644, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !464)
!1528 = !DILocalVariable(name: "collector", arg: 1, scope: !1527, file: !381, line: 643, type: !430)
!1529 = !DILocation(line: 643, column: 55, scope: !1527)
!1530 = !DILocalVariable(name: "stat", scope: !1527, file: !381, line: 645, type: !442)
!1531 = !DILocation(line: 645, column: 19, scope: !1527)
!1532 = !DILocation(line: 647, column: 21, scope: !1527)
!1533 = !DILocation(line: 647, column: 32, scope: !1527)
!1534 = !DILocation(line: 649, column: 21, scope: !1527)
!1535 = !DILocation(line: 647, column: 4, scope: !1527)
!1536 = !DILocation(line: 654, column: 8, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1527, file: !381, line: 654, column: 8)
!1538 = !DILocation(line: 654, column: 13, scope: !1537)
!1539 = !DILocation(line: 654, column: 20, scope: !1537)
!1540 = !DILocation(line: 654, column: 23, scope: !1541)
!1541 = !DILexicalBlockFile(scope: !1537, file: !381, discriminator: 1)
!1542 = !DILocation(line: 654, column: 29, scope: !1541)
!1543 = !DILocation(line: 654, column: 33, scope: !1541)
!1544 = !DILocation(line: 654, column: 38, scope: !1541)
!1545 = !DILocation(line: 654, column: 41, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !1537, file: !381, discriminator: 2)
!1547 = !DILocation(line: 654, column: 47, scope: !1546)
!1548 = !DILocation(line: 654, column: 53, scope: !1546)
!1549 = !DILocation(line: 654, column: 8, scope: !1546)
!1550 = !DILocation(line: 655, column: 11, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !381, line: 655, column: 11)
!1552 = distinct !DILexicalBlock(scope: !1537, file: !381, line: 654, column: 59)
!1553 = !DILocation(line: 655, column: 17, scope: !1551)
!1554 = !DILocation(line: 655, column: 23, scope: !1551)
!1555 = !DILocation(line: 655, column: 11, scope: !1552)
!1556 = !DILocation(line: 656, column: 10, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1551, file: !381, line: 655, column: 28)
!1558 = !DILocation(line: 656, column: 16, scope: !1557)
!1559 = !DILocation(line: 656, column: 21, scope: !1557)
!1560 = !DILocation(line: 657, column: 7, scope: !1557)
!1561 = !DILocation(line: 658, column: 4, scope: !1552)
!1562 = !DILocation(line: 659, column: 1, scope: !1527)
!1563 = !DILocalVariable(name: "collector", arg: 1, scope: !461, file: !381, line: 681, type: !430)
!1564 = !DILocation(line: 681, column: 48, scope: !461)
!1565 = !DILocalVariable(name: "prev", scope: !461, file: !381, line: 685, type: !447)
!1566 = !DILocation(line: 685, column: 8, scope: !461)
!1567 = !DILocalVariable(name: "listItem", scope: !461, file: !381, line: 686, type: !1568)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!1569 = !DILocation(line: 686, column: 29, scope: !461)
!1570 = !DILocalVariable(name: "inflightIOsSum", scope: !461, file: !381, line: 687, type: !450)
!1571 = !DILocation(line: 687, column: 11, scope: !461)
!1572 = !DILocalVariable(name: "setStats", scope: !461, file: !381, line: 688, type: !416)
!1573 = !DILocation(line: 688, column: 9, scope: !461)
!1574 = !DILocalVariable(name: "line", scope: !461, file: !381, line: 690, type: !1218)
!1575 = !DILocation(line: 690, column: 9, scope: !461)
!1576 = !DILocalVariable(name: "fp", scope: !461, file: !381, line: 691, type: !1077)
!1577 = !DILocation(line: 691, column: 10, scope: !461)
!1578 = !DILocation(line: 691, column: 15, scope: !461)
!1579 = !DILocation(line: 693, column: 8, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !461, file: !381, line: 693, column: 8)
!1581 = !DILocation(line: 693, column: 11, scope: !1580)
!1582 = !DILocation(line: 693, column: 8, scope: !461)
!1583 = !DILocation(line: 694, column: 7, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1580, file: !381, line: 693, column: 19)
!1585 = !DILocation(line: 695, column: 7, scope: !1584)
!1586 = !DILocation(line: 698, column: 11, scope: !461)
!1587 = !DILocation(line: 698, column: 16, scope: !461)
!1588 = !DILocation(line: 698, column: 9, scope: !461)
!1589 = !DILocation(line: 699, column: 13, scope: !461)
!1590 = !DILocation(line: 700, column: 19, scope: !461)
!1591 = !DILocation(line: 701, column: 16, scope: !461)
!1592 = !DILocation(line: 701, column: 31, scope: !461)
!1593 = !DILocation(line: 701, column: 15, scope: !461)
!1594 = !DILocation(line: 701, column: 13, scope: !461)
!1595 = !DILocation(line: 703, column: 4, scope: !461)
!1596 = !DILocation(line: 703, column: 17, scope: !1597)
!1597 = !DILexicalBlockFile(scope: !461, file: !381, discriminator: 1)
!1598 = !DILocation(line: 703, column: 36, scope: !1597)
!1599 = !DILocation(line: 703, column: 11, scope: !1597)
!1600 = !DILocation(line: 703, column: 43, scope: !1597)
!1601 = !DILocation(line: 703, column: 40, scope: !1597)
!1602 = !DILocation(line: 703, column: 4, scope: !1597)
!1603 = !DILocalVariable(name: "assignedCount", scope: !1604, file: !381, line: 712, type: !447)
!1604 = distinct !DILexicalBlock(scope: !461, file: !381, line: 703, column: 49)
!1605 = !DILocation(line: 712, column: 11, scope: !1604)
!1606 = !DILocalVariable(name: "diskName", scope: !1604, file: !381, line: 713, type: !1607)
!1607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 2048, align: 8, elements: !1608)
!1608 = !{!1609}
!1609 = !DISubrange(count: 256)
!1610 = !DILocation(line: 713, column: 12, scope: !1604)
!1611 = !DILocalVariable(name: "readIOs", scope: !1604, file: !381, line: 714, type: !372)
!1612 = !DILocation(line: 714, column: 25, scope: !1604)
!1613 = !DILocalVariable(name: "writeIOs", scope: !1604, file: !381, line: 715, type: !372)
!1614 = !DILocation(line: 715, column: 25, scope: !1604)
!1615 = !DILocalVariable(name: "inflightIOs", scope: !1604, file: !381, line: 716, type: !391)
!1616 = !DILocation(line: 716, column: 20, scope: !1604)
!1617 = !DILocalVariable(name: "weightedTime", scope: !1604, file: !381, line: 717, type: !391)
!1618 = !DILocation(line: 717, column: 20, scope: !1604)
!1619 = !DILocation(line: 719, column: 30, scope: !1604)
!1620 = !DILocation(line: 724, column: 30, scope: !1604)
!1621 = !DILocation(line: 719, column: 23, scope: !1604)
!1622 = !DILocation(line: 719, column: 21, scope: !1604)
!1623 = !DILocation(line: 728, column: 11, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1604, file: !381, line: 728, column: 11)
!1625 = !DILocation(line: 728, column: 25, scope: !1624)
!1626 = !DILocation(line: 728, column: 30, scope: !1624)
!1627 = !DILocation(line: 729, column: 12, scope: !1624)
!1628 = !DILocation(line: 729, column: 20, scope: !1624)
!1629 = !DILocation(line: 729, column: 25, scope: !1624)
!1630 = !DILocation(line: 729, column: 28, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1624, file: !381, discriminator: 1)
!1632 = !DILocation(line: 729, column: 37, scope: !1631)
!1633 = !DILocation(line: 729, column: 43, scope: !1631)
!1634 = !DILocation(line: 730, column: 35, scope: !1624)
!1635 = !DILocation(line: 730, column: 12, scope: !1624)
!1636 = !DILocation(line: 728, column: 11, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !1604, file: !381, discriminator: 1)
!1638 = !DILocation(line: 731, column: 10, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1624, file: !381, line: 730, column: 46)
!1640 = distinct !{!1640, !1595}
!1641 = !DILocation(line: 734, column: 25, scope: !1604)
!1642 = !DILocation(line: 734, column: 22, scope: !1604)
!1643 = !DILocation(line: 736, column: 12, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1604, file: !381, line: 736, column: 11)
!1645 = !DILocation(line: 736, column: 11, scope: !1644)
!1646 = !DILocation(line: 736, column: 21, scope: !1644)
!1647 = !DILocation(line: 736, column: 11, scope: !1604)
!1648 = !DILocation(line: 737, column: 23, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !381, line: 737, column: 14)
!1650 = distinct !DILexicalBlock(scope: !1644, file: !381, line: 736, column: 29)
!1651 = !DILocation(line: 737, column: 22, scope: !1649)
!1652 = !DILocation(line: 737, column: 34, scope: !1649)
!1653 = !DILocation(line: 737, column: 44, scope: !1649)
!1654 = !DILocation(line: 737, column: 14, scope: !1649)
!1655 = !DILocation(line: 737, column: 54, scope: !1649)
!1656 = !DILocation(line: 737, column: 14, scope: !1650)
!1657 = !DILocation(line: 738, column: 47, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1649, file: !381, line: 737, column: 60)
!1659 = !DILocation(line: 738, column: 39, scope: !1658)
!1660 = !DILocation(line: 738, column: 13, scope: !1658)
!1661 = !DILocation(line: 738, column: 15, scope: !1658)
!1662 = !DILocation(line: 738, column: 14, scope: !1658)
!1663 = !DILocation(line: 738, column: 26, scope: !1658)
!1664 = !DILocation(line: 738, column: 45, scope: !1658)
!1665 = !DILocation(line: 739, column: 10, scope: !1658)
!1666 = !DILocation(line: 741, column: 43, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1649, file: !381, line: 739, column: 17)
!1668 = !DILocation(line: 741, column: 42, scope: !1667)
!1669 = !DILocation(line: 741, column: 13, scope: !1667)
!1670 = !DILocation(line: 742, column: 14, scope: !1667)
!1671 = !DILocation(line: 742, column: 23, scope: !1667)
!1672 = !DILocation(line: 744, column: 7, scope: !1650)
!1673 = !DILocation(line: 746, column: 12, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1604, file: !381, line: 746, column: 11)
!1675 = !DILocation(line: 746, column: 11, scope: !1674)
!1676 = !DILocation(line: 746, column: 21, scope: !1674)
!1677 = !DILocation(line: 746, column: 11, scope: !1604)
!1678 = !DILocation(line: 748, column: 26, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1674, file: !381, line: 746, column: 29)
!1680 = !DILocation(line: 747, column: 22, scope: !1679)
!1681 = !DILocation(line: 747, column: 11, scope: !1679)
!1682 = !DILocation(line: 747, column: 20, scope: !1679)
!1683 = !DILocation(line: 749, column: 12, scope: !1679)
!1684 = !DILocation(line: 749, column: 11, scope: !1679)
!1685 = !DILocation(line: 749, column: 23, scope: !1679)
!1686 = !DILocation(line: 749, column: 28, scope: !1679)
!1687 = !DILocation(line: 750, column: 50, scope: !1679)
!1688 = !DILocation(line: 750, column: 34, scope: !1679)
!1689 = !DILocation(line: 750, column: 12, scope: !1679)
!1690 = !DILocation(line: 750, column: 11, scope: !1679)
!1691 = !DILocation(line: 750, column: 23, scope: !1679)
!1692 = !DILocation(line: 750, column: 32, scope: !1679)
!1693 = !DILocation(line: 751, column: 44, scope: !1679)
!1694 = !DILocation(line: 751, column: 36, scope: !1679)
!1695 = !DILocation(line: 751, column: 10, scope: !1679)
!1696 = !DILocation(line: 751, column: 12, scope: !1679)
!1697 = !DILocation(line: 751, column: 11, scope: !1679)
!1698 = !DILocation(line: 751, column: 23, scope: !1679)
!1699 = !DILocation(line: 751, column: 42, scope: !1679)
!1700 = !DILocation(line: 752, column: 36, scope: !1679)
!1701 = !DILocation(line: 752, column: 10, scope: !1679)
!1702 = !DILocation(line: 752, column: 12, scope: !1679)
!1703 = !DILocation(line: 752, column: 11, scope: !1679)
!1704 = !DILocation(line: 752, column: 23, scope: !1679)
!1705 = !DILocation(line: 752, column: 42, scope: !1679)
!1706 = !DILocation(line: 755, column: 19, scope: !1679)
!1707 = !DILocation(line: 756, column: 7, scope: !1679)
!1708 = !DILocation(line: 758, column: 22, scope: !1604)
!1709 = !DILocation(line: 758, column: 21, scope: !1604)
!1710 = !DILocation(line: 758, column: 33, scope: !1604)
!1711 = !DILocation(line: 758, column: 16, scope: !1604)
!1712 = !DILocation(line: 703, column: 4, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !461, file: !381, discriminator: 2)
!1714 = !DILocation(line: 761, column: 11, scope: !461)
!1715 = !DILocation(line: 761, column: 4, scope: !461)
!1716 = !DILocation(line: 763, column: 8, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !461, file: !381, line: 763, column: 8)
!1718 = !DILocation(line: 763, column: 17, scope: !1717)
!1719 = !DILocation(line: 764, column: 8, scope: !1717)
!1720 = !DILocation(line: 764, column: 12, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1717, file: !381, discriminator: 1)
!1722 = !DILocation(line: 764, column: 11, scope: !1721)
!1723 = !DILocation(line: 764, column: 21, scope: !1721)
!1724 = !DILocation(line: 763, column: 8, scope: !1597)
!1725 = !DILocation(line: 765, column: 37, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1717, file: !381, line: 764, column: 29)
!1727 = !DILocation(line: 765, column: 36, scope: !1726)
!1728 = !DILocation(line: 765, column: 7, scope: !1726)
!1729 = !DILocation(line: 766, column: 8, scope: !1726)
!1730 = !DILocation(line: 766, column: 17, scope: !1726)
!1731 = !DILocation(line: 767, column: 16, scope: !1726)
!1732 = !DILocation(line: 768, column: 4, scope: !1726)
!1733 = !DILocation(line: 770, column: 8, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !461, file: !381, line: 770, column: 8)
!1735 = !DILocation(line: 770, column: 8, scope: !461)
!1736 = !DILocalVariable(name: "currDiskStats", scope: !1737, file: !381, line: 771, type: !379)
!1737 = distinct !DILexicalBlock(scope: !1734, file: !381, line: 770, column: 18)
!1738 = !DILocation(line: 771, column: 31, scope: !1737)
!1739 = !DILocation(line: 771, column: 47, scope: !1737)
!1740 = !DILocalVariable(name: "weightedTimeDeltaSum", scope: !1737, file: !381, line: 772, type: !450)
!1741 = !DILocation(line: 772, column: 14, scope: !1737)
!1742 = !DILocation(line: 774, column: 7, scope: !1737)
!1743 = !DILocation(line: 774, column: 14, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !1737, file: !381, discriminator: 1)
!1745 = !DILocation(line: 774, column: 28, scope: !1744)
!1746 = !DILocation(line: 774, column: 7, scope: !1744)
!1747 = !DILocalVariable(name: "weightedTimeDelta", scope: !1748, file: !381, line: 775, type: !391)
!1748 = distinct !DILexicalBlock(scope: !1737, file: !381, line: 774, column: 36)
!1749 = !DILocation(line: 775, column: 23, scope: !1748)
!1750 = !DILocation(line: 775, column: 71, scope: !1748)
!1751 = !DILocation(line: 775, column: 43, scope: !1748)
!1752 = !DILocation(line: 775, column: 58, scope: !1748)
!1753 = !DILocation(line: 776, column: 71, scope: !1748)
!1754 = !DILocation(line: 776, column: 43, scope: !1748)
!1755 = !DILocation(line: 776, column: 58, scope: !1748)
!1756 = !DILocation(line: 775, column: 77, scope: !1748)
!1757 = !DILocation(line: 777, column: 34, scope: !1748)
!1758 = !DILocation(line: 777, column: 31, scope: !1748)
!1759 = !DILocation(line: 778, column: 26, scope: !1748)
!1760 = !DILocation(line: 778, column: 41, scope: !1748)
!1761 = !DILocation(line: 778, column: 24, scope: !1748)
!1762 = !DILocation(line: 774, column: 7, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !1737, file: !381, discriminator: 2)
!1764 = distinct !{!1764, !1742}
!1765 = !DILocation(line: 782, column: 30, scope: !1737)
!1766 = !DILocation(line: 783, column: 30, scope: !1737)
!1767 = !DILocation(line: 781, column: 7, scope: !1737)
!1768 = !DILocation(line: 785, column: 30, scope: !1737)
!1769 = !DILocation(line: 786, column: 30, scope: !1737)
!1770 = !DILocation(line: 784, column: 7, scope: !1737)
!1771 = !DILocation(line: 787, column: 4, scope: !1737)
!1772 = !DILocation(line: 789, column: 11, scope: !461)
!1773 = !DILocation(line: 789, column: 9, scope: !461)
!1774 = !DILocation(line: 791, column: 4, scope: !461)
!1775 = !DILocation(line: 792, column: 1, scope: !461)
!1776 = distinct !DISubprogram(name: "GuestInfoCollectStat", scope: !381, file: !381, line: 378, type: !1777, isLocal: true, isDefinition: true, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !464)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{null, !411, !430, !411, !450}
!1779 = !DILocalVariable(name: "pathName", arg: 1, scope: !1776, file: !381, line: 378, type: !411)
!1780 = !DILocation(line: 378, column: 34, scope: !1776)
!1781 = !DILocalVariable(name: "collector", arg: 2, scope: !1776, file: !381, line: 379, type: !430)
!1782 = !DILocation(line: 379, column: 42, scope: !1776)
!1783 = !DILocalVariable(name: "fieldName", arg: 3, scope: !1776, file: !381, line: 380, type: !411)
!1784 = !DILocation(line: 380, column: 34, scope: !1776)
!1785 = !DILocalVariable(name: "value", arg: 4, scope: !1776, file: !381, line: 381, type: !450)
!1786 = !DILocation(line: 381, column: 29, scope: !1776)
!1787 = !DILocalVariable(name: "stat", scope: !1776, file: !381, line: 383, type: !442)
!1788 = !DILocation(line: 383, column: 19, scope: !1776)
!1789 = !DILocalVariable(name: "key", scope: !1776, file: !381, line: 384, type: !387)
!1790 = !DILocation(line: 384, column: 10, scope: !1776)
!1791 = !DILocation(line: 384, column: 47, scope: !1776)
!1792 = !DILocation(line: 384, column: 57, scope: !1776)
!1793 = !DILocation(line: 384, column: 16, scope: !1776)
!1794 = !DILocation(line: 386, column: 26, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1776, file: !381, line: 386, column: 8)
!1796 = !DILocation(line: 386, column: 37, scope: !1795)
!1797 = !DILocation(line: 386, column: 51, scope: !1795)
!1798 = !DILocation(line: 386, column: 56, scope: !1795)
!1799 = !DILocation(line: 386, column: 9, scope: !1795)
!1800 = !DILocation(line: 386, column: 8, scope: !1776)
!1801 = !DILocalVariable(name: "i", scope: !1802, file: !381, line: 387, type: !402)
!1802 = distinct !DILexicalBlock(scope: !1795, file: !381, line: 386, column: 74)
!1803 = !DILocation(line: 387, column: 14, scope: !1802)
!1804 = !DILocation(line: 389, column: 14, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1802, file: !381, line: 389, column: 7)
!1806 = !DILocation(line: 389, column: 12, scope: !1805)
!1807 = !DILocation(line: 389, column: 19, scope: !1808)
!1808 = !DILexicalBlockFile(scope: !1809, file: !381, discriminator: 1)
!1809 = distinct !DILexicalBlock(scope: !1805, file: !381, line: 389, column: 7)
!1810 = !DILocation(line: 389, column: 23, scope: !1808)
!1811 = !DILocation(line: 389, column: 34, scope: !1808)
!1812 = !DILocation(line: 389, column: 21, scope: !1808)
!1813 = !DILocation(line: 389, column: 7, scope: !1808)
!1814 = !DILocalVariable(name: "thisOne", scope: !1815, file: !381, line: 390, type: !442)
!1815 = distinct !DILexicalBlock(scope: !1809, file: !381, line: 389, column: 51)
!1816 = !DILocation(line: 390, column: 25, scope: !1815)
!1817 = !DILocation(line: 390, column: 54, scope: !1815)
!1818 = !DILocation(line: 390, column: 35, scope: !1815)
!1819 = !DILocation(line: 390, column: 46, scope: !1815)
!1820 = !DILocation(line: 392, column: 21, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1815, file: !381, line: 392, column: 14)
!1822 = !DILocation(line: 392, column: 31, scope: !1821)
!1823 = !DILocation(line: 392, column: 40, scope: !1821)
!1824 = !DILocation(line: 392, column: 47, scope: !1821)
!1825 = !DILocation(line: 392, column: 14, scope: !1821)
!1826 = !DILocation(line: 392, column: 59, scope: !1821)
!1827 = !DILocation(line: 392, column: 64, scope: !1821)
!1828 = !DILocation(line: 393, column: 33, scope: !1821)
!1829 = !DILocation(line: 393, column: 44, scope: !1821)
!1830 = !DILocation(line: 393, column: 53, scope: !1821)
!1831 = !DILocation(line: 393, column: 60, scope: !1821)
!1832 = !DILocation(line: 393, column: 14, scope: !1821)
!1833 = !DILocation(line: 392, column: 14, scope: !1834)
!1834 = !DILexicalBlockFile(scope: !1815, file: !381, discriminator: 1)
!1835 = !DILocation(line: 394, column: 20, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1821, file: !381, line: 393, column: 76)
!1837 = !DILocation(line: 394, column: 18, scope: !1836)
!1838 = !DILocation(line: 395, column: 13, scope: !1836)
!1839 = !DILocation(line: 397, column: 7, scope: !1815)
!1840 = !DILocation(line: 389, column: 47, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !1809, file: !381, discriminator: 2)
!1842 = !DILocation(line: 389, column: 7, scope: !1841)
!1843 = distinct !{!1843, !1844}
!1844 = !DILocation(line: 389, column: 7, scope: !1802)
!1845 = !DILocation(line: 398, column: 4, scope: !1802)
!1846 = !DILocation(line: 400, column: 9, scope: !1776)
!1847 = !DILocation(line: 400, column: 4, scope: !1776)
!1848 = !DILocation(line: 402, column: 8, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1776, file: !381, line: 402, column: 8)
!1850 = !DILocation(line: 402, column: 13, scope: !1849)
!1851 = !DILocation(line: 402, column: 8, scope: !1776)
!1852 = !DILocation(line: 403, column: 26, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1849, file: !381, line: 402, column: 21)
!1854 = !DILocation(line: 403, column: 32, scope: !1853)
!1855 = !DILocation(line: 403, column: 7, scope: !1853)
!1856 = !DILocation(line: 404, column: 4, scope: !1853)
!1857 = !DILocation(line: 405, column: 1, scope: !1776)
!1858 = distinct !DISubprogram(name: "GuestInfoStoreStat", scope: !381, file: !381, line: 294, type: !1859, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !464)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{null, !442, !450}
!1861 = !DILocalVariable(name: "stat", arg: 1, scope: !1858, file: !381, line: 294, type: !442)
!1862 = !DILocation(line: 294, column: 35, scope: !1858)
!1863 = !DILocalVariable(name: "value", arg: 2, scope: !1858, file: !381, line: 295, type: !450)
!1864 = !DILocation(line: 295, column: 27, scope: !1858)
!1865 = !DILocation(line: 300, column: 12, scope: !1858)
!1866 = !DILocation(line: 300, column: 18, scope: !1858)
!1867 = !DILocation(line: 300, column: 4, scope: !1858)
!1868 = !DILocation(line: 304, column: 13, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !381, line: 304, column: 11)
!1870 = distinct !DILexicalBlock(scope: !1858, file: !381, line: 300, column: 23)
!1871 = !DILocation(line: 304, column: 19, scope: !1869)
!1872 = !DILocation(line: 304, column: 25, scope: !1869)
!1873 = !DILocation(line: 304, column: 32, scope: !1869)
!1874 = !DILocation(line: 304, column: 38, scope: !1869)
!1875 = !DILocation(line: 304, column: 30, scope: !1869)
!1876 = !DILocation(line: 304, column: 45, scope: !1869)
!1877 = !DILocation(line: 305, column: 13, scope: !1869)
!1878 = !DILocation(line: 305, column: 19, scope: !1869)
!1879 = !DILocation(line: 305, column: 27, scope: !1869)
!1880 = !DILocation(line: 305, column: 25, scope: !1869)
!1881 = !DILocation(line: 305, column: 36, scope: !1869)
!1882 = !DILocation(line: 305, column: 42, scope: !1869)
!1883 = !DILocation(line: 305, column: 34, scope: !1869)
!1884 = !DILocation(line: 304, column: 11, scope: !1885)
!1885 = !DILexicalBlockFile(scope: !1870, file: !381, discriminator: 1)
!1886 = !DILocation(line: 306, column: 10, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1869, file: !381, line: 305, column: 50)
!1888 = !DILocation(line: 306, column: 16, scope: !1887)
!1889 = !DILocation(line: 306, column: 20, scope: !1887)
!1890 = !DILocation(line: 307, column: 7, scope: !1887)
!1891 = !DILocation(line: 308, column: 10, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1869, file: !381, line: 307, column: 14)
!1893 = !DILocation(line: 308, column: 16, scope: !1892)
!1894 = !DILocation(line: 308, column: 21, scope: !1892)
!1895 = !DILocation(line: 309, column: 25, scope: !1892)
!1896 = !DILocation(line: 309, column: 10, scope: !1892)
!1897 = !DILocation(line: 309, column: 16, scope: !1892)
!1898 = !DILocation(line: 309, column: 22, scope: !1892)
!1899 = !DILocation(line: 311, column: 7, scope: !1870)
!1900 = !DILocation(line: 316, column: 7, scope: !1870)
!1901 = !DILocation(line: 316, column: 13, scope: !1870)
!1902 = !DILocation(line: 316, column: 17, scope: !1870)
!1903 = !DILocation(line: 317, column: 7, scope: !1870)
!1904 = !DILocation(line: 317, column: 13, scope: !1870)
!1905 = !DILocation(line: 317, column: 19, scope: !1870)
!1906 = !DILocation(line: 318, column: 21, scope: !1870)
!1907 = !DILocation(line: 318, column: 7, scope: !1870)
!1908 = !DILocation(line: 318, column: 13, scope: !1870)
!1909 = !DILocation(line: 318, column: 19, scope: !1870)
!1910 = !DILocation(line: 319, column: 7, scope: !1870)
!1911 = !DILocation(line: 322, column: 7, scope: !1870)
!1912 = !DILocation(line: 324, column: 1, scope: !1858)
!1913 = distinct !DISubprogram(name: "GuestInfoIsBlockDevice", scope: !381, file: !381, line: 225, type: !1914, isLocal: true, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !464)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!416, !411}
!1916 = !DILocalVariable(name: "name", arg: 1, scope: !1913, file: !381, line: 225, type: !411)
!1917 = !DILocation(line: 225, column: 36, scope: !1913)
!1918 = !DILocalVariable(name: "path", scope: !1913, file: !381, line: 227, type: !1072)
!1919 = !DILocation(line: 227, column: 9, scope: !1913)
!1920 = !DILocation(line: 229, column: 16, scope: !1913)
!1921 = !DILocation(line: 229, column: 58, scope: !1913)
!1922 = !DILocation(line: 229, column: 4, scope: !1913)
!1923 = !DILocation(line: 231, column: 19, scope: !1913)
!1924 = !DILocation(line: 231, column: 12, scope: !1913)
!1925 = !DILocation(line: 231, column: 30, scope: !1913)
!1926 = !DILocation(line: 231, column: 11, scope: !1913)
!1927 = !DILocation(line: 231, column: 4, scope: !1913)
!1928 = distinct !DISubprogram(name: "GuestInfoLegacy", scope: !381, file: !381, line: 896, type: !1929, isLocal: true, isDefinition: true, scopeLine: 898, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !464)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{null, !430, !1931}
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64, align: 64)
!1932 = !DILocalVariable(name: "current", arg: 1, scope: !1928, file: !381, line: 896, type: !430)
!1933 = !DILocation(line: 896, column: 37, scope: !1928)
!1934 = !DILocalVariable(name: "legacy", arg: 2, scope: !1928, file: !381, line: 897, type: !1931)
!1935 = !DILocation(line: 897, column: 37, scope: !1928)
!1936 = !DILocalVariable(name: "stat", scope: !1928, file: !381, line: 899, type: !442)
!1937 = !DILocation(line: 899, column: 19, scope: !1928)
!1938 = !DILocation(line: 901, column: 11, scope: !1928)
!1939 = !DILocation(line: 901, column: 4, scope: !1928)
!1940 = !DILocation(line: 903, column: 4, scope: !1928)
!1941 = !DILocation(line: 903, column: 12, scope: !1928)
!1942 = !DILocation(line: 903, column: 20, scope: !1928)
!1943 = !DILocation(line: 904, column: 4, scope: !1928)
!1944 = !DILocation(line: 904, column: 12, scope: !1928)
!1945 = !DILocation(line: 904, column: 18, scope: !1928)
!1946 = !DILocation(line: 906, column: 9, scope: !1928)
!1947 = !DILocation(line: 907, column: 21, scope: !1928)
!1948 = !DILocation(line: 907, column: 30, scope: !1928)
!1949 = !DILocation(line: 909, column: 21, scope: !1928)
!1950 = !DILocation(line: 907, column: 4, scope: !1928)
!1951 = !DILocation(line: 911, column: 9, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1928, file: !381, line: 911, column: 8)
!1953 = !DILocation(line: 911, column: 14, scope: !1952)
!1954 = !DILocation(line: 911, column: 22, scope: !1952)
!1955 = !DILocation(line: 911, column: 26, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !1952, file: !381, discriminator: 1)
!1957 = !DILocation(line: 911, column: 32, scope: !1956)
!1958 = !DILocation(line: 911, column: 36, scope: !1956)
!1959 = !DILocation(line: 911, column: 8, scope: !1956)
!1960 = !DILocation(line: 912, column: 26, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1952, file: !381, line: 911, column: 43)
!1962 = !DILocation(line: 912, column: 32, scope: !1961)
!1963 = !DILocation(line: 912, column: 7, scope: !1961)
!1964 = !DILocation(line: 912, column: 15, scope: !1961)
!1965 = !DILocation(line: 912, column: 24, scope: !1961)
!1966 = !DILocation(line: 913, column: 7, scope: !1961)
!1967 = !DILocation(line: 913, column: 15, scope: !1961)
!1968 = !DILocation(line: 913, column: 21, scope: !1961)
!1969 = !DILocation(line: 914, column: 4, scope: !1961)
!1970 = !DILocation(line: 916, column: 9, scope: !1928)
!1971 = !DILocation(line: 917, column: 21, scope: !1928)
!1972 = !DILocation(line: 917, column: 30, scope: !1928)
!1973 = !DILocation(line: 919, column: 21, scope: !1928)
!1974 = !DILocation(line: 917, column: 4, scope: !1928)
!1975 = !DILocation(line: 921, column: 9, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1928, file: !381, line: 921, column: 8)
!1977 = !DILocation(line: 921, column: 14, scope: !1976)
!1978 = !DILocation(line: 921, column: 22, scope: !1976)
!1979 = !DILocation(line: 921, column: 26, scope: !1980)
!1980 = !DILexicalBlockFile(scope: !1976, file: !381, discriminator: 1)
!1981 = !DILocation(line: 921, column: 32, scope: !1980)
!1982 = !DILocation(line: 921, column: 36, scope: !1980)
!1983 = !DILocation(line: 921, column: 8, scope: !1980)
!1984 = !DILocation(line: 922, column: 32, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1976, file: !381, line: 921, column: 43)
!1986 = !DILocation(line: 922, column: 38, scope: !1985)
!1987 = !DILocation(line: 922, column: 7, scope: !1985)
!1988 = !DILocation(line: 922, column: 15, scope: !1985)
!1989 = !DILocation(line: 922, column: 30, scope: !1985)
!1990 = !DILocation(line: 923, column: 7, scope: !1985)
!1991 = !DILocation(line: 923, column: 15, scope: !1985)
!1992 = !DILocation(line: 923, column: 21, scope: !1985)
!1993 = !DILocation(line: 924, column: 4, scope: !1985)
!1994 = !DILocation(line: 925, column: 1, scope: !1928)
!1995 = distinct !DISubprogram(name: "GuestInfoAppendRate", scope: !381, file: !381, line: 1055, type: !1996, isLocal: true, isDefinition: true, scopeLine: 1060, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !464)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{null, !416, !420, !430, !430, !472}
!1998 = !DILocalVariable(name: "emitNameSpace", arg: 1, scope: !1995, file: !381, line: 1055, type: !416)
!1999 = !DILocation(line: 1055, column: 26, scope: !1995)
!2000 = !DILocalVariable(name: "reportID", arg: 2, scope: !1995, file: !381, line: 1056, type: !420)
!2001 = !DILocation(line: 1056, column: 38, scope: !1995)
!2002 = !DILocalVariable(name: "current", arg: 3, scope: !1995, file: !381, line: 1057, type: !430)
!2003 = !DILocation(line: 1057, column: 41, scope: !1995)
!2004 = !DILocalVariable(name: "previous", arg: 4, scope: !1995, file: !381, line: 1058, type: !430)
!2005 = !DILocation(line: 1058, column: 41, scope: !1995)
!2006 = !DILocalVariable(name: "statBuf", arg: 5, scope: !1995, file: !381, line: 1059, type: !472)
!2007 = !DILocation(line: 1059, column: 29, scope: !1995)
!2008 = !DILocalVariable(name: "valueDouble", scope: !1995, file: !381, line: 1061, type: !394)
!2009 = !DILocation(line: 1061, column: 11, scope: !1995)
!2010 = !DILocalVariable(name: "errnoValue", scope: !1995, file: !381, line: 1062, type: !447)
!2011 = !DILocation(line: 1062, column: 8, scope: !1995)
!2012 = !DILocalVariable(name: "currentStat", scope: !1995, file: !381, line: 1063, type: !442)
!2013 = !DILocation(line: 1063, column: 19, scope: !1995)
!2014 = !DILocalVariable(name: "previousStat", scope: !1995, file: !381, line: 1064, type: !442)
!2015 = !DILocation(line: 1064, column: 19, scope: !1995)
!2016 = !DILocation(line: 1066, column: 21, scope: !1995)
!2017 = !DILocation(line: 1066, column: 30, scope: !1995)
!2018 = !DILocation(line: 1067, column: 48, scope: !1995)
!2019 = !DILocation(line: 1067, column: 36, scope: !1995)
!2020 = !DILocation(line: 1067, column: 22, scope: !1995)
!2021 = !DILocation(line: 1068, column: 21, scope: !1995)
!2022 = !DILocation(line: 1066, column: 4, scope: !1995)
!2023 = !DILocation(line: 1070, column: 21, scope: !1995)
!2024 = !DILocation(line: 1070, column: 31, scope: !1995)
!2025 = !DILocation(line: 1071, column: 48, scope: !1995)
!2026 = !DILocation(line: 1071, column: 36, scope: !1995)
!2027 = !DILocation(line: 1071, column: 22, scope: !1995)
!2028 = !DILocation(line: 1072, column: 21, scope: !1995)
!2029 = !DILocation(line: 1070, column: 4, scope: !1995)
!2030 = !DILocation(line: 1074, column: 8, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1995, file: !381, line: 1074, column: 8)
!2032 = !DILocation(line: 1074, column: 17, scope: !2031)
!2033 = !DILocation(line: 1074, column: 26, scope: !2031)
!2034 = !DILocation(line: 1075, column: 8, scope: !2031)
!2035 = !DILocation(line: 1075, column: 18, scope: !2031)
!2036 = !DILocation(line: 1075, column: 27, scope: !2031)
!2037 = !DILocation(line: 1076, column: 10, scope: !2031)
!2038 = !DILocation(line: 1076, column: 22, scope: !2031)
!2039 = !DILocation(line: 1076, column: 30, scope: !2031)
!2040 = !DILocation(line: 1076, column: 34, scope: !2041)
!2041 = !DILexicalBlockFile(scope: !2031, file: !381, discriminator: 1)
!2042 = !DILocation(line: 1076, column: 47, scope: !2041)
!2043 = !DILocation(line: 1076, column: 51, scope: !2041)
!2044 = !DILocation(line: 1076, column: 58, scope: !2041)
!2045 = !DILocation(line: 1077, column: 10, scope: !2031)
!2046 = !DILocation(line: 1077, column: 23, scope: !2031)
!2047 = !DILocation(line: 1077, column: 31, scope: !2031)
!2048 = !DILocation(line: 1077, column: 35, scope: !2041)
!2049 = !DILocation(line: 1077, column: 49, scope: !2041)
!2050 = !DILocation(line: 1077, column: 53, scope: !2041)
!2051 = !DILocation(line: 1074, column: 8, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !1995, file: !381, discriminator: 1)
!2053 = !DILocalVariable(name: "timeDelta", scope: !2054, file: !381, line: 1078, type: !394)
!2054 = distinct !DILexicalBlock(scope: !2031, file: !381, line: 1077, column: 61)
!2055 = !DILocation(line: 1078, column: 14, scope: !2054)
!2056 = !DILocation(line: 1078, column: 26, scope: !2054)
!2057 = !DILocation(line: 1078, column: 35, scope: !2054)
!2058 = !DILocation(line: 1078, column: 47, scope: !2054)
!2059 = !DILocation(line: 1078, column: 57, scope: !2054)
!2060 = !DILocation(line: 1078, column: 45, scope: !2054)
!2061 = !DILocalVariable(name: "valueDelta", scope: !2054, file: !381, line: 1079, type: !394)
!2062 = !DILocation(line: 1079, column: 14, scope: !2054)
!2063 = !DILocation(line: 1093, column: 11, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2054, file: !381, line: 1093, column: 11)
!2065 = !DILocation(line: 1093, column: 20, scope: !2064)
!2066 = !DILocation(line: 1093, column: 11, scope: !2054)
!2067 = !DILocation(line: 1094, column: 33, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2064, file: !381, line: 1093, column: 62)
!2069 = !DILocation(line: 1094, column: 46, scope: !2068)
!2070 = !DILocation(line: 1094, column: 24, scope: !2068)
!2071 = !DILocation(line: 1094, column: 54, scope: !2068)
!2072 = !DILocation(line: 1094, column: 21, scope: !2068)
!2073 = !DILocation(line: 1095, column: 7, scope: !2068)
!2074 = !DILocation(line: 1096, column: 23, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2064, file: !381, line: 1095, column: 14)
!2076 = !DILocation(line: 1096, column: 36, scope: !2075)
!2077 = !DILocation(line: 1096, column: 44, scope: !2075)
!2078 = !DILocation(line: 1096, column: 58, scope: !2075)
!2079 = !DILocation(line: 1096, column: 42, scope: !2075)
!2080 = !DILocation(line: 1096, column: 21, scope: !2075)
!2081 = !DILocation(line: 1099, column: 21, scope: !2054)
!2082 = !DILocation(line: 1099, column: 34, scope: !2054)
!2083 = !DILocation(line: 1099, column: 32, scope: !2054)
!2084 = !DILocation(line: 1099, column: 19, scope: !2054)
!2085 = !DILocation(line: 1101, column: 18, scope: !2054)
!2086 = !DILocation(line: 1102, column: 4, scope: !2054)
!2087 = !DILocation(line: 1104, column: 8, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !1995, file: !381, line: 1104, column: 8)
!2089 = !DILocation(line: 1104, column: 20, scope: !2088)
!2090 = !DILocation(line: 1104, column: 8, scope: !1995)
!2091 = !DILocalVariable(name: "valueFloat", scope: !2092, file: !381, line: 1105, type: !395)
!2092 = distinct !DILexicalBlock(scope: !2088, file: !381, line: 1104, column: 28)
!2093 = !DILocation(line: 1105, column: 13, scope: !2092)
!2094 = !DILocalVariable(name: "valuePointer", scope: !2092, file: !381, line: 1106, type: !367)
!2095 = !DILocation(line: 1106, column: 13, scope: !2092)
!2096 = !DILocalVariable(name: "valueSize", scope: !2092, file: !381, line: 1107, type: !479)
!2097 = !DILocation(line: 1107, column: 14, scope: !2092)
!2098 = !DILocation(line: 1109, column: 11, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2092, file: !381, line: 1109, column: 11)
!2100 = !DILocation(line: 1109, column: 23, scope: !2099)
!2101 = !DILocation(line: 1109, column: 11, scope: !2092)
!2102 = !DILocation(line: 1110, column: 23, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2099, file: !381, line: 1109, column: 29)
!2104 = !DILocation(line: 1111, column: 20, scope: !2103)
!2105 = !DILocation(line: 1112, column: 7, scope: !2103)
!2106 = !DILocation(line: 1113, column: 30, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2099, file: !381, line: 1112, column: 14)
!2108 = !DILocation(line: 1113, column: 23, scope: !2107)
!2109 = !DILocation(line: 1113, column: 21, scope: !2107)
!2110 = !DILocation(line: 1114, column: 22, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2107, file: !381, line: 1114, column: 14)
!2112 = !DILocation(line: 1114, column: 14, scope: !2111)
!2113 = !DILocation(line: 1114, column: 36, scope: !2111)
!2114 = !DILocation(line: 1114, column: 33, scope: !2111)
!2115 = !DILocation(line: 1114, column: 14, scope: !2107)
!2116 = !DILocation(line: 1115, column: 28, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2111, file: !381, line: 1114, column: 49)
!2118 = !DILocation(line: 1115, column: 26, scope: !2117)
!2119 = !DILocation(line: 1116, column: 23, scope: !2117)
!2120 = !DILocation(line: 1117, column: 10, scope: !2117)
!2121 = !DILocation(line: 1118, column: 28, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2111, file: !381, line: 1117, column: 17)
!2123 = !DILocation(line: 1118, column: 26, scope: !2122)
!2124 = !DILocation(line: 1119, column: 23, scope: !2122)
!2125 = !DILocation(line: 1123, column: 27, scope: !2092)
!2126 = !DILocation(line: 1123, column: 39, scope: !2092)
!2127 = !DILocation(line: 1123, column: 54, scope: !2092)
!2128 = !DILocation(line: 1124, column: 27, scope: !2092)
!2129 = !DILocation(line: 1124, column: 40, scope: !2092)
!2130 = !DILocation(line: 1124, column: 47, scope: !2092)
!2131 = !DILocation(line: 1125, column: 27, scope: !2092)
!2132 = !DILocation(line: 1125, column: 41, scope: !2092)
!2133 = !DILocation(line: 1125, column: 52, scope: !2092)
!2134 = !DILocation(line: 1123, column: 7, scope: !2092)
!2135 = !DILocation(line: 1126, column: 4, scope: !2092)
!2136 = !DILocation(line: 1127, column: 1, scope: !1995)
!2137 = distinct !DISubprogram(name: "GuestInfoAppendStat", scope: !381, file: !381, line: 977, type: !2138, isLocal: true, isDefinition: true, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !464)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{null, !447, !416, !420, !422, !424, !367, !479, !472}
!2140 = !DILocalVariable(name: "errnoValue", arg: 1, scope: !2137, file: !381, line: 977, type: !447)
!2141 = !DILocation(line: 977, column: 25, scope: !2137)
!2142 = !DILocalVariable(name: "emitNameSpace", arg: 2, scope: !2137, file: !381, line: 978, type: !416)
!2143 = !DILocation(line: 978, column: 26, scope: !2137)
!2144 = !DILocalVariable(name: "reportID", arg: 3, scope: !2137, file: !381, line: 979, type: !420)
!2145 = !DILocation(line: 979, column: 38, scope: !2137)
!2146 = !DILocalVariable(name: "units", arg: 4, scope: !2137, file: !381, line: 980, type: !422)
!2147 = !DILocation(line: 980, column: 37, scope: !2137)
!2148 = !DILocalVariable(name: "valueType", arg: 5, scope: !2137, file: !381, line: 981, type: !424)
!2149 = !DILocation(line: 981, column: 36, scope: !2137)
!2150 = !DILocalVariable(name: "value", arg: 6, scope: !2137, file: !381, line: 982, type: !367)
!2151 = !DILocation(line: 982, column: 27, scope: !2137)
!2152 = !DILocalVariable(name: "valueSize", arg: 7, scope: !2137, file: !381, line: 983, type: !479)
!2153 = !DILocation(line: 983, column: 28, scope: !2137)
!2154 = !DILocalVariable(name: "stats", arg: 8, scope: !2137, file: !381, line: 984, type: !472)
!2155 = !DILocation(line: 984, column: 29, scope: !2137)
!2156 = !DILocalVariable(name: "NameSpace", scope: !2137, file: !381, line: 986, type: !411)
!2157 = !DILocation(line: 986, column: 16, scope: !2137)
!2158 = !DILocalVariable(name: "value64", scope: !2137, file: !381, line: 987, type: !450)
!2159 = !DILocation(line: 987, column: 11, scope: !2137)
!2160 = !DILocalVariable(name: "header", scope: !2137, file: !381, line: 988, type: !2161)
!2161 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestStatHeader", file: !4, line: 122, baseType: !2162)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestStatHeader", file: !4, line: 118, size: 32, align: 8, elements: !2163)
!2163 = !{!2164}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "datumFlags", scope: !2162, file: !4, line: 119, baseType: !2165, size: 32, align: 32)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestDatum", file: !4, line: 114, baseType: !356)
!2166 = !DILocation(line: 988, column: 20, scope: !2137)
!2167 = !DILocalVariable(name: "datum", scope: !2137, file: !381, line: 989, type: !2168)
!2168 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestDatumHeader", file: !4, line: 131, baseType: !2169)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestDatumHeader", file: !4, line: 126, size: 16, align: 8, elements: !2170)
!2170 = !{!2171, !2172}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "dataSize", scope: !2169, file: !4, line: 127, baseType: !399, size: 16, align: 16)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2169, file: !4, line: 128, baseType: !2173, align: 8, offset: 16)
!2173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, align: 8, elements: !2174)
!2174 = !{!2175}
!2175 = !DISubrange(count: 0)
!2176 = !DILocation(line: 989, column: 21, scope: !2137)
!2177 = !DILocation(line: 991, column: 11, scope: !2137)
!2178 = !DILocation(line: 991, column: 22, scope: !2137)
!2179 = !DILocation(line: 994, column: 8, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2137, file: !381, line: 994, column: 8)
!2181 = !DILocation(line: 994, column: 8, scope: !2137)
!2182 = !DILocation(line: 995, column: 14, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2180, file: !381, line: 994, column: 23)
!2184 = !DILocation(line: 995, column: 25, scope: !2183)
!2185 = !DILocation(line: 996, column: 4, scope: !2183)
!2186 = !DILocation(line: 997, column: 8, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2137, file: !381, line: 997, column: 8)
!2188 = !DILocation(line: 997, column: 19, scope: !2187)
!2189 = !DILocation(line: 997, column: 8, scope: !2137)
!2190 = !DILocation(line: 998, column: 14, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2187, file: !381, line: 997, column: 25)
!2192 = !DILocation(line: 998, column: 25, scope: !2191)
!2193 = !DILocation(line: 999, column: 4, scope: !2191)
!2194 = !DILocation(line: 1000, column: 18, scope: !2137)
!2195 = !DILocation(line: 1000, column: 25, scope: !2137)
!2196 = !DILocation(line: 1000, column: 4, scope: !2137)
!2197 = !DILocation(line: 1002, column: 15, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2137, file: !381, line: 1002, column: 8)
!2199 = !DILocation(line: 1002, column: 26, scope: !2198)
!2200 = !DILocation(line: 1002, column: 8, scope: !2137)
!2201 = !DILocalVariable(name: "nameSpaceLen", scope: !2202, file: !381, line: 1003, type: !479)
!2202 = distinct !DILexicalBlock(scope: !2198, file: !381, line: 1002, column: 51)
!2203 = !DILocation(line: 1003, column: 14, scope: !2202)
!2204 = !DILocation(line: 1003, column: 36, scope: !2202)
!2205 = !DILocation(line: 1003, column: 29, scope: !2202)
!2206 = !DILocation(line: 1003, column: 47, scope: !2202)
!2207 = !DILocation(line: 1004, column: 24, scope: !2202)
!2208 = !DILocation(line: 1004, column: 13, scope: !2202)
!2209 = !DILocation(line: 1004, column: 22, scope: !2202)
!2210 = !DILocation(line: 1005, column: 21, scope: !2202)
!2211 = !DILocation(line: 1005, column: 28, scope: !2202)
!2212 = !DILocation(line: 1005, column: 7, scope: !2202)
!2213 = !DILocation(line: 1006, column: 21, scope: !2202)
!2214 = !DILocation(line: 1006, column: 28, scope: !2202)
!2215 = !DILocation(line: 1006, column: 39, scope: !2202)
!2216 = !DILocation(line: 1006, column: 7, scope: !2202)
!2217 = !DILocation(line: 1007, column: 4, scope: !2202)
!2218 = !DILocation(line: 1009, column: 15, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2137, file: !381, line: 1009, column: 8)
!2220 = !DILocation(line: 1009, column: 26, scope: !2219)
!2221 = !DILocation(line: 1009, column: 8, scope: !2137)
!2222 = !DILocation(line: 1010, column: 17, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2219, file: !381, line: 1009, column: 44)
!2224 = !DILocation(line: 1010, column: 15, scope: !2223)
!2225 = !DILocation(line: 1011, column: 54, scope: !2223)
!2226 = !DILocation(line: 1011, column: 24, scope: !2223)
!2227 = !DILocation(line: 1011, column: 13, scope: !2223)
!2228 = !DILocation(line: 1011, column: 22, scope: !2223)
!2229 = !DILocation(line: 1012, column: 21, scope: !2223)
!2230 = !DILocation(line: 1012, column: 28, scope: !2223)
!2231 = !DILocation(line: 1012, column: 7, scope: !2223)
!2232 = !DILocation(line: 1013, column: 21, scope: !2223)
!2233 = !DILocation(line: 1013, column: 28, scope: !2223)
!2234 = !DILocation(line: 1013, column: 44, scope: !2223)
!2235 = !DILocation(line: 1013, column: 38, scope: !2223)
!2236 = !DILocation(line: 1013, column: 7, scope: !2223)
!2237 = !DILocation(line: 1014, column: 4, scope: !2223)
!2238 = !DILocation(line: 1016, column: 15, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2137, file: !381, line: 1016, column: 8)
!2240 = !DILocation(line: 1016, column: 26, scope: !2239)
!2241 = !DILocation(line: 1016, column: 8, scope: !2137)
!2242 = !DILocation(line: 1017, column: 17, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2239, file: !381, line: 1016, column: 57)
!2244 = !DILocation(line: 1017, column: 15, scope: !2243)
!2245 = !DILocation(line: 1018, column: 54, scope: !2243)
!2246 = !DILocation(line: 1018, column: 24, scope: !2243)
!2247 = !DILocation(line: 1018, column: 13, scope: !2243)
!2248 = !DILocation(line: 1018, column: 22, scope: !2243)
!2249 = !DILocation(line: 1019, column: 21, scope: !2243)
!2250 = !DILocation(line: 1019, column: 28, scope: !2243)
!2251 = !DILocation(line: 1019, column: 7, scope: !2243)
!2252 = !DILocation(line: 1020, column: 21, scope: !2243)
!2253 = !DILocation(line: 1020, column: 28, scope: !2243)
!2254 = !DILocation(line: 1020, column: 44, scope: !2243)
!2255 = !DILocation(line: 1020, column: 38, scope: !2243)
!2256 = !DILocation(line: 1020, column: 7, scope: !2243)
!2257 = !DILocation(line: 1021, column: 4, scope: !2243)
!2258 = !DILocation(line: 1023, column: 15, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2137, file: !381, line: 1023, column: 8)
!2260 = !DILocation(line: 1023, column: 26, scope: !2259)
!2261 = !DILocation(line: 1023, column: 8, scope: !2137)
!2262 = !DILocation(line: 1024, column: 17, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2259, file: !381, line: 1023, column: 57)
!2264 = !DILocation(line: 1024, column: 15, scope: !2263)
!2265 = !DILocation(line: 1025, column: 54, scope: !2263)
!2266 = !DILocation(line: 1025, column: 24, scope: !2263)
!2267 = !DILocation(line: 1025, column: 13, scope: !2263)
!2268 = !DILocation(line: 1025, column: 22, scope: !2263)
!2269 = !DILocation(line: 1026, column: 21, scope: !2263)
!2270 = !DILocation(line: 1026, column: 28, scope: !2263)
!2271 = !DILocation(line: 1026, column: 7, scope: !2263)
!2272 = !DILocation(line: 1027, column: 21, scope: !2263)
!2273 = !DILocation(line: 1027, column: 28, scope: !2263)
!2274 = !DILocation(line: 1027, column: 44, scope: !2263)
!2275 = !DILocation(line: 1027, column: 38, scope: !2263)
!2276 = !DILocation(line: 1027, column: 7, scope: !2263)
!2277 = !DILocation(line: 1028, column: 4, scope: !2263)
!2278 = !DILocation(line: 1030, column: 15, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2137, file: !381, line: 1030, column: 8)
!2280 = !DILocation(line: 1030, column: 26, scope: !2279)
!2281 = !DILocation(line: 1030, column: 8, scope: !2137)
!2282 = !DILocation(line: 1031, column: 24, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2279, file: !381, line: 1030, column: 47)
!2284 = !DILocation(line: 1031, column: 13, scope: !2283)
!2285 = !DILocation(line: 1031, column: 22, scope: !2283)
!2286 = !DILocation(line: 1032, column: 21, scope: !2283)
!2287 = !DILocation(line: 1032, column: 28, scope: !2283)
!2288 = !DILocation(line: 1032, column: 7, scope: !2283)
!2289 = !DILocation(line: 1033, column: 21, scope: !2283)
!2290 = !DILocation(line: 1033, column: 28, scope: !2283)
!2291 = !DILocation(line: 1033, column: 35, scope: !2283)
!2292 = !DILocation(line: 1033, column: 7, scope: !2283)
!2293 = !DILocation(line: 1034, column: 4, scope: !2283)
!2294 = !DILocation(line: 1035, column: 1, scope: !2137)
!2295 = distinct !DISubprogram(name: "GuestInfoBytesNeededUIntDatum", scope: !381, file: !381, line: 943, type: !2296, isLocal: true, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !464)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!399, !450}
!2298 = !DILocalVariable(name: "value", arg: 1, scope: !2295, file: !381, line: 943, type: !450)
!2299 = !DILocation(line: 943, column: 38, scope: !2295)
!2300 = !DILocation(line: 945, column: 8, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2295, file: !381, line: 945, column: 8)
!2302 = !DILocation(line: 945, column: 14, scope: !2301)
!2303 = !DILocation(line: 945, column: 8, scope: !2295)
!2304 = !DILocation(line: 946, column: 7, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2301, file: !381, line: 945, column: 20)
!2306 = !DILocation(line: 947, column: 15, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2301, file: !381, line: 947, column: 15)
!2308 = !DILocation(line: 947, column: 21, scope: !2307)
!2309 = !DILocation(line: 947, column: 15, scope: !2301)
!2310 = !DILocation(line: 948, column: 7, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2307, file: !381, line: 947, column: 39)
!2312 = !DILocation(line: 949, column: 15, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2307, file: !381, line: 949, column: 15)
!2314 = !DILocation(line: 949, column: 21, scope: !2313)
!2315 = !DILocation(line: 949, column: 15, scope: !2307)
!2316 = !DILocation(line: 950, column: 7, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2313, file: !381, line: 949, column: 42)
!2318 = !DILocation(line: 951, column: 15, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2313, file: !381, line: 951, column: 15)
!2320 = !DILocation(line: 951, column: 21, scope: !2319)
!2321 = !DILocation(line: 951, column: 15, scope: !2313)
!2322 = !DILocation(line: 952, column: 7, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2319, file: !381, line: 951, column: 46)
!2324 = !DILocation(line: 954, column: 7, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2319, file: !381, line: 953, column: 11)
!2326 = !DILocation(line: 956, column: 1, scope: !2295)
