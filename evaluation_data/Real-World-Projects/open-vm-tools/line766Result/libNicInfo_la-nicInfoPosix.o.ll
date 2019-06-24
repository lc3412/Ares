; ModuleID = './libNicInfo_la-nicInfoPosix.o.i'
source_filename = "./libNicInfo_la-nicInfoPosix.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.ifaddrs = type { %struct.ifaddrs*, i8*, i32, %struct.sockaddr*, %struct.sockaddr*, %union.anon, i8* }
%struct.sockaddr = type { i16, [14 x i8] }
%union.anon = type { %struct.sockaddr* }
%struct.sockaddr_ll = type { i16, i16, i32, i16, i8, i8, [8 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.4 }
%union.anon.4 = type { [4 x i32] }
%struct.__res_state = type { i32, i32, i64, i32, [3 x %struct.sockaddr_in], i16, [7 x i8*], [256 x i8], i64, i32, [10 x %struct.anon.5], i32 (%struct.sockaddr_in**, i8**, i32*, i8*, i32, i32*)*, i32 (%struct.sockaddr_in*, i8*, i32, i8*, i32, i32*)*, i32, i32, i32, %union.anon.6 }
%struct.anon.5 = type { %struct.in_addr, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { i16, [3 x i16], [3 x i32], i16, i16, [3 x %struct.sockaddr_in6*], [2 x i32] }
%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct._GPtrArray = type { i8**, i32 }
%struct.rtentry = type { i64, %struct.sockaddr, %struct.sockaddr, %struct.sockaddr, i16, i16, i64, i8, i8, [3 x i16], i16, i8*, i64, i64, i16 }
%struct.in6_rtmsg = type { %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, i32, i16, i16, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Error, gethostname failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"%s: ifa_name=%s, pri=%d, currPri=%d, ipstr=%s\00", align 1
@__FUNCTION__.GuestInfoGetPrimaryIP = private unnamed_addr constant [22 x i8] c"GuestInfoGetPrimaryIP\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%02x:%02x:%02x:%02x:%02x:%02x\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"%s: dns search suffix limit (%d) reached, skipping overflow.\00", align 1
@__FUNCTION__.RecordResolverInfo = private unnamed_addr constant [19 x i8] c"RecordResolverInfo\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"MEM_ALLOC %s:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"nicInfoPosix.c\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"%s: dns server limit (%d) reached, skipping overflow.\00", align 1
@__FUNCTION__.RecordResolverNS = private unnamed_addr constant [17 x i8] c"RecordResolverNS\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"%s: Unable to collect IPv4 routing table.\0A\00", align 1
@__func__.RecordRoutingInfo = private unnamed_addr constant [18 x i8] c"RecordRoutingInfo\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"%s: Unable to collect IPv6 routing table.\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"%s: route limit (%d) reached, skipping overflow.\00", align 1
@__FUNCTION__.RecordRoutingInfoIPv4 = private unnamed_addr constant [22 x i8] c"RecordRoutingInfoIPv4\00", align 1
@__FUNCTION__.RecordRoutingInfoIPv6 = private unnamed_addr constant [22 x i8] c"RecordRoutingInfoIPv6\00", align 1

; Function Attrs: nounwind uwtable
define signext i8 @GuestInfoGetFqdn(i32, i8*) #0 !dbg !278 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !284, metadata !285), !dbg !286
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !287, metadata !285), !dbg !288
  %6 = load i8*, i8** %5, align 8, !dbg !289
  %7 = load i32, i32* %4, align 4, !dbg !291
  %8 = sext i32 %7 to i64, !dbg !291
  %9 = call i32 @gethostname(i8* %6, i64 %8) #8, !dbg !292
  %10 = icmp slt i32 %9, 0, !dbg !293
  br i1 %10, label %11, label %12, !dbg !294

; <label>:11:                                     ; preds = %2
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0)), !dbg !295
  store i8 0, i8* %3, align 1, !dbg !297
  br label %13, !dbg !297

; <label>:12:                                     ; preds = %2
  store i8 1, i8* %3, align 1, !dbg !298
  br label %13, !dbg !298

; <label>:13:                                     ; preds = %12, %11
  %14 = load i8, i8* %3, align 1, !dbg !299
  ret i8 %14, !dbg !299
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @gethostname(i8*, i64) #2

declare void @g_log(i8*, i32, i8*, ...) #3

; Function Attrs: nounwind uwtable
define signext i8 @GuestInfoGetNicInfo(i32, i32, %struct.NicInfoV3*) #0 !dbg !300 {
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.NicInfoV3*, align 8
  %8 = alloca %struct.ifaddrs*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !375, metadata !285), !dbg !376
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !377, metadata !285), !dbg !378
  store %struct.NicInfoV3* %2, %struct.NicInfoV3** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.NicInfoV3** %7, metadata !379, metadata !285), !dbg !380
  call void @llvm.dbg.declare(metadata %struct.ifaddrs** %8, metadata !381, metadata !285), !dbg !397
  store %struct.ifaddrs* null, %struct.ifaddrs** %8, align 8, !dbg !397
  %10 = call i32 @getifaddrs(%struct.ifaddrs** %8) #8, !dbg !398
  %11 = icmp eq i32 %10, 0, !dbg !400
  br i1 %11, label %12, label %28, !dbg !401

; <label>:12:                                     ; preds = %3
  %13 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8, !dbg !402
  %14 = icmp ne %struct.ifaddrs* %13, null, !dbg !404
  br i1 %14, label %15, label %28, !dbg !405

; <label>:15:                                     ; preds = %12
  call void @llvm.dbg.declare(metadata i32* %9, metadata !406, metadata !285), !dbg !409
  store i32 0, i32* %9, align 4, !dbg !410
  br label %16, !dbg !412

; <label>:16:                                     ; preds = %23, %15
  %17 = load i32, i32* %9, align 4, !dbg !413
  %18 = icmp ult i32 %17, 3, !dbg !415
  br i1 %18, label %19, label %26, !dbg !416

; <label>:19:                                     ; preds = %16
  %20 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8, !dbg !418
  %21 = load i32, i32* %9, align 4, !dbg !420
  %22 = load %struct.NicInfoV3*, %struct.NicInfoV3** %7, align 8, !dbg !421
  call void @GuestInfoGetInterface(%struct.ifaddrs* %20, i32 %21, %struct.NicInfoV3* %22), !dbg !422
  br label %23, !dbg !423

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %9, align 4, !dbg !424
  %25 = add i32 %24, 1, !dbg !424
  store i32 %25, i32* %9, align 4, !dbg !424
  br label %16, !dbg !425, !llvm.loop !427

; <label>:26:                                     ; preds = %16
  %27 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8, !dbg !429
  call void @freeifaddrs(%struct.ifaddrs* %27) #8, !dbg !430
  br label %28, !dbg !431

; <label>:28:                                     ; preds = %26, %12, %3
  %29 = load %struct.NicInfoV3*, %struct.NicInfoV3** %7, align 8, !dbg !432
  %30 = call signext i8 @RecordResolverInfo(%struct.NicInfoV3* %29), !dbg !434
  %31 = icmp ne i8 %30, 0, !dbg !434
  br i1 %31, label %33, label %32, !dbg !435

; <label>:32:                                     ; preds = %28
  store i8 0, i8* %4, align 1, !dbg !436
  br label %47, !dbg !436

; <label>:33:                                     ; preds = %28
  %34 = load i32, i32* %5, align 4, !dbg !438
  %35 = icmp ugt i32 %34, 0, !dbg !440
  br i1 %35, label %39, label %36, !dbg !441

; <label>:36:                                     ; preds = %33
  %37 = load i32, i32* %6, align 4, !dbg !442
  %38 = icmp ugt i32 %37, 0, !dbg !444
  br i1 %38, label %39, label %46, !dbg !445

; <label>:39:                                     ; preds = %36, %33
  %40 = load i32, i32* %5, align 4, !dbg !446
  %41 = load i32, i32* %6, align 4, !dbg !447
  %42 = load %struct.NicInfoV3*, %struct.NicInfoV3** %7, align 8, !dbg !448
  %43 = call signext i8 @RecordRoutingInfo(i32 %40, i32 %41, %struct.NicInfoV3* %42), !dbg !449
  %44 = icmp ne i8 %43, 0, !dbg !449
  br i1 %44, label %46, label %45, !dbg !450

; <label>:45:                                     ; preds = %39
  store i8 0, i8* %4, align 1, !dbg !452
  br label %47, !dbg !452

; <label>:46:                                     ; preds = %39, %36
  store i8 1, i8* %4, align 1, !dbg !454
  br label %47, !dbg !454

; <label>:47:                                     ; preds = %46, %45, %32
  %48 = load i8, i8* %4, align 1, !dbg !455
  ret i8 %48, !dbg !455
}

; Function Attrs: nounwind
declare i32 @getifaddrs(%struct.ifaddrs**) #2

; Function Attrs: nounwind uwtable
define internal void @GuestInfoGetInterface(%struct.ifaddrs*, i32, %struct.NicInfoV3*) #0 !dbg !456 {
  %4 = alloca %struct.ifaddrs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.NicInfoV3*, align 8
  %7 = alloca %struct.ifaddrs*, align 8
  %8 = alloca %struct.GuestNicV3*, align 8
  %9 = alloca %struct.ifaddrs*, align 8
  %10 = alloca %struct.sockaddr_ll*, align 8
  %11 = alloca [18 x i8], align 16
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca %struct.sockaddr_in*, align 8
  %17 = alloca %struct.sockaddr_in6*, align 8
  %18 = alloca %struct.in6_addr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.IpAddressEntry*, align 8
  store %struct.ifaddrs* %0, %struct.ifaddrs** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.ifaddrs** %4, metadata !459, metadata !285), !dbg !460
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !461, metadata !285), !dbg !462
  store %struct.NicInfoV3* %2, %struct.NicInfoV3** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.NicInfoV3** %6, metadata !463, metadata !285), !dbg !464
  call void @llvm.dbg.declare(metadata %struct.ifaddrs** %7, metadata !465, metadata !285), !dbg !466
  %21 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8, !dbg !467
  store %struct.ifaddrs* %21, %struct.ifaddrs** %7, align 8, !dbg !469
  br label %22, !dbg !470

; <label>:22:                                     ; preds = %205, %3
  %23 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8, !dbg !471
  %24 = icmp ne %struct.ifaddrs* %23, null, !dbg !474
  br i1 %24, label %25, label %209, !dbg !475

; <label>:25:                                     ; preds = %22
  call void @llvm.dbg.declare(metadata %struct.GuestNicV3** %8, metadata !476, metadata !285), !dbg !478
  call void @llvm.dbg.declare(metadata %struct.ifaddrs** %9, metadata !479, metadata !285), !dbg !480
  call void @llvm.dbg.declare(metadata %struct.sockaddr_ll** %10, metadata !481, metadata !285), !dbg !482
  %26 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8, !dbg !483
  %27 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %26, i32 0, i32 3, !dbg !484
  %28 = load %struct.sockaddr*, %struct.sockaddr** %27, align 8, !dbg !484
  %29 = bitcast %struct.sockaddr* %28 to %struct.sockaddr_ll*, !dbg !485
  store %struct.sockaddr_ll* %29, %struct.sockaddr_ll** %10, align 8, !dbg !482
  %30 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8, !dbg !486
  %31 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %30, i32 0, i32 1, !dbg !488
  %32 = load i8*, i8** %31, align 8, !dbg !488
  %33 = call i32 @GuestInfo_IfaceGetPriority(i8* %32), !dbg !489
  %34 = load i32, i32* %5, align 4, !dbg !490
  %35 = icmp ne i32 %33, %34, !dbg !491
  br i1 %35, label %43, label %36, !dbg !492

; <label>:36:                                     ; preds = %25
  %37 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8, !dbg !493
  %38 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %37, i32 0, i32 1, !dbg !494
  %39 = load i8*, i8** %38, align 8, !dbg !494
  %40 = call signext i8 @GuestInfo_IfaceIsExcluded(i8* %39), !dbg !495
  %41 = sext i8 %40 to i32, !dbg !495
  %42 = icmp ne i32 %41, 0, !dbg !495
  br i1 %42, label %43, label %44, !dbg !496

; <label>:43:                                     ; preds = %36, %25
  br label %205, !dbg !498

; <label>:44:                                     ; preds = %36
  %45 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %10, align 8, !dbg !500
  %46 = icmp ne %struct.sockaddr_ll* %45, null, !dbg !502
  br i1 %46, label %47, label %204, !dbg !503

; <label>:47:                                     ; preds = %44
  %48 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %10, align 8, !dbg !504
  %49 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %48, i32 0, i32 0, !dbg !506
  %50 = load i16, i16* %49, align 4, !dbg !506
  %51 = zext i16 %50 to i32, !dbg !504
  %52 = icmp eq i32 %51, 17, !dbg !507
  br i1 %52, label %53, label %204, !dbg !508

; <label>:53:                                     ; preds = %47
  call void @llvm.dbg.declare(metadata [18 x i8]* %11, metadata !509, metadata !285), !dbg !514
  %54 = getelementptr inbounds [18 x i8], [18 x i8]* %11, i32 0, i32 0, !dbg !515
  %55 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %10, align 8, !dbg !516
  %56 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %55, i32 0, i32 6, !dbg !517
  %57 = getelementptr inbounds [8 x i8], [8 x i8]* %56, i64 0, i64 0, !dbg !516
  %58 = load i8, i8* %57, align 4, !dbg !516
  %59 = zext i8 %58 to i32, !dbg !516
  %60 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %10, align 8, !dbg !518
  %61 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %60, i32 0, i32 6, !dbg !519
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %61, i64 0, i64 1, !dbg !518
  %63 = load i8, i8* %62, align 1, !dbg !518
  %64 = zext i8 %63 to i32, !dbg !518
  %65 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %10, align 8, !dbg !520
  %66 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %65, i32 0, i32 6, !dbg !521
  %67 = getelementptr inbounds [8 x i8], [8 x i8]* %66, i64 0, i64 2, !dbg !520
  %68 = load i8, i8* %67, align 2, !dbg !520
  %69 = zext i8 %68 to i32, !dbg !520
  %70 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %10, align 8, !dbg !522
  %71 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %70, i32 0, i32 6, !dbg !523
  %72 = getelementptr inbounds [8 x i8], [8 x i8]* %71, i64 0, i64 3, !dbg !522
  %73 = load i8, i8* %72, align 1, !dbg !522
  %74 = zext i8 %73 to i32, !dbg !522
  %75 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %10, align 8, !dbg !524
  %76 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %75, i32 0, i32 6, !dbg !525
  %77 = getelementptr inbounds [8 x i8], [8 x i8]* %76, i64 0, i64 4, !dbg !524
  %78 = load i8, i8* %77, align 4, !dbg !524
  %79 = zext i8 %78 to i32, !dbg !524
  %80 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %10, align 8, !dbg !526
  %81 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %80, i32 0, i32 6, !dbg !527
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %81, i64 0, i64 5, !dbg !526
  %83 = load i8, i8* %82, align 1, !dbg !526
  %84 = zext i8 %83 to i32, !dbg !526
  %85 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* %54, i64 18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i32 %59, i32 %64, i32 %69, i32 %74, i32 %79, i32 %84), !dbg !528
  %86 = load %struct.NicInfoV3*, %struct.NicInfoV3** %6, align 8, !dbg !529
  %87 = getelementptr inbounds [18 x i8], [18 x i8]* %11, i32 0, i32 0, !dbg !530
  %88 = call %struct.GuestNicV3* @GuestInfoAddNicEntry(%struct.NicInfoV3* %86, i8* %87, %struct.DnsConfigInfo* null, %struct.WinsConfigInfo* null), !dbg !531
  store %struct.GuestNicV3* %88, %struct.GuestNicV3** %8, align 8, !dbg !532
  %89 = load %struct.GuestNicV3*, %struct.GuestNicV3** %8, align 8, !dbg !533
  %90 = icmp eq %struct.GuestNicV3* %89, null, !dbg !535
  br i1 %90, label %91, label %92, !dbg !536

; <label>:91:                                     ; preds = %53
  br label %209, !dbg !537

; <label>:92:                                     ; preds = %53
  %93 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8, !dbg !539
  store %struct.ifaddrs* %93, %struct.ifaddrs** %9, align 8, !dbg !541
  br label %94, !dbg !542

; <label>:94:                                     ; preds = %199, %92
  %95 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8, !dbg !543
  %96 = icmp ne %struct.ifaddrs* %95, null, !dbg !546
  br i1 %96, label %97, label %203, !dbg !547

; <label>:97:                                     ; preds = %94
  call void @llvm.dbg.declare(metadata %struct.sockaddr** %12, metadata !548, metadata !285), !dbg !550
  %98 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8, !dbg !551
  %99 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %98, i32 0, i32 3, !dbg !552
  %100 = load %struct.sockaddr*, %struct.sockaddr** %99, align 8, !dbg !552
  store %struct.sockaddr* %100, %struct.sockaddr** %12, align 8, !dbg !550
  %101 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8, !dbg !553
  %102 = icmp ne %struct.sockaddr* %101, null, !dbg !555
  br i1 %102, label %103, label %198, !dbg !556

; <label>:103:                                    ; preds = %97
  %104 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8, !dbg !557
  %105 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %104, i32 0, i32 1, !dbg !558
  %106 = load i8*, i8** %105, align 8, !dbg !558
  %107 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8, !dbg !559
  %108 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %107, i32 0, i32 1, !dbg !560
  %109 = load i8*, i8** %108, align 8, !dbg !560
  %110 = call i32 @strncmp(i8* %106, i8* %109, i64 16) #9, !dbg !561
  %111 = icmp eq i32 %110, 0, !dbg !562
  br i1 %111, label %112, label %198, !dbg !563

; <label>:112:                                    ; preds = %103
  call void @llvm.dbg.declare(metadata i32* %13, metadata !565, metadata !285), !dbg !567
  %113 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8, !dbg !568
  %114 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %113, i32 0, i32 0, !dbg !569
  %115 = load i16, i16* %114, align 2, !dbg !569
  %116 = zext i16 %115 to i32, !dbg !568
  store i32 %116, i32* %13, align 4, !dbg !567
  call void @llvm.dbg.declare(metadata i8* %14, metadata !570, metadata !285), !dbg !571
  store i8 0, i8* %14, align 1, !dbg !571
  call void @llvm.dbg.declare(metadata i32* %15, metadata !572, metadata !285), !dbg !573
  store i32 0, i32* %15, align 4, !dbg !573
  %117 = load i32, i32* %13, align 4, !dbg !574
  %118 = icmp eq i32 %117, 2, !dbg !576
  br i1 %118, label %119, label %135, !dbg !577

; <label>:119:                                    ; preds = %112
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in** %16, metadata !578, metadata !285), !dbg !580
  %120 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8, !dbg !581
  %121 = bitcast %struct.sockaddr* %120 to %struct.sockaddr_in*, !dbg !582
  store %struct.sockaddr_in* %121, %struct.sockaddr_in** %16, align 8, !dbg !580
  %122 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8, !dbg !583
  %123 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %122, i32 0, i32 2, !dbg !585
  %124 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %123, i32 0, i32 0, !dbg !586
  %125 = load i32, i32* %124, align 4, !dbg !586
  %126 = call i32 @ntohl(i32 %125) #1, !dbg !587
  %127 = lshr i32 %126, 24, !dbg !588
  %128 = icmp ne i32 %127, 127, !dbg !589
  br i1 %128, label %129, label %134, !dbg !590

; <label>:129:                                    ; preds = %119
  %130 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8, !dbg !591
  %131 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %130, i32 0, i32 4, !dbg !593
  %132 = load %struct.sockaddr*, %struct.sockaddr** %131, align 8, !dbg !593
  %133 = call i32 @CountNetmaskBitsV4(%struct.sockaddr* %132), !dbg !594
  store i32 %133, i32* %15, align 4, !dbg !595
  store i8 1, i8* %14, align 1, !dbg !596
  br label %134, !dbg !597

; <label>:134:                                    ; preds = %129, %119
  br label %183, !dbg !598

; <label>:135:                                    ; preds = %112
  %136 = load i32, i32* %13, align 4, !dbg !599
  %137 = icmp eq i32 %136, 10, !dbg !602
  br i1 %137, label %138, label %182, !dbg !599

; <label>:138:                                    ; preds = %135
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in6** %17, metadata !603, metadata !285), !dbg !605
  %139 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8, !dbg !606
  %140 = bitcast %struct.sockaddr* %139 to %struct.sockaddr_in6*, !dbg !607
  store %struct.sockaddr_in6* %140, %struct.sockaddr_in6** %17, align 8, !dbg !605
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %18, metadata !608, metadata !285), !dbg !611
  %141 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %17, align 8, !dbg !612
  %142 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %141, i32 0, i32 3, !dbg !613
  store %struct.in6_addr* %142, %struct.in6_addr** %18, align 8, !dbg !611
  %143 = load %struct.in6_addr*, %struct.in6_addr** %18, align 8, !dbg !614
  %144 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %143, i32 0, i32 0, !dbg !615
  %145 = bitcast %union.anon.4* %144 to [4 x i32]*, !dbg !616
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %145, i64 0, i64 0, !dbg !614
  %147 = load i32, i32* %146, align 4, !dbg !614
  %148 = icmp eq i32 %147, 0, !dbg !617
  br i1 %148, label %149, label %171, !dbg !618

; <label>:149:                                    ; preds = %138
  %150 = load %struct.in6_addr*, %struct.in6_addr** %18, align 8, !dbg !619
  %151 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %150, i32 0, i32 0, !dbg !621
  %152 = bitcast %union.anon.4* %151 to [4 x i32]*, !dbg !622
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %152, i64 0, i64 1, !dbg !619
  %154 = load i32, i32* %153, align 4, !dbg !619
  %155 = icmp eq i32 %154, 0, !dbg !623
  br i1 %155, label %156, label %171, !dbg !624

; <label>:156:                                    ; preds = %149
  %157 = load %struct.in6_addr*, %struct.in6_addr** %18, align 8, !dbg !625
  %158 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %157, i32 0, i32 0, !dbg !627
  %159 = bitcast %union.anon.4* %158 to [4 x i32]*, !dbg !628
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %159, i64 0, i64 2, !dbg !625
  %161 = load i32, i32* %160, align 4, !dbg !625
  %162 = icmp eq i32 %161, 0, !dbg !629
  br i1 %162, label %163, label %171, !dbg !630

; <label>:163:                                    ; preds = %156
  %164 = load %struct.in6_addr*, %struct.in6_addr** %18, align 8, !dbg !631
  %165 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %164, i32 0, i32 0, !dbg !633
  %166 = bitcast %union.anon.4* %165 to [4 x i32]*, !dbg !634
  %167 = getelementptr inbounds [4 x i32], [4 x i32]* %166, i64 0, i64 3, !dbg !631
  %168 = load i32, i32* %167, align 4, !dbg !631
  %169 = call i32 @htonl(i32 1) #1, !dbg !635
  %170 = icmp eq i32 %168, %169, !dbg !636
  br label %171

; <label>:171:                                    ; preds = %163, %156, %149, %138
  %172 = phi i1 [ false, %156 ], [ false, %149 ], [ false, %138 ], [ %170, %163 ]
  %173 = zext i1 %172 to i32, !dbg !637
  store i32 %173, i32* %19, align 4, !dbg !639
  %174 = load i32, i32* %19, align 4, !dbg !640
  %175 = icmp ne i32 %174, 0, !dbg !641
  br i1 %175, label %181, label %176, !dbg !642

; <label>:176:                                    ; preds = %171
  %177 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8, !dbg !643
  %178 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %177, i32 0, i32 4, !dbg !645
  %179 = load %struct.sockaddr*, %struct.sockaddr** %178, align 8, !dbg !645
  %180 = call i32 @CountNetmaskBitsV6(%struct.sockaddr* %179), !dbg !646
  store i32 %180, i32* %15, align 4, !dbg !647
  store i8 1, i8* %14, align 1, !dbg !648
  br label %181, !dbg !649

; <label>:181:                                    ; preds = %176, %171
  br label %182, !dbg !650

; <label>:182:                                    ; preds = %181, %135
  br label %183

; <label>:183:                                    ; preds = %182, %134
  %184 = load i8, i8* %14, align 1, !dbg !651
  %185 = icmp ne i8 %184, 0, !dbg !651
  br i1 %185, label %186, label %197, !dbg !653

; <label>:186:                                    ; preds = %183
  call void @llvm.dbg.declare(metadata %struct.IpAddressEntry** %20, metadata !654, metadata !285), !dbg !656
  %187 = load %struct.GuestNicV3*, %struct.GuestNicV3** %8, align 8, !dbg !657
  %188 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8, !dbg !658
  %189 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %188, i32 0, i32 3, !dbg !659
  %190 = load %struct.sockaddr*, %struct.sockaddr** %189, align 8, !dbg !659
  %191 = load i32, i32* %15, align 4, !dbg !660
  %192 = call %struct.IpAddressEntry* @GuestInfoAddIpAddress(%struct.GuestNicV3* %187, %struct.sockaddr* %190, i32 %191, i32* null, i32* null), !dbg !661
  store %struct.IpAddressEntry* %192, %struct.IpAddressEntry** %20, align 8, !dbg !656
  %193 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %20, align 8, !dbg !662
  %194 = icmp eq %struct.IpAddressEntry* null, %193, !dbg !664
  br i1 %194, label %195, label %196, !dbg !665

; <label>:195:                                    ; preds = %186
  br label %203, !dbg !666

; <label>:196:                                    ; preds = %186
  br label %197, !dbg !668

; <label>:197:                                    ; preds = %196, %183
  br label %198, !dbg !669

; <label>:198:                                    ; preds = %197, %103, %97
  br label %199, !dbg !670

; <label>:199:                                    ; preds = %198
  %200 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8, !dbg !671
  %201 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %200, i32 0, i32 0, !dbg !673
  %202 = load %struct.ifaddrs*, %struct.ifaddrs** %201, align 8, !dbg !673
  store %struct.ifaddrs* %202, %struct.ifaddrs** %9, align 8, !dbg !674
  br label %94, !dbg !675, !llvm.loop !676

; <label>:203:                                    ; preds = %195, %94
  br label %204, !dbg !678

; <label>:204:                                    ; preds = %203, %47, %44
  br label %205, !dbg !679

; <label>:205:                                    ; preds = %204, %43
  %206 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8, !dbg !680
  %207 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %206, i32 0, i32 0, !dbg !682
  %208 = load %struct.ifaddrs*, %struct.ifaddrs** %207, align 8, !dbg !682
  store %struct.ifaddrs* %208, %struct.ifaddrs** %7, align 8, !dbg !683
  br label %22, !dbg !684, !llvm.loop !685

; <label>:209:                                    ; preds = %91, %22
  ret void, !dbg !687
}

; Function Attrs: nounwind
declare void @freeifaddrs(%struct.ifaddrs*) #2

; Function Attrs: nounwind uwtable
define internal signext i8 @RecordResolverInfo(%struct.NicInfoV3*) #0 !dbg !688 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.NicInfoV3*, align 8
  %4 = alloca %struct.DnsConfigInfo*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  store %struct.NicInfoV3* %0, %struct.NicInfoV3** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.NicInfoV3** %3, metadata !691, metadata !285), !dbg !692
  call void @llvm.dbg.declare(metadata %struct.DnsConfigInfo** %4, metadata !693, metadata !285), !dbg !694
  store %struct.DnsConfigInfo* null, %struct.DnsConfigInfo** %4, align 8, !dbg !694
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !695, metadata !285), !dbg !699
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !700, metadata !285), !dbg !702
  %8 = call i32 @__res_init() #8, !dbg !703
  %9 = icmp eq i32 %8, -1, !dbg !705
  br i1 %9, label %10, label %11, !dbg !706

