; ModuleID = './libguestInfo_la-guestInfoServer.o.i'
source_filename = "./libguestInfo_la-guestInfoServer.o.i"
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
%struct._GuestInfoCache = type { [11 x i8*], %struct.NicInfoV3*, %struct._DiskInfo*, i32 }
%struct.NicInfoV3 = type { %struct.anon, %struct.anon.3, %struct.DnsConfigInfo*, %struct.WinsConfigInfo*, %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo* }
%struct.anon = type { i32, %struct.GuestNicV3* }
%struct.GuestNicV3 = type { i8*, %struct.anon.0, %struct.DnsConfigInfo*, %struct.WinsConfigInfo*, %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo* }
%struct.anon.0 = type { i32, %struct.IpAddressEntry* }
%struct.IpAddressEntry = type { %struct.TypedIpAddress, i32, i32*, i32* }
%struct.TypedIpAddress = type { i32, %struct.InetAddress }
%struct.InetAddress = type { i32, i8* }
%struct.anon.3 = type { i32, %struct.InetCidrRouteEntry* }
%struct.InetCidrRouteEntry = type { %struct.TypedIpAddress, i32, %struct.TypedIpAddress*, i32, i32, i32 }
%struct.DnsConfigInfo = type { i8**, i8**, %struct.anon.1, %struct.anon.2 }
%struct.anon.1 = type { i32, %struct.TypedIpAddress* }
%struct.anon.2 = type { i32, i8** }
%struct.WinsConfigInfo = type { %struct.TypedIpAddress, %struct.TypedIpAddress }
%struct.DhcpConfigInfo = type { i32, i8* }
%struct._DiskInfo = type { i32, %struct._PartitionEntry* }
%struct._PartitionEntry = type <{ i64, i64, [100 x i8] }>
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct.GuestNicInfoV1 = type { i32, [16 x %struct.NicEntryV1] }
%struct.NicEntryV1 = type { i32, [19 x i8], [8 x [16 x i8]] }
%struct.DynBuf = type { i8*, i64, i64 }
%struct.ToolsAppReg = type { i32, %struct._GArray* }
%struct._GError = type { i32, i32, i8* }
%struct.GuestNicProto = type { i32, %union.anon }
%union.anon = type { %struct.GuestNicList* }
%struct.GuestNicList = type { %struct.anon.4 }
%struct.anon.4 = type { i32, %struct.GuestNic* }
%struct.GuestNic = type { [18 x i8], %struct.anon.5 }
%struct.anon.5 = type { i32, %struct.VmIpAddress* }
%struct.VmIpAddress = type { i32, i8, [64 x i8], [64 x i8] }
%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }

@vm_version = constant [20 x i8] c"version=10.3.0.5330\00", section ".modinfo", align 16
@guestInfoPollInterval = global i32 0, align 4
@gGuestInfoLastGatherTime = global i64 0, align 8
@guestInfoStatsInterval = global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"guestinfo\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Truncating NIC list for backwards compatibility.\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Some IP addresses were ignored for compatibility.\0A\00", align 1
@ToolsOnLoad.regData = internal global %struct.ToolsPluginData { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), %struct._GArray* null, i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)* null, i8* null }, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"guestInfo\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"vmsupport.start\00", align 1
@ToolsOnLoad.rpcs = private unnamed_addr constant [1 x %struct.RpcChannelCallback] [%struct.RpcChannelCallback { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.RpcInData*)* @GuestInfoVMSupport, i8* bitcast (%struct.ToolsPluginData* @ToolsOnLoad.regData to i8*), i8* null, i8* null, i64 0 }], align 16
@.str.5 = private unnamed_addr constant [17 x i8] c"tcs_capabilities\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"tcs_conf_reload\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"tcs_io_freeze\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"tcs_reset\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"tcs_set_option\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"tcs_shutdown\00", align 1
@ToolsOnLoad.sigs = private unnamed_addr constant [6 x %struct.ToolsPluginSignalCb] [%struct.ToolsPluginSignalCb { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* bitcast (%struct._GArray* (i8*, %struct.ToolsAppCtx*, i32, i8*)* @GuestInfoServerSendCaps to i8*), i8* null }, %struct.ToolsPluginSignalCb { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* bitcast (void (i8*, %struct.ToolsAppCtx*, i8*)* @GuestInfoServerConfReload to i8*), i8* null }, %struct.ToolsPluginSignalCb { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* bitcast (void (i8*, %struct.ToolsAppCtx*, i32, i8*)* @GuestInfoServerIOFreeze to i8*), i8* null }, %struct.ToolsPluginSignalCb { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (void (i8*, %struct.ToolsAppCtx*, i8*)* @GuestInfoServerReset to i8*), i8* null }, %struct.ToolsPluginSignalCb { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* bitcast (i32 (i8*, %struct.ToolsAppCtx*, i8*, i8*, i8*)* @GuestInfoServerSetOption to i8*), i8* null }, %struct.ToolsPluginSignalCb { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (void (i8*, %struct.ToolsAppCtx*, i8*)* @GuestInfoServerShutdown to i8*), i8* null }], align 16
@gInfoCache = internal global %struct._GuestInfoCache zeroinitializer, align 8
@gVMResumed = internal global i8 0, align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Entered update vmdb: %d.\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"Value unchanged for infotype %d.\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"Failed to update key/value pair for type %d.\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"Failed to update nic information.\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Unable to send GuestMemInfo\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Disk info not changed.\0A\00", align 1
@.str.17 = private unnamed_addr constant [63 x i8] c"%s: Too many local filesystems (%d); truncating to %d entries\0A\00", align 1
@__FUNCTION__.GuestInfoUpdateVmdb = private unnamed_addr constant [20 x i8] c"GuestInfoUpdateVmdb\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"%s  %d \00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"SetGuestInfo\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"sizeof request is %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"Failed to update disk information.\0A\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"Updated disk info information\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"Invalid info type: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c"Returning after updating guest information: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"%s %c%d%c%s\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Error sending rpc message: %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"Invalid nicInfo send method: %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"Updating nicInfo successfully: method=%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"Fail to send nicInfo: method=%d status=%d\0A\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"Error serializing nic info v%d data.\00", align 1
@.str.32 = private unnamed_addr constant [46 x i8] c"%s: update failed: request \22%s\22, reply \22%s\22.\0A\00", align 1
@__FUNCTION__.GuestInfoSendNicInfoXdr = private unnamed_addr constant [24 x i8] c"GuestInfoSendNicInfoXdr\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@__FUNCTION__.GuestInfoSendData = private unnamed_addr constant [18 x i8] c"GuestInfoSendData\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"Failed to allocate GuestMemInfo memory.\0A\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"Sending GuestMemInfo message.\0A\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"GuestMemInfo sent successfully.\0A\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"Error sending GuestMemInfo.\0A\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"Number of disks has changed\0A\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"Partition %s deleted\0A\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"Free space changed\0A\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"Total space changed\0A\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"vm-support\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@GuestInfoVMSupport.vmSupportCmdArgv = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i8* null], align 16
@.str.44 = private unnamed_addr constant [33 x i8] c"Starting vm-support script - %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"Error starting vm-support script\0A\00", align 1
@.str.46 = private unnamed_addr constant [33 x i8] c"Error starting vm-support script\00", align 1
@.str.47 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.49 = private unnamed_addr constant [30 x i8] c"Setting guest uptime to '%s'\0A\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"broadcastIP\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.53 = private unnamed_addr constant [25 x i8] c"info-set guestinfo.ip %s\00", align 1
@gatherInfoTimeoutSource = internal global %struct._GSource* null, align 8
@gatherStatsTimeoutSource = internal global %struct._GSource* null, align 8
@.str.54 = private unnamed_addr constant [17 x i8] c"disable-perf-mon\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"stats-interval\00", align 1
@.str.56 = private unnamed_addr constant [31 x i8] c"PerfMon gather loop disabled.\0A\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"poll-interval\00", align 1
@.str.58 = private unnamed_addr constant [41 x i8] c"Invalid %s.%s value. Using default %us.\0A\00", align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"New value for %s is %us.\0A\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"Poll loop for %s disabled.\0A\00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"Entered guest info gather.\0A\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"build-8931395\00", align 1
@.str.63 = private unnamed_addr constant [43 x i8] c"Failed to update VMDB with tools version.\0A\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"Failed to get OS info.\0A\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"Failed to update VMDB\0A\00", align 1
@.str.66 = private unnamed_addr constant [23 x i8] c"disable-query-diskinfo\00", align 1
@.str.67 = private unnamed_addr constant [26 x i8] c"Failed to get disk info.\0A\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"Failed to update VMDB\0A.\00", align 1
@.str.69 = private unnamed_addr constant [29 x i8] c"Failed to get netbios name.\0A\00", align 1
@.str.70 = private unnamed_addr constant [24 x i8] c"Failed to update VMDB.\0A\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"max-ipv4-routes\00", align 1
@.str.72 = private unnamed_addr constant [44 x i8] c"Invalid %s.%s value: %d. Using default %u.\0A\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"max-ipv6-routes\00", align 1
@.str.74 = private unnamed_addr constant [25 x i8] c"Failed to get nic info.\0A\00", align 1
@.str.75 = private unnamed_addr constant [23 x i8] c"Nic info not changed.\0A\00", align 1
@.str.76 = private unnamed_addr constant [102 x i8] c"*** WARNING: GuestInfo collection interval longer than expected; actual=%d sec, expected=%d sec. ***\0A\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"log %s\00", align 1
@.str.78 = private unnamed_addr constant [32 x i8] c"%s: Error sending rpc message.\0A\00", align 1
@__FUNCTION__.GuestInfoCheckIfRunningSlow = private unnamed_addr constant [28 x i8] c"GuestInfoCheckIfRunningSlow\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@GuestInfoResetNicPrimaryList.ifacePrimaryStringCached = internal global i8* null, align 8
@.str.80 = private unnamed_addr constant [13 x i8] c"primary-nics\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c",\00", align 1
@GuestInfoResetNicLowPriorityList.ifaceLowPriorityStringCached = internal global i8* null, align 8
@.str.82 = private unnamed_addr constant [18 x i8] c"low-priority-nics\00", align 1
@GuestInfoResetNicExcludeList.ifaceExcludeStringCached = internal global i8* null, align 8
@.str.83 = private unnamed_addr constant [13 x i8] c"exclude-nics\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"docker*,veth*\00", align 1

; Function Attrs: nounwind uwtable
define void @GuestInfoConvertNicInfoToNicInfoV1(%struct.NicInfoV3*, %struct.GuestNicInfoV1*) #0 !dbg !514 {
  %3 = alloca %struct.NicInfoV3*, align 8
  %4 = alloca %struct.GuestNicInfoV1*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.GuestNicV3*, align 8
  %10 = alloca %struct.IpAddressEntry*, align 8
  %11 = alloca %struct.TypedIpAddress*, align 8
  store %struct.NicInfoV3* %0, %struct.NicInfoV3** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.NicInfoV3** %3, metadata !538, metadata !539), !dbg !540
  store %struct.GuestNicInfoV1* %1, %struct.GuestNicInfoV1** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestNicInfoV1** %4, metadata !541, metadata !539), !dbg !542
  call void @llvm.dbg.declare(metadata i32* %5, metadata !543, metadata !539), !dbg !544
  call void @llvm.dbg.declare(metadata i32* %6, metadata !545, metadata !539), !dbg !546
  %12 = load %struct.NicInfoV3*, %struct.NicInfoV3** %3, align 8, !dbg !547
  %13 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %12, i32 0, i32 0, !dbg !548
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0, !dbg !549
  %15 = load i32, i32* %14, align 8, !dbg !549
  %16 = icmp ult i32 %15, 16, !dbg !550
  br i1 %16, label %17, label %22, !dbg !551

; <label>:17:                                     ; preds = %2
  %18 = load %struct.NicInfoV3*, %struct.NicInfoV3** %3, align 8, !dbg !552
  %19 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %18, i32 0, i32 0, !dbg !554
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 0, !dbg !555
  %21 = load i32, i32* %20, align 8, !dbg !555
  br label %23, !dbg !556

; <label>:22:                                     ; preds = %2
  br label %23, !dbg !557

; <label>:23:                                     ; preds = %22, %17
  %24 = phi i32 [ %21, %17 ], [ 16, %22 ], !dbg !559
  store i32 %24, i32* %5, align 4, !dbg !561
  %25 = load i32, i32* %5, align 4, !dbg !562
  %26 = load %struct.GuestNicInfoV1*, %struct.GuestNicInfoV1** %4, align 8, !dbg !563
  %27 = getelementptr inbounds %struct.GuestNicInfoV1, %struct.GuestNicInfoV1* %26, i32 0, i32 0, !dbg !564
  store i32 %25, i32* %27, align 4, !dbg !565
  %28 = load i32, i32* %5, align 4, !dbg !566
  %29 = load %struct.NicInfoV3*, %struct.NicInfoV3** %3, align 8, !dbg !568
  %30 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %29, i32 0, i32 0, !dbg !569
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 0, !dbg !570
  %32 = load i32, i32* %31, align 8, !dbg !570
  %33 = icmp ult i32 %28, %32, !dbg !571
  br i1 %33, label %34, label %35, !dbg !572

; <label>:34:                                     ; preds = %23
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0)), !dbg !573
  br label %35, !dbg !575

; <label>:35:                                     ; preds = %34, %23
  store i32 0, i32* %6, align 4, !dbg !576
  br label %36, !dbg !578

; <label>:36:                                     ; preds = %164, %35
  %37 = load i32, i32* %6, align 4, !dbg !579
  %38 = load %struct.NicInfoV3*, %struct.NicInfoV3** %3, align 8, !dbg !582
  %39 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %38, i32 0, i32 0, !dbg !583
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %39, i32 0, i32 0, !dbg !584
  %41 = load i32, i32* %40, align 8, !dbg !584
  %42 = icmp ult i32 %37, %41, !dbg !585
  br i1 %42, label %43, label %167, !dbg !586

; <label>:43:                                     ; preds = %36
  call void @llvm.dbg.declare(metadata i32* %7, metadata !587, metadata !539), !dbg !589
  call void @llvm.dbg.declare(metadata i32* %8, metadata !590, metadata !539), !dbg !591
  call void @llvm.dbg.declare(metadata %struct.GuestNicV3** %9, metadata !592, metadata !539), !dbg !593
  %44 = load i32, i32* %6, align 4, !dbg !594
  %45 = zext i32 %44 to i64, !dbg !595
  %46 = load %struct.NicInfoV3*, %struct.NicInfoV3** %3, align 8, !dbg !596
  %47 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %46, i32 0, i32 0, !dbg !597
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 1, !dbg !598
  %49 = load %struct.GuestNicV3*, %struct.GuestNicV3** %48, align 8, !dbg !598
  %50 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %49, i64 %45, !dbg !595
  store %struct.GuestNicV3* %50, %struct.GuestNicV3** %9, align 8, !dbg !593
  %51 = load i32, i32* %6, align 4, !dbg !599
  %52 = zext i32 %51 to i64, !dbg !600
  %53 = load %struct.GuestNicInfoV1*, %struct.GuestNicInfoV1** %4, align 8, !dbg !600
  %54 = getelementptr inbounds %struct.GuestNicInfoV1, %struct.GuestNicInfoV1* %53, i32 0, i32 1, !dbg !601
  %55 = getelementptr inbounds [16 x %struct.NicEntryV1], [16 x %struct.NicEntryV1]* %54, i64 0, i64 %52, !dbg !600
  %56 = getelementptr inbounds %struct.NicEntryV1, %struct.NicEntryV1* %55, i32 0, i32 1, !dbg !602
  %57 = getelementptr inbounds [19 x i8], [19 x i8]* %56, i32 0, i32 0, !dbg !600
  %58 = load %struct.GuestNicV3*, %struct.GuestNicV3** %9, align 8, !dbg !603
  %59 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %58, i32 0, i32 0, !dbg !604
  %60 = load i8*, i8** %59, align 8, !dbg !604
  %61 = call i8* @Str_Strcpy(i8* %57, i8* %60, i64 19), !dbg !605
  %62 = load %struct.GuestNicV3*, %struct.GuestNicV3** %9, align 8, !dbg !606
  %63 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %62, i32 0, i32 1, !dbg !607
  %64 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %63, i32 0, i32 0, !dbg !608
  %65 = load i32, i32* %64, align 8, !dbg !608
  %66 = icmp ult i32 %65, 8, !dbg !609
  br i1 %66, label %67, label %72, !dbg !610

; <label>:67:                                     ; preds = %43
  %68 = load %struct.GuestNicV3*, %struct.GuestNicV3** %9, align 8, !dbg !611
  %69 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %68, i32 0, i32 1, !dbg !613
  %70 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %69, i32 0, i32 0, !dbg !614
  %71 = load i32, i32* %70, align 8, !dbg !614
  br label %73, !dbg !615

; <label>:72:                                     ; preds = %43
  br label %73, !dbg !616

; <label>:73:                                     ; preds = %72, %67
  %74 = phi i32 [ %71, %67 ], [ 8, %72 ], !dbg !618
  store i32 %74, i32* %8, align 4, !dbg !620
  %75 = load i32, i32* %6, align 4, !dbg !621
  %76 = zext i32 %75 to i64, !dbg !622
  %77 = load %struct.GuestNicInfoV1*, %struct.GuestNicInfoV1** %4, align 8, !dbg !622
  %78 = getelementptr inbounds %struct.GuestNicInfoV1, %struct.GuestNicInfoV1* %77, i32 0, i32 1, !dbg !623
  %79 = getelementptr inbounds [16 x %struct.NicEntryV1], [16 x %struct.NicEntryV1]* %78, i64 0, i64 %76, !dbg !622
  %80 = getelementptr inbounds %struct.NicEntryV1, %struct.NicEntryV1* %79, i32 0, i32 0, !dbg !624
  store i32 0, i32* %80, align 4, !dbg !625
  store i32 0, i32* %7, align 4, !dbg !626
  br label %81, !dbg !628

; <label>:81:                                     ; preds = %141, %73
  %82 = load i32, i32* %7, align 4, !dbg !629
  %83 = load %struct.GuestNicV3*, %struct.GuestNicV3** %9, align 8, !dbg !632
  %84 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %83, i32 0, i32 1, !dbg !633
  %85 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %84, i32 0, i32 0, !dbg !634
  %86 = load i32, i32* %85, align 8, !dbg !634
  %87 = icmp ult i32 %82, %86, !dbg !635
  br i1 %87, label %88, label %144, !dbg !636

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.declare(metadata %struct.IpAddressEntry** %10, metadata !637, metadata !539), !dbg !639
  %89 = load i32, i32* %7, align 4, !dbg !640
  %90 = zext i32 %89 to i64, !dbg !641
  %91 = load %struct.GuestNicV3*, %struct.GuestNicV3** %9, align 8, !dbg !642
  %92 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %91, i32 0, i32 1, !dbg !643
  %93 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %92, i32 0, i32 1, !dbg !644
  %94 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %93, align 8, !dbg !644
  %95 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %94, i64 %90, !dbg !641
  store %struct.IpAddressEntry* %95, %struct.IpAddressEntry** %10, align 8, !dbg !639
  call void @llvm.dbg.declare(metadata %struct.TypedIpAddress** %11, metadata !645, metadata !539), !dbg !646
  %96 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %10, align 8, !dbg !647
  %97 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %96, i32 0, i32 0, !dbg !648
  store %struct.TypedIpAddress* %97, %struct.TypedIpAddress** %11, align 8, !dbg !646
  %98 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %11, align 8, !dbg !649
  %99 = getelementptr inbounds %struct.TypedIpAddress, %struct.TypedIpAddress* %98, i32 0, i32 0, !dbg !651
  %100 = load i32, i32* %99, align 8, !dbg !651
  %101 = icmp ne i32 %100, 1, !dbg !652
  br i1 %101, label %102, label %103, !dbg !653

; <label>:102:                                    ; preds = %88
  br label %141, !dbg !654

; <label>:103:                                    ; preds = %88
  %104 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %11, align 8, !dbg !656
  %105 = getelementptr inbounds %struct.TypedIpAddress, %struct.TypedIpAddress* %104, i32 0, i32 1, !dbg !658
  %106 = getelementptr inbounds %struct.InetAddress, %struct.InetAddress* %105, i32 0, i32 1, !dbg !659
  %107 = load i8*, i8** %106, align 8, !dbg !659
  %108 = load i32, i32* %7, align 4, !dbg !660
  %109 = zext i32 %108 to i64, !dbg !661
  %110 = load i32, i32* %6, align 4, !dbg !662
  %111 = zext i32 %110 to i64, !dbg !661
  %112 = load %struct.GuestNicInfoV1*, %struct.GuestNicInfoV1** %4, align 8, !dbg !661
  %113 = getelementptr inbounds %struct.GuestNicInfoV1, %struct.GuestNicInfoV1* %112, i32 0, i32 1, !dbg !663
  %114 = getelementptr inbounds [16 x %struct.NicEntryV1], [16 x %struct.NicEntryV1]* %113, i64 0, i64 %111, !dbg !661
  %115 = getelementptr inbounds %struct.NicEntryV1, %struct.NicEntryV1* %114, i32 0, i32 2, !dbg !664
  %116 = getelementptr inbounds [8 x [16 x i8]], [8 x [16 x i8]]* %115, i64 0, i64 %109, !dbg !661
  %117 = getelementptr inbounds [16 x i8], [16 x i8]* %116, i32 0, i32 0, !dbg !661
  %118 = call i8* @inet_ntop(i32 2, i8* %107, i8* %117, i32 16) #7, !dbg !665
  %119 = icmp ne i8* %118, null, !dbg !665
  br i1 %119, label %120, label %140, !dbg !666

; <label>:120:                                    ; preds = %103
  %121 = load i32, i32* %6, align 4, !dbg !667
  %122 = zext i32 %121 to i64, !dbg !669
  %123 = load %struct.GuestNicInfoV1*, %struct.GuestNicInfoV1** %4, align 8, !dbg !669
  %124 = getelementptr inbounds %struct.GuestNicInfoV1, %struct.GuestNicInfoV1* %123, i32 0, i32 1, !dbg !670
  %125 = getelementptr inbounds [16 x %struct.NicEntryV1], [16 x %struct.NicEntryV1]* %124, i64 0, i64 %122, !dbg !669
  %126 = getelementptr inbounds %struct.NicEntryV1, %struct.NicEntryV1* %125, i32 0, i32 0, !dbg !671
  %127 = load i32, i32* %126, align 4, !dbg !672
  %128 = add i32 %127, 1, !dbg !672
  store i32 %128, i32* %126, align 4, !dbg !672
  %129 = load i32, i32* %6, align 4, !dbg !673
  %130 = zext i32 %129 to i64, !dbg !675
  %131 = load %struct.GuestNicInfoV1*, %struct.GuestNicInfoV1** %4, align 8, !dbg !675
  %132 = getelementptr inbounds %struct.GuestNicInfoV1, %struct.GuestNicInfoV1* %131, i32 0, i32 1, !dbg !676
  %133 = getelementptr inbounds [16 x %struct.NicEntryV1], [16 x %struct.NicEntryV1]* %132, i64 0, i64 %130, !dbg !675
  %134 = getelementptr inbounds %struct.NicEntryV1, %struct.NicEntryV1* %133, i32 0, i32 0, !dbg !677
  %135 = load i32, i32* %134, align 4, !dbg !677
  %136 = load i32, i32* %8, align 4, !dbg !678
  %137 = icmp eq i32 %135, %136, !dbg !679
  br i1 %137, label %138, label %139, !dbg !680

; <label>:138:                                    ; preds = %120
  br label %144, !dbg !681

; <label>:139:                                    ; preds = %120
  br label %140, !dbg !683

; <label>:140:                                    ; preds = %139, %103
  br label %141, !dbg !684

; <label>:141:                                    ; preds = %140, %102
  %142 = load i32, i32* %7, align 4, !dbg !685
  %143 = add i32 %142, 1, !dbg !685
  store i32 %143, i32* %7, align 4, !dbg !685
  br label %81, !dbg !687, !llvm.loop !688

; <label>:144:                                    ; preds = %138, %81
  %145 = load i32, i32* %6, align 4, !dbg !690
  %146 = zext i32 %145 to i64, !dbg !692
  %147 = load %struct.GuestNicInfoV1*, %struct.GuestNicInfoV1** %4, align 8, !dbg !692
  %148 = getelementptr inbounds %struct.GuestNicInfoV1, %struct.GuestNicInfoV1* %147, i32 0, i32 1, !dbg !693
  %149 = getelementptr inbounds [16 x %struct.NicEntryV1], [16 x %struct.NicEntryV1]* %148, i64 0, i64 %146, !dbg !692
  %150 = getelementptr inbounds %struct.NicEntryV1, %struct.NicEntryV1* %149, i32 0, i32 0, !dbg !694
  %151 = load i32, i32* %150, align 4, !dbg !694
  %152 = load %struct.GuestNicV3*, %struct.GuestNicV3** %9, align 8, !dbg !695
  %153 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %152, i32 0, i32 1, !dbg !696
  %154 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %153, i32 0, i32 0, !dbg !697
  %155 = load i32, i32* %154, align 8, !dbg !697
  %156 = icmp ne i32 %151, %155, !dbg !698
  br i1 %156, label %157, label %158, !dbg !699

; <label>:157:                                    ; preds = %144
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i32 0, i32 0)), !dbg !700
  br label %158, !dbg !702

; <label>:158:                                    ; preds = %157, %144
  %159 = load i32, i32* %6, align 4, !dbg !703
  %160 = load i32, i32* %5, align 4, !dbg !705
  %161 = icmp eq i32 %159, %160, !dbg !706
  br i1 %161, label %162, label %163, !dbg !707

; <label>:162:                                    ; preds = %158
  br label %167, !dbg !708

; <label>:163:                                    ; preds = %158
  br label %164, !dbg !710

; <label>:164:                                    ; preds = %163
  %165 = load i32, i32* %6, align 4, !dbg !711
  %166 = add i32 %165, 1, !dbg !711
  store i32 %166, i32* %6, align 4, !dbg !711
  br label %36, !dbg !713, !llvm.loop !714

; <label>:167:                                    ; preds = %162, %36
  ret void, !dbg !716
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_log(i8*, i32, i8*, ...) #2

declare i8* @Str_Strcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare i8* @inet_ntop(i32, i8*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define %struct.GuestNicV3* @GuestInfoFindMacAddress(%struct.NicInfoV3*, i8*) #0 !dbg !717 {
  %3 = alloca %struct.GuestNicV3*, align 8
  %4 = alloca %struct.NicInfoV3*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.GuestNicV3*, align 8
  store %struct.NicInfoV3* %0, %struct.NicInfoV3** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.NicInfoV3** %4, metadata !720, metadata !539), !dbg !721
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !722, metadata !539), !dbg !723
  call void @llvm.dbg.declare(metadata i32* %6, metadata !724, metadata !539), !dbg !725
  store i32 0, i32* %6, align 4, !dbg !726
  br label %8, !dbg !728

; <label>:8:                                      ; preds = %32, %2
  %9 = load i32, i32* %6, align 4, !dbg !729
  %10 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !732
  %11 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %10, i32 0, i32 0, !dbg !733
  %12 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0, !dbg !734
  %13 = load i32, i32* %12, align 8, !dbg !734
  %14 = icmp ult i32 %9, %13, !dbg !735
  br i1 %14, label %15, label %35, !dbg !736

; <label>:15:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata %struct.GuestNicV3** %7, metadata !737, metadata !539), !dbg !739
  %16 = load i32, i32* %6, align 4, !dbg !740
  %17 = zext i32 %16 to i64, !dbg !741
  %18 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !741
  %19 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %18, i32 0, i32 0, !dbg !742
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 1, !dbg !743
  %21 = load %struct.GuestNicV3*, %struct.GuestNicV3** %20, align 8, !dbg !743
  %22 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %21, i64 %17, !dbg !741
  store %struct.GuestNicV3* %22, %struct.GuestNicV3** %7, align 8, !dbg !739
  %23 = load %struct.GuestNicV3*, %struct.GuestNicV3** %7, align 8, !dbg !744
  %24 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %23, i32 0, i32 0, !dbg !746
  %25 = load i8*, i8** %24, align 8, !dbg !746
  %26 = load i8*, i8** %5, align 8, !dbg !747
  %27 = call i32 @strncmp(i8* %25, i8* %26, i64 18) #8, !dbg !748
  %28 = icmp eq i32 %27, 0, !dbg !749
  br i1 %28, label %29, label %31, !dbg !750

; <label>:29:                                     ; preds = %15
  %30 = load %struct.GuestNicV3*, %struct.GuestNicV3** %7, align 8, !dbg !751
  store %struct.GuestNicV3* %30, %struct.GuestNicV3** %3, align 8, !dbg !753
  br label %36, !dbg !753

; <label>:31:                                     ; preds = %15
  br label %32, !dbg !754

; <label>:32:                                     ; preds = %31
  %33 = load i32, i32* %6, align 4, !dbg !755
  %34 = add i32 %33, 1, !dbg !755
  store i32 %34, i32* %6, align 4, !dbg !755
  br label %8, !dbg !757, !llvm.loop !758

; <label>:35:                                     ; preds = %8
  store %struct.GuestNicV3* null, %struct.GuestNicV3** %3, align 8, !dbg !760
  br label %36, !dbg !760

; <label>:36:                                     ; preds = %35, %29
  %37 = load %struct.GuestNicV3*, %struct.GuestNicV3** %3, align 8, !dbg !761
  ret %struct.GuestNicV3* %37, !dbg !761
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define signext i8 @GuestInfo_ServerReportStats(%struct.ToolsAppCtx*, %struct.DynBuf*) #0 !dbg !762 {
  %3 = alloca %struct.ToolsAppCtx*, align 8
  %4 = alloca %struct.DynBuf*, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %3, metadata !775, metadata !539), !dbg !776
  store %struct.DynBuf* %1, %struct.DynBuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %4, metadata !777, metadata !539), !dbg !778
  %5 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !779
  %6 = load %struct.DynBuf*, %struct.DynBuf** %4, align 8, !dbg !780
  %7 = call i8* @DynBuf_Get(%struct.DynBuf* %6), !dbg !781
  %8 = load %struct.DynBuf*, %struct.DynBuf** %4, align 8, !dbg !782
  %9 = call i64 @DynBuf_GetSize(%struct.DynBuf* %8), !dbg !783
  %10 = call signext i8 @GuestInfoUpdateVmdb(%struct.ToolsAppCtx* %5, i32 8, i8* %7, i64 %9), !dbg !784
  ret i8 %10, !dbg !785
}

; Function Attrs: nounwind uwtable
define internal signext i8 @GuestInfoUpdateVmdb(%struct.ToolsAppCtx*, i32, i8*, i64) #0 !dbg !786 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.ToolsAppCtx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  %17 = alloca %struct._DiskInfo*, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %6, metadata !790, metadata !539), !dbg !791
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !792, metadata !539), !dbg !793
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !794, metadata !539), !dbg !795
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !796, metadata !539), !dbg !797
  %18 = load i32, i32* %7, align 4, !dbg !798
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0), i32 %18), !dbg !799
  %19 = load i8, i8* @gVMResumed, align 1, !dbg !800
  %20 = icmp ne i8 %19, 0, !dbg !800
  br i1 %20, label %21, label %22, !dbg !802

; <label>:21:                                     ; preds = %4
  store i8 0, i8* @gVMResumed, align 1, !dbg !803
  call void @GuestInfoClearCache(), !dbg !805
  br label %22, !dbg !806

; <label>:22:                                     ; preds = %21, %4
  %23 = load i32, i32* %7, align 4, !dbg !807
  switch i32 %23, label %158 [
    i32 1, label %24
    i32 4, label %24
    i32 6, label %24
    i32 5, label %24
    i32 7, label %24
    i32 2, label %58
    i32 8, label %66
    i32 3, label %74
  ], !dbg !808

; <label>:24:                                     ; preds = %22, %22, %22, %22, %22
  %25 = load i32, i32* %7, align 4, !dbg !809
  %26 = zext i32 %25 to i64, !dbg !812
  %27 = getelementptr inbounds [11 x i8*], [11 x i8*]* getelementptr inbounds (%struct._GuestInfoCache, %struct._GuestInfoCache* @gInfoCache, i32 0, i32 0), i64 0, i64 %26, !dbg !812
  %28 = load i8*, i8** %27, align 8, !dbg !812
  %29 = icmp ne i8* %28, null, !dbg !813
  br i1 %29, label %30, label %40, !dbg !814

; <label>:30:                                     ; preds = %24
  %31 = load i32, i32* %7, align 4, !dbg !815
  %32 = zext i32 %31 to i64, !dbg !816
  %33 = getelementptr inbounds [11 x i8*], [11 x i8*]* getelementptr inbounds (%struct._GuestInfoCache, %struct._GuestInfoCache* @gInfoCache, i32 0, i32 0), i64 0, i64 %32, !dbg !816
  %34 = load i8*, i8** %33, align 8, !dbg !816
  %35 = load i8*, i8** %8, align 8, !dbg !817
  %36 = call i32 @strcmp(i8* %34, i8* %35) #8, !dbg !818
  %37 = icmp eq i32 %36, 0, !dbg !819
  br i1 %37, label %38, label %40, !dbg !820

; <label>:38:                                     ; preds = %30
  %39 = load i32, i32* %7, align 4, !dbg !822
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0), i32 %39), !dbg !824
  br label %163, !dbg !825

; <label>:40:                                     ; preds = %30, %24
  %41 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %6, align 8, !dbg !826
  %42 = load i32, i32* %7, align 4, !dbg !828
  %43 = load i8*, i8** %8, align 8, !dbg !829
  %44 = call signext i8 @SetGuestInfo(%struct.ToolsAppCtx* %41, i32 %42, i8* %43), !dbg !830
  %45 = icmp ne i8 %44, 0, !dbg !830
  br i1 %45, label %48, label %46, !dbg !831

; <label>:46:                                     ; preds = %40
  %47 = load i32, i32* %7, align 4, !dbg !832
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i32 0, i32 0), i32 %47), !dbg !834
  store i8 0, i8* %5, align 1, !dbg !835
  br label %165, !dbg !835

; <label>:48:                                     ; preds = %40
  %49 = load i32, i32* %7, align 4, !dbg !836
  %50 = zext i32 %49 to i64, !dbg !837
  %51 = getelementptr inbounds [11 x i8*], [11 x i8*]* getelementptr inbounds (%struct._GuestInfoCache, %struct._GuestInfoCache* @gInfoCache, i32 0, i32 0), i64 0, i64 %50, !dbg !837
  %52 = load i8*, i8** %51, align 8, !dbg !837
  call void @free(i8* %52) #7, !dbg !838
  %53 = load i8*, i8** %8, align 8, !dbg !839
  %54 = call i8* @UtilSafeStrdup0(i8* %53), !dbg !840
  %55 = load i32, i32* %7, align 4, !dbg !841
  %56 = zext i32 %55 to i64, !dbg !842
  %57 = getelementptr inbounds [11 x i8*], [11 x i8*]* getelementptr inbounds (%struct._GuestInfoCache, %struct._GuestInfoCache* @gInfoCache, i32 0, i32 0), i64 0, i64 %56, !dbg !842
  store i8* %54, i8** %57, align 8, !dbg !843
  br label %163, !dbg !844

; <label>:58:                                     ; preds = %22
  %59 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %6, align 8, !dbg !845
  %60 = load i8*, i8** %8, align 8, !dbg !848
  %61 = bitcast i8* %60 to %struct.NicInfoV3*, !dbg !849
  %62 = call signext i8 @GuestInfoSendNicInfo(%struct.ToolsAppCtx* %59, %struct.NicInfoV3* %61), !dbg !850
  %63 = icmp ne i8 %62, 0, !dbg !850
  br i1 %63, label %65, label %64, !dbg !851

; <label>:64:                                     ; preds = %58
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0)), !dbg !852
  store i8 0, i8* %5, align 1, !dbg !854
  br label %165, !dbg !854

; <label>:65:                                     ; preds = %58
  br label %163, !dbg !855

; <label>:66:                                     ; preds = %22
  %67 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %6, align 8, !dbg !856
  %68 = load i64, i64* %9, align 8, !dbg !859
  %69 = load i8*, i8** %8, align 8, !dbg !860
  %70 = call signext i8 @GuestInfoSendMemoryInfo(%struct.ToolsAppCtx* %67, i64 %68, i8* %69), !dbg !861
  %71 = icmp ne i8 %70, 0, !dbg !861
  br i1 %71, label %73, label %72, !dbg !862

; <label>:72:                                     ; preds = %66
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0)), !dbg !863
  store i8 0, i8* %5, align 1, !dbg !865
  br label %165, !dbg !865

; <label>:73:                                     ; preds = %66
  br label %163, !dbg !866

; <label>:74:                                     ; preds = %22
  call void @llvm.dbg.declare(metadata i32* %10, metadata !867, metadata !539), !dbg !869
  store i32 18, i32* %10, align 4, !dbg !869
  call void @llvm.dbg.declare(metadata i8* %11, metadata !870, metadata !539), !dbg !874
  call void @llvm.dbg.declare(metadata i64* %12, metadata !875, metadata !539), !dbg !876
  call void @llvm.dbg.declare(metadata i8** %13, metadata !877, metadata !539), !dbg !878
  call void @llvm.dbg.declare(metadata i8** %14, metadata !879, metadata !539), !dbg !880
  call void @llvm.dbg.declare(metadata i64* %15, metadata !881, metadata !539), !dbg !882
  call void @llvm.dbg.declare(metadata i8* %16, metadata !883, metadata !539), !dbg !884
  call void @llvm.dbg.declare(metadata %struct._DiskInfo** %17, metadata !885, metadata !539), !dbg !886
  %75 = load i8*, i8** %8, align 8, !dbg !887
  %76 = bitcast i8* %75 to %struct._DiskInfo*, !dbg !887
  store %struct._DiskInfo* %76, %struct._DiskInfo** %17, align 8, !dbg !886
  %77 = load %struct._DiskInfo*, %struct._DiskInfo** %17, align 8, !dbg !888
  %78 = call signext i8 @DiskInfoChanged(%struct._DiskInfo* %77), !dbg !890
  %79 = icmp ne i8 %78, 0, !dbg !890
  br i1 %79, label %81, label %80, !dbg !891

; <label>:80:                                     ; preds = %74
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0)), !dbg !892
  br label %163, !dbg !894

; <label>:81:                                     ; preds = %74
  %82 = load %struct._DiskInfo*, %struct._DiskInfo** %17, align 8, !dbg !895
  %83 = getelementptr inbounds %struct._DiskInfo, %struct._DiskInfo* %82, i32 0, i32 0, !dbg !897
  %84 = load i32, i32* %83, align 8, !dbg !897
  %85 = icmp ugt i32 %84, 255, !dbg !898
  br i1 %85, label %86, label %90, !dbg !899

; <label>:86:                                     ; preds = %81
  %87 = load %struct._DiskInfo*, %struct._DiskInfo** %17, align 8, !dbg !900
  %88 = getelementptr inbounds %struct._DiskInfo, %struct._DiskInfo* %87, i32 0, i32 0, !dbg !902
  %89 = load i32, i32* %88, align 8, !dbg !902
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.GuestInfoUpdateVmdb, i32 0, i32 0), i32 %89, i32 255), !dbg !903
  store i8 -1, i8* %11, align 1, !dbg !904
  br label %95, !dbg !905

; <label>:90:                                     ; preds = %81
  %91 = load %struct._DiskInfo*, %struct._DiskInfo** %17, align 8, !dbg !906
  %92 = getelementptr inbounds %struct._DiskInfo, %struct._DiskInfo* %91, i32 0, i32 0, !dbg !908
  %93 = load i32, i32* %92, align 8, !dbg !908
  %94 = trunc i32 %93 to i8, !dbg !906
  store i8 %94, i8* %11, align 1, !dbg !909
  br label %95

; <label>:95:                                     ; preds = %90, %86
  %96 = load i8, i8* %11, align 1, !dbg !910
  %97 = zext i8 %96 to i64, !dbg !910
  %98 = mul i64 116, %97, !dbg !911
  %99 = add i64 1, %98, !dbg !912
  %100 = load i32, i32* %10, align 4, !dbg !913
  %101 = zext i32 %100 to i64, !dbg !913
  %102 = add i64 %101, %99, !dbg !913
  %103 = trunc i64 %102 to i32, !dbg !913
  store i32 %103, i32* %10, align 4, !dbg !913
  %104 = load i32, i32* %10, align 4, !dbg !914
  %105 = zext i32 %104 to i64, !dbg !915
  %106 = call i8* @UtilSafeCalloc0(i64 %105, i64 1), !dbg !916
  store i8* %106, i8** %13, align 8, !dbg !917
  %107 = load i8*, i8** %13, align 8, !dbg !918
  %108 = load i32, i32* %10, align 4, !dbg !919
  %109 = zext i32 %108 to i64, !dbg !919
  %110 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* %107, i64 %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i32 3), !dbg !920
  %111 = load i8*, i8** %13, align 8, !dbg !921
  %112 = call i64 @strlen(i8* %111) #8, !dbg !922
  store i64 %112, i64* %12, align 8, !dbg !923
  %113 = load i8*, i8** %13, align 8, !dbg !924
  %114 = load i64, i64* %12, align 8, !dbg !925
  %115 = getelementptr inbounds i8, i8* %113, i64 %114, !dbg !926
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %115, i8* %11, i64 1, i32 1, i1 false), !dbg !927
  %116 = load %struct._DiskInfo*, %struct._DiskInfo** %17, align 8, !dbg !928
  %117 = getelementptr inbounds %struct._DiskInfo, %struct._DiskInfo* %116, i32 0, i32 1, !dbg !930
  %118 = load %struct._PartitionEntry*, %struct._PartitionEntry** %117, align 8, !dbg !930
  %119 = icmp ne %struct._PartitionEntry* %118, null, !dbg !928
  br i1 %119, label %120, label %132, !dbg !931

; <label>:120:                                    ; preds = %95
  %121 = load i8*, i8** %13, align 8, !dbg !932
  %122 = load i64, i64* %12, align 8, !dbg !934
  %123 = getelementptr inbounds i8, i8* %121, i64 %122, !dbg !935
  %124 = getelementptr inbounds i8, i8* %123, i64 1, !dbg !936
  %125 = load %struct._DiskInfo*, %struct._DiskInfo** %17, align 8, !dbg !937
  %126 = getelementptr inbounds %struct._DiskInfo, %struct._DiskInfo* %125, i32 0, i32 1, !dbg !938
  %127 = load %struct._PartitionEntry*, %struct._PartitionEntry** %126, align 8, !dbg !938
  %128 = bitcast %struct._PartitionEntry* %127 to i8*, !dbg !939
  %129 = load i8, i8* %11, align 1, !dbg !940
  %130 = zext i8 %129 to i64, !dbg !940
  %131 = mul i64 116, %130, !dbg !941
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %124, i8* %128, i64 %131, i32 1, i1 false), !dbg !939
  br label %132, !dbg !942

; <label>:132:                                    ; preds = %120, %95
  %133 = load i32, i32* %10, align 4, !dbg !943
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), i32 %133), !dbg !944
  %134 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %6, align 8, !dbg !945
  %135 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %134, i32 0, i32 5, !dbg !946
  %136 = load %struct._RpcChannel*, %struct._RpcChannel** %135, align 8, !dbg !946
  %137 = load i8*, i8** %13, align 8, !dbg !947
  %138 = load i32, i32* %10, align 4, !dbg !948
  %139 = zext i32 %138 to i64, !dbg !948
  %140 = call i32 @RpcChannel_Send(%struct._RpcChannel* %136, i8* %137, i64 %139, i8** %14, i64* %15), !dbg !949
  %141 = trunc i32 %140 to i8, !dbg !949
  store i8 %141, i8* %16, align 1, !dbg !950
  %142 = load i8, i8* %16, align 1, !dbg !951
  %143 = icmp ne i8 %142, 0, !dbg !951
  br i1 %143, label %144, label %151, !dbg !953

; <label>:144:                                    ; preds = %132
  %145 = load i8*, i8** %14, align 8, !dbg !954
  %146 = load i8, i8* %145, align 1, !dbg !956
  %147 = sext i8 %146 to i32, !dbg !956
  %148 = icmp eq i32 %147, 0, !dbg !957
  %149 = zext i1 %148 to i32, !dbg !957
  %150 = trunc i32 %149 to i8, !dbg !958
  store i8 %150, i8* %16, align 1, !dbg !959
  br label %151, !dbg !960

; <label>:151:                                    ; preds = %144, %132
  %152 = load i8*, i8** %13, align 8, !dbg !961
  call void @vm_free(i8* %152), !dbg !962
  %153 = load i8*, i8** %14, align 8, !dbg !963
  call void @vm_free(i8* %153), !dbg !964
  %154 = load i8, i8* %16, align 1, !dbg !965
  %155 = icmp ne i8 %154, 0, !dbg !965
  br i1 %155, label %157, label %156, !dbg !967

; <label>:156:                                    ; preds = %151
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i32 0, i32 0)), !dbg !968
  store i8 0, i8* %5, align 1, !dbg !970
  br label %165, !dbg !970

; <label>:157:                                    ; preds = %151
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i32 0, i32 0)), !dbg !971
  br label %163, !dbg !972

; <label>:158:                                    ; preds = %22
  br label %159, !dbg !973, !llvm.loop !974

; <label>:159:                                    ; preds = %158
  %160 = load i32, i32* %7, align 4, !dbg !975
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0), i32 %160), !dbg !978
  br label %161, !dbg !979

; <label>:161:                                    ; preds = %161, %159
  br label %161, !dbg !980, !llvm.loop !984
                                                  ; No predecessors!
  br label %163, !dbg !986

; <label>:163:                                    ; preds = %162, %157, %80, %73, %65, %48, %38
  %164 = load i32, i32* %7, align 4, !dbg !987
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.24, i32 0, i32 0), i32 %164), !dbg !988
  store i8 1, i8* %5, align 1, !dbg !989
  br label %165, !dbg !989

; <label>:165:                                    ; preds = %163, %156, %72, %64, %46
  %166 = load i8, i8* %5, align 1, !dbg !990
  ret i8 %166, !dbg !990
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @DynBuf_Get(%struct.DynBuf*) #5 !dbg !991 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !996, metadata !539), !dbg !997
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !998
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 0, !dbg !999
  %5 = load i8*, i8** %4, align 8, !dbg !999
  ret i8* %5, !dbg !1000
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @DynBuf_GetSize(%struct.DynBuf*) #5 !dbg !1001 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !1004, metadata !539), !dbg !1005
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !1006
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 1, !dbg !1007
  %5 = load i64, i64* %4, align 8, !dbg !1007
  ret i64 %5, !dbg !1008
}

; Function Attrs: nounwind uwtable
define %struct.ToolsPluginData* @ToolsOnLoad(%struct.ToolsAppCtx*) #0 !dbg !339 {
  %2 = alloca %struct.ToolsPluginData*, align 8
  %3 = alloca %struct.ToolsAppCtx*, align 8
  %4 = alloca [1 x %struct.RpcChannelCallback], align 16
  %5 = alloca [6 x %struct.ToolsPluginSignalCb], align 16
  %6 = alloca [2 x %struct.ToolsAppReg], align 16
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %3, metadata !1009, metadata !539), !dbg !1010
  %7 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !1011
  %8 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %7, i32 0, i32 5, !dbg !1013
  %9 = load %struct._RpcChannel*, %struct._RpcChannel** %8, align 8, !dbg !1013
  %10 = icmp ne %struct._RpcChannel* %9, null, !dbg !1014
  br i1 %10, label %11, label %30, !dbg !1015

; <label>:11:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata [1 x %struct.RpcChannelCallback]* %4, metadata !1016, metadata !539), !dbg !1046
  %12 = bitcast [1 x %struct.RpcChannelCallback]* %4 to i8*, !dbg !1046
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast ([1 x %struct.RpcChannelCallback]* @ToolsOnLoad.rpcs to i8*), i64 48, i32 16, i1 false), !dbg !1046
  call void @llvm.dbg.declare(metadata [6 x %struct.ToolsPluginSignalCb]* %5, metadata !1047, metadata !539), !dbg !1057
  %13 = bitcast [6 x %struct.ToolsPluginSignalCb]* %5 to i8*, !dbg !1057
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* bitcast ([6 x %struct.ToolsPluginSignalCb]* @ToolsOnLoad.sigs to i8*), i64 144, i32 16, i1 false), !dbg !1057
  call void @llvm.dbg.declare(metadata [2 x %struct.ToolsAppReg]* %6, metadata !1058, metadata !539), !dbg !1067
  %14 = getelementptr inbounds [2 x %struct.ToolsAppReg], [2 x %struct.ToolsAppReg]* %6, i64 0, i64 0, !dbg !1068
  %15 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %14, i32 0, i32 0, !dbg !1069
  store i32 1, i32* %15, align 16, !dbg !1069
  %16 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %14, i32 0, i32 1, !dbg !1069
  %17 = getelementptr inbounds [1 x %struct.RpcChannelCallback], [1 x %struct.RpcChannelCallback]* %4, i32 0, i32 0, !dbg !1070
  %18 = bitcast %struct.RpcChannelCallback* %17 to i8*, !dbg !1070
  %19 = call %struct._GArray* @VMTools_WrapArray(i8* %18, i32 48, i32 1), !dbg !1071
  store %struct._GArray* %19, %struct._GArray** %16, align 8, !dbg !1069
  %20 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %14, i64 1, !dbg !1068
  %21 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %20, i32 0, i32 0, !dbg !1072
  store i32 2, i32* %21, align 16, !dbg !1072
  %22 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %20, i32 0, i32 1, !dbg !1072
  %23 = getelementptr inbounds [6 x %struct.ToolsPluginSignalCb], [6 x %struct.ToolsPluginSignalCb]* %5, i32 0, i32 0, !dbg !1073
  %24 = bitcast %struct.ToolsPluginSignalCb* %23 to i8*, !dbg !1073
  %25 = call %struct._GArray* @VMTools_WrapArray(i8* %24, i32 24, i32 6), !dbg !1074
  store %struct._GArray* %25, %struct._GArray** %22, align 8, !dbg !1072
  %26 = getelementptr inbounds [2 x %struct.ToolsAppReg], [2 x %struct.ToolsAppReg]* %6, i32 0, i32 0, !dbg !1075
  %27 = bitcast %struct.ToolsAppReg* %26 to i8*, !dbg !1075
  %28 = call %struct._GArray* @VMTools_WrapArray(i8* %27, i32 16, i32 2), !dbg !1076
  store %struct._GArray* %28, %struct._GArray** getelementptr inbounds (%struct.ToolsPluginData, %struct.ToolsPluginData* @ToolsOnLoad.regData, i32 0, i32 1), align 8, !dbg !1077
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct._GuestInfoCache* @gInfoCache to i8*), i8 0, i64 112, i32 8, i1 false), !dbg !1078
  store i8 0, i8* @gVMResumed, align 1, !dbg !1079
  store i32 0, i32* getelementptr inbounds (%struct._GuestInfoCache, %struct._GuestInfoCache* @gInfoCache, i32 0, i32 3), align 8, !dbg !1080
  %29 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !1081
  call void @TweakGatherLoops(%struct.ToolsAppCtx* %29, i32 1), !dbg !1082
  store %struct.ToolsPluginData* @ToolsOnLoad.regData, %struct.ToolsPluginData** %2, align 8, !dbg !1083
  br label %31, !dbg !1083

; <label>:30:                                     ; preds = %1
  store %struct.ToolsPluginData* null, %struct.ToolsPluginData** %2, align 8, !dbg !1084
  br label %31, !dbg !1084

; <label>:31:                                     ; preds = %30, %11
  %32 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %2, align 8, !dbg !1085
  ret %struct.ToolsPluginData* %32, !dbg !1085
}

; Function Attrs: nounwind uwtable
define internal i32 @GuestInfoVMSupport(%struct.RpcInData*) #0 !dbg !1086 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.RpcInData*, align 8
  %4 = alloca [3 x i8*], align 16
  store %struct.RpcInData* %0, %struct.RpcInData** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %3, metadata !1087, metadata !539), !dbg !1088
  call void @llvm.dbg.declare(metadata [3 x i8*]* %4, metadata !1089, metadata !539), !dbg !1093
  %5 = bitcast [3 x i8*]* %4 to i8*, !dbg !1093
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast ([3 x i8*]* @GuestInfoVMSupport.vmSupportCmdArgv to i8*), i64 24, i32 16, i1 false), !dbg !1093
  %6 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0, !dbg !1094
  %7 = load i8*, i8** %6, align 16, !dbg !1094
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i32 0, i32 0), i8* %7), !dbg !1095
  %8 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i32 0, i32 0, !dbg !1096
  %9 = call i32 @g_spawn_async(i8* null, i8** %8, i8** null, i32 28, void (i8*)* null, i8* null, i32* null, %struct._GError** null), !dbg !1098
  %10 = icmp ne i32 %9, 0, !dbg !1098
  br i1 %10, label %14, label %11, !dbg !1099

; <label>:11:                                     ; preds = %1
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i32 0, i32 0)), !dbg !1100
  %12 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !1102
  %13 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i32 0, i32 0), i32 0), !dbg !1103
  store i32 %13, i32* %2, align 4, !dbg !1104
  br label %17, !dbg !1104

; <label>:14:                                     ; preds = %1
  %15 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !1105
  %16 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.47, i32 0, i32 0), i32 1), !dbg !1106
  store i32 %16, i32* %2, align 4, !dbg !1107
  br label %17, !dbg !1107

; <label>:17:                                     ; preds = %14, %11
  %18 = load i32, i32* %2, align 4, !dbg !1108
  ret i32 %18, !dbg !1108
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define internal %struct._GArray* @GuestInfoServerSendCaps(i8*, %struct.ToolsAppCtx*, i32, i8*) #0 !dbg !1109 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ToolsAppCtx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1112, metadata !539), !dbg !1113
  store %struct.ToolsAppCtx* %1, %struct.ToolsAppCtx** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %6, metadata !1114, metadata !539), !dbg !1115
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1116, metadata !539), !dbg !1117
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1118, metadata !539), !dbg !1119
  %9 = load i32, i32* %7, align 4, !dbg !1120
  %10 = icmp ne i32 %9, 0, !dbg !1120
  br i1 %10, label %11, label %13, !dbg !1122

; <label>:11:                                     ; preds = %4
  %12 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %6, align 8, !dbg !1123
  call void @SendUptime(%struct.ToolsAppCtx* %12), !dbg !1125
  br label %13, !dbg !1126

; <label>:13:                                     ; preds = %11, %4
  ret %struct._GArray* null, !dbg !1127
}

; Function Attrs: nounwind uwtable
define internal void @GuestInfoServerConfReload(i8*, %struct.ToolsAppCtx*, i8*) #0 !dbg !1128 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ToolsAppCtx*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1131, metadata !539), !dbg !1132
  store %struct.ToolsAppCtx* %1, %struct.ToolsAppCtx** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %5, metadata !1133, metadata !539), !dbg !1134
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1135, metadata !539), !dbg !1136
  %7 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %5, align 8, !dbg !1137
  call void @TweakGatherLoops(%struct.ToolsAppCtx* %7, i32 1), !dbg !1138
  ret void, !dbg !1139
}

; Function Attrs: nounwind uwtable
define internal void @GuestInfoServerIOFreeze(i8*, %struct.ToolsAppCtx*, i32, i8*) #0 !dbg !1140 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ToolsAppCtx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1143, metadata !539), !dbg !1144
  store %struct.ToolsAppCtx* %1, %struct.ToolsAppCtx** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %6, metadata !1145, metadata !539), !dbg !1146
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1147, metadata !539), !dbg !1148
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1149, metadata !539), !dbg !1150
  %9 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %6, align 8, !dbg !1151
  %10 = load i32, i32* %7, align 4, !dbg !1152
  %11 = icmp ne i32 %10, 0, !dbg !1153
  %12 = xor i1 %11, true, !dbg !1153
  %13 = zext i1 %12 to i32, !dbg !1153
  call void @TweakGatherLoops(%struct.ToolsAppCtx* %9, i32 %13), !dbg !1154
  ret void, !dbg !1155
}

; Function Attrs: nounwind uwtable
define internal void @GuestInfoServerReset(i8*, %struct.ToolsAppCtx*, i8*) #0 !dbg !1156 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ToolsAppCtx*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1157, metadata !539), !dbg !1158
  store %struct.ToolsAppCtx* %1, %struct.ToolsAppCtx** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %5, metadata !1159, metadata !539), !dbg !1160
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1161, metadata !539), !dbg !1162
  store i8 1, i8* @gVMResumed, align 1, !dbg !1163
  store i64 0, i64* @gGuestInfoLastGatherTime, align 8, !dbg !1164
  ret void, !dbg !1165
}

; Function Attrs: nounwind uwtable
define internal i32 @GuestInfoServerSetOption(i8*, %struct.ToolsAppCtx*, i8*, i8*, i8*) #0 !dbg !1166 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ToolsAppCtx*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1169, metadata !539), !dbg !1170
  store %struct.ToolsAppCtx* %1, %struct.ToolsAppCtx** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %7, metadata !1171, metadata !539), !dbg !1172
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1173, metadata !539), !dbg !1174
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1175, metadata !539), !dbg !1176
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1177, metadata !539), !dbg !1178
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1179, metadata !539), !dbg !1180
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1181, metadata !539), !dbg !1182
  store i8 0, i8* %12, align 1, !dbg !1182
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1183, metadata !539), !dbg !1184
  %14 = load i8*, i8** %8, align 8, !dbg !1185
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0)) #8, !dbg !1187
  %16 = icmp ne i32 %15, 0, !dbg !1188
  br i1 %16, label %17, label %18, !dbg !1189

; <label>:17:                                     ; preds = %5
  br label %43, !dbg !1190

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !1192
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0)) #8, !dbg !1194
  %21 = icmp eq i32 %20, 0, !dbg !1195
  br i1 %21, label %22, label %23, !dbg !1196

; <label>:22:                                     ; preds = %18
  store i8 1, i8* %12, align 1, !dbg !1197
  br label %43, !dbg !1199

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %9, align 8, !dbg !1200
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0)) #8, !dbg !1202
  %26 = icmp ne i32 %25, 0, !dbg !1203
  br i1 %26, label %27, label %28, !dbg !1204

; <label>:27:                                     ; preds = %23
  br label %43, !dbg !1205

; <label>:28:                                     ; preds = %23
  %29 = call i8* @GuestInfo_GetPrimaryIP(), !dbg !1207
  store i8* %29, i8** %11, align 8, !dbg !1208
  %30 = load i8*, i8** %11, align 8, !dbg !1209
  %31 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.53, i32 0, i32 0), i8* %30), !dbg !1210
  store i8* %31, i8** %13, align 8, !dbg !1211
  %32 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %7, align 8, !dbg !1212
  %33 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %32, i32 0, i32 5, !dbg !1213
  %34 = load %struct._RpcChannel*, %struct._RpcChannel** %33, align 8, !dbg !1213
  %35 = load i8*, i8** %13, align 8, !dbg !1214
  %36 = load i8*, i8** %13, align 8, !dbg !1215
  %37 = call i64 @strlen(i8* %36) #8, !dbg !1216
  %38 = add i64 %37, 1, !dbg !1217
  %39 = call i32 @RpcChannel_Send(%struct._RpcChannel* %34, i8* %35, i64 %38, i8** null, i64* null), !dbg !1218
  %40 = trunc i32 %39 to i8, !dbg !1220
  store i8 %40, i8* %12, align 1, !dbg !1221
  %41 = load i8*, i8** %11, align 8, !dbg !1222
  call void @vm_free(i8* %41), !dbg !1223
  %42 = load i8*, i8** %13, align 8, !dbg !1224
  call void @g_free(i8* %42), !dbg !1225
  br label %43, !dbg !1225

; <label>:43:                                     ; preds = %28, %27, %22, %17
  %44 = load i8, i8* %12, align 1, !dbg !1226
  %45 = sext i8 %44 to i32, !dbg !1227
  ret i32 %45, !dbg !1228
}

; Function Attrs: nounwind uwtable
define internal void @GuestInfoServerShutdown(i8*, %struct.ToolsAppCtx*, i8*) #0 !dbg !1229 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ToolsAppCtx*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1230, metadata !539), !dbg !1231
  store %struct.ToolsAppCtx* %1, %struct.ToolsAppCtx** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %5, metadata !1232, metadata !539), !dbg !1233
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1234, metadata !539), !dbg !1235
  call void @GuestInfoClearCache(), !dbg !1236
  call void @GuestInfo_SetIfaceExcludeList(i8** null), !dbg !1237
  %7 = load %struct._GSource*, %struct._GSource** @gatherInfoTimeoutSource, align 8, !dbg !1238
  %8 = icmp ne %struct._GSource* %7, null, !dbg !1240
  br i1 %8, label %9, label %11, !dbg !1241

; <label>:9:                                      ; preds = %3
  %10 = load %struct._GSource*, %struct._GSource** @gatherInfoTimeoutSource, align 8, !dbg !1242
  call void @g_source_destroy(%struct._GSource* %10), !dbg !1244
  store %struct._GSource* null, %struct._GSource** @gatherInfoTimeoutSource, align 8, !dbg !1245
  br label %11, !dbg !1246

; <label>:11:                                     ; preds = %9, %3
  %12 = load %struct._GSource*, %struct._GSource** @gatherStatsTimeoutSource, align 8, !dbg !1247
  %13 = icmp ne %struct._GSource* %12, null, !dbg !1249
  br i1 %13, label %14, label %16, !dbg !1250

; <label>:14:                                     ; preds = %11
  %15 = load %struct._GSource*, %struct._GSource** @gatherStatsTimeoutSource, align 8, !dbg !1251
  call void @g_source_destroy(%struct._GSource* %15), !dbg !1253
  store %struct._GSource* null, %struct._GSource** @gatherStatsTimeoutSource, align 8, !dbg !1254
  br label %16, !dbg !1255

; <label>:16:                                     ; preds = %14, %11
  call void @GuestInfo_StatProviderShutdown(), !dbg !1256
  ret void, !dbg !1257
}

declare %struct._GArray* @VMTools_WrapArray(i8*, i32, i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define internal void @TweakGatherLoops(%struct.ToolsAppCtx*, i32) #0 !dbg !1258 {
  %3 = alloca %struct.ToolsAppCtx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %3, metadata !1261, metadata !539), !dbg !1262
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1263, metadata !539), !dbg !1264
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1265, metadata !539), !dbg !1266
  %6 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !1267
  %7 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %6, i32 0, i32 6, !dbg !1268
  %8 = load %struct._GKeyFile*, %struct._GKeyFile** %7, align 8, !dbg !1268
  %9 = call i32 @g_key_file_get_boolean(%struct._GKeyFile* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i32 0, i32 0), %struct._GError** null), !dbg !1269
  %10 = icmp ne i32 %9, 0, !dbg !1270
  %11 = xor i1 %10, true, !dbg !1270
  %12 = zext i1 %11 to i32, !dbg !1270
  store i32 %12, i32* %5, align 4, !dbg !1271
  %13 = load i32, i32* %5, align 4, !dbg !1272
  %14 = icmp ne i32 %13, 0, !dbg !1272
  br i1 %14, label %15, label %18, !dbg !1274

; <label>:15:                                     ; preds = %2
  %16 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !1275
  %17 = load i32, i32* %4, align 4, !dbg !1277
  call void @TweakGatherLoop(%struct.ToolsAppCtx* %16, i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i32 0, i32 0), i32 20, i32 (i8*)* @GuestInfo_StatProviderPoll, i32* @guestInfoStatsInterval, %struct._GSource** @gatherStatsTimeoutSource), !dbg !1278
  br label %24, !dbg !1279

; <label>:18:                                     ; preds = %2
  %19 = load %struct._GSource*, %struct._GSource** @gatherStatsTimeoutSource, align 8, !dbg !1280
  %20 = icmp ne %struct._GSource* %19, null, !dbg !1283
  br i1 %20, label %21, label %23, !dbg !1284

; <label>:21:                                     ; preds = %18
  %22 = load %struct._GSource*, %struct._GSource** @gatherStatsTimeoutSource, align 8, !dbg !1285
  call void @g_source_destroy(%struct._GSource* %22), !dbg !1287
  store %struct._GSource* null, %struct._GSource** @gatherStatsTimeoutSource, align 8, !dbg !1288
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.56, i32 0, i32 0)), !dbg !1289
  br label %23, !dbg !1290

; <label>:23:                                     ; preds = %21, %18
  br label %24

; <label>:24:                                     ; preds = %23, %15
  %25 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !1291
  %26 = load i32, i32* %4, align 4, !dbg !1292
  call void @TweakGatherLoop(%struct.ToolsAppCtx* %25, i32 %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), i32 30, i32 (i8*)* @GuestInfoGather, i32* @guestInfoPollInterval, %struct._GSource** @gatherInfoTimeoutSource), !dbg !1293
  ret void, !dbg !1294
}

; Function Attrs: nounwind uwtable
define internal void @GuestInfoClearCache() #0 !dbg !1295 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1296, metadata !539), !dbg !1297
  store i32 0, i32* %1, align 4, !dbg !1298
  br label %2, !dbg !1300

; <label>:2:                                      ; preds = %13, %0
  %3 = load i32, i32* %1, align 4, !dbg !1301
  %4 = icmp slt i32 %3, 11, !dbg !1304
  br i1 %4, label %5, label %16, !dbg !1305

; <label>:5:                                      ; preds = %2
  %6 = load i32, i32* %1, align 4, !dbg !1306
  %7 = sext i32 %6 to i64, !dbg !1308
  %8 = getelementptr inbounds [11 x i8*], [11 x i8*]* getelementptr inbounds (%struct._GuestInfoCache, %struct._GuestInfoCache* @gInfoCache, i32 0, i32 0), i64 0, i64 %7, !dbg !1308
  %9 = load i8*, i8** %8, align 8, !dbg !1308
  call void @free(i8* %9) #7, !dbg !1309
  %10 = load i32, i32* %1, align 4, !dbg !1310
  %11 = sext i32 %10 to i64, !dbg !1311
  %12 = getelementptr inbounds [11 x i8*], [11 x i8*]* getelementptr inbounds (%struct._GuestInfoCache, %struct._GuestInfoCache* @gInfoCache, i32 0, i32 0), i64 0, i64 %11, !dbg !1311
  store i8* null, i8** %12, align 8, !dbg !1312
  br label %13, !dbg !1313

; <label>:13:                                     ; preds = %5
  %14 = load i32, i32* %1, align 4, !dbg !1314
  %15 = add nsw i32 %14, 1, !dbg !1314
  store i32 %15, i32* %1, align 4, !dbg !1314
  br label %2, !dbg !1316, !llvm.loop !1317

; <label>:16:                                     ; preds = %2
  %17 = load %struct._DiskInfo*, %struct._DiskInfo** getelementptr inbounds (%struct._GuestInfoCache, %struct._GuestInfoCache* @gInfoCache, i32 0, i32 2), align 8, !dbg !1319
  call void @GuestInfo_FreeDiskInfo(%struct._DiskInfo* %17), !dbg !1320
  store %struct._DiskInfo* null, %struct._DiskInfo** getelementptr inbounds (%struct._GuestInfoCache, %struct._GuestInfoCache* @gInfoCache, i32 0, i32 2), align 8, !dbg !1321
  %18 = load %struct.NicInfoV3*, %struct.NicInfoV3** getelementptr inbounds (%struct._GuestInfoCache, %struct._GuestInfoCache* @gInfoCache, i32 0, i32 1), align 8, !dbg !1322
  call void @GuestInfo_FreeNicInfo(%struct.NicInfoV3* %18), !dbg !1323
  store %struct.NicInfoV3* null, %struct.NicInfoV3** getelementptr inbounds (%struct._GuestInfoCache, %struct._GuestInfoCache* @gInfoCache, i32 0, i32 1), align 8, !dbg !1324
  store i32 0, i32* getelementptr inbounds (%struct._GuestInfoCache, %struct._GuestInfoCache* @gInfoCache, i32 0, i32 3), align 8, !dbg !1325
  ret void, !dbg !1326
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal signext i8 @SetGuestInfo(%struct.ToolsAppCtx*, i32, i8*) #0 !dbg !1327 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.ToolsAppCtx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %5, metadata !1330, metadata !539), !dbg !1331
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1332, metadata !539), !dbg !1333
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1334, metadata !539), !dbg !1335
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1336, metadata !539), !dbg !1337
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1338, metadata !539), !dbg !1339
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1340, metadata !539), !dbg !1341
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1342, metadata !539), !dbg !1343
  %12 = load i32, i32* %6, align 4, !dbg !1344
  %13 = load i8*, i8** %7, align 8, !dbg !1345
  %14 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i32 32, i32 %12, i32 32, i8* %13), !dbg !1346
  store i8* %14, i8** %10, align 8, !dbg !1347
  %15 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %5, align 8, !dbg !1348
  %16 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %15, i32 0, i32 5, !dbg !1349
  %17 = load %struct._RpcChannel*, %struct._RpcChannel** %16, align 8, !dbg !1349
  %18 = load i8*, i8** %10, align 8, !dbg !1350
  %19 = load i8*, i8** %10, align 8, !dbg !1351
  %20 = call i64 @strlen(i8* %19) #8, !dbg !1352
  %21 = add i64 %20, 1, !dbg !1353
  %22 = call i32 @RpcChannel_Send(%struct._RpcChannel* %17, i8* %18, i64 %21, i8** %9, i64* %11), !dbg !1354
  %23 = trunc i32 %22 to i8, !dbg !1356
  store i8 %23, i8* %8, align 1, !dbg !1357
  %24 = load i8*, i8** %10, align 8, !dbg !1358
  call void @g_free(i8* %24), !dbg !1359
  %25 = load i8, i8* %8, align 1, !dbg !1360
  %26 = icmp ne i8 %25, 0, !dbg !1360
  br i1 %26, label %36, label %27, !dbg !1362

; <label>:27:                                     ; preds = %3
  %28 = load i8*, i8** %9, align 8, !dbg !1363
  %29 = icmp ne i8* %28, null, !dbg !1363
  br i1 %29, label %30, label %32, !dbg !1363

; <label>:30:                                     ; preds = %27
  %31 = load i8*, i8** %9, align 8, !dbg !1365
  br label %33, !dbg !1367

; <label>:32:                                     ; preds = %27
  br label %33, !dbg !1368

; <label>:33:                                     ; preds = %32, %30
  %34 = phi i8* [ %31, %30 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), %32 ], !dbg !1370
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i32 0, i32 0), i8* %34), !dbg !1372
  %35 = load i8*, i8** %9, align 8, !dbg !1373
  call void @vm_free(i8* %35), !dbg !1374
  store i8 0, i8* %4, align 1, !dbg !1375
  br label %45, !dbg !1375

; <label>:36:                                     ; preds = %3
  %37 = load i8*, i8** %9, align 8, !dbg !1376
  %38 = load i8, i8* %37, align 1, !dbg !1377
  %39 = sext i8 %38 to i32, !dbg !1377
  %40 = icmp eq i32 %39, 0, !dbg !1378
  %41 = zext i1 %40 to i32, !dbg !1378
  %42 = trunc i32 %41 to i8, !dbg !1379
  store i8 %42, i8* %8, align 1, !dbg !1380
  %43 = load i8*, i8** %9, align 8, !dbg !1381
  call void @vm_free(i8* %43), !dbg !1382
  %44 = load i8, i8* %8, align 1, !dbg !1383
  store i8 %44, i8* %4, align 1, !dbg !1384
  br label %45, !dbg !1384

; <label>:45:                                     ; preds = %36, %33
  %46 = load i8, i8* %4, align 1, !dbg !1385
  ret i8 %46, !dbg !1385
}

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i8* @UtilSafeStrdup0(i8*) #2

; Function Attrs: nounwind uwtable
define internal signext i8 @GuestInfoSendNicInfo(%struct.ToolsAppCtx*, %struct.NicInfoV3*) #0 !dbg !1386 {
  %3 = alloca %struct.ToolsAppCtx*, align 8
  %4 = alloca %struct.NicInfoV3*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.GuestNicProto, align 8
  %7 = alloca %struct.NicInfoV3*, align 8
  %8 = alloca %struct.GuestNicList*, align 8
  %9 = alloca %struct.GuestNicInfoV1, align 4
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %3, metadata !1389, metadata !539), !dbg !1390
  store %struct.NicInfoV3* %1, %struct.NicInfoV3** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.NicInfoV3** %4, metadata !1391, metadata !539), !dbg !1392
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1393, metadata !539), !dbg !1394
  store i8 0, i8* %5, align 1, !dbg !1394
  call void @llvm.dbg.declare(metadata %struct.GuestNicProto* %6, metadata !1395, metadata !539), !dbg !1415
  %10 = bitcast %struct.GuestNicProto* %6 to i8*, !dbg !1415
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 16, i32 8, i1 false), !dbg !1415
  call void @llvm.dbg.declare(metadata %struct.NicInfoV3** %7, metadata !1416, metadata !539), !dbg !1417
  store %struct.NicInfoV3* null, %struct.NicInfoV3** %7, align 8, !dbg !1417
  br label %11, !dbg !1418, !llvm.loop !1419

; <label>:11:                                     ; preds = %78, %2
  %12 = load i32, i32* getelementptr inbounds (%struct._GuestInfoCache, %struct._GuestInfoCache* @gInfoCache, i32 0, i32 3), align 8, !dbg !1420
  switch i32 %12, label %65 [
    i32 0, label %13
    i32 1, label %23
    i32 2, label %35
    i32 3, label %57
  ], !dbg !1422

; <label>:13:                                     ; preds = %11
  %14 = getelementptr inbounds %struct.GuestNicProto, %struct.GuestNicProto* %6, i32 0, i32 0, !dbg !1423
  store i32 3, i32* %14, align 8, !dbg !1425
  %15 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !1426
  %16 = getelementptr inbounds %struct.GuestNicProto, %struct.GuestNicProto* %6, i32 0, i32 1, !dbg !1427
  %17 = bitcast %union.anon* %16 to %struct.NicInfoV3**, !dbg !1428
  store %struct.NicInfoV3* %15, %struct.NicInfoV3** %17, align 8, !dbg !1429
  %18 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !1430
  %19 = call signext i8 @GuestInfoSendNicInfoXdr(%struct.ToolsAppCtx* %18, %struct.GuestNicProto* %6, i32 10), !dbg !1432
  %20 = icmp ne i8 %19, 0, !dbg !1432
  br i1 %20, label %21, label %22, !dbg !1433

; <label>:21:                                     ; preds = %13
  store i8 1, i8* %5, align 1, !dbg !1434
  br label %22, !dbg !1436

; <label>:22:                                     ; preds = %21, %13
  br label %70, !dbg !1437

; <label>:23:                                     ; preds = %11
  %24 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !1438
  %25 = call %struct.NicInfoV3* @GuestNicInfoV3ToV3_64(%struct.NicInfoV3* %24), !dbg !1439
  store %struct.NicInfoV3* %25, %struct.NicInfoV3** %7, align 8, !dbg !1440
  %26 = getelementptr inbounds %struct.GuestNicProto, %struct.GuestNicProto* %6, i32 0, i32 0, !dbg !1441
  store i32 3, i32* %26, align 8, !dbg !1442
  %27 = load %struct.NicInfoV3*, %struct.NicInfoV3** %7, align 8, !dbg !1443
  %28 = getelementptr inbounds %struct.GuestNicProto, %struct.GuestNicProto* %6, i32 0, i32 1, !dbg !1444
  %29 = bitcast %union.anon* %28 to %struct.NicInfoV3**, !dbg !1445
  store %struct.NicInfoV3* %27, %struct.NicInfoV3** %29, align 8, !dbg !1446
  %30 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !1447
  %31 = call signext i8 @GuestInfoSendNicInfoXdr(%struct.ToolsAppCtx* %30, %struct.GuestNicProto* %6, i32 9), !dbg !1449
  %32 = icmp ne i8 %31, 0, !dbg !1449
  br i1 %32, label %33, label %34, !dbg !1450

; <label>:33:                                     ; preds = %23
  store i8 1, i8* %5, align 1, !dbg !1451
  br label %34, !dbg !1453

; <label>:34:                                     ; preds = %33, %23
  br label %70, !dbg !1454

; <label>:35:                                     ; preds = %11
  %36 = load %struct.NicInfoV3*, %struct.NicInfoV3** %7, align 8, !dbg !1455
  %37 = icmp ne %struct.NicInfoV3* %36, null, !dbg !1455
  br i1 %37, label %41, label %38, !dbg !1457

; <label>:38:                                     ; preds = %35
  %39 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !1458
  %40 = call %struct.NicInfoV3* @GuestNicInfoV3ToV3_64(%struct.NicInfoV3* %39), !dbg !1460
  store %struct.NicInfoV3* %40, %struct.NicInfoV3** %7, align 8, !dbg !1461
  br label %41, !dbg !1462

; <label>:41:                                     ; preds = %38, %35
  call void @llvm.dbg.declare(metadata %struct.GuestNicList** %8, metadata !1463, metadata !539), !dbg !1467
  %42 = load %struct.NicInfoV3*, %struct.NicInfoV3** %7, align 8, !dbg !1468
  %43 = call %struct.GuestNicList* @NicInfoV3ToV2(%struct.NicInfoV3* %42), !dbg !1469
  store %struct.GuestNicList* %43, %struct.GuestNicList** %8, align 8, !dbg !1467
  %44 = getelementptr inbounds %struct.GuestNicProto, %struct.GuestNicProto* %6, i32 0, i32 0, !dbg !1470
  store i32 2, i32* %44, align 8, !dbg !1471
  %45 = load %struct.GuestNicList*, %struct.GuestNicList** %8, align 8, !dbg !1472
  %46 = getelementptr inbounds %struct.GuestNicProto, %struct.GuestNicProto* %6, i32 0, i32 1, !dbg !1473
  %47 = bitcast %union.anon* %46 to %struct.GuestNicList**, !dbg !1474
  store %struct.GuestNicList* %45, %struct.GuestNicList** %47, align 8, !dbg !1475
  %48 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !1476
  %49 = call signext i8 @GuestInfoSendNicInfoXdr(%struct.ToolsAppCtx* %48, %struct.GuestNicProto* %6, i32 9), !dbg !1478
  %50 = icmp ne i8 %49, 0, !dbg !1478
  br i1 %50, label %51, label %52, !dbg !1479

; <label>:51:                                     ; preds = %41
  store i8 1, i8* %5, align 1, !dbg !1480
  br label %52, !dbg !1482

; <label>:52:                                     ; preds = %51, %41
  %53 = load %struct.GuestNicList*, %struct.GuestNicList** %8, align 8, !dbg !1483
  %54 = bitcast %struct.GuestNicList* %53 to i8*, !dbg !1484
  call void @xdr_free(i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.GuestNicList*)* @xdr_GuestNicList to i32 (%struct.XDR*, i8*, ...)*), i8* %54) #7, !dbg !1485
  %55 = load %struct.GuestNicList*, %struct.GuestNicList** %8, align 8, !dbg !1486
  %56 = bitcast %struct.GuestNicList* %55 to i8*, !dbg !1486
  call void @free(i8* %56) #7, !dbg !1487
  br label %70, !dbg !1488

; <label>:57:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata %struct.GuestNicInfoV1* %9, metadata !1489, metadata !539), !dbg !1491
  %58 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !1492
  call void @GuestInfoConvertNicInfoToNicInfoV1(%struct.NicInfoV3* %58, %struct.GuestNicInfoV1* %9), !dbg !1493
  %59 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !1494
  %60 = bitcast %struct.GuestNicInfoV1* %9 to i8*, !dbg !1496
  %61 = call signext i8 @GuestInfoSendData(%struct.ToolsAppCtx* %59, i8* %60, i32 2436, i32 2), !dbg !1497
  %62 = icmp ne i8 %61, 0, !dbg !1497
  br i1 %62, label %63, label %64, !dbg !1498

; <label>:63:                                     ; preds = %57
  store i8 1, i8* %5, align 1, !dbg !1499
  br label %64, !dbg !1501

; <label>:64:                                     ; preds = %63, %57
  br label %70, !dbg !1502

; <label>:65:                                     ; preds = %11
  br label %66, !dbg !1503, !llvm.loop !1504

; <label>:66:                                     ; preds = %65
  %67 = load i32, i32* getelementptr inbounds (%struct._GuestInfoCache, %struct._GuestInfoCache* @gInfoCache, i32 0, i32 3), align 8, !dbg !1505
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i32 0, i32 0), i32 %67), !dbg !1508
  br label %68, !dbg !1509

; <label>:68:                                     ; preds = %68, %66
  br label %68, !dbg !1510, !llvm.loop !1514
                                                  ; No predecessors!
  br label %70, !dbg !1516

; <label>:70:                                     ; preds = %69, %64, %52, %34, %22
  br label %71, !dbg !1517

; <label>:71:                                     ; preds = %70
  %72 = load i8, i8* %5, align 1, !dbg !1518
  %73 = icmp ne i8 %72, 0, !dbg !1518
  br i1 %73, label %78, label %74, !dbg !1520

; <label>:74:                                     ; preds = %71
  %75 = load i32, i32* getelementptr inbounds (%struct._GuestInfoCache, %struct._GuestInfoCache* @gInfoCache, i32 0, i32 3), align 8, !dbg !1521
  %76 = add i32 %75, 1, !dbg !1521
  store i32 %76, i32* getelementptr inbounds (%struct._GuestInfoCache, %struct._GuestInfoCache* @gInfoCache, i32 0, i32 3), align 8, !dbg !1521
  %77 = icmp ult i32 %76, 4, !dbg !1523
  br label %78

; <label>:78:                                     ; preds = %74, %71
  %79 = phi i1 [ false, %71 ], [ %77, %74 ]
  br i1 %79, label %11, label %80, !dbg !1524, !llvm.loop !1419

; <label>:80:                                     ; preds = %78
  %81 = load %struct.NicInfoV3*, %struct.NicInfoV3** %7, align 8, !dbg !1526
  %82 = icmp ne %struct.NicInfoV3* %81, null, !dbg !1526
  br i1 %82, label %83, label %91, !dbg !1528

; <label>:83:                                     ; preds = %80
  %84 = load %struct.NicInfoV3*, %struct.NicInfoV3** %7, align 8, !dbg !1529
  %85 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %84, i32 0, i32 0, !dbg !1531
  %86 = getelementptr inbounds %struct.anon, %struct.anon* %85, i32 0, i32 1, !dbg !1532
  %87 = load %struct.GuestNicV3*, %struct.GuestNicV3** %86, align 8, !dbg !1532
  %88 = bitcast %struct.GuestNicV3* %87 to i8*, !dbg !1529
  call void @g_free(i8* %88), !dbg !1533
  %89 = load %struct.NicInfoV3*, %struct.NicInfoV3** %7, align 8, !dbg !1534
  %90 = bitcast %struct.NicInfoV3* %89 to i8*, !dbg !1534
  call void @g_free(i8* %90), !dbg !1535
  br label %91, !dbg !1536

; <label>:91:                                     ; preds = %83, %80
  %92 = load i8, i8* %5, align 1, !dbg !1537
  %93 = icmp ne i8 %92, 0, !dbg !1537
  br i1 %93, label %94, label %96, !dbg !1539

; <label>:94:                                     ; preds = %91
  %95 = load i32, i32* getelementptr inbounds (%struct._GuestInfoCache, %struct._GuestInfoCache* @gInfoCache, i32 0, i32 3), align 8, !dbg !1540
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i32 0, i32 0), i32 %95), !dbg !1542
  br label %100, !dbg !1543

; <label>:96:                                     ; preds = %91
  store i32 0, i32* getelementptr inbounds (%struct._GuestInfoCache, %struct._GuestInfoCache* @gInfoCache, i32 0, i32 3), align 8, !dbg !1544
  %97 = load i32, i32* getelementptr inbounds (%struct._GuestInfoCache, %struct._GuestInfoCache* @gInfoCache, i32 0, i32 3), align 8, !dbg !1546
  %98 = load i8, i8* %5, align 1, !dbg !1547
  %99 = sext i8 %98 to i32, !dbg !1547
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.30, i32 0, i32 0), i32 %97, i32 %99), !dbg !1548
  br label %100

; <label>:100:                                    ; preds = %96, %94
  %101 = load i8, i8* %5, align 1, !dbg !1549
  ret i8 %101, !dbg !1550
}

; Function Attrs: nounwind uwtable
define internal signext i8 @GuestInfoSendMemoryInfo(%struct.ToolsAppCtx*, i64, i8*) #0 !dbg !1551 {
  %4 = alloca %struct.ToolsAppCtx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [32 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %4, metadata !1554, metadata !539), !dbg !1555
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1556, metadata !539), !dbg !1557
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1558, metadata !539), !dbg !1559
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1560, metadata !539), !dbg !1561
  call void @llvm.dbg.declare(metadata [32 x i8]* %8, metadata !1562, metadata !539), !dbg !1566
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1567, metadata !539), !dbg !1568
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1569, metadata !539), !dbg !1570
  call void @llvm.dbg.declare(metadata i8* %11, metadata !1571, metadata !539), !dbg !1572
  store i8 0, i8* %11, align 1, !dbg !1572
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i32 0, i32 0, !dbg !1573
  %13 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* %12, i64 32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i32 8), !dbg !1574
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i32 0, i32 0, !dbg !1575
  %15 = call i64 @strlen(i8* %14) #8, !dbg !1576
  store i64 %15, i64* %9, align 8, !dbg !1577
  %16 = load i64, i64* %9, align 8, !dbg !1578
  %17 = load i64, i64* %5, align 8, !dbg !1579
  %18 = add i64 %16, %17, !dbg !1580
  store i64 %18, i64* %10, align 8, !dbg !1581
  %19 = load i64, i64* %10, align 8, !dbg !1582
  %20 = call noalias i8* @g_malloc(i64 %19), !dbg !1583
  store i8* %20, i8** %7, align 8, !dbg !1584
  %21 = load i8*, i8** %7, align 8, !dbg !1585
  %22 = icmp eq i8* %21, null, !dbg !1587
  br i1 %22, label %23, label %24, !dbg !1588

; <label>:23:                                     ; preds = %3
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i32 0, i32 0)), !dbg !1589
  br label %41, !dbg !1591

; <label>:24:                                     ; preds = %3
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i32 0, i32 0)), !dbg !1592
  %25 = load i8*, i8** %7, align 8, !dbg !1594
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i32 0, i32 0, !dbg !1595
  %27 = load i64, i64* %9, align 8, !dbg !1596
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 %27, i32 1, i1 false), !dbg !1595
  %28 = load i8*, i8** %7, align 8, !dbg !1597
  %29 = load i64, i64* %9, align 8, !dbg !1598
  %30 = getelementptr inbounds i8, i8* %28, i64 %29, !dbg !1599
  %31 = load i8*, i8** %6, align 8, !dbg !1600
  %32 = load i64, i64* %5, align 8, !dbg !1601
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 %32, i32 1, i1 false), !dbg !1602
  %33 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %4, align 8, !dbg !1603
  %34 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %33, i32 0, i32 5, !dbg !1604
  %35 = load %struct._RpcChannel*, %struct._RpcChannel** %34, align 8, !dbg !1604
  %36 = load i8*, i8** %7, align 8, !dbg !1605
  %37 = load i64, i64* %10, align 8, !dbg !1606
  %38 = call i32 @RpcChannel_Send(%struct._RpcChannel* %35, i8* %36, i64 %37, i8** null, i64* null), !dbg !1607
  %39 = trunc i32 %38 to i8, !dbg !1607
  store i8 %39, i8* %11, align 1, !dbg !1608
  %40 = load i8*, i8** %7, align 8, !dbg !1609
  call void @g_free(i8* %40), !dbg !1610
  br label %41

; <label>:41:                                     ; preds = %24, %23
  %42 = load i8, i8* %11, align 1, !dbg !1611
  %43 = icmp ne i8 %42, 0, !dbg !1611
  br i1 %43, label %44, label %45, !dbg !1613

; <label>:44:                                     ; preds = %41
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.36, i32 0, i32 0)), !dbg !1614
  br label %46, !dbg !1616

; <label>:45:                                     ; preds = %41
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.37, i32 0, i32 0)), !dbg !1617
  br label %46

; <label>:46:                                     ; preds = %45, %44
  %47 = load i8, i8* %11, align 1, !dbg !1619
  ret i8 %47, !dbg !1620
}

; Function Attrs: nounwind uwtable
define internal signext i8 @DiskInfoChanged(%struct._DiskInfo*) #0 !dbg !1621 {
  %2 = alloca i8, align 1
  %3 = alloca %struct._DiskInfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._DiskInfo*, align 8
  store %struct._DiskInfo* %0, %struct._DiskInfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._DiskInfo** %3, metadata !1626, metadata !539), !dbg !1627
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1628, metadata !539), !dbg !1629
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1630, metadata !539), !dbg !1631
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1632, metadata !539), !dbg !1633
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1634, metadata !539), !dbg !1635
  call void @llvm.dbg.declare(metadata %struct._DiskInfo** %8, metadata !1636, metadata !539), !dbg !1639
  %9 = load %struct._DiskInfo*, %struct._DiskInfo** getelementptr inbounds (%struct._GuestInfoCache, %struct._GuestInfoCache* @gInfoCache, i32 0, i32 2), align 8, !dbg !1640
  store %struct._DiskInfo* %9, %struct._DiskInfo** %8, align 8, !dbg !1641
  %10 = load %struct._DiskInfo*, %struct._DiskInfo** %8, align 8, !dbg !1642
  %11 = load %struct._DiskInfo*, %struct._DiskInfo** %3, align 8, !dbg !1644
  %12 = icmp eq %struct._DiskInfo* %10, %11, !dbg !1645
  br i1 %12, label %13, label %14, !dbg !1646

; <label>:13:                                     ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !1647
  br label %123, !dbg !1647

; <label>:14:                                     ; preds = %1
  %15 = load %struct._DiskInfo*, %struct._DiskInfo** %8, align 8, !dbg !1649
  %16 = icmp ne %struct._DiskInfo* %15, null, !dbg !1649
  br i1 %16, label %17, label %20, !dbg !1651

; <label>:17:                                     ; preds = %14
  %18 = load %struct._DiskInfo*, %struct._DiskInfo** %3, align 8, !dbg !1652
  %19 = icmp ne %struct._DiskInfo* %18, null, !dbg !1652
  br i1 %19, label %21, label %20, !dbg !1654

; <label>:20:                                     ; preds = %17, %14
  store i8 1, i8* %2, align 1, !dbg !1655
  br label %123, !dbg !1655

; <label>:21:                                     ; preds = %17
  br label %22

; <label>:22:                                     ; preds = %21
  %23 = load %struct._DiskInfo*, %struct._DiskInfo** %8, align 8, !dbg !1657
  %24 = getelementptr inbounds %struct._DiskInfo, %struct._DiskInfo* %23, i32 0, i32 0, !dbg !1659
  %25 = load i32, i32* %24, align 8, !dbg !1659
  %26 = load %struct._DiskInfo*, %struct._DiskInfo** %3, align 8, !dbg !1660
  %27 = getelementptr inbounds %struct._DiskInfo, %struct._DiskInfo* %26, i32 0, i32 0, !dbg !1661
  %28 = load i32, i32* %27, align 8, !dbg !1661
  %29 = icmp ne i32 %25, %28, !dbg !1662
  br i1 %29, label %30, label %31, !dbg !1663

; <label>:30:                                     ; preds = %22
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i32 0, i32 0)), !dbg !1664
  store i8 1, i8* %2, align 1, !dbg !1666
  br label %123, !dbg !1666

; <label>:31:                                     ; preds = %22
  store i32 0, i32* %4, align 4, !dbg !1667
  br label %32, !dbg !1669

; <label>:32:                                     ; preds = %119, %31
  %33 = load i32, i32* %4, align 4, !dbg !1670
  %34 = load %struct._DiskInfo*, %struct._DiskInfo** %8, align 8, !dbg !1673
  %35 = getelementptr inbounds %struct._DiskInfo, %struct._DiskInfo* %34, i32 0, i32 0, !dbg !1674
  %36 = load i32, i32* %35, align 8, !dbg !1674
  %37 = icmp ult i32 %33, %36, !dbg !1675
  br i1 %37, label %38, label %122, !dbg !1676

; <label>:38:                                     ; preds = %32
  %39 = load i32, i32* %4, align 4, !dbg !1677
  %40 = sext i32 %39 to i64, !dbg !1679
  %41 = load %struct._DiskInfo*, %struct._DiskInfo** %8, align 8, !dbg !1679
  %42 = getelementptr inbounds %struct._DiskInfo, %struct._DiskInfo* %41, i32 0, i32 1, !dbg !1680
  %43 = load %struct._PartitionEntry*, %struct._PartitionEntry** %42, align 8, !dbg !1680
  %44 = getelementptr inbounds %struct._PartitionEntry, %struct._PartitionEntry* %43, i64 %40, !dbg !1679
  %45 = getelementptr inbounds %struct._PartitionEntry, %struct._PartitionEntry* %44, i32 0, i32 2, !dbg !1681
  %46 = getelementptr inbounds [100 x i8], [100 x i8]* %45, i32 0, i32 0, !dbg !1679
  store i8* %46, i8** %5, align 8, !dbg !1682
  store i32 0, i32* %6, align 4, !dbg !1683
  br label %47, !dbg !1685

; <label>:47:                                     ; preds = %67, %38
  %48 = load i32, i32* %6, align 4, !dbg !1686
  %49 = load %struct._DiskInfo*, %struct._DiskInfo** %3, align 8, !dbg !1689
  %50 = getelementptr inbounds %struct._DiskInfo, %struct._DiskInfo* %49, i32 0, i32 0, !dbg !1690
  %51 = load i32, i32* %50, align 8, !dbg !1690
  %52 = icmp ult i32 %48, %51, !dbg !1691
  br i1 %52, label %53, label %70, !dbg !1692

; <label>:53:                                     ; preds = %47
  %54 = load i32, i32* %6, align 4, !dbg !1693
  %55 = sext i32 %54 to i64, !dbg !1696
  %56 = load %struct._DiskInfo*, %struct._DiskInfo** %3, align 8, !dbg !1696
  %57 = getelementptr inbounds %struct._DiskInfo, %struct._DiskInfo* %56, i32 0, i32 1, !dbg !1697
  %58 = load %struct._PartitionEntry*, %struct._PartitionEntry** %57, align 8, !dbg !1697
  %59 = getelementptr inbounds %struct._PartitionEntry, %struct._PartitionEntry* %58, i64 %55, !dbg !1696
  %60 = getelementptr inbounds %struct._PartitionEntry, %struct._PartitionEntry* %59, i32 0, i32 2, !dbg !1698
  %61 = getelementptr inbounds [100 x i8], [100 x i8]* %60, i32 0, i32 0, !dbg !1696
  %62 = load i8*, i8** %5, align 8, !dbg !1699
  %63 = call i32 @strncmp(i8* %61, i8* %62, i64 100) #8, !dbg !1700
  %64 = icmp ne i32 %63, 0, !dbg !1700
  br i1 %64, label %66, label %65, !dbg !1701

; <label>:65:                                     ; preds = %53
  br label %70, !dbg !1702

; <label>:66:                                     ; preds = %53
  br label %67, !dbg !1704

; <label>:67:                                     ; preds = %66
  %68 = load i32, i32* %6, align 4, !dbg !1705
  %69 = add nsw i32 %68, 1, !dbg !1705
  store i32 %69, i32* %6, align 4, !dbg !1705
  br label %47, !dbg !1707, !llvm.loop !1708

; <label>:70:                                     ; preds = %65, %47
  %71 = load i32, i32* %6, align 4, !dbg !1710
  store i32 %71, i32* %7, align 4, !dbg !1711
  %72 = load i32, i32* %7, align 4, !dbg !1712
  %73 = load %struct._DiskInfo*, %struct._DiskInfo** %3, align 8, !dbg !1714
  %74 = getelementptr inbounds %struct._DiskInfo, %struct._DiskInfo* %73, i32 0, i32 0, !dbg !1715
  %75 = load i32, i32* %74, align 8, !dbg !1715
  %76 = icmp eq i32 %72, %75, !dbg !1716
  br i1 %76, label %77, label %79, !dbg !1717

; <label>:77:                                     ; preds = %70
  %78 = load i8*, i8** %5, align 8, !dbg !1718
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0), i8* %78), !dbg !1720
  store i8 1, i8* %2, align 1, !dbg !1721
  br label %123, !dbg !1721

; <label>:79:                                     ; preds = %70
  %80 = load i32, i32* %7, align 4, !dbg !1722
  %81 = sext i32 %80 to i64, !dbg !1725
  %82 = load %struct._DiskInfo*, %struct._DiskInfo** %3, align 8, !dbg !1725
  %83 = getelementptr inbounds %struct._DiskInfo, %struct._DiskInfo* %82, i32 0, i32 1, !dbg !1726
  %84 = load %struct._PartitionEntry*, %struct._PartitionEntry** %83, align 8, !dbg !1726
  %85 = getelementptr inbounds %struct._PartitionEntry, %struct._PartitionEntry* %84, i64 %81, !dbg !1725
  %86 = getelementptr inbounds %struct._PartitionEntry, %struct._PartitionEntry* %85, i32 0, i32 0, !dbg !1727
  %87 = load i64, i64* %86, align 1, !dbg !1727
  %88 = load i32, i32* %4, align 4, !dbg !1728
  %89 = sext i32 %88 to i64, !dbg !1729
  %90 = load %struct._DiskInfo*, %struct._DiskInfo** %8, align 8, !dbg !1729
  %91 = getelementptr inbounds %struct._DiskInfo, %struct._DiskInfo* %90, i32 0, i32 1, !dbg !1730
  %92 = load %struct._PartitionEntry*, %struct._PartitionEntry** %91, align 8, !dbg !1730
  %93 = getelementptr inbounds %struct._PartitionEntry, %struct._PartitionEntry* %92, i64 %89, !dbg !1729
  %94 = getelementptr inbounds %struct._PartitionEntry, %struct._PartitionEntry* %93, i32 0, i32 0, !dbg !1731
  %95 = load i64, i64* %94, align 1, !dbg !1731
  %96 = icmp ne i64 %87, %95, !dbg !1732
  br i1 %96, label %97, label %98, !dbg !1733

; <label>:97:                                     ; preds = %79
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0)), !dbg !1734
  store i8 1, i8* %2, align 1, !dbg !1736
  br label %123, !dbg !1736

; <label>:98:                                     ; preds = %79
  %99 = load i32, i32* %7, align 4, !dbg !1737
  %100 = sext i32 %99 to i64, !dbg !1739
  %101 = load %struct._DiskInfo*, %struct._DiskInfo** %3, align 8, !dbg !1739
  %102 = getelementptr inbounds %struct._DiskInfo, %struct._DiskInfo* %101, i32 0, i32 1, !dbg !1740
  %103 = load %struct._PartitionEntry*, %struct._PartitionEntry** %102, align 8, !dbg !1740
  %104 = getelementptr inbounds %struct._PartitionEntry, %struct._PartitionEntry* %103, i64 %100, !dbg !1739
  %105 = getelementptr inbounds %struct._PartitionEntry, %struct._PartitionEntry* %104, i32 0, i32 1, !dbg !1741
  %106 = load i64, i64* %105, align 1, !dbg !1741
  %107 = load i32, i32* %4, align 4, !dbg !1742
  %108 = sext i32 %107 to i64, !dbg !1743
  %109 = load %struct._DiskInfo*, %struct._DiskInfo** %8, align 8, !dbg !1743
  %110 = getelementptr inbounds %struct._DiskInfo, %struct._DiskInfo* %109, i32 0, i32 1, !dbg !1744
  %111 = load %struct._PartitionEntry*, %struct._PartitionEntry** %110, align 8, !dbg !1744
  %112 = getelementptr inbounds %struct._PartitionEntry, %struct._PartitionEntry* %111, i64 %108, !dbg !1743
  %113 = getelementptr inbounds %struct._PartitionEntry, %struct._PartitionEntry* %112, i32 0, i32 1, !dbg !1745
  %114 = load i64, i64* %113, align 1, !dbg !1745
  %115 = icmp ne i64 %106, %114, !dbg !1746
  br i1 %115, label %116, label %117, !dbg !1747

; <label>:116:                                    ; preds = %98
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i32 0, i32 0)), !dbg !1748
  store i8 1, i8* %2, align 1, !dbg !1750
  br label %123, !dbg !1750

; <label>:117:                                    ; preds = %98
  br label %118

; <label>:118:                                    ; preds = %117
  br label %119, !dbg !1751

; <label>:119:                                    ; preds = %118
  %120 = load i32, i32* %4, align 4, !dbg !1752
  %121 = add nsw i32 %120, 1, !dbg !1752
  store i32 %121, i32* %4, align 4, !dbg !1752
  br label %32, !dbg !1754, !llvm.loop !1755

; <label>:122:                                    ; preds = %32
  store i8 0, i8* %2, align 1, !dbg !1757
  br label %123, !dbg !1757

; <label>:123:                                    ; preds = %122, %116, %97, %77, %30, %20, %13
  %124 = load i8, i8* %2, align 1, !dbg !1758
  ret i8 %124, !dbg !1758
}

declare i8* @UtilSafeCalloc0(i64, i64) #2

declare i32 @Str_Sprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @RpcChannel_Send(%struct._RpcChannel*, i8*, i64, i8**, i64*) #2

declare void @vm_free(i8*) #2

declare void @GuestInfo_FreeDiskInfo(%struct._DiskInfo*) #2

declare void @GuestInfo_FreeNicInfo(%struct.NicInfoV3*) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define internal signext i8 @GuestInfoSendNicInfoXdr(%struct.ToolsAppCtx*, %struct.GuestNicProto*, i32) #0 !dbg !1759 {
  %4 = alloca %struct.ToolsAppCtx*, align 8
  %5 = alloca %struct.GuestNicProto*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.XDR, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %4, metadata !1763, metadata !539), !dbg !1764
  store %struct.GuestNicProto* %1, %struct.GuestNicProto** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestNicProto** %5, metadata !1765, metadata !539), !dbg !1766
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1767, metadata !539), !dbg !1768
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1769, metadata !539), !dbg !1770
  store i8 0, i8* %7, align 1, !dbg !1770
  call void @llvm.dbg.declare(metadata %struct.XDR* %8, metadata !1771, metadata !539), !dbg !1772
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1773, metadata !539), !dbg !1774
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1775, metadata !539), !dbg !1776
  store i8* null, i8** %10, align 8, !dbg !1776
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1777, metadata !539), !dbg !1778
  %12 = load i32, i32* %6, align 4, !dbg !1779
  %13 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i32 %12), !dbg !1780
  store i8* %13, i8** %9, align 8, !dbg !1781
  %14 = call %struct.XDR* @DynXdr_Create(%struct.XDR* %8), !dbg !1782
  %15 = icmp eq %struct.XDR* %14, null, !dbg !1784
  br i1 %15, label %16, label %17, !dbg !1785

; <label>:16:                                     ; preds = %3
  br label %52, !dbg !1786

; <label>:17:                                     ; preds = %3
  %18 = load i8*, i8** %9, align 8, !dbg !1788
  %19 = load i8*, i8** %9, align 8, !dbg !1790
  %20 = call i64 @strlen(i8* %19) #8, !dbg !1791
  %21 = call signext i8 @DynXdr_AppendRaw(%struct.XDR* %8, i8* %18, i64 %20), !dbg !1792
  %22 = icmp ne i8 %21, 0, !dbg !1794
  br i1 %22, label %23, label %27, !dbg !1795

; <label>:23:                                     ; preds = %17
  %24 = load %struct.GuestNicProto*, %struct.GuestNicProto** %5, align 8, !dbg !1796
  %25 = call i32 @xdr_GuestNicProto(%struct.XDR* %8, %struct.GuestNicProto* %24), !dbg !1797
  %26 = icmp ne i32 %25, 0, !dbg !1797
  br i1 %26, label %31, label %27, !dbg !1798

; <label>:27:                                     ; preds = %23, %17
  %28 = load %struct.GuestNicProto*, %struct.GuestNicProto** %5, align 8, !dbg !1800
  %29 = getelementptr inbounds %struct.GuestNicProto, %struct.GuestNicProto* %28, i32 0, i32 0, !dbg !1802
  %30 = load i32, i32* %29, align 8, !dbg !1802
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i32 0, i32 0), i32 %30), !dbg !1803
  br label %51, !dbg !1804

; <label>:31:                                     ; preds = %23
  %32 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %4, align 8, !dbg !1805
  %33 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %32, i32 0, i32 5, !dbg !1807
  %34 = load %struct._RpcChannel*, %struct._RpcChannel** %33, align 8, !dbg !1807
  %35 = call i8* @DynXdr_Get(%struct.XDR* %8), !dbg !1808
  %36 = getelementptr inbounds %struct.XDR, %struct.XDR* %8, i32 0, i32 1, !dbg !1809
  %37 = load %struct.xdr_ops*, %struct.xdr_ops** %36, align 8, !dbg !1809
  %38 = getelementptr inbounds %struct.xdr_ops, %struct.xdr_ops* %37, i32 0, i32 4, !dbg !1810
  %39 = load i32 (%struct.XDR*)*, i32 (%struct.XDR*)** %38, align 8, !dbg !1810
  %40 = call i32 %39(%struct.XDR* %8), !dbg !1811
  %41 = zext i32 %40 to i64, !dbg !1813
  %42 = call i32 @RpcChannel_Send(%struct._RpcChannel* %34, i8* %35, i64 %41, i8** %10, i64* %11), !dbg !1814
  %43 = trunc i32 %42 to i8, !dbg !1816
  store i8 %43, i8* %7, align 1, !dbg !1817
  %44 = load i8, i8* %7, align 1, !dbg !1818
  %45 = icmp ne i8 %44, 0, !dbg !1818
  br i1 %45, label %49, label %46, !dbg !1820

; <label>:46:                                     ; preds = %31
  %47 = load i8*, i8** %9, align 8, !dbg !1821
  %48 = load i8*, i8** %10, align 8, !dbg !1823
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.GuestInfoSendNicInfoXdr, i32 0, i32 0), i8* %47, i8* %48), !dbg !1824
  br label %49, !dbg !1825

; <label>:49:                                     ; preds = %46, %31
  %50 = load i8*, i8** %10, align 8, !dbg !1826
  call void @vm_free(i8* %50), !dbg !1827
  br label %51

; <label>:51:                                     ; preds = %49, %27
  call void @DynXdr_Destroy(%struct.XDR* %8, i8 signext 1), !dbg !1828
  br label %52, !dbg !1828

; <label>:52:                                     ; preds = %51, %16
  %53 = load i8*, i8** %9, align 8, !dbg !1829
  call void @g_free(i8* %53), !dbg !1830
  %54 = load i8, i8* %7, align 1, !dbg !1831
  ret i8 %54, !dbg !1832
}

; Function Attrs: nounwind uwtable
define internal %struct.NicInfoV3* @GuestNicInfoV3ToV3_64(%struct.NicInfoV3*) #0 !dbg !1833 {
  %2 = alloca %struct.NicInfoV3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.NicInfoV3*, align 8
  store %struct.NicInfoV3* %0, %struct.NicInfoV3** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.NicInfoV3** %2, metadata !1836, metadata !539), !dbg !1837
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1838, metadata !539), !dbg !1839
  call void @llvm.dbg.declare(metadata %struct.NicInfoV3** %4, metadata !1840, metadata !539), !dbg !1841
  %5 = call noalias i8* @g_malloc(i64 64), !dbg !1842
  %6 = bitcast i8* %5 to %struct.NicInfoV3*, !dbg !1842
  store %struct.NicInfoV3* %6, %struct.NicInfoV3** %4, align 8, !dbg !1841
  %7 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !1843
  %8 = bitcast %struct.NicInfoV3* %7 to i8*, !dbg !1844
  %9 = load %struct.NicInfoV3*, %struct.NicInfoV3** %2, align 8, !dbg !1845
  %10 = bitcast %struct.NicInfoV3* %9 to i8*, !dbg !1844
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %10, i64 64, i32 8, i1 false), !dbg !1844
  %11 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !1846
  %12 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %11, i32 0, i32 0, !dbg !1847
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0, !dbg !1848
  %14 = load i32, i32* %13, align 8, !dbg !1848
  %15 = zext i32 %14 to i64, !dbg !1846
  %16 = mul i64 %15, 56, !dbg !1849
  %17 = call noalias i8* @g_malloc(i64 %16), !dbg !1850
  %18 = bitcast i8* %17 to %struct.GuestNicV3*, !dbg !1850
  %19 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !1851
  %20 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %19, i32 0, i32 0, !dbg !1852
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 1, !dbg !1853
  store %struct.GuestNicV3* %18, %struct.GuestNicV3** %21, align 8, !dbg !1854
  store i32 0, i32* %3, align 4, !dbg !1855
  br label %22, !dbg !1857

; <label>:22:                                     ; preds = %68, %1
  %23 = load i32, i32* %3, align 4, !dbg !1858
  %24 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !1861
  %25 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %24, i32 0, i32 0, !dbg !1862
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 0, !dbg !1863
  %27 = load i32, i32* %26, align 8, !dbg !1863
  %28 = icmp ult i32 %23, %27, !dbg !1864
  br i1 %28, label %29, label %71, !dbg !1865

; <label>:29:                                     ; preds = %22
  %30 = load i32, i32* %3, align 4, !dbg !1866
  %31 = zext i32 %30 to i64, !dbg !1868
  %32 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !1868
  %33 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %32, i32 0, i32 0, !dbg !1869
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 1, !dbg !1870
  %35 = load %struct.GuestNicV3*, %struct.GuestNicV3** %34, align 8, !dbg !1870
  %36 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %35, i64 %31, !dbg !1868
  %37 = bitcast %struct.GuestNicV3* %36 to i8*, !dbg !1871
  %38 = load i32, i32* %3, align 4, !dbg !1872
  %39 = zext i32 %38 to i64, !dbg !1873
  %40 = load %struct.NicInfoV3*, %struct.NicInfoV3** %2, align 8, !dbg !1873
  %41 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %40, i32 0, i32 0, !dbg !1874
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 1, !dbg !1875
  %43 = load %struct.GuestNicV3*, %struct.GuestNicV3** %42, align 8, !dbg !1875
  %44 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %43, i64 %39, !dbg !1873
  %45 = bitcast %struct.GuestNicV3* %44 to i8*, !dbg !1871
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %45, i64 56, i32 8, i1 false), !dbg !1871
  %46 = load i32, i32* %3, align 4, !dbg !1876
  %47 = zext i32 %46 to i64, !dbg !1878
  %48 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !1878
  %49 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %48, i32 0, i32 0, !dbg !1879
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %49, i32 0, i32 1, !dbg !1880
  %51 = load %struct.GuestNicV3*, %struct.GuestNicV3** %50, align 8, !dbg !1880
  %52 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %51, i64 %47, !dbg !1878
  %53 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %52, i32 0, i32 1, !dbg !1881
  %54 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %53, i32 0, i32 0, !dbg !1882
  %55 = load i32, i32* %54, align 8, !dbg !1882
  %56 = icmp ugt i32 %55, 64, !dbg !1883
  br i1 %56, label %57, label %67, !dbg !1884

; <label>:57:                                     ; preds = %29
  %58 = load i32, i32* %3, align 4, !dbg !1885
  %59 = zext i32 %58 to i64, !dbg !1887
  %60 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !1887
  %61 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %60, i32 0, i32 0, !dbg !1888
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %61, i32 0, i32 1, !dbg !1889
  %63 = load %struct.GuestNicV3*, %struct.GuestNicV3** %62, align 8, !dbg !1889
  %64 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %63, i64 %59, !dbg !1887
  %65 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %64, i32 0, i32 1, !dbg !1890
  %66 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %65, i32 0, i32 0, !dbg !1891
  store i32 64, i32* %66, align 8, !dbg !1892
  br label %67, !dbg !1893

; <label>:67:                                     ; preds = %57, %29
  br label %68, !dbg !1894

; <label>:68:                                     ; preds = %67
  %69 = load i32, i32* %3, align 4, !dbg !1895
  %70 = add i32 %69, 1, !dbg !1895
  store i32 %70, i32* %3, align 4, !dbg !1895
  br label %22, !dbg !1897, !llvm.loop !1898

; <label>:71:                                     ; preds = %22
  %72 = load %struct.NicInfoV3*, %struct.NicInfoV3** %4, align 8, !dbg !1900
  ret %struct.NicInfoV3* %72, !dbg !1901
}

; Function Attrs: nounwind uwtable
define internal %struct.GuestNicList* @NicInfoV3ToV2(%struct.NicInfoV3*) #0 !dbg !1902 {
  %2 = alloca %struct.NicInfoV3*, align 8
  %3 = alloca %struct.GuestNicList*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.GuestNicV3*, align 8
  %7 = alloca %struct.GuestNic*, align 8
  %8 = alloca %struct.IpAddressEntry*, align 8
  %9 = alloca %struct.TypedIpAddress*, align 8
  %10 = alloca %struct.VmIpAddress*, align 8
  store %struct.NicInfoV3* %0, %struct.NicInfoV3** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.NicInfoV3** %2, metadata !1907, metadata !539), !dbg !1908
  call void @llvm.dbg.declare(metadata %struct.GuestNicList** %3, metadata !1909, metadata !539), !dbg !1910
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1911, metadata !539), !dbg !1912
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1913, metadata !539), !dbg !1914
  %11 = call i8* @UtilSafeCalloc0(i64 16, i64 1), !dbg !1915
  %12 = bitcast i8* %11 to %struct.GuestNicList*, !dbg !1915
  store %struct.GuestNicList* %12, %struct.GuestNicList** %3, align 8, !dbg !1916
  %13 = load %struct.GuestNicList*, %struct.GuestNicList** %3, align 8, !dbg !1917
  %14 = getelementptr inbounds %struct.GuestNicList, %struct.GuestNicList* %13, i32 0, i32 0, !dbg !1918
  %15 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %14, i32 0, i32 1, !dbg !1919
  %16 = bitcast %struct.GuestNic** %15 to i8**, !dbg !1920
  %17 = load %struct.GuestNicList*, %struct.GuestNicList** %3, align 8, !dbg !1921
  %18 = getelementptr inbounds %struct.GuestNicList, %struct.GuestNicList* %17, i32 0, i32 0, !dbg !1922
  %19 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %18, i32 0, i32 0, !dbg !1923
  %20 = load %struct.NicInfoV3*, %struct.NicInfoV3** %2, align 8, !dbg !1924
  %21 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %20, i32 0, i32 0, !dbg !1925
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 0, !dbg !1926
  %23 = load i32, i32* %22, align 8, !dbg !1926
  %24 = call i8* @XdrUtil_ArrayAppend(i8** %16, i32* %19, i64 40, i32 %23), !dbg !1927
  %25 = bitcast i8* %24 to %struct.GuestNic*, !dbg !1928
  store i32 0, i32* %4, align 4, !dbg !1929
  br label %26, !dbg !1931

; <label>:26:                                     ; preds = %123, %1
  %27 = load i32, i32* %4, align 4, !dbg !1932
  %28 = load %struct.NicInfoV3*, %struct.NicInfoV3** %2, align 8, !dbg !1935
  %29 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %28, i32 0, i32 0, !dbg !1936
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 0, !dbg !1937
  %31 = load i32, i32* %30, align 8, !dbg !1937
  %32 = icmp ult i32 %27, %31, !dbg !1938
  br i1 %32, label %33, label %126, !dbg !1939

; <label>:33:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata %struct.GuestNicV3** %6, metadata !1940, metadata !539), !dbg !1942
  %34 = load i32, i32* %4, align 4, !dbg !1943
  %35 = zext i32 %34 to i64, !dbg !1944
  %36 = load %struct.NicInfoV3*, %struct.NicInfoV3** %2, align 8, !dbg !1945
  %37 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %36, i32 0, i32 0, !dbg !1946
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %37, i32 0, i32 1, !dbg !1947
  %39 = load %struct.GuestNicV3*, %struct.GuestNicV3** %38, align 8, !dbg !1947
  %40 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %39, i64 %35, !dbg !1944
  store %struct.GuestNicV3* %40, %struct.GuestNicV3** %6, align 8, !dbg !1942
  call void @llvm.dbg.declare(metadata %struct.GuestNic** %7, metadata !1948, metadata !539), !dbg !1951
  %41 = load i32, i32* %4, align 4, !dbg !1952
  %42 = zext i32 %41 to i64, !dbg !1953
  %43 = load %struct.GuestNicList*, %struct.GuestNicList** %3, align 8, !dbg !1954
  %44 = getelementptr inbounds %struct.GuestNicList, %struct.GuestNicList* %43, i32 0, i32 0, !dbg !1955
  %45 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %44, i32 0, i32 1, !dbg !1956
  %46 = load %struct.GuestNic*, %struct.GuestNic** %45, align 8, !dbg !1956
  %47 = getelementptr inbounds %struct.GuestNic, %struct.GuestNic* %46, i64 %42, !dbg !1953
  store %struct.GuestNic* %47, %struct.GuestNic** %7, align 8, !dbg !1951
  %48 = load %struct.GuestNic*, %struct.GuestNic** %7, align 8, !dbg !1957
  %49 = getelementptr inbounds %struct.GuestNic, %struct.GuestNic* %48, i32 0, i32 0, !dbg !1958
  %50 = getelementptr inbounds [18 x i8], [18 x i8]* %49, i32 0, i32 0, !dbg !1957
  %51 = load %struct.GuestNicV3*, %struct.GuestNicV3** %6, align 8, !dbg !1959
  %52 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %51, i32 0, i32 0, !dbg !1960
  %53 = load i8*, i8** %52, align 8, !dbg !1960
  %54 = call i8* @Str_Strcpy(i8* %50, i8* %53, i64 18), !dbg !1961
  %55 = load %struct.GuestNic*, %struct.GuestNic** %7, align 8, !dbg !1962
  %56 = getelementptr inbounds %struct.GuestNic, %struct.GuestNic* %55, i32 0, i32 1, !dbg !1963
  %57 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %56, i32 0, i32 1, !dbg !1964
  %58 = bitcast %struct.VmIpAddress** %57 to i8**, !dbg !1965
  %59 = load %struct.GuestNic*, %struct.GuestNic** %7, align 8, !dbg !1966
  %60 = getelementptr inbounds %struct.GuestNic, %struct.GuestNic* %59, i32 0, i32 1, !dbg !1967
  %61 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %60, i32 0, i32 0, !dbg !1968
  %62 = load %struct.GuestNicV3*, %struct.GuestNicV3** %6, align 8, !dbg !1969
  %63 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %62, i32 0, i32 1, !dbg !1970
  %64 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %63, i32 0, i32 0, !dbg !1971
  %65 = load i32, i32* %64, align 8, !dbg !1971
  %66 = call i8* @XdrUtil_ArrayAppend(i8** %58, i32* %61, i64 136, i32 %65), !dbg !1972
  %67 = bitcast i8* %66 to %struct.VmIpAddress*, !dbg !1973
  store i32 0, i32* %5, align 4, !dbg !1974
  br label %68, !dbg !1976

; <label>:68:                                     ; preds = %119, %33
  %69 = load i32, i32* %5, align 4, !dbg !1977
  %70 = load %struct.GuestNicV3*, %struct.GuestNicV3** %6, align 8, !dbg !1980
  %71 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %70, i32 0, i32 1, !dbg !1981
  %72 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %71, i32 0, i32 0, !dbg !1982
  %73 = load i32, i32* %72, align 8, !dbg !1982
  %74 = icmp ult i32 %69, %73, !dbg !1983
  br i1 %74, label %75, label %122, !dbg !1984

; <label>:75:                                     ; preds = %68
  call void @llvm.dbg.declare(metadata %struct.IpAddressEntry** %8, metadata !1985, metadata !539), !dbg !1987
  %76 = load i32, i32* %5, align 4, !dbg !1988
  %77 = zext i32 %76 to i64, !dbg !1989
  %78 = load %struct.GuestNicV3*, %struct.GuestNicV3** %6, align 8, !dbg !1990
  %79 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %78, i32 0, i32 1, !dbg !1991
  %80 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %79, i32 0, i32 1, !dbg !1992
  %81 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %80, align 8, !dbg !1992
  %82 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %81, i64 %77, !dbg !1989
  store %struct.IpAddressEntry* %82, %struct.IpAddressEntry** %8, align 8, !dbg !1987
  call void @llvm.dbg.declare(metadata %struct.TypedIpAddress** %9, metadata !1993, metadata !539), !dbg !1994
  %83 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %8, align 8, !dbg !1995
  %84 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %83, i32 0, i32 0, !dbg !1996
  store %struct.TypedIpAddress* %84, %struct.TypedIpAddress** %9, align 8, !dbg !1994
  call void @llvm.dbg.declare(metadata %struct.VmIpAddress** %10, metadata !1997, metadata !539), !dbg !2000
  %85 = load i32, i32* %5, align 4, !dbg !2001
  %86 = zext i32 %85 to i64, !dbg !2002
  %87 = load %struct.GuestNic*, %struct.GuestNic** %7, align 8, !dbg !2003
  %88 = getelementptr inbounds %struct.GuestNic, %struct.GuestNic* %87, i32 0, i32 1, !dbg !2004
  %89 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %88, i32 0, i32 1, !dbg !2005
  %90 = load %struct.VmIpAddress*, %struct.VmIpAddress** %89, align 8, !dbg !2005
  %91 = getelementptr inbounds %struct.VmIpAddress, %struct.VmIpAddress* %90, i64 %86, !dbg !2002
  store %struct.VmIpAddress* %91, %struct.VmIpAddress** %10, align 8, !dbg !2000
  %92 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %9, align 8, !dbg !2006
  %93 = getelementptr inbounds %struct.TypedIpAddress, %struct.TypedIpAddress* %92, i32 0, i32 0, !dbg !2007
  %94 = load i32, i32* %93, align 8, !dbg !2007
  %95 = icmp eq i32 %94, 1, !dbg !2008
  %96 = select i1 %95, i32 0, i32 1, !dbg !2009
  %97 = load %struct.VmIpAddress*, %struct.VmIpAddress** %10, align 8, !dbg !2010
  %98 = getelementptr inbounds %struct.VmIpAddress, %struct.VmIpAddress* %97, i32 0, i32 0, !dbg !2011
  store i32 %96, i32* %98, align 4, !dbg !2012
  %99 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %9, align 8, !dbg !2013
  %100 = getelementptr inbounds %struct.TypedIpAddress, %struct.TypedIpAddress* %99, i32 0, i32 0, !dbg !2014
  %101 = load i32, i32* %100, align 8, !dbg !2014
  %102 = icmp eq i32 %101, 1, !dbg !2015
  %103 = select i1 %102, i32 2, i32 10, !dbg !2013
  %104 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %9, align 8, !dbg !2016
  %105 = getelementptr inbounds %struct.TypedIpAddress, %struct.TypedIpAddress* %104, i32 0, i32 1, !dbg !2017
  %106 = getelementptr inbounds %struct.InetAddress, %struct.InetAddress* %105, i32 0, i32 1, !dbg !2018
  %107 = load i8*, i8** %106, align 8, !dbg !2018
  %108 = load %struct.VmIpAddress*, %struct.VmIpAddress** %10, align 8, !dbg !2019
  %109 = getelementptr inbounds %struct.VmIpAddress, %struct.VmIpAddress* %108, i32 0, i32 2, !dbg !2020
  %110 = getelementptr inbounds [64 x i8], [64 x i8]* %109, i32 0, i32 0, !dbg !2019
  %111 = call i8* @inet_ntop(i32 %103, i8* %107, i8* %110, i32 64) #7, !dbg !2021
  %112 = load %struct.VmIpAddress*, %struct.VmIpAddress** %10, align 8, !dbg !2022
  %113 = getelementptr inbounds %struct.VmIpAddress, %struct.VmIpAddress* %112, i32 0, i32 3, !dbg !2023
  %114 = getelementptr inbounds [64 x i8], [64 x i8]* %113, i32 0, i32 0, !dbg !2022
  %115 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %8, align 8, !dbg !2024
  %116 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %115, i32 0, i32 1, !dbg !2025
  %117 = load i32, i32* %116, align 8, !dbg !2025
  %118 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* %114, i64 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i32 %117), !dbg !2026
  br label %119, !dbg !2027

; <label>:119:                                    ; preds = %75
  %120 = load i32, i32* %5, align 4, !dbg !2028
  %121 = add i32 %120, 1, !dbg !2028
  store i32 %121, i32* %5, align 4, !dbg !2028
  br label %68, !dbg !2030, !llvm.loop !2031

; <label>:122:                                    ; preds = %68
  br label %123, !dbg !2033

; <label>:123:                                    ; preds = %122
  %124 = load i32, i32* %4, align 4, !dbg !2034
  %125 = add i32 %124, 1, !dbg !2034
  store i32 %125, i32* %4, align 4, !dbg !2034
  br label %26, !dbg !2036, !llvm.loop !2037

; <label>:126:                                    ; preds = %26
  %127 = load %struct.GuestNicList*, %struct.GuestNicList** %3, align 8, !dbg !2039
  ret %struct.GuestNicList* %127, !dbg !2040
}

; Function Attrs: nounwind
declare void @xdr_free(i32 (%struct.XDR*, i8*, ...)*, i8*) #3

declare i32 @xdr_GuestNicList(%struct.XDR*, %struct.GuestNicList*) #2

; Function Attrs: nounwind uwtable
define internal signext i8 @GuestInfoSendData(%struct.ToolsAppCtx*, i8*, i32, i32) #0 !dbg !2041 {
  %5 = alloca %struct.ToolsAppCtx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %5, metadata !2044, metadata !539), !dbg !2045
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2046, metadata !539), !dbg !2047
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2048, metadata !539), !dbg !2049
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2050, metadata !539), !dbg !2051
  call void @llvm.dbg.declare(metadata i8* %9, metadata !2052, metadata !539), !dbg !2053
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2054, metadata !539), !dbg !2055
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2056, metadata !539), !dbg !2057
  %15 = load i32, i32* %7, align 4, !dbg !2058
  store i32 %15, i32* %11, align 4, !dbg !2057
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2059, metadata !539), !dbg !2060
  store i8* null, i8** %12, align 8, !dbg !2060
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2061, metadata !539), !dbg !2062
  store i8* null, i8** %13, align 8, !dbg !2062
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2063, metadata !539), !dbg !2064
  %16 = load i32, i32* %8, align 4, !dbg !2065
  %17 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i32 %16), !dbg !2066
  store i8* %17, i8** %10, align 8, !dbg !2067
  %18 = load i8*, i8** %10, align 8, !dbg !2068
  %19 = call i64 @strlen(i8* %18) #8, !dbg !2069
  %20 = load i32, i32* %11, align 4, !dbg !2070
  %21 = zext i32 %20 to i64, !dbg !2070
  %22 = add i64 %21, %19, !dbg !2070
  %23 = trunc i64 %22 to i32, !dbg !2070
  store i32 %23, i32* %11, align 4, !dbg !2070
  %24 = load i32, i32* %11, align 4, !dbg !2071
  %25 = zext i32 %24 to i64, !dbg !2071
  %26 = call noalias i8* @g_malloc(i64 %25), !dbg !2072
  store i8* %26, i8** %12, align 8, !dbg !2073
  %27 = load i8*, i8** %12, align 8, !dbg !2074
  %28 = load i8*, i8** %10, align 8, !dbg !2075
  %29 = load i8*, i8** %10, align 8, !dbg !2076
  %30 = call i64 @strlen(i8* %29) #8, !dbg !2077
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 %30, i32 1, i1 false), !dbg !2078
  %31 = load i8*, i8** %12, align 8, !dbg !2080
  %32 = load i8*, i8** %10, align 8, !dbg !2081
  %33 = call i64 @strlen(i8* %32) #8, !dbg !2082
  %34 = getelementptr inbounds i8, i8* %31, i64 %33, !dbg !2083
  %35 = load i8*, i8** %6, align 8, !dbg !2084
  %36 = load i32, i32* %7, align 4, !dbg !2085
  %37 = zext i32 %36 to i64, !dbg !2085
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 %37, i32 1, i1 false), !dbg !2086
  %38 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %5, align 8, !dbg !2087
  %39 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %38, i32 0, i32 5, !dbg !2088
  %40 = load %struct._RpcChannel*, %struct._RpcChannel** %39, align 8, !dbg !2088
  %41 = load i8*, i8** %12, align 8, !dbg !2089
  %42 = load i32, i32* %11, align 4, !dbg !2090
  %43 = zext i32 %42 to i64, !dbg !2090
  %44 = call i32 @RpcChannel_Send(%struct._RpcChannel* %40, i8* %41, i64 %43, i8** %13, i64* %14), !dbg !2091
  %45 = trunc i32 %44 to i8, !dbg !2091
  store i8 %45, i8* %9, align 1, !dbg !2092
  %46 = load i8, i8* %9, align 1, !dbg !2093
  %47 = icmp ne i8 %46, 0, !dbg !2093
  br i1 %47, label %51, label %48, !dbg !2095

; <label>:48:                                     ; preds = %4
  %49 = load i8*, i8** %10, align 8, !dbg !2096
  %50 = load i8*, i8** %13, align 8, !dbg !2098
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.GuestInfoSendData, i32 0, i32 0), i8* %49, i8* %50), !dbg !2099
  br label %51, !dbg !2100

; <label>:51:                                     ; preds = %48, %4
  %52 = load i8*, i8** %13, align 8, !dbg !2101
  call void @vm_free(i8* %52), !dbg !2102
  %53 = load i8*, i8** %12, align 8, !dbg !2103
  call void @g_free(i8* %53), !dbg !2104
  %54 = load i8*, i8** %10, align 8, !dbg !2105
  call void @g_free(i8* %54), !dbg !2106
  %55 = load i8, i8* %9, align 1, !dbg !2107
  ret i8 %55, !dbg !2108
}

declare %struct.XDR* @DynXdr_Create(%struct.XDR*) #2

declare signext i8 @DynXdr_AppendRaw(%struct.XDR*, i8*, i64) #2

declare i32 @xdr_GuestNicProto(%struct.XDR*, %struct.GuestNicProto*) #2

declare i8* @DynXdr_Get(%struct.XDR*) #2

declare void @DynXdr_Destroy(%struct.XDR*, i8 signext) #2

declare noalias i8* @g_malloc(i64) #2

declare i8* @XdrUtil_ArrayAppend(i8**, i32*, i64, i32) #2

declare i32 @g_spawn_async(i8*, i8**, i8**, i32, void (i8*)*, i8*, i32*, %struct._GError**) #2

declare i32 @RpcChannel_SetRetVals(%struct.RpcInData*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @SendUptime(%struct.ToolsAppCtx*) #0 !dbg !2109 {
  %2 = alloca %struct.ToolsAppCtx*, align 8
  %3 = alloca i8*, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %2, metadata !2112, metadata !539), !dbg !2113
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2114, metadata !539), !dbg !2115
  %4 = call i64 @System_Uptime(), !dbg !2116
  %5 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), i64 %4), !dbg !2117
  store i8* %5, i8** %3, align 8, !dbg !2115
  %6 = load i8*, i8** %3, align 8, !dbg !2119
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.49, i32 0, i32 0), i8* %6), !dbg !2120
  %7 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %2, align 8, !dbg !2121
  %8 = load i8*, i8** %3, align 8, !dbg !2122
  %9 = call signext i8 @GuestInfoUpdateVmdb(%struct.ToolsAppCtx* %7, i32 7, i8* %8, i64 0), !dbg !2123
  %10 = load i8*, i8** %3, align 8, !dbg !2124
  call void @g_free(i8* %10), !dbg !2125
  ret void, !dbg !2126
}

declare i64 @System_Uptime() #2

declare i8* @GuestInfo_GetPrimaryIP() #2

declare void @GuestInfo_SetIfaceExcludeList(i8**) #2

declare void @g_source_destroy(%struct._GSource*) #2

declare void @GuestInfo_StatProviderShutdown() #2

declare i32 @g_key_file_get_boolean(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #2

; Function Attrs: nounwind uwtable
define internal void @TweakGatherLoop(%struct.ToolsAppCtx*, i32, i8*, i32, i32 (i8*)*, i32*, %struct._GSource**) #0 !dbg !2127 {
  %8 = alloca %struct.ToolsAppCtx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32 (i8*)*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct._GSource**, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct._GError*, align 8
  %17 = alloca %struct._GSource*, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %8, metadata !2131, metadata !539), !dbg !2132
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2133, metadata !539), !dbg !2134
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2135, metadata !539), !dbg !2136
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2137, metadata !539), !dbg !2138
  store i32 (i8*)* %4, i32 (i8*)** %12, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*)** %12, metadata !2139, metadata !539), !dbg !2140
  store i32* %5, i32** %13, align 8
  call void @llvm.dbg.declare(metadata i32** %13, metadata !2141, metadata !539), !dbg !2142
  store %struct._GSource** %6, %struct._GSource*** %14, align 8
  call void @llvm.dbg.declare(metadata %struct._GSource*** %14, metadata !2143, metadata !539), !dbg !2144
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2145, metadata !539), !dbg !2146
  store i32 0, i32* %15, align 4, !dbg !2146
  %18 = load i32, i32* %9, align 4, !dbg !2147
  %19 = icmp ne i32 %18, 0, !dbg !2147
  br i1 %19, label %20, label %49, !dbg !2149

; <label>:20:                                     ; preds = %7
  %21 = load i32, i32* %11, align 4, !dbg !2150
  %22 = mul nsw i32 %21, 1000, !dbg !2152
  store i32 %22, i32* %15, align 4, !dbg !2153
  %23 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !2154
  %24 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %23, i32 0, i32 6, !dbg !2156
  %25 = load %struct._GKeyFile*, %struct._GKeyFile** %24, align 8, !dbg !2156
  %26 = load i8*, i8** %10, align 8, !dbg !2157
  %27 = call i32 @g_key_file_has_key(%struct._GKeyFile* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* %26, %struct._GError** null), !dbg !2158
  %28 = icmp ne i32 %27, 0, !dbg !2158
  br i1 %28, label %29, label %48, !dbg !2159

; <label>:29:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata %struct._GError** %16, metadata !2160, metadata !539), !dbg !2174
  store %struct._GError* null, %struct._GError** %16, align 8, !dbg !2174
  %30 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !2175
  %31 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %30, i32 0, i32 6, !dbg !2176
  %32 = load %struct._GKeyFile*, %struct._GKeyFile** %31, align 8, !dbg !2176
  %33 = load i8*, i8** %10, align 8, !dbg !2177
  %34 = call i32 @g_key_file_get_integer(%struct._GKeyFile* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* %33, %struct._GError** %16), !dbg !2178
  store i32 %34, i32* %15, align 4, !dbg !2179
  %35 = load i32, i32* %15, align 4, !dbg !2180
  %36 = mul nsw i32 %35, 1000, !dbg !2180
  store i32 %36, i32* %15, align 4, !dbg !2180
  %37 = load i32, i32* %15, align 4, !dbg !2181
  %38 = icmp slt i32 %37, 0, !dbg !2183
  br i1 %38, label %42, label %39, !dbg !2184

; <label>:39:                                     ; preds = %29
  %40 = load %struct._GError*, %struct._GError** %16, align 8, !dbg !2185
  %41 = icmp ne %struct._GError* %40, null, !dbg !2185
  br i1 %41, label %42, label %47, !dbg !2187

; <label>:42:                                     ; preds = %39, %29
  %43 = load i8*, i8** %10, align 8, !dbg !2188
  %44 = load i32, i32* %11, align 4, !dbg !2190
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* %43, i32 %44), !dbg !2191
  %45 = load i32, i32* %11, align 4, !dbg !2192
  %46 = mul nsw i32 %45, 1000, !dbg !2193
  store i32 %46, i32* %15, align 4, !dbg !2194
  br label %47, !dbg !2195

; <label>:47:                                     ; preds = %42, %39
  call void @g_clear_error(%struct._GError** %16), !dbg !2196
  br label %48, !dbg !2197

; <label>:48:                                     ; preds = %47, %20
  br label %49, !dbg !2198

; <label>:49:                                     ; preds = %48, %7
  %50 = load %struct._GSource**, %struct._GSource*** %14, align 8, !dbg !2199
  %51 = load %struct._GSource*, %struct._GSource** %50, align 8, !dbg !2201
  %52 = icmp ne %struct._GSource* %51, null, !dbg !2202
  br i1 %52, label %53, label %63, !dbg !2203

; <label>:53:                                     ; preds = %49
  %54 = load i32, i32* %15, align 4, !dbg !2204
  %55 = load i32*, i32** %13, align 8, !dbg !2207
  %56 = load i32, i32* %55, align 4, !dbg !2208
  %57 = icmp eq i32 %54, %56, !dbg !2209
  br i1 %57, label %58, label %59, !dbg !2210

; <label>:58:                                     ; preds = %53
  br label %96, !dbg !2211

; <label>:59:                                     ; preds = %53
  %60 = load %struct._GSource**, %struct._GSource*** %14, align 8, !dbg !2213
  %61 = load %struct._GSource*, %struct._GSource** %60, align 8, !dbg !2214
  call void @g_source_destroy(%struct._GSource* %61), !dbg !2215
  %62 = load %struct._GSource**, %struct._GSource*** %14, align 8, !dbg !2216
  store %struct._GSource* null, %struct._GSource** %62, align 8, !dbg !2217
  br label %63, !dbg !2218

; <label>:63:                                     ; preds = %59, %49
  %64 = load i32, i32* %15, align 4, !dbg !2219
  %65 = load i32*, i32** %13, align 8, !dbg !2220
  store i32 %64, i32* %65, align 4, !dbg !2221
  %66 = load i32*, i32** %13, align 8, !dbg !2222
  %67 = load i32, i32* %66, align 4, !dbg !2224
  %68 = icmp ne i32 %67, 0, !dbg !2224
  br i1 %68, label %69, label %94, !dbg !2225

; <label>:69:                                     ; preds = %63
  %70 = load i8*, i8** %10, align 8, !dbg !2226
  %71 = load i32*, i32** %13, align 8, !dbg !2228
  %72 = load i32, i32* %71, align 4, !dbg !2229
  %73 = sdiv i32 %72, 1000, !dbg !2230
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.59, i32 0, i32 0), i8* %70, i32 %73), !dbg !2231
  %74 = load i32*, i32** %13, align 8, !dbg !2232
  %75 = load i32, i32* %74, align 4, !dbg !2233
  %76 = call %struct._GSource* @g_timeout_source_new(i32 %75), !dbg !2234
  %77 = load %struct._GSource**, %struct._GSource*** %14, align 8, !dbg !2235
  store %struct._GSource* %76, %struct._GSource** %77, align 8, !dbg !2236
  br label %78, !dbg !2237, !llvm.loop !2238

; <label>:78:                                     ; preds = %69
  call void @llvm.dbg.declare(metadata %struct._GSource** %17, metadata !2239, metadata !539), !dbg !2241
  %79 = load %struct._GSource**, %struct._GSource*** %14, align 8, !dbg !2242
  %80 = load %struct._GSource*, %struct._GSource** %79, align 8, !dbg !2244
  store %struct._GSource* %80, %struct._GSource** %17, align 8, !dbg !2245
  %81 = load %struct._GSource*, %struct._GSource** %17, align 8, !dbg !2246
  %82 = load i32 (i8*)*, i32 (i8*)** %12, align 8, !dbg !2247
  %83 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !2248
  %84 = bitcast %struct.ToolsAppCtx* %83 to i8*, !dbg !2249
  call void @g_source_set_callback(%struct._GSource* %81, i32 (i8*)* %82, i8* %84, void (i8*)* null), !dbg !2250
  %85 = load %struct._GSource*, %struct._GSource** %17, align 8, !dbg !2251
  %86 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !2252
  %87 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %86, i32 0, i32 4, !dbg !2253
  %88 = load %struct._GMainLoop*, %struct._GMainLoop** %87, align 8, !dbg !2253
  %89 = call %struct._GMainContext* @g_main_loop_get_context(%struct._GMainLoop* %88), !dbg !2254
  %90 = call i32 @g_source_attach(%struct._GSource* %85, %struct._GMainContext* %89), !dbg !2256
  br label %91, !dbg !2258

; <label>:91:                                     ; preds = %78
  %92 = load %struct._GSource**, %struct._GSource*** %14, align 8, !dbg !2259
  %93 = load %struct._GSource*, %struct._GSource** %92, align 8, !dbg !2260
  call void @g_source_unref(%struct._GSource* %93), !dbg !2261
  br label %96, !dbg !2262

; <label>:94:                                     ; preds = %63
  %95 = load i8*, i8** %10, align 8, !dbg !2263
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.60, i32 0, i32 0), i8* %95), !dbg !2265
  br label %96

; <label>:96:                                     ; preds = %58, %94, %91
  ret void, !dbg !2266
}

declare i32 @GuestInfo_StatProviderPoll(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @GuestInfoGather(i8*) #0 !dbg !2267 {
  %2 = alloca i8*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._DiskInfo*, align 8
  %7 = alloca %struct.NicInfoV3*, align 8
  %8 = alloca %struct.ToolsAppCtx*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2268, metadata !539), !dbg !2269
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !2270, metadata !539), !dbg !2274
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2275, metadata !539), !dbg !2276
  store i8* null, i8** %4, align 8, !dbg !2276
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2277, metadata !539), !dbg !2278
  call void @llvm.dbg.declare(metadata %struct._DiskInfo** %6, metadata !2279, metadata !539), !dbg !2280
  store %struct._DiskInfo* null, %struct._DiskInfo** %6, align 8, !dbg !2280
  call void @llvm.dbg.declare(metadata %struct.NicInfoV3** %7, metadata !2281, metadata !539), !dbg !2282
  store %struct.NicInfoV3* null, %struct.NicInfoV3** %7, align 8, !dbg !2282
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %8, metadata !2283, metadata !539), !dbg !2284
  %13 = load i8*, i8** %2, align 8, !dbg !2285
  %14 = bitcast i8* %13 to %struct.ToolsAppCtx*, !dbg !2285
  store %struct.ToolsAppCtx* %14, %struct.ToolsAppCtx** %8, align 8, !dbg !2284
  call void @llvm.dbg.declare(metadata i8* %9, metadata !2286, metadata !539), !dbg !2287
  call void @llvm.dbg.declare(metadata i8* %10, metadata !2288, metadata !539), !dbg !2289
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2290, metadata !539), !dbg !2291
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2292, metadata !539), !dbg !2293
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.61, i32 0, i32 0)), !dbg !2294
  %15 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !2295
  call void @GuestInfoCheckIfRunningSlow(%struct.ToolsAppCtx* %15), !dbg !2296
  %16 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !2297
  %17 = call signext i8 @GuestInfoUpdateVmdb(%struct.ToolsAppCtx* %16, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i32 0, i32 0), i64 0), !dbg !2299
  %18 = icmp ne i8 %17, 0, !dbg !2299
  br i1 %18, label %20, label %19, !dbg !2300

; <label>:19:                                     ; preds = %1
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.63, i32 0, i32 0)), !dbg !2301
  br label %20, !dbg !2303

; <label>:20:                                     ; preds = %19, %1
  %21 = call i8* @Hostinfo_GetOSName(), !dbg !2304
  store i8* %21, i8** %4, align 8, !dbg !2305
  %22 = load i8*, i8** %4, align 8, !dbg !2306
  %23 = icmp eq i8* %22, null, !dbg !2308
  br i1 %23, label %24, label %25, !dbg !2309

; <label>:24:                                     ; preds = %20
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.64, i32 0, i32 0)), !dbg !2310
  br label %32, !dbg !2312

; <label>:25:                                     ; preds = %20
  %26 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !2313
  %27 = load i8*, i8** %4, align 8, !dbg !2316
  %28 = call signext i8 @GuestInfoUpdateVmdb(%struct.ToolsAppCtx* %26, i32 5, i8* %27, i64 0), !dbg !2317
  %29 = icmp ne i8 %28, 0, !dbg !2317
  br i1 %29, label %31, label %30, !dbg !2318

; <label>:30:                                     ; preds = %25
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.65, i32 0, i32 0)), !dbg !2319
  br label %31, !dbg !2321

; <label>:31:                                     ; preds = %30, %25
  br label %32

; <label>:32:                                     ; preds = %31, %24
  %33 = load i8*, i8** %4, align 8, !dbg !2322
  call void @free(i8* %33) #7, !dbg !2323
  %34 = call i8* @Hostinfo_GetOSGuestString(), !dbg !2324
  store i8* %34, i8** %4, align 8, !dbg !2325
  %35 = load i8*, i8** %4, align 8, !dbg !2326
  %36 = icmp eq i8* %35, null, !dbg !2328
  br i1 %36, label %37, label %38, !dbg !2329

; <label>:37:                                     ; preds = %32
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.64, i32 0, i32 0)), !dbg !2330
  br label %45, !dbg !2332

; <label>:38:                                     ; preds = %32
  %39 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !2333
  %40 = load i8*, i8** %4, align 8, !dbg !2336
  %41 = call signext i8 @GuestInfoUpdateVmdb(%struct.ToolsAppCtx* %39, i32 6, i8* %40, i64 0), !dbg !2337
  %42 = icmp ne i8 %41, 0, !dbg !2337
  br i1 %42, label %44, label %43, !dbg !2338

; <label>:43:                                     ; preds = %38
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.65, i32 0, i32 0)), !dbg !2339
  br label %44, !dbg !2341

; <label>:44:                                     ; preds = %43, %38
  br label %45

; <label>:45:                                     ; preds = %44, %37
  %46 = load i8*, i8** %4, align 8, !dbg !2342
  call void @free(i8* %46) #7, !dbg !2343
  %47 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !2344
  %48 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %47, i32 0, i32 6, !dbg !2345
  %49 = load %struct._GKeyFile*, %struct._GKeyFile** %48, align 8, !dbg !2345
  %50 = call i32 @g_key_file_get_boolean(%struct._GKeyFile* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.66, i32 0, i32 0), %struct._GError** null), !dbg !2346
  store i32 %50, i32* %5, align 4, !dbg !2347
  %51 = load i32, i32* %5, align 4, !dbg !2348
  %52 = icmp ne i32 %51, 0, !dbg !2348
  br i1 %52, label %71, label %53, !dbg !2350

; <label>:53:                                     ; preds = %45
  %54 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !2351
  %55 = call %struct._DiskInfo* @GuestInfo_GetDiskInfo(%struct.ToolsAppCtx* %54), !dbg !2354
  store %struct._DiskInfo* %55, %struct._DiskInfo** %6, align 8, !dbg !2355
  %56 = icmp eq %struct._DiskInfo* %55, null, !dbg !2356
  br i1 %56, label %57, label %58, !dbg !2357

; <label>:57:                                     ; preds = %53
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i32 0, i32 0)), !dbg !2358
  br label %70, !dbg !2360

; <label>:58:                                     ; preds = %53
  %59 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !2361
  %60 = load %struct._DiskInfo*, %struct._DiskInfo** %6, align 8, !dbg !2364
  %61 = bitcast %struct._DiskInfo* %60 to i8*, !dbg !2364
  %62 = call signext i8 @GuestInfoUpdateVmdb(%struct.ToolsAppCtx* %59, i32 3, i8* %61, i64 0), !dbg !2365
  %63 = icmp ne i8 %62, 0, !dbg !2365
  br i1 %63, label %64, label %67, !dbg !2366

; <label>:64:                                     ; preds = %58
  %65 = load %struct._DiskInfo*, %struct._DiskInfo** getelementptr inbounds (%struct._GuestInfoCache, %struct._GuestInfoCache* @gInfoCache, i32 0, i32 2), align 8, !dbg !2367
  call void @GuestInfo_FreeDiskInfo(%struct._DiskInfo* %65), !dbg !2369
  %66 = load %struct._DiskInfo*, %struct._DiskInfo** %6, align 8, !dbg !2370
  store %struct._DiskInfo* %66, %struct._DiskInfo** getelementptr inbounds (%struct._GuestInfoCache, %struct._GuestInfoCache* @gInfoCache, i32 0, i32 2), align 8, !dbg !2371
  br label %69, !dbg !2372

; <label>:67:                                     ; preds = %58
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i32 0, i32 0)), !dbg !2373
  %68 = load %struct._DiskInfo*, %struct._DiskInfo** %6, align 8, !dbg !2375
  call void @GuestInfo_FreeDiskInfo(%struct._DiskInfo* %68), !dbg !2376
  br label %69

; <label>:69:                                     ; preds = %67, %64
  br label %70

; <label>:70:                                     ; preds = %69, %57
  br label %71, !dbg !2377

; <label>:71:                                     ; preds = %70, %45
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i32 0, i32 0, !dbg !2378
  %73 = call signext i8 @System_GetNodeName(i64 256, i8* %72), !dbg !2380
  %74 = icmp ne i8 %73, 0, !dbg !2380
  br i1 %74, label %76, label %75, !dbg !2381

; <label>:75:                                     ; preds = %71
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.69, i32 0, i32 0)), !dbg !2382
  br label %83, !dbg !2384

; <label>:76:                                     ; preds = %71
  %77 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !2385
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i32 0, i32 0, !dbg !2388
  %79 = call signext i8 @GuestInfoUpdateVmdb(%struct.ToolsAppCtx* %77, i32 1, i8* %78, i64 0), !dbg !2389
  %80 = icmp ne i8 %79, 0, !dbg !2389
  br i1 %80, label %82, label %81, !dbg !2390

; <label>:81:                                     ; preds = %76
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.70, i32 0, i32 0)), !dbg !2391
  br label %82, !dbg !2393

; <label>:82:                                     ; preds = %81, %76
  br label %83

; <label>:83:                                     ; preds = %82, %75
  %84 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !2394
  %85 = call signext i8 @GuestInfoResetNicPrimaryList(%struct.ToolsAppCtx* %84), !dbg !2395
  store i8 %85, i8* %9, align 1, !dbg !2396
  %86 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !2397
  %87 = call signext i8 @GuestInfoResetNicLowPriorityList(%struct.ToolsAppCtx* %86), !dbg !2398
  store i8 %87, i8* %10, align 1, !dbg !2399
  %88 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !2400
  %89 = call signext i8 @GuestInfoResetNicExcludeList(%struct.ToolsAppCtx* %88), !dbg !2401
  %90 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !2402
  %91 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %90, i32 0, i32 6, !dbg !2403
  %92 = load %struct._GKeyFile*, %struct._GKeyFile** %91, align 8, !dbg !2403
  %93 = call i32 @VMTools_ConfigGetInteger(%struct._GKeyFile* %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i32 0, i32 0), i32 100), !dbg !2404
  store i32 %93, i32* %11, align 4, !dbg !2405
  %94 = load i32, i32* %11, align 4, !dbg !2406
  %95 = icmp slt i32 %94, 0, !dbg !2408
  br i1 %95, label %99, label %96, !dbg !2409

; <label>:96:                                     ; preds = %83
  %97 = load i32, i32* %11, align 4, !dbg !2410
  %98 = icmp sgt i32 %97, 100, !dbg !2411
  br i1 %98, label %99, label %101, !dbg !2412

; <label>:99:                                     ; preds = %96, %83
  %100 = load i32, i32* %11, align 4, !dbg !2414
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i32 0, i32 0), i32 %100, i32 100), !dbg !2416
  store i32 100, i32* %11, align 4, !dbg !2417
  br label %101, !dbg !2418

; <label>:101:                                    ; preds = %99, %96
  %102 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !2419
  %103 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %102, i32 0, i32 6, !dbg !2420
  %104 = load %struct._GKeyFile*, %struct._GKeyFile** %103, align 8, !dbg !2420
  %105 = call i32 @VMTools_ConfigGetInteger(%struct._GKeyFile* %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i32 0, i32 0), i32 100), !dbg !2421
  store i32 %105, i32* %12, align 4, !dbg !2422
  %106 = load i32, i32* %12, align 4, !dbg !2423
  %107 = icmp slt i32 %106, 0, !dbg !2425
  br i1 %107, label %111, label %108, !dbg !2426

; <label>:108:                                    ; preds = %101
  %109 = load i32, i32* %12, align 4, !dbg !2427
  %110 = icmp sgt i32 %109, 100, !dbg !2428
  br i1 %110, label %111, label %113, !dbg !2429

; <label>:111:                                    ; preds = %108, %101
  %112 = load i32, i32* %12, align 4, !dbg !2430
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i32 0, i32 0), i32 %112, i32 100), !dbg !2432
  store i32 100, i32* %12, align 4, !dbg !2433
  br label %113, !dbg !2434

; <label>:113:                                    ; preds = %111, %108
  %114 = load i32, i32* %11, align 4, !dbg !2435
  %115 = load i32, i32* %12, align 4, !dbg !2437
  %116 = call signext i8 @GuestInfo_GetNicInfo(i32 %114, i32 %115, %struct.NicInfoV3** %7), !dbg !2438
  %117 = icmp ne i8 %116, 0, !dbg !2438
  br i1 %117, label %121, label %118, !dbg !2439

; <label>:118:                                    ; preds = %113
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.74, i32 0, i32 0)), !dbg !2440
  %119 = call i8* @UtilSafeCalloc0(i64 1, i64 64), !dbg !2442
  %120 = bitcast i8* %119 to %struct.NicInfoV3*, !dbg !2442
  store %struct.NicInfoV3* %120, %struct.NicInfoV3** %7, align 8, !dbg !2443
  br label %121, !dbg !2444

; <label>:121:                                    ; preds = %118, %113
  %122 = load i8, i8* %9, align 1, !dbg !2445
  %123 = icmp ne i8 %122, 0, !dbg !2445
  br i1 %123, label %135, label %124, !dbg !2447

; <label>:124:                                    ; preds = %121
  %125 = load i8, i8* %10, align 1, !dbg !2448
  %126 = icmp ne i8 %125, 0, !dbg !2448
  br i1 %126, label %135, label %127, !dbg !2450

; <label>:127:                                    ; preds = %124
  %128 = load %struct.NicInfoV3*, %struct.NicInfoV3** %7, align 8, !dbg !2451
  %129 = load %struct.NicInfoV3*, %struct.NicInfoV3** getelementptr inbounds (%struct._GuestInfoCache, %struct._GuestInfoCache* @gInfoCache, i32 0, i32 1), align 8, !dbg !2452
  %130 = call signext i8 @GuestInfo_IsEqual_NicInfoV3(%struct.NicInfoV3* %128, %struct.NicInfoV3* %129), !dbg !2453
  %131 = sext i8 %130 to i32, !dbg !2453
  %132 = icmp ne i32 %131, 0, !dbg !2453
  br i1 %132, label %133, label %135, !dbg !2454

; <label>:133:                                    ; preds = %127
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i32 0, i32 0)), !dbg !2456
  %134 = load %struct.NicInfoV3*, %struct.NicInfoV3** %7, align 8, !dbg !2458
  call void @GuestInfo_FreeNicInfo(%struct.NicInfoV3* %134), !dbg !2459
  br label %147, !dbg !2460

; <label>:135:                                    ; preds = %127, %124, %121
  %136 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !2461
  %137 = load %struct.NicInfoV3*, %struct.NicInfoV3** %7, align 8, !dbg !2464
  %138 = bitcast %struct.NicInfoV3* %137 to i8*, !dbg !2464
  %139 = call signext i8 @GuestInfoUpdateVmdb(%struct.ToolsAppCtx* %136, i32 2, i8* %138, i64 0), !dbg !2465
  %140 = icmp ne i8 %139, 0, !dbg !2465
  br i1 %140, label %141, label %144, !dbg !2465

; <label>:141:                                    ; preds = %135
  %142 = load %struct.NicInfoV3*, %struct.NicInfoV3** getelementptr inbounds (%struct._GuestInfoCache, %struct._GuestInfoCache* @gInfoCache, i32 0, i32 1), align 8, !dbg !2466
  call void @GuestInfo_FreeNicInfo(%struct.NicInfoV3* %142), !dbg !2468
  %143 = load %struct.NicInfoV3*, %struct.NicInfoV3** %7, align 8, !dbg !2469
  store %struct.NicInfoV3* %143, %struct.NicInfoV3** getelementptr inbounds (%struct._GuestInfoCache, %struct._GuestInfoCache* @gInfoCache, i32 0, i32 1), align 8, !dbg !2470
  br label %146, !dbg !2471

; <label>:144:                                    ; preds = %135
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.70, i32 0, i32 0)), !dbg !2472
  %145 = load %struct.NicInfoV3*, %struct.NicInfoV3** %7, align 8, !dbg !2474
  call void @GuestInfo_FreeNicInfo(%struct.NicInfoV3* %145), !dbg !2475
  br label %146

; <label>:146:                                    ; preds = %144, %141
  br label %147

; <label>:147:                                    ; preds = %146, %133
  %148 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %8, align 8, !dbg !2476
  call void @SendUptime(%struct.ToolsAppCtx* %148), !dbg !2477
  ret i32 1, !dbg !2478
}

declare i32 @g_key_file_has_key(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #2

declare i32 @g_key_file_get_integer(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #2

declare void @g_clear_error(%struct._GError**) #2

declare %struct._GSource* @g_timeout_source_new(i32) #2

declare void @g_source_set_callback(%struct._GSource*, i32 (i8*)*, i8*, void (i8*)*) #2

declare i32 @g_source_attach(%struct._GSource*, %struct._GMainContext*) #2

declare %struct._GMainContext* @g_main_loop_get_context(%struct._GMainLoop*) #2

declare void @g_source_unref(%struct._GSource*) #2

; Function Attrs: nounwind uwtable
define internal void @GuestInfoCheckIfRunningSlow(%struct.ToolsAppCtx*) #0 !dbg !2479 {
  %2 = alloca %struct.ToolsAppCtx*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %2, metadata !2480, metadata !539), !dbg !2481
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2482, metadata !539), !dbg !2483
  %7 = call i64 @time(i64* null) #7, !dbg !2484
  store i64 %7, i64* %3, align 8, !dbg !2483
  %8 = load i64, i64* @gGuestInfoLastGatherTime, align 8, !dbg !2485
  %9 = icmp ne i64 %8, 0, !dbg !2487
  br i1 %9, label %10, label %43, !dbg !2488

; <label>:10:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2489, metadata !539), !dbg !2491
  %11 = load i64, i64* %3, align 8, !dbg !2492
  %12 = load i64, i64* @gGuestInfoLastGatherTime, align 8, !dbg !2493
  %13 = sub nsw i64 %11, %12, !dbg !2494
  store i64 %13, i64* %4, align 8, !dbg !2491
  %14 = load i64, i64* %4, align 8, !dbg !2495
  %15 = trunc i64 %14 to i32, !dbg !2497
  %16 = mul nsw i32 %15, 1000, !dbg !2498
  %17 = load i32, i32* @guestInfoPollInterval, align 4, !dbg !2499
  %18 = mul nsw i32 2, %17, !dbg !2500
  %19 = icmp sge i32 %16, %18, !dbg !2501
  br i1 %19, label %20, label %42, !dbg !2502

; <label>:20:                                     ; preds = %10
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2503, metadata !539), !dbg !2505
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2506, metadata !539), !dbg !2507
  %21 = load i64, i64* %4, align 8, !dbg !2508
  %22 = trunc i64 %21 to i32, !dbg !2509
  %23 = load i32, i32* @guestInfoPollInterval, align 4, !dbg !2510
  %24 = sdiv i32 %23, 1000, !dbg !2511
  %25 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.76, i32 0, i32 0), i32 %22, i32 %24), !dbg !2512
  store i8* %25, i8** %5, align 8, !dbg !2513
  %26 = load i8*, i8** %5, align 8, !dbg !2514
  %27 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i32 0), i8* %26), !dbg !2515
  store i8* %27, i8** %6, align 8, !dbg !2516
  %28 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %2, align 8, !dbg !2517
  %29 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %28, i32 0, i32 5, !dbg !2519
  %30 = load %struct._RpcChannel*, %struct._RpcChannel** %29, align 8, !dbg !2519
  %31 = load i8*, i8** %6, align 8, !dbg !2520
  %32 = load i8*, i8** %6, align 8, !dbg !2521
  %33 = call i64 @strlen(i8* %32) #8, !dbg !2522
  %34 = add i64 %33, 1, !dbg !2523
  %35 = call i32 @RpcChannel_Send(%struct._RpcChannel* %30, i8* %31, i64 %34, i8** null, i64* null), !dbg !2524
  %36 = icmp ne i32 %35, 0, !dbg !2526
  br i1 %36, label %38, label %37, !dbg !2527

; <label>:37:                                     ; preds = %20
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.GuestInfoCheckIfRunningSlow, i32 0, i32 0)), !dbg !2528
  br label %38, !dbg !2530

; <label>:38:                                     ; preds = %37, %20
  %39 = load i8*, i8** %5, align 8, !dbg !2531
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), i8* %39), !dbg !2532
  %40 = load i8*, i8** %6, align 8, !dbg !2533
  call void @g_free(i8* %40), !dbg !2534
  %41 = load i8*, i8** %5, align 8, !dbg !2535
  call void @g_free(i8* %41), !dbg !2536
  br label %42, !dbg !2537

; <label>:42:                                     ; preds = %38, %10
  br label %43, !dbg !2538

; <label>:43:                                     ; preds = %42, %1
  %44 = load i64, i64* %3, align 8, !dbg !2539
  store i64 %44, i64* @gGuestInfoLastGatherTime, align 8, !dbg !2540
  ret void, !dbg !2541
}

declare i8* @Hostinfo_GetOSName() #2

declare i8* @Hostinfo_GetOSGuestString() #2

declare %struct._DiskInfo* @GuestInfo_GetDiskInfo(%struct.ToolsAppCtx*) #2

declare signext i8 @System_GetNodeName(i64, i8*) #2

; Function Attrs: nounwind uwtable
define internal signext i8 @GuestInfoResetNicPrimaryList(%struct.ToolsAppCtx*) #0 !dbg !504 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.ToolsAppCtx*, align 8
  %4 = alloca i8**, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %3, metadata !2542, metadata !539), !dbg !2543
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !2544, metadata !539), !dbg !2546
  %5 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !2547
  %6 = call signext i8 @GuestInfoSetConfigList(%struct.ToolsAppCtx* %5, i8** @GuestInfoResetNicPrimaryList.ifacePrimaryStringCached, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0), i8* null, i8*** %4), !dbg !2549
  %7 = icmp ne i8 %6, 0, !dbg !2549
  br i1 %7, label %8, label %11, !dbg !2550

; <label>:8:                                      ; preds = %1
  %9 = load i8**, i8*** %4, align 8, !dbg !2551
  call void @GuestInfo_SetIfacePrimaryList(i8** %9), !dbg !2553
  %10 = load i8**, i8*** %4, align 8, !dbg !2554
  call void @g_strfreev(i8** %10), !dbg !2555
  store i8 1, i8* %2, align 1, !dbg !2556
  br label %12, !dbg !2556

; <label>:11:                                     ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !2557
  br label %12, !dbg !2557

; <label>:12:                                     ; preds = %11, %8
  %13 = load i8, i8* %2, align 1, !dbg !2558
  ret i8 %13, !dbg !2558
}

; Function Attrs: nounwind uwtable
define internal signext i8 @GuestInfoResetNicLowPriorityList(%struct.ToolsAppCtx*) #0 !dbg !508 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.ToolsAppCtx*, align 8
  %4 = alloca i8**, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %3, metadata !2559, metadata !539), !dbg !2560
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !2561, metadata !539), !dbg !2562
  %5 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !2563
  %6 = call signext i8 @GuestInfoSetConfigList(%struct.ToolsAppCtx* %5, i8** @GuestInfoResetNicLowPriorityList.ifaceLowPriorityStringCached, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.82, i32 0, i32 0), i8* null, i8*** %4), !dbg !2565
  %7 = icmp ne i8 %6, 0, !dbg !2565
  br i1 %7, label %8, label %11, !dbg !2566

; <label>:8:                                      ; preds = %1
  %9 = load i8**, i8*** %4, align 8, !dbg !2567
  call void @GuestInfo_SetIfaceLowPriorityList(i8** %9), !dbg !2569
  %10 = load i8**, i8*** %4, align 8, !dbg !2570
  call void @g_strfreev(i8** %10), !dbg !2571
  store i8 1, i8* %2, align 1, !dbg !2572
  br label %12, !dbg !2572

; <label>:11:                                     ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !2573
  br label %12, !dbg !2573

; <label>:12:                                     ; preds = %11, %8
  %13 = load i8, i8* %2, align 1, !dbg !2574
  ret i8 %13, !dbg !2574
}

; Function Attrs: nounwind uwtable
define internal signext i8 @GuestInfoResetNicExcludeList(%struct.ToolsAppCtx*) #0 !dbg !510 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.ToolsAppCtx*, align 8
  %4 = alloca i8**, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %3, metadata !2575, metadata !539), !dbg !2576
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !2577, metadata !539), !dbg !2578
  %5 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !2579
  %6 = call signext i8 @GuestInfoSetConfigList(%struct.ToolsAppCtx* %5, i8** @GuestInfoResetNicExcludeList.ifaceExcludeStringCached, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.84, i32 0, i32 0), i8*** %4), !dbg !2581
  %7 = icmp ne i8 %6, 0, !dbg !2581
  br i1 %7, label %8, label %11, !dbg !2582

; <label>:8:                                      ; preds = %1
  %9 = load i8**, i8*** %4, align 8, !dbg !2583
  call void @GuestInfo_SetIfaceExcludeList(i8** %9), !dbg !2585
  %10 = load i8**, i8*** %4, align 8, !dbg !2586
  call void @g_strfreev(i8** %10), !dbg !2587
  store i8 1, i8* %2, align 1, !dbg !2588
  br label %12, !dbg !2588

; <label>:11:                                     ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !2589
  br label %12, !dbg !2589

; <label>:12:                                     ; preds = %11, %8
  %13 = load i8, i8* %2, align 1, !dbg !2590
  ret i8 %13, !dbg !2590
}

declare i32 @VMTools_ConfigGetInteger(%struct._GKeyFile*, i8*, i8*, i32) #2

declare signext i8 @GuestInfo_GetNicInfo(i32, i32, %struct.NicInfoV3**) #2

declare signext i8 @GuestInfo_IsEqual_NicInfoV3(%struct.NicInfoV3*, %struct.NicInfoV3*) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #3

; Function Attrs: nounwind uwtable
define internal signext i8 @GuestInfoSetConfigList(%struct.ToolsAppCtx*, i8**, i8*, i8*, i8***) #0 !dbg !2591 {
  %6 = alloca i8, align 1
  %7 = alloca %struct.ToolsAppCtx*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8***, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %7, metadata !2595, metadata !539), !dbg !2596
  store i8** %1, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !2597, metadata !539), !dbg !2598
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2599, metadata !539), !dbg !2600
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2601, metadata !539), !dbg !2602
  store i8*** %4, i8**** %11, align 8
  call void @llvm.dbg.declare(metadata i8**** %11, metadata !2603, metadata !539), !dbg !2604
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2605, metadata !539), !dbg !2606
  %14 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %7, align 8, !dbg !2607
  %15 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %14, i32 0, i32 6, !dbg !2608
  %16 = load %struct._GKeyFile*, %struct._GKeyFile** %15, align 8, !dbg !2608
  %17 = load i8*, i8** %9, align 8, !dbg !2609
  %18 = load i8*, i8** %10, align 8, !dbg !2610
  %19 = call i8* @VMTools_ConfigGetString(%struct._GKeyFile* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* %17, i8* %18), !dbg !2611
  store i8* %19, i8** %12, align 8, !dbg !2606
  %20 = load i8*, i8** %12, align 8, !dbg !2612
  %21 = load i8**, i8*** %8, align 8, !dbg !2614
  %22 = load i8*, i8** %21, align 8, !dbg !2615
  %23 = call i32 @g_strcmp0(i8* %20, i8* %22), !dbg !2616
  %24 = icmp ne i32 %23, 0, !dbg !2617
  br i1 %24, label %25, label %44, !dbg !2618

; <label>:25:                                     ; preds = %5
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !2619, metadata !539), !dbg !2621
  store i8** null, i8*** %13, align 8, !dbg !2621
  %26 = load i8*, i8** %12, align 8, !dbg !2622
  %27 = icmp ne i8* %26, null, !dbg !2624
  br i1 %27, label %28, label %37, !dbg !2625

; <label>:28:                                     ; preds = %25
  %29 = load i8*, i8** %12, align 8, !dbg !2626
  %30 = getelementptr inbounds i8, i8* %29, i64 0, !dbg !2626
  %31 = load i8, i8* %30, align 1, !dbg !2626
  %32 = sext i8 %31 to i32, !dbg !2626
  %33 = icmp ne i32 %32, 0, !dbg !2628
  br i1 %33, label %34, label %37, !dbg !2629

; <label>:34:                                     ; preds = %28
  %35 = load i8*, i8** %12, align 8, !dbg !2630
  %36 = call noalias i8** @g_strsplit(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i32 0, i32 0), i32 0), !dbg !2632
  store i8** %36, i8*** %13, align 8, !dbg !2633
  br label %37, !dbg !2634

; <label>:37:                                     ; preds = %34, %28, %25
  %38 = load i8**, i8*** %8, align 8, !dbg !2635
  %39 = load i8*, i8** %38, align 8, !dbg !2636
  call void @g_free(i8* %39), !dbg !2637
  %40 = load i8*, i8** %12, align 8, !dbg !2638
  %41 = load i8**, i8*** %8, align 8, !dbg !2639
  store i8* %40, i8** %41, align 8, !dbg !2640
  %42 = load i8**, i8*** %13, align 8, !dbg !2641
  %43 = load i8***, i8**** %11, align 8, !dbg !2642
  store i8** %42, i8*** %43, align 8, !dbg !2643
  store i8 1, i8* %6, align 1, !dbg !2644
  br label %47, !dbg !2644

; <label>:44:                                     ; preds = %5
  %45 = load i8*, i8** %12, align 8, !dbg !2645
  call void @g_free(i8* %45), !dbg !2647
  br label %46

; <label>:46:                                     ; preds = %44
  store i8 0, i8* %6, align 1, !dbg !2648
  br label %47, !dbg !2648

; <label>:47:                                     ; preds = %46, %37
  %48 = load i8, i8* %6, align 1, !dbg !2649
  ret i8 %48, !dbg !2649
}

declare void @GuestInfo_SetIfacePrimaryList(i8**) #2

declare void @g_strfreev(i8**) #2

declare i8* @VMTools_ConfigGetString(%struct._GKeyFile*, i8*, i8*, i8*) #2

declare i32 @g_strcmp0(i8*, i8*) #2

declare noalias i8** @g_strsplit(i8*, i8*, i32) #2

declare void @GuestInfo_SetIfaceLowPriorityList(i8**) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!511, !512}
!llvm.ident = !{!513}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !108, globals: !327)
!1 = !DIFile(filename: "libguestInfo_la-guestInfoServer.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1422")
!2 = !{!3, !12, !19, !29, !35, !47, !51, !66, !72, !80, !85, !89, !95}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "InetAddressType", file: !4, line: 65, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/guestrpc/nicinfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line1422")
!5 = !{!6, !7, !8, !9, !10, !11}
!6 = !DIEnumerator(name: "IAT_UNKNOWN", value: 0)
!7 = !DIEnumerator(name: "IAT_IPV4", value: 1)
!8 = !DIEnumerator(name: "IAT_IPV6", value: 2)
!9 = !DIEnumerator(name: "IAT_IPV4Z", value: 3)
!10 = !DIEnumerator(name: "IAT_IPV6Z", value: 4)
!11 = !DIEnumerator(name: "IAT_DNS", value: 16)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IpAddressOrigin", file: !4, line: 77, size: 32, align: 32, elements: !13)
!13 = !{!14, !15, !16, !17, !18}
!14 = !DIEnumerator(name: "IAO_OTHER", value: 1)
!15 = !DIEnumerator(name: "IAO_MANUAL", value: 2)
!16 = !DIEnumerator(name: "IAO_DHCP", value: 4)
!17 = !DIEnumerator(name: "IAO_LINKLAYER", value: 5)
!18 = !DIEnumerator(name: "IAO_RANDOM", value: 6)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IpAddressStatus", file: !4, line: 86, size: 32, align: 32, elements: !20)
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28}
!21 = !DIEnumerator(name: "IAS_PREFERRED", value: 1)
!22 = !DIEnumerator(name: "IAS_DEPRECATED", value: 2)
!23 = !DIEnumerator(name: "IAS_INVALID", value: 3)
!24 = !DIEnumerator(name: "IAS_INACCESSIBLE", value: 4)
!25 = !DIEnumerator(name: "IAS_UNKNOWN", value: 5)
!26 = !DIEnumerator(name: "IAS_TENTATIVE", value: 6)
!27 = !DIEnumerator(name: "IAS_DUPLICATE", value: 7)
!28 = !DIEnumerator(name: "IAS_OPTIMISTIC", value: 8)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "InetCidrRouteType", file: !4, line: 138, size: 32, align: 32, elements: !30)
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "ICRT_OTHER", value: 1)
!32 = !DIEnumerator(name: "ICRT_REJECT", value: 2)
!33 = !DIEnumerator(name: "ICRT_LOCAL", value: 3)
!34 = !DIEnumerator(name: "ICRT_REMOTE", value: 4)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 51, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1422")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46}
!38 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!39 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!40 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!41 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!42 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!43 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!44 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!45 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!46 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !48, line: 232, size: 32, align: 32, elements: !49)
!48 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/plugin.h", directory: "/home/lichi/Desktop/open-vm-tools/line1422")
!49 = !{!50}
!50 = !DIEnumerator(name: "TOOLS_CORE_API_V1", value: 1)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !52, line: 62, size: 32, align: 32, elements: !53)
!52 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/guestInfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line1422")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!54 = !DIEnumerator(name: "INFO_ERROR", value: 0)
!55 = !DIEnumerator(name: "INFO_DNS_NAME", value: 1)
!56 = !DIEnumerator(name: "INFO_IPADDRESS", value: 2)
!57 = !DIEnumerator(name: "INFO_DISK_FREE_SPACE", value: 3)
!58 = !DIEnumerator(name: "INFO_BUILD_NUMBER", value: 4)
!59 = !DIEnumerator(name: "INFO_OS_NAME_FULL", value: 5)
!60 = !DIEnumerator(name: "INFO_OS_NAME", value: 6)
!61 = !DIEnumerator(name: "INFO_UPTIME", value: 7)
!62 = !DIEnumerator(name: "INFO_MEMORY", value: 8)
!63 = !DIEnumerator(name: "INFO_IPADDRESS_V2", value: 9)
!64 = !DIEnumerator(name: "INFO_IPADDRESS_V3", value: 10)
!65 = !DIEnumerator(name: "INFO_MAX", value: 11)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !48, line: 339, size: 32, align: 32, elements: !67)
!67 = !{!68, !69, !70, !71}
!68 = !DIEnumerator(name: "TOOLS_APP_GUESTRPC", value: 1)
!69 = !DIEnumerator(name: "TOOLS_APP_SIGNALS", value: 2)
!70 = !DIEnumerator(name: "TOOLS_APP_PROVIDER", value: 3)
!71 = !DIEnumerator(name: "TOOLS_SVC_PROPERTY", value: 4)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "NicInfoMethod", file: !73, line: 103, size: 32, align: 32, elements: !74)
!73 = !DIFile(filename: "guestInfoServer.c", directory: "/home/lichi/Desktop/open-vm-tools/line1422")
!74 = !{!75, !76, !77, !78, !79}
!75 = !DIEnumerator(name: "NIC_INFO_V3_WITH_INFO_IPADDRESS_V3", value: 0)
!76 = !DIEnumerator(name: "NIC_INFO_V3_WITH_INFO_IPADDRESS_V2", value: 1)
!77 = !DIEnumerator(name: "NIC_INFO_V2_WITH_INFO_IPADDRESS_V2", value: 2)
!78 = !DIEnumerator(name: "NIC_INFO_V1_WITH_INFO_IPADDRESS", value: 3)
!79 = !DIEnumerator(name: "NIC_INFO_METHOD_MAX", value: 4)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "NicInfoVersion", file: !4, line: 17, size: 32, align: 32, elements: !81)
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "NIC_INFO_V1", value: 1)
!83 = !DIEnumerator(name: "NIC_INFO_V2", value: 2)
!84 = !DIEnumerator(name: "NIC_INFO_V3", value: 3)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "NicInfoAddrType", file: !4, line: 28, size: 32, align: 32, elements: !86)
!86 = !{!87, !88}
!87 = !DIEnumerator(name: "NICINFO_ADDR_IPV4", value: 0)
!88 = !DIEnumerator(name: "NICINFO_ADDR_IPV6", value: 1)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdr_op", file: !90, line: 81, size: 32, align: 32, elements: !91)
!90 = !DIFile(filename: "/usr/include/rpc/xdr.h", directory: "/home/lichi/Desktop/open-vm-tools/line1422")
!91 = !{!92, !93, !94}
!92 = !DIEnumerator(name: "XDR_ENCODE", value: 0)
!93 = !DIEnumerator(name: "XDR_DECODE", value: 1)
!94 = !DIEnumerator(name: "XDR_FREE", value: 2)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !96, line: 172, size: 32, align: 32, elements: !97)
!96 = !DIFile(filename: "/usr/include/glib-2.0/glib/gspawn.h", directory: "/home/lichi/Desktop/open-vm-tools/line1422")
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105, !106, !107}
!98 = !DIEnumerator(name: "G_SPAWN_DEFAULT", value: 0)
!99 = !DIEnumerator(name: "G_SPAWN_LEAVE_DESCRIPTORS_OPEN", value: 1)
!100 = !DIEnumerator(name: "G_SPAWN_DO_NOT_REAP_CHILD", value: 2)
!101 = !DIEnumerator(name: "G_SPAWN_SEARCH_PATH", value: 4)
!102 = !DIEnumerator(name: "G_SPAWN_STDOUT_TO_DEV_NULL", value: 8)
!103 = !DIEnumerator(name: "G_SPAWN_STDERR_TO_DEV_NULL", value: 16)
!104 = !DIEnumerator(name: "G_SPAWN_CHILD_INHERITS_STDIN", value: 32)
!105 = !DIEnumerator(name: "G_SPAWN_FILE_AND_ARGV_ZERO", value: 64)
!106 = !DIEnumerator(name: "G_SPAWN_SEARCH_PATH_FROM_ENVP", value: 128)
!107 = !DIEnumerator(name: "G_SPAWN_CLOEXEC_PIPES", value: 256)
!108 = !{!109, !110, !112, !222, !293, !317, !305, !318, !321, !195}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "NicInfoV3", file: !4, line: 190, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NicInfoV3", file: !4, line: 176, size: 512, align: 64, elements: !115)
!115 = !{!116, !198, !218, !219, !220, !221}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "nics", scope: !114, file: !4, line: 180, baseType: !117, size: 128, align: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !114, file: !4, line: 177, size: 128, align: 64, elements: !118)
!118 = !{!119, !125}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "nics_len", scope: !117, file: !4, line: 178, baseType: !120, size: 32, align: 32)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !121, line: 35, baseType: !122)
!121 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1422")
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !123, line: 32, baseType: !124)
!123 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1422")
!124 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "nics_val", scope: !117, file: !4, line: 179, baseType: !126, size: 64, align: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestNicV3", file: !4, line: 174, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestNicV3", file: !4, line: 163, size: 448, align: 64, elements: !129)
!129 = !{!130, !131, !160, !180, !187, !197}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "macAddress", scope: !128, file: !4, line: 164, baseType: !110, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "ips", scope: !128, file: !4, line: 168, baseType: !132, size: 128, align: 64, offset: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !128, file: !4, line: 165, size: 128, align: 64, elements: !133)
!133 = !{!134, !135}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "ips_len", scope: !132, file: !4, line: 166, baseType: !120, size: 32, align: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ips_val", scope: !132, file: !4, line: 167, baseType: !136, size: 64, align: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "IpAddressEntry", file: !4, line: 110, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "IpAddressEntry", file: !4, line: 104, size: 384, align: 64, elements: !139)
!139 = !{!140, !152, !154, !157}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressAddr", scope: !138, file: !4, line: 105, baseType: !141, size: 192, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "TypedIpAddress", file: !4, line: 102, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TypedIpAddress", file: !4, line: 98, size: 192, align: 64, elements: !143)
!143 = !{!144, !146}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressAddrType", scope: !142, file: !4, line: 99, baseType: !145, size: 32, align: 32)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetAddressType", file: !4, line: 73, baseType: !3)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressAddr", scope: !142, file: !4, line: 100, baseType: !147, size: 128, align: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetAddress", file: !4, line: 63, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 60, size: 128, align: 64, elements: !149)
!149 = !{!150, !151}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "InetAddress_len", scope: !148, file: !4, line: 61, baseType: !120, size: 32, align: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "InetAddress_val", scope: !148, file: !4, line: 62, baseType: !110, size: 64, align: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressPrefixLength", scope: !138, file: !4, line: 106, baseType: !153, size: 32, align: 32, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetAddressPrefixLength", file: !4, line: 75, baseType: !120)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressOrigin", scope: !138, file: !4, line: 107, baseType: !155, size: 64, align: 64, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "IpAddressOrigin", file: !4, line: 84, baseType: !12)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressStatus", scope: !138, file: !4, line: 108, baseType: !158, size: 64, align: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "IpAddressStatus", file: !4, line: 96, baseType: !19)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "dnsConfigInfo", scope: !128, file: !4, line: 169, baseType: !161, size: 64, align: 64, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "DnsConfigInfo", file: !4, line: 129, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DnsConfigInfo", file: !4, line: 117, size: 384, align: 64, elements: !164)
!164 = !{!165, !168, !169, !175}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "hostName", scope: !163, file: !4, line: 118, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "DnsHostname", file: !4, line: 113, baseType: !110)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "domainName", scope: !163, file: !4, line: 119, baseType: !166, size: 64, align: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "serverList", scope: !163, file: !4, line: 123, baseType: !170, size: 128, align: 64, offset: 128)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !163, file: !4, line: 120, size: 128, align: 64, elements: !171)
!171 = !{!172, !173}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "serverList_len", scope: !170, file: !4, line: 121, baseType: !120, size: 32, align: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "serverList_val", scope: !170, file: !4, line: 122, baseType: !174, size: 64, align: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "searchSuffixes", scope: !163, file: !4, line: 127, baseType: !176, size: 128, align: 64, offset: 256)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !163, file: !4, line: 124, size: 128, align: 64, elements: !177)
!177 = !{!178, !179}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "searchSuffixes_len", scope: !176, file: !4, line: 125, baseType: !120, size: 32, align: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "searchSuffixes_val", scope: !176, file: !4, line: 126, baseType: !166, size: 64, align: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "winsConfigInfo", scope: !128, file: !4, line: 170, baseType: !181, size: 64, align: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "WinsConfigInfo", file: !4, line: 135, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WinsConfigInfo", file: !4, line: 131, size: 384, align: 64, elements: !184)
!184 = !{!185, !186}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !183, file: !4, line: 132, baseType: !141, size: 192, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !183, file: !4, line: 133, baseType: !141, size: 192, align: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov4", scope: !128, file: !4, line: 171, baseType: !188, size: 64, align: 64, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "DhcpConfigInfo", file: !4, line: 161, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DhcpConfigInfo", file: !4, line: 157, size: 128, align: 64, elements: !191)
!191 = !{!192, !196}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !190, file: !4, line: 158, baseType: !193, size: 32, align: 32)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool_t", file: !194, line: 37, baseType: !195)
!194 = !DIFile(filename: "/usr/include/rpc/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1422")
!195 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpSettings", scope: !190, file: !4, line: 159, baseType: !110, size: 64, align: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov6", scope: !128, file: !4, line: 172, baseType: !188, size: 64, align: 64, offset: 384)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "routes", scope: !114, file: !4, line: 184, baseType: !199, size: 128, align: 64, offset: 128)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !114, file: !4, line: 181, size: 128, align: 64, elements: !200)
!200 = !{!201, !202}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "routes_len", scope: !199, file: !4, line: 182, baseType: !120, size: 32, align: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "routes_val", scope: !199, file: !4, line: 183, baseType: !203, size: 64, align: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetCidrRouteEntry", file: !4, line: 154, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "InetCidrRouteEntry", file: !4, line: 146, size: 448, align: 64, elements: !206)
!206 = !{!207, !208, !209, !210, !215, !217}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteDest", scope: !205, file: !4, line: 147, baseType: !141, size: 192, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRoutePfxLen", scope: !205, file: !4, line: 148, baseType: !153, size: 32, align: 32, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteNextHop", scope: !205, file: !4, line: 149, baseType: !174, size: 64, align: 64, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteIfIndex", scope: !205, file: !4, line: 150, baseType: !211, size: 32, align: 32, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !212, line: 173, baseType: !213)
!212 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1422")
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !214, line: 51, baseType: !124)
!214 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1422")
!215 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteType", scope: !205, file: !4, line: 151, baseType: !216, size: 32, align: 32, offset: 352)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetCidrRouteType", file: !4, line: 144, baseType: !29)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteMetric", scope: !205, file: !4, line: 152, baseType: !211, size: 32, align: 32, offset: 384)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "dnsConfigInfo", scope: !114, file: !4, line: 185, baseType: !161, size: 64, align: 64, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "winsConfigInfo", scope: !114, file: !4, line: 186, baseType: !181, size: 64, align: 64, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov4", scope: !114, file: !4, line: 187, baseType: !188, size: 64, align: 64, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov6", scope: !114, file: !4, line: 188, baseType: !188, size: 64, align: 64, offset: 448)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "xdrproc_t", file: !90, line: 152, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!193, !226, !109, null}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "XDR", file: !90, line: 109, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "XDR", file: !90, line: 110, size: 384, align: 64, elements: !229)
!229 = !{!230, !231, !289, !290, !291, !292}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "x_op", scope: !228, file: !90, line: 112, baseType: !89, size: 32, align: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "x_ops", scope: !228, file: !90, line: 136, baseType: !232, size: 64, align: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdr_ops", file: !90, line: 113, size: 640, align: 64, elements: !234)
!234 = !{!235, !241, !247, !253, !259, !265, !269, !275, !279, !283}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "x_getlong", scope: !233, file: !90, line: 115, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!193, !226, !239}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "x_putlong", scope: !233, file: !90, line: 117, baseType: !242, size: 64, align: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!193, !226, !245}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "x_getbytes", scope: !233, file: !90, line: 119, baseType: !248, size: 64, align: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!193, !226, !251, !120}
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !121, line: 116, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__caddr_t", file: !123, line: 183, baseType: !110)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "x_putbytes", scope: !233, file: !90, line: 121, baseType: !254, size: 64, align: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!193, !226, !257, !120}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "x_getpostn", scope: !233, file: !90, line: 123, baseType: !260, size: 64, align: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!120, !263}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "x_setpostn", scope: !233, file: !90, line: 125, baseType: !266, size: 64, align: 64, offset: 320)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!193, !226, !120}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "x_inline", scope: !233, file: !90, line: 127, baseType: !270, size: 64, align: 64, offset: 384)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!273, !226, !120}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !121, line: 196, baseType: !195)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "x_destroy", scope: !233, file: !90, line: 129, baseType: !276, size: 64, align: 64, offset: 448)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !226}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "x_getint32", scope: !233, file: !90, line: 131, baseType: !280, size: 64, align: 64, offset: 512)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!193, !226, !273}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "x_putint32", scope: !233, file: !90, line: 133, baseType: !284, size: 64, align: 64, offset: 576)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!193, !226, !287}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "x_public", scope: !228, file: !90, line: 137, baseType: !251, size: 64, align: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "x_private", scope: !228, file: !90, line: 138, baseType: !251, size: 64, align: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "x_base", scope: !228, file: !90, line: 139, baseType: !251, size: 64, align: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "x_handy", scope: !228, file: !90, line: 140, baseType: !120, size: 32, align: 32, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestNic", file: !4, line: 42, size: 320, align: 64, elements: !295)
!295 = !{!296, !300}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "macAddress", scope: !294, file: !4, line: 43, baseType: !297, size: 144, align: 8)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 144, align: 8, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 18)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ips", scope: !294, file: !4, line: 47, baseType: !301, size: 128, align: 64, offset: 192)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !294, file: !4, line: 44, size: 128, align: 64, elements: !302)
!302 = !{!303, !304}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ips_len", scope: !301, file: !4, line: 45, baseType: !120, size: 32, align: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ips_val", scope: !301, file: !4, line: 46, baseType: !305, size: 64, align: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmIpAddress", file: !4, line: 34, size: 1088, align: 32, elements: !307)
!307 = !{!308, !310, !312, !316}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "addressFamily", scope: !306, file: !4, line: 35, baseType: !309, size: 32, align: 32)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "NicInfoAddrType", file: !4, line: 32, baseType: !85)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpEnabled", scope: !306, file: !4, line: 36, baseType: !311, size: 8, align: 8, offset: 32)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !212, line: 230, baseType: !111)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddress", scope: !306, file: !4, line: 37, baseType: !313, size: 512, align: 8, offset: 40)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 512, align: 8, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "subnetMask", scope: !306, file: !4, line: 38, baseType: !313, size: 512, align: 8, offset: 552)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !319, line: 50, baseType: !320)
!319 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1422")
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !319, line: 49, baseType: !195)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !322, line: 155, baseType: !323)
!322 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line1422")
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, align: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!318, !326}
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !319, line: 77, baseType: !109)
!327 = !{!328, !332, !333, !337, !338, !396, !427, !428, !502, !503, !507, !509}
!328 = distinct !DIGlobalVariable(name: "vm_version", scope: !0, file: !73, line: 73, type: !329, isLocal: false, isDefinition: true, variable: [20 x i8]* @vm_version)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 160, align: 8, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 20)
!332 = distinct !DIGlobalVariable(name: "guestInfoPollInterval", scope: !0, file: !73, line: 129, type: !195, isLocal: false, isDefinition: true, variable: i32* @guestInfoPollInterval)
!333 = distinct !DIGlobalVariable(name: "gGuestInfoLastGatherTime", scope: !0, file: !73, line: 134, type: !334, isLocal: false, isDefinition: true, variable: i64* @gGuestInfoLastGatherTime)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !335, line: 75, baseType: !336)
!335 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line1422")
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !123, line: 139, baseType: !240)
!337 = distinct !DIGlobalVariable(name: "guestInfoStatsInterval", scope: !0, file: !73, line: 141, type: !195, isLocal: false, isDefinition: true, variable: i32* @guestInfoStatsInterval)
!338 = distinct !DIGlobalVariable(name: "regData", scope: !339, file: !73, line: 1877, type: !343, isLocal: true, isDefinition: true, variable: %struct.ToolsPluginData* @ToolsOnLoad.regData)
!339 = distinct !DISubprogram(name: "ToolsOnLoad", scope: !73, file: !73, line: 1875, type: !340, isLocal: false, isDefinition: true, scopeLine: 1876, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!340 = !DISubroutineType(types: !341)
!341 = !{!342, !362}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsPluginData", file: !48, line: 545, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsPluginData", file: !48, line: 501, size: 256, align: 64, elements: !345)
!345 = !{!346, !347, !358, !394}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !344, file: !48, line: 503, baseType: !257, size: 64, align: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !344, file: !48, line: 508, baseType: !348, size: 64, align: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "GArray", file: !350, line: 37, baseType: !351)
!350 = !DIFile(filename: "/usr/include/glib-2.0/glib/garray.h", directory: "/home/lichi/Desktop/open-vm-tools/line1422")
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GArray", file: !350, line: 41, size: 128, align: 64, elements: !352)
!352 = !{!353, !356}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !351, file: !350, line: 43, baseType: !354, size: 64, align: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !319, line: 46, baseType: !111)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !351, file: !350, line: 44, baseType: !357, size: 32, align: 32, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !319, line: 55, baseType: !124)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "errorCb", scope: !344, file: !48, line: 539, baseType: !359, size: 64, align: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!318, !362, !392, !326, !393}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppCtx", file: !48, line: 274, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppCtx", file: !48, line: 241, size: 576, align: 64, elements: !365)
!365 = !{!366, !368, !371, !372, !373, !377, !382, !387, !388, !389, !391}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !364, file: !48, line: 243, baseType: !367, size: 32, align: 32)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCoreAPI", file: !48, line: 234, baseType: !47)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !364, file: !48, line: 245, baseType: !369, size: 64, align: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "isVMware", scope: !364, file: !48, line: 247, baseType: !318, size: 32, align: 32, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "errorCode", scope: !364, file: !48, line: 249, baseType: !195, size: 32, align: 32, offset: 160)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "mainLoop", scope: !364, file: !48, line: 251, baseType: !374, size: 64, align: 64, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainLoop", file: !322, line: 56, baseType: !376)
!376 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainLoop", file: !322, line: 56, flags: DIFlagFwdDecl)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !364, file: !48, line: 253, baseType: !378, size: 64, align: 64, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !380, line: 48, baseType: !381)
!380 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line1422")
!381 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !380, line: 48, flags: DIFlagFwdDecl)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !364, file: !48, line: 255, baseType: !383, size: 64, align: 64, offset: 320)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !385, line: 48, baseType: !386)
!385 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1422")
!386 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !385, line: 48, flags: DIFlagFwdDecl)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "blockFD", scope: !364, file: !48, line: 261, baseType: !195, size: 32, align: 32, offset: 384)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "uinputFD", scope: !364, file: !48, line: 263, baseType: !195, size: 32, align: 32, offset: 416)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !364, file: !48, line: 265, baseType: !390, size: 64, align: 64, offset: 448)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "serviceObj", scope: !364, file: !48, line: 273, baseType: !326, size: 64, align: 64, offset: 512)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppType", file: !48, line: 360, baseType: !66)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !344, file: !48, line: 544, baseType: !326, size: 64, align: 64, offset: 192)
!395 = !{}
!396 = distinct !DIGlobalVariable(name: "gInfoCache", scope: !0, file: !73, line: 154, type: !397, isLocal: true, isDefinition: true, variable: %struct._GuestInfoCache* @gInfoCache)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestInfoCache", file: !73, line: 121, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GuestInfoCache", file: !73, line: 115, size: 896, align: 64, elements: !399)
!399 = !{!400, !404, !405, !425}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !398, file: !73, line: 117, baseType: !401, size: 704, align: 64)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 704, align: 64, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 11)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "nicInfo", scope: !398, file: !73, line: 118, baseType: !112, size: 64, align: 64, offset: 704)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "diskInfo", scope: !398, file: !73, line: 119, baseType: !406, size: 64, align: 64, offset: 768)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, align: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestDiskInfo", file: !52, line: 106, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_DiskInfo", file: !52, line: 103, size: 128, align: 64, elements: !409)
!409 = !{!410, !411}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "numEntries", scope: !408, file: !52, line: 104, baseType: !124, size: 32, align: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "partitionList", scope: !408, file: !52, line: 105, baseType: !412, size: 64, align: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "PPartitionEntry", file: !52, line: 101, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64, align: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PartitionEntry", file: !52, line: 95, size: 928, align: 8, elements: !415)
!415 = !{!416, !420, !421}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "freeBytes", scope: !414, file: !52, line: 96, baseType: !417, size: 64, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !212, line: 171, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !214, line: 55, baseType: !419)
!419 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "totalBytes", scope: !414, file: !52, line: 97, baseType: !417, size: 64, align: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !414, file: !52, line: 98, baseType: !422, size: 800, align: 8, offset: 128)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 800, align: 8, elements: !423)
!423 = !{!424}
!424 = !DISubrange(count: 100)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !398, file: !73, line: 120, baseType: !426, size: 32, align: 32, offset: 832)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "NicInfoMethod", file: !73, line: 109, baseType: !72)
!427 = distinct !DIGlobalVariable(name: "gVMResumed", scope: !0, file: !73, line: 162, type: !311, isLocal: true, isDefinition: true, variable: i8* @gVMResumed)
!428 = distinct !DIGlobalVariable(name: "gatherInfoTimeoutSource", scope: !0, file: !73, line: 146, type: !429, isLocal: true, isDefinition: true, variable: %struct._GSource** @gatherInfoTimeoutSource)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64, align: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !322, line: 64, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !322, line: 171, size: 768, align: 64, elements: !432)
!432 = !{!433, !434, !450, !479, !480, !484, !485, !486, !487, !495, !496, !497, !498}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !431, file: !322, line: 174, baseType: !326, size: 64, align: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !431, file: !322, line: 175, baseType: !435, size: 64, align: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !322, line: 77, baseType: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !322, line: 196, size: 192, align: 64, elements: !438)
!438 = !{!439, !443, !444}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !437, file: !322, line: 198, baseType: !440, size: 64, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64, align: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !326}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !437, file: !322, line: 199, baseType: !440, size: 64, align: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !437, file: !322, line: 200, baseType: !445, size: 64, align: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64, align: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !326, !429, !448, !449}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !431, file: !322, line: 177, baseType: !451, size: 64, align: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64, align: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !322, line: 130, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !322, line: 214, size: 384, align: 64, elements: !455)
!455 = !{!456, !461, !465, !469, !473, !474}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !454, file: !322, line: 216, baseType: !457, size: 64, align: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64, align: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!318, !429, !460}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !454, file: !322, line: 218, baseType: !462, size: 64, align: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!318, !429}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !454, file: !322, line: 219, baseType: !466, size: 64, align: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64, align: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!318, !429, !321, !326}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !454, file: !322, line: 222, baseType: !470, size: 64, align: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64, align: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !429}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !454, file: !322, line: 226, baseType: !321, size: 64, align: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !454, file: !322, line: 227, baseType: !475, size: 64, align: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !322, line: 212, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{null}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !431, file: !322, line: 178, baseType: !357, size: 32, align: 32, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !431, file: !322, line: 180, baseType: !481, size: 64, align: 64, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, align: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !322, line: 48, baseType: !483)
!483 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !322, line: 48, flags: DIFlagFwdDecl)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !431, file: !322, line: 182, baseType: !320, size: 32, align: 32, offset: 320)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !431, file: !322, line: 183, baseType: !357, size: 32, align: 32, offset: 352)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !431, file: !322, line: 184, baseType: !357, size: 32, align: 32, offset: 384)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !431, file: !322, line: 186, baseType: !488, size: 64, align: 64, offset: 448)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !490, line: 37, baseType: !491)
!490 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/open-vm-tools/line1422")
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !490, line: 39, size: 128, align: 64, elements: !492)
!492 = !{!493, !494}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !491, file: !490, line: 41, baseType: !326, size: 64, align: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !491, file: !490, line: 42, baseType: !488, size: 64, align: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !431, file: !322, line: 188, baseType: !429, size: 64, align: 64, offset: 512)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !431, file: !322, line: 189, baseType: !429, size: 64, align: 64, offset: 576)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !431, file: !322, line: 191, baseType: !110, size: 64, align: 64, offset: 640)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !431, file: !322, line: 193, baseType: !499, size: 64, align: 64, offset: 704)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64, align: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !322, line: 65, baseType: !501)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !322, line: 65, flags: DIFlagFwdDecl)
!502 = distinct !DIGlobalVariable(name: "gatherStatsTimeoutSource", scope: !0, file: !73, line: 151, type: !429, isLocal: true, isDefinition: true, variable: %struct._GSource** @gatherStatsTimeoutSource)
!503 = distinct !DIGlobalVariable(name: "ifacePrimaryStringCached", scope: !504, file: !73, line: 382, type: !354, isLocal: true, isDefinition: true, variable: i8** @GuestInfoResetNicPrimaryList.ifacePrimaryStringCached)
!504 = distinct !DISubprogram(name: "GuestInfoResetNicPrimaryList", scope: !73, file: !73, line: 380, type: !505, isLocal: true, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!505 = !DISubroutineType(types: !506)
!506 = !{!311, !362}
!507 = distinct !DIGlobalVariable(name: "ifaceLowPriorityStringCached", scope: !508, file: !73, line: 412, type: !354, isLocal: true, isDefinition: true, variable: i8** @GuestInfoResetNicLowPriorityList.ifaceLowPriorityStringCached)
!508 = distinct !DISubprogram(name: "GuestInfoResetNicLowPriorityList", scope: !73, file: !73, line: 410, type: !505, isLocal: true, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!509 = distinct !DIGlobalVariable(name: "ifaceExcludeStringCached", scope: !510, file: !73, line: 442, type: !354, isLocal: true, isDefinition: true, variable: i8** @GuestInfoResetNicExcludeList.ifaceExcludeStringCached)
!510 = distinct !DISubprogram(name: "GuestInfoResetNicExcludeList", scope: !73, file: !73, line: 440, type: !505, isLocal: true, isDefinition: true, scopeLine: 441, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!511 = !{i32 2, !"Dwarf Version", i32 4}
!512 = !{i32 2, !"Debug Info Version", i32 3}
!513 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!514 = distinct !DISubprogram(name: "GuestInfoConvertNicInfoToNicInfoV1", scope: !73, file: !73, line: 643, type: !515, isLocal: false, isDefinition: true, scopeLine: 645, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !112, !517}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64, align: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestNicInfoV1", file: !52, line: 91, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestNicInfoV1", file: !52, line: 88, size: 19488, align: 32, elements: !520)
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "numNicEntries", scope: !519, file: !52, line: 89, baseType: !124, size: 32, align: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "nicList", scope: !519, file: !52, line: 90, baseType: !523, size: 19456, align: 32, offset: 32)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, size: 19456, align: 32, elements: !537)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "NicEntryV1", file: !52, line: 86, baseType: !525)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NicEntryV1", file: !52, line: 82, size: 1216, align: 32, elements: !526)
!526 = !{!527, !528, !532}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "numIPs", scope: !525, file: !52, line: 83, baseType: !124, size: 32, align: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "macAddress", scope: !525, file: !52, line: 84, baseType: !529, size: 152, align: 8, offset: 32)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 152, align: 8, elements: !530)
!530 = !{!531}
!531 = !DISubrange(count: 19)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddress", scope: !525, file: !52, line: 85, baseType: !533, size: 1024, align: 8, offset: 184)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 1024, align: 8, elements: !534)
!534 = !{!535, !536}
!535 = !DISubrange(count: 8)
!536 = !DISubrange(count: 16)
!537 = !{!536}
!538 = !DILocalVariable(name: "info", arg: 1, scope: !514, file: !73, line: 643, type: !112)
!539 = !DIExpression()
!540 = !DILocation(line: 643, column: 47, scope: !514)
!541 = !DILocalVariable(name: "infoV1", arg: 2, scope: !514, file: !73, line: 644, type: !517)
!542 = !DILocation(line: 644, column: 52, scope: !514)
!543 = !DILocalVariable(name: "maxNics", scope: !514, file: !73, line: 646, type: !211)
!544 = !DILocation(line: 646, column: 11, scope: !514)
!545 = !DILocalVariable(name: "i", scope: !514, file: !73, line: 647, type: !120)
!546 = !DILocation(line: 647, column: 10, scope: !514)
!547 = !DILocation(line: 652, column: 17, scope: !514)
!548 = !DILocation(line: 652, column: 23, scope: !514)
!549 = !DILocation(line: 652, column: 28, scope: !514)
!550 = !DILocation(line: 652, column: 38, scope: !514)
!551 = !DILocation(line: 652, column: 15, scope: !514)
!552 = !DILocation(line: 652, column: 49, scope: !553)
!553 = !DILexicalBlockFile(scope: !514, file: !73, discriminator: 1)
!554 = !DILocation(line: 652, column: 55, scope: !553)
!555 = !DILocation(line: 652, column: 60, scope: !553)
!556 = !DILocation(line: 652, column: 15, scope: !553)
!557 = !DILocation(line: 652, column: 15, scope: !558)
!558 = !DILexicalBlockFile(scope: !514, file: !73, discriminator: 2)
!559 = !DILocation(line: 652, column: 15, scope: !560)
!560 = !DILexicalBlockFile(scope: !514, file: !73, discriminator: 3)
!561 = !DILocation(line: 652, column: 12, scope: !560)
!562 = !DILocation(line: 653, column: 28, scope: !514)
!563 = !DILocation(line: 653, column: 4, scope: !514)
!564 = !DILocation(line: 653, column: 12, scope: !514)
!565 = !DILocation(line: 653, column: 26, scope: !514)
!566 = !DILocation(line: 654, column: 8, scope: !567)
!567 = distinct !DILexicalBlock(scope: !514, file: !73, line: 654, column: 8)
!568 = !DILocation(line: 654, column: 18, scope: !567)
!569 = !DILocation(line: 654, column: 24, scope: !567)
!570 = !DILocation(line: 654, column: 29, scope: !567)
!571 = !DILocation(line: 654, column: 16, scope: !567)
!572 = !DILocation(line: 654, column: 8, scope: !514)
!573 = !DILocation(line: 655, column: 7, scope: !574)
!574 = distinct !DILexicalBlock(scope: !567, file: !73, line: 654, column: 39)
!575 = !DILocation(line: 656, column: 4, scope: !574)
!576 = !DILocation(line: 658, column: 13, scope: !577)
!577 = distinct !DILexicalBlock(scope: !514, file: !73, line: 658, column: 4)
!578 = !DILocation(line: 658, column: 9, scope: !577)
!579 = !DILocation(line: 658, column: 19, scope: !580)
!580 = !DILexicalBlockFile(scope: !581, file: !73, discriminator: 1)
!581 = distinct !DILexicalBlock(scope: !577, file: !73, line: 658, column: 4)
!582 = !DILocation(line: 658, column: 26, scope: !580)
!583 = !DILocation(line: 658, column: 33, scope: !580)
!584 = !DILocation(line: 658, column: 38, scope: !580)
!585 = !DILocation(line: 658, column: 22, scope: !580)
!586 = !DILocation(line: 658, column: 4, scope: !580)
!587 = !DILocalVariable(name: "j", scope: !588, file: !73, line: 659, type: !120)
!588 = distinct !DILexicalBlock(scope: !581, file: !73, line: 658, column: 56)
!589 = !DILocation(line: 659, column: 13, scope: !588)
!590 = !DILocalVariable(name: "maxIPs", scope: !588, file: !73, line: 660, type: !211)
!591 = !DILocation(line: 660, column: 14, scope: !588)
!592 = !DILocalVariable(name: "nic", scope: !588, file: !73, line: 661, type: !126)
!593 = !DILocation(line: 661, column: 19, scope: !588)
!594 = !DILocation(line: 661, column: 49, scope: !588)
!595 = !DILocation(line: 661, column: 27, scope: !588)
!596 = !DILocation(line: 661, column: 28, scope: !588)
!597 = !DILocation(line: 661, column: 35, scope: !588)
!598 = !DILocation(line: 661, column: 40, scope: !588)
!599 = !DILocation(line: 663, column: 34, scope: !588)
!600 = !DILocation(line: 663, column: 18, scope: !588)
!601 = !DILocation(line: 663, column: 26, scope: !588)
!602 = !DILocation(line: 663, column: 37, scope: !588)
!603 = !DILocation(line: 664, column: 18, scope: !588)
!604 = !DILocation(line: 664, column: 23, scope: !588)
!605 = !DILocation(line: 663, column: 7, scope: !588)
!606 = !DILocation(line: 667, column: 19, scope: !588)
!607 = !DILocation(line: 667, column: 24, scope: !588)
!608 = !DILocation(line: 667, column: 28, scope: !588)
!609 = !DILocation(line: 667, column: 37, scope: !588)
!610 = !DILocation(line: 667, column: 17, scope: !588)
!611 = !DILocation(line: 667, column: 47, scope: !612)
!612 = !DILexicalBlockFile(scope: !588, file: !73, discriminator: 1)
!613 = !DILocation(line: 667, column: 52, scope: !612)
!614 = !DILocation(line: 667, column: 56, scope: !612)
!615 = !DILocation(line: 667, column: 17, scope: !612)
!616 = !DILocation(line: 667, column: 17, scope: !617)
!617 = !DILexicalBlockFile(scope: !588, file: !73, discriminator: 2)
!618 = !DILocation(line: 667, column: 17, scope: !619)
!619 = !DILexicalBlockFile(scope: !588, file: !73, discriminator: 3)
!620 = !DILocation(line: 667, column: 14, scope: !619)
!621 = !DILocation(line: 668, column: 23, scope: !588)
!622 = !DILocation(line: 668, column: 7, scope: !588)
!623 = !DILocation(line: 668, column: 15, scope: !588)
!624 = !DILocation(line: 668, column: 26, scope: !588)
!625 = !DILocation(line: 668, column: 33, scope: !588)
!626 = !DILocation(line: 670, column: 16, scope: !627)
!627 = distinct !DILexicalBlock(scope: !588, file: !73, line: 670, column: 7)
!628 = !DILocation(line: 670, column: 12, scope: !627)
!629 = !DILocation(line: 670, column: 22, scope: !630)
!630 = !DILexicalBlockFile(scope: !631, file: !73, discriminator: 1)
!631 = distinct !DILexicalBlock(scope: !627, file: !73, line: 670, column: 7)
!632 = !DILocation(line: 670, column: 29, scope: !630)
!633 = !DILocation(line: 670, column: 35, scope: !630)
!634 = !DILocation(line: 670, column: 39, scope: !630)
!635 = !DILocation(line: 670, column: 25, scope: !630)
!636 = !DILocation(line: 670, column: 7, scope: !630)
!637 = !DILocalVariable(name: "ip", scope: !638, file: !73, line: 671, type: !136)
!638 = distinct !DILexicalBlock(scope: !631, file: !73, line: 670, column: 56)
!639 = !DILocation(line: 671, column: 26, scope: !638)
!640 = !DILocation(line: 671, column: 52, scope: !638)
!641 = !DILocation(line: 671, column: 33, scope: !638)
!642 = !DILocation(line: 671, column: 34, scope: !638)
!643 = !DILocation(line: 671, column: 40, scope: !638)
!644 = !DILocation(line: 671, column: 44, scope: !638)
!645 = !DILocalVariable(name: "typedIp", scope: !638, file: !73, line: 672, type: !174)
!646 = !DILocation(line: 672, column: 26, scope: !638)
!647 = !DILocation(line: 672, column: 37, scope: !638)
!648 = !DILocation(line: 672, column: 41, scope: !638)
!649 = !DILocation(line: 674, column: 14, scope: !650)
!650 = distinct !DILexicalBlock(scope: !638, file: !73, line: 674, column: 14)
!651 = !DILocation(line: 674, column: 23, scope: !650)
!652 = !DILocation(line: 674, column: 41, scope: !650)
!653 = !DILocation(line: 674, column: 14, scope: !638)
!654 = !DILocation(line: 675, column: 13, scope: !655)
!655 = distinct !DILexicalBlock(scope: !650, file: !73, line: 674, column: 54)
!656 = !DILocation(line: 678, column: 39, scope: !657)
!657 = distinct !DILexicalBlock(scope: !638, file: !73, line: 678, column: 14)
!658 = !DILocation(line: 678, column: 48, scope: !657)
!659 = !DILocation(line: 678, column: 62, scope: !657)
!660 = !DILocation(line: 679, column: 60, scope: !657)
!661 = !DILocation(line: 679, column: 31, scope: !657)
!662 = !DILocation(line: 679, column: 47, scope: !657)
!663 = !DILocation(line: 679, column: 39, scope: !657)
!664 = !DILocation(line: 679, column: 50, scope: !657)
!665 = !DILocation(line: 678, column: 14, scope: !657)
!666 = !DILocation(line: 678, column: 14, scope: !638)
!667 = !DILocation(line: 681, column: 29, scope: !668)
!668 = distinct !DILexicalBlock(scope: !657, file: !73, line: 680, column: 72)
!669 = !DILocation(line: 681, column: 13, scope: !668)
!670 = !DILocation(line: 681, column: 21, scope: !668)
!671 = !DILocation(line: 681, column: 32, scope: !668)
!672 = !DILocation(line: 681, column: 38, scope: !668)
!673 = !DILocation(line: 682, column: 33, scope: !674)
!674 = distinct !DILexicalBlock(scope: !668, file: !73, line: 682, column: 17)
!675 = !DILocation(line: 682, column: 17, scope: !674)
!676 = !DILocation(line: 682, column: 25, scope: !674)
!677 = !DILocation(line: 682, column: 36, scope: !674)
!678 = !DILocation(line: 682, column: 46, scope: !674)
!679 = !DILocation(line: 682, column: 43, scope: !674)
!680 = !DILocation(line: 682, column: 17, scope: !668)
!681 = !DILocation(line: 683, column: 16, scope: !682)
!682 = distinct !DILexicalBlock(scope: !674, file: !73, line: 682, column: 54)
!683 = !DILocation(line: 685, column: 10, scope: !668)
!684 = !DILocation(line: 686, column: 7, scope: !638)
!685 = !DILocation(line: 670, column: 52, scope: !686)
!686 = !DILexicalBlockFile(scope: !631, file: !73, discriminator: 2)
!687 = !DILocation(line: 670, column: 7, scope: !686)
!688 = distinct !{!688, !689}
!689 = !DILocation(line: 670, column: 7, scope: !588)
!690 = !DILocation(line: 688, column: 27, scope: !691)
!691 = distinct !DILexicalBlock(scope: !588, file: !73, line: 688, column: 11)
!692 = !DILocation(line: 688, column: 11, scope: !691)
!693 = !DILocation(line: 688, column: 19, scope: !691)
!694 = !DILocation(line: 688, column: 30, scope: !691)
!695 = !DILocation(line: 688, column: 40, scope: !691)
!696 = !DILocation(line: 688, column: 45, scope: !691)
!697 = !DILocation(line: 688, column: 49, scope: !691)
!698 = !DILocation(line: 688, column: 37, scope: !691)
!699 = !DILocation(line: 688, column: 11, scope: !588)
!700 = !DILocation(line: 689, column: 10, scope: !701)
!701 = distinct !DILexicalBlock(scope: !691, file: !73, line: 688, column: 58)
!702 = !DILocation(line: 690, column: 7, scope: !701)
!703 = !DILocation(line: 691, column: 11, scope: !704)
!704 = distinct !DILexicalBlock(scope: !588, file: !73, line: 691, column: 11)
!705 = !DILocation(line: 691, column: 16, scope: !704)
!706 = !DILocation(line: 691, column: 13, scope: !704)
!707 = !DILocation(line: 691, column: 11, scope: !588)
!708 = !DILocation(line: 692, column: 10, scope: !709)
!709 = distinct !DILexicalBlock(scope: !704, file: !73, line: 691, column: 25)
!710 = !DILocation(line: 694, column: 4, scope: !588)
!711 = !DILocation(line: 658, column: 52, scope: !712)
!712 = !DILexicalBlockFile(scope: !581, file: !73, discriminator: 2)
!713 = !DILocation(line: 658, column: 4, scope: !712)
!714 = distinct !{!714, !715}
!715 = !DILocation(line: 658, column: 4, scope: !514)
!716 = !DILocation(line: 695, column: 1, scope: !514)
!717 = distinct !DISubprogram(name: "GuestInfoFindMacAddress", scope: !73, file: !73, line: 1293, type: !718, isLocal: false, isDefinition: true, scopeLine: 1295, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!718 = !DISubroutineType(types: !719)
!719 = !{!126, !112, !257}
!720 = !DILocalVariable(name: "nicInfo", arg: 1, scope: !717, file: !73, line: 1293, type: !112)
!721 = !DILocation(line: 1293, column: 36, scope: !717)
!722 = !DILocalVariable(name: "macAddress", arg: 2, scope: !717, file: !73, line: 1294, type: !257)
!723 = !DILocation(line: 1294, column: 37, scope: !717)
!724 = !DILocalVariable(name: "i", scope: !717, file: !73, line: 1296, type: !120)
!725 = !DILocation(line: 1296, column: 10, scope: !717)
!726 = !DILocation(line: 1298, column: 11, scope: !727)
!727 = distinct !DILexicalBlock(scope: !717, file: !73, line: 1298, column: 4)
!728 = !DILocation(line: 1298, column: 9, scope: !727)
!729 = !DILocation(line: 1298, column: 16, scope: !730)
!730 = !DILexicalBlockFile(scope: !731, file: !73, discriminator: 1)
!731 = distinct !DILexicalBlock(scope: !727, file: !73, line: 1298, column: 4)
!732 = !DILocation(line: 1298, column: 20, scope: !730)
!733 = !DILocation(line: 1298, column: 29, scope: !730)
!734 = !DILocation(line: 1298, column: 34, scope: !730)
!735 = !DILocation(line: 1298, column: 18, scope: !730)
!736 = !DILocation(line: 1298, column: 4, scope: !730)
!737 = !DILocalVariable(name: "nic", scope: !738, file: !73, line: 1299, type: !126)
!738 = distinct !DILexicalBlock(scope: !731, file: !73, line: 1298, column: 49)
!739 = !DILocation(line: 1299, column: 19, scope: !738)
!740 = !DILocation(line: 1299, column: 49, scope: !738)
!741 = !DILocation(line: 1299, column: 26, scope: !738)
!742 = !DILocation(line: 1299, column: 35, scope: !738)
!743 = !DILocation(line: 1299, column: 40, scope: !738)
!744 = !DILocation(line: 1300, column: 19, scope: !745)
!745 = distinct !DILexicalBlock(scope: !738, file: !73, line: 1300, column: 11)
!746 = !DILocation(line: 1300, column: 24, scope: !745)
!747 = !DILocation(line: 1300, column: 36, scope: !745)
!748 = !DILocation(line: 1300, column: 11, scope: !745)
!749 = !DILocation(line: 1300, column: 52, scope: !745)
!750 = !DILocation(line: 1300, column: 11, scope: !738)
!751 = !DILocation(line: 1301, column: 17, scope: !752)
!752 = distinct !DILexicalBlock(scope: !745, file: !73, line: 1300, column: 58)
!753 = !DILocation(line: 1301, column: 10, scope: !752)
!754 = !DILocation(line: 1303, column: 4, scope: !738)
!755 = !DILocation(line: 1298, column: 45, scope: !756)
!756 = !DILexicalBlockFile(scope: !731, file: !73, discriminator: 2)
!757 = !DILocation(line: 1298, column: 4, scope: !756)
!758 = distinct !{!758, !759}
!759 = !DILocation(line: 1298, column: 4, scope: !717)
!760 = !DILocation(line: 1305, column: 4, scope: !717)
!761 = !DILocation(line: 1306, column: 1, scope: !717)
!762 = distinct !DISubprogram(name: "GuestInfo_ServerReportStats", scope: !73, file: !73, line: 1644, type: !763, isLocal: false, isDefinition: true, scopeLine: 1647, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!763 = !DISubroutineType(types: !764)
!764 = !{!311, !362, !765}
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64, align: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "DynBuf", file: !767, line: 40, baseType: !768)
!767 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dynbuf.h", directory: "/home/lichi/Desktop/open-vm-tools/line1422")
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DynBuf", file: !767, line: 36, size: 192, align: 64, elements: !769)
!769 = !{!770, !771, !774}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !768, file: !767, line: 37, baseType: !110, size: 64, align: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !768, file: !767, line: 38, baseType: !772, size: 64, align: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !773, line: 216, baseType: !419)
!773 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1422")
!774 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !768, file: !767, line: 39, baseType: !772, size: 64, align: 64, offset: 128)
!775 = !DILocalVariable(name: "ctx", arg: 1, scope: !762, file: !73, line: 1645, type: !362)
!776 = !DILocation(line: 1645, column: 17, scope: !762)
!777 = !DILocalVariable(name: "stats", arg: 2, scope: !762, file: !73, line: 1646, type: !765)
!778 = !DILocation(line: 1646, column: 12, scope: !762)
!779 = !DILocation(line: 1648, column: 31, scope: !762)
!780 = !DILocation(line: 1650, column: 42, scope: !762)
!781 = !DILocation(line: 1650, column: 31, scope: !762)
!782 = !DILocation(line: 1651, column: 46, scope: !762)
!783 = !DILocation(line: 1651, column: 31, scope: !762)
!784 = !DILocation(line: 1648, column: 11, scope: !762)
!785 = !DILocation(line: 1648, column: 4, scope: !762)
!786 = distinct !DISubprogram(name: "GuestInfoUpdateVmdb", scope: !73, file: !73, line: 1046, type: !787, isLocal: true, isDefinition: true, scopeLine: 1050, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!787 = !DISubroutineType(types: !788)
!788 = !{!311, !362, !789, !109, !772}
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestInfoType", file: !52, line: 75, baseType: !51)
!790 = !DILocalVariable(name: "ctx", arg: 1, scope: !786, file: !73, line: 1046, type: !362)
!791 = !DILocation(line: 1046, column: 34, scope: !786)
!792 = !DILocalVariable(name: "infoType", arg: 2, scope: !786, file: !73, line: 1047, type: !789)
!793 = !DILocation(line: 1047, column: 35, scope: !786)
!794 = !DILocalVariable(name: "info", arg: 3, scope: !786, file: !73, line: 1048, type: !109)
!795 = !DILocation(line: 1048, column: 27, scope: !786)
!796 = !DILocalVariable(name: "infoSize", arg: 4, scope: !786, file: !73, line: 1049, type: !772)
!797 = !DILocation(line: 1049, column: 28, scope: !786)
!798 = !DILocation(line: 1052, column: 73, scope: !786)
!799 = !DILocation(line: 1052, column: 4, scope: !786)
!800 = !DILocation(line: 1054, column: 8, scope: !801)
!801 = distinct !DILexicalBlock(scope: !786, file: !73, line: 1054, column: 8)
!802 = !DILocation(line: 1054, column: 8, scope: !786)
!803 = !DILocation(line: 1055, column: 18, scope: !804)
!804 = distinct !DILexicalBlock(scope: !801, file: !73, line: 1054, column: 20)
!805 = !DILocation(line: 1056, column: 7, scope: !804)
!806 = !DILocation(line: 1057, column: 4, scope: !804)
!807 = !DILocation(line: 1059, column: 12, scope: !786)
!808 = !DILocation(line: 1059, column: 4, scope: !786)
!809 = !DILocation(line: 1070, column: 28, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !73, line: 1070, column: 11)
!811 = distinct !DILexicalBlock(scope: !786, file: !73, line: 1059, column: 22)
!812 = !DILocation(line: 1070, column: 11, scope: !810)
!813 = !DILocation(line: 1070, column: 38, scope: !810)
!814 = !DILocation(line: 1070, column: 45, scope: !810)
!815 = !DILocation(line: 1071, column: 35, scope: !810)
!816 = !DILocation(line: 1071, column: 18, scope: !810)
!817 = !DILocation(line: 1071, column: 54, scope: !810)
!818 = !DILocation(line: 1071, column: 11, scope: !810)
!819 = !DILocation(line: 1071, column: 60, scope: !810)
!820 = !DILocation(line: 1070, column: 11, scope: !821)
!821 = !DILexicalBlockFile(scope: !811, file: !73, discriminator: 1)
!822 = !DILocation(line: 1073, column: 87, scope: !823)
!823 = distinct !DILexicalBlock(scope: !810, file: !73, line: 1071, column: 66)
!824 = !DILocation(line: 1073, column: 10, scope: !823)
!825 = !DILocation(line: 1074, column: 10, scope: !823)
!826 = !DILocation(line: 1077, column: 25, scope: !827)
!827 = distinct !DILexicalBlock(scope: !811, file: !73, line: 1077, column: 11)
!828 = !DILocation(line: 1077, column: 30, scope: !827)
!829 = !DILocation(line: 1077, column: 48, scope: !827)
!830 = !DILocation(line: 1077, column: 12, scope: !827)
!831 = !DILocation(line: 1077, column: 11, scope: !811)
!832 = !DILocation(line: 1078, column: 101, scope: !833)
!833 = distinct !DILexicalBlock(scope: !827, file: !73, line: 1077, column: 55)
!834 = !DILocation(line: 1078, column: 10, scope: !833)
!835 = !DILocation(line: 1079, column: 10, scope: !833)
!836 = !DILocation(line: 1083, column: 29, scope: !811)
!837 = !DILocation(line: 1083, column: 12, scope: !811)
!838 = !DILocation(line: 1083, column: 7, scope: !811)
!839 = !DILocation(line: 1084, column: 62, scope: !811)
!840 = !DILocation(line: 1084, column: 36, scope: !811)
!841 = !DILocation(line: 1084, column: 24, scope: !811)
!842 = !DILocation(line: 1084, column: 7, scope: !811)
!843 = !DILocation(line: 1084, column: 34, scope: !811)
!844 = !DILocation(line: 1085, column: 7, scope: !811)
!845 = !DILocation(line: 1089, column: 36, scope: !846)
!846 = distinct !DILexicalBlock(scope: !847, file: !73, line: 1089, column: 14)
!847 = distinct !DILexicalBlock(scope: !811, file: !73, line: 1088, column: 7)
!848 = !DILocation(line: 1089, column: 55, scope: !846)
!849 = !DILocation(line: 1089, column: 41, scope: !846)
!850 = !DILocation(line: 1089, column: 15, scope: !846)
!851 = !DILocation(line: 1089, column: 14, scope: !847)
!852 = !DILocation(line: 1090, column: 13, scope: !853)
!853 = distinct !DILexicalBlock(scope: !846, file: !73, line: 1089, column: 62)
!854 = !DILocation(line: 1091, column: 13, scope: !853)
!855 = !DILocation(line: 1093, column: 10, scope: !847)
!856 = !DILocation(line: 1098, column: 39, scope: !857)
!857 = distinct !DILexicalBlock(scope: !858, file: !73, line: 1098, column: 14)
!858 = distinct !DILexicalBlock(scope: !811, file: !73, line: 1097, column: 7)
!859 = !DILocation(line: 1098, column: 44, scope: !857)
!860 = !DILocation(line: 1098, column: 54, scope: !857)
!861 = !DILocation(line: 1098, column: 15, scope: !857)
!862 = !DILocation(line: 1098, column: 14, scope: !858)
!863 = !DILocation(line: 1099, column: 13, scope: !864)
!864 = distinct !DILexicalBlock(scope: !857, file: !73, line: 1098, column: 61)
!865 = !DILocation(line: 1100, column: 13, scope: !864)
!866 = !DILocation(line: 1102, column: 10, scope: !858)
!867 = !DILocalVariable(name: "requestSize", scope: !868, file: !73, line: 1111, type: !124)
!868 = distinct !DILexicalBlock(scope: !811, file: !73, line: 1106, column: 7)
!869 = !DILocation(line: 1111, column: 23, scope: !868)
!870 = !DILocalVariable(name: "partitionCount", scope: !868, file: !73, line: 1113, type: !871)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !212, line: 177, baseType: !872)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !214, line: 48, baseType: !873)
!873 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!874 = !DILocation(line: 1113, column: 16, scope: !868)
!875 = !DILocalVariable(name: "offset", scope: !868, file: !73, line: 1114, type: !772)
!876 = !DILocation(line: 1114, column: 17, scope: !868)
!877 = !DILocalVariable(name: "request", scope: !868, file: !73, line: 1115, type: !110)
!878 = !DILocation(line: 1115, column: 16, scope: !868)
!879 = !DILocalVariable(name: "reply", scope: !868, file: !73, line: 1116, type: !110)
!880 = !DILocation(line: 1116, column: 16, scope: !868)
!881 = !DILocalVariable(name: "replyLen", scope: !868, file: !73, line: 1117, type: !772)
!882 = !DILocation(line: 1117, column: 17, scope: !868)
!883 = !DILocalVariable(name: "status", scope: !868, file: !73, line: 1118, type: !311)
!884 = !DILocation(line: 1118, column: 15, scope: !868)
!885 = !DILocalVariable(name: "pdi", scope: !868, file: !73, line: 1119, type: !406)
!886 = !DILocation(line: 1119, column: 25, scope: !868)
!887 = !DILocation(line: 1119, column: 31, scope: !868)
!888 = !DILocation(line: 1121, column: 31, scope: !889)
!889 = distinct !DILexicalBlock(scope: !868, file: !73, line: 1121, column: 14)
!890 = !DILocation(line: 1121, column: 15, scope: !889)
!891 = !DILocation(line: 1121, column: 14, scope: !868)
!892 = !DILocation(line: 1122, column: 13, scope: !893)
!893 = distinct !DILexicalBlock(scope: !889, file: !73, line: 1121, column: 37)
!894 = !DILocation(line: 1123, column: 13, scope: !893)
!895 = !DILocation(line: 1130, column: 14, scope: !896)
!896 = distinct !DILexicalBlock(scope: !868, file: !73, line: 1130, column: 14)
!897 = !DILocation(line: 1130, column: 19, scope: !896)
!898 = !DILocation(line: 1130, column: 30, scope: !896)
!899 = !DILocation(line: 1130, column: 14, scope: !868)
!900 = !DILocation(line: 1131, column: 135, scope: !901)
!901 = distinct !DILexicalBlock(scope: !896, file: !73, line: 1130, column: 42)
!902 = !DILocation(line: 1131, column: 140, scope: !901)
!903 = !DILocation(line: 1131, column: 13, scope: !901)
!904 = !DILocation(line: 1133, column: 28, scope: !901)
!905 = !DILocation(line: 1134, column: 10, scope: !901)
!906 = !DILocation(line: 1135, column: 30, scope: !907)
!907 = distinct !DILexicalBlock(scope: !896, file: !73, line: 1134, column: 17)
!908 = !DILocation(line: 1135, column: 35, scope: !907)
!909 = !DILocation(line: 1135, column: 28, scope: !907)
!910 = !DILocation(line: 1139, column: 54, scope: !868)
!911 = !DILocation(line: 1139, column: 52, scope: !868)
!912 = !DILocation(line: 1138, column: 47, scope: !868)
!913 = !DILocation(line: 1138, column: 22, scope: !868)
!914 = !DILocation(line: 1140, column: 37, scope: !868)
!915 = !DILocation(line: 1140, column: 36, scope: !868)
!916 = !DILocation(line: 1140, column: 20, scope: !868)
!917 = !DILocation(line: 1140, column: 18, scope: !868)
!918 = !DILocation(line: 1142, column: 22, scope: !868)
!919 = !DILocation(line: 1142, column: 31, scope: !868)
!920 = !DILocation(line: 1142, column: 10, scope: !868)
!921 = !DILocation(line: 1145, column: 26, scope: !868)
!922 = !DILocation(line: 1145, column: 19, scope: !868)
!923 = !DILocation(line: 1145, column: 17, scope: !868)
!924 = !DILocation(line: 1157, column: 17, scope: !868)
!925 = !DILocation(line: 1157, column: 27, scope: !868)
!926 = !DILocation(line: 1157, column: 25, scope: !868)
!927 = !DILocation(line: 1157, column: 10, scope: !868)
!928 = !DILocation(line: 1163, column: 14, scope: !929)
!929 = distinct !DILexicalBlock(scope: !868, file: !73, line: 1163, column: 14)
!930 = !DILocation(line: 1163, column: 19, scope: !929)
!931 = !DILocation(line: 1163, column: 14, scope: !868)
!932 = !DILocation(line: 1164, column: 20, scope: !933)
!933 = distinct !DILexicalBlock(scope: !929, file: !73, line: 1163, column: 34)
!934 = !DILocation(line: 1164, column: 30, scope: !933)
!935 = !DILocation(line: 1164, column: 28, scope: !933)
!936 = !DILocation(line: 1164, column: 37, scope: !933)
!937 = !DILocation(line: 1164, column: 62, scope: !933)
!938 = !DILocation(line: 1164, column: 67, scope: !933)
!939 = !DILocation(line: 1164, column: 13, scope: !933)
!940 = !DILocation(line: 1165, column: 49, scope: !933)
!941 = !DILocation(line: 1165, column: 47, scope: !933)
!942 = !DILocation(line: 1166, column: 10, scope: !933)
!943 = !DILocation(line: 1168, column: 75, scope: !868)
!944 = !DILocation(line: 1168, column: 10, scope: !868)
!945 = !DILocation(line: 1169, column: 35, scope: !868)
!946 = !DILocation(line: 1169, column: 40, scope: !868)
!947 = !DILocation(line: 1169, column: 45, scope: !868)
!948 = !DILocation(line: 1169, column: 54, scope: !868)
!949 = !DILocation(line: 1169, column: 19, scope: !868)
!950 = !DILocation(line: 1169, column: 17, scope: !868)
!951 = !DILocation(line: 1171, column: 14, scope: !952)
!952 = distinct !DILexicalBlock(scope: !868, file: !73, line: 1171, column: 14)
!953 = !DILocation(line: 1171, column: 14, scope: !868)
!954 = !DILocation(line: 1172, column: 24, scope: !955)
!955 = distinct !DILexicalBlock(scope: !952, file: !73, line: 1171, column: 22)
!956 = !DILocation(line: 1172, column: 23, scope: !955)
!957 = !DILocation(line: 1172, column: 30, scope: !955)
!958 = !DILocation(line: 1172, column: 22, scope: !955)
!959 = !DILocation(line: 1172, column: 20, scope: !955)
!960 = !DILocation(line: 1173, column: 10, scope: !955)
!961 = !DILocation(line: 1175, column: 18, scope: !868)
!962 = !DILocation(line: 1175, column: 10, scope: !868)
!963 = !DILocation(line: 1176, column: 18, scope: !868)
!964 = !DILocation(line: 1176, column: 10, scope: !868)
!965 = !DILocation(line: 1178, column: 15, scope: !966)
!966 = distinct !DILexicalBlock(scope: !868, file: !73, line: 1178, column: 14)
!967 = !DILocation(line: 1178, column: 14, scope: !868)
!968 = !DILocation(line: 1179, column: 13, scope: !969)
!969 = distinct !DILexicalBlock(scope: !966, file: !73, line: 1178, column: 23)
!970 = !DILocation(line: 1180, column: 13, scope: !969)
!971 = !DILocation(line: 1183, column: 10, scope: !868)
!972 = !DILocation(line: 1185, column: 10, scope: !868)
!973 = !DILocation(line: 1188, column: 7, scope: !811)
!974 = distinct !{!974, !973}
!975 = !DILocation(line: 1188, column: 78, scope: !976)
!976 = !DILexicalBlockFile(scope: !977, file: !73, discriminator: 1)
!977 = distinct !DILexicalBlock(scope: !811, file: !73, line: 1188, column: 10)
!978 = !DILocation(line: 1188, column: 12, scope: !976)
!979 = !DILocation(line: 1188, column: 89, scope: !976)
!980 = !DILocation(line: 1188, column: 89, scope: !981)
!981 = !DILexicalBlockFile(scope: !982, file: !73, discriminator: 2)
!982 = distinct !DILexicalBlock(scope: !983, file: !73, line: 1188, column: 89)
!983 = distinct !DILexicalBlock(scope: !977, file: !73, line: 1188, column: 89)
!984 = distinct !{!984, !985}
!985 = !DILocation(line: 1188, column: 89, scope: !977)
!986 = !DILocation(line: 1189, column: 7, scope: !811)
!987 = !DILocation(line: 1192, column: 95, scope: !786)
!988 = !DILocation(line: 1192, column: 4, scope: !786)
!989 = !DILocation(line: 1193, column: 4, scope: !786)
!990 = !DILocation(line: 1194, column: 1, scope: !786)
!991 = distinct !DISubprogram(name: "DynBuf_Get", scope: !767, file: !767, line: 113, type: !992, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!992 = !DISubroutineType(types: !993)
!993 = !{!109, !994}
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64, align: 64)
!995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !766)
!996 = !DILocalVariable(name: "b", arg: 1, scope: !991, file: !767, line: 113, type: !994)
!997 = !DILocation(line: 113, column: 26, scope: !991)
!998 = !DILocation(line: 117, column: 11, scope: !991)
!999 = !DILocation(line: 117, column: 14, scope: !991)
!1000 = !DILocation(line: 117, column: 4, scope: !991)
!1001 = distinct !DISubprogram(name: "DynBuf_GetSize", scope: !767, file: !767, line: 174, type: !1002, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!772, !994}
!1004 = !DILocalVariable(name: "b", arg: 1, scope: !1001, file: !767, line: 174, type: !994)
!1005 = !DILocation(line: 174, column: 30, scope: !1001)
!1006 = !DILocation(line: 178, column: 11, scope: !1001)
!1007 = !DILocation(line: 178, column: 14, scope: !1001)
!1008 = !DILocation(line: 178, column: 4, scope: !1001)
!1009 = !DILocalVariable(name: "ctx", arg: 1, scope: !339, file: !73, line: 1875, type: !362)
!1010 = !DILocation(line: 1875, column: 26, scope: !339)
!1011 = !DILocation(line: 1887, column: 8, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !339, file: !73, line: 1887, column: 8)
!1013 = !DILocation(line: 1887, column: 13, scope: !1012)
!1014 = !DILocation(line: 1887, column: 17, scope: !1012)
!1015 = !DILocation(line: 1887, column: 8, scope: !339)
!1016 = !DILocalVariable(name: "rpcs", scope: !1017, file: !73, line: 1888, type: !1018)
!1017 = distinct !DILexicalBlock(scope: !1012, file: !73, line: 1887, column: 25)
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1019, size: 384, align: 64, elements: !1044)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannelCallback", file: !380, line: 115, baseType: !1020)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcChannelCallback", file: !380, line: 94, size: 384, align: 64, elements: !1021)
!1021 = !{!1022, !1023, !1040, !1041, !1042, !1043}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1020, file: !380, line: 96, baseType: !257, size: 64, align: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1020, file: !380, line: 98, baseType: !1024, size: 64, align: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcIn_Callback", file: !380, line: 90, baseType: !1025)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64, align: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!318, !1028}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64, align: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcInData", file: !380, line: 77, baseType: !1030)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcInData", file: !380, line: 51, size: 512, align: 64, elements: !1031)
!1031 = !{!1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1030, file: !380, line: 53, baseType: !257, size: 64, align: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1030, file: !380, line: 58, baseType: !257, size: 64, align: 64, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "argsSize", scope: !1030, file: !380, line: 60, baseType: !772, size: 64, align: 64, offset: 128)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1030, file: !380, line: 65, baseType: !110, size: 64, align: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "resultLen", scope: !1030, file: !380, line: 67, baseType: !772, size: 64, align: 64, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "freeResult", scope: !1030, file: !380, line: 72, baseType: !318, size: 32, align: 32, offset: 320)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "appCtx", scope: !1030, file: !380, line: 74, baseType: !109, size: 64, align: 64, offset: 384)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !1030, file: !380, line: 76, baseType: !109, size: 64, align: 64, offset: 448)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !1020, file: !380, line: 100, baseType: !326, size: 64, align: 64, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "xdrIn", scope: !1020, file: !380, line: 102, baseType: !326, size: 64, align: 64, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "xdrOut", scope: !1020, file: !380, line: 109, baseType: !326, size: 64, align: 64, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "xdrInSize", scope: !1020, file: !380, line: 114, baseType: !772, size: 64, align: 64, offset: 320)
!1044 = !{!1045}
!1045 = !DISubrange(count: 1)
!1046 = !DILocation(line: 1888, column: 26, scope: !1017)
!1047 = !DILocalVariable(name: "sigs", scope: !1017, file: !73, line: 1891, type: !1048)
!1048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1049, size: 1152, align: 64, elements: !1055)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsPluginSignalCb", file: !48, line: 484, baseType: !1050)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsPluginSignalCb", file: !48, line: 480, size: 192, align: 64, elements: !1051)
!1051 = !{!1052, !1053, !1054}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "signame", scope: !1050, file: !48, line: 481, baseType: !369, size: 64, align: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1050, file: !48, line: 482, baseType: !326, size: 64, align: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !1050, file: !48, line: 483, baseType: !326, size: 64, align: 64, offset: 128)
!1055 = !{!1056}
!1056 = !DISubrange(count: 6)
!1057 = !DILocation(line: 1891, column: 27, scope: !1017)
!1058 = !DILocalVariable(name: "regs", scope: !1017, file: !73, line: 1899, type: !1059)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1060, size: 256, align: 64, elements: !1065)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppReg", file: !48, line: 450, baseType: !1061)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppReg", file: !48, line: 447, size: 128, align: 64, elements: !1062)
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1061, file: !48, line: 448, baseType: !392, size: 32, align: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1061, file: !48, line: 449, baseType: !348, size: 64, align: 64, offset: 64)
!1065 = !{!1066}
!1066 = !DISubrange(count: 2)
!1067 = !DILocation(line: 1899, column: 19, scope: !1017)
!1068 = !DILocation(line: 1899, column: 28, scope: !1017)
!1069 = !DILocation(line: 1900, column: 10, scope: !1017)
!1070 = !DILocation(line: 1900, column: 50, scope: !1017)
!1071 = !DILocation(line: 1900, column: 32, scope: !1017)
!1072 = !DILocation(line: 1901, column: 10, scope: !1017)
!1073 = !DILocation(line: 1901, column: 49, scope: !1017)
!1074 = !DILocation(line: 1901, column: 31, scope: !1017)
!1075 = !DILocation(line: 1913, column: 40, scope: !1017)
!1076 = !DILocation(line: 1913, column: 22, scope: !1017)
!1077 = !DILocation(line: 1913, column: 20, scope: !1017)
!1078 = !DILocation(line: 1915, column: 7, scope: !1017)
!1079 = !DILocation(line: 1916, column: 18, scope: !1017)
!1080 = !DILocation(line: 1917, column: 25, scope: !1017)
!1081 = !DILocation(line: 1922, column: 24, scope: !1017)
!1082 = !DILocation(line: 1922, column: 7, scope: !1017)
!1083 = !DILocation(line: 1924, column: 7, scope: !1017)
!1084 = !DILocation(line: 1927, column: 4, scope: !339)
!1085 = !DILocation(line: 1928, column: 1, scope: !339)
!1086 = distinct !DISubprogram(name: "GuestInfoVMSupport", scope: !73, file: !73, line: 197, type: !1026, isLocal: true, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1087 = !DILocalVariable(name: "data", arg: 1, scope: !1086, file: !73, line: 197, type: !1028)
!1088 = !DILocation(line: 197, column: 31, scope: !1086)
!1089 = !DILocalVariable(name: "vmSupportCmdArgv", scope: !1086, file: !73, line: 250, type: !1090)
!1090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 192, align: 64, elements: !1091)
!1091 = !{!1092}
!1092 = !DISubrange(count: 3)
!1093 = !DILocation(line: 250, column: 13, scope: !1086)
!1094 = !DILocation(line: 252, column: 84, scope: !1086)
!1095 = !DILocation(line: 252, column: 6, scope: !1086)
!1096 = !DILocation(line: 253, column: 30, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1086, file: !73, line: 253, column: 10)
!1098 = !DILocation(line: 253, column: 11, scope: !1097)
!1099 = !DILocation(line: 253, column: 10, scope: !1086)
!1100 = !DILocation(line: 258, column: 9, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1097, file: !73, line: 257, column: 49)
!1102 = !DILocation(line: 259, column: 38, scope: !1101)
!1103 = !DILocation(line: 259, column: 16, scope: !1101)
!1104 = !DILocation(line: 259, column: 9, scope: !1101)
!1105 = !DILocation(line: 263, column: 35, scope: !1086)
!1106 = !DILocation(line: 263, column: 13, scope: !1086)
!1107 = !DILocation(line: 263, column: 6, scope: !1086)
!1108 = !DILocation(line: 266, column: 1, scope: !1086)
!1109 = distinct !DISubprogram(name: "GuestInfoServerSendCaps", scope: !73, file: !73, line: 1797, type: !1110, isLocal: true, isDefinition: true, scopeLine: 1801, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!348, !326, !362, !318, !326}
!1112 = !DILocalVariable(name: "src", arg: 1, scope: !1109, file: !73, line: 1797, type: !326)
!1113 = !DILocation(line: 1797, column: 34, scope: !1109)
!1114 = !DILocalVariable(name: "ctx", arg: 2, scope: !1109, file: !73, line: 1798, type: !362)
!1115 = !DILocation(line: 1798, column: 38, scope: !1109)
!1116 = !DILocalVariable(name: "set", arg: 3, scope: !1109, file: !73, line: 1799, type: !318)
!1117 = !DILocation(line: 1799, column: 34, scope: !1109)
!1118 = !DILocalVariable(name: "data", arg: 4, scope: !1109, file: !73, line: 1800, type: !326)
!1119 = !DILocation(line: 1800, column: 34, scope: !1109)
!1120 = !DILocation(line: 1802, column: 8, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1109, file: !73, line: 1802, column: 8)
!1122 = !DILocation(line: 1802, column: 8, scope: !1109)
!1123 = !DILocation(line: 1803, column: 18, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1121, file: !73, line: 1802, column: 13)
!1125 = !DILocation(line: 1803, column: 7, scope: !1124)
!1126 = !DILocation(line: 1804, column: 4, scope: !1124)
!1127 = !DILocation(line: 1805, column: 4, scope: !1109)
!1128 = distinct !DISubprogram(name: "GuestInfoServerConfReload", scope: !73, file: !73, line: 1675, type: !1129, isLocal: true, isDefinition: true, scopeLine: 1678, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{null, !326, !362, !326}
!1131 = !DILocalVariable(name: "src", arg: 1, scope: !1128, file: !73, line: 1675, type: !326)
!1132 = !DILocation(line: 1675, column: 36, scope: !1128)
!1133 = !DILocalVariable(name: "ctx", arg: 2, scope: !1128, file: !73, line: 1676, type: !362)
!1134 = !DILocation(line: 1676, column: 40, scope: !1128)
!1135 = !DILocalVariable(name: "data", arg: 3, scope: !1128, file: !73, line: 1677, type: !326)
!1136 = !DILocation(line: 1677, column: 36, scope: !1128)
!1137 = !DILocation(line: 1679, column: 21, scope: !1128)
!1138 = !DILocation(line: 1679, column: 4, scope: !1128)
!1139 = !DILocation(line: 1680, column: 1, scope: !1128)
!1140 = distinct !DISubprogram(name: "GuestInfoServerIOFreeze", scope: !73, file: !73, line: 1699, type: !1141, isLocal: true, isDefinition: true, scopeLine: 1703, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{null, !326, !362, !318, !326}
!1143 = !DILocalVariable(name: "src", arg: 1, scope: !1140, file: !73, line: 1699, type: !326)
!1144 = !DILocation(line: 1699, column: 34, scope: !1140)
!1145 = !DILocalVariable(name: "ctx", arg: 2, scope: !1140, file: !73, line: 1700, type: !362)
!1146 = !DILocation(line: 1700, column: 38, scope: !1140)
!1147 = !DILocalVariable(name: "freeze", arg: 3, scope: !1140, file: !73, line: 1701, type: !318)
!1148 = !DILocation(line: 1701, column: 34, scope: !1140)
!1149 = !DILocalVariable(name: "data", arg: 4, scope: !1140, file: !73, line: 1702, type: !326)
!1150 = !DILocation(line: 1702, column: 34, scope: !1140)
!1151 = !DILocation(line: 1704, column: 21, scope: !1140)
!1152 = !DILocation(line: 1704, column: 27, scope: !1140)
!1153 = !DILocation(line: 1704, column: 26, scope: !1140)
!1154 = !DILocation(line: 1704, column: 4, scope: !1140)
!1155 = !DILocation(line: 1705, column: 1, scope: !1140)
!1156 = distinct !DISubprogram(name: "GuestInfoServerReset", scope: !73, file: !73, line: 1765, type: !1129, isLocal: true, isDefinition: true, scopeLine: 1768, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1157 = !DILocalVariable(name: "src", arg: 1, scope: !1156, file: !73, line: 1765, type: !326)
!1158 = !DILocation(line: 1765, column: 31, scope: !1156)
!1159 = !DILocalVariable(name: "ctx", arg: 2, scope: !1156, file: !73, line: 1766, type: !362)
!1160 = !DILocation(line: 1766, column: 35, scope: !1156)
!1161 = !DILocalVariable(name: "data", arg: 3, scope: !1156, file: !73, line: 1767, type: !326)
!1162 = !DILocation(line: 1767, column: 31, scope: !1156)
!1163 = !DILocation(line: 1769, column: 15, scope: !1156)
!1164 = !DILocation(line: 1772, column: 29, scope: !1156)
!1165 = !DILocation(line: 1773, column: 1, scope: !1156)
!1166 = distinct !DISubprogram(name: "GuestInfoServerSetOption", scope: !73, file: !73, line: 1826, type: !1167, isLocal: true, isDefinition: true, scopeLine: 1831, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!318, !326, !362, !369, !369, !326}
!1169 = !DILocalVariable(name: "src", arg: 1, scope: !1166, file: !73, line: 1826, type: !326)
!1170 = !DILocation(line: 1826, column: 35, scope: !1166)
!1171 = !DILocalVariable(name: "ctx", arg: 2, scope: !1166, file: !73, line: 1827, type: !362)
!1172 = !DILocation(line: 1827, column: 39, scope: !1166)
!1173 = !DILocalVariable(name: "option", arg: 3, scope: !1166, file: !73, line: 1828, type: !369)
!1174 = !DILocation(line: 1828, column: 39, scope: !1166)
!1175 = !DILocalVariable(name: "value", arg: 4, scope: !1166, file: !73, line: 1829, type: !369)
!1176 = !DILocation(line: 1829, column: 39, scope: !1166)
!1177 = !DILocalVariable(name: "data", arg: 5, scope: !1166, file: !73, line: 1830, type: !326)
!1178 = !DILocation(line: 1830, column: 35, scope: !1166)
!1179 = !DILocalVariable(name: "ip", scope: !1166, file: !73, line: 1832, type: !110)
!1180 = !DILocation(line: 1832, column: 10, scope: !1166)
!1181 = !DILocalVariable(name: "ret", scope: !1166, file: !73, line: 1833, type: !311)
!1182 = !DILocation(line: 1833, column: 9, scope: !1166)
!1183 = !DILocalVariable(name: "msg", scope: !1166, file: !73, line: 1834, type: !354)
!1184 = !DILocation(line: 1834, column: 11, scope: !1166)
!1185 = !DILocation(line: 1836, column: 15, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1166, file: !73, line: 1836, column: 8)
!1187 = !DILocation(line: 1836, column: 8, scope: !1186)
!1188 = !DILocation(line: 1836, column: 38, scope: !1186)
!1189 = !DILocation(line: 1836, column: 8, scope: !1166)
!1190 = !DILocation(line: 1837, column: 7, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1186, file: !73, line: 1836, column: 44)
!1192 = !DILocation(line: 1840, column: 15, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1166, file: !73, line: 1840, column: 8)
!1194 = !DILocation(line: 1840, column: 8, scope: !1193)
!1195 = !DILocation(line: 1840, column: 27, scope: !1193)
!1196 = !DILocation(line: 1840, column: 8, scope: !1166)
!1197 = !DILocation(line: 1841, column: 11, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1193, file: !73, line: 1840, column: 33)
!1199 = !DILocation(line: 1842, column: 7, scope: !1198)
!1200 = !DILocation(line: 1845, column: 15, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1166, file: !73, line: 1845, column: 8)
!1202 = !DILocation(line: 1845, column: 8, scope: !1201)
!1203 = !DILocation(line: 1845, column: 27, scope: !1201)
!1204 = !DILocation(line: 1845, column: 8, scope: !1166)
!1205 = !DILocation(line: 1846, column: 7, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1201, file: !73, line: 1845, column: 33)
!1207 = !DILocation(line: 1849, column: 9, scope: !1166)
!1208 = !DILocation(line: 1849, column: 7, scope: !1166)
!1209 = !DILocation(line: 1851, column: 54, scope: !1166)
!1210 = !DILocation(line: 1851, column: 10, scope: !1166)
!1211 = !DILocation(line: 1851, column: 8, scope: !1166)
!1212 = !DILocation(line: 1852, column: 26, scope: !1166)
!1213 = !DILocation(line: 1852, column: 31, scope: !1166)
!1214 = !DILocation(line: 1852, column: 36, scope: !1166)
!1215 = !DILocation(line: 1852, column: 48, scope: !1166)
!1216 = !DILocation(line: 1852, column: 41, scope: !1166)
!1217 = !DILocation(line: 1852, column: 53, scope: !1166)
!1218 = !DILocation(line: 1852, column: 10, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !1166, file: !73, discriminator: 1)
!1220 = !DILocation(line: 1852, column: 10, scope: !1166)
!1221 = !DILocation(line: 1852, column: 8, scope: !1166)
!1222 = !DILocation(line: 1853, column: 12, scope: !1166)
!1223 = !DILocation(line: 1853, column: 4, scope: !1166)
!1224 = !DILocation(line: 1854, column: 11, scope: !1166)
!1225 = !DILocation(line: 1854, column: 4, scope: !1166)
!1226 = !DILocation(line: 1857, column: 22, scope: !1166)
!1227 = !DILocation(line: 1857, column: 11, scope: !1166)
!1228 = !DILocation(line: 1857, column: 4, scope: !1166)
!1229 = distinct !DISubprogram(name: "GuestInfoServerShutdown", scope: !73, file: !73, line: 1722, type: !1129, isLocal: true, isDefinition: true, scopeLine: 1725, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1230 = !DILocalVariable(name: "src", arg: 1, scope: !1229, file: !73, line: 1722, type: !326)
!1231 = !DILocation(line: 1722, column: 34, scope: !1229)
!1232 = !DILocalVariable(name: "ctx", arg: 2, scope: !1229, file: !73, line: 1723, type: !362)
!1233 = !DILocation(line: 1723, column: 38, scope: !1229)
!1234 = !DILocalVariable(name: "data", arg: 3, scope: !1229, file: !73, line: 1724, type: !326)
!1235 = !DILocation(line: 1724, column: 34, scope: !1229)
!1236 = !DILocation(line: 1726, column: 4, scope: !1229)
!1237 = !DILocation(line: 1728, column: 4, scope: !1229)
!1238 = !DILocation(line: 1730, column: 8, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1229, file: !73, line: 1730, column: 8)
!1240 = !DILocation(line: 1730, column: 32, scope: !1239)
!1241 = !DILocation(line: 1730, column: 8, scope: !1229)
!1242 = !DILocation(line: 1731, column: 24, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1239, file: !73, line: 1730, column: 40)
!1244 = !DILocation(line: 1731, column: 7, scope: !1243)
!1245 = !DILocation(line: 1732, column: 31, scope: !1243)
!1246 = !DILocation(line: 1733, column: 4, scope: !1243)
!1247 = !DILocation(line: 1735, column: 8, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1229, file: !73, line: 1735, column: 8)
!1249 = !DILocation(line: 1735, column: 33, scope: !1248)
!1250 = !DILocation(line: 1735, column: 8, scope: !1229)
!1251 = !DILocation(line: 1736, column: 24, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1248, file: !73, line: 1735, column: 41)
!1253 = !DILocation(line: 1736, column: 7, scope: !1252)
!1254 = !DILocation(line: 1737, column: 32, scope: !1252)
!1255 = !DILocation(line: 1738, column: 4, scope: !1252)
!1256 = !DILocation(line: 1741, column: 4, scope: !1229)
!1257 = !DILocation(line: 1747, column: 1, scope: !1229)
!1258 = distinct !DISubprogram(name: "TweakGatherLoops", scope: !73, file: !73, line: 1581, type: !1259, isLocal: true, isDefinition: true, scopeLine: 1583, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{null, !362, !318}
!1261 = !DILocalVariable(name: "ctx", arg: 1, scope: !1258, file: !73, line: 1581, type: !362)
!1262 = !DILocation(line: 1581, column: 31, scope: !1258)
!1263 = !DILocalVariable(name: "enable", arg: 2, scope: !1258, file: !73, line: 1582, type: !318)
!1264 = !DILocation(line: 1582, column: 27, scope: !1258)
!1265 = !DILocalVariable(name: "perfmonEnabled", scope: !1258, file: !73, line: 1585, type: !318)
!1266 = !DILocation(line: 1585, column: 13, scope: !1258)
!1267 = !DILocation(line: 1587, column: 45, scope: !1258)
!1268 = !DILocation(line: 1587, column: 50, scope: !1258)
!1269 = !DILocation(line: 1587, column: 22, scope: !1258)
!1270 = !DILocation(line: 1587, column: 21, scope: !1258)
!1271 = !DILocation(line: 1587, column: 19, scope: !1258)
!1272 = !DILocation(line: 1592, column: 8, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1258, file: !73, line: 1592, column: 8)
!1274 = !DILocation(line: 1592, column: 8, scope: !1258)
!1275 = !DILocation(line: 1596, column: 23, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1273, file: !73, line: 1592, column: 24)
!1277 = !DILocation(line: 1596, column: 28, scope: !1276)
!1278 = !DILocation(line: 1596, column: 7, scope: !1276)
!1279 = !DILocation(line: 1602, column: 4, scope: !1276)
!1280 = !DILocation(line: 1606, column: 11, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !73, line: 1606, column: 11)
!1282 = distinct !DILexicalBlock(scope: !1273, file: !73, line: 1602, column: 11)
!1283 = !DILocation(line: 1606, column: 36, scope: !1281)
!1284 = !DILocation(line: 1606, column: 11, scope: !1282)
!1285 = !DILocation(line: 1607, column: 27, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1281, file: !73, line: 1606, column: 44)
!1287 = !DILocation(line: 1607, column: 10, scope: !1286)
!1288 = !DILocation(line: 1608, column: 35, scope: !1286)
!1289 = !DILocation(line: 1610, column: 10, scope: !1286)
!1290 = !DILocation(line: 1611, column: 7, scope: !1286)
!1291 = !DILocation(line: 1618, column: 20, scope: !1258)
!1292 = !DILocation(line: 1618, column: 25, scope: !1258)
!1293 = !DILocation(line: 1618, column: 4, scope: !1258)
!1294 = !DILocation(line: 1624, column: 1, scope: !1258)
!1295 = distinct !DISubprogram(name: "GuestInfoClearCache", scope: !73, file: !73, line: 1392, type: !477, isLocal: true, isDefinition: true, scopeLine: 1393, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1296 = !DILocalVariable(name: "i", scope: !1295, file: !73, line: 1394, type: !195)
!1297 = !DILocation(line: 1394, column: 8, scope: !1295)
!1298 = !DILocation(line: 1396, column: 11, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1295, file: !73, line: 1396, column: 4)
!1300 = !DILocation(line: 1396, column: 9, scope: !1299)
!1301 = !DILocation(line: 1396, column: 16, scope: !1302)
!1302 = !DILexicalBlockFile(scope: !1303, file: !73, discriminator: 1)
!1303 = distinct !DILexicalBlock(scope: !1299, file: !73, line: 1396, column: 4)
!1304 = !DILocation(line: 1396, column: 18, scope: !1302)
!1305 = !DILocation(line: 1396, column: 4, scope: !1302)
!1306 = !DILocation(line: 1397, column: 29, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1303, file: !73, line: 1396, column: 35)
!1308 = !DILocation(line: 1397, column: 12, scope: !1307)
!1309 = !DILocation(line: 1397, column: 7, scope: !1307)
!1310 = !DILocation(line: 1398, column: 24, scope: !1307)
!1311 = !DILocation(line: 1398, column: 7, scope: !1307)
!1312 = !DILocation(line: 1398, column: 27, scope: !1307)
!1313 = !DILocation(line: 1399, column: 4, scope: !1307)
!1314 = !DILocation(line: 1396, column: 31, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !1303, file: !73, discriminator: 2)
!1316 = !DILocation(line: 1396, column: 4, scope: !1315)
!1317 = distinct !{!1317, !1318}
!1318 = !DILocation(line: 1396, column: 4, scope: !1295)
!1319 = !DILocation(line: 1401, column: 38, scope: !1295)
!1320 = !DILocation(line: 1401, column: 4, scope: !1295)
!1321 = !DILocation(line: 1402, column: 24, scope: !1295)
!1322 = !DILocation(line: 1404, column: 37, scope: !1295)
!1323 = !DILocation(line: 1404, column: 4, scope: !1295)
!1324 = !DILocation(line: 1405, column: 23, scope: !1295)
!1325 = !DILocation(line: 1407, column: 22, scope: !1295)
!1326 = !DILocation(line: 1408, column: 1, scope: !1295)
!1327 = distinct !DISubprogram(name: "SetGuestInfo", scope: !73, file: !73, line: 1241, type: !1328, isLocal: true, isDefinition: true, scopeLine: 1244, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!311, !362, !789, !257}
!1330 = !DILocalVariable(name: "ctx", arg: 1, scope: !1327, file: !73, line: 1241, type: !362)
!1331 = !DILocation(line: 1241, column: 27, scope: !1327)
!1332 = !DILocalVariable(name: "key", arg: 2, scope: !1327, file: !73, line: 1242, type: !789)
!1333 = !DILocation(line: 1242, column: 28, scope: !1327)
!1334 = !DILocalVariable(name: "value", arg: 3, scope: !1327, file: !73, line: 1243, type: !257)
!1335 = !DILocation(line: 1243, column: 26, scope: !1327)
!1336 = !DILocalVariable(name: "status", scope: !1327, file: !73, line: 1245, type: !311)
!1337 = !DILocation(line: 1245, column: 9, scope: !1327)
!1338 = !DILocalVariable(name: "reply", scope: !1327, file: !73, line: 1246, type: !110)
!1339 = !DILocation(line: 1246, column: 10, scope: !1327)
!1340 = !DILocalVariable(name: "msg", scope: !1327, file: !73, line: 1247, type: !354)
!1341 = !DILocation(line: 1247, column: 11, scope: !1327)
!1342 = !DILocalVariable(name: "replyLen", scope: !1327, file: !73, line: 1248, type: !772)
!1343 = !DILocation(line: 1248, column: 11, scope: !1327)
!1344 = !DILocation(line: 1258, column: 31, scope: !1327)
!1345 = !DILocation(line: 1259, column: 31, scope: !1327)
!1346 = !DILocation(line: 1257, column: 10, scope: !1327)
!1347 = !DILocation(line: 1257, column: 8, scope: !1327)
!1348 = !DILocation(line: 1261, column: 29, scope: !1327)
!1349 = !DILocation(line: 1261, column: 34, scope: !1327)
!1350 = !DILocation(line: 1261, column: 39, scope: !1327)
!1351 = !DILocation(line: 1261, column: 51, scope: !1327)
!1352 = !DILocation(line: 1261, column: 44, scope: !1327)
!1353 = !DILocation(line: 1261, column: 56, scope: !1327)
!1354 = !DILocation(line: 1261, column: 13, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !1327, file: !73, discriminator: 1)
!1356 = !DILocation(line: 1261, column: 13, scope: !1327)
!1357 = !DILocation(line: 1261, column: 11, scope: !1327)
!1358 = !DILocation(line: 1262, column: 11, scope: !1327)
!1359 = !DILocation(line: 1262, column: 4, scope: !1327)
!1360 = !DILocation(line: 1264, column: 9, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1327, file: !73, line: 1264, column: 8)
!1362 = !DILocation(line: 1264, column: 8, scope: !1327)
!1363 = !DILocation(line: 1265, column: 83, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1361, file: !73, line: 1264, column: 17)
!1365 = !DILocation(line: 1265, column: 91, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !1364, file: !73, discriminator: 1)
!1367 = !DILocation(line: 1265, column: 83, scope: !1366)
!1368 = !DILocation(line: 1265, column: 83, scope: !1369)
!1369 = !DILexicalBlockFile(scope: !1364, file: !73, discriminator: 2)
!1370 = !DILocation(line: 1265, column: 83, scope: !1371)
!1371 = !DILexicalBlockFile(scope: !1364, file: !73, discriminator: 3)
!1372 = !DILocation(line: 1265, column: 7, scope: !1371)
!1373 = !DILocation(line: 1266, column: 15, scope: !1364)
!1374 = !DILocation(line: 1266, column: 7, scope: !1364)
!1375 = !DILocation(line: 1267, column: 7, scope: !1364)
!1376 = !DILocation(line: 1271, column: 15, scope: !1327)
!1377 = !DILocation(line: 1271, column: 14, scope: !1327)
!1378 = !DILocation(line: 1271, column: 21, scope: !1327)
!1379 = !DILocation(line: 1271, column: 13, scope: !1327)
!1380 = !DILocation(line: 1271, column: 11, scope: !1327)
!1381 = !DILocation(line: 1272, column: 12, scope: !1327)
!1382 = !DILocation(line: 1272, column: 4, scope: !1327)
!1383 = !DILocation(line: 1273, column: 11, scope: !1327)
!1384 = !DILocation(line: 1273, column: 4, scope: !1327)
!1385 = !DILocation(line: 1274, column: 1, scope: !1327)
!1386 = distinct !DISubprogram(name: "GuestInfoSendNicInfo", scope: !73, file: !73, line: 946, type: !1387, isLocal: true, isDefinition: true, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!311, !362, !112}
!1389 = !DILocalVariable(name: "ctx", arg: 1, scope: !1386, file: !73, line: 946, type: !362)
!1390 = !DILocation(line: 946, column: 35, scope: !1386)
!1391 = !DILocalVariable(name: "info", arg: 2, scope: !1386, file: !73, line: 947, type: !112)
!1392 = !DILocation(line: 947, column: 33, scope: !1386)
!1393 = !DILocalVariable(name: "status", scope: !1386, file: !73, line: 949, type: !311)
!1394 = !DILocation(line: 949, column: 9, scope: !1386)
!1395 = !DILocalVariable(name: "message", scope: !1386, file: !73, line: 950, type: !1396)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestNicProto", file: !4, line: 199, baseType: !1397)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestNicProto", file: !4, line: 192, size: 128, align: 64, elements: !1398)
!1398 = !{!1399, !1401}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !1397, file: !4, line: 193, baseType: !1400, size: 32, align: 32)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "NicInfoVersion", file: !4, line: 22, baseType: !80)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "GuestNicProto_u", scope: !1397, file: !4, line: 197, baseType: !1402, size: 64, align: 64, offset: 64)
!1402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1397, file: !4, line: 194, size: 64, align: 64, elements: !1403)
!1403 = !{!1404, !1413}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "nicsV2", scope: !1402, file: !4, line: 195, baseType: !1405, size: 64, align: 64)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64, align: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestNicList", file: !4, line: 51, size: 128, align: 64, elements: !1407)
!1407 = !{!1408}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "nics", scope: !1406, file: !4, line: 55, baseType: !1409, size: 128, align: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1406, file: !4, line: 52, size: 128, align: 64, elements: !1410)
!1410 = !{!1411, !1412}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "nics_len", scope: !1409, file: !4, line: 53, baseType: !120, size: 32, align: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "nics_val", scope: !1409, file: !4, line: 54, baseType: !293, size: 64, align: 64, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "nicInfoV3", scope: !1402, file: !4, line: 196, baseType: !1414, size: 64, align: 64)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!1415 = !DILocation(line: 950, column: 18, scope: !1386)
!1416 = !DILocalVariable(name: "info64", scope: !1386, file: !73, line: 951, type: !112)
!1417 = !DILocation(line: 951, column: 15, scope: !1386)
!1418 = !DILocation(line: 953, column: 4, scope: !1386)
!1419 = distinct !{!1419, !1418}
!1420 = !DILocation(line: 954, column: 26, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1386, file: !73, line: 953, column: 7)
!1422 = !DILocation(line: 954, column: 7, scope: !1421)
!1423 = !DILocation(line: 956, column: 18, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1421, file: !73, line: 954, column: 34)
!1425 = !DILocation(line: 956, column: 22, scope: !1424)
!1426 = !DILocation(line: 957, column: 46, scope: !1424)
!1427 = !DILocation(line: 957, column: 18, scope: !1424)
!1428 = !DILocation(line: 957, column: 34, scope: !1424)
!1429 = !DILocation(line: 957, column: 44, scope: !1424)
!1430 = !DILocation(line: 958, column: 38, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1424, file: !73, line: 958, column: 14)
!1432 = !DILocation(line: 958, column: 14, scope: !1431)
!1433 = !DILocation(line: 958, column: 14, scope: !1424)
!1434 = !DILocation(line: 959, column: 20, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1431, file: !73, line: 958, column: 73)
!1436 = !DILocation(line: 960, column: 10, scope: !1435)
!1437 = !DILocation(line: 961, column: 10, scope: !1424)
!1438 = !DILocation(line: 963, column: 41, scope: !1424)
!1439 = !DILocation(line: 963, column: 19, scope: !1424)
!1440 = !DILocation(line: 963, column: 17, scope: !1424)
!1441 = !DILocation(line: 964, column: 18, scope: !1424)
!1442 = !DILocation(line: 964, column: 22, scope: !1424)
!1443 = !DILocation(line: 965, column: 46, scope: !1424)
!1444 = !DILocation(line: 965, column: 18, scope: !1424)
!1445 = !DILocation(line: 965, column: 34, scope: !1424)
!1446 = !DILocation(line: 965, column: 44, scope: !1424)
!1447 = !DILocation(line: 966, column: 38, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1424, file: !73, line: 966, column: 14)
!1449 = !DILocation(line: 966, column: 14, scope: !1448)
!1450 = !DILocation(line: 966, column: 14, scope: !1424)
!1451 = !DILocation(line: 967, column: 20, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1448, file: !73, line: 966, column: 73)
!1453 = !DILocation(line: 968, column: 10, scope: !1452)
!1454 = !DILocation(line: 969, column: 10, scope: !1424)
!1455 = !DILocation(line: 971, column: 15, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1424, file: !73, line: 971, column: 14)
!1457 = !DILocation(line: 971, column: 14, scope: !1424)
!1458 = !DILocation(line: 972, column: 44, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1456, file: !73, line: 971, column: 23)
!1460 = !DILocation(line: 972, column: 22, scope: !1459)
!1461 = !DILocation(line: 972, column: 20, scope: !1459)
!1462 = !DILocation(line: 973, column: 10, scope: !1459)
!1463 = !DILocalVariable(name: "nicList", scope: !1464, file: !73, line: 975, type: !1465)
!1464 = distinct !DILexicalBlock(scope: !1424, file: !73, line: 974, column: 10)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64, align: 64)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestNicList", file: !4, line: 57, baseType: !1406)
!1467 = !DILocation(line: 975, column: 27, scope: !1464)
!1468 = !DILocation(line: 975, column: 51, scope: !1464)
!1469 = !DILocation(line: 975, column: 37, scope: !1464)
!1470 = !DILocation(line: 976, column: 21, scope: !1464)
!1471 = !DILocation(line: 976, column: 25, scope: !1464)
!1472 = !DILocation(line: 977, column: 46, scope: !1464)
!1473 = !DILocation(line: 977, column: 21, scope: !1464)
!1474 = !DILocation(line: 977, column: 37, scope: !1464)
!1475 = !DILocation(line: 977, column: 44, scope: !1464)
!1476 = !DILocation(line: 978, column: 41, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1464, file: !73, line: 978, column: 17)
!1478 = !DILocation(line: 978, column: 17, scope: !1477)
!1479 = !DILocation(line: 978, column: 17, scope: !1464)
!1480 = !DILocation(line: 979, column: 23, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1477, file: !73, line: 978, column: 76)
!1482 = !DILocation(line: 980, column: 13, scope: !1481)
!1483 = !DILocation(line: 981, column: 62, scope: !1464)
!1484 = !DILocation(line: 981, column: 53, scope: !1464)
!1485 = !DILocation(line: 981, column: 13, scope: !1464)
!1486 = !DILocation(line: 982, column: 18, scope: !1464)
!1487 = !DILocation(line: 982, column: 13, scope: !1464)
!1488 = !DILocation(line: 984, column: 10, scope: !1424)
!1489 = !DILocalVariable(name: "infoV1", scope: !1490, file: !73, line: 987, type: !518)
!1490 = distinct !DILexicalBlock(scope: !1424, file: !73, line: 986, column: 10)
!1491 = !DILocation(line: 987, column: 28, scope: !1490)
!1492 = !DILocation(line: 988, column: 48, scope: !1490)
!1493 = !DILocation(line: 988, column: 13, scope: !1490)
!1494 = !DILocation(line: 989, column: 35, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1490, file: !73, line: 989, column: 17)
!1496 = !DILocation(line: 989, column: 40, scope: !1495)
!1497 = !DILocation(line: 989, column: 17, scope: !1495)
!1498 = !DILocation(line: 989, column: 17, scope: !1490)
!1499 = !DILocation(line: 991, column: 23, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1495, file: !73, line: 990, column: 52)
!1501 = !DILocation(line: 992, column: 13, scope: !1500)
!1502 = !DILocation(line: 994, column: 10, scope: !1424)
!1503 = !DILocation(line: 996, column: 10, scope: !1424)
!1504 = distinct !{!1504, !1503}
!1505 = !DILocation(line: 996, column: 102, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !1507, file: !73, discriminator: 1)
!1507 = distinct !DILexicalBlock(scope: !1424, file: !73, line: 996, column: 13)
!1508 = !DILocation(line: 996, column: 15, scope: !1506)
!1509 = !DILocation(line: 996, column: 111, scope: !1506)
!1510 = !DILocation(line: 996, column: 111, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !1512, file: !73, discriminator: 2)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !73, line: 996, column: 111)
!1513 = distinct !DILexicalBlock(scope: !1507, file: !73, line: 996, column: 111)
!1514 = distinct !{!1514, !1515}
!1515 = !DILocation(line: 996, column: 111, scope: !1507)
!1516 = !DILocation(line: 997, column: 10, scope: !1424)
!1517 = !DILocation(line: 999, column: 4, scope: !1421)
!1518 = !DILocation(line: 999, column: 14, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1386, file: !73, discriminator: 1)
!1520 = !DILocation(line: 999, column: 21, scope: !1519)
!1521 = !DILocation(line: 999, column: 25, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !1386, file: !73, discriminator: 2)
!1523 = !DILocation(line: 999, column: 45, scope: !1522)
!1524 = !DILocation(line: 999, column: 4, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1421, file: !73, discriminator: 3)
!1526 = !DILocation(line: 1001, column: 8, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1386, file: !73, line: 1001, column: 8)
!1528 = !DILocation(line: 1001, column: 8, scope: !1386)
!1529 = !DILocation(line: 1002, column: 14, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1527, file: !73, line: 1001, column: 16)
!1531 = !DILocation(line: 1002, column: 22, scope: !1530)
!1532 = !DILocation(line: 1002, column: 27, scope: !1530)
!1533 = !DILocation(line: 1002, column: 7, scope: !1530)
!1534 = !DILocation(line: 1003, column: 14, scope: !1530)
!1535 = !DILocation(line: 1003, column: 7, scope: !1530)
!1536 = !DILocation(line: 1004, column: 4, scope: !1530)
!1537 = !DILocation(line: 1006, column: 8, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1386, file: !73, line: 1006, column: 8)
!1539 = !DILocation(line: 1006, column: 8, scope: !1386)
!1540 = !DILocation(line: 1007, column: 103, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1538, file: !73, line: 1006, column: 16)
!1542 = !DILocation(line: 1007, column: 7, scope: !1541)
!1543 = !DILocation(line: 1008, column: 4, scope: !1541)
!1544 = !DILocation(line: 1009, column: 25, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1538, file: !73, line: 1008, column: 11)
!1546 = !DILocation(line: 1010, column: 106, scope: !1545)
!1547 = !DILocation(line: 1010, column: 114, scope: !1545)
!1548 = !DILocation(line: 1010, column: 7, scope: !1545)
!1549 = !DILocation(line: 1014, column: 11, scope: !1386)
!1550 = !DILocation(line: 1014, column: 4, scope: !1386)
!1551 = distinct !DISubprogram(name: "GuestInfoSendMemoryInfo", scope: !73, file: !73, line: 715, type: !1552, isLocal: true, isDefinition: true, scopeLine: 718, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!311, !362, !417, !109}
!1554 = !DILocalVariable(name: "ctx", arg: 1, scope: !1551, file: !73, line: 715, type: !362)
!1555 = !DILocation(line: 715, column: 38, scope: !1551)
!1556 = !DILocalVariable(name: "infoSize", arg: 2, scope: !1551, file: !73, line: 716, type: !417)
!1557 = !DILocation(line: 716, column: 32, scope: !1551)
!1558 = !DILocalVariable(name: "info", arg: 3, scope: !1551, file: !73, line: 717, type: !109)
!1559 = !DILocation(line: 717, column: 31, scope: !1551)
!1560 = !DILocalVariable(name: "request", scope: !1551, file: !73, line: 719, type: !110)
!1561 = !DILocation(line: 719, column: 10, scope: !1551)
!1562 = !DILocalVariable(name: "header", scope: !1551, file: !73, line: 720, type: !1563)
!1563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 256, align: 8, elements: !1564)
!1564 = !{!1565}
!1565 = !DISubrange(count: 32)
!1566 = !DILocation(line: 720, column: 9, scope: !1551)
!1567 = !DILocalVariable(name: "headerLen", scope: !1551, file: !73, line: 721, type: !772)
!1568 = !DILocation(line: 721, column: 11, scope: !1551)
!1569 = !DILocalVariable(name: "requestSize", scope: !1551, file: !73, line: 722, type: !772)
!1570 = !DILocation(line: 722, column: 11, scope: !1551)
!1571 = !DILocalVariable(name: "success", scope: !1551, file: !73, line: 723, type: !311)
!1572 = !DILocation(line: 723, column: 9, scope: !1551)
!1573 = !DILocation(line: 725, column: 16, scope: !1551)
!1574 = !DILocation(line: 725, column: 4, scope: !1551)
!1575 = !DILocation(line: 728, column: 23, scope: !1551)
!1576 = !DILocation(line: 728, column: 16, scope: !1551)
!1577 = !DILocation(line: 728, column: 14, scope: !1551)
!1578 = !DILocation(line: 729, column: 18, scope: !1551)
!1579 = !DILocation(line: 729, column: 30, scope: !1551)
!1580 = !DILocation(line: 729, column: 28, scope: !1551)
!1581 = !DILocation(line: 729, column: 16, scope: !1551)
!1582 = !DILocation(line: 731, column: 23, scope: !1551)
!1583 = !DILocation(line: 731, column: 14, scope: !1551)
!1584 = !DILocation(line: 731, column: 12, scope: !1551)
!1585 = !DILocation(line: 733, column: 8, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1551, file: !73, line: 733, column: 8)
!1587 = !DILocation(line: 733, column: 16, scope: !1586)
!1588 = !DILocation(line: 733, column: 8, scope: !1551)
!1589 = !DILocation(line: 734, column: 7, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1586, file: !73, line: 733, column: 24)
!1591 = !DILocation(line: 735, column: 4, scope: !1590)
!1592 = !DILocation(line: 736, column: 7, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1586, file: !73, line: 735, column: 11)
!1594 = !DILocation(line: 739, column: 14, scope: !1593)
!1595 = !DILocation(line: 739, column: 7, scope: !1593)
!1596 = !DILocation(line: 739, column: 31, scope: !1593)
!1597 = !DILocation(line: 740, column: 14, scope: !1593)
!1598 = !DILocation(line: 740, column: 24, scope: !1593)
!1599 = !DILocation(line: 740, column: 22, scope: !1593)
!1600 = !DILocation(line: 740, column: 35, scope: !1593)
!1601 = !DILocation(line: 740, column: 41, scope: !1593)
!1602 = !DILocation(line: 740, column: 7, scope: !1593)
!1603 = !DILocation(line: 743, column: 33, scope: !1593)
!1604 = !DILocation(line: 743, column: 38, scope: !1593)
!1605 = !DILocation(line: 743, column: 43, scope: !1593)
!1606 = !DILocation(line: 743, column: 52, scope: !1593)
!1607 = !DILocation(line: 743, column: 17, scope: !1593)
!1608 = !DILocation(line: 743, column: 15, scope: !1593)
!1609 = !DILocation(line: 745, column: 14, scope: !1593)
!1610 = !DILocation(line: 745, column: 7, scope: !1593)
!1611 = !DILocation(line: 748, column: 8, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1551, file: !73, line: 748, column: 8)
!1613 = !DILocation(line: 748, column: 8, scope: !1551)
!1614 = !DILocation(line: 749, column: 7, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1612, file: !73, line: 748, column: 17)
!1616 = !DILocation(line: 750, column: 4, scope: !1615)
!1617 = !DILocation(line: 751, column: 7, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1612, file: !73, line: 750, column: 11)
!1619 = !DILocation(line: 754, column: 11, scope: !1551)
!1620 = !DILocation(line: 754, column: 4, scope: !1551)
!1621 = distinct !DISubprogram(name: "DiskInfoChanged", scope: !73, file: !73, line: 1325, type: !1622, isLocal: true, isDefinition: true, scopeLine: 1326, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!311, !1624}
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64, align: 64)
!1625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!1626 = !DILocalVariable(name: "diskInfo", arg: 1, scope: !1621, file: !73, line: 1325, type: !1624)
!1627 = !DILocation(line: 1325, column: 38, scope: !1621)
!1628 = !DILocalVariable(name: "index", scope: !1621, file: !73, line: 1327, type: !195)
!1629 = !DILocation(line: 1327, column: 8, scope: !1621)
!1630 = !DILocalVariable(name: "name", scope: !1621, file: !73, line: 1328, type: !110)
!1631 = !DILocation(line: 1328, column: 10, scope: !1621)
!1632 = !DILocalVariable(name: "i", scope: !1621, file: !73, line: 1329, type: !195)
!1633 = !DILocation(line: 1329, column: 8, scope: !1621)
!1634 = !DILocalVariable(name: "matchedPartition", scope: !1621, file: !73, line: 1330, type: !195)
!1635 = !DILocation(line: 1330, column: 8, scope: !1621)
!1636 = !DILocalVariable(name: "cachedDiskInfo", scope: !1621, file: !73, line: 1331, type: !1637)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "PGuestDiskInfo", file: !52, line: 106, baseType: !1638)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!1639 = !DILocation(line: 1331, column: 19, scope: !1621)
!1640 = !DILocation(line: 1333, column: 32, scope: !1621)
!1641 = !DILocation(line: 1333, column: 19, scope: !1621)
!1642 = !DILocation(line: 1335, column: 8, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1621, file: !73, line: 1335, column: 8)
!1644 = !DILocation(line: 1335, column: 26, scope: !1643)
!1645 = !DILocation(line: 1335, column: 23, scope: !1643)
!1646 = !DILocation(line: 1335, column: 8, scope: !1621)
!1647 = !DILocation(line: 1336, column: 7, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1643, file: !73, line: 1335, column: 36)
!1649 = !DILocation(line: 1338, column: 16, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1643, file: !73, line: 1338, column: 15)
!1651 = !DILocation(line: 1338, column: 31, scope: !1650)
!1652 = !DILocation(line: 1338, column: 35, scope: !1653)
!1653 = !DILexicalBlockFile(scope: !1650, file: !73, discriminator: 1)
!1654 = !DILocation(line: 1338, column: 15, scope: !1653)
!1655 = !DILocation(line: 1339, column: 7, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1650, file: !73, line: 1338, column: 45)
!1657 = !DILocation(line: 1342, column: 8, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1621, file: !73, line: 1342, column: 8)
!1659 = !DILocation(line: 1342, column: 24, scope: !1658)
!1660 = !DILocation(line: 1342, column: 38, scope: !1658)
!1661 = !DILocation(line: 1342, column: 48, scope: !1658)
!1662 = !DILocation(line: 1342, column: 35, scope: !1658)
!1663 = !DILocation(line: 1342, column: 8, scope: !1621)
!1664 = !DILocation(line: 1343, column: 7, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1658, file: !73, line: 1342, column: 60)
!1666 = !DILocation(line: 1344, column: 7, scope: !1665)
!1667 = !DILocation(line: 1348, column: 15, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1621, file: !73, line: 1348, column: 4)
!1669 = !DILocation(line: 1348, column: 9, scope: !1668)
!1670 = !DILocation(line: 1348, column: 20, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1672, file: !73, discriminator: 1)
!1672 = distinct !DILexicalBlock(scope: !1668, file: !73, line: 1348, column: 4)
!1673 = !DILocation(line: 1348, column: 28, scope: !1671)
!1674 = !DILocation(line: 1348, column: 44, scope: !1671)
!1675 = !DILocation(line: 1348, column: 26, scope: !1671)
!1676 = !DILocation(line: 1348, column: 4, scope: !1671)
!1677 = !DILocation(line: 1349, column: 44, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1672, file: !73, line: 1348, column: 65)
!1679 = !DILocation(line: 1349, column: 14, scope: !1678)
!1680 = !DILocation(line: 1349, column: 30, scope: !1678)
!1681 = !DILocation(line: 1349, column: 51, scope: !1678)
!1682 = !DILocation(line: 1349, column: 12, scope: !1678)
!1683 = !DILocation(line: 1352, column: 14, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1678, file: !73, line: 1352, column: 7)
!1685 = !DILocation(line: 1352, column: 12, scope: !1684)
!1686 = !DILocation(line: 1352, column: 19, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !1688, file: !73, discriminator: 1)
!1688 = distinct !DILexicalBlock(scope: !1684, file: !73, line: 1352, column: 7)
!1689 = !DILocation(line: 1352, column: 23, scope: !1687)
!1690 = !DILocation(line: 1352, column: 33, scope: !1687)
!1691 = !DILocation(line: 1352, column: 21, scope: !1687)
!1692 = !DILocation(line: 1352, column: 7, scope: !1687)
!1693 = !DILocation(line: 1353, column: 47, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !73, line: 1353, column: 14)
!1695 = distinct !DILexicalBlock(scope: !1688, file: !73, line: 1352, column: 50)
!1696 = !DILocation(line: 1353, column: 23, scope: !1694)
!1697 = !DILocation(line: 1353, column: 33, scope: !1694)
!1698 = !DILocation(line: 1353, column: 50, scope: !1694)
!1699 = !DILocation(line: 1353, column: 56, scope: !1694)
!1700 = !DILocation(line: 1353, column: 15, scope: !1694)
!1701 = !DILocation(line: 1353, column: 14, scope: !1695)
!1702 = !DILocation(line: 1354, column: 13, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1694, file: !73, line: 1353, column: 68)
!1704 = !DILocation(line: 1356, column: 7, scope: !1695)
!1705 = !DILocation(line: 1352, column: 46, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1688, file: !73, discriminator: 2)
!1707 = !DILocation(line: 1352, column: 7, scope: !1706)
!1708 = distinct !{!1708, !1709}
!1709 = !DILocation(line: 1352, column: 7, scope: !1678)
!1710 = !DILocation(line: 1358, column: 26, scope: !1678)
!1711 = !DILocation(line: 1358, column: 24, scope: !1678)
!1712 = !DILocation(line: 1359, column: 11, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1678, file: !73, line: 1359, column: 11)
!1714 = !DILocation(line: 1359, column: 31, scope: !1713)
!1715 = !DILocation(line: 1359, column: 41, scope: !1713)
!1716 = !DILocation(line: 1359, column: 28, scope: !1713)
!1717 = !DILocation(line: 1359, column: 11, scope: !1678)
!1718 = !DILocation(line: 1361, column: 75, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1713, file: !73, line: 1359, column: 53)
!1720 = !DILocation(line: 1361, column: 10, scope: !1719)
!1721 = !DILocation(line: 1362, column: 10, scope: !1719)
!1722 = !DILocation(line: 1365, column: 38, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !73, line: 1365, column: 14)
!1724 = distinct !DILexicalBlock(scope: !1713, file: !73, line: 1363, column: 14)
!1725 = !DILocation(line: 1365, column: 14, scope: !1723)
!1726 = !DILocation(line: 1365, column: 24, scope: !1723)
!1727 = !DILocation(line: 1365, column: 56, scope: !1723)
!1728 = !DILocation(line: 1366, column: 44, scope: !1723)
!1729 = !DILocation(line: 1366, column: 14, scope: !1723)
!1730 = !DILocation(line: 1366, column: 30, scope: !1723)
!1731 = !DILocation(line: 1366, column: 51, scope: !1723)
!1732 = !DILocation(line: 1365, column: 66, scope: !1723)
!1733 = !DILocation(line: 1365, column: 14, scope: !1724)
!1734 = !DILocation(line: 1367, column: 13, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1723, file: !73, line: 1366, column: 62)
!1736 = !DILocation(line: 1368, column: 13, scope: !1735)
!1737 = !DILocation(line: 1370, column: 38, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1724, file: !73, line: 1370, column: 14)
!1739 = !DILocation(line: 1370, column: 14, scope: !1738)
!1740 = !DILocation(line: 1370, column: 24, scope: !1738)
!1741 = !DILocation(line: 1370, column: 56, scope: !1738)
!1742 = !DILocation(line: 1371, column: 43, scope: !1738)
!1743 = !DILocation(line: 1371, column: 13, scope: !1738)
!1744 = !DILocation(line: 1371, column: 29, scope: !1738)
!1745 = !DILocation(line: 1371, column: 50, scope: !1738)
!1746 = !DILocation(line: 1370, column: 67, scope: !1738)
!1747 = !DILocation(line: 1370, column: 14, scope: !1724)
!1748 = !DILocation(line: 1372, column: 13, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1738, file: !73, line: 1371, column: 62)
!1750 = !DILocation(line: 1373, column: 13, scope: !1749)
!1751 = !DILocation(line: 1376, column: 4, scope: !1678)
!1752 = !DILocation(line: 1348, column: 61, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1672, file: !73, discriminator: 2)
!1754 = !DILocation(line: 1348, column: 4, scope: !1753)
!1755 = distinct !{!1755, !1756}
!1756 = !DILocation(line: 1348, column: 4, scope: !1621)
!1757 = !DILocation(line: 1378, column: 4, scope: !1621)
!1758 = !DILocation(line: 1379, column: 1, scope: !1621)
!1759 = distinct !DISubprogram(name: "GuestInfoSendNicInfoXdr", scope: !73, file: !73, line: 796, type: !1760, isLocal: true, isDefinition: true, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!311, !362, !1762, !789}
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64, align: 64)
!1763 = !DILocalVariable(name: "ctx", arg: 1, scope: !1759, file: !73, line: 796, type: !362)
!1764 = !DILocation(line: 796, column: 38, scope: !1759)
!1765 = !DILocalVariable(name: "message", arg: 2, scope: !1759, file: !73, line: 797, type: !1762)
!1766 = !DILocation(line: 797, column: 40, scope: !1759)
!1767 = !DILocalVariable(name: "type", arg: 3, scope: !1759, file: !73, line: 798, type: !789)
!1768 = !DILocation(line: 798, column: 39, scope: !1759)
!1769 = !DILocalVariable(name: "status", scope: !1759, file: !73, line: 800, type: !311)
!1770 = !DILocation(line: 800, column: 9, scope: !1759)
!1771 = !DILocalVariable(name: "xdrs", scope: !1759, file: !73, line: 801, type: !227)
!1772 = !DILocation(line: 801, column: 8, scope: !1759)
!1773 = !DILocalVariable(name: "request", scope: !1759, file: !73, line: 802, type: !354)
!1774 = !DILocation(line: 802, column: 11, scope: !1759)
!1775 = !DILocalVariable(name: "reply", scope: !1759, file: !73, line: 803, type: !110)
!1776 = !DILocation(line: 803, column: 10, scope: !1759)
!1777 = !DILocalVariable(name: "replyLen", scope: !1759, file: !73, line: 804, type: !772)
!1778 = !DILocation(line: 804, column: 11, scope: !1759)
!1779 = !DILocation(line: 807, column: 57, scope: !1759)
!1780 = !DILocation(line: 807, column: 14, scope: !1759)
!1781 = !DILocation(line: 807, column: 12, scope: !1759)
!1782 = !DILocation(line: 809, column: 8, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1759, file: !73, line: 809, column: 8)
!1784 = !DILocation(line: 809, column: 29, scope: !1783)
!1785 = !DILocation(line: 809, column: 8, scope: !1759)
!1786 = !DILocation(line: 810, column: 7, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1783, file: !73, line: 809, column: 37)
!1788 = !DILocation(line: 814, column: 33, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1759, file: !73, line: 814, column: 8)
!1790 = !DILocation(line: 814, column: 49, scope: !1789)
!1791 = !DILocation(line: 814, column: 42, scope: !1789)
!1792 = !DILocation(line: 814, column: 9, scope: !1793)
!1793 = !DILexicalBlockFile(scope: !1789, file: !73, discriminator: 2)
!1794 = !DILocation(line: 814, column: 9, scope: !1789)
!1795 = !DILocation(line: 814, column: 59, scope: !1789)
!1796 = !DILocation(line: 815, column: 34, scope: !1789)
!1797 = !DILocation(line: 815, column: 9, scope: !1789)
!1798 = !DILocation(line: 814, column: 8, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1759, file: !73, discriminator: 1)
!1800 = !DILocation(line: 816, column: 88, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1789, file: !73, line: 815, column: 44)
!1802 = !DILocation(line: 816, column: 97, scope: !1801)
!1803 = !DILocation(line: 816, column: 7, scope: !1801)
!1804 = !DILocation(line: 817, column: 4, scope: !1801)
!1805 = !DILocation(line: 818, column: 32, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1789, file: !73, line: 817, column: 11)
!1807 = !DILocation(line: 818, column: 37, scope: !1806)
!1808 = !DILocation(line: 818, column: 42, scope: !1806)
!1809 = !DILocation(line: 818, column: 63, scope: !1806)
!1810 = !DILocation(line: 818, column: 70, scope: !1806)
!1811 = !DILocation(line: 818, column: 60, scope: !1812)
!1812 = !DILexicalBlockFile(scope: !1806, file: !73, discriminator: 1)
!1813 = !DILocation(line: 818, column: 60, scope: !1806)
!1814 = !DILocation(line: 818, column: 16, scope: !1815)
!1815 = !DILexicalBlockFile(scope: !1806, file: !73, discriminator: 2)
!1816 = !DILocation(line: 818, column: 16, scope: !1806)
!1817 = !DILocation(line: 818, column: 14, scope: !1806)
!1818 = !DILocation(line: 820, column: 12, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1806, file: !73, line: 820, column: 11)
!1820 = !DILocation(line: 820, column: 11, scope: !1806)
!1821 = !DILocation(line: 821, column: 119, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1819, file: !73, line: 820, column: 20)
!1823 = !DILocation(line: 821, column: 128, scope: !1822)
!1824 = !DILocation(line: 821, column: 10, scope: !1822)
!1825 = !DILocation(line: 823, column: 7, scope: !1822)
!1826 = !DILocation(line: 824, column: 15, scope: !1806)
!1827 = !DILocation(line: 824, column: 7, scope: !1806)
!1828 = !DILocation(line: 826, column: 4, scope: !1759)
!1829 = !DILocation(line: 829, column: 11, scope: !1759)
!1830 = !DILocation(line: 829, column: 4, scope: !1759)
!1831 = !DILocation(line: 830, column: 11, scope: !1759)
!1832 = !DILocation(line: 830, column: 4, scope: !1759)
!1833 = distinct !DISubprogram(name: "GuestNicInfoV3ToV3_64", scope: !73, file: !73, line: 905, type: !1834, isLocal: true, isDefinition: true, scopeLine: 906, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!112, !112}
!1836 = !DILocalVariable(name: "info", arg: 1, scope: !1833, file: !73, line: 905, type: !112)
!1837 = !DILocation(line: 905, column: 34, scope: !1833)
!1838 = !DILocalVariable(name: "idx", scope: !1833, file: !73, line: 907, type: !120)
!1839 = !DILocation(line: 907, column: 10, scope: !1833)
!1840 = !DILocalVariable(name: "info64", scope: !1833, file: !73, line: 909, type: !112)
!1841 = !DILocation(line: 909, column: 15, scope: !1833)
!1842 = !DILocation(line: 909, column: 24, scope: !1833)
!1843 = !DILocation(line: 911, column: 11, scope: !1833)
!1844 = !DILocation(line: 911, column: 4, scope: !1833)
!1845 = !DILocation(line: 911, column: 19, scope: !1833)
!1846 = !DILocation(line: 913, column: 16, scope: !1833)
!1847 = !DILocation(line: 913, column: 24, scope: !1833)
!1848 = !DILocation(line: 913, column: 29, scope: !1833)
!1849 = !DILocation(line: 913, column: 38, scope: !1833)
!1850 = !DILocation(line: 913, column: 7, scope: !1833)
!1851 = !DILocation(line: 912, column: 4, scope: !1833)
!1852 = !DILocation(line: 912, column: 12, scope: !1833)
!1853 = !DILocation(line: 912, column: 17, scope: !1833)
!1854 = !DILocation(line: 912, column: 26, scope: !1833)
!1855 = !DILocation(line: 915, column: 13, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1833, file: !73, line: 915, column: 4)
!1857 = !DILocation(line: 915, column: 9, scope: !1856)
!1858 = !DILocation(line: 915, column: 18, scope: !1859)
!1859 = !DILexicalBlockFile(scope: !1860, file: !73, discriminator: 1)
!1860 = distinct !DILexicalBlock(scope: !1856, file: !73, line: 915, column: 4)
!1861 = !DILocation(line: 915, column: 24, scope: !1859)
!1862 = !DILocation(line: 915, column: 32, scope: !1859)
!1863 = !DILocation(line: 915, column: 37, scope: !1859)
!1864 = !DILocation(line: 915, column: 22, scope: !1859)
!1865 = !DILocation(line: 915, column: 4, scope: !1859)
!1866 = !DILocation(line: 916, column: 37, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1860, file: !73, line: 915, column: 54)
!1868 = !DILocation(line: 916, column: 15, scope: !1867)
!1869 = !DILocation(line: 916, column: 23, scope: !1867)
!1870 = !DILocation(line: 916, column: 28, scope: !1867)
!1871 = !DILocation(line: 916, column: 7, scope: !1867)
!1872 = !DILocation(line: 916, column: 64, scope: !1867)
!1873 = !DILocation(line: 916, column: 44, scope: !1867)
!1874 = !DILocation(line: 916, column: 50, scope: !1867)
!1875 = !DILocation(line: 916, column: 55, scope: !1867)
!1876 = !DILocation(line: 919, column: 33, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1867, file: !73, line: 919, column: 11)
!1878 = !DILocation(line: 919, column: 11, scope: !1877)
!1879 = !DILocation(line: 919, column: 19, scope: !1877)
!1880 = !DILocation(line: 919, column: 24, scope: !1877)
!1881 = !DILocation(line: 919, column: 38, scope: !1877)
!1882 = !DILocation(line: 919, column: 42, scope: !1877)
!1883 = !DILocation(line: 919, column: 50, scope: !1877)
!1884 = !DILocation(line: 919, column: 11, scope: !1867)
!1885 = !DILocation(line: 920, column: 32, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1877, file: !73, line: 919, column: 56)
!1887 = !DILocation(line: 920, column: 10, scope: !1886)
!1888 = !DILocation(line: 920, column: 18, scope: !1886)
!1889 = !DILocation(line: 920, column: 23, scope: !1886)
!1890 = !DILocation(line: 920, column: 37, scope: !1886)
!1891 = !DILocation(line: 920, column: 41, scope: !1886)
!1892 = !DILocation(line: 920, column: 49, scope: !1886)
!1893 = !DILocation(line: 921, column: 7, scope: !1886)
!1894 = !DILocation(line: 922, column: 4, scope: !1867)
!1895 = !DILocation(line: 915, column: 50, scope: !1896)
!1896 = !DILexicalBlockFile(scope: !1860, file: !73, discriminator: 2)
!1897 = !DILocation(line: 915, column: 4, scope: !1896)
!1898 = distinct !{!1898, !1899}
!1899 = !DILocation(line: 915, column: 4, scope: !1833)
!1900 = !DILocation(line: 924, column: 11, scope: !1833)
!1901 = !DILocation(line: 924, column: 4, scope: !1833)
!1902 = distinct !DISubprogram(name: "NicInfoV3ToV2", scope: !73, file: !73, line: 1431, type: !1903, isLocal: true, isDefinition: true, scopeLine: 1432, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!1465, !1905}
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64, align: 64)
!1906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!1907 = !DILocalVariable(name: "infoV3", arg: 1, scope: !1902, file: !73, line: 1431, type: !1905)
!1908 = !DILocation(line: 1431, column: 32, scope: !1902)
!1909 = !DILocalVariable(name: "nicList", scope: !1902, file: !73, line: 1433, type: !1465)
!1910 = !DILocation(line: 1433, column: 18, scope: !1902)
!1911 = !DILocalVariable(name: "i", scope: !1902, file: !73, line: 1434, type: !124)
!1912 = !DILocation(line: 1434, column: 17, scope: !1902)
!1913 = !DILocalVariable(name: "j", scope: !1902, file: !73, line: 1434, type: !124)
!1914 = !DILocation(line: 1434, column: 20, scope: !1902)
!1915 = !DILocation(line: 1436, column: 14, scope: !1902)
!1916 = !DILocation(line: 1436, column: 12, scope: !1902)
!1917 = !DILocation(line: 1438, column: 78, scope: !1902)
!1918 = !DILocation(line: 1438, column: 88, scope: !1902)
!1919 = !DILocation(line: 1438, column: 93, scope: !1902)
!1920 = !DILocation(line: 1438, column: 66, scope: !1902)
!1921 = !DILocation(line: 1438, column: 105, scope: !1902)
!1922 = !DILocation(line: 1438, column: 115, scope: !1902)
!1923 = !DILocation(line: 1438, column: 120, scope: !1902)
!1924 = !DILocation(line: 1438, column: 165, scope: !1902)
!1925 = !DILocation(line: 1438, column: 173, scope: !1902)
!1926 = !DILocation(line: 1438, column: 178, scope: !1902)
!1927 = !DILocation(line: 1438, column: 46, scope: !1902)
!1928 = !DILocation(line: 1438, column: 10, scope: !1902)
!1929 = !DILocation(line: 1439, column: 13, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1902, file: !73, line: 1439, column: 4)
!1931 = !DILocation(line: 1439, column: 9, scope: !1930)
!1932 = !DILocation(line: 1439, column: 19, scope: !1933)
!1933 = !DILexicalBlockFile(scope: !1934, file: !73, discriminator: 1)
!1934 = distinct !DILexicalBlock(scope: !1930, file: !73, line: 1439, column: 4)
!1935 = !DILocation(line: 1439, column: 26, scope: !1933)
!1936 = !DILocation(line: 1439, column: 35, scope: !1933)
!1937 = !DILocation(line: 1439, column: 40, scope: !1933)
!1938 = !DILocation(line: 1439, column: 22, scope: !1933)
!1939 = !DILocation(line: 1439, column: 4, scope: !1933)
!1940 = !DILocalVariable(name: "nic", scope: !1941, file: !73, line: 1440, type: !126)
!1941 = distinct !DILexicalBlock(scope: !1934, file: !73, line: 1439, column: 58)
!1942 = !DILocation(line: 1440, column: 19, scope: !1941)
!1943 = !DILocation(line: 1440, column: 51, scope: !1941)
!1944 = !DILocation(line: 1440, column: 27, scope: !1941)
!1945 = !DILocation(line: 1440, column: 28, scope: !1941)
!1946 = !DILocation(line: 1440, column: 37, scope: !1941)
!1947 = !DILocation(line: 1440, column: 42, scope: !1941)
!1948 = !DILocalVariable(name: "oldNic", scope: !1941, file: !73, line: 1441, type: !1949)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64, align: 64)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestNic", file: !4, line: 49, baseType: !294)
!1951 = !DILocation(line: 1441, column: 17, scope: !1941)
!1952 = !DILocation(line: 1441, column: 53, scope: !1941)
!1953 = !DILocation(line: 1441, column: 28, scope: !1941)
!1954 = !DILocation(line: 1441, column: 29, scope: !1941)
!1955 = !DILocation(line: 1441, column: 39, scope: !1941)
!1956 = !DILocation(line: 1441, column: 44, scope: !1941)
!1957 = !DILocation(line: 1443, column: 18, scope: !1941)
!1958 = !DILocation(line: 1443, column: 26, scope: !1941)
!1959 = !DILocation(line: 1443, column: 38, scope: !1941)
!1960 = !DILocation(line: 1443, column: 43, scope: !1941)
!1961 = !DILocation(line: 1443, column: 7, scope: !1941)
!1962 = !DILocation(line: 1445, column: 78, scope: !1941)
!1963 = !DILocation(line: 1445, column: 87, scope: !1941)
!1964 = !DILocation(line: 1445, column: 91, scope: !1941)
!1965 = !DILocation(line: 1445, column: 66, scope: !1941)
!1966 = !DILocation(line: 1445, column: 102, scope: !1941)
!1967 = !DILocation(line: 1445, column: 111, scope: !1941)
!1968 = !DILocation(line: 1445, column: 115, scope: !1941)
!1969 = !DILocation(line: 1445, column: 156, scope: !1941)
!1970 = !DILocation(line: 1445, column: 161, scope: !1941)
!1971 = !DILocation(line: 1445, column: 165, scope: !1941)
!1972 = !DILocation(line: 1445, column: 46, scope: !1941)
!1973 = !DILocation(line: 1445, column: 13, scope: !1941)
!1974 = !DILocation(line: 1447, column: 16, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1941, file: !73, line: 1447, column: 7)
!1976 = !DILocation(line: 1447, column: 12, scope: !1975)
!1977 = !DILocation(line: 1447, column: 22, scope: !1978)
!1978 = !DILexicalBlockFile(scope: !1979, file: !73, discriminator: 1)
!1979 = distinct !DILexicalBlock(scope: !1975, file: !73, line: 1447, column: 7)
!1980 = !DILocation(line: 1447, column: 29, scope: !1978)
!1981 = !DILocation(line: 1447, column: 35, scope: !1978)
!1982 = !DILocation(line: 1447, column: 39, scope: !1978)
!1983 = !DILocation(line: 1447, column: 25, scope: !1978)
!1984 = !DILocation(line: 1447, column: 7, scope: !1978)
!1985 = !DILocalVariable(name: "ipEntry", scope: !1986, file: !73, line: 1448, type: !136)
!1986 = distinct !DILexicalBlock(scope: !1979, file: !73, line: 1447, column: 56)
!1987 = !DILocation(line: 1448, column: 26, scope: !1986)
!1988 = !DILocation(line: 1448, column: 57, scope: !1986)
!1989 = !DILocation(line: 1448, column: 38, scope: !1986)
!1990 = !DILocation(line: 1448, column: 39, scope: !1986)
!1991 = !DILocation(line: 1448, column: 45, scope: !1986)
!1992 = !DILocation(line: 1448, column: 49, scope: !1986)
!1993 = !DILocalVariable(name: "ip", scope: !1986, file: !73, line: 1449, type: !174)
!1994 = !DILocation(line: 1449, column: 26, scope: !1986)
!1995 = !DILocation(line: 1449, column: 32, scope: !1986)
!1996 = !DILocation(line: 1449, column: 41, scope: !1986)
!1997 = !DILocalVariable(name: "oldIp", scope: !1986, file: !73, line: 1450, type: !1998)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64, align: 64)
!1999 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmIpAddress", file: !4, line: 40, baseType: !306)
!2000 = !DILocation(line: 1450, column: 23, scope: !1986)
!2001 = !DILocation(line: 1450, column: 55, scope: !1986)
!2002 = !DILocation(line: 1450, column: 33, scope: !1986)
!2003 = !DILocation(line: 1450, column: 34, scope: !1986)
!2004 = !DILocation(line: 1450, column: 43, scope: !1986)
!2005 = !DILocation(line: 1450, column: 47, scope: !1986)
!2006 = !DILocation(line: 1453, column: 34, scope: !1986)
!2007 = !DILocation(line: 1453, column: 38, scope: !1986)
!2008 = !DILocation(line: 1453, column: 56, scope: !1986)
!2009 = !DILocation(line: 1453, column: 33, scope: !1986)
!2010 = !DILocation(line: 1453, column: 10, scope: !1986)
!2011 = !DILocation(line: 1453, column: 17, scope: !1986)
!2012 = !DILocation(line: 1453, column: 31, scope: !1986)
!2013 = !DILocation(line: 1456, column: 20, scope: !1986)
!2014 = !DILocation(line: 1456, column: 24, scope: !1986)
!2015 = !DILocation(line: 1456, column: 42, scope: !1986)
!2016 = !DILocation(line: 1458, column: 27, scope: !1986)
!2017 = !DILocation(line: 1458, column: 31, scope: !1986)
!2018 = !DILocation(line: 1458, column: 45, scope: !1986)
!2019 = !DILocation(line: 1458, column: 62, scope: !1986)
!2020 = !DILocation(line: 1458, column: 69, scope: !1986)
!2021 = !DILocation(line: 1456, column: 10, scope: !1986)
!2022 = !DILocation(line: 1461, column: 22, scope: !1986)
!2023 = !DILocation(line: 1461, column: 29, scope: !1986)
!2024 = !DILocation(line: 1462, column: 22, scope: !1986)
!2025 = !DILocation(line: 1462, column: 31, scope: !1986)
!2026 = !DILocation(line: 1461, column: 10, scope: !1986)
!2027 = !DILocation(line: 1463, column: 7, scope: !1986)
!2028 = !DILocation(line: 1447, column: 52, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !1979, file: !73, discriminator: 2)
!2030 = !DILocation(line: 1447, column: 7, scope: !2029)
!2031 = distinct !{!2031, !2032}
!2032 = !DILocation(line: 1447, column: 7, scope: !1941)
!2033 = !DILocation(line: 1464, column: 4, scope: !1941)
!2034 = !DILocation(line: 1439, column: 54, scope: !2035)
!2035 = !DILexicalBlockFile(scope: !1934, file: !73, discriminator: 2)
!2036 = !DILocation(line: 1439, column: 4, scope: !2035)
!2037 = distinct !{!2037, !2038}
!2038 = !DILocation(line: 1439, column: 4, scope: !1902)
!2039 = !DILocation(line: 1466, column: 11, scope: !1902)
!2040 = !DILocation(line: 1466, column: 4, scope: !1902)
!2041 = distinct !DISubprogram(name: "GuestInfoSendData", scope: !73, file: !73, line: 853, type: !2042, isLocal: true, isDefinition: true, scopeLine: 857, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!311, !362, !109, !120, !789}
!2044 = !DILocalVariable(name: "ctx", arg: 1, scope: !2041, file: !73, line: 853, type: !362)
!2045 = !DILocation(line: 853, column: 32, scope: !2041)
!2046 = !DILocalVariable(name: "info", arg: 2, scope: !2041, file: !73, line: 854, type: !109)
!2047 = !DILocation(line: 854, column: 25, scope: !2041)
!2048 = !DILocalVariable(name: "infoLength", arg: 3, scope: !2041, file: !73, line: 855, type: !120)
!2049 = !DILocation(line: 855, column: 25, scope: !2041)
!2050 = !DILocalVariable(name: "type", arg: 4, scope: !2041, file: !73, line: 856, type: !789)
!2051 = !DILocation(line: 856, column: 33, scope: !2041)
!2052 = !DILocalVariable(name: "status", scope: !2041, file: !73, line: 858, type: !311)
!2053 = !DILocation(line: 858, column: 9, scope: !2041)
!2054 = !DILocalVariable(name: "request", scope: !2041, file: !73, line: 859, type: !354)
!2055 = !DILocation(line: 859, column: 11, scope: !2041)
!2056 = !DILocalVariable(name: "msgLength", scope: !2041, file: !73, line: 860, type: !120)
!2057 = !DILocation(line: 860, column: 10, scope: !2041)
!2058 = !DILocation(line: 860, column: 22, scope: !2041)
!2059 = !DILocalVariable(name: "message", scope: !2041, file: !73, line: 861, type: !354)
!2060 = !DILocation(line: 861, column: 11, scope: !2041)
!2061 = !DILocalVariable(name: "reply", scope: !2041, file: !73, line: 862, type: !110)
!2062 = !DILocation(line: 862, column: 10, scope: !2041)
!2063 = !DILocalVariable(name: "replyLen", scope: !2041, file: !73, line: 863, type: !772)
!2064 = !DILocation(line: 863, column: 11, scope: !2041)
!2065 = !DILocation(line: 866, column: 57, scope: !2041)
!2066 = !DILocation(line: 866, column: 14, scope: !2041)
!2067 = !DILocation(line: 866, column: 12, scope: !2041)
!2068 = !DILocation(line: 868, column: 24, scope: !2041)
!2069 = !DILocation(line: 868, column: 17, scope: !2041)
!2070 = !DILocation(line: 868, column: 14, scope: !2041)
!2071 = !DILocation(line: 869, column: 23, scope: !2041)
!2072 = !DILocation(line: 869, column: 14, scope: !2041)
!2073 = !DILocation(line: 869, column: 12, scope: !2041)
!2074 = !DILocation(line: 871, column: 11, scope: !2041)
!2075 = !DILocation(line: 871, column: 20, scope: !2041)
!2076 = !DILocation(line: 871, column: 36, scope: !2041)
!2077 = !DILocation(line: 871, column: 29, scope: !2041)
!2078 = !DILocation(line: 871, column: 4, scope: !2079)
!2079 = !DILexicalBlockFile(scope: !2041, file: !73, discriminator: 1)
!2080 = !DILocation(line: 872, column: 11, scope: !2041)
!2081 = !DILocation(line: 872, column: 28, scope: !2041)
!2082 = !DILocation(line: 872, column: 21, scope: !2041)
!2083 = !DILocation(line: 872, column: 19, scope: !2041)
!2084 = !DILocation(line: 872, column: 38, scope: !2041)
!2085 = !DILocation(line: 872, column: 44, scope: !2041)
!2086 = !DILocation(line: 872, column: 4, scope: !2079)
!2087 = !DILocation(line: 874, column: 29, scope: !2041)
!2088 = !DILocation(line: 874, column: 34, scope: !2041)
!2089 = !DILocation(line: 874, column: 39, scope: !2041)
!2090 = !DILocation(line: 874, column: 48, scope: !2041)
!2091 = !DILocation(line: 874, column: 13, scope: !2041)
!2092 = !DILocation(line: 874, column: 11, scope: !2041)
!2093 = !DILocation(line: 875, column: 9, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2041, file: !73, line: 875, column: 8)
!2095 = !DILocation(line: 875, column: 8, scope: !2041)
!2096 = !DILocation(line: 876, column: 116, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2094, file: !73, line: 875, column: 17)
!2098 = !DILocation(line: 876, column: 125, scope: !2097)
!2099 = !DILocation(line: 876, column: 7, scope: !2097)
!2100 = !DILocation(line: 878, column: 4, scope: !2097)
!2101 = !DILocation(line: 879, column: 12, scope: !2041)
!2102 = !DILocation(line: 879, column: 4, scope: !2041)
!2103 = !DILocation(line: 881, column: 11, scope: !2041)
!2104 = !DILocation(line: 881, column: 4, scope: !2041)
!2105 = !DILocation(line: 882, column: 11, scope: !2041)
!2106 = !DILocation(line: 882, column: 4, scope: !2041)
!2107 = !DILocation(line: 884, column: 11, scope: !2041)
!2108 = !DILocation(line: 884, column: 4, scope: !2041)
!2109 = distinct !DISubprogram(name: "SendUptime", scope: !73, file: !73, line: 1215, type: !2110, isLocal: true, isDefinition: true, scopeLine: 1216, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{null, !362}
!2112 = !DILocalVariable(name: "ctx", arg: 1, scope: !2109, file: !73, line: 1215, type: !362)
!2113 = !DILocation(line: 1215, column: 25, scope: !2109)
!2114 = !DILocalVariable(name: "uptime", scope: !2109, file: !73, line: 1217, type: !354)
!2115 = !DILocation(line: 1217, column: 11, scope: !2109)
!2116 = !DILocation(line: 1217, column: 47, scope: !2109)
!2117 = !DILocation(line: 1217, column: 20, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !2109, file: !73, discriminator: 1)
!2119 = !DILocation(line: 1218, column: 77, scope: !2109)
!2120 = !DILocation(line: 1218, column: 4, scope: !2109)
!2121 = !DILocation(line: 1219, column: 24, scope: !2109)
!2122 = !DILocation(line: 1219, column: 42, scope: !2109)
!2123 = !DILocation(line: 1219, column: 4, scope: !2109)
!2124 = !DILocation(line: 1220, column: 11, scope: !2109)
!2125 = !DILocation(line: 1220, column: 4, scope: !2109)
!2126 = !DILocation(line: 1221, column: 1, scope: !2109)
!2127 = distinct !DISubprogram(name: "TweakGatherLoop", scope: !73, file: !73, line: 1491, type: !2128, isLocal: true, isDefinition: true, scopeLine: 1498, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{null, !362, !318, !354, !320, !321, !460, !2130}
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, align: 64)
!2131 = !DILocalVariable(name: "ctx", arg: 1, scope: !2127, file: !73, line: 1491, type: !362)
!2132 = !DILocation(line: 1491, column: 30, scope: !2127)
!2133 = !DILocalVariable(name: "enable", arg: 2, scope: !2127, file: !73, line: 1492, type: !318)
!2134 = !DILocation(line: 1492, column: 26, scope: !2127)
!2135 = !DILocalVariable(name: "cfgKey", arg: 3, scope: !2127, file: !73, line: 1493, type: !354)
!2136 = !DILocation(line: 1493, column: 24, scope: !2127)
!2137 = !DILocalVariable(name: "defInterval", arg: 4, scope: !2127, file: !73, line: 1494, type: !320)
!2138 = !DILocation(line: 1494, column: 22, scope: !2127)
!2139 = !DILocalVariable(name: "callback", arg: 5, scope: !2127, file: !73, line: 1495, type: !321)
!2140 = !DILocation(line: 1495, column: 29, scope: !2127)
!2141 = !DILocalVariable(name: "currInterval", arg: 6, scope: !2127, file: !73, line: 1496, type: !460)
!2142 = !DILocation(line: 1496, column: 23, scope: !2127)
!2143 = !DILocalVariable(name: "timeoutSource", arg: 7, scope: !2127, file: !73, line: 1497, type: !2130)
!2144 = !DILocation(line: 1497, column: 27, scope: !2127)
!2145 = !DILocalVariable(name: "pollInterval", scope: !2127, file: !73, line: 1499, type: !320)
!2146 = !DILocation(line: 1499, column: 9, scope: !2127)
!2147 = !DILocation(line: 1501, column: 8, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2127, file: !73, line: 1501, column: 8)
!2149 = !DILocation(line: 1501, column: 8, scope: !2127)
!2150 = !DILocation(line: 1502, column: 22, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2148, file: !73, line: 1501, column: 16)
!2152 = !DILocation(line: 1502, column: 34, scope: !2151)
!2153 = !DILocation(line: 1502, column: 20, scope: !2151)
!2154 = !DILocation(line: 1508, column: 30, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2151, file: !73, line: 1508, column: 11)
!2156 = !DILocation(line: 1508, column: 35, scope: !2155)
!2157 = !DILocation(line: 1509, column: 30, scope: !2155)
!2158 = !DILocation(line: 1508, column: 11, scope: !2155)
!2159 = !DILocation(line: 1508, column: 11, scope: !2151)
!2160 = !DILocalVariable(name: "gError", scope: !2161, file: !73, line: 1510, type: !2162)
!2161 = distinct !DILexicalBlock(scope: !2155, file: !73, line: 1509, column: 44)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64, align: 64)
!2163 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !2164, line: 42, baseType: !2165)
!2164 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/open-vm-tools/line1422")
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !2164, line: 44, size: 128, align: 64, elements: !2166)
!2166 = !{!2167, !2172, !2173}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2165, file: !2164, line: 46, baseType: !2168, size: 32, align: 32)
!2168 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !2169, line: 36, baseType: !2170)
!2169 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/open-vm-tools/line1422")
!2170 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !2171, line: 45, baseType: !124)
!2171 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/open-vm-tools/line1422")
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2165, file: !2164, line: 47, baseType: !320, size: 32, align: 32, offset: 32)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !2165, file: !2164, line: 48, baseType: !354, size: 64, align: 64, offset: 64)
!2174 = !DILocation(line: 1510, column: 18, scope: !2161)
!2175 = !DILocation(line: 1512, column: 48, scope: !2161)
!2176 = !DILocation(line: 1512, column: 53, scope: !2161)
!2177 = !DILocation(line: 1514, column: 48, scope: !2161)
!2178 = !DILocation(line: 1512, column: 25, scope: !2161)
!2179 = !DILocation(line: 1512, column: 23, scope: !2161)
!2180 = !DILocation(line: 1515, column: 23, scope: !2161)
!2181 = !DILocation(line: 1517, column: 14, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2161, file: !73, line: 1517, column: 14)
!2183 = !DILocation(line: 1517, column: 27, scope: !2182)
!2184 = !DILocation(line: 1517, column: 31, scope: !2182)
!2185 = !DILocation(line: 1517, column: 34, scope: !2186)
!2186 = !DILexicalBlockFile(scope: !2182, file: !73, discriminator: 1)
!2187 = !DILocation(line: 1517, column: 14, scope: !2186)
!2188 = !DILocation(line: 1518, column: 112, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2182, file: !73, line: 1517, column: 42)
!2190 = !DILocation(line: 1518, column: 120, scope: !2189)
!2191 = !DILocation(line: 1518, column: 13, scope: !2189)
!2192 = !DILocation(line: 1520, column: 28, scope: !2189)
!2193 = !DILocation(line: 1520, column: 40, scope: !2189)
!2194 = !DILocation(line: 1520, column: 26, scope: !2189)
!2195 = !DILocation(line: 1521, column: 10, scope: !2189)
!2196 = !DILocation(line: 1523, column: 10, scope: !2161)
!2197 = !DILocation(line: 1524, column: 7, scope: !2161)
!2198 = !DILocation(line: 1525, column: 4, scope: !2151)
!2199 = !DILocation(line: 1527, column: 9, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2127, file: !73, line: 1527, column: 8)
!2201 = !DILocation(line: 1527, column: 8, scope: !2200)
!2202 = !DILocation(line: 1527, column: 23, scope: !2200)
!2203 = !DILocation(line: 1527, column: 8, scope: !2127)
!2204 = !DILocation(line: 1532, column: 11, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !73, line: 1532, column: 11)
!2206 = distinct !DILexicalBlock(scope: !2200, file: !73, line: 1527, column: 31)
!2207 = !DILocation(line: 1532, column: 28, scope: !2205)
!2208 = !DILocation(line: 1532, column: 27, scope: !2205)
!2209 = !DILocation(line: 1532, column: 24, scope: !2205)
!2210 = !DILocation(line: 1532, column: 11, scope: !2206)
!2211 = !DILocation(line: 1534, column: 10, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2205, file: !73, line: 1532, column: 42)
!2213 = !DILocation(line: 1541, column: 25, scope: !2206)
!2214 = !DILocation(line: 1541, column: 24, scope: !2206)
!2215 = !DILocation(line: 1541, column: 7, scope: !2206)
!2216 = !DILocation(line: 1542, column: 8, scope: !2206)
!2217 = !DILocation(line: 1542, column: 22, scope: !2206)
!2218 = !DILocation(line: 1543, column: 4, scope: !2206)
!2219 = !DILocation(line: 1548, column: 20, scope: !2127)
!2220 = !DILocation(line: 1548, column: 5, scope: !2127)
!2221 = !DILocation(line: 1548, column: 18, scope: !2127)
!2222 = !DILocation(line: 1550, column: 9, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2127, file: !73, line: 1550, column: 8)
!2224 = !DILocation(line: 1550, column: 8, scope: !2223)
!2225 = !DILocation(line: 1550, column: 8, scope: !2127)
!2226 = !DILocation(line: 1551, column: 75, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2223, file: !73, line: 1550, column: 23)
!2228 = !DILocation(line: 1551, column: 84, scope: !2227)
!2229 = !DILocation(line: 1551, column: 83, scope: !2227)
!2230 = !DILocation(line: 1551, column: 97, scope: !2227)
!2231 = !DILocation(line: 1551, column: 7, scope: !2227)
!2232 = !DILocation(line: 1553, column: 46, scope: !2227)
!2233 = !DILocation(line: 1553, column: 45, scope: !2227)
!2234 = !DILocation(line: 1553, column: 24, scope: !2227)
!2235 = !DILocation(line: 1553, column: 8, scope: !2227)
!2236 = !DILocation(line: 1553, column: 22, scope: !2227)
!2237 = !DILocation(line: 1554, column: 7, scope: !2227)
!2238 = distinct !{!2238, !2237}
!2239 = !DILocalVariable(name: "__src", scope: !2240, file: !73, line: 1554, type: !429)
!2240 = distinct !DILexicalBlock(scope: !2227, file: !73, line: 1554, column: 10)
!2241 = !DILocation(line: 1554, column: 21, scope: !2240)
!2242 = !DILocation(line: 1554, column: 31, scope: !2243)
!2243 = !DILexicalBlockFile(scope: !2240, file: !73, discriminator: 1)
!2244 = !DILocation(line: 1554, column: 30, scope: !2243)
!2245 = !DILocation(line: 1554, column: 21, scope: !2243)
!2246 = !DILocation(line: 1554, column: 69, scope: !2243)
!2247 = !DILocation(line: 1554, column: 91, scope: !2243)
!2248 = !DILocation(line: 1554, column: 103, scope: !2243)
!2249 = !DILocation(line: 1554, column: 102, scope: !2243)
!2250 = !DILocation(line: 1554, column: 47, scope: !2243)
!2251 = !DILocation(line: 1554, column: 26, scope: !2243)
!2252 = !DILocation(line: 1554, column: 58, scope: !2243)
!2253 = !DILocation(line: 1554, column: 64, scope: !2243)
!2254 = !DILocation(line: 1554, column: 33, scope: !2255)
!2255 = !DILexicalBlockFile(scope: !2243, file: !73, discriminator: 2)
!2256 = !DILocation(line: 1554, column: 10, scope: !2257)
!2257 = !DILexicalBlockFile(scope: !2243, file: !73, discriminator: 3)
!2258 = !DILocation(line: 1554, column: 76, scope: !2243)
!2259 = !DILocation(line: 1555, column: 23, scope: !2227)
!2260 = !DILocation(line: 1555, column: 22, scope: !2227)
!2261 = !DILocation(line: 1555, column: 7, scope: !2227)
!2262 = !DILocation(line: 1556, column: 4, scope: !2227)
!2263 = !DILocation(line: 1557, column: 77, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2223, file: !73, line: 1556, column: 11)
!2265 = !DILocation(line: 1557, column: 7, scope: !2264)
!2266 = !DILocation(line: 1559, column: 1, scope: !2127)
!2267 = distinct !DISubprogram(name: "GuestInfoGather", scope: !73, file: !73, line: 471, type: !324, isLocal: true, isDefinition: true, scopeLine: 472, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!2268 = !DILocalVariable(name: "data", arg: 1, scope: !2267, file: !73, line: 471, type: !326)
!2269 = !DILocation(line: 471, column: 26, scope: !2267)
!2270 = !DILocalVariable(name: "name", scope: !2267, file: !73, line: 473, type: !2271)
!2271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 2048, align: 8, elements: !2272)
!2272 = !{!2273}
!2273 = !DISubrange(count: 256)
!2274 = !DILocation(line: 473, column: 9, scope: !2267)
!2275 = !DILocalVariable(name: "osString", scope: !2267, file: !73, line: 475, type: !110)
!2276 = !DILocation(line: 475, column: 10, scope: !2267)
!2277 = !DILocalVariable(name: "disableQueryDiskInfo", scope: !2267, file: !73, line: 477, type: !318)
!2278 = !DILocation(line: 477, column: 13, scope: !2267)
!2279 = !DILocalVariable(name: "diskInfo", scope: !2267, file: !73, line: 478, type: !406)
!2280 = !DILocation(line: 478, column: 19, scope: !2267)
!2281 = !DILocalVariable(name: "nicInfo", scope: !2267, file: !73, line: 480, type: !112)
!2282 = !DILocation(line: 480, column: 15, scope: !2267)
!2283 = !DILocalVariable(name: "ctx", scope: !2267, file: !73, line: 481, type: !362)
!2284 = !DILocation(line: 481, column: 17, scope: !2267)
!2285 = !DILocation(line: 481, column: 23, scope: !2267)
!2286 = !DILocalVariable(name: "primaryChanged", scope: !2267, file: !73, line: 482, type: !311)
!2287 = !DILocation(line: 482, column: 9, scope: !2267)
!2288 = !DILocalVariable(name: "lowPriorityChanged", scope: !2267, file: !73, line: 483, type: !311)
!2289 = !DILocation(line: 483, column: 9, scope: !2267)
!2290 = !DILocalVariable(name: "maxIPv4RoutesToGather", scope: !2267, file: !73, line: 484, type: !195)
!2291 = !DILocation(line: 484, column: 8, scope: !2267)
!2292 = !DILocalVariable(name: "maxIPv6RoutesToGather", scope: !2267, file: !73, line: 485, type: !195)
!2293 = !DILocation(line: 485, column: 8, scope: !2267)
!2294 = !DILocation(line: 487, column: 4, scope: !2267)
!2295 = !DILocation(line: 489, column: 32, scope: !2267)
!2296 = !DILocation(line: 489, column: 4, scope: !2267)
!2297 = !DILocation(line: 492, column: 29, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2267, file: !73, line: 492, column: 8)
!2299 = !DILocation(line: 492, column: 9, scope: !2298)
!2300 = !DILocation(line: 492, column: 8, scope: !2267)
!2301 = !DILocation(line: 498, column: 7, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2298, file: !73, line: 492, column: 74)
!2303 = !DILocation(line: 499, column: 4, scope: !2302)
!2304 = !DILocation(line: 502, column: 15, scope: !2267)
!2305 = !DILocation(line: 502, column: 13, scope: !2267)
!2306 = !DILocation(line: 503, column: 8, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2267, file: !73, line: 503, column: 8)
!2308 = !DILocation(line: 503, column: 17, scope: !2307)
!2309 = !DILocation(line: 503, column: 8, scope: !2267)
!2310 = !DILocation(line: 504, column: 7, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2307, file: !73, line: 503, column: 25)
!2312 = !DILocation(line: 505, column: 4, scope: !2311)
!2313 = !DILocation(line: 506, column: 32, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !73, line: 506, column: 11)
!2315 = distinct !DILexicalBlock(scope: !2307, file: !73, line: 505, column: 11)
!2316 = !DILocation(line: 506, column: 56, scope: !2314)
!2317 = !DILocation(line: 506, column: 12, scope: !2314)
!2318 = !DILocation(line: 506, column: 11, scope: !2315)
!2319 = !DILocation(line: 507, column: 10, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2314, file: !73, line: 506, column: 70)
!2321 = !DILocation(line: 508, column: 7, scope: !2320)
!2322 = !DILocation(line: 510, column: 9, scope: !2267)
!2323 = !DILocation(line: 510, column: 4, scope: !2267)
!2324 = !DILocation(line: 512, column: 15, scope: !2267)
!2325 = !DILocation(line: 512, column: 13, scope: !2267)
!2326 = !DILocation(line: 513, column: 8, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2267, file: !73, line: 513, column: 8)
!2328 = !DILocation(line: 513, column: 17, scope: !2327)
!2329 = !DILocation(line: 513, column: 8, scope: !2267)
!2330 = !DILocation(line: 514, column: 7, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2327, file: !73, line: 513, column: 25)
!2332 = !DILocation(line: 515, column: 4, scope: !2331)
!2333 = !DILocation(line: 516, column: 32, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !73, line: 516, column: 11)
!2335 = distinct !DILexicalBlock(scope: !2327, file: !73, line: 515, column: 11)
!2336 = !DILocation(line: 516, column: 51, scope: !2334)
!2337 = !DILocation(line: 516, column: 12, scope: !2334)
!2338 = !DILocation(line: 516, column: 11, scope: !2335)
!2339 = !DILocation(line: 517, column: 10, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2334, file: !73, line: 516, column: 65)
!2341 = !DILocation(line: 518, column: 7, scope: !2340)
!2342 = !DILocation(line: 520, column: 9, scope: !2267)
!2343 = !DILocation(line: 520, column: 4, scope: !2267)
!2344 = !DILocation(line: 524, column: 30, scope: !2267)
!2345 = !DILocation(line: 524, column: 35, scope: !2267)
!2346 = !DILocation(line: 524, column: 7, scope: !2267)
!2347 = !DILocation(line: 523, column: 25, scope: !2267)
!2348 = !DILocation(line: 526, column: 9, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2267, file: !73, line: 526, column: 8)
!2350 = !DILocation(line: 526, column: 8, scope: !2267)
!2351 = !DILocation(line: 527, column: 45, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !73, line: 527, column: 11)
!2353 = distinct !DILexicalBlock(scope: !2349, file: !73, line: 526, column: 31)
!2354 = !DILocation(line: 527, column: 23, scope: !2352)
!2355 = !DILocation(line: 527, column: 21, scope: !2352)
!2356 = !DILocation(line: 527, column: 51, scope: !2352)
!2357 = !DILocation(line: 527, column: 11, scope: !2353)
!2358 = !DILocation(line: 528, column: 10, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2352, file: !73, line: 527, column: 59)
!2360 = !DILocation(line: 529, column: 7, scope: !2359)
!2361 = !DILocation(line: 530, column: 34, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !73, line: 530, column: 14)
!2363 = distinct !DILexicalBlock(scope: !2352, file: !73, line: 529, column: 14)
!2364 = !DILocation(line: 530, column: 61, scope: !2362)
!2365 = !DILocation(line: 530, column: 14, scope: !2362)
!2366 = !DILocation(line: 530, column: 14, scope: !2363)
!2367 = !DILocation(line: 531, column: 47, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2362, file: !73, line: 530, column: 75)
!2369 = !DILocation(line: 531, column: 13, scope: !2368)
!2370 = !DILocation(line: 532, column: 35, scope: !2368)
!2371 = !DILocation(line: 532, column: 33, scope: !2368)
!2372 = !DILocation(line: 533, column: 10, scope: !2368)
!2373 = !DILocation(line: 534, column: 13, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2362, file: !73, line: 533, column: 17)
!2375 = !DILocation(line: 535, column: 36, scope: !2374)
!2376 = !DILocation(line: 535, column: 13, scope: !2374)
!2377 = !DILocation(line: 538, column: 4, scope: !2353)
!2378 = !DILocation(line: 541, column: 41, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2267, file: !73, line: 541, column: 8)
!2380 = !DILocation(line: 541, column: 9, scope: !2379)
!2381 = !DILocation(line: 541, column: 8, scope: !2267)
!2382 = !DILocation(line: 542, column: 7, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2379, file: !73, line: 541, column: 48)
!2384 = !DILocation(line: 543, column: 4, scope: !2383)
!2385 = !DILocation(line: 543, column: 36, scope: !2386)
!2386 = !DILexicalBlockFile(scope: !2387, file: !73, discriminator: 1)
!2387 = distinct !DILexicalBlock(scope: !2379, file: !73, line: 543, column: 15)
!2388 = !DILocation(line: 543, column: 56, scope: !2386)
!2389 = !DILocation(line: 543, column: 16, scope: !2386)
!2390 = !DILocation(line: 543, column: 15, scope: !2386)
!2391 = !DILocation(line: 544, column: 7, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2387, file: !73, line: 543, column: 66)
!2393 = !DILocation(line: 545, column: 4, scope: !2392)
!2394 = !DILocation(line: 549, column: 50, scope: !2267)
!2395 = !DILocation(line: 549, column: 21, scope: !2267)
!2396 = !DILocation(line: 549, column: 19, scope: !2267)
!2397 = !DILocation(line: 550, column: 58, scope: !2267)
!2398 = !DILocation(line: 550, column: 25, scope: !2267)
!2399 = !DILocation(line: 550, column: 23, scope: !2267)
!2400 = !DILocation(line: 551, column: 33, scope: !2267)
!2401 = !DILocation(line: 551, column: 4, scope: !2267)
!2402 = !DILocation(line: 557, column: 35, scope: !2267)
!2403 = !DILocation(line: 557, column: 40, scope: !2267)
!2404 = !DILocation(line: 557, column: 10, scope: !2267)
!2405 = !DILocation(line: 556, column: 26, scope: !2267)
!2406 = !DILocation(line: 561, column: 8, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2267, file: !73, line: 561, column: 8)
!2408 = !DILocation(line: 561, column: 30, scope: !2407)
!2409 = !DILocation(line: 561, column: 34, scope: !2407)
!2410 = !DILocation(line: 562, column: 8, scope: !2407)
!2411 = !DILocation(line: 562, column: 30, scope: !2407)
!2412 = !DILocation(line: 561, column: 8, scope: !2413)
!2413 = !DILexicalBlockFile(scope: !2267, file: !73, discriminator: 1)
!2414 = !DILocation(line: 563, column: 128, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2407, file: !73, line: 562, column: 37)
!2416 = !DILocation(line: 563, column: 7, scope: !2415)
!2417 = !DILocation(line: 568, column: 29, scope: !2415)
!2418 = !DILocation(line: 569, column: 4, scope: !2415)
!2419 = !DILocation(line: 572, column: 35, scope: !2267)
!2420 = !DILocation(line: 572, column: 40, scope: !2267)
!2421 = !DILocation(line: 572, column: 10, scope: !2267)
!2422 = !DILocation(line: 571, column: 26, scope: !2267)
!2423 = !DILocation(line: 576, column: 8, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2267, file: !73, line: 576, column: 8)
!2425 = !DILocation(line: 576, column: 30, scope: !2424)
!2426 = !DILocation(line: 576, column: 34, scope: !2424)
!2427 = !DILocation(line: 577, column: 8, scope: !2424)
!2428 = !DILocation(line: 577, column: 30, scope: !2424)
!2429 = !DILocation(line: 576, column: 8, scope: !2413)
!2430 = !DILocation(line: 578, column: 128, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2424, file: !73, line: 577, column: 37)
!2432 = !DILocation(line: 578, column: 7, scope: !2431)
!2433 = !DILocation(line: 583, column: 29, scope: !2431)
!2434 = !DILocation(line: 584, column: 4, scope: !2431)
!2435 = !DILocation(line: 586, column: 30, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2267, file: !73, line: 586, column: 8)
!2437 = !DILocation(line: 587, column: 30, scope: !2436)
!2438 = !DILocation(line: 586, column: 9, scope: !2436)
!2439 = !DILocation(line: 586, column: 8, scope: !2267)
!2440 = !DILocation(line: 589, column: 7, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2436, file: !73, line: 588, column: 41)
!2442 = !DILocation(line: 593, column: 17, scope: !2441)
!2443 = !DILocation(line: 593, column: 15, scope: !2441)
!2444 = !DILocation(line: 594, column: 4, scope: !2441)
!2445 = !DILocation(line: 602, column: 9, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2267, file: !73, line: 602, column: 8)
!2447 = !DILocation(line: 602, column: 24, scope: !2446)
!2448 = !DILocation(line: 602, column: 28, scope: !2449)
!2449 = !DILexicalBlockFile(scope: !2446, file: !73, discriminator: 1)
!2450 = !DILocation(line: 602, column: 47, scope: !2449)
!2451 = !DILocation(line: 603, column: 36, scope: !2446)
!2452 = !DILocation(line: 603, column: 56, scope: !2446)
!2453 = !DILocation(line: 603, column: 8, scope: !2446)
!2454 = !DILocation(line: 602, column: 8, scope: !2455)
!2455 = !DILexicalBlockFile(scope: !2267, file: !73, discriminator: 2)
!2456 = !DILocation(line: 604, column: 7, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2446, file: !73, line: 603, column: 66)
!2458 = !DILocation(line: 605, column: 29, scope: !2457)
!2459 = !DILocation(line: 605, column: 7, scope: !2457)
!2460 = !DILocation(line: 606, column: 4, scope: !2457)
!2461 = !DILocation(line: 606, column: 35, scope: !2462)
!2462 = !DILexicalBlockFile(scope: !2463, file: !73, discriminator: 1)
!2463 = distinct !DILexicalBlock(scope: !2446, file: !73, line: 606, column: 15)
!2464 = !DILocation(line: 606, column: 56, scope: !2462)
!2465 = !DILocation(line: 606, column: 15, scope: !2462)
!2466 = !DILocation(line: 611, column: 40, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2463, file: !73, line: 606, column: 69)
!2468 = !DILocation(line: 611, column: 7, scope: !2467)
!2469 = !DILocation(line: 612, column: 28, scope: !2467)
!2470 = !DILocation(line: 612, column: 26, scope: !2467)
!2471 = !DILocation(line: 613, column: 4, scope: !2467)
!2472 = !DILocation(line: 614, column: 7, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2463, file: !73, line: 613, column: 11)
!2474 = !DILocation(line: 615, column: 29, scope: !2473)
!2475 = !DILocation(line: 615, column: 7, scope: !2473)
!2476 = !DILocation(line: 619, column: 15, scope: !2267)
!2477 = !DILocation(line: 619, column: 4, scope: !2267)
!2478 = !DILocation(line: 621, column: 4, scope: !2267)
!2479 = distinct !DISubprogram(name: "GuestInfoCheckIfRunningSlow", scope: !73, file: !73, line: 285, type: !2110, isLocal: true, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!2480 = !DILocalVariable(name: "ctx", arg: 1, scope: !2479, file: !73, line: 285, type: !362)
!2481 = !DILocation(line: 285, column: 42, scope: !2479)
!2482 = !DILocalVariable(name: "now", scope: !2479, file: !73, line: 287, type: !334)
!2483 = !DILocation(line: 287, column: 11, scope: !2479)
!2484 = !DILocation(line: 287, column: 17, scope: !2479)
!2485 = !DILocation(line: 289, column: 8, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2479, file: !73, line: 289, column: 8)
!2487 = !DILocation(line: 289, column: 33, scope: !2486)
!2488 = !DILocation(line: 289, column: 8, scope: !2479)
!2489 = !DILocalVariable(name: "delta", scope: !2490, file: !73, line: 290, type: !334)
!2490 = distinct !DILexicalBlock(scope: !2486, file: !73, line: 289, column: 39)
!2491 = !DILocation(line: 290, column: 14, scope: !2490)
!2492 = !DILocation(line: 290, column: 22, scope: !2490)
!2493 = !DILocation(line: 290, column: 28, scope: !2490)
!2494 = !DILocation(line: 290, column: 26, scope: !2490)
!2495 = !DILocation(line: 295, column: 18, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2490, file: !73, line: 295, column: 11)
!2497 = !DILocation(line: 295, column: 12, scope: !2496)
!2498 = !DILocation(line: 295, column: 24, scope: !2496)
!2499 = !DILocation(line: 295, column: 40, scope: !2496)
!2500 = !DILocation(line: 295, column: 38, scope: !2496)
!2501 = !DILocation(line: 295, column: 32, scope: !2496)
!2502 = !DILocation(line: 295, column: 11, scope: !2490)
!2503 = !DILocalVariable(name: "msg", scope: !2504, file: !73, line: 296, type: !354)
!2504 = distinct !DILexicalBlock(scope: !2496, file: !73, line: 295, column: 64)
!2505 = !DILocation(line: 296, column: 17, scope: !2504)
!2506 = !DILocalVariable(name: "rpcMsg", scope: !2504, file: !73, line: 296, type: !354)
!2507 = !DILocation(line: 296, column: 23, scope: !2504)
!2508 = !DILocation(line: 301, column: 26, scope: !2504)
!2509 = !DILocation(line: 301, column: 20, scope: !2504)
!2510 = !DILocation(line: 301, column: 33, scope: !2504)
!2511 = !DILocation(line: 301, column: 55, scope: !2504)
!2512 = !DILocation(line: 298, column: 16, scope: !2504)
!2513 = !DILocation(line: 298, column: 14, scope: !2504)
!2514 = !DILocation(line: 303, column: 45, scope: !2504)
!2515 = !DILocation(line: 303, column: 19, scope: !2504)
!2516 = !DILocation(line: 303, column: 17, scope: !2504)
!2517 = !DILocation(line: 305, column: 31, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2504, file: !73, line: 305, column: 14)
!2519 = !DILocation(line: 305, column: 36, scope: !2518)
!2520 = !DILocation(line: 305, column: 41, scope: !2518)
!2521 = !DILocation(line: 305, column: 56, scope: !2518)
!2522 = !DILocation(line: 305, column: 49, scope: !2518)
!2523 = !DILocation(line: 305, column: 64, scope: !2518)
!2524 = !DILocation(line: 305, column: 15, scope: !2525)
!2525 = !DILexicalBlockFile(scope: !2518, file: !73, discriminator: 1)
!2526 = !DILocation(line: 305, column: 15, scope: !2518)
!2527 = !DILocation(line: 305, column: 14, scope: !2504)
!2528 = !DILocation(line: 307, column: 13, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2518, file: !73, line: 306, column: 43)
!2530 = !DILocation(line: 308, column: 10, scope: !2529)
!2531 = !DILocation(line: 310, column: 57, scope: !2504)
!2532 = !DILocation(line: 310, column: 10, scope: !2504)
!2533 = !DILocation(line: 312, column: 17, scope: !2504)
!2534 = !DILocation(line: 312, column: 10, scope: !2504)
!2535 = !DILocation(line: 313, column: 17, scope: !2504)
!2536 = !DILocation(line: 313, column: 10, scope: !2504)
!2537 = !DILocation(line: 314, column: 7, scope: !2504)
!2538 = !DILocation(line: 315, column: 4, scope: !2490)
!2539 = !DILocation(line: 317, column: 31, scope: !2479)
!2540 = !DILocation(line: 317, column: 29, scope: !2479)
!2541 = !DILocation(line: 318, column: 1, scope: !2479)
!2542 = !DILocalVariable(name: "ctx", arg: 1, scope: !504, file: !73, line: 380, type: !362)
!2543 = !DILocation(line: 380, column: 43, scope: !504)
!2544 = !DILocalVariable(name: "list", scope: !504, file: !73, line: 383, type: !2545)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!2546 = !DILocation(line: 383, column: 12, scope: !504)
!2547 = !DILocation(line: 385, column: 31, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !504, file: !73, line: 385, column: 8)
!2549 = !DILocation(line: 385, column: 8, scope: !2548)
!2550 = !DILocation(line: 385, column: 8, scope: !504)
!2551 = !DILocation(line: 388, column: 37, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2548, file: !73, line: 387, column: 38)
!2553 = !DILocation(line: 388, column: 7, scope: !2552)
!2554 = !DILocation(line: 389, column: 18, scope: !2552)
!2555 = !DILocation(line: 389, column: 7, scope: !2552)
!2556 = !DILocation(line: 390, column: 7, scope: !2552)
!2557 = !DILocation(line: 392, column: 4, scope: !504)
!2558 = !DILocation(line: 393, column: 1, scope: !504)
!2559 = !DILocalVariable(name: "ctx", arg: 1, scope: !508, file: !73, line: 410, type: !362)
!2560 = !DILocation(line: 410, column: 47, scope: !508)
!2561 = !DILocalVariable(name: "list", scope: !508, file: !73, line: 413, type: !2545)
!2562 = !DILocation(line: 413, column: 12, scope: !508)
!2563 = !DILocation(line: 415, column: 31, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !508, file: !73, line: 415, column: 8)
!2565 = !DILocation(line: 415, column: 8, scope: !2564)
!2566 = !DILocation(line: 415, column: 8, scope: !508)
!2567 = !DILocation(line: 418, column: 41, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2564, file: !73, line: 417, column: 38)
!2569 = !DILocation(line: 418, column: 7, scope: !2568)
!2570 = !DILocation(line: 419, column: 18, scope: !2568)
!2571 = !DILocation(line: 419, column: 7, scope: !2568)
!2572 = !DILocation(line: 420, column: 7, scope: !2568)
!2573 = !DILocation(line: 422, column: 4, scope: !508)
!2574 = !DILocation(line: 423, column: 1, scope: !508)
!2575 = !DILocalVariable(name: "ctx", arg: 1, scope: !510, file: !73, line: 440, type: !362)
!2576 = !DILocation(line: 440, column: 43, scope: !510)
!2577 = !DILocalVariable(name: "list", scope: !510, file: !73, line: 443, type: !2545)
!2578 = !DILocation(line: 443, column: 12, scope: !510)
!2579 = !DILocation(line: 445, column: 31, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !510, file: !73, line: 445, column: 8)
!2581 = !DILocation(line: 445, column: 8, scope: !2580)
!2582 = !DILocation(line: 445, column: 8, scope: !510)
!2583 = !DILocation(line: 449, column: 37, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2580, file: !73, line: 448, column: 38)
!2585 = !DILocation(line: 449, column: 7, scope: !2584)
!2586 = !DILocation(line: 450, column: 18, scope: !2584)
!2587 = !DILocation(line: 450, column: 7, scope: !2584)
!2588 = !DILocation(line: 451, column: 7, scope: !2584)
!2589 = !DILocation(line: 453, column: 4, scope: !510)
!2590 = !DILocation(line: 454, column: 1, scope: !510)
!2591 = distinct !DISubprogram(name: "GuestInfoSetConfigList", scope: !73, file: !73, line: 340, type: !2592, isLocal: true, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!311, !362, !2545, !369, !369, !2594}
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64, align: 64)
!2595 = !DILocalVariable(name: "ctx", arg: 1, scope: !2591, file: !73, line: 340, type: !362)
!2596 = !DILocation(line: 340, column: 37, scope: !2591)
!2597 = !DILocalVariable(name: "pCachedValue", arg: 2, scope: !2591, file: !73, line: 341, type: !2545)
!2598 = !DILocation(line: 341, column: 32, scope: !2591)
!2599 = !DILocalVariable(name: "configName", arg: 3, scope: !2591, file: !73, line: 342, type: !369)
!2600 = !DILocation(line: 342, column: 37, scope: !2591)
!2601 = !DILocalVariable(name: "defaultValue", arg: 4, scope: !2591, file: !73, line: 343, type: !369)
!2602 = !DILocation(line: 343, column: 37, scope: !2591)
!2603 = !DILocalVariable(name: "pList", arg: 5, scope: !2591, file: !73, line: 344, type: !2594)
!2604 = !DILocation(line: 344, column: 33, scope: !2591)
!2605 = !DILocalVariable(name: "listString", scope: !2591, file: !73, line: 346, type: !354)
!2606 = !DILocation(line: 346, column: 11, scope: !2591)
!2607 = !DILocation(line: 346, column: 48, scope: !2591)
!2608 = !DILocation(line: 346, column: 53, scope: !2591)
!2609 = !DILocation(line: 348, column: 48, scope: !2591)
!2610 = !DILocation(line: 348, column: 60, scope: !2591)
!2611 = !DILocation(line: 346, column: 24, scope: !2591)
!2612 = !DILocation(line: 349, column: 18, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2591, file: !73, line: 349, column: 8)
!2614 = !DILocation(line: 349, column: 31, scope: !2613)
!2615 = !DILocation(line: 349, column: 30, scope: !2613)
!2616 = !DILocation(line: 349, column: 8, scope: !2613)
!2617 = !DILocation(line: 349, column: 45, scope: !2613)
!2618 = !DILocation(line: 349, column: 8, scope: !2591)
!2619 = !DILocalVariable(name: "list", scope: !2620, file: !73, line: 350, type: !2545)
!2620 = distinct !DILexicalBlock(scope: !2613, file: !73, line: 349, column: 51)
!2621 = !DILocation(line: 350, column: 15, scope: !2620)
!2622 = !DILocation(line: 351, column: 11, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2620, file: !73, line: 351, column: 11)
!2624 = !DILocation(line: 351, column: 22, scope: !2623)
!2625 = !DILocation(line: 351, column: 29, scope: !2623)
!2626 = !DILocation(line: 351, column: 32, scope: !2627)
!2627 = !DILexicalBlockFile(scope: !2623, file: !73, discriminator: 1)
!2628 = !DILocation(line: 351, column: 46, scope: !2627)
!2629 = !DILocation(line: 351, column: 11, scope: !2627)
!2630 = !DILocation(line: 352, column: 28, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2623, file: !73, line: 351, column: 55)
!2632 = !DILocation(line: 352, column: 17, scope: !2631)
!2633 = !DILocation(line: 352, column: 15, scope: !2631)
!2634 = !DILocation(line: 353, column: 7, scope: !2631)
!2635 = !DILocation(line: 354, column: 15, scope: !2620)
!2636 = !DILocation(line: 354, column: 14, scope: !2620)
!2637 = !DILocation(line: 354, column: 7, scope: !2620)
!2638 = !DILocation(line: 355, column: 23, scope: !2620)
!2639 = !DILocation(line: 355, column: 8, scope: !2620)
!2640 = !DILocation(line: 355, column: 21, scope: !2620)
!2641 = !DILocation(line: 356, column: 16, scope: !2620)
!2642 = !DILocation(line: 356, column: 8, scope: !2620)
!2643 = !DILocation(line: 356, column: 14, scope: !2620)
!2644 = !DILocation(line: 358, column: 7, scope: !2620)
!2645 = !DILocation(line: 360, column: 14, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2613, file: !73, line: 359, column: 11)
!2647 = !DILocation(line: 360, column: 7, scope: !2646)
!2648 = !DILocation(line: 362, column: 4, scope: !2591)
!2649 = !DILocation(line: 363, column: 1, scope: !2591)