; <label>:10:                                     ; preds = %1
  store i8 0, i8* %2, align 1, !dbg !707
  br label %89, !dbg !707

; <label>:11:                                     ; preds = %1
  %12 = call i8* @UtilSafeCalloc0(i64 1, i64 48), !dbg !709
  %13 = bitcast i8* %12 to %struct.DnsConfigInfo*, !dbg !709
  store %struct.DnsConfigInfo* %13, %struct.DnsConfigInfo** %4, align 8, !dbg !710
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !711
  %15 = call signext i8 @GuestInfoGetFqdn(i32 256, i8* %14), !dbg !713
  %16 = icmp ne i8 %15, 0, !dbg !713
  br i1 %16, label %19, label %17, !dbg !714

; <label>:17:                                     ; preds = %11
  %18 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !715
  br label %84, !dbg !717

; <label>:19:                                     ; preds = %11
  %20 = call i8* @UtilSafeCalloc0(i64 1, i64 8), !dbg !718
  %21 = bitcast i8* %20 to i8**, !dbg !718
  %22 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %4, align 8, !dbg !719
  %23 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %22, i32 0, i32 0, !dbg !720
  store i8** %21, i8*** %23, align 8, !dbg !721
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !722
  %25 = call i8* @UtilSafeStrdup0(i8* %24), !dbg !723
  %26 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %4, align 8, !dbg !724
  %27 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %26, i32 0, i32 0, !dbg !725
  %28 = load i8**, i8*** %27, align 8, !dbg !725
  store i8* %25, i8** %28, align 8, !dbg !726
  %29 = call i8* @UtilSafeCalloc0(i64 1, i64 8), !dbg !727
  %30 = bitcast i8* %29 to i8**, !dbg !727
  %31 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %4, align 8, !dbg !728
  %32 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %31, i32 0, i32 1, !dbg !729
  store i8** %30, i8*** %32, align 8, !dbg !730
  %33 = call %struct.__res_state* @__res_state() #1, !dbg !731
  %34 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %33, i32 0, i32 7, !dbg !733
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %34, i32 0, i32 0, !dbg !734
  %36 = call i8* @UtilSafeStrdup0(i8* %35), !dbg !735
  %37 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %4, align 8, !dbg !736
  %38 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %37, i32 0, i32 1, !dbg !737
  %39 = load i8**, i8*** %38, align 8, !dbg !737
  store i8* %36, i8** %39, align 8, !dbg !738
  %40 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %4, align 8, !dbg !739
  call void @RecordResolverNS(%struct.DnsConfigInfo* %40), !dbg !740
  %41 = call %struct.__res_state* @__res_state() #1, !dbg !741
  %42 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %41, i32 0, i32 6, !dbg !743
  %43 = getelementptr inbounds [7 x i8*], [7 x i8*]* %42, i32 0, i32 0, !dbg !744
  store i8** %43, i8*** %6, align 8, !dbg !745
  br label %44, !dbg !746

; <label>:44:                                     ; preds = %77, %19
  %45 = load i8**, i8*** %6, align 8, !dbg !747
  %46 = load i8*, i8** %45, align 8, !dbg !750
  %47 = icmp ne i8* %46, null, !dbg !751
  br i1 %47, label %48, label %80, !dbg !751

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !752, metadata !285), !dbg !754
  %49 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %4, align 8, !dbg !755
  %50 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %49, i32 0, i32 3, !dbg !757
  %51 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %50, i32 0, i32 0, !dbg !758
  %52 = load i32, i32* %51, align 8, !dbg !758
  %53 = icmp eq i32 %52, 10, !dbg !759
  br i1 %53, label %54, label %55, !dbg !760

; <label>:54:                                     ; preds = %48
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 32, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.RecordResolverInfo, i32 0, i32 0), i32 10), !dbg !761
  br label %80, !dbg !763

; <label>:55:                                     ; preds = %48
  %56 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %4, align 8, !dbg !764
  %57 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %56, i32 0, i32 3, !dbg !765
  %58 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %57, i32 0, i32 1, !dbg !766
  %59 = bitcast i8*** %58 to i8**, !dbg !767
  %60 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %4, align 8, !dbg !768
  %61 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %60, i32 0, i32 3, !dbg !769
  %62 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %61, i32 0, i32 0, !dbg !770
  %63 = call i8* @XdrUtil_ArrayAppend(i8** %59, i32* %62, i64 8, i32 1), !dbg !771
  %64 = bitcast i8* %63 to i8**, !dbg !772
  store i8** %64, i8*** %7, align 8, !dbg !773
  %65 = load i8**, i8*** %7, align 8, !dbg !774
  %66 = icmp ne i8** %65, null, !dbg !777
  %67 = xor i1 %66, true, !dbg !777
  %68 = zext i1 %67 to i32, !dbg !777
  %69 = sext i32 %68 to i64, !dbg !778
  %70 = icmp ne i64 %69, 0, !dbg !779
  br i1 %70, label %71, label %72, !dbg !780

; <label>:71:                                     ; preds = %55
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 812) #10, !dbg !781
  unreachable, !dbg !781

; <label>:72:                                     ; preds = %55
  %73 = load i8**, i8*** %6, align 8, !dbg !784
  %74 = load i8*, i8** %73, align 8, !dbg !785
  %75 = call i8* @UtilSafeStrdup0(i8* %74), !dbg !786
  %76 = load i8**, i8*** %7, align 8, !dbg !787
  store i8* %75, i8** %76, align 8, !dbg !788
  br label %77, !dbg !789

; <label>:77:                                     ; preds = %72
  %78 = load i8**, i8*** %6, align 8, !dbg !790
  %79 = getelementptr inbounds i8*, i8** %78, i32 1, !dbg !790
  store i8** %79, i8*** %6, align 8, !dbg !790
  br label %44, !dbg !792, !llvm.loop !793

; <label>:80:                                     ; preds = %54, %44
  %81 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %4, align 8, !dbg !795
  %82 = load %struct.NicInfoV3*, %struct.NicInfoV3** %3, align 8, !dbg !796
  %83 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %82, i32 0, i32 2, !dbg !797
  store %struct.DnsConfigInfo* %81, %struct.DnsConfigInfo** %83, align 8, !dbg !798
  store i8 1, i8* %2, align 1, !dbg !799
  br label %89, !dbg !799

; <label>:84:                                     ; preds = %17
  %85 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %4, align 8, !dbg !800
  %86 = bitcast %struct.DnsConfigInfo* %85 to i8*, !dbg !801
  call void @xdr_free(i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.DnsConfigInfo*)* @xdr_DnsConfigInfo to i32 (%struct.XDR*, i8*, ...)*), i8* %86) #8, !dbg !802
  %87 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %4, align 8, !dbg !803
  %88 = bitcast %struct.DnsConfigInfo* %87 to i8*, !dbg !803
  call void @free(i8* %88) #8, !dbg !804
  store i8 0, i8* %2, align 1, !dbg !805
  br label %89, !dbg !805

; <label>:89:                                     ; preds = %84, %80, %10
  %90 = load i8, i8* %2, align 1, !dbg !806
  ret i8 %90, !dbg !806
}

; Function Attrs: nounwind uwtable
define internal signext i8 @RecordRoutingInfo(i32, i32, %struct.NicInfoV3*) #0 !dbg !807 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.NicInfoV3*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !808, metadata !285), !dbg !809
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !810, metadata !285), !dbg !811
  store %struct.NicInfoV3* %2, %struct.NicInfoV3** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.NicInfoV3** %6, metadata !812, metadata !285), !dbg !813
  call void @llvm.dbg.declare(metadata i8* %7, metadata !814, metadata !285), !dbg !815
  store i8 0, i8* %7, align 1, !dbg !815
  call void @llvm.dbg.declare(metadata i8* %8, metadata !816, metadata !285), !dbg !817
  store i8 0, i8* %8, align 1, !dbg !817
  %9 = load i32, i32* %4, align 4, !dbg !818
  %10 = icmp ugt i32 %9, 0, !dbg !820
  br i1 %10, label %11, label %19, !dbg !821

; <label>:11:                                     ; preds = %3
  %12 = load i32, i32* %4, align 4, !dbg !822
  %13 = load %struct.NicInfoV3*, %struct.NicInfoV3** %6, align 8, !dbg !825
  %14 = call signext i8 @RecordRoutingInfoIPv4(i32 %12, %struct.NicInfoV3* %13), !dbg !826
  %15 = icmp ne i8 %14, 0, !dbg !826
  br i1 %15, label %16, label %17, !dbg !827

; <label>:16:                                     ; preds = %11
  store i8 1, i8* %7, align 1, !dbg !828
  br label %18, !dbg !830

; <label>:17:                                     ; preds = %11
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.RecordRoutingInfo, i32 0, i32 0)), !dbg !831
  br label %18

; <label>:18:                                     ; preds = %17, %16
  br label %19, !dbg !833

; <label>:19:                                     ; preds = %18, %3
  %20 = load i32, i32* %5, align 4, !dbg !834
  %21 = icmp ugt i32 %20, 0, !dbg !836
  br i1 %21, label %22, label %36, !dbg !837

; <label>:22:                                     ; preds = %19
  %23 = load %struct.NicInfoV3*, %struct.NicInfoV3** %6, align 8, !dbg !838
  %24 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %23, i32 0, i32 1, !dbg !840
  %25 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %24, i32 0, i32 0, !dbg !841
  %26 = load i32, i32* %25, align 8, !dbg !841
  %27 = icmp ult i32 %26, 100, !dbg !842
  br i1 %27, label %28, label %36, !dbg !843

; <label>:28:                                     ; preds = %22
  %29 = load i32, i32* %5, align 4, !dbg !844
  %30 = load %struct.NicInfoV3*, %struct.NicInfoV3** %6, align 8, !dbg !847
  %31 = call signext i8 @RecordRoutingInfoIPv6(i32 %29, %struct.NicInfoV3* %30), !dbg !848
  %32 = icmp ne i8 %31, 0, !dbg !848
  br i1 %32, label %33, label %34, !dbg !849

; <label>:33:                                     ; preds = %28
  store i8 1, i8* %8, align 1, !dbg !850
  br label %35, !dbg !852

; <label>:34:                                     ; preds = %28
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.RecordRoutingInfo, i32 0, i32 0)), !dbg !853
  br label %35

; <label>:35:                                     ; preds = %34, %33
  br label %36, !dbg !855

; <label>:36:                                     ; preds = %35, %22, %19
  %37 = load i8, i8* %7, align 1, !dbg !856
  %38 = sext i8 %37 to i32, !dbg !856
  %39 = icmp ne i32 %38, 0, !dbg !856
  br i1 %39, label %44, label %40, !dbg !857

; <label>:40:                                     ; preds = %36
  %41 = load i8, i8* %8, align 1, !dbg !858
  %42 = sext i8 %41 to i32, !dbg !858
  %43 = icmp ne i32 %42, 0, !dbg !860
  br label %44, !dbg !860

; <label>:44:                                     ; preds = %40, %36
  %45 = phi i1 [ true, %36 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32, !dbg !861
  %47 = trunc i32 %46 to i8, !dbg !863
  ret i8 %47, !dbg !864
}

; Function Attrs: nounwind uwtable
define i8* @GuestInfoGetPrimaryIP() #0 !dbg !865 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.ifaddrs*, align 8
  %3 = alloca %struct.ifaddrs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.ifaddrs** %2, metadata !868, metadata !285), !dbg !869
  call void @llvm.dbg.declare(metadata %struct.ifaddrs** %3, metadata !870, metadata !285), !dbg !871
  call void @llvm.dbg.declare(metadata i8** %4, metadata !872, metadata !285), !dbg !873
  store i8* null, i8** %4, align 8, !dbg !873
  call void @llvm.dbg.declare(metadata i8** %5, metadata !874, metadata !285), !dbg !875
  store i8* null, i8** %5, align 8, !dbg !875
  call void @llvm.dbg.declare(metadata i32* %6, metadata !876, metadata !285), !dbg !877
  store i32 3, i32* %6, align 4, !dbg !877
  %9 = call i32 @getifaddrs(%struct.ifaddrs** %2) #8, !dbg !878
  %10 = icmp slt i32 %9, 0, !dbg !880
  br i1 %10, label %11, label %13, !dbg !881

; <label>:11:                                     ; preds = %0
  %12 = load i8*, i8** %4, align 8, !dbg !882
  store i8* %12, i8** %1, align 8, !dbg !884
  br label %93, !dbg !884

; <label>:13:                                     ; preds = %0
  %14 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8, !dbg !885
  store %struct.ifaddrs* %14, %struct.ifaddrs** %3, align 8, !dbg !887
  br label %15, !dbg !888

; <label>:15:                                     ; preds = %86, %13
  %16 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8, !dbg !889
  %17 = icmp ne %struct.ifaddrs* %16, null, !dbg !892
  br i1 %17, label %18, label %90, !dbg !893

; <label>:18:                                     ; preds = %15
  call void @llvm.dbg.declare(metadata i32* %7, metadata !894, metadata !285), !dbg !896
  %19 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8, !dbg !897
  %20 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %19, i32 0, i32 3, !dbg !898
  %21 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8, !dbg !898
  %22 = bitcast %struct.sockaddr* %21 to %struct.sockaddr_storage*, !dbg !899
  %23 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %22, i32 0, i32 0, !dbg !899
  %24 = load i16, i16* %23, align 8, !dbg !899
  %25 = zext i16 %24 to i32, !dbg !900
  store i32 %25, i32* %7, align 4, !dbg !896
  %26 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8, !dbg !901
  %27 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %26, i32 0, i32 2, !dbg !903
  %28 = load i32, i32* %27, align 8, !dbg !903
  %29 = and i32 %28, 1, !dbg !904
  %30 = icmp ne i32 %29, 0, !dbg !904
  br i1 %30, label %31, label %37, !dbg !905

; <label>:31:                                     ; preds = %18
  %32 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8, !dbg !906
  %33 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %32, i32 0, i32 2, !dbg !908
  %34 = load i32, i32* %33, align 8, !dbg !908
  %35 = and i32 %34, 8, !dbg !909
  %36 = icmp ne i32 %35, 0, !dbg !909
  br i1 %36, label %37, label %38, !dbg !910

; <label>:37:                                     ; preds = %31, %18
  br label %86, !dbg !911

; <label>:38:                                     ; preds = %31
  %39 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8, !dbg !913
  %40 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %39, i32 0, i32 1, !dbg !915
  %41 = load i8*, i8** %40, align 8, !dbg !915
  %42 = call signext i8 @GuestInfo_IfaceIsExcluded(i8* %41), !dbg !916
  %43 = icmp ne i8 %42, 0, !dbg !916
  br i1 %43, label %44, label %45, !dbg !917

; <label>:44:                                     ; preds = %38
  br label %86, !dbg !918

; <label>:45:                                     ; preds = %38
  %46 = load i32, i32* %7, align 4, !dbg !920
  %47 = icmp eq i32 %46, 2, !dbg !922
  br i1 %47, label %51, label %48, !dbg !923

; <label>:48:                                     ; preds = %45
  %49 = load i32, i32* %7, align 4, !dbg !924
  %50 = icmp eq i32 %49, 10, !dbg !926
  br i1 %50, label %51, label %56, !dbg !927

; <label>:51:                                     ; preds = %48, %45
  %52 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8, !dbg !928
  %53 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %52, i32 0, i32 3, !dbg !930
  %54 = load %struct.sockaddr*, %struct.sockaddr** %53, align 8, !dbg !930
  %55 = call i8* @ValidateConvertAddress(%struct.sockaddr* %54), !dbg !931
  store i8* %55, i8** %4, align 8, !dbg !932
  br label %57, !dbg !933

; <label>:56:                                     ; preds = %48
  br label %86, !dbg !934

; <label>:57:                                     ; preds = %51
  br label %58

; <label>:58:                                     ; preds = %57
  br label %59

; <label>:59:                                     ; preds = %58
  %60 = load i8*, i8** %4, align 8, !dbg !936
  %61 = icmp ne i8* %60, null, !dbg !938
  br i1 %61, label %62, label %85, !dbg !939

; <label>:62:                                     ; preds = %59
  call void @llvm.dbg.declare(metadata i32* %8, metadata !940, metadata !285), !dbg !942
  %63 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8, !dbg !943
  %64 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %63, i32 0, i32 1, !dbg !944
  %65 = load i8*, i8** %64, align 8, !dbg !944
  %66 = call i32 @GuestInfo_IfaceGetPriority(i8* %65), !dbg !945
  store i32 %66, i32* %8, align 4, !dbg !942
  %67 = load i32, i32* %8, align 4, !dbg !946
  %68 = load i32, i32* %6, align 4, !dbg !948
  %69 = icmp ult i32 %67, %68, !dbg !949
  br i1 %69, label %70, label %84, !dbg !950

; <label>:70:                                     ; preds = %62
  %71 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8, !dbg !951
  %72 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %71, i32 0, i32 1, !dbg !953
  %73 = load i8*, i8** %72, align 8, !dbg !953
  %74 = load i32, i32* %8, align 4, !dbg !954
  %75 = load i32, i32* %6, align 4, !dbg !955
  %76 = load i8*, i8** %4, align 8, !dbg !956
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 128, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.GuestInfoGetPrimaryIP, i32 0, i32 0), i8* %73, i32 %74, i32 %75, i8* %76), !dbg !957
  %77 = load i8*, i8** %5, align 8, !dbg !958
  call void @g_free(i8* %77), !dbg !959
  %78 = load i8*, i8** %4, align 8, !dbg !960
  store i8* %78, i8** %5, align 8, !dbg !961
  %79 = load i32, i32* %8, align 4, !dbg !962
  store i32 %79, i32* %6, align 4, !dbg !963
  %80 = load i32, i32* %8, align 4, !dbg !964
  %81 = icmp eq i32 %80, 0, !dbg !966
  br i1 %81, label %82, label %83, !dbg !967

; <label>:82:                                     ; preds = %70
  br label %90, !dbg !968

; <label>:83:                                     ; preds = %70
  br label %84, !dbg !970

; <label>:84:                                     ; preds = %83, %62
  br label %85, !dbg !971

; <label>:85:                                     ; preds = %84, %59
  br label %86, !dbg !972

; <label>:86:                                     ; preds = %85, %56, %44, %37
  %87 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8, !dbg !973
  %88 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %87, i32 0, i32 0, !dbg !975
  %89 = load %struct.ifaddrs*, %struct.ifaddrs** %88, align 8, !dbg !975
  store %struct.ifaddrs* %89, %struct.ifaddrs** %3, align 8, !dbg !976
  br label %15, !dbg !977, !llvm.loop !978

; <label>:90:                                     ; preds = %82, %15
  %91 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8, !dbg !980
  call void @freeifaddrs(%struct.ifaddrs* %91) #8, !dbg !981
  %92 = load i8*, i8** %5, align 8, !dbg !982
  store i8* %92, i8** %1, align 8, !dbg !983
  br label %93, !dbg !983

; <label>:93:                                     ; preds = %90, %11
  %94 = load i8*, i8** %1, align 8, !dbg !984
  ret i8* %94, !dbg !984
}

declare signext i8 @GuestInfo_IfaceIsExcluded(i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @ValidateConvertAddress(%struct.sockaddr*) #0 !dbg !985 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca [46 x i8], align 16
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.in6_addr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.in6_addr*, align 8
  %14 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr** %3, metadata !990, metadata !285), !dbg !991
  call void @llvm.dbg.declare(metadata [46 x i8]* %4, metadata !992, metadata !285), !dbg !996
  %15 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8, !dbg !997
  %16 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %15, i32 0, i32 0, !dbg !999
  %17 = load i16, i16* %16, align 2, !dbg !999
  %18 = zext i16 %17 to i32, !dbg !997
  %19 = icmp eq i32 %18, 2, !dbg !1000
  br i1 %19, label %20, label %49, !dbg !1001

; <label>:20:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in** %5, metadata !1002, metadata !285), !dbg !1004
  %21 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8, !dbg !1005
  %22 = bitcast %struct.sockaddr* %21 to %struct.sockaddr_in*, !dbg !1006
  store %struct.sockaddr_in* %22, %struct.sockaddr_in** %5, align 8, !dbg !1004
  %23 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8, !dbg !1007
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 2, !dbg !1009
  %25 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %24, i32 0, i32 0, !dbg !1010
  %26 = load i32, i32* %25, align 4, !dbg !1010
  %27 = call i32 @htonl(i32 2130706433) #1, !dbg !1011
  %28 = icmp eq i32 %26, %27, !dbg !1012
  br i1 %28, label %47, label %29, !dbg !1013

; <label>:29:                                     ; preds = %20
  %30 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8, !dbg !1014
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 2, !dbg !1015
  %32 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %31, i32 0, i32 0, !dbg !1016
  %33 = load i32, i32* %32, align 4, !dbg !1016
  %34 = call i32 @htonl(i32 0) #1, !dbg !1017
  %35 = icmp eq i32 %33, %34, !dbg !1018
  br i1 %35, label %47, label %36, !dbg !1019

; <label>:36:                                     ; preds = %29
  %37 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8, !dbg !1020
  %38 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %37, i32 0, i32 0, !dbg !1021
  %39 = load i16, i16* %38, align 2, !dbg !1021
  %40 = zext i16 %39 to i32, !dbg !1020
  %41 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8, !dbg !1022
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %41, i32 0, i32 2, !dbg !1023
  %43 = bitcast %struct.in_addr* %42 to i8*, !dbg !1024
  %44 = getelementptr inbounds [46 x i8], [46 x i8]* %4, i32 0, i32 0, !dbg !1025
  %45 = call i8* @inet_ntop(i32 %40, i8* %43, i8* %44, i32 46) #8, !dbg !1026
  %46 = icmp ne i8* %45, null, !dbg !1026
  br i1 %46, label %48, label %47, !dbg !1027

; <label>:47:                                     ; preds = %36, %29, %20
  store i8* null, i8** %2, align 8, !dbg !1029
  br label %195, !dbg !1029

; <label>:48:                                     ; preds = %36
  br label %192, !dbg !1031

; <label>:49:                                     ; preds = %1
  %50 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8, !dbg !1032
  %51 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %50, i32 0, i32 0, !dbg !1035
  %52 = load i16, i16* %51, align 2, !dbg !1035
  %53 = zext i16 %52 to i32, !dbg !1032
  %54 = icmp eq i32 %53, 10, !dbg !1036
  br i1 %54, label %55, label %190, !dbg !1032

; <label>:55:                                     ; preds = %49
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in6** %6, metadata !1037, metadata !285), !dbg !1039
  %56 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8, !dbg !1040
  %57 = bitcast %struct.sockaddr* %56 to %struct.sockaddr_in6*, !dbg !1041
  store %struct.sockaddr_in6* %57, %struct.sockaddr_in6** %6, align 8, !dbg !1039
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %7, metadata !1042, metadata !285), !dbg !1045
  %58 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8, !dbg !1046
  %59 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %58, i32 0, i32 3, !dbg !1047
  store %struct.in6_addr* %59, %struct.in6_addr** %7, align 8, !dbg !1045
  %60 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8, !dbg !1048
  %61 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %60, i32 0, i32 0, !dbg !1047
  %62 = bitcast %union.anon.4* %61 to [4 x i32]*, !dbg !1049
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i64 0, i64 0, !dbg !1048
  %64 = load i32, i32* %63, align 4, !dbg !1048
  %65 = icmp eq i32 %64, 0, !dbg !1050
  br i1 %65, label %66, label %88, !dbg !1051

; <label>:66:                                     ; preds = %55
  %67 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8, !dbg !1052
  %68 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %67, i32 0, i32 0, !dbg !1054
  %69 = bitcast %union.anon.4* %68 to [4 x i32]*, !dbg !1055
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i64 0, i64 1, !dbg !1052
  %71 = load i32, i32* %70, align 4, !dbg !1052
  %72 = icmp eq i32 %71, 0, !dbg !1056
  br i1 %72, label %73, label %88, !dbg !1057

; <label>:73:                                     ; preds = %66
  %74 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8, !dbg !1058
  %75 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %74, i32 0, i32 0, !dbg !1060
  %76 = bitcast %union.anon.4* %75 to [4 x i32]*, !dbg !1061
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %76, i64 0, i64 2, !dbg !1058
  %78 = load i32, i32* %77, align 4, !dbg !1058
  %79 = icmp eq i32 %78, 0, !dbg !1062
  br i1 %79, label %80, label %88, !dbg !1063

; <label>:80:                                     ; preds = %73
  %81 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8, !dbg !1064
  %82 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %81, i32 0, i32 0, !dbg !1066
  %83 = bitcast %union.anon.4* %82 to [4 x i32]*, !dbg !1067
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %83, i64 0, i64 3, !dbg !1064
  %85 = load i32, i32* %84, align 4, !dbg !1064
  %86 = call i32 @htonl(i32 1) #1, !dbg !1068
  %87 = icmp eq i32 %85, %86, !dbg !1069
  br label %88

; <label>:88:                                     ; preds = %80, %73, %66, %55
  %89 = phi i1 [ false, %73 ], [ false, %66 ], [ false, %55 ], [ %87, %80 ]
  %90 = zext i1 %89 to i32, !dbg !1070
  store i32 %90, i32* %8, align 4, !dbg !1072
  %91 = load i32, i32* %8, align 4, !dbg !1073
  %92 = icmp ne i32 %91, 0, !dbg !1074
  br i1 %92, label %188, label %93, !dbg !1075

; <label>:93:                                     ; preds = %88
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %9, metadata !1076, metadata !285), !dbg !1078
  %94 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8, !dbg !1079
  %95 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %94, i32 0, i32 3, !dbg !1080
  store %struct.in6_addr* %95, %struct.in6_addr** %9, align 8, !dbg !1078
  %96 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8, !dbg !1081
  %97 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %96, i32 0, i32 0, !dbg !1082
  %98 = bitcast %union.anon.4* %97 to [4 x i32]*, !dbg !1083
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %98, i64 0, i64 0, !dbg !1081
  %100 = load i32, i32* %99, align 4, !dbg !1081
  %101 = call i32 @htonl(i32 -4194304) #1, !dbg !1084
  %102 = and i32 %100, %101, !dbg !1085
  %103 = call i32 @htonl(i32 -25165824) #1, !dbg !1086
  %104 = icmp eq i32 %102, %103, !dbg !1088
  %105 = zext i1 %104 to i32, !dbg !1088
  store i32 %105, i32* %10, align 4, !dbg !1089
  %106 = load i32, i32* %10, align 4, !dbg !1090
  %107 = icmp ne i32 %106, 0, !dbg !1091
  br i1 %107, label %188, label %108, !dbg !1092

; <label>:108:                                    ; preds = %93
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %11, metadata !1093, metadata !285), !dbg !1095
  %109 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8, !dbg !1096
  %110 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %109, i32 0, i32 3, !dbg !1097
  store %struct.in6_addr* %110, %struct.in6_addr** %11, align 8, !dbg !1095
  %111 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8, !dbg !1098
  %112 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %111, i32 0, i32 0, !dbg !1099
  %113 = bitcast %union.anon.4* %112 to [4 x i32]*, !dbg !1100
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %113, i64 0, i64 0, !dbg !1098
  %115 = load i32, i32* %114, align 4, !dbg !1098
  %116 = call i32 @htonl(i32 -4194304) #1, !dbg !1101
  %117 = and i32 %115, %116, !dbg !1102
  %118 = call i32 @htonl(i32 -20971520) #1, !dbg !1103
  %119 = icmp eq i32 %117, %118, !dbg !1105
  %120 = zext i1 %119 to i32, !dbg !1105
  store i32 %120, i32* %12, align 4, !dbg !1106
  %121 = load i32, i32* %12, align 4, !dbg !1107
  %122 = icmp ne i32 %121, 0, !dbg !1108
  br i1 %122, label %188, label %123, !dbg !1109

; <label>:123:                                    ; preds = %108
  %124 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8, !dbg !1110
  %125 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %124, i32 0, i32 3, !dbg !1111
  %126 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %125, i32 0, i32 0, !dbg !1112
  %127 = bitcast %union.anon.4* %126 to [16 x i8]*, !dbg !1113
  %128 = getelementptr inbounds [16 x i8], [16 x i8]* %127, i64 0, i64 0, !dbg !1114
  %129 = load i8, i8* %128, align 4, !dbg !1114
  %130 = zext i8 %129 to i32, !dbg !1114
  %131 = icmp eq i32 %130, 252, !dbg !1115
  br i1 %131, label %132, label %142, !dbg !1116

; <label>:132:                                    ; preds = %123
  %133 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8, !dbg !1117
  %134 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %133, i32 0, i32 3, !dbg !1119
  %135 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %134, i32 0, i32 0, !dbg !1120
  %136 = bitcast %union.anon.4* %135 to [16 x i8]*, !dbg !1121
  %137 = getelementptr inbounds [16 x i8], [16 x i8]* %136, i64 0, i64 1, !dbg !1122
  %138 = load i8, i8* %137, align 1, !dbg !1122
  %139 = zext i8 %138 to i32, !dbg !1122
  %140 = and i32 %139, 192, !dbg !1123
  %141 = icmp eq i32 %140, 0, !dbg !1124
  br i1 %141, label %188, label %142, !dbg !1125

; <label>:142:                                    ; preds = %132, %123
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %13, metadata !1126, metadata !285), !dbg !1128
  %143 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8, !dbg !1129
  %144 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %143, i32 0, i32 3, !dbg !1130
  store %struct.in6_addr* %144, %struct.in6_addr** %13, align 8, !dbg !1128
  %145 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8, !dbg !1131
  %146 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %145, i32 0, i32 0, !dbg !1130
  %147 = bitcast %union.anon.4* %146 to [4 x i32]*, !dbg !1132
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %147, i64 0, i64 0, !dbg !1131
  %149 = load i32, i32* %148, align 4, !dbg !1131
  %150 = icmp eq i32 %149, 0, !dbg !1133
  br i1 %150, label %151, label %172, !dbg !1134

; <label>:151:                                    ; preds = %142
  %152 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8, !dbg !1135
  %153 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %152, i32 0, i32 0, !dbg !1137
  %154 = bitcast %union.anon.4* %153 to [4 x i32]*, !dbg !1138
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %154, i64 0, i64 1, !dbg !1135
  %156 = load i32, i32* %155, align 4, !dbg !1135
  %157 = icmp eq i32 %156, 0, !dbg !1139
  br i1 %157, label %158, label %172, !dbg !1140

; <label>:158:                                    ; preds = %151
  %159 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8, !dbg !1141
  %160 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %159, i32 0, i32 0, !dbg !1143
  %161 = bitcast %union.anon.4* %160 to [4 x i32]*, !dbg !1144
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %161, i64 0, i64 2, !dbg !1141
  %163 = load i32, i32* %162, align 4, !dbg !1141
  %164 = icmp eq i32 %163, 0, !dbg !1145
  br i1 %164, label %165, label %172, !dbg !1146

; <label>:165:                                    ; preds = %158
  %166 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8, !dbg !1147
  %167 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %166, i32 0, i32 0, !dbg !1149
  %168 = bitcast %union.anon.4* %167 to [4 x i32]*, !dbg !1150
  %169 = getelementptr inbounds [4 x i32], [4 x i32]* %168, i64 0, i64 3, !dbg !1147
  %170 = load i32, i32* %169, align 4, !dbg !1147
  %171 = icmp eq i32 %170, 0, !dbg !1151
  br label %172

; <label>:172:                                    ; preds = %165, %158, %151, %142
  %173 = phi i1 [ false, %158 ], [ false, %151 ], [ false, %142 ], [ %171, %165 ]
  %174 = zext i1 %173 to i32, !dbg !1152
  store i32 %174, i32* %14, align 4, !dbg !1154
  %175 = load i32, i32* %14, align 4, !dbg !1155
  %176 = icmp ne i32 %175, 0, !dbg !1156
  br i1 %176, label %188, label %177, !dbg !1157

; <label>:177:                                    ; preds = %172
  %178 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8, !dbg !1158
  %179 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %178, i32 0, i32 0, !dbg !1159
  %180 = load i16, i16* %179, align 2, !dbg !1159
  %181 = zext i16 %180 to i32, !dbg !1158
  %182 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8, !dbg !1160
  %183 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %182, i32 0, i32 3, !dbg !1161
  %184 = bitcast %struct.in6_addr* %183 to i8*, !dbg !1162
  %185 = getelementptr inbounds [46 x i8], [46 x i8]* %4, i32 0, i32 0, !dbg !1163
  %186 = call i8* @inet_ntop(i32 %181, i8* %184, i8* %185, i32 46) #8, !dbg !1164
  %187 = icmp ne i8* %186, null, !dbg !1164
  br i1 %187, label %189, label %188, !dbg !1165

; <label>:188:                                    ; preds = %177, %172, %132, %108, %93, %88
  store i8* null, i8** %2, align 8, !dbg !1167
  br label %195, !dbg !1167

; <label>:189:                                    ; preds = %177
  br label %191, !dbg !1169

; <label>:190:                                    ; preds = %49
  store i8* null, i8** %2, align 8, !dbg !1170
  br label %195, !dbg !1170

; <label>:191:                                    ; preds = %189
  br label %192

; <label>:192:                                    ; preds = %191, %48
  %193 = getelementptr inbounds [46 x i8], [46 x i8]* %4, i32 0, i32 0, !dbg !1172
  %194 = call i8* @UtilSafeStrdup0(i8* %193), !dbg !1173
  store i8* %194, i8** %2, align 8, !dbg !1174
  br label %195, !dbg !1174

; <label>:195:                                    ; preds = %192, %190, %188, %47
  %196 = load i8*, i8** %2, align 8, !dbg !1175
  ret i8* %196, !dbg !1175
}

declare i32 @GuestInfo_IfaceGetPriority(i8*) #3

declare void @g_free(i8*) #3

declare i32 @Str_Sprintf(i8*, i64, i8*, ...) #3

declare %struct.GuestNicV3* @GuestInfoAddNicEntry(%struct.NicInfoV3*, i8*, %struct.DnsConfigInfo*, %struct.WinsConfigInfo*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind readnone
declare i32 @ntohl(i32) #5

; Function Attrs: nounwind uwtable
define internal i32 @CountNetmaskBitsV4(%struct.sockaddr*) #0 !dbg !1176 {
  %2 = alloca %struct.sockaddr*, align 8
  %3 = alloca i64, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr** %2, metadata !1179, metadata !285), !dbg !1180
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1181, metadata !285), !dbg !1182
  %4 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8, !dbg !1183
  %5 = bitcast %struct.sockaddr* %4 to %struct.sockaddr_in*, !dbg !1184
  %6 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 2, !dbg !1184
  %7 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0, !dbg !1185
  %8 = load i32, i32* %7, align 4, !dbg !1185
  %9 = zext i32 %8 to i64, !dbg !1186
  store i64 %9, i64* %3, align 8, !dbg !1182
  %10 = load i64, i64* %3, align 8, !dbg !1187
  %11 = call i32 @CountNetmaskBits(i64 %10), !dbg !1188
  ret i32 %11, !dbg !1189
}

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #5

; Function Attrs: nounwind uwtable
define internal i32 @CountNetmaskBitsV6(%struct.sockaddr*) #0 !dbg !1190 {
  %2 = alloca %struct.sockaddr*, align 8
  %3 = alloca i64*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr** %2, metadata !1191, metadata !285), !dbg !1192
  call void @llvm.dbg.declare(metadata i64** %3, metadata !1193, metadata !285), !dbg !1194
  %4 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8, !dbg !1195
  %5 = bitcast %struct.sockaddr* %4 to %struct.sockaddr_in6*, !dbg !1196
  %6 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 3, !dbg !1196
  %7 = bitcast %struct.in6_addr* %6 to i64*, !dbg !1197
  store i64* %7, i64** %3, align 8, !dbg !1194
  %8 = load i64*, i64** %3, align 8, !dbg !1198
  %9 = getelementptr inbounds i64, i64* %8, i64 0, !dbg !1198
  %10 = load i64, i64* %9, align 8, !dbg !1198
  %11 = call i32 @CountNetmaskBits(i64 %10), !dbg !1199
  %12 = load i64*, i64** %3, align 8, !dbg !1200
  %13 = getelementptr inbounds i64, i64* %12, i64 1, !dbg !1200
  %14 = load i64, i64* %13, align 8, !dbg !1200
  %15 = call i32 @CountNetmaskBits(i64 %14), !dbg !1201
  %16 = add i32 %11, %15, !dbg !1203
  ret i32 %16, !dbg !1204
}

declare %struct.IpAddressEntry* @GuestInfoAddIpAddress(%struct.GuestNicV3*, %struct.sockaddr*, i32, i32*, i32*) #3

; Function Attrs: nounwind uwtable
define internal i32 @CountNetmaskBits(i64) #0 !dbg !1205 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1208, metadata !285), !dbg !1209
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1210, metadata !285), !dbg !1212
  store i64 6148914691236517205, i64* %3, align 8, !dbg !1212
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1213, metadata !285), !dbg !1214
  store i64 3689348814741910323, i64* %4, align 8, !dbg !1214
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1215, metadata !285), !dbg !1216
  store i64 1085102592571150095, i64* %5, align 8, !dbg !1216
  %6 = load i64, i64* %2, align 8, !dbg !1217
  %7 = lshr i64 %6, 1, !dbg !1218
  %8 = and i64 %7, 6148914691236517205, !dbg !1219
  %9 = load i64, i64* %2, align 8, !dbg !1220
  %10 = sub i64 %9, %8, !dbg !1220
  store i64 %10, i64* %2, align 8, !dbg !1220
  %11 = load i64, i64* %2, align 8, !dbg !1221
  %12 = and i64 %11, 3689348814741910323, !dbg !1222
  %13 = load i64, i64* %2, align 8, !dbg !1223
  %14 = lshr i64 %13, 2, !dbg !1224
  %15 = and i64 %14, 3689348814741910323, !dbg !1225
  %16 = add i64 %12, %15, !dbg !1226
  store i64 %16, i64* %2, align 8, !dbg !1227
  %17 = load i64, i64* %2, align 8, !dbg !1228
  %18 = load i64, i64* %2, align 8, !dbg !1229
  %19 = lshr i64 %18, 4, !dbg !1230
  %20 = add i64 %17, %19, !dbg !1231
  %21 = and i64 %20, 1085102592571150095, !dbg !1232
  store i64 %21, i64* %2, align 8, !dbg !1233
  %22 = load i64, i64* %2, align 8, !dbg !1234
  %23 = lshr i64 %22, 8, !dbg !1235
  %24 = load i64, i64* %2, align 8, !dbg !1236
  %25 = add i64 %24, %23, !dbg !1236
  store i64 %25, i64* %2, align 8, !dbg !1236
  %26 = load i64, i64* %2, align 8, !dbg !1237
  %27 = lshr i64 %26, 16, !dbg !1238
  %28 = load i64, i64* %2, align 8, !dbg !1239
  %29 = add i64 %28, %27, !dbg !1239
  store i64 %29, i64* %2, align 8, !dbg !1239
  %30 = load i64, i64* %2, align 8, !dbg !1240
  %31 = lshr i64 %30, 32, !dbg !1241
  %32 = load i64, i64* %2, align 8, !dbg !1242
  %33 = add i64 %32, %31, !dbg !1242
  store i64 %33, i64* %2, align 8, !dbg !1242
  %34 = load i64, i64* %2, align 8, !dbg !1243
  %35 = and i64 %34, 127, !dbg !1244
  %36 = trunc i64 %35 to i32, !dbg !1243
  ret i32 %36, !dbg !1245
}

; Function Attrs: nounwind
declare i32 @__res_init() #2

declare i8* @UtilSafeCalloc0(i64, i64) #3

declare i32 @assert(...) #3

declare i8* @UtilSafeStrdup0(i8*) #3

; Function Attrs: nounwind readnone
declare %struct.__res_state* @__res_state() #5

; Function Attrs: nounwind uwtable
define internal void @RecordResolverNS(%struct.DnsConfigInfo*) #0 !dbg !1246 {
  %2 = alloca %struct.DnsConfigInfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in*, align 8
  %5 = alloca %struct.TypedIpAddress*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  %7 = alloca %struct.TypedIpAddress*, align 8
  store %struct.DnsConfigInfo* %0, %struct.DnsConfigInfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DnsConfigInfo** %2, metadata !1249, metadata !285), !dbg !1250
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1251, metadata !285), !dbg !1252
  store i32 0, i32* %3, align 4, !dbg !1253
  br label %8, !dbg !1256

; <label>:8:                                      ; preds = %51, %1
  %9 = load i32, i32* %3, align 4, !dbg !1257
  %10 = icmp slt i32 %9, 3, !dbg !1260
  br i1 %10, label %11, label %54, !dbg !1261

; <label>:11:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in** %4, metadata !1262, metadata !285), !dbg !1264
  %12 = load i32, i32* %3, align 4, !dbg !1265
  %13 = sext i32 %12 to i64, !dbg !1266
  %14 = call %struct.__res_state* @__res_state() #1, !dbg !1267
  %15 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %14, i32 0, i32 4, !dbg !1268
  %16 = getelementptr inbounds [3 x %struct.sockaddr_in], [3 x %struct.sockaddr_in]* %15, i64 0, i64 %13, !dbg !1266
  store %struct.sockaddr_in* %16, %struct.sockaddr_in** %4, align 8, !dbg !1264
  %17 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8, !dbg !1269
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0, !dbg !1271
  %19 = load i16, i16* %18, align 4, !dbg !1271
  %20 = zext i16 %19 to i32, !dbg !1269
  %21 = icmp eq i32 %20, 2, !dbg !1272
  br i1 %21, label %22, label %50, !dbg !1273

; <label>:22:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata %struct.TypedIpAddress** %5, metadata !1274, metadata !285), !dbg !1276
  %23 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %2, align 8, !dbg !1277
  %24 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %23, i32 0, i32 2, !dbg !1279
  %25 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %24, i32 0, i32 0, !dbg !1280
  %26 = load i32, i32* %25, align 8, !dbg !1280
  %27 = icmp eq i32 %26, 16, !dbg !1281
  br i1 %27, label %28, label %29, !dbg !1282

; <label>:28:                                     ; preds = %22
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 32, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.RecordResolverNS, i32 0, i32 0), i32 16), !dbg !1283
  br label %54, !dbg !1285

; <label>:29:                                     ; preds = %22
  %30 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %2, align 8, !dbg !1286
  %31 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %30, i32 0, i32 2, !dbg !1287
  %32 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %31, i32 0, i32 1, !dbg !1288
  %33 = bitcast %struct.TypedIpAddress** %32 to i8**, !dbg !1289
  %34 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %2, align 8, !dbg !1290
  %35 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %34, i32 0, i32 2, !dbg !1291
  %36 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %35, i32 0, i32 0, !dbg !1292
  %37 = call i8* @XdrUtil_ArrayAppend(i8** %33, i32* %36, i64 24, i32 1), !dbg !1293
  %38 = bitcast i8* %37 to %struct.TypedIpAddress*, !dbg !1294
  store %struct.TypedIpAddress* %38, %struct.TypedIpAddress** %5, align 8, !dbg !1295
  %39 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %5, align 8, !dbg !1296
  %40 = icmp ne %struct.TypedIpAddress* %39, null, !dbg !1299
  %41 = xor i1 %40, true, !dbg !1299
  %42 = zext i1 %41 to i32, !dbg !1299
  %43 = sext i32 %42 to i64, !dbg !1300
  %44 = icmp ne i64 %43, 0, !dbg !1301
  br i1 %44, label %45, label %46, !dbg !1302

; <label>:45:                                     ; preds = %29
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 890) #10, !dbg !1303
  unreachable, !dbg !1303

; <label>:46:                                     ; preds = %29
  %47 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8, !dbg !1306
  %48 = bitcast %struct.sockaddr_in* %47 to %struct.sockaddr*, !dbg !1307
  %49 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %5, align 8, !dbg !1308
  call void @GuestInfoSockaddrToTypedIpAddress(%struct.sockaddr* %48, %struct.TypedIpAddress* %49), !dbg !1309
  br label %50, !dbg !1310

; <label>:50:                                     ; preds = %46, %11
  br label %51, !dbg !1311

; <label>:51:                                     ; preds = %50
  %52 = load i32, i32* %3, align 4, !dbg !1312
  %53 = add nsw i32 %52, 1, !dbg !1312
  store i32 %53, i32* %3, align 4, !dbg !1312
  br label %8, !dbg !1314, !llvm.loop !1315

; <label>:54:                                     ; preds = %28, %8
  store i32 0, i32* %3, align 4, !dbg !1317
  br label %55, !dbg !1319

; <label>:55:                                     ; preds = %98, %54
  %56 = load i32, i32* %3, align 4, !dbg !1320
  %57 = icmp slt i32 %56, 3, !dbg !1323
  br i1 %57, label %58, label %101, !dbg !1324

; <label>:58:                                     ; preds = %55
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in6** %6, metadata !1325, metadata !285), !dbg !1327
  %59 = load i32, i32* %3, align 4, !dbg !1328
  %60 = sext i32 %59 to i64, !dbg !1329
  %61 = call %struct.__res_state* @__res_state() #1, !dbg !1330
  %62 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %61, i32 0, i32 16, !dbg !1331
  %63 = bitcast %union.anon.6* %62 to %struct.anon.7*, !dbg !1332
  %64 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %63, i32 0, i32 5, !dbg !1333
  %65 = getelementptr inbounds [3 x %struct.sockaddr_in6*], [3 x %struct.sockaddr_in6*]* %64, i64 0, i64 %60, !dbg !1329
  %66 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %65, align 8, !dbg !1329
  store %struct.sockaddr_in6* %66, %struct.sockaddr_in6** %6, align 8, !dbg !1327
  %67 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8, !dbg !1334
  %68 = icmp ne %struct.sockaddr_in6* %67, null, !dbg !1334
  br i1 %68, label %69, label %97, !dbg !1336

; <label>:69:                                     ; preds = %58
  call void @llvm.dbg.declare(metadata %struct.TypedIpAddress** %7, metadata !1337, metadata !285), !dbg !1339
  %70 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %2, align 8, !dbg !1340
  %71 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %70, i32 0, i32 2, !dbg !1342
  %72 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %71, i32 0, i32 0, !dbg !1343
  %73 = load i32, i32* %72, align 8, !dbg !1343
  %74 = icmp eq i32 %73, 16, !dbg !1344
  br i1 %74, label %75, label %76, !dbg !1345

; <label>:75:                                     ; preds = %69
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 32, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.RecordResolverNS, i32 0, i32 0), i32 16), !dbg !1346
  br label %101, !dbg !1348

; <label>:76:                                     ; preds = %69
  %77 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %2, align 8, !dbg !1349
  %78 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %77, i32 0, i32 2, !dbg !1350
  %79 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %78, i32 0, i32 1, !dbg !1351
  %80 = bitcast %struct.TypedIpAddress** %79 to i8**, !dbg !1352
  %81 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %2, align 8, !dbg !1353
  %82 = getelementptr inbounds %struct.DnsConfigInfo, %struct.DnsConfigInfo* %81, i32 0, i32 2, !dbg !1354
  %83 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %82, i32 0, i32 0, !dbg !1355
  %84 = call i8* @XdrUtil_ArrayAppend(i8** %80, i32* %83, i64 24, i32 1), !dbg !1356
  %85 = bitcast i8* %84 to %struct.TypedIpAddress*, !dbg !1357
  store %struct.TypedIpAddress* %85, %struct.TypedIpAddress** %7, align 8, !dbg !1358
  %86 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %7, align 8, !dbg !1359
  %87 = icmp ne %struct.TypedIpAddress* %86, null, !dbg !1362
  %88 = xor i1 %87, true, !dbg !1362
  %89 = zext i1 %88 to i32, !dbg !1362
  %90 = sext i32 %89 to i64, !dbg !1363
  %91 = icmp ne i64 %90, 0, !dbg !1364
  br i1 %91, label %92, label %93, !dbg !1365

; <label>:92:                                     ; preds = %76
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 911) #10, !dbg !1366
  unreachable, !dbg !1366

; <label>:93:                                     ; preds = %76
  %94 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8, !dbg !1369
  %95 = bitcast %struct.sockaddr_in6* %94 to %struct.sockaddr*, !dbg !1370
  %96 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %7, align 8, !dbg !1371
  call void @GuestInfoSockaddrToTypedIpAddress(%struct.sockaddr* %95, %struct.TypedIpAddress* %96), !dbg !1372
  br label %97, !dbg !1373

; <label>:97:                                     ; preds = %93, %58
  br label %98, !dbg !1374

; <label>:98:                                     ; preds = %97
  %99 = load i32, i32* %3, align 4, !dbg !1375
  %100 = add nsw i32 %99, 1, !dbg !1375
  store i32 %100, i32* %3, align 4, !dbg !1375
  br label %55, !dbg !1377, !llvm.loop !1378

; <label>:101:                                    ; preds = %75, %55
  ret void, !dbg !1380
}

declare i8* @XdrUtil_ArrayAppend(i8**, i32*, i64, i32) #3

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #6

; Function Attrs: nounwind
declare void @xdr_free(i32 (%struct.XDR*, i8*, ...)*, i8*) #2

declare i32 @xdr_DnsConfigInfo(%struct.XDR*, %struct.DnsConfigInfo*) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @GuestInfoSockaddrToTypedIpAddress(%struct.sockaddr*, %struct.TypedIpAddress*) #3

; Function Attrs: nounwind uwtable
define internal signext i8 @RecordRoutingInfoIPv4(i32, %struct.NicInfoV3*) #0 !dbg !1381 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca %struct.NicInfoV3*, align 8
  %6 = alloca %struct._GPtrArray*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca %struct.rtentry*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca %struct.InetCidrRouteEntry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TypedIpAddress*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1384, metadata !285), !dbg !1385
  store %struct.NicInfoV3* %1, %struct.NicInfoV3** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.NicInfoV3** %5, metadata !1386, metadata !285), !dbg !1387
  call void @llvm.dbg.declare(metadata %struct._GPtrArray** %6, metadata !1388, metadata !285), !dbg !1399
  store %struct._GPtrArray* null, %struct._GPtrArray** %6, align 8, !dbg !1399
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1400, metadata !285), !dbg !1401
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1402, metadata !285), !dbg !1403
  store i8 0, i8* %8, align 1, !dbg !1403
  %16 = load i32, i32* %4, align 4, !dbg !1404
  %17 = call %struct._GPtrArray* @SlashProcNet_GetRoute(i32 %16, i16 zeroext 1), !dbg !1406
  store %struct._GPtrArray* %17, %struct._GPtrArray** %6, align 8, !dbg !1407
  %18 = icmp eq %struct._GPtrArray* %17, null, !dbg !1408
  br i1 %18, label %19, label %20, !dbg !1409

; <label>:19:                                     ; preds = %2
  store i8 0, i8* %3, align 1, !dbg !1410
  br label %118, !dbg !1410

; <label>:20:                                     ; preds = %2
  store i32 0, i32* %7, align 4, !dbg !1412
  br label %21, !dbg !1414

; <label>:21:                                     ; preds = %112, %20
  %22 = load i32, i32* %7, align 4, !dbg !1415
  %23 = load %struct._GPtrArray*, %struct._GPtrArray** %6, align 8, !dbg !1418
  %24 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %23, i32 0, i32 1, !dbg !1419
  %25 = load i32, i32* %24, align 8, !dbg !1419
  %26 = icmp ult i32 %22, %25, !dbg !1420
  br i1 %26, label %27, label %115, !dbg !1421

; <label>:27:                                     ; preds = %21
  call void @llvm.dbg.declare(metadata %struct.rtentry** %9, metadata !1422, metadata !285), !dbg !1447
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in** %10, metadata !1448, metadata !285), !dbg !1449
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in** %11, metadata !1450, metadata !285), !dbg !1451
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in** %12, metadata !1452, metadata !285), !dbg !1453
  call void @llvm.dbg.declare(metadata %struct.InetCidrRouteEntry** %13, metadata !1454, metadata !285), !dbg !1455
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1456, metadata !285), !dbg !1457
  %28 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !1458
  %29 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %28, i32 0, i32 1, !dbg !1460
  %30 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %29, i32 0, i32 0, !dbg !1461
  %31 = load i32, i32* %30, align 8, !dbg !1461
  %32 = icmp eq i32 %31, 100, !dbg !1462
  br i1 %32, label %33, label %34, !dbg !1463

; <label>:33:                                     ; preds = %27
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 32, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.RecordRoutingInfoIPv4, i32 0, i32 0), i32 100), !dbg !1464
  br label %115, !dbg !1466

; <label>:34:                                     ; preds = %27
  %35 = load i32, i32* %7, align 4, !dbg !1467
  %36 = zext i32 %35 to i64, !dbg !1468
  %37 = load %struct._GPtrArray*, %struct._GPtrArray** %6, align 8, !dbg !1469
  %38 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %37, i32 0, i32 0, !dbg !1470
  %39 = load i8**, i8*** %38, align 8, !dbg !1470
  %40 = getelementptr inbounds i8*, i8** %39, i64 %36, !dbg !1468
  %41 = load i8*, i8** %40, align 8, !dbg !1468
  %42 = bitcast i8* %41 to %struct.rtentry*, !dbg !1468
  store %struct.rtentry* %42, %struct.rtentry** %9, align 8, !dbg !1471
  %43 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !1472
  %44 = load %struct.rtentry*, %struct.rtentry** %9, align 8, !dbg !1474
  %45 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %44, i32 0, i32 11, !dbg !1475
  %46 = load i8*, i8** %45, align 8, !dbg !1475
  %47 = call i32 @if_nametoindex(i8* %46) #8, !dbg !1476
  %48 = call signext i8 @GuestInfoGetNicInfoIfIndex(%struct.NicInfoV3* %43, i32 %47, i32* %14), !dbg !1477
  %49 = icmp ne i8 %48, 0, !dbg !1477
  br i1 %49, label %51, label %50, !dbg !1478

; <label>:50:                                     ; preds = %34
  br label %112, !dbg !1479

; <label>:51:                                     ; preds = %34
  %52 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !1481
  %53 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %52, i32 0, i32 1, !dbg !1482
  %54 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %53, i32 0, i32 1, !dbg !1483
  %55 = bitcast %struct.InetCidrRouteEntry** %54 to i8**, !dbg !1484
  %56 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !1485
  %57 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %56, i32 0, i32 1, !dbg !1486
  %58 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %57, i32 0, i32 0, !dbg !1487
  %59 = call i8* @XdrUtil_ArrayAppend(i8** %55, i32* %58, i64 56, i32 1), !dbg !1488
  %60 = bitcast i8* %59 to %struct.InetCidrRouteEntry*, !dbg !1489
  store %struct.InetCidrRouteEntry* %60, %struct.InetCidrRouteEntry** %13, align 8, !dbg !1490
  %61 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %13, align 8, !dbg !1491
  %62 = icmp ne %struct.InetCidrRouteEntry* %61, null, !dbg !1494
  %63 = xor i1 %62, true, !dbg !1494
  %64 = zext i1 %63 to i32, !dbg !1494
  %65 = sext i32 %64 to i64, !dbg !1495
  %66 = icmp ne i64 %65, 0, !dbg !1496
  br i1 %66, label %67, label %68, !dbg !1497

; <label>:67:                                     ; preds = %51
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 981) #10, !dbg !1498
  unreachable, !dbg !1498

; <label>:68:                                     ; preds = %51
  %69 = load %struct.rtentry*, %struct.rtentry** %9, align 8, !dbg !1501
  %70 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %69, i32 0, i32 1, !dbg !1502
  %71 = bitcast %struct.sockaddr* %70 to %struct.sockaddr_in*, !dbg !1503
  store %struct.sockaddr_in* %71, %struct.sockaddr_in** %10, align 8, !dbg !1504
  %72 = load %struct.rtentry*, %struct.rtentry** %9, align 8, !dbg !1505
  %73 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %72, i32 0, i32 2, !dbg !1506
  %74 = bitcast %struct.sockaddr* %73 to %struct.sockaddr_in*, !dbg !1507
  store %struct.sockaddr_in* %74, %struct.sockaddr_in** %11, align 8, !dbg !1508
  %75 = load %struct.rtentry*, %struct.rtentry** %9, align 8, !dbg !1509
  %76 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %75, i32 0, i32 3, !dbg !1510
  %77 = bitcast %struct.sockaddr* %76 to %struct.sockaddr_in*, !dbg !1511
  store %struct.sockaddr_in* %77, %struct.sockaddr_in** %12, align 8, !dbg !1512
  %78 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8, !dbg !1513
  %79 = bitcast %struct.sockaddr_in* %78 to %struct.sockaddr*, !dbg !1514
  %80 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %13, align 8, !dbg !1515
  %81 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %80, i32 0, i32 0, !dbg !1516
  call void @GuestInfoSockaddrToTypedIpAddress(%struct.sockaddr* %79, %struct.TypedIpAddress* %81), !dbg !1517
  %82 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8, !dbg !1518
  %83 = bitcast %struct.sockaddr_in* %82 to %struct.sockaddr*, !dbg !1519
  %84 = call i32 @CountNetmaskBitsV4(%struct.sockaddr* %83), !dbg !1520
  %85 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %13, align 8, !dbg !1521
  %86 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %85, i32 0, i32 1, !dbg !1522
  store i32 %84, i32* %86, align 8, !dbg !1523
  %87 = load %struct.rtentry*, %struct.rtentry** %9, align 8, !dbg !1524
  %88 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %87, i32 0, i32 4, !dbg !1526
  %89 = load i16, i16* %88, align 8, !dbg !1526
  %90 = zext i16 %89 to i32, !dbg !1524
  %91 = and i32 %90, 2, !dbg !1527
  %92 = icmp ne i32 %91, 0, !dbg !1527
  br i1 %92, label %93, label %102, !dbg !1528

; <label>:93:                                     ; preds = %68
  call void @llvm.dbg.declare(metadata %struct.TypedIpAddress** %15, metadata !1529, metadata !285), !dbg !1531
  %94 = call i8* @UtilSafeCalloc0(i64 1, i64 24), !dbg !1532
  %95 = bitcast i8* %94 to %struct.TypedIpAddress*, !dbg !1532
  store %struct.TypedIpAddress* %95, %struct.TypedIpAddress** %15, align 8, !dbg !1531
  %96 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8, !dbg !1533
  %97 = bitcast %struct.sockaddr_in* %96 to %struct.sockaddr*, !dbg !1534
  %98 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %15, align 8, !dbg !1535
  call void @GuestInfoSockaddrToTypedIpAddress(%struct.sockaddr* %97, %struct.TypedIpAddress* %98), !dbg !1536
  %99 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %15, align 8, !dbg !1537
  %100 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %13, align 8, !dbg !1538
  %101 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %100, i32 0, i32 2, !dbg !1539
  store %struct.TypedIpAddress* %99, %struct.TypedIpAddress** %101, align 8, !dbg !1540
  br label %102, !dbg !1541

; <label>:102:                                    ; preds = %93, %68
  %103 = load i32, i32* %14, align 4, !dbg !1542
  %104 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %13, align 8, !dbg !1543
  %105 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %104, i32 0, i32 3, !dbg !1544
  store i32 %103, i32* %105, align 8, !dbg !1545
  %106 = load %struct.rtentry*, %struct.rtentry** %9, align 8, !dbg !1546
  %107 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %106, i32 0, i32 10, !dbg !1547
  %108 = load i16, i16* %107, align 8, !dbg !1547
  %109 = sext i16 %108 to i32, !dbg !1546
  %110 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %13, align 8, !dbg !1548
  %111 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %110, i32 0, i32 5, !dbg !1549
  store i32 %109, i32* %111, align 8, !dbg !1550
  br label %112, !dbg !1551

; <label>:112:                                    ; preds = %102, %50
  %113 = load i32, i32* %7, align 4, !dbg !1552
  %114 = add i32 %113, 1, !dbg !1552
  store i32 %114, i32* %7, align 4, !dbg !1552
  br label %21, !dbg !1554, !llvm.loop !1555

; <label>:115:                                    ; preds = %33, %21
  store i8 1, i8* %8, align 1, !dbg !1557
  %116 = load %struct._GPtrArray*, %struct._GPtrArray** %6, align 8, !dbg !1558
  call void @SlashProcNet_FreeRoute(%struct._GPtrArray* %116), !dbg !1559
  %117 = load i8, i8* %8, align 1, !dbg !1560
  store i8 %117, i8* %3, align 1, !dbg !1561
  br label %118, !dbg !1561

; <label>:118:                                    ; preds = %115, %19
  %119 = load i8, i8* %3, align 1, !dbg !1562
  ret i8 %119, !dbg !1562
}

; Function Attrs: nounwind uwtable
define internal signext i8 @RecordRoutingInfoIPv6(i32, %struct.NicInfoV3*) #0 !dbg !1563 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca %struct.NicInfoV3*, align 8
  %6 = alloca %struct._GPtrArray*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca %struct.sockaddr_storage, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca %struct.in6_rtmsg*, align 8
  %12 = alloca %struct.InetCidrRouteEntry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TypedIpAddress*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1564, metadata !285), !dbg !1565
  store %struct.NicInfoV3* %1, %struct.NicInfoV3** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.NicInfoV3** %5, metadata !1566, metadata !285), !dbg !1567
  call void @llvm.dbg.declare(metadata %struct._GPtrArray** %6, metadata !1568, metadata !285), !dbg !1569
  store %struct._GPtrArray* null, %struct._GPtrArray** %6, align 8, !dbg !1569
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1570, metadata !285), !dbg !1571
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1572, metadata !285), !dbg !1573
  store i8 0, i8* %8, align 1, !dbg !1573
  %15 = load i32, i32* %4, align 4, !dbg !1574
  %16 = call %struct._GPtrArray* @SlashProcNet_GetRoute6(i32 %15, i32 1), !dbg !1576
  store %struct._GPtrArray* %16, %struct._GPtrArray** %6, align 8, !dbg !1577
  %17 = icmp eq %struct._GPtrArray* %16, null, !dbg !1578
  br i1 %17, label %18, label %19, !dbg !1579

; <label>:18:                                     ; preds = %2
  store i8 0, i8* %3, align 1, !dbg !1580
  br label %121, !dbg !1580

; <label>:19:                                     ; preds = %2
  store i32 0, i32* %7, align 4, !dbg !1582
  br label %20, !dbg !1584

; <label>:20:                                     ; preds = %115, %19
  %21 = load i32, i32* %7, align 4, !dbg !1585
  %22 = load %struct._GPtrArray*, %struct._GPtrArray** %6, align 8, !dbg !1588
  %23 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %22, i32 0, i32 1, !dbg !1589
  %24 = load i32, i32* %23, align 8, !dbg !1589
  %25 = icmp ult i32 %21, %24, !dbg !1590
  br i1 %25, label %26, label %118, !dbg !1591

; <label>:26:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage* %9, metadata !1592, metadata !285), !dbg !1594
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in6** %10, metadata !1595, metadata !285), !dbg !1596
  %27 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr_in6*, !dbg !1597
  store %struct.sockaddr_in6* %27, %struct.sockaddr_in6** %10, align 8, !dbg !1596
  call void @llvm.dbg.declare(metadata %struct.in6_rtmsg** %11, metadata !1598, metadata !285), !dbg !1614
  call void @llvm.dbg.declare(metadata %struct.InetCidrRouteEntry** %12, metadata !1615, metadata !285), !dbg !1616
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1617, metadata !285), !dbg !1618
  store i32 -1, i32* %13, align 4, !dbg !1618
  %28 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !1619
  %29 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %28, i32 0, i32 1, !dbg !1621
  %30 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %29, i32 0, i32 0, !dbg !1622
  %31 = load i32, i32* %30, align 8, !dbg !1622
  %32 = icmp eq i32 %31, 100, !dbg !1623
  br i1 %32, label %33, label %34, !dbg !1624

; <label>:33:                                     ; preds = %26
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 32, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.RecordRoutingInfoIPv6, i32 0, i32 0), i32 100), !dbg !1625
  br label %118, !dbg !1627

; <label>:34:                                     ; preds = %26
  %35 = load i32, i32* %7, align 4, !dbg !1628
  %36 = zext i32 %35 to i64, !dbg !1629
  %37 = load %struct._GPtrArray*, %struct._GPtrArray** %6, align 8, !dbg !1630
  %38 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %37, i32 0, i32 0, !dbg !1631
  %39 = load i8**, i8*** %38, align 8, !dbg !1631
  %40 = getelementptr inbounds i8*, i8** %39, i64 %36, !dbg !1629
  %41 = load i8*, i8** %40, align 8, !dbg !1629
  %42 = bitcast i8* %41 to %struct.in6_rtmsg*, !dbg !1629
  store %struct.in6_rtmsg* %42, %struct.in6_rtmsg** %11, align 8, !dbg !1632
  %43 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !1633
  %44 = load %struct.in6_rtmsg*, %struct.in6_rtmsg** %11, align 8, !dbg !1635
  %45 = getelementptr inbounds %struct.in6_rtmsg, %struct.in6_rtmsg* %44, i32 0, i32 9, !dbg !1636
  %46 = load i32, i32* %45, align 4, !dbg !1636
  %47 = call signext i8 @GuestInfoGetNicInfoIfIndex(%struct.NicInfoV3* %43, i32 %46, i32* %13), !dbg !1637
  %48 = icmp ne i8 %47, 0, !dbg !1637
  br i1 %48, label %50, label %49, !dbg !1638

; <label>:49:                                     ; preds = %34
  br label %115, !dbg !1639

; <label>:50:                                     ; preds = %34
  %51 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !1641
  %52 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %51, i32 0, i32 1, !dbg !1642
  %53 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %52, i32 0, i32 1, !dbg !1643
  %54 = bitcast %struct.InetCidrRouteEntry** %53 to i8**, !dbg !1644
  %55 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !1645
  %56 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %55, i32 0, i32 1, !dbg !1646
  %57 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %56, i32 0, i32 0, !dbg !1647
  %58 = call i8* @XdrUtil_ArrayAppend(i8** %54, i32* %57, i64 56, i32 1), !dbg !1648
  %59 = bitcast i8* %58 to %struct.InetCidrRouteEntry*, !dbg !1649
  store %struct.InetCidrRouteEntry* %59, %struct.InetCidrRouteEntry** %12, align 8, !dbg !1650
  %60 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %12, align 8, !dbg !1651
  %61 = icmp ne %struct.InetCidrRouteEntry* %60, null, !dbg !1654
  %62 = xor i1 %61, true, !dbg !1654
  %63 = zext i1 %62 to i32, !dbg !1654
  %64 = sext i32 %63 to i64, !dbg !1655
  %65 = icmp ne i64 %64, 0, !dbg !1656
  br i1 %65, label %66, label %67, !dbg !1657

; <label>:66:                                     ; preds = %50
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 1080) #10, !dbg !1658
  unreachable, !dbg !1658

; <label>:67:                                     ; preds = %50
  %68 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8, !dbg !1661
  %69 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %68, i32 0, i32 0, !dbg !1662
  store i16 10, i16* %69, align 4, !dbg !1663
  %70 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8, !dbg !1664
  %71 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %70, i32 0, i32 3, !dbg !1665
  %72 = load %struct.in6_rtmsg*, %struct.in6_rtmsg** %11, align 8, !dbg !1666
  %73 = getelementptr inbounds %struct.in6_rtmsg, %struct.in6_rtmsg* %72, i32 0, i32 0, !dbg !1667
  %74 = bitcast %struct.in6_addr* %71 to i8*, !dbg !1667
  %75 = bitcast %struct.in6_addr* %73 to i8*, !dbg !1667
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 16, i32 4, i1 false), !dbg !1667
  %76 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8, !dbg !1668
  %77 = bitcast %struct.sockaddr_in6* %76 to %struct.sockaddr*, !dbg !1669
  %78 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %12, align 8, !dbg !1670
  %79 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %78, i32 0, i32 0, !dbg !1671
  call void @GuestInfoSockaddrToTypedIpAddress(%struct.sockaddr* %77, %struct.TypedIpAddress* %79), !dbg !1672
  %80 = load %struct.in6_rtmsg*, %struct.in6_rtmsg** %11, align 8, !dbg !1673
  %81 = getelementptr inbounds %struct.in6_rtmsg, %struct.in6_rtmsg* %80, i32 0, i32 4, !dbg !1674
  %82 = load i16, i16* %81, align 4, !dbg !1674
  %83 = zext i16 %82 to i32, !dbg !1673
  %84 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %12, align 8, !dbg !1675
  %85 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %84, i32 0, i32 1, !dbg !1676
  store i32 %83, i32* %85, align 8, !dbg !1677
  %86 = load %struct.in6_rtmsg*, %struct.in6_rtmsg** %11, align 8, !dbg !1678
  %87 = getelementptr inbounds %struct.in6_rtmsg, %struct.in6_rtmsg* %86, i32 0, i32 8, !dbg !1680
  %88 = load i32, i32* %87, align 8, !dbg !1680
  %89 = and i32 %88, 2, !dbg !1681
  %90 = icmp ne i32 %89, 0, !dbg !1681
  br i1 %90, label %91, label %106, !dbg !1682

; <label>:91:                                     ; preds = %67
  call void @llvm.dbg.declare(metadata %struct.TypedIpAddress** %14, metadata !1683, metadata !285), !dbg !1685
  %92 = call i8* @UtilSafeCalloc0(i64 1, i64 24), !dbg !1686
  %93 = bitcast i8* %92 to %struct.TypedIpAddress*, !dbg !1686
  store %struct.TypedIpAddress* %93, %struct.TypedIpAddress** %14, align 8, !dbg !1685
  %94 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8, !dbg !1687
  %95 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %94, i32 0, i32 3, !dbg !1688
  %96 = load %struct.in6_rtmsg*, %struct.in6_rtmsg** %11, align 8, !dbg !1689
  %97 = getelementptr inbounds %struct.in6_rtmsg, %struct.in6_rtmsg* %96, i32 0, i32 2, !dbg !1690
  %98 = bitcast %struct.in6_addr* %95 to i8*, !dbg !1690
  %99 = bitcast %struct.in6_addr* %97 to i8*, !dbg !1690
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %98, i8* %99, i64 16, i32 4, i1 false), !dbg !1690
  %100 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8, !dbg !1691
  %101 = bitcast %struct.sockaddr_in6* %100 to %struct.sockaddr*, !dbg !1692
  %102 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %14, align 8, !dbg !1693
  call void @GuestInfoSockaddrToTypedIpAddress(%struct.sockaddr* %101, %struct.TypedIpAddress* %102), !dbg !1694
  %103 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %14, align 8, !dbg !1695
  %104 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %12, align 8, !dbg !1696
  %105 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %104, i32 0, i32 2, !dbg !1697
  store %struct.TypedIpAddress* %103, %struct.TypedIpAddress** %105, align 8, !dbg !1698
  br label %106, !dbg !1699

; <label>:106:                                    ; preds = %91, %67
  %107 = load i32, i32* %13, align 4, !dbg !1700
  %108 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %12, align 8, !dbg !1701
  %109 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %108, i32 0, i32 3, !dbg !1702
  store i32 %107, i32* %109, align 8, !dbg !1703
  %110 = load %struct.in6_rtmsg*, %struct.in6_rtmsg** %11, align 8, !dbg !1704
  %111 = getelementptr inbounds %struct.in6_rtmsg, %struct.in6_rtmsg* %110, i32 0, i32 6, !dbg !1705
  %112 = load i32, i32* %111, align 8, !dbg !1705
  %113 = load %struct.InetCidrRouteEntry*, %struct.InetCidrRouteEntry** %12, align 8, !dbg !1706
  %114 = getelementptr inbounds %struct.InetCidrRouteEntry, %struct.InetCidrRouteEntry* %113, i32 0, i32 5, !dbg !1707
  store i32 %112, i32* %114, align 8, !dbg !1708
  br label %115, !dbg !1709

; <label>:115:                                    ; preds = %106, %49
  %116 = load i32, i32* %7, align 4, !dbg !1710
  %117 = add i32 %116, 1, !dbg !1710
  store i32 %117, i32* %7, align 4, !dbg !1710
  br label %20, !dbg !1712, !llvm.loop !1713

; <label>:118:                                    ; preds = %33, %20
  store i8 1, i8* %8, align 1, !dbg !1715
  %119 = load %struct._GPtrArray*, %struct._GPtrArray** %6, align 8, !dbg !1716
  call void @SlashProcNet_FreeRoute6(%struct._GPtrArray* %119), !dbg !1717
  %120 = load i8, i8* %8, align 1, !dbg !1718
  store i8 %120, i8* %3, align 1, !dbg !1719
  br label %121, !dbg !1719

; <label>:121:                                    ; preds = %118, %18
  %122 = load i8, i8* %3, align 1, !dbg !1720
  ret i8 %122, !dbg !1720
}

declare %struct._GPtrArray* @SlashProcNet_GetRoute(i32, i16 zeroext) #3

declare signext i8 @GuestInfoGetNicInfoIfIndex(%struct.NicInfoV3*, i32, i32*) #3

; Function Attrs: nounwind
declare i32 @if_nametoindex(i8*) #2

declare void @SlashProcNet_FreeRoute(%struct._GPtrArray*) #3

declare %struct._GPtrArray* @SlashProcNet_GetRoute6(i32, i32) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

declare void @SlashProcNet_FreeRoute6(%struct._GPtrArray*) #3

; Function Attrs: nounwind
declare i8* @inet_ntop(i32, i8*, i8*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!275, !276}
!llvm.ident = !{!277}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !79)
!1 = !DIFile(filename: "libNicInfo_la-nicInfoPosix.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line766")
!2 = !{!3, !15, !24, !31, !41, !47, !54, !73}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 51, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line766")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!7 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!8 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!9 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!10 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!11 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!12 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!13 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!14 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "InetAddressType", file: !16, line: 65, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/guestrpc/nicinfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line766")
!17 = !{!18, !19, !20, !21, !22, !23}
!18 = !DIEnumerator(name: "IAT_UNKNOWN", value: 0)
!19 = !DIEnumerator(name: "IAT_IPV4", value: 1)
!20 = !DIEnumerator(name: "IAT_IPV6", value: 2)
!21 = !DIEnumerator(name: "IAT_IPV4Z", value: 3)
!22 = !DIEnumerator(name: "IAT_IPV6Z", value: 4)
!23 = !DIEnumerator(name: "IAT_DNS", value: 16)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IpAddressOrigin", file: !16, line: 77, size: 32, align: 32, elements: !25)
!25 = !{!26, !27, !28, !29, !30}
!26 = !DIEnumerator(name: "IAO_OTHER", value: 1)
!27 = !DIEnumerator(name: "IAO_MANUAL", value: 2)
!28 = !DIEnumerator(name: "IAO_DHCP", value: 4)
!29 = !DIEnumerator(name: "IAO_LINKLAYER", value: 5)
!30 = !DIEnumerator(name: "IAO_RANDOM", value: 6)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IpAddressStatus", file: !16, line: 86, size: 32, align: 32, elements: !32)
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40}
!33 = !DIEnumerator(name: "IAS_PREFERRED", value: 1)
!34 = !DIEnumerator(name: "IAS_DEPRECATED", value: 2)
!35 = !DIEnumerator(name: "IAS_INVALID", value: 3)
!36 = !DIEnumerator(name: "IAS_INACCESSIBLE", value: 4)
!37 = !DIEnumerator(name: "IAS_UNKNOWN", value: 5)
!38 = !DIEnumerator(name: "IAS_TENTATIVE", value: 6)
!39 = !DIEnumerator(name: "IAS_DUPLICATE", value: 7)
!40 = !DIEnumerator(name: "IAS_OPTIMISTIC", value: 8)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "InetCidrRouteType", file: !16, line: 138, size: 32, align: 32, elements: !42)
!42 = !{!43, !44, !45, !46}
!43 = !DIEnumerator(name: "ICRT_OTHER", value: 1)
!44 = !DIEnumerator(name: "ICRT_REJECT", value: 2)
!45 = !DIEnumerator(name: "ICRT_LOCAL", value: 3)
!46 = !DIEnumerator(name: "ICRT_REMOTE", value: 4)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !48, line: 34, size: 32, align: 32, elements: !49)
!48 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/nicInfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line766")
!49 = !{!50, !51, !52, !53}
!50 = !DIEnumerator(name: "NICINFO_PRIORITY_PRIMARY", value: 0)
!51 = !DIEnumerator(name: "NICINFO_PRIORITY_NORMAL", value: 1)
!52 = !DIEnumerator(name: "NICINFO_PRIORITY_LOW", value: 2)
!53 = !DIEnumerator(name: "NICINFO_PRIORITY_MAX", value: 3)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !55, line: 42, size: 32, align: 32, elements: !56)
!55 = !DIFile(filename: "/usr/include/net/if.h", directory: "/home/lichi/Desktop/open-vm-tools/line766")
!56 = !{!57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!57 = !DIEnumerator(name: "IFF_UP", value: 1)
!58 = !DIEnumerator(name: "IFF_BROADCAST", value: 2)
!59 = !DIEnumerator(name: "IFF_DEBUG", value: 4)
!60 = !DIEnumerator(name: "IFF_LOOPBACK", value: 8)
!61 = !DIEnumerator(name: "IFF_POINTOPOINT", value: 16)
!62 = !DIEnumerator(name: "IFF_NOTRAILERS", value: 32)
!63 = !DIEnumerator(name: "IFF_RUNNING", value: 64)
!64 = !DIEnumerator(name: "IFF_NOARP", value: 128)
!65 = !DIEnumerator(name: "IFF_PROMISC", value: 256)
!66 = !DIEnumerator(name: "IFF_ALLMULTI", value: 512)
!67 = !DIEnumerator(name: "IFF_MASTER", value: 1024)
!68 = !DIEnumerator(name: "IFF_SLAVE", value: 2048)
!69 = !DIEnumerator(name: "IFF_MULTICAST", value: 4096)
!70 = !DIEnumerator(name: "IFF_PORTSEL", value: 8192)
!71 = !DIEnumerator(name: "IFF_AUTOMEDIA", value: 16384)
!72 = !DIEnumerator(name: "IFF_DYNAMIC", value: 32768)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdr_op", file: !74, line: 81, size: 32, align: 32, elements: !75)
!74 = !DIFile(filename: "/usr/include/rpc/xdr.h", directory: "/home/lichi/Desktop/open-vm-tools/line766")
!75 = !{!76, !77, !78}
!76 = !DIEnumerator(name: "XDR_ENCODE", value: 0)
!77 = !DIEnumerator(name: "XDR_DECODE", value: 1)
!78 = !DIEnumerator(name: "XDR_FREE", value: 2)
!79 = !{!80, !84, !85, !99, !115, !123, !140, !164, !166, !168, !171, !172, !170, !249, !261, !136}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !82, line: 46, baseType: !83)
!82 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line766")
!83 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !87, line: 166, size: 1024, align: 64, elements: !88)
!87 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/open-vm-tools/line766")
!88 = !{!89, !93, !97}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !86, file: !87, line: 168, baseType: !90, size: 16, align: 16)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !91, line: 28, baseType: !92)
!91 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/open-vm-tools/line766")
!92 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !86, file: !87, line: 169, baseType: !94, size: 944, align: 8, offset: 16)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 944, align: 8, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 118)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !86, file: !87, line: 170, baseType: !98, size: 64, align: 64, offset: 960)
!98 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_ll", file: !101, line: 22, size: 160, align: 32, elements: !102)
!101 = !DIFile(filename: "/usr/include/netpacket/packet.h", directory: "/home/lichi/Desktop/open-vm-tools/line766")
!102 = !{!103, !104, !105, !107, !108, !110, !111}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "sll_family", scope: !100, file: !101, line: 24, baseType: !92, size: 16, align: 16)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "sll_protocol", scope: !100, file: !101, line: 25, baseType: !92, size: 16, align: 16, offset: 16)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "sll_ifindex", scope: !100, file: !101, line: 26, baseType: !106, size: 32, align: 32, offset: 32)
!106 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "sll_hatype", scope: !100, file: !101, line: 27, baseType: !92, size: 16, align: 16, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "sll_pkttype", scope: !100, file: !101, line: 28, baseType: !109, size: 8, align: 8, offset: 80)
!109 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "sll_halen", scope: !100, file: !101, line: 29, baseType: !109, size: 8, align: 8, offset: 88)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "sll_addr", scope: !100, file: !101, line: 30, baseType: !112, size: 64, align: 8, offset: 96)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 64, align: 8, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 8)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !87, line: 153, size: 128, align: 16, elements: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !116, file: !87, line: 155, baseType: !90, size: 16, align: 16)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !116, file: !87, line: 156, baseType: !120, size: 112, align: 8, offset: 16)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 112, align: 8, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 14)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !125, line: 239, size: 128, align: 32, elements: !126)
!125 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/open-vm-tools/line766")
!126 = !{!127, !128, !132, !139}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !124, file: !125, line: 241, baseType: !90, size: 16, align: 16)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !124, file: !125, line: 242, baseType: !129, size: 16, align: 16, offset: 16)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !125, line: 119, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !131, line: 49, baseType: !92)
!131 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line766")
!132 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !124, file: !125, line: 243, baseType: !133, size: 32, align: 32, offset: 32)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !125, line: 31, size: 32, align: 32, elements: !134)
!134 = !{!135}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !133, file: !125, line: 33, baseType: !136, size: 32, align: 32)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !125, line: 30, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !131, line: 51, baseType: !138)
!138 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !124, file: !125, line: 246, baseType: !112, size: 64, align: 8, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !125, line: 254, size: 224, align: 32, elements: !142)
!142 = !{!143, !144, !145, !146, !163}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !141, file: !125, line: 256, baseType: !90, size: 16, align: 16)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !141, file: !125, line: 257, baseType: !129, size: 16, align: 16, offset: 16)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !141, file: !125, line: 258, baseType: !137, size: 32, align: 32, offset: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !141, file: !125, line: 259, baseType: !147, size: 128, align: 32, offset: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !125, line: 211, size: 128, align: 32, elements: !148)
!148 = !{!149}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !147, file: !125, line: 220, baseType: !150, size: 128, align: 32)
!150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !147, file: !125, line: 213, size: 128, align: 32, elements: !151)
!151 = !{!152, !157, !159}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !150, file: !125, line: 215, baseType: !153, size: 128, align: 8)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 128, align: 8, elements: !155)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !131, line: 48, baseType: !109)
!155 = !{!156}
!156 = !DISubrange(count: 16)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !150, file: !125, line: 217, baseType: !158, size: 128, align: 16)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 128, align: 16, elements: !113)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !150, file: !125, line: 218, baseType: !160, size: 128, align: 32)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 128, align: 32, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 4)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !141, file: !125, line: 260, baseType: !137, size: 32, align: 32, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !131, line: 55, baseType: !98)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "DnsHostname", file: !16, line: 113, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "xdrproc_t", file: !74, line: 152, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!176, !178, !84, null}
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool_t", file: !177, line: 37, baseType: !106)
!177 = !DIFile(filename: "/usr/include/rpc/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line766")
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "XDR", file: !74, line: 109, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "XDR", file: !74, line: 110, size: 384, align: 64, elements: !181)
!181 = !{!182, !183, !245, !246, !247, !248}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "x_op", scope: !180, file: !74, line: 112, baseType: !73, size: 32, align: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "x_ops", scope: !180, file: !74, line: 136, baseType: !184, size: 64, align: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdr_ops", file: !74, line: 113, size: 640, align: 64, elements: !186)
!186 = !{!187, !193, !199, !209, !215, !221, !225, !231, !235, !239}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "x_getlong", scope: !185, file: !74, line: 115, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!176, !178, !191}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "x_putlong", scope: !185, file: !74, line: 117, baseType: !194, size: 64, align: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!176, !178, !197}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "x_getbytes", scope: !185, file: !74, line: 119, baseType: !200, size: 64, align: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!176, !178, !203, !207}
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !204, line: 116, baseType: !205)
!204 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line766")
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__caddr_t", file: !206, line: 183, baseType: !170)
!206 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line766")
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !204, line: 35, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !206, line: 32, baseType: !138)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "x_putbytes", scope: !185, file: !74, line: 121, baseType: !210, size: 64, align: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!176, !178, !213, !207}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "x_getpostn", scope: !185, file: !74, line: 123, baseType: !216, size: 64, align: 64, offset: 256)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!207, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "x_setpostn", scope: !185, file: !74, line: 125, baseType: !222, size: 64, align: 64, offset: 320)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!176, !178, !207}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "x_inline", scope: !185, file: !74, line: 127, baseType: !226, size: 64, align: 64, offset: 384)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!229, !178, !207}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !204, line: 196, baseType: !106)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "x_destroy", scope: !185, file: !74, line: 129, baseType: !232, size: 64, align: 64, offset: 448)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !178}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "x_getint32", scope: !185, file: !74, line: 131, baseType: !236, size: 64, align: 64, offset: 512)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!176, !178, !229}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "x_putint32", scope: !185, file: !74, line: 133, baseType: !240, size: 64, align: 64, offset: 576)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!176, !178, !243}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "x_public", scope: !180, file: !74, line: 137, baseType: !203, size: 64, align: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "x_private", scope: !180, file: !74, line: 138, baseType: !203, size: 64, align: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "x_base", scope: !180, file: !74, line: 139, baseType: !203, size: 64, align: 64, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "x_handy", scope: !180, file: !74, line: 140, baseType: !207, size: 32, align: 32, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "TypedIpAddress", file: !16, line: 102, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TypedIpAddress", file: !16, line: 98, size: 192, align: 64, elements: !252)
!252 = !{!253, !255}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressAddrType", scope: !251, file: !16, line: 99, baseType: !254, size: 32, align: 32)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetAddressType", file: !16, line: 73, baseType: !15)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressAddr", scope: !251, file: !16, line: 100, baseType: !256, size: 128, align: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetAddress", file: !16, line: 63, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 60, size: 128, align: 64, elements: !258)
!258 = !{!259, !260}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "InetAddress_len", scope: !257, file: !16, line: 61, baseType: !207, size: 32, align: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "InetAddress_val", scope: !257, file: !16, line: 62, baseType: !170, size: 64, align: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetCidrRouteEntry", file: !16, line: 154, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "InetCidrRouteEntry", file: !16, line: 146, size: 448, align: 64, elements: !264)
!264 = !{!265, !266, !268, !269, !272, !274}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteDest", scope: !263, file: !16, line: 147, baseType: !250, size: 192, align: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRoutePfxLen", scope: !263, file: !16, line: 148, baseType: !267, size: 32, align: 32, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetAddressPrefixLength", file: !16, line: 75, baseType: !207)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteNextHop", scope: !263, file: !16, line: 149, baseType: !249, size: 64, align: 64, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteIfIndex", scope: !263, file: !16, line: 150, baseType: !270, size: 32, align: 32, offset: 320)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !271, line: 173, baseType: !137)
!271 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line766")
!272 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteType", scope: !263, file: !16, line: 151, baseType: !273, size: 32, align: 32, offset: 352)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetCidrRouteType", file: !16, line: 144, baseType: !41)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteMetric", scope: !263, file: !16, line: 152, baseType: !270, size: 32, align: 32, offset: 384)
!275 = !{i32 2, !"Dwarf Version", i32 4}
!276 = !{i32 2, !"Debug Info Version", i32 3}
!277 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!278 = distinct !DISubprogram(name: "GuestInfoGetFqdn", scope: !279, file: !279, line: 180, type: !280, isLocal: false, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!279 = !DIFile(filename: "nicInfoPosix.c", directory: "/home/lichi/Desktop/open-vm-tools/line766")
!280 = !DISubroutineType(types: !281)
!281 = !{!282, !106, !170}
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !271, line: 230, baseType: !83)
!283 = !{}
!284 = !DILocalVariable(name: "outBufLen", arg: 1, scope: !278, file: !279, line: 180, type: !106)
!285 = !DIExpression()
!286 = !DILocation(line: 180, column: 22, scope: !278)
!287 = !DILocalVariable(name: "fqdn", arg: 2, scope: !278, file: !279, line: 181, type: !170)
!288 = !DILocation(line: 181, column: 23, scope: !278)
!289 = !DILocation(line: 184, column: 20, scope: !290)
!290 = distinct !DILexicalBlock(scope: !278, file: !279, line: 184, column: 8)
!291 = !DILocation(line: 184, column: 26, scope: !290)
!292 = !DILocation(line: 184, column: 8, scope: !290)
!293 = !DILocation(line: 184, column: 37, scope: !290)
!294 = !DILocation(line: 184, column: 8, scope: !278)
!295 = !DILocation(line: 185, column: 7, scope: !296)
!296 = distinct !DILexicalBlock(scope: !290, file: !279, line: 184, column: 42)
!297 = !DILocation(line: 186, column: 7, scope: !296)
!298 = !DILocation(line: 189, column: 4, scope: !278)
!299 = !DILocation(line: 190, column: 1, scope: !278)
!300 = distinct !DISubprogram(name: "GuestInfoGetNicInfo", scope: !279, file: !279, line: 353, type: !301, isLocal: false, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!301 = !DISubroutineType(types: !302)
!302 = !{!282, !138, !138, !303}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "NicInfoV3", file: !16, line: 190, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NicInfoV3", file: !16, line: 176, size: 512, align: 64, elements: !306)
!306 = !{!307, !366, !371, !372, !373, !374}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "nics", scope: !305, file: !16, line: 180, baseType: !308, size: 128, align: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !305, file: !16, line: 177, size: 128, align: 64, elements: !309)
!309 = !{!310, !311}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "nics_len", scope: !308, file: !16, line: 178, baseType: !207, size: 32, align: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "nics_val", scope: !308, file: !16, line: 179, baseType: !312, size: 64, align: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestNicV3", file: !16, line: 174, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestNicV3", file: !16, line: 163, size: 448, align: 64, elements: !315)
!315 = !{!316, !317, !334, !351, !358, !365}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "macAddress", scope: !314, file: !16, line: 164, baseType: !170, size: 64, align: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "ips", scope: !314, file: !16, line: 168, baseType: !318, size: 128, align: 64, offset: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !314, file: !16, line: 165, size: 128, align: 64, elements: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "ips_len", scope: !318, file: !16, line: 166, baseType: !207, size: 32, align: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "ips_val", scope: !318, file: !16, line: 167, baseType: !322, size: 64, align: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "IpAddressEntry", file: !16, line: 110, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "IpAddressEntry", file: !16, line: 104, size: 384, align: 64, elements: !325)
!325 = !{!326, !327, !328, !331}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressAddr", scope: !324, file: !16, line: 105, baseType: !250, size: 192, align: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressPrefixLength", scope: !324, file: !16, line: 106, baseType: !267, size: 32, align: 32, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressOrigin", scope: !324, file: !16, line: 107, baseType: !329, size: 64, align: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "IpAddressOrigin", file: !16, line: 84, baseType: !24)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressStatus", scope: !324, file: !16, line: 108, baseType: !332, size: 64, align: 64, offset: 320)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "IpAddressStatus", file: !16, line: 96, baseType: !31)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "dnsConfigInfo", scope: !314, file: !16, line: 169, baseType: !335, size: 64, align: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "DnsConfigInfo", file: !16, line: 129, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DnsConfigInfo", file: !16, line: 117, size: 384, align: 64, elements: !338)
!338 = !{!339, !340, !341, !346}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "hostName", scope: !337, file: !16, line: 118, baseType: !168, size: 64, align: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "domainName", scope: !337, file: !16, line: 119, baseType: !168, size: 64, align: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "serverList", scope: !337, file: !16, line: 123, baseType: !342, size: 128, align: 64, offset: 128)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !337, file: !16, line: 120, size: 128, align: 64, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "serverList_len", scope: !342, file: !16, line: 121, baseType: !207, size: 32, align: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "serverList_val", scope: !342, file: !16, line: 122, baseType: !249, size: 64, align: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "searchSuffixes", scope: !337, file: !16, line: 127, baseType: !347, size: 128, align: 64, offset: 256)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !337, file: !16, line: 124, size: 128, align: 64, elements: !348)
!348 = !{!349, !350}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "searchSuffixes_len", scope: !347, file: !16, line: 125, baseType: !207, size: 32, align: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "searchSuffixes_val", scope: !347, file: !16, line: 126, baseType: !168, size: 64, align: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "winsConfigInfo", scope: !314, file: !16, line: 170, baseType: !352, size: 64, align: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "WinsConfigInfo", file: !16, line: 135, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WinsConfigInfo", file: !16, line: 131, size: 384, align: 64, elements: !355)
!355 = !{!356, !357}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !354, file: !16, line: 132, baseType: !250, size: 192, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !354, file: !16, line: 133, baseType: !250, size: 192, align: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov4", scope: !314, file: !16, line: 171, baseType: !359, size: 64, align: 64, offset: 320)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "DhcpConfigInfo", file: !16, line: 161, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DhcpConfigInfo", file: !16, line: 157, size: 128, align: 64, elements: !362)
!362 = !{!363, !364}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !361, file: !16, line: 158, baseType: !176, size: 32, align: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpSettings", scope: !361, file: !16, line: 159, baseType: !170, size: 64, align: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov6", scope: !314, file: !16, line: 172, baseType: !359, size: 64, align: 64, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "routes", scope: !305, file: !16, line: 184, baseType: !367, size: 128, align: 64, offset: 128)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !305, file: !16, line: 181, size: 128, align: 64, elements: !368)
!368 = !{!369, !370}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "routes_len", scope: !367, file: !16, line: 182, baseType: !207, size: 32, align: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "routes_val", scope: !367, file: !16, line: 183, baseType: !261, size: 64, align: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "dnsConfigInfo", scope: !305, file: !16, line: 185, baseType: !335, size: 64, align: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "winsConfigInfo", scope: !305, file: !16, line: 186, baseType: !352, size: 64, align: 64, offset: 320)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov4", scope: !305, file: !16, line: 187, baseType: !359, size: 64, align: 64, offset: 384)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov6", scope: !305, file: !16, line: 188, baseType: !359, size: 64, align: 64, offset: 448)
!375 = !DILocalVariable(name: "maxIPv4Routes", arg: 1, scope: !300, file: !279, line: 353, type: !138)
!376 = !DILocation(line: 353, column: 34, scope: !300)
!377 = !DILocalVariable(name: "maxIPv6Routes", arg: 2, scope: !300, file: !279, line: 354, type: !138)
!378 = !DILocation(line: 354, column: 34, scope: !300)
!379 = !DILocalVariable(name: "nicInfo", arg: 3, scope: !300, file: !279, line: 355, type: !303)
!380 = !DILocation(line: 355, column: 32, scope: !300)
!381 = !DILocalVariable(name: "ifaddrs", scope: !300, file: !279, line: 395, type: !382)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifaddrs", file: !384, line: 29, size: 448, align: 64, elements: !385)
!384 = !DIFile(filename: "/usr/include/ifaddrs.h", directory: "/home/lichi/Desktop/open-vm-tools/line766")
!385 = !{!386, !387, !388, !389, !390, !391, !396}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_next", scope: !383, file: !384, line: 31, baseType: !382, size: 64, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_name", scope: !383, file: !384, line: 33, baseType: !170, size: 64, align: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_flags", scope: !383, file: !384, line: 34, baseType: !138, size: 32, align: 32, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_addr", scope: !383, file: !384, line: 36, baseType: !115, size: 64, align: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_netmask", scope: !383, file: !384, line: 37, baseType: !115, size: 64, align: 64, offset: 256)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_ifu", scope: !383, file: !384, line: 46, baseType: !392, size: 64, align: 64, offset: 320)
!392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !383, file: !384, line: 38, size: 64, align: 64, elements: !393)
!393 = !{!394, !395}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "ifu_broadaddr", scope: !392, file: !384, line: 44, baseType: !115, size: 64, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "ifu_dstaddr", scope: !392, file: !384, line: 45, baseType: !115, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_data", scope: !383, file: !384, line: 56, baseType: !84, size: 64, align: 64, offset: 384)
!397 = !DILocation(line: 395, column: 20, scope: !300)
!398 = !DILocation(line: 397, column: 8, scope: !399)
!399 = distinct !DILexicalBlock(scope: !300, file: !279, line: 397, column: 8)
!400 = !DILocation(line: 397, column: 29, scope: !399)
!401 = !DILocation(line: 397, column: 34, scope: !399)
!402 = !DILocation(line: 397, column: 37, scope: !403)
!403 = !DILexicalBlockFile(scope: !399, file: !279, discriminator: 1)
!404 = !DILocation(line: 397, column: 45, scope: !403)
!405 = !DILocation(line: 397, column: 8, scope: !403)
!406 = !DILocalVariable(name: "priority", scope: !407, file: !279, line: 398, type: !408)
!407 = distinct !DILexicalBlock(scope: !399, file: !279, line: 397, column: 53)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "NicInfoPriority", file: !48, line: 39, baseType: !47)
!409 = !DILocation(line: 398, column: 23, scope: !407)
!410 = !DILocation(line: 403, column: 21, scope: !411)
!411 = distinct !DILexicalBlock(scope: !407, file: !279, line: 403, column: 7)
!412 = !DILocation(line: 403, column: 12, scope: !411)
!413 = !DILocation(line: 404, column: 12, scope: !414)
!414 = distinct !DILexicalBlock(scope: !411, file: !279, line: 403, column: 7)
!415 = !DILocation(line: 404, column: 21, scope: !414)
!416 = !DILocation(line: 403, column: 7, scope: !417)
!417 = !DILexicalBlockFile(scope: !411, file: !279, discriminator: 1)
!418 = !DILocation(line: 406, column: 32, scope: !419)
!419 = distinct !DILexicalBlock(scope: !414, file: !279, line: 405, column: 24)
!420 = !DILocation(line: 406, column: 41, scope: !419)
!421 = !DILocation(line: 406, column: 51, scope: !419)
!422 = !DILocation(line: 406, column: 10, scope: !419)
!423 = !DILocation(line: 407, column: 7, scope: !419)
!424 = !DILocation(line: 405, column: 20, scope: !414)
!425 = !DILocation(line: 403, column: 7, scope: !426)
!426 = !DILexicalBlockFile(scope: !414, file: !279, discriminator: 2)
!427 = distinct !{!427, !428}
!428 = !DILocation(line: 403, column: 7, scope: !407)
!429 = !DILocation(line: 408, column: 19, scope: !407)
!430 = !DILocation(line: 408, column: 7, scope: !407)
!431 = !DILocation(line: 409, column: 4, scope: !407)
!432 = !DILocation(line: 412, column: 28, scope: !433)
!433 = distinct !DILexicalBlock(scope: !300, file: !279, line: 412, column: 8)
!434 = !DILocation(line: 412, column: 9, scope: !433)
!435 = !DILocation(line: 412, column: 8, scope: !300)
!436 = !DILocation(line: 413, column: 7, scope: !437)
!437 = distinct !DILexicalBlock(scope: !433, file: !279, line: 412, column: 38)
!438 = !DILocation(line: 417, column: 9, scope: !439)
!439 = distinct !DILexicalBlock(scope: !300, file: !279, line: 417, column: 8)
!440 = !DILocation(line: 417, column: 23, scope: !439)
!441 = !DILocation(line: 417, column: 27, scope: !439)
!442 = !DILocation(line: 417, column: 30, scope: !443)
!443 = !DILexicalBlockFile(scope: !439, file: !279, discriminator: 1)
!444 = !DILocation(line: 417, column: 44, scope: !443)
!445 = !DILocation(line: 417, column: 49, scope: !443)
!446 = !DILocation(line: 418, column: 27, scope: !439)
!447 = !DILocation(line: 418, column: 42, scope: !439)
!448 = !DILocation(line: 418, column: 57, scope: !439)
!449 = !DILocation(line: 418, column: 9, scope: !439)
!450 = !DILocation(line: 417, column: 8, scope: !451)
!451 = !DILexicalBlockFile(scope: !300, file: !279, discriminator: 2)
!452 = !DILocation(line: 419, column: 7, scope: !453)
!453 = distinct !DILexicalBlock(scope: !439, file: !279, line: 418, column: 67)
!454 = !DILocation(line: 422, column: 4, scope: !300)
!455 = !DILocation(line: 430, column: 1, scope: !300)
!456 = distinct !DISubprogram(name: "GuestInfoGetInterface", scope: !279, file: !279, line: 258, type: !457, isLocal: true, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !382, !408, !303}
!459 = !DILocalVariable(name: "ifaddrs", arg: 1, scope: !456, file: !279, line: 258, type: !382)
!460 = !DILocation(line: 258, column: 39, scope: !456)
!461 = !DILocalVariable(name: "priority", arg: 2, scope: !456, file: !279, line: 259, type: !408)
!462 = !DILocation(line: 259, column: 39, scope: !456)
!463 = !DILocalVariable(name: "nicInfo", arg: 3, scope: !456, file: !279, line: 260, type: !303)
!464 = !DILocation(line: 260, column: 34, scope: !456)
!465 = !DILocalVariable(name: "pkt", scope: !456, file: !279, line: 262, type: !382)
!466 = !DILocation(line: 262, column: 20, scope: !456)
!467 = !DILocation(line: 268, column: 15, scope: !468)
!468 = distinct !DILexicalBlock(scope: !456, file: !279, line: 268, column: 4)
!469 = !DILocation(line: 268, column: 13, scope: !468)
!470 = !DILocation(line: 268, column: 9, scope: !468)
!471 = !DILocation(line: 268, column: 24, scope: !472)
!472 = !DILexicalBlockFile(scope: !473, file: !279, discriminator: 1)
!473 = distinct !DILexicalBlock(scope: !468, file: !279, line: 268, column: 4)
!474 = !DILocation(line: 268, column: 28, scope: !472)
!475 = !DILocation(line: 268, column: 4, scope: !472)
!476 = !DILocalVariable(name: "nic", scope: !477, file: !279, line: 269, type: !312)
!477 = distinct !DILexicalBlock(scope: !473, file: !279, line: 268, column: 57)
!478 = !DILocation(line: 269, column: 19, scope: !477)
!479 = !DILocalVariable(name: "ip", scope: !477, file: !279, line: 270, type: !382)
!480 = !DILocation(line: 270, column: 23, scope: !477)
!481 = !DILocalVariable(name: "sll", scope: !477, file: !279, line: 271, type: !99)
!482 = !DILocation(line: 271, column: 27, scope: !477)
!483 = !DILocation(line: 271, column: 55, scope: !477)
!484 = !DILocation(line: 271, column: 60, scope: !477)
!485 = !DILocation(line: 271, column: 33, scope: !477)
!486 = !DILocation(line: 273, column: 38, scope: !487)
!487 = distinct !DILexicalBlock(scope: !477, file: !279, line: 273, column: 11)
!488 = !DILocation(line: 273, column: 43, scope: !487)
!489 = !DILocation(line: 273, column: 11, scope: !487)
!490 = !DILocation(line: 273, column: 56, scope: !487)
!491 = !DILocation(line: 273, column: 53, scope: !487)
!492 = !DILocation(line: 273, column: 65, scope: !487)
!493 = !DILocation(line: 274, column: 37, scope: !487)
!494 = !DILocation(line: 274, column: 42, scope: !487)
!495 = !DILocation(line: 274, column: 11, scope: !487)
!496 = !DILocation(line: 273, column: 11, scope: !497)
!497 = !DILexicalBlockFile(scope: !477, file: !279, discriminator: 1)
!498 = !DILocation(line: 275, column: 10, scope: !499)
!499 = distinct !DILexicalBlock(scope: !487, file: !279, line: 274, column: 53)
!500 = !DILocation(line: 278, column: 11, scope: !501)
!501 = distinct !DILexicalBlock(scope: !477, file: !279, line: 278, column: 11)
!502 = !DILocation(line: 278, column: 15, scope: !501)
!503 = !DILocation(line: 278, column: 22, scope: !501)
!504 = !DILocation(line: 278, column: 25, scope: !505)
!505 = !DILexicalBlockFile(scope: !501, file: !279, discriminator: 1)
!506 = !DILocation(line: 278, column: 30, scope: !505)
!507 = !DILocation(line: 278, column: 41, scope: !505)
!508 = !DILocation(line: 278, column: 11, scope: !505)
!509 = !DILocalVariable(name: "macAddress", scope: !510, file: !279, line: 279, type: !511)
!510 = distinct !DILexicalBlock(scope: !501, file: !279, line: 278, column: 55)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 144, align: 8, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 18)
!514 = !DILocation(line: 279, column: 15, scope: !510)
!515 = !DILocation(line: 280, column: 22, scope: !510)
!516 = !DILocation(line: 282, column: 22, scope: !510)
!517 = !DILocation(line: 282, column: 27, scope: !510)
!518 = !DILocation(line: 282, column: 40, scope: !510)
!519 = !DILocation(line: 282, column: 45, scope: !510)
!520 = !DILocation(line: 282, column: 58, scope: !510)
!521 = !DILocation(line: 282, column: 63, scope: !510)
!522 = !DILocation(line: 283, column: 22, scope: !510)
!523 = !DILocation(line: 283, column: 27, scope: !510)
!524 = !DILocation(line: 283, column: 40, scope: !510)
!525 = !DILocation(line: 283, column: 45, scope: !510)
!526 = !DILocation(line: 283, column: 58, scope: !510)
!527 = !DILocation(line: 283, column: 63, scope: !510)
!528 = !DILocation(line: 280, column: 10, scope: !510)
!529 = !DILocation(line: 284, column: 37, scope: !510)
!530 = !DILocation(line: 284, column: 46, scope: !510)
!531 = !DILocation(line: 284, column: 16, scope: !510)
!532 = !DILocation(line: 284, column: 14, scope: !510)
!533 = !DILocation(line: 285, column: 14, scope: !534)
!534 = distinct !DILexicalBlock(scope: !510, file: !279, line: 285, column: 14)
!535 = !DILocation(line: 285, column: 18, scope: !534)
!536 = !DILocation(line: 285, column: 14, scope: !510)
!537 = !DILocation(line: 289, column: 13, scope: !538)
!538 = distinct !DILexicalBlock(scope: !534, file: !279, line: 285, column: 26)
!539 = !DILocation(line: 295, column: 20, scope: !540)
!540 = distinct !DILexicalBlock(scope: !510, file: !279, line: 295, column: 10)
!541 = !DILocation(line: 295, column: 18, scope: !540)
!542 = !DILocation(line: 295, column: 15, scope: !540)
!543 = !DILocation(line: 295, column: 29, scope: !544)
!544 = !DILexicalBlockFile(scope: !545, file: !279, discriminator: 1)
!545 = distinct !DILexicalBlock(scope: !540, file: !279, line: 295, column: 10)
!546 = !DILocation(line: 295, column: 32, scope: !544)
!547 = !DILocation(line: 295, column: 10, scope: !544)
!548 = !DILocalVariable(name: "sa", scope: !549, file: !279, line: 296, type: !115)
!549 = distinct !DILexicalBlock(scope: !545, file: !279, line: 295, column: 59)
!550 = !DILocation(line: 296, column: 30, scope: !549)
!551 = !DILocation(line: 296, column: 54, scope: !549)
!552 = !DILocation(line: 296, column: 58, scope: !549)
!553 = !DILocation(line: 297, column: 17, scope: !554)
!554 = distinct !DILexicalBlock(scope: !549, file: !279, line: 297, column: 17)
!555 = !DILocation(line: 297, column: 20, scope: !554)
!556 = !DILocation(line: 297, column: 27, scope: !554)
!557 = !DILocation(line: 298, column: 25, scope: !554)
!558 = !DILocation(line: 298, column: 29, scope: !554)
!559 = !DILocation(line: 298, column: 39, scope: !554)
!560 = !DILocation(line: 298, column: 44, scope: !554)
!561 = !DILocation(line: 298, column: 17, scope: !554)
!562 = !DILocation(line: 298, column: 63, scope: !554)
!563 = !DILocation(line: 297, column: 17, scope: !564)
!564 = !DILexicalBlockFile(scope: !549, file: !279, discriminator: 1)
!565 = !DILocalVariable(name: "family", scope: !566, file: !279, line: 299, type: !106)
!566 = distinct !DILexicalBlock(scope: !554, file: !279, line: 298, column: 69)
!567 = !DILocation(line: 299, column: 20, scope: !566)
!568 = !DILocation(line: 299, column: 29, scope: !566)
!569 = !DILocation(line: 299, column: 33, scope: !566)
!570 = !DILocalVariable(name: "goodAddress", scope: !566, file: !279, line: 300, type: !282)
!571 = !DILocation(line: 300, column: 21, scope: !566)
!572 = !DILocalVariable(name: "nBits", scope: !566, file: !279, line: 301, type: !138)
!573 = !DILocation(line: 301, column: 25, scope: !566)
!574 = !DILocation(line: 305, column: 20, scope: !575)
!575 = distinct !DILexicalBlock(scope: !566, file: !279, line: 305, column: 20)
!576 = !DILocation(line: 305, column: 27, scope: !575)
!577 = !DILocation(line: 305, column: 20, scope: !566)
!578 = !DILocalVariable(name: "sin", scope: !579, file: !279, line: 306, type: !123)
!579 = distinct !DILexicalBlock(scope: !575, file: !279, line: 305, column: 38)
!580 = !DILocation(line: 306, column: 39, scope: !579)
!581 = !DILocation(line: 306, column: 67, scope: !579)
!582 = !DILocation(line: 306, column: 45, scope: !579)
!583 = !DILocation(line: 307, column: 30, scope: !584)
!584 = distinct !DILexicalBlock(scope: !579, file: !279, line: 307, column: 23)
!585 = !DILocation(line: 307, column: 35, scope: !584)
!586 = !DILocation(line: 307, column: 44, scope: !584)
!587 = !DILocation(line: 307, column: 24, scope: !584)
!588 = !DILocation(line: 307, column: 52, scope: !584)
!589 = !DILocation(line: 307, column: 72, scope: !584)
!590 = !DILocation(line: 307, column: 23, scope: !579)
!591 = !DILocation(line: 309, column: 49, scope: !592)
!592 = distinct !DILexicalBlock(scope: !584, file: !279, line: 308, column: 38)
!593 = !DILocation(line: 309, column: 53, scope: !592)
!594 = !DILocation(line: 309, column: 30, scope: !592)
!595 = !DILocation(line: 309, column: 28, scope: !592)
!596 = !DILocation(line: 310, column: 34, scope: !592)
!597 = !DILocation(line: 311, column: 19, scope: !592)
!598 = !DILocation(line: 312, column: 16, scope: !579)
!599 = !DILocation(line: 312, column: 27, scope: !600)
!600 = !DILexicalBlockFile(scope: !601, file: !279, discriminator: 1)
!601 = distinct !DILexicalBlock(scope: !575, file: !279, line: 312, column: 27)
!602 = !DILocation(line: 312, column: 34, scope: !600)
!603 = !DILocalVariable(name: "sin6", scope: !604, file: !279, line: 313, type: !140)
!604 = distinct !DILexicalBlock(scope: !601, file: !279, line: 312, column: 46)
!605 = !DILocation(line: 313, column: 40, scope: !604)
!606 = !DILocation(line: 313, column: 70, scope: !604)
!607 = !DILocation(line: 313, column: 47, scope: !604)
!608 = !DILocalVariable(name: "__a", scope: !609, file: !279, line: 314, type: !164)
!609 = distinct !DILexicalBlock(scope: !610, file: !279, line: 314, column: 39)
!610 = distinct !DILexicalBlock(scope: !604, file: !279, line: 314, column: 23)
!611 = !DILocation(line: 314, column: 64, scope: !609)
!612 = !DILocation(line: 314, column: 24, scope: !609)
!613 = !DILocation(line: 314, column: 30, scope: !609)
!614 = !DILocation(line: 314, column: 26, scope: !609)
!615 = !DILocation(line: 314, column: 31, scope: !609)
!616 = !DILocation(line: 314, column: 39, scope: !609)
!617 = !DILocation(line: 314, column: 54, scope: !609)
!618 = !DILocation(line: 314, column: 59, scope: !609)
!619 = !DILocation(line: 314, column: 62, scope: !620)
!620 = !DILexicalBlockFile(scope: !609, file: !279, discriminator: 1)
!621 = !DILocation(line: 314, column: 67, scope: !620)
!622 = !DILocation(line: 314, column: 75, scope: !620)
!623 = !DILocation(line: 314, column: 90, scope: !620)
!624 = !DILocation(line: 314, column: 95, scope: !620)
!625 = !DILocation(line: 314, column: 98, scope: !626)
!626 = !DILexicalBlockFile(scope: !609, file: !279, discriminator: 2)
!627 = !DILocation(line: 314, column: 103, scope: !626)
!628 = !DILocation(line: 314, column: 111, scope: !626)
!629 = !DILocation(line: 314, column: 126, scope: !626)
!630 = !DILocation(line: 314, column: 131, scope: !626)
!631 = !DILocation(line: 314, column: 134, scope: !632)
!632 = !DILexicalBlockFile(scope: !609, file: !279, discriminator: 3)
!633 = !DILocation(line: 314, column: 139, scope: !632)
!634 = !DILocation(line: 314, column: 147, scope: !632)
!635 = !DILocation(line: 314, column: 165, scope: !632)
!636 = !DILocation(line: 314, column: 162, scope: !632)
!637 = !DILocation(line: 314, column: 131, scope: !638)
!638 = !DILexicalBlockFile(scope: !609, file: !279, discriminator: 4)
!639 = !DILocation(line: 314, column: 41, scope: !638)
!640 = !DILocation(line: 314, column: 176, scope: !638)
!641 = !DILocation(line: 314, column: 38, scope: !638)
!642 = !DILocation(line: 314, column: 23, scope: !638)
!643 = !DILocation(line: 315, column: 49, scope: !644)
!644 = distinct !DILexicalBlock(scope: !610, file: !279, line: 314, column: 63)
!645 = !DILocation(line: 315, column: 53, scope: !644)
!646 = !DILocation(line: 315, column: 30, scope: !644)
!647 = !DILocation(line: 315, column: 28, scope: !644)
!648 = !DILocation(line: 316, column: 34, scope: !644)
!649 = !DILocation(line: 317, column: 19, scope: !644)
!650 = !DILocation(line: 318, column: 16, scope: !604)
!651 = !DILocation(line: 319, column: 20, scope: !652)
!652 = distinct !DILexicalBlock(scope: !566, file: !279, line: 319, column: 20)
!653 = !DILocation(line: 319, column: 20, scope: !566)
!654 = !DILocalVariable(name: "ent", scope: !655, file: !279, line: 320, type: !322)
!655 = distinct !DILexicalBlock(scope: !652, file: !279, line: 319, column: 33)
!656 = !DILocation(line: 320, column: 35, scope: !655)
!657 = !DILocation(line: 320, column: 63, scope: !655)
!658 = !DILocation(line: 321, column: 63, scope: !655)
!659 = !DILocation(line: 321, column: 67, scope: !655)
!660 = !DILocation(line: 322, column: 63, scope: !655)
!661 = !DILocation(line: 320, column: 41, scope: !655)
!662 = !DILocation(line: 324, column: 30, scope: !663)
!663 = distinct !DILexicalBlock(scope: !655, file: !279, line: 324, column: 22)
!664 = !DILocation(line: 324, column: 27, scope: !663)
!665 = !DILocation(line: 324, column: 22, scope: !655)
!666 = !DILocation(line: 328, column: 22, scope: !667)
!667 = distinct !DILexicalBlock(scope: !663, file: !279, line: 324, column: 35)
!668 = !DILocation(line: 330, column: 16, scope: !655)
!669 = !DILocation(line: 331, column: 13, scope: !566)
!670 = !DILocation(line: 332, column: 10, scope: !549)
!671 = !DILocation(line: 295, column: 45, scope: !672)
!672 = !DILexicalBlockFile(scope: !545, file: !279, discriminator: 2)
!673 = !DILocation(line: 295, column: 49, scope: !672)
!674 = !DILocation(line: 295, column: 43, scope: !672)
!675 = !DILocation(line: 295, column: 10, scope: !672)
!676 = distinct !{!676, !677}
!677 = !DILocation(line: 295, column: 10, scope: !510)
!678 = !DILocation(line: 333, column: 7, scope: !510)
!679 = !DILocation(line: 334, column: 4, scope: !477)
!680 = !DILocation(line: 268, column: 42, scope: !681)
!681 = !DILexicalBlockFile(scope: !473, file: !279, discriminator: 2)
!682 = !DILocation(line: 268, column: 47, scope: !681)
!683 = !DILocation(line: 268, column: 40, scope: !681)
!684 = !DILocation(line: 268, column: 4, scope: !681)
!685 = distinct !{!685, !686}
!686 = !DILocation(line: 268, column: 4, scope: !456)
!687 = !DILocation(line: 335, column: 1, scope: !456)
!688 = distinct !DISubprogram(name: "RecordResolverInfo", scope: !279, file: !279, line: 764, type: !689, isLocal: true, isDefinition: true, scopeLine: 765, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!689 = !DISubroutineType(types: !690)
!690 = !{!282, !303}
!691 = !DILocalVariable(name: "nicInfo", arg: 1, scope: !688, file: !279, line: 764, type: !303)
!692 = !DILocation(line: 764, column: 31, scope: !688)
!693 = !DILocalVariable(name: "dnsConfigInfo", scope: !688, file: !279, line: 766, type: !335)
!694 = !DILocation(line: 766, column: 19, scope: !688)
!695 = !DILocalVariable(name: "namebuf", scope: !688, file: !279, line: 767, type: !696)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 2048, align: 8, elements: !697)
!697 = !{!698}
!698 = !DISubrange(count: 256)
!699 = !DILocation(line: 767, column: 9, scope: !688)
!700 = !DILocalVariable(name: "s", scope: !688, file: !279, line: 768, type: !701)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!702 = !DILocation(line: 768, column: 11, scope: !688)
!703 = !DILocation(line: 770, column: 7, scope: !704)
!704 = distinct !DILexicalBlock(scope: !688, file: !279, line: 770, column: 7)
!705 = !DILocation(line: 770, column: 18, scope: !704)
!706 = !DILocation(line: 770, column: 7, scope: !688)
!707 = !DILocation(line: 771, column: 7, scope: !708)
!708 = distinct !DILexicalBlock(scope: !704, file: !279, line: 770, column: 25)
!709 = !DILocation(line: 774, column: 20, scope: !688)
!710 = !DILocation(line: 774, column: 18, scope: !688)
!711 = !DILocation(line: 779, column: 42, scope: !712)
!712 = distinct !DILexicalBlock(scope: !688, file: !279, line: 779, column: 8)
!713 = !DILocation(line: 779, column: 9, scope: !712)
!714 = !DILocation(line: 779, column: 8, scope: !688)
!715 = !DILocation(line: 780, column: 1, scope: !716)
!716 = distinct !DILexicalBlock(scope: !712, file: !279, line: 779, column: 52)
!717 = !DILocation(line: 781, column: 7, scope: !716)
!718 = !DILocation(line: 784, column: 7, scope: !688)
!719 = !DILocation(line: 783, column: 4, scope: !688)
!720 = !DILocation(line: 783, column: 19, scope: !688)
!721 = !DILocation(line: 783, column: 28, scope: !688)
!722 = !DILocation(line: 785, column: 47, scope: !688)
!723 = !DILocation(line: 785, column: 31, scope: !688)
!724 = !DILocation(line: 785, column: 5, scope: !688)
!725 = !DILocation(line: 785, column: 20, scope: !688)
!726 = !DILocation(line: 785, column: 29, scope: !688)
!727 = !DILocation(line: 791, column: 7, scope: !688)
!728 = !DILocation(line: 790, column: 4, scope: !688)
!729 = !DILocation(line: 790, column: 19, scope: !688)
!730 = !DILocation(line: 790, column: 30, scope: !688)
!731 = !DILocation(line: 791, column: 34, scope: !732)
!732 = !DILexicalBlockFile(scope: !688, file: !279, discriminator: 1)
!733 = !DILocation(line: 791, column: 33, scope: !688)
!734 = !DILocation(line: 792, column: 49, scope: !688)
!735 = !DILocation(line: 792, column: 33, scope: !688)
!736 = !DILocation(line: 792, column: 5, scope: !688)
!737 = !DILocation(line: 792, column: 20, scope: !688)
!738 = !DILocation(line: 792, column: 31, scope: !688)
!739 = !DILocation(line: 796, column: 21, scope: !688)
!740 = !DILocation(line: 796, column: 4, scope: !688)
!741 = !DILocation(line: 801, column: 14, scope: !742)
!742 = distinct !DILexicalBlock(scope: !688, file: !279, line: 801, column: 4)
!743 = !DILocation(line: 801, column: 17, scope: !742)
!744 = !DILocation(line: 801, column: 12, scope: !742)
!745 = !DILocation(line: 801, column: 11, scope: !742)
!746 = !DILocation(line: 801, column: 9, scope: !742)
!747 = !DILocation(line: 801, column: 26, scope: !748)
!748 = !DILexicalBlockFile(scope: !749, file: !279, discriminator: 1)
!749 = distinct !DILexicalBlock(scope: !742, file: !279, line: 801, column: 4)
!750 = !DILocation(line: 801, column: 25, scope: !748)
!751 = !DILocation(line: 801, column: 4, scope: !748)
!752 = !DILocalVariable(name: "suffix", scope: !753, file: !279, line: 802, type: !168)
!753 = distinct !DILexicalBlock(scope: !749, file: !279, line: 801, column: 34)
!754 = !DILocation(line: 802, column: 20, scope: !753)
!755 = !DILocation(line: 805, column: 11, scope: !756)
!756 = distinct !DILexicalBlock(scope: !753, file: !279, line: 805, column: 11)
!757 = !DILocation(line: 805, column: 26, scope: !756)
!758 = !DILocation(line: 805, column: 41, scope: !756)
!759 = !DILocation(line: 805, column: 60, scope: !756)
!760 = !DILocation(line: 805, column: 11, scope: !753)
!761 = !DILocation(line: 806, column: 10, scope: !762)
!762 = distinct !DILexicalBlock(scope: !756, file: !279, line: 805, column: 67)
!763 = !DILocation(line: 808, column: 10, scope: !762)
!764 = !DILocation(line: 811, column: 110, scope: !753)
!765 = !DILocation(line: 811, column: 126, scope: !753)
!766 = !DILocation(line: 811, column: 141, scope: !753)
!767 = !DILocation(line: 811, column: 98, scope: !753)
!768 = !DILocation(line: 811, column: 163, scope: !753)
!769 = !DILocation(line: 811, column: 179, scope: !753)
!770 = !DILocation(line: 811, column: 194, scope: !753)
!771 = !DILocation(line: 811, column: 78, scope: !753)
!772 = !DILocation(line: 811, column: 16, scope: !753)
!773 = !DILocation(line: 811, column: 14, scope: !753)
!774 = !DILocation(line: 812, column: 33, scope: !775)
!775 = distinct !DILexicalBlock(scope: !776, file: !279, line: 812, column: 13)
!776 = distinct !DILexicalBlock(scope: !753, file: !279, line: 812, column: 8)
!777 = !DILocation(line: 812, column: 31, scope: !775)
!778 = !DILocation(line: 812, column: 30, scope: !775)
!779 = !DILocation(line: 812, column: 13, scope: !775)
!780 = !DILocation(line: 812, column: 13, scope: !776)
!781 = !DILocation(line: 812, column: 49, scope: !782)
!782 = !DILexicalBlockFile(scope: !783, file: !279, discriminator: 1)
!783 = distinct !DILexicalBlock(scope: !775, file: !279, line: 812, column: 47)
!784 = !DILocation(line: 813, column: 35, scope: !753)
!785 = !DILocation(line: 813, column: 34, scope: !753)
!786 = !DILocation(line: 813, column: 17, scope: !753)
!787 = !DILocation(line: 813, column: 8, scope: !753)
!788 = !DILocation(line: 813, column: 15, scope: !753)
!789 = !DILocation(line: 814, column: 4, scope: !753)
!790 = !DILocation(line: 801, column: 30, scope: !791)
!791 = !DILexicalBlockFile(scope: !749, file: !279, discriminator: 2)
!792 = !DILocation(line: 801, column: 4, scope: !791)
!793 = distinct !{!793, !794}
!794 = !DILocation(line: 801, column: 4, scope: !688)
!795 = !DILocation(line: 819, column: 29, scope: !688)
!796 = !DILocation(line: 819, column: 4, scope: !688)
!797 = !DILocation(line: 819, column: 13, scope: !688)
!798 = !DILocation(line: 819, column: 27, scope: !688)
!799 = !DILocation(line: 821, column: 4, scope: !688)
!800 = !DILocation(line: 824, column: 54, scope: !688)
!801 = !DILocation(line: 824, column: 45, scope: !688)
!802 = !DILocation(line: 824, column: 4, scope: !688)
!803 = !DILocation(line: 825, column: 9, scope: !688)
!804 = !DILocation(line: 825, column: 4, scope: !688)
!805 = !DILocation(line: 826, column: 4, scope: !688)
!806 = !DILocation(line: 827, column: 1, scope: !688)
!807 = distinct !DISubprogram(name: "RecordRoutingInfo", scope: !279, file: !279, line: 1140, type: !301, isLocal: true, isDefinition: true, scopeLine: 1143, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!808 = !DILocalVariable(name: "maxIPv4Routes", arg: 1, scope: !807, file: !279, line: 1140, type: !138)
!809 = !DILocation(line: 1140, column: 32, scope: !807)
!810 = !DILocalVariable(name: "maxIPv6Routes", arg: 2, scope: !807, file: !279, line: 1141, type: !138)
!811 = !DILocation(line: 1141, column: 32, scope: !807)
!812 = !DILocalVariable(name: "nicInfo", arg: 3, scope: !807, file: !279, line: 1142, type: !303)
!813 = !DILocation(line: 1142, column: 30, scope: !807)
!814 = !DILocalVariable(name: "retIPv4", scope: !807, file: !279, line: 1144, type: !282)
!815 = !DILocation(line: 1144, column: 9, scope: !807)
!816 = !DILocalVariable(name: "retIPv6", scope: !807, file: !279, line: 1145, type: !282)
!817 = !DILocation(line: 1145, column: 9, scope: !807)
!818 = !DILocation(line: 1156, column: 8, scope: !819)
!819 = distinct !DILexicalBlock(scope: !807, file: !279, line: 1156, column: 8)
!820 = !DILocation(line: 1156, column: 22, scope: !819)
!821 = !DILocation(line: 1156, column: 8, scope: !807)
!822 = !DILocation(line: 1157, column: 33, scope: !823)
!823 = distinct !DILexicalBlock(scope: !824, file: !279, line: 1157, column: 11)
!824 = distinct !DILexicalBlock(scope: !819, file: !279, line: 1156, column: 27)
!825 = !DILocation(line: 1157, column: 48, scope: !823)
!826 = !DILocation(line: 1157, column: 11, scope: !823)
!827 = !DILocation(line: 1157, column: 11, scope: !824)
!828 = !DILocation(line: 1158, column: 18, scope: !829)
!829 = distinct !DILexicalBlock(scope: !823, file: !279, line: 1157, column: 58)
!830 = !DILocation(line: 1159, column: 7, scope: !829)
!831 = !DILocation(line: 1160, column: 10, scope: !832)
!832 = distinct !DILexicalBlock(scope: !823, file: !279, line: 1159, column: 14)
!833 = !DILocation(line: 1162, column: 4, scope: !824)
!834 = !DILocation(line: 1164, column: 8, scope: !835)
!835 = distinct !DILexicalBlock(scope: !807, file: !279, line: 1164, column: 8)
!836 = !DILocation(line: 1164, column: 22, scope: !835)
!837 = !DILocation(line: 1164, column: 26, scope: !835)
!838 = !DILocation(line: 1164, column: 29, scope: !839)
!839 = !DILexicalBlockFile(scope: !835, file: !279, discriminator: 1)
!840 = !DILocation(line: 1164, column: 38, scope: !839)
!841 = !DILocation(line: 1164, column: 45, scope: !839)
!842 = !DILocation(line: 1164, column: 56, scope: !839)
!843 = !DILocation(line: 1164, column: 8, scope: !839)
!844 = !DILocation(line: 1165, column: 33, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !279, line: 1165, column: 11)
!846 = distinct !DILexicalBlock(scope: !835, file: !279, line: 1164, column: 63)
!847 = !DILocation(line: 1165, column: 48, scope: !845)
!848 = !DILocation(line: 1165, column: 11, scope: !845)
!849 = !DILocation(line: 1165, column: 11, scope: !846)
!850 = !DILocation(line: 1166, column: 18, scope: !851)
!851 = distinct !DILexicalBlock(scope: !845, file: !279, line: 1165, column: 58)
!852 = !DILocation(line: 1167, column: 7, scope: !851)
!853 = !DILocation(line: 1168, column: 10, scope: !854)
!854 = distinct !DILexicalBlock(scope: !845, file: !279, line: 1167, column: 14)
!855 = !DILocation(line: 1170, column: 4, scope: !846)
!856 = !DILocation(line: 1172, column: 12, scope: !807)
!857 = !DILocation(line: 1172, column: 20, scope: !807)
!858 = !DILocation(line: 1172, column: 23, scope: !859)
!859 = !DILexicalBlockFile(scope: !807, file: !279, discriminator: 1)
!860 = !DILocation(line: 1172, column: 20, scope: !859)
!861 = !DILocation(line: 1172, column: 20, scope: !862)
!862 = !DILexicalBlockFile(scope: !807, file: !279, discriminator: 2)
!863 = !DILocation(line: 1172, column: 11, scope: !862)
!864 = !DILocation(line: 1172, column: 4, scope: !862)
!865 = distinct !DISubprogram(name: "GuestInfoGetPrimaryIP", scope: !279, file: !279, line: 447, type: !866, isLocal: false, isDefinition: true, scopeLine: 448, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!866 = !DISubroutineType(types: !867)
!867 = !{!170}
!868 = !DILocalVariable(name: "ifaces", scope: !865, file: !279, line: 449, type: !382)
!869 = !DILocation(line: 449, column: 20, scope: !865)
!870 = !DILocalVariable(name: "curr", scope: !865, file: !279, line: 450, type: !382)
!871 = !DILocation(line: 450, column: 20, scope: !865)
!872 = !DILocalVariable(name: "ipstr", scope: !865, file: !279, line: 451, type: !170)
!873 = !DILocation(line: 451, column: 10, scope: !865)
!874 = !DILocalVariable(name: "currIpstr", scope: !865, file: !279, line: 452, type: !170)
!875 = !DILocation(line: 452, column: 10, scope: !865)
!876 = !DILocalVariable(name: "currPri", scope: !865, file: !279, line: 453, type: !408)
!877 = !DILocation(line: 453, column: 20, scope: !865)
!878 = !DILocation(line: 459, column: 8, scope: !879)
!879 = distinct !DILexicalBlock(scope: !865, file: !279, line: 459, column: 8)
!880 = !DILocation(line: 459, column: 28, scope: !879)
!881 = !DILocation(line: 459, column: 8, scope: !865)
!882 = !DILocation(line: 460, column: 14, scope: !883)
!883 = distinct !DILexicalBlock(scope: !879, file: !279, line: 459, column: 33)
!884 = !DILocation(line: 460, column: 7, scope: !883)
!885 = !DILocation(line: 468, column: 16, scope: !886)
!886 = distinct !DILexicalBlock(scope: !865, file: !279, line: 468, column: 4)
!887 = !DILocation(line: 468, column: 14, scope: !886)
!888 = !DILocation(line: 468, column: 9, scope: !886)
!889 = !DILocation(line: 468, column: 24, scope: !890)
!890 = !DILexicalBlockFile(scope: !891, file: !279, discriminator: 1)
!891 = distinct !DILexicalBlock(scope: !886, file: !279, line: 468, column: 4)
!892 = !DILocation(line: 468, column: 29, scope: !890)
!893 = !DILocation(line: 468, column: 4, scope: !890)
!894 = !DILocalVariable(name: "currFamily", scope: !895, file: !279, line: 469, type: !106)
!895 = distinct !DILexicalBlock(scope: !891, file: !279, line: 468, column: 60)
!896 = !DILocation(line: 469, column: 11, scope: !895)
!897 = !DILocation(line: 469, column: 52, scope: !895)
!898 = !DILocation(line: 469, column: 58, scope: !895)
!899 = !DILocation(line: 469, column: 69, scope: !895)
!900 = !DILocation(line: 469, column: 24, scope: !895)
!901 = !DILocation(line: 471, column: 13, scope: !902)
!902 = distinct !DILexicalBlock(scope: !895, file: !279, line: 471, column: 11)
!903 = !DILocation(line: 471, column: 19, scope: !902)
!904 = !DILocation(line: 471, column: 29, scope: !902)
!905 = !DILocation(line: 471, column: 38, scope: !902)
!906 = !DILocation(line: 471, column: 41, scope: !907)
!907 = !DILexicalBlockFile(scope: !902, file: !279, discriminator: 1)
!908 = !DILocation(line: 471, column: 47, scope: !907)
!909 = !DILocation(line: 471, column: 57, scope: !907)
!910 = !DILocation(line: 471, column: 11, scope: !907)
!911 = !DILocation(line: 472, column: 10, scope: !912)
!912 = distinct !DILexicalBlock(scope: !902, file: !279, line: 471, column: 73)
!913 = !DILocation(line: 473, column: 44, scope: !914)
!914 = distinct !DILexicalBlock(scope: !902, file: !279, line: 473, column: 18)
!915 = !DILocation(line: 473, column: 50, scope: !914)
!916 = !DILocation(line: 473, column: 18, scope: !914)
!917 = !DILocation(line: 473, column: 18, scope: !902)
!918 = !DILocation(line: 474, column: 10, scope: !919)
!919 = distinct !DILexicalBlock(scope: !914, file: !279, line: 473, column: 61)
!920 = !DILocation(line: 475, column: 18, scope: !921)
!921 = distinct !DILexicalBlock(scope: !914, file: !279, line: 475, column: 18)
!922 = !DILocation(line: 475, column: 29, scope: !921)
!923 = !DILocation(line: 475, column: 39, scope: !921)
!924 = !DILocation(line: 475, column: 42, scope: !925)
!925 = !DILexicalBlockFile(scope: !921, file: !279, discriminator: 1)
!926 = !DILocation(line: 475, column: 53, scope: !925)
!927 = !DILocation(line: 475, column: 18, scope: !925)
!928 = !DILocation(line: 476, column: 41, scope: !929)
!929 = distinct !DILexicalBlock(scope: !921, file: !279, line: 475, column: 66)
!930 = !DILocation(line: 476, column: 47, scope: !929)
!931 = !DILocation(line: 476, column: 18, scope: !929)
!932 = !DILocation(line: 476, column: 16, scope: !929)
!933 = !DILocation(line: 477, column: 7, scope: !929)
!934 = !DILocation(line: 478, column: 10, scope: !935)
!935 = distinct !DILexicalBlock(scope: !921, file: !279, line: 477, column: 14)
!936 = !DILocation(line: 481, column: 11, scope: !937)
!937 = distinct !DILexicalBlock(scope: !895, file: !279, line: 481, column: 11)
!938 = !DILocation(line: 481, column: 17, scope: !937)
!939 = !DILocation(line: 481, column: 11, scope: !895)
!940 = !DILocalVariable(name: "pri", scope: !941, file: !279, line: 482, type: !408)
!941 = distinct !DILexicalBlock(scope: !937, file: !279, line: 481, column: 25)
!942 = !DILocation(line: 482, column: 26, scope: !941)
!943 = !DILocation(line: 482, column: 59, scope: !941)
!944 = !DILocation(line: 482, column: 65, scope: !941)
!945 = !DILocation(line: 482, column: 32, scope: !941)
!946 = !DILocation(line: 483, column: 14, scope: !947)
!947 = distinct !DILexicalBlock(scope: !941, file: !279, line: 483, column: 14)
!948 = !DILocation(line: 483, column: 20, scope: !947)
!949 = !DILocation(line: 483, column: 18, scope: !947)
!950 = !DILocation(line: 483, column: 14, scope: !941)
!951 = !DILocation(line: 484, column: 116, scope: !952)
!952 = distinct !DILexicalBlock(scope: !947, file: !279, line: 483, column: 29)
!953 = !DILocation(line: 484, column: 122, scope: !952)
!954 = !DILocation(line: 484, column: 132, scope: !952)
!955 = !DILocation(line: 484, column: 137, scope: !952)
!956 = !DILocation(line: 484, column: 146, scope: !952)
!957 = !DILocation(line: 484, column: 13, scope: !952)
!958 = !DILocation(line: 486, column: 20, scope: !952)
!959 = !DILocation(line: 486, column: 13, scope: !952)
!960 = !DILocation(line: 487, column: 25, scope: !952)
!961 = !DILocation(line: 487, column: 23, scope: !952)
!962 = !DILocation(line: 488, column: 23, scope: !952)
!963 = !DILocation(line: 488, column: 21, scope: !952)
!964 = !DILocation(line: 489, column: 17, scope: !965)
!965 = distinct !DILexicalBlock(scope: !952, file: !279, line: 489, column: 17)
!966 = !DILocation(line: 489, column: 21, scope: !965)
!967 = !DILocation(line: 489, column: 17, scope: !952)
!968 = !DILocation(line: 491, column: 16, scope: !969)
!969 = distinct !DILexicalBlock(scope: !965, file: !279, line: 489, column: 50)
!970 = !DILocation(line: 493, column: 10, scope: !952)
!971 = !DILocation(line: 494, column: 7, scope: !941)
!972 = !DILocation(line: 495, column: 4, scope: !895)
!973 = !DILocation(line: 468, column: 44, scope: !974)
!974 = !DILexicalBlockFile(scope: !891, file: !279, discriminator: 2)
!975 = !DILocation(line: 468, column: 50, scope: !974)
!976 = !DILocation(line: 468, column: 42, scope: !974)
!977 = !DILocation(line: 468, column: 4, scope: !974)
!978 = distinct !{!978, !979}
!979 = !DILocation(line: 468, column: 4, scope: !865)
!980 = !DILocation(line: 497, column: 16, scope: !865)
!981 = !DILocation(line: 497, column: 4, scope: !865)
!982 = !DILocation(line: 499, column: 11, scope: !865)
!983 = !DILocation(line: 499, column: 4, scope: !865)
!984 = !DILocation(line: 500, column: 1, scope: !865)
!985 = distinct !DISubprogram(name: "ValidateConvertAddress", scope: !279, file: !279, line: 1256, type: !986, isLocal: true, isDefinition: true, scopeLine: 1257, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!986 = !DISubroutineType(types: !987)
!987 = !{!170, !988}
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64, align: 64)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!990 = !DILocalVariable(name: "addr", arg: 1, scope: !985, file: !279, line: 1256, type: !988)
!991 = !DILocation(line: 1256, column: 47, scope: !985)
!992 = !DILocalVariable(name: "ipstr", scope: !985, file: !279, line: 1258, type: !993)
!993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 368, align: 8, elements: !994)
!994 = !{!995}
!995 = !DISubrange(count: 46)
!996 = !DILocation(line: 1258, column: 9, scope: !985)
!997 = !DILocation(line: 1260, column: 8, scope: !998)
!998 = distinct !DILexicalBlock(scope: !985, file: !279, line: 1260, column: 8)
!999 = !DILocation(line: 1260, column: 14, scope: !998)
!1000 = !DILocation(line: 1260, column: 24, scope: !998)
!1001 = !DILocation(line: 1260, column: 8, scope: !985)
!1002 = !DILocalVariable(name: "addr4", scope: !1003, file: !279, line: 1261, type: !123)
!1003 = distinct !DILexicalBlock(scope: !998, file: !279, line: 1260, column: 35)
!1004 = !DILocation(line: 1261, column: 27, scope: !1003)
!1005 = !DILocation(line: 1261, column: 57, scope: !1003)
!1006 = !DILocation(line: 1261, column: 35, scope: !1003)
!1007 = !DILocation(line: 1263, column: 11, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1003, file: !279, line: 1263, column: 11)
!1009 = !DILocation(line: 1263, column: 18, scope: !1008)
!1010 = !DILocation(line: 1263, column: 27, scope: !1008)
!1011 = !DILocation(line: 1263, column: 37, scope: !1008)
!1012 = !DILocation(line: 1263, column: 34, scope: !1008)
!1013 = !DILocation(line: 1263, column: 59, scope: !1008)
!1014 = !DILocation(line: 1264, column: 11, scope: !1008)
!1015 = !DILocation(line: 1264, column: 18, scope: !1008)
!1016 = !DILocation(line: 1264, column: 27, scope: !1008)
!1017 = !DILocation(line: 1264, column: 37, scope: !1008)
!1018 = !DILocation(line: 1264, column: 34, scope: !1008)
!1019 = !DILocation(line: 1264, column: 54, scope: !1008)
!1020 = !DILocation(line: 1265, column: 22, scope: !1008)
!1021 = !DILocation(line: 1265, column: 28, scope: !1008)
!1022 = !DILocation(line: 1265, column: 40, scope: !1008)
!1023 = !DILocation(line: 1265, column: 47, scope: !1008)
!1024 = !DILocation(line: 1265, column: 39, scope: !1008)
!1025 = !DILocation(line: 1265, column: 57, scope: !1008)
!1026 = !DILocation(line: 1265, column: 12, scope: !1008)
!1027 = !DILocation(line: 1263, column: 11, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !1003, file: !279, discriminator: 1)
!1029 = !DILocation(line: 1266, column: 10, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1008, file: !279, line: 1265, column: 79)
!1031 = !DILocation(line: 1268, column: 4, scope: !1003)
!1032 = !DILocation(line: 1268, column: 15, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !1034, file: !279, discriminator: 1)
!1034 = distinct !DILexicalBlock(scope: !998, file: !279, line: 1268, column: 15)
!1035 = !DILocation(line: 1268, column: 21, scope: !1033)
!1036 = !DILocation(line: 1268, column: 31, scope: !1033)
!1037 = !DILocalVariable(name: "addr6", scope: !1038, file: !279, line: 1269, type: !140)
!1038 = distinct !DILexicalBlock(scope: !1034, file: !279, line: 1268, column: 43)
!1039 = !DILocation(line: 1269, column: 28, scope: !1038)
!1040 = !DILocation(line: 1269, column: 59, scope: !1038)
!1041 = !DILocation(line: 1269, column: 36, scope: !1038)
!1042 = !DILocalVariable(name: "__a", scope: !1043, file: !279, line: 1271, type: !164)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !279, line: 1271, column: 26)
!1044 = distinct !DILexicalBlock(scope: !1038, file: !279, line: 1271, column: 10)
!1045 = !DILocation(line: 1271, column: 51, scope: !1043)
!1046 = !DILocation(line: 1271, column: 11, scope: !1043)
!1047 = !DILocation(line: 1271, column: 18, scope: !1043)
!1048 = !DILocation(line: 1271, column: 13, scope: !1043)
!1049 = !DILocation(line: 1271, column: 26, scope: !1043)
!1050 = !DILocation(line: 1271, column: 41, scope: !1043)
!1051 = !DILocation(line: 1271, column: 46, scope: !1043)
!1052 = !DILocation(line: 1271, column: 49, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1043, file: !279, discriminator: 1)
!1054 = !DILocation(line: 1271, column: 54, scope: !1053)
!1055 = !DILocation(line: 1271, column: 62, scope: !1053)
!1056 = !DILocation(line: 1271, column: 77, scope: !1053)
!1057 = !DILocation(line: 1271, column: 82, scope: !1053)
!1058 = !DILocation(line: 1271, column: 85, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !1043, file: !279, discriminator: 2)
!1060 = !DILocation(line: 1271, column: 90, scope: !1059)
!1061 = !DILocation(line: 1271, column: 98, scope: !1059)
!1062 = !DILocation(line: 1271, column: 113, scope: !1059)
!1063 = !DILocation(line: 1271, column: 118, scope: !1059)
!1064 = !DILocation(line: 1271, column: 121, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1043, file: !279, discriminator: 3)
!1066 = !DILocation(line: 1271, column: 126, scope: !1065)
!1067 = !DILocation(line: 1271, column: 134, scope: !1065)
!1068 = !DILocation(line: 1271, column: 152, scope: !1065)
!1069 = !DILocation(line: 1271, column: 149, scope: !1065)
!1070 = !DILocation(line: 1271, column: 118, scope: !1071)
!1071 = !DILexicalBlockFile(scope: !1043, file: !279, discriminator: 4)
!1072 = !DILocation(line: 1271, column: 28, scope: !1071)
!1073 = !DILocation(line: 1271, column: 163, scope: !1071)
!1074 = !DILocation(line: 1271, column: 25, scope: !1071)
!1075 = !DILocation(line: 1271, column: 50, scope: !1071)
!1076 = !DILocalVariable(name: "__a", scope: !1077, file: !279, line: 1272, type: !164)
!1077 = distinct !DILexicalBlock(scope: !1044, file: !279, line: 1272, column: 26)
!1078 = !DILocation(line: 1272, column: 51, scope: !1077)
!1079 = !DILocation(line: 1272, column: 11, scope: !1077)
!1080 = !DILocation(line: 1272, column: 18, scope: !1077)
!1081 = !DILocation(line: 1272, column: 14, scope: !1077)
!1082 = !DILocation(line: 1272, column: 19, scope: !1077)
!1083 = !DILocation(line: 1272, column: 27, scope: !1077)
!1084 = !DILocation(line: 1272, column: 44, scope: !1077)
!1085 = !DILocation(line: 1272, column: 42, scope: !1077)
!1086 = !DILocation(line: 1272, column: 67, scope: !1087)
!1087 = !DILexicalBlockFile(scope: !1077, file: !279, discriminator: 1)
!1088 = !DILocation(line: 1272, column: 64, scope: !1077)
!1089 = !DILocation(line: 1272, column: 28, scope: !1077)
!1090 = !DILocation(line: 1272, column: 87, scope: !1077)
!1091 = !DILocation(line: 1272, column: 25, scope: !1044)
!1092 = !DILocation(line: 1272, column: 51, scope: !1044)
!1093 = !DILocalVariable(name: "__a", scope: !1094, file: !279, line: 1273, type: !164)
!1094 = distinct !DILexicalBlock(scope: !1044, file: !279, line: 1273, column: 26)
!1095 = !DILocation(line: 1273, column: 51, scope: !1094)
!1096 = !DILocation(line: 1273, column: 11, scope: !1094)
!1097 = !DILocation(line: 1273, column: 18, scope: !1094)
!1098 = !DILocation(line: 1273, column: 14, scope: !1094)
!1099 = !DILocation(line: 1273, column: 19, scope: !1094)
!1100 = !DILocation(line: 1273, column: 27, scope: !1094)
!1101 = !DILocation(line: 1273, column: 44, scope: !1094)
!1102 = !DILocation(line: 1273, column: 42, scope: !1094)
!1103 = !DILocation(line: 1273, column: 67, scope: !1104)
!1104 = !DILexicalBlockFile(scope: !1094, file: !279, discriminator: 1)
!1105 = !DILocation(line: 1273, column: 64, scope: !1094)
!1106 = !DILocation(line: 1273, column: 28, scope: !1094)
!1107 = !DILocation(line: 1273, column: 87, scope: !1094)
!1108 = !DILocation(line: 1273, column: 25, scope: !1044)
!1109 = !DILocation(line: 1273, column: 51, scope: !1044)
!1110 = !DILocation(line: 1274, column: 15, scope: !1044)
!1111 = !DILocation(line: 1274, column: 22, scope: !1044)
!1112 = !DILocation(line: 1274, column: 10, scope: !1044)
!1113 = !DILocation(line: 1274, column: 18, scope: !1044)
!1114 = !DILocation(line: 1274, column: 13, scope: !1044)
!1115 = !DILocation(line: 1274, column: 14, scope: !1044)
!1116 = !DILocation(line: 1274, column: 23, scope: !1044)
!1117 = !DILocation(line: 1274, column: 30, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !1044, file: !279, discriminator: 1)
!1119 = !DILocation(line: 1274, column: 37, scope: !1118)
!1120 = !DILocation(line: 1274, column: 10, scope: !1118)
!1121 = !DILocation(line: 1274, column: 18, scope: !1118)
!1122 = !DILocation(line: 1274, column: 28, scope: !1118)
!1123 = !DILocation(line: 1274, column: 14, scope: !1118)
!1124 = !DILocation(line: 1274, column: 22, scope: !1118)
!1125 = !DILocation(line: 1274, column: 32, scope: !1118)
!1126 = !DILocalVariable(name: "__a", scope: !1127, file: !279, line: 1275, type: !164)
!1127 = distinct !DILexicalBlock(scope: !1044, file: !279, line: 1275, column: 26)
!1128 = !DILocation(line: 1275, column: 51, scope: !1127)
!1129 = !DILocation(line: 1275, column: 11, scope: !1127)
!1130 = !DILocation(line: 1275, column: 18, scope: !1127)
!1131 = !DILocation(line: 1275, column: 13, scope: !1127)
!1132 = !DILocation(line: 1275, column: 26, scope: !1127)
!1133 = !DILocation(line: 1275, column: 41, scope: !1127)
!1134 = !DILocation(line: 1275, column: 46, scope: !1127)
!1135 = !DILocation(line: 1275, column: 49, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !1127, file: !279, discriminator: 1)
!1137 = !DILocation(line: 1275, column: 54, scope: !1136)
!1138 = !DILocation(line: 1275, column: 62, scope: !1136)
!1139 = !DILocation(line: 1275, column: 77, scope: !1136)
!1140 = !DILocation(line: 1275, column: 82, scope: !1136)
!1141 = !DILocation(line: 1275, column: 85, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !1127, file: !279, discriminator: 2)
!1143 = !DILocation(line: 1275, column: 90, scope: !1142)
!1144 = !DILocation(line: 1275, column: 98, scope: !1142)
!1145 = !DILocation(line: 1275, column: 113, scope: !1142)
!1146 = !DILocation(line: 1275, column: 118, scope: !1142)
!1147 = !DILocation(line: 1275, column: 121, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !1127, file: !279, discriminator: 3)
!1149 = !DILocation(line: 1275, column: 126, scope: !1148)
!1150 = !DILocation(line: 1275, column: 134, scope: !1148)
!1151 = !DILocation(line: 1275, column: 149, scope: !1148)
!1152 = !DILocation(line: 1275, column: 118, scope: !1153)
!1153 = !DILexicalBlockFile(scope: !1127, file: !279, discriminator: 4)
!1154 = !DILocation(line: 1275, column: 28, scope: !1153)
!1155 = !DILocation(line: 1275, column: 155, scope: !1153)
!1156 = !DILocation(line: 1275, column: 25, scope: !1153)
!1157 = !DILocation(line: 1275, column: 53, scope: !1153)
!1158 = !DILocation(line: 1276, column: 22, scope: !1044)
!1159 = !DILocation(line: 1276, column: 28, scope: !1044)
!1160 = !DILocation(line: 1276, column: 40, scope: !1044)
!1161 = !DILocation(line: 1276, column: 47, scope: !1044)
!1162 = !DILocation(line: 1276, column: 39, scope: !1044)
!1163 = !DILocation(line: 1276, column: 58, scope: !1044)
!1164 = !DILocation(line: 1276, column: 12, scope: !1044)
!1165 = !DILocation(line: 1271, column: 10, scope: !1166)
!1166 = !DILexicalBlockFile(scope: !1038, file: !279, discriminator: 5)
!1167 = !DILocation(line: 1278, column: 10, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1044, file: !279, line: 1277, column: 37)
!1169 = !DILocation(line: 1280, column: 4, scope: !1038)
!1170 = !DILocation(line: 1281, column: 7, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1034, file: !279, line: 1280, column: 11)
!1172 = !DILocation(line: 1284, column: 27, scope: !985)
!1173 = !DILocation(line: 1284, column: 11, scope: !985)
!1174 = !DILocation(line: 1284, column: 4, scope: !985)
!1175 = !DILocation(line: 1285, column: 1, scope: !985)
!1176 = distinct !DISubprogram(name: "CountNetmaskBitsV4", scope: !279, file: !279, line: 225, type: !1177, isLocal: true, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!138, !115}
!1179 = !DILocalVariable(name: "netmask", arg: 1, scope: !1176, file: !279, line: 225, type: !115)
!1180 = !DILocation(line: 225, column: 37, scope: !1176)
!1181 = !DILocalVariable(name: "value", scope: !1176, file: !279, line: 227, type: !167)
!1182 = !DILocation(line: 227, column: 13, scope: !1176)
!1183 = !DILocation(line: 227, column: 44, scope: !1176)
!1184 = !DILocation(line: 227, column: 54, scope: !1176)
!1185 = !DILocation(line: 227, column: 63, scope: !1176)
!1186 = !DILocation(line: 227, column: 21, scope: !1176)
!1187 = !DILocation(line: 228, column: 28, scope: !1176)
!1188 = !DILocation(line: 228, column: 11, scope: !1176)
!1189 = !DILocation(line: 228, column: 4, scope: !1176)
!1190 = distinct !DISubprogram(name: "CountNetmaskBitsV6", scope: !279, file: !279, line: 234, type: !1177, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!1191 = !DILocalVariable(name: "netmask", arg: 1, scope: !1190, file: !279, line: 234, type: !115)
!1192 = !DILocation(line: 234, column: 37, scope: !1190)
!1193 = !DILocalVariable(name: "value", scope: !1190, file: !279, line: 236, type: !166)
!1194 = !DILocation(line: 236, column: 14, scope: !1190)
!1195 = !DILocation(line: 236, column: 59, scope: !1190)
!1196 = !DILocation(line: 236, column: 69, scope: !1190)
!1197 = !DILocation(line: 236, column: 22, scope: !1190)
!1198 = !DILocation(line: 238, column: 28, scope: !1190)
!1199 = !DILocation(line: 238, column: 11, scope: !1190)
!1200 = !DILocation(line: 238, column: 57, scope: !1190)
!1201 = !DILocation(line: 238, column: 40, scope: !1202)
!1202 = !DILexicalBlockFile(scope: !1190, file: !279, discriminator: 1)
!1203 = !DILocation(line: 238, column: 38, scope: !1190)
!1204 = !DILocation(line: 238, column: 4, scope: !1190)
!1205 = distinct !DISubprogram(name: "CountNetmaskBits", scope: !279, file: !279, line: 208, type: !1206, isLocal: true, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!138, !167}
!1208 = !DILocalVariable(name: "x", arg: 1, scope: !1205, file: !279, line: 208, type: !167)
!1209 = !DILocation(line: 208, column: 27, scope: !1205)
!1210 = !DILocalVariable(name: "m1", scope: !1205, file: !279, line: 211, type: !1211)
!1211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!1212 = !DILocation(line: 211, column: 19, scope: !1205)
!1213 = !DILocalVariable(name: "m2", scope: !1205, file: !279, line: 212, type: !1211)
!1214 = !DILocation(line: 212, column: 19, scope: !1205)
!1215 = !DILocalVariable(name: "m4", scope: !1205, file: !279, line: 213, type: !1211)
!1216 = !DILocation(line: 213, column: 19, scope: !1205)
!1217 = !DILocation(line: 215, column: 10, scope: !1205)
!1218 = !DILocation(line: 215, column: 12, scope: !1205)
!1219 = !DILocation(line: 215, column: 18, scope: !1205)
!1220 = !DILocation(line: 215, column: 6, scope: !1205)
!1221 = !DILocation(line: 216, column: 9, scope: !1205)
!1222 = !DILocation(line: 216, column: 11, scope: !1205)
!1223 = !DILocation(line: 216, column: 21, scope: !1205)
!1224 = !DILocation(line: 216, column: 23, scope: !1205)
!1225 = !DILocation(line: 216, column: 29, scope: !1205)
!1226 = !DILocation(line: 216, column: 17, scope: !1205)
!1227 = !DILocation(line: 216, column: 6, scope: !1205)
!1228 = !DILocation(line: 217, column: 9, scope: !1205)
!1229 = !DILocation(line: 217, column: 14, scope: !1205)
!1230 = !DILocation(line: 217, column: 16, scope: !1205)
!1231 = !DILocation(line: 217, column: 11, scope: !1205)
!1232 = !DILocation(line: 217, column: 23, scope: !1205)
!1233 = !DILocation(line: 217, column: 6, scope: !1205)
!1234 = !DILocation(line: 218, column: 9, scope: !1205)
!1235 = !DILocation(line: 218, column: 11, scope: !1205)
!1236 = !DILocation(line: 218, column: 6, scope: !1205)
!1237 = !DILocation(line: 219, column: 9, scope: !1205)
!1238 = !DILocation(line: 219, column: 11, scope: !1205)
!1239 = !DILocation(line: 219, column: 6, scope: !1205)
!1240 = !DILocation(line: 220, column: 9, scope: !1205)
!1241 = !DILocation(line: 220, column: 11, scope: !1205)
!1242 = !DILocation(line: 220, column: 6, scope: !1205)
!1243 = !DILocation(line: 221, column: 11, scope: !1205)
!1244 = !DILocation(line: 221, column: 13, scope: !1205)
!1245 = !DILocation(line: 221, column: 4, scope: !1205)
!1246 = distinct !DISubprogram(name: "RecordResolverNS", scope: !279, file: !279, line: 842, type: !1247, isLocal: true, isDefinition: true, scopeLine: 843, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{null, !335}
!1249 = !DILocalVariable(name: "dnsConfigInfo", arg: 1, scope: !1246, file: !279, line: 842, type: !335)
!1250 = !DILocation(line: 842, column: 33, scope: !1246)
!1251 = !DILocalVariable(name: "i", scope: !1246, file: !279, line: 844, type: !106)
!1252 = !DILocation(line: 844, column: 8, scope: !1246)
!1253 = !DILocation(line: 877, column: 14, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !279, line: 877, column: 7)
!1255 = distinct !DILexicalBlock(scope: !1246, file: !279, line: 873, column: 4)
!1256 = !DILocation(line: 877, column: 12, scope: !1254)
!1257 = !DILocation(line: 877, column: 19, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !1259, file: !279, discriminator: 1)
!1259 = distinct !DILexicalBlock(scope: !1254, file: !279, line: 877, column: 7)
!1260 = !DILocation(line: 877, column: 21, scope: !1258)
!1261 = !DILocation(line: 877, column: 7, scope: !1258)
!1262 = !DILocalVariable(name: "sin", scope: !1263, file: !279, line: 878, type: !123)
!1263 = distinct !DILexicalBlock(scope: !1259, file: !279, line: 877, column: 34)
!1264 = !DILocation(line: 878, column: 30, scope: !1263)
!1265 = !DILocation(line: 878, column: 53, scope: !1263)
!1266 = !DILocation(line: 878, column: 36, scope: !1263)
!1267 = !DILocation(line: 878, column: 38, scope: !1263)
!1268 = !DILocation(line: 878, column: 41, scope: !1263)
!1269 = !DILocation(line: 879, column: 14, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1263, file: !279, line: 879, column: 14)
!1271 = !DILocation(line: 879, column: 19, scope: !1270)
!1272 = !DILocation(line: 879, column: 30, scope: !1270)
!1273 = !DILocation(line: 879, column: 14, scope: !1263)
!1274 = !DILocalVariable(name: "ip", scope: !1275, file: !279, line: 880, type: !249)
!1275 = distinct !DILexicalBlock(scope: !1270, file: !279, line: 879, column: 41)
!1276 = !DILocation(line: 880, column: 29, scope: !1275)
!1277 = !DILocation(line: 883, column: 17, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1275, file: !279, line: 883, column: 17)
!1279 = !DILocation(line: 883, column: 32, scope: !1278)
!1280 = !DILocation(line: 883, column: 43, scope: !1278)
!1281 = !DILocation(line: 883, column: 58, scope: !1278)
!1282 = !DILocation(line: 883, column: 17, scope: !1275)
!1283 = !DILocation(line: 884, column: 16, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1278, file: !279, line: 883, column: 65)
!1285 = !DILocation(line: 886, column: 16, scope: !1284)
!1286 = !DILocation(line: 889, column: 104, scope: !1275)
!1287 = !DILocation(line: 889, column: 120, scope: !1275)
!1288 = !DILocation(line: 889, column: 131, scope: !1275)
!1289 = !DILocation(line: 889, column: 92, scope: !1275)
!1290 = !DILocation(line: 889, column: 149, scope: !1275)
!1291 = !DILocation(line: 889, column: 165, scope: !1275)
!1292 = !DILocation(line: 889, column: 176, scope: !1275)
!1293 = !DILocation(line: 889, column: 72, scope: !1275)
!1294 = !DILocation(line: 889, column: 18, scope: !1275)
!1295 = !DILocation(line: 889, column: 16, scope: !1275)
!1296 = !DILocation(line: 890, column: 39, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !279, line: 890, column: 19)
!1298 = distinct !DILexicalBlock(scope: !1275, file: !279, line: 890, column: 14)
!1299 = !DILocation(line: 890, column: 37, scope: !1297)
!1300 = !DILocation(line: 890, column: 36, scope: !1297)
!1301 = !DILocation(line: 890, column: 19, scope: !1297)
!1302 = !DILocation(line: 890, column: 19, scope: !1298)
!1303 = !DILocation(line: 890, column: 51, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !1305, file: !279, discriminator: 1)
!1305 = distinct !DILexicalBlock(scope: !1297, file: !279, line: 890, column: 49)
!1306 = !DILocation(line: 891, column: 66, scope: !1275)
!1307 = !DILocation(line: 891, column: 47, scope: !1275)
!1308 = !DILocation(line: 891, column: 71, scope: !1275)
!1309 = !DILocation(line: 891, column: 13, scope: !1275)
!1310 = !DILocation(line: 892, column: 10, scope: !1275)
!1311 = !DILocation(line: 893, column: 7, scope: !1263)
!1312 = !DILocation(line: 877, column: 30, scope: !1313)
!1313 = !DILexicalBlockFile(scope: !1259, file: !279, discriminator: 2)
!1314 = !DILocation(line: 877, column: 7, scope: !1313)
!1315 = distinct !{!1315, !1316}
!1316 = !DILocation(line: 877, column: 7, scope: !1255)
!1317 = !DILocation(line: 898, column: 14, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1255, file: !279, line: 898, column: 7)
!1319 = !DILocation(line: 898, column: 12, scope: !1318)
!1320 = !DILocation(line: 898, column: 19, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !1322, file: !279, discriminator: 1)
!1322 = distinct !DILexicalBlock(scope: !1318, file: !279, line: 898, column: 7)
!1323 = !DILocation(line: 898, column: 21, scope: !1321)
!1324 = !DILocation(line: 898, column: 7, scope: !1321)
!1325 = !DILocalVariable(name: "sin6", scope: !1326, file: !279, line: 899, type: !140)
!1326 = distinct !DILexicalBlock(scope: !1322, file: !279, line: 898, column: 34)
!1327 = !DILocation(line: 899, column: 31, scope: !1326)
!1328 = !DILocation(line: 899, column: 58, scope: !1326)
!1329 = !DILocation(line: 899, column: 37, scope: !1326)
!1330 = !DILocation(line: 899, column: 39, scope: !1326)
!1331 = !DILocation(line: 899, column: 42, scope: !1326)
!1332 = !DILocation(line: 899, column: 45, scope: !1326)
!1333 = !DILocation(line: 899, column: 50, scope: !1326)
!1334 = !DILocation(line: 900, column: 14, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1326, file: !279, line: 900, column: 14)
!1336 = !DILocation(line: 900, column: 14, scope: !1326)
!1337 = !DILocalVariable(name: "ip", scope: !1338, file: !279, line: 901, type: !249)
!1338 = distinct !DILexicalBlock(scope: !1335, file: !279, line: 900, column: 20)
!1339 = !DILocation(line: 901, column: 29, scope: !1338)
!1340 = !DILocation(line: 904, column: 17, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1338, file: !279, line: 904, column: 17)
!1342 = !DILocation(line: 904, column: 32, scope: !1341)
!1343 = !DILocation(line: 904, column: 43, scope: !1341)
!1344 = !DILocation(line: 904, column: 58, scope: !1341)
!1345 = !DILocation(line: 904, column: 17, scope: !1338)
!1346 = !DILocation(line: 905, column: 16, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1341, file: !279, line: 904, column: 65)
!1348 = !DILocation(line: 907, column: 16, scope: !1347)
!1349 = !DILocation(line: 910, column: 104, scope: !1338)
!1350 = !DILocation(line: 910, column: 120, scope: !1338)
!1351 = !DILocation(line: 910, column: 131, scope: !1338)
!1352 = !DILocation(line: 910, column: 92, scope: !1338)
!1353 = !DILocation(line: 910, column: 149, scope: !1338)
!1354 = !DILocation(line: 910, column: 165, scope: !1338)
!1355 = !DILocation(line: 910, column: 176, scope: !1338)
!1356 = !DILocation(line: 910, column: 72, scope: !1338)
!1357 = !DILocation(line: 910, column: 18, scope: !1338)
!1358 = !DILocation(line: 910, column: 16, scope: !1338)
!1359 = !DILocation(line: 911, column: 39, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !279, line: 911, column: 19)
!1361 = distinct !DILexicalBlock(scope: !1338, file: !279, line: 911, column: 14)
!1362 = !DILocation(line: 911, column: 37, scope: !1360)
!1363 = !DILocation(line: 911, column: 36, scope: !1360)
!1364 = !DILocation(line: 911, column: 19, scope: !1360)
!1365 = !DILocation(line: 911, column: 19, scope: !1361)
!1366 = !DILocation(line: 911, column: 51, scope: !1367)
!1367 = !DILexicalBlockFile(scope: !1368, file: !279, discriminator: 1)
!1368 = distinct !DILexicalBlock(scope: !1360, file: !279, line: 911, column: 49)
!1369 = !DILocation(line: 912, column: 66, scope: !1338)
!1370 = !DILocation(line: 912, column: 47, scope: !1338)
!1371 = !DILocation(line: 912, column: 72, scope: !1338)
!1372 = !DILocation(line: 912, column: 13, scope: !1338)
!1373 = !DILocation(line: 913, column: 10, scope: !1338)
!1374 = !DILocation(line: 914, column: 7, scope: !1326)
!1375 = !DILocation(line: 898, column: 30, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !1322, file: !279, discriminator: 2)
!1377 = !DILocation(line: 898, column: 7, scope: !1376)
!1378 = distinct !{!1378, !1379}
!1379 = !DILocation(line: 898, column: 7, scope: !1255)
!1380 = !DILocation(line: 918, column: 1, scope: !1246)
!1381 = distinct !DISubprogram(name: "RecordRoutingInfoIPv4", scope: !279, file: !279, line: 944, type: !1382, isLocal: true, isDefinition: true, scopeLine: 946, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!282, !138, !303}
!1384 = !DILocalVariable(name: "maxRoutes", arg: 1, scope: !1381, file: !279, line: 944, type: !138)
!1385 = !DILocation(line: 944, column: 36, scope: !1381)
!1386 = !DILocalVariable(name: "nicInfo", arg: 2, scope: !1381, file: !279, line: 945, type: !303)
!1387 = !DILocation(line: 945, column: 34, scope: !1381)
!1388 = !DILocalVariable(name: "routes", scope: !1381, file: !279, line: 947, type: !1389)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64, align: 64)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPtrArray", file: !1391, line: 39, baseType: !1392)
!1391 = !DIFile(filename: "/usr/include/glib-2.0/glib/garray.h", directory: "/home/lichi/Desktop/open-vm-tools/line766")
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GPtrArray", file: !1391, line: 53, size: 128, align: 64, elements: !1393)
!1393 = !{!1394, !1397}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "pdata", scope: !1392, file: !1391, line: 55, baseType: !1395, size: 64, align: 64)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64, align: 64)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !82, line: 77, baseType: !84)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1392, file: !1391, line: 56, baseType: !1398, size: 32, align: 32, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !82, line: 55, baseType: !138)
!1399 = !DILocation(line: 947, column: 15, scope: !1381)
!1400 = !DILocalVariable(name: "i", scope: !1381, file: !279, line: 948, type: !1398)
!1401 = !DILocation(line: 948, column: 10, scope: !1381)
!1402 = !DILocalVariable(name: "ret", scope: !1381, file: !279, line: 949, type: !282)
!1403 = !DILocation(line: 949, column: 9, scope: !1381)
!1404 = !DILocation(line: 953, column: 40, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1381, file: !279, line: 953, column: 8)
!1406 = !DILocation(line: 953, column: 18, scope: !1405)
!1407 = !DILocation(line: 953, column: 16, scope: !1405)
!1408 = !DILocation(line: 953, column: 59, scope: !1405)
!1409 = !DILocation(line: 953, column: 8, scope: !1381)
!1410 = !DILocation(line: 954, column: 7, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1405, file: !279, line: 953, column: 68)
!1412 = !DILocation(line: 957, column: 11, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1381, file: !279, line: 957, column: 4)
!1414 = !DILocation(line: 957, column: 9, scope: !1413)
!1415 = !DILocation(line: 957, column: 16, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1417, file: !279, discriminator: 1)
!1417 = distinct !DILexicalBlock(scope: !1413, file: !279, line: 957, column: 4)
!1418 = !DILocation(line: 957, column: 20, scope: !1416)
!1419 = !DILocation(line: 957, column: 28, scope: !1416)
!1420 = !DILocation(line: 957, column: 18, scope: !1416)
!1421 = !DILocation(line: 957, column: 4, scope: !1416)
!1422 = !DILocalVariable(name: "rtentry", scope: !1423, file: !279, line: 958, type: !1424)
!1423 = distinct !DILexicalBlock(scope: !1417, file: !279, line: 957, column: 38)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64, align: 64)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtentry", file: !1426, line: 31, size: 960, align: 64, elements: !1427)
!1426 = !DIFile(filename: "/usr/include/net/route.h", directory: "/home/lichi/Desktop/open-vm-tools/line766")
!1427 = !{!1428, !1429, !1430, !1431, !1432, !1433, !1435, !1436, !1437, !1438, !1442, !1443, !1444, !1445, !1446}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "rt_pad1", scope: !1425, file: !1426, line: 33, baseType: !98, size: 64, align: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "rt_dst", scope: !1425, file: !1426, line: 34, baseType: !116, size: 128, align: 16, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "rt_gateway", scope: !1425, file: !1426, line: 35, baseType: !116, size: 128, align: 16, offset: 192)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "rt_genmask", scope: !1425, file: !1426, line: 36, baseType: !116, size: 128, align: 16, offset: 320)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "rt_flags", scope: !1425, file: !1426, line: 37, baseType: !92, size: 16, align: 16, offset: 448)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "rt_pad2", scope: !1425, file: !1426, line: 38, baseType: !1434, size: 16, align: 16, offset: 464)
!1434 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "rt_pad3", scope: !1425, file: !1426, line: 39, baseType: !98, size: 64, align: 64, offset: 512)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tos", scope: !1425, file: !1426, line: 40, baseType: !109, size: 8, align: 8, offset: 576)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "rt_class", scope: !1425, file: !1426, line: 41, baseType: !109, size: 8, align: 8, offset: 584)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "rt_pad4", scope: !1425, file: !1426, line: 43, baseType: !1439, size: 48, align: 16, offset: 592)
!1439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1434, size: 48, align: 16, elements: !1440)
!1440 = !{!1441}
!1441 = !DISubrange(count: 3)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "rt_metric", scope: !1425, file: !1426, line: 47, baseType: !1434, size: 16, align: 16, offset: 640)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "rt_dev", scope: !1425, file: !1426, line: 48, baseType: !170, size: 64, align: 64, offset: 704)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mtu", scope: !1425, file: !1426, line: 49, baseType: !98, size: 64, align: 64, offset: 768)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "rt_window", scope: !1425, file: !1426, line: 50, baseType: !98, size: 64, align: 64, offset: 832)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "rt_irtt", scope: !1425, file: !1426, line: 51, baseType: !92, size: 16, align: 16, offset: 896)
!1447 = !DILocation(line: 958, column: 23, scope: !1423)
!1448 = !DILocalVariable(name: "sin_dst", scope: !1423, file: !279, line: 959, type: !123)
!1449 = !DILocation(line: 959, column: 27, scope: !1423)
!1450 = !DILocalVariable(name: "sin_gateway", scope: !1423, file: !279, line: 960, type: !123)
!1451 = !DILocation(line: 960, column: 27, scope: !1423)
!1452 = !DILocalVariable(name: "sin_genmask", scope: !1423, file: !279, line: 961, type: !123)
!1453 = !DILocation(line: 961, column: 27, scope: !1423)
!1454 = !DILocalVariable(name: "icre", scope: !1423, file: !279, line: 962, type: !261)
!1455 = !DILocation(line: 962, column: 27, scope: !1423)
!1456 = !DILocalVariable(name: "ifIndex", scope: !1423, file: !279, line: 963, type: !137)
!1457 = !DILocation(line: 963, column: 16, scope: !1423)
!1458 = !DILocation(line: 966, column: 11, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1423, file: !279, line: 966, column: 11)
!1460 = !DILocation(line: 966, column: 20, scope: !1459)
!1461 = !DILocation(line: 966, column: 27, scope: !1459)
!1462 = !DILocation(line: 966, column: 38, scope: !1459)
!1463 = !DILocation(line: 966, column: 11, scope: !1423)
!1464 = !DILocation(line: 967, column: 10, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1459, file: !279, line: 966, column: 46)
!1466 = !DILocation(line: 969, column: 10, scope: !1465)
!1467 = !DILocation(line: 972, column: 35, scope: !1423)
!1468 = !DILocation(line: 972, column: 17, scope: !1423)
!1469 = !DILocation(line: 972, column: 19, scope: !1423)
!1470 = !DILocation(line: 972, column: 28, scope: !1423)
!1471 = !DILocation(line: 972, column: 15, scope: !1423)
!1472 = !DILocation(line: 974, column: 39, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1423, file: !279, line: 974, column: 11)
!1474 = !DILocation(line: 975, column: 54, scope: !1473)
!1475 = !DILocation(line: 975, column: 63, scope: !1473)
!1476 = !DILocation(line: 975, column: 39, scope: !1473)
!1477 = !DILocation(line: 974, column: 12, scope: !1473)
!1478 = !DILocation(line: 974, column: 11, scope: !1423)
!1479 = !DILocation(line: 977, column: 10, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1473, file: !279, line: 976, column: 50)
!1481 = !DILocation(line: 980, column: 86, scope: !1423)
!1482 = !DILocation(line: 980, column: 96, scope: !1423)
!1483 = !DILocation(line: 980, column: 103, scope: !1423)
!1484 = !DILocation(line: 980, column: 74, scope: !1423)
!1485 = !DILocation(line: 980, column: 117, scope: !1423)
!1486 = !DILocation(line: 980, column: 127, scope: !1423)
!1487 = !DILocation(line: 980, column: 134, scope: !1423)
!1488 = !DILocation(line: 980, column: 54, scope: !1423)
!1489 = !DILocation(line: 980, column: 14, scope: !1423)
!1490 = !DILocation(line: 980, column: 12, scope: !1423)
!1491 = !DILocation(line: 981, column: 33, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !279, line: 981, column: 13)
!1493 = distinct !DILexicalBlock(scope: !1423, file: !279, line: 981, column: 8)
!1494 = !DILocation(line: 981, column: 31, scope: !1492)
!1495 = !DILocation(line: 981, column: 30, scope: !1492)
!1496 = !DILocation(line: 981, column: 13, scope: !1492)
!1497 = !DILocation(line: 981, column: 13, scope: !1493)
!1498 = !DILocation(line: 981, column: 47, scope: !1499)
!1499 = !DILexicalBlockFile(scope: !1500, file: !279, discriminator: 1)
!1500 = distinct !DILexicalBlock(scope: !1492, file: !279, line: 981, column: 45)
!1501 = !DILocation(line: 983, column: 40, scope: !1423)
!1502 = !DILocation(line: 983, column: 49, scope: !1423)
!1503 = !DILocation(line: 983, column: 17, scope: !1423)
!1504 = !DILocation(line: 983, column: 15, scope: !1423)
!1505 = !DILocation(line: 984, column: 44, scope: !1423)
!1506 = !DILocation(line: 984, column: 53, scope: !1423)
!1507 = !DILocation(line: 984, column: 21, scope: !1423)
!1508 = !DILocation(line: 984, column: 19, scope: !1423)
!1509 = !DILocation(line: 985, column: 44, scope: !1423)
!1510 = !DILocation(line: 985, column: 53, scope: !1423)
!1511 = !DILocation(line: 985, column: 21, scope: !1423)
!1512 = !DILocation(line: 985, column: 19, scope: !1423)
!1513 = !DILocation(line: 987, column: 60, scope: !1423)
!1514 = !DILocation(line: 987, column: 41, scope: !1423)
!1515 = !DILocation(line: 988, column: 42, scope: !1423)
!1516 = !DILocation(line: 988, column: 48, scope: !1423)
!1517 = !DILocation(line: 987, column: 7, scope: !1423)
!1518 = !DILocation(line: 990, column: 73, scope: !1423)
!1519 = !DILocation(line: 990, column: 54, scope: !1423)
!1520 = !DILocation(line: 990, column: 35, scope: !1423)
!1521 = !DILocation(line: 990, column: 7, scope: !1423)
!1522 = !DILocation(line: 990, column: 13, scope: !1423)
!1523 = !DILocation(line: 990, column: 33, scope: !1423)
!1524 = !DILocation(line: 996, column: 11, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1423, file: !279, line: 996, column: 11)
!1526 = !DILocation(line: 996, column: 20, scope: !1525)
!1527 = !DILocation(line: 996, column: 29, scope: !1525)
!1528 = !DILocation(line: 996, column: 11, scope: !1423)
!1529 = !DILocalVariable(name: "ip", scope: !1530, file: !279, line: 997, type: !249)
!1530 = distinct !DILexicalBlock(scope: !1525, file: !279, line: 996, column: 43)
!1531 = !DILocation(line: 997, column: 26, scope: !1530)
!1532 = !DILocation(line: 997, column: 31, scope: !1530)
!1533 = !DILocation(line: 998, column: 63, scope: !1530)
!1534 = !DILocation(line: 998, column: 44, scope: !1530)
!1535 = !DILocation(line: 998, column: 76, scope: !1530)
!1536 = !DILocation(line: 998, column: 10, scope: !1530)
!1537 = !DILocation(line: 999, column: 39, scope: !1530)
!1538 = !DILocation(line: 999, column: 10, scope: !1530)
!1539 = !DILocation(line: 999, column: 16, scope: !1530)
!1540 = !DILocation(line: 999, column: 37, scope: !1530)
!1541 = !DILocation(line: 1000, column: 7, scope: !1530)
!1542 = !DILocation(line: 1005, column: 36, scope: !1423)
!1543 = !DILocation(line: 1005, column: 7, scope: !1423)
!1544 = !DILocation(line: 1005, column: 13, scope: !1423)
!1545 = !DILocation(line: 1005, column: 34, scope: !1423)
!1546 = !DILocation(line: 1006, column: 35, scope: !1423)
!1547 = !DILocation(line: 1006, column: 44, scope: !1423)
!1548 = !DILocation(line: 1006, column: 7, scope: !1423)
!1549 = !DILocation(line: 1006, column: 13, scope: !1423)
!1550 = !DILocation(line: 1006, column: 33, scope: !1423)
!1551 = !DILocation(line: 1007, column: 4, scope: !1423)
!1552 = !DILocation(line: 957, column: 34, scope: !1553)
!1553 = !DILexicalBlockFile(scope: !1417, file: !279, discriminator: 2)
!1554 = !DILocation(line: 957, column: 4, scope: !1553)
!1555 = distinct !{!1555, !1556}
!1556 = !DILocation(line: 957, column: 4, scope: !1381)
!1557 = !DILocation(line: 1009, column: 8, scope: !1381)
!1558 = !DILocation(line: 1011, column: 27, scope: !1381)
!1559 = !DILocation(line: 1011, column: 4, scope: !1381)
!1560 = !DILocation(line: 1012, column: 11, scope: !1381)
!1561 = !DILocation(line: 1012, column: 4, scope: !1381)
!1562 = !DILocation(line: 1013, column: 1, scope: !1381)
!1563 = distinct !DISubprogram(name: "RecordRoutingInfoIPv6", scope: !279, file: !279, line: 1036, type: !1382, isLocal: true, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !283)
!1564 = !DILocalVariable(name: "maxRoutes", arg: 1, scope: !1563, file: !279, line: 1036, type: !138)
!1565 = !DILocation(line: 1036, column: 36, scope: !1563)
!1566 = !DILocalVariable(name: "nicInfo", arg: 2, scope: !1563, file: !279, line: 1037, type: !303)
!1567 = !DILocation(line: 1037, column: 34, scope: !1563)
!1568 = !DILocalVariable(name: "routes", scope: !1563, file: !279, line: 1039, type: !1389)
!1569 = !DILocation(line: 1039, column: 15, scope: !1563)
!1570 = !DILocalVariable(name: "i", scope: !1563, file: !279, line: 1040, type: !1398)
!1571 = !DILocation(line: 1040, column: 10, scope: !1563)
!1572 = !DILocalVariable(name: "ret", scope: !1563, file: !279, line: 1041, type: !282)
!1573 = !DILocation(line: 1041, column: 9, scope: !1563)
!1574 = !DILocation(line: 1054, column: 41, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1563, file: !279, line: 1054, column: 8)
!1576 = !DILocation(line: 1054, column: 18, scope: !1575)
!1577 = !DILocation(line: 1054, column: 16, scope: !1575)
!1578 = !DILocation(line: 1054, column: 60, scope: !1575)
!1579 = !DILocation(line: 1054, column: 8, scope: !1563)
!1580 = !DILocation(line: 1055, column: 7, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1575, file: !279, line: 1054, column: 69)
!1582 = !DILocation(line: 1058, column: 11, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1563, file: !279, line: 1058, column: 4)
!1584 = !DILocation(line: 1058, column: 9, scope: !1583)
!1585 = !DILocation(line: 1058, column: 16, scope: !1586)
!1586 = !DILexicalBlockFile(scope: !1587, file: !279, discriminator: 1)
!1587 = distinct !DILexicalBlock(scope: !1583, file: !279, line: 1058, column: 4)
!1588 = !DILocation(line: 1058, column: 20, scope: !1586)
!1589 = !DILocation(line: 1058, column: 28, scope: !1586)
!1590 = !DILocation(line: 1058, column: 18, scope: !1586)
!1591 = !DILocation(line: 1058, column: 4, scope: !1586)
!1592 = !DILocalVariable(name: "ss", scope: !1593, file: !279, line: 1059, type: !86)
!1593 = distinct !DILexicalBlock(scope: !1587, file: !279, line: 1058, column: 38)
!1594 = !DILocation(line: 1059, column: 31, scope: !1593)
!1595 = !DILocalVariable(name: "sin6", scope: !1593, file: !279, line: 1060, type: !140)
!1596 = !DILocation(line: 1060, column: 28, scope: !1593)
!1597 = !DILocation(line: 1060, column: 35, scope: !1593)
!1598 = !DILocalVariable(name: "in6_rtmsg", scope: !1593, file: !279, line: 1061, type: !1599)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64, align: 64)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_rtmsg", file: !1426, line: 57, size: 640, align: 64, elements: !1601)
!1601 = !{!1602, !1603, !1604, !1605, !1607, !1609, !1610, !1611, !1612, !1613}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "rtmsg_dst", scope: !1600, file: !1426, line: 59, baseType: !147, size: 128, align: 32)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "rtmsg_src", scope: !1600, file: !1426, line: 60, baseType: !147, size: 128, align: 32, offset: 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "rtmsg_gateway", scope: !1600, file: !1426, line: 61, baseType: !147, size: 128, align: 32, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "rtmsg_type", scope: !1600, file: !1426, line: 62, baseType: !1606, size: 32, align: 32, offset: 384)
!1606 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int32_t", file: !204, line: 202, baseType: !138)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "rtmsg_dst_len", scope: !1600, file: !1426, line: 63, baseType: !1608, size: 16, align: 16, offset: 416)
!1608 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int16_t", file: !204, line: 201, baseType: !92)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "rtmsg_src_len", scope: !1600, file: !1426, line: 64, baseType: !1608, size: 16, align: 16, offset: 432)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "rtmsg_metric", scope: !1600, file: !1426, line: 65, baseType: !1606, size: 32, align: 32, offset: 448)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "rtmsg_info", scope: !1600, file: !1426, line: 66, baseType: !98, size: 64, align: 64, offset: 512)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "rtmsg_flags", scope: !1600, file: !1426, line: 67, baseType: !1606, size: 32, align: 32, offset: 576)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "rtmsg_ifindex", scope: !1600, file: !1426, line: 68, baseType: !106, size: 32, align: 32, offset: 608)
!1614 = !DILocation(line: 1061, column: 25, scope: !1593)
!1615 = !DILocalVariable(name: "icre", scope: !1593, file: !279, line: 1062, type: !261)
!1616 = !DILocation(line: 1062, column: 27, scope: !1593)
!1617 = !DILocalVariable(name: "ifIndex", scope: !1593, file: !279, line: 1063, type: !137)
!1618 = !DILocation(line: 1063, column: 16, scope: !1593)
!1619 = !DILocation(line: 1066, column: 11, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1593, file: !279, line: 1066, column: 11)
!1621 = !DILocation(line: 1066, column: 20, scope: !1620)
!1622 = !DILocation(line: 1066, column: 27, scope: !1620)
!1623 = !DILocation(line: 1066, column: 38, scope: !1620)
!1624 = !DILocation(line: 1066, column: 11, scope: !1593)
!1625 = !DILocation(line: 1067, column: 10, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1620, file: !279, line: 1066, column: 46)
!1627 = !DILocation(line: 1069, column: 10, scope: !1626)
!1628 = !DILocation(line: 1072, column: 37, scope: !1593)
!1629 = !DILocation(line: 1072, column: 19, scope: !1593)
!1630 = !DILocation(line: 1072, column: 21, scope: !1593)
!1631 = !DILocation(line: 1072, column: 30, scope: !1593)
!1632 = !DILocation(line: 1072, column: 17, scope: !1593)
!1633 = !DILocation(line: 1074, column: 39, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1593, file: !279, line: 1074, column: 11)
!1635 = !DILocation(line: 1074, column: 48, scope: !1634)
!1636 = !DILocation(line: 1074, column: 59, scope: !1634)
!1637 = !DILocation(line: 1074, column: 12, scope: !1634)
!1638 = !DILocation(line: 1074, column: 11, scope: !1593)
!1639 = !DILocation(line: 1076, column: 10, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1634, file: !279, line: 1075, column: 50)
!1641 = !DILocation(line: 1079, column: 86, scope: !1593)
!1642 = !DILocation(line: 1079, column: 96, scope: !1593)
!1643 = !DILocation(line: 1079, column: 103, scope: !1593)
!1644 = !DILocation(line: 1079, column: 74, scope: !1593)
!1645 = !DILocation(line: 1079, column: 117, scope: !1593)
!1646 = !DILocation(line: 1079, column: 127, scope: !1593)
!1647 = !DILocation(line: 1079, column: 134, scope: !1593)
!1648 = !DILocation(line: 1079, column: 54, scope: !1593)
!1649 = !DILocation(line: 1079, column: 14, scope: !1593)
!1650 = !DILocation(line: 1079, column: 12, scope: !1593)
!1651 = !DILocation(line: 1080, column: 33, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !279, line: 1080, column: 13)
!1653 = distinct !DILexicalBlock(scope: !1593, file: !279, line: 1080, column: 8)
!1654 = !DILocation(line: 1080, column: 31, scope: !1652)
!1655 = !DILocation(line: 1080, column: 30, scope: !1652)
!1656 = !DILocation(line: 1080, column: 13, scope: !1652)
!1657 = !DILocation(line: 1080, column: 13, scope: !1653)
!1658 = !DILocation(line: 1080, column: 47, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1660, file: !279, discriminator: 1)
!1660 = distinct !DILexicalBlock(scope: !1652, file: !279, line: 1080, column: 45)
!1661 = !DILocation(line: 1085, column: 7, scope: !1593)
!1662 = !DILocation(line: 1085, column: 13, scope: !1593)
!1663 = !DILocation(line: 1085, column: 25, scope: !1593)
!1664 = !DILocation(line: 1086, column: 7, scope: !1593)
!1665 = !DILocation(line: 1086, column: 13, scope: !1593)
!1666 = !DILocation(line: 1086, column: 25, scope: !1593)
!1667 = !DILocation(line: 1086, column: 36, scope: !1593)
!1668 = !DILocation(line: 1087, column: 60, scope: !1593)
!1669 = !DILocation(line: 1087, column: 41, scope: !1593)
!1670 = !DILocation(line: 1088, column: 42, scope: !1593)
!1671 = !DILocation(line: 1088, column: 48, scope: !1593)
!1672 = !DILocation(line: 1087, column: 7, scope: !1593)
!1673 = !DILocation(line: 1090, column: 35, scope: !1593)
!1674 = !DILocation(line: 1090, column: 46, scope: !1593)
!1675 = !DILocation(line: 1090, column: 7, scope: !1593)
!1676 = !DILocation(line: 1090, column: 13, scope: !1593)
!1677 = !DILocation(line: 1090, column: 33, scope: !1593)
!1678 = !DILocation(line: 1095, column: 11, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1593, file: !279, line: 1095, column: 11)
!1680 = !DILocation(line: 1095, column: 22, scope: !1679)
!1681 = !DILocation(line: 1095, column: 34, scope: !1679)
!1682 = !DILocation(line: 1095, column: 11, scope: !1593)
!1683 = !DILocalVariable(name: "ip", scope: !1684, file: !279, line: 1096, type: !249)
!1684 = distinct !DILexicalBlock(scope: !1679, file: !279, line: 1095, column: 48)
!1685 = !DILocation(line: 1096, column: 26, scope: !1684)
!1686 = !DILocation(line: 1096, column: 31, scope: !1684)
!1687 = !DILocation(line: 1097, column: 10, scope: !1684)
!1688 = !DILocation(line: 1097, column: 16, scope: !1684)
!1689 = !DILocation(line: 1097, column: 28, scope: !1684)
!1690 = !DILocation(line: 1097, column: 39, scope: !1684)
!1691 = !DILocation(line: 1098, column: 63, scope: !1684)
!1692 = !DILocation(line: 1098, column: 44, scope: !1684)
!1693 = !DILocation(line: 1098, column: 69, scope: !1684)
!1694 = !DILocation(line: 1098, column: 10, scope: !1684)
!1695 = !DILocation(line: 1099, column: 39, scope: !1684)
!1696 = !DILocation(line: 1099, column: 10, scope: !1684)
!1697 = !DILocation(line: 1099, column: 16, scope: !1684)
!1698 = !DILocation(line: 1099, column: 37, scope: !1684)
!1699 = !DILocation(line: 1100, column: 7, scope: !1684)
!1700 = !DILocation(line: 1105, column: 36, scope: !1593)
!1701 = !DILocation(line: 1105, column: 7, scope: !1593)
!1702 = !DILocation(line: 1105, column: 13, scope: !1593)
!1703 = !DILocation(line: 1105, column: 34, scope: !1593)
!1704 = !DILocation(line: 1106, column: 35, scope: !1593)
!1705 = !DILocation(line: 1106, column: 46, scope: !1593)
!1706 = !DILocation(line: 1106, column: 7, scope: !1593)
!1707 = !DILocation(line: 1106, column: 13, scope: !1593)
!1708 = !DILocation(line: 1106, column: 33, scope: !1593)
!1709 = !DILocation(line: 1107, column: 4, scope: !1593)
!1710 = !DILocation(line: 1058, column: 34, scope: !1711)
!1711 = !DILexicalBlockFile(scope: !1587, file: !279, discriminator: 2)
!1712 = !DILocation(line: 1058, column: 4, scope: !1711)
!1713 = distinct !{!1713, !1714}
!1714 = !DILocation(line: 1058, column: 4, scope: !1563)
!1715 = !DILocation(line: 1109, column: 8, scope: !1563)
!1716 = !DILocation(line: 1111, column: 28, scope: !1563)
!1717 = !DILocation(line: 1111, column: 4, scope: !1563)
!1718 = !DILocation(line: 1112, column: 11, scope: !1563)
!1719 = !DILocation(line: 1112, column: 4, scope: !1563)
!1720 = !DILocation(line: 1113, column: 1, scope: !1563)
