; ModuleID = './[inter]keepalived--vrrp--vrrp_ipaddress.o.i'
source_filename = "./[inter]keepalived--vrrp--vrrp_ipaddress.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._nl_handle = type { %struct.nl_sock*, i32, i32, i32, %struct._thread* }
%struct.nl_sock = type opaque
%struct._thread = type { i64, i32, %struct._thread_master*, i32 (%struct._thread*)*, i8*, %struct.timeval, %union.anon.3, %struct._thread_event*, %union.anon.5 }
%struct._thread_master = type { %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct._list*, %struct.rb_root, %struct.epoll_event*, %struct._thread_event*, i32, i32, i32, i32, %struct._thread*, i64, i64, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.epoll_event = type opaque
%struct.timeval = type { i64, i64 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { i32, i32 }
%struct._thread_event = type { %struct._thread*, %struct._thread*, i64, i32, %struct.rb_node }
%union.anon.5 = type { %struct.rb_node }
%struct._data = type { i8*, i8, i8*, i8, i8*, i8*, %struct.sockaddr_storage, i8*, i64, %struct._list*, i32, i8, i8, i32, i8*, %struct._interface*, i32, i32, i32, i32, %struct.lvs_syncd_config, i8, %struct.sockaddr_in, %struct.sockaddr_in6, i32, %struct.timeval, i32, i32, i32, i32, i32, i32, i8, i8, i32, [29 x i8], [29 x i8], i8, [32 x i8], [32 x i8], [32 x i8], i8, i8, i8, i8, i8, i8, i32, i64, i8, i8, i8, i32, i64, %struct._notify_fifo, %struct._notify_fifo, %struct._notify_fifo, i32, i8, i32, i8, i32, i8, i32, i8, i8, i8, i32, i64, i32 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct._interface = type { [16 x i8], i32, %struct.in_addr, %struct.in6_addr, i32, i8, i32, i16, [32 x i8], [32 x i8], i64, i32, i8, i32, %struct._interface*, i32, %struct._interface*, i8, %struct._garp_delay*, i8, i32, i32, i32, i32, i32, i8, %struct._list* }
%struct.in_addr = type { i32 }
%struct.in6_addr = type { %union.anon.0 }
%union.anon.0 = type { [4 x i32] }
%struct._garp_delay = type { %struct.timeval, i8, %struct.timeval, i8, %struct.timeval, %struct.timeval, i32 }
%struct.lvs_syncd_config = type { i8*, %struct._vrrp_t*, i32, i16, %struct.sockaddr_storage, i16, i8, i8* }
%struct._vrrp_t = type { i16, i8*, %struct._vrrp_sgroup*, %struct._vrrp_stats*, %struct._interface*, i8, i8, i8, i32, i64, [16 x i8], %struct._list*, %struct._list*, %struct._list*, i32, i32, %struct.sockaddr_storage, i8, i8, %struct.sockaddr_storage, %struct._list*, i32, %struct.sockaddr_storage, i8, %struct.timeval, i32, %struct.timeval, %struct.timeval, i32, i32, i32, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, %struct._list*, %struct._list*, i8, i8, %struct._list*, %struct._list*, i32, i32, i32, i64, i8, i8, i64, %struct.timeval, i32, i32, i8, %struct._sock*, i32, i32, i32, i32, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, %struct.timeval, i8*, i64, i32, i8, [8 x i8], %struct._seq_counter, i32 }
%struct._vrrp_sgroup = type { i8*, %struct._vector*, %struct._list*, i32, i32, i32, i8, %struct._list*, %struct._list*, %struct._list*, %struct._list*, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, i32 }
%struct._vector = type { i32, i32, i8** }
%struct._vrrp_stats = type { i64, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i64, i64 }
%struct._sock = type { i16, %struct.sockaddr_storage, i32, i32, i8, i32, i32, i32, %struct._thread* }
%struct._notify_script = type { i8**, i32, i32, i32, i32 }
%struct._seq_counter = type { i8, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct._notify_fifo = type { i8*, i32, i8, %struct._notify_script* }
%struct._vrrp_data = type { %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list* }
%struct._ip_address = type { %struct.ifaddrmsg, %union.anon, %struct._interface*, i8*, i32, i32, i8, %union.anon.1, i8, %struct._static_track_group*, i8, i8, i8 }
%struct.ifaddrmsg = type { i8, i8, i8, i8, i32 }
%union.anon = type { %struct.in6_addr }
%union.anon.1 = type { %struct.in6_addr }
%struct._static_track_group = type { i8*, %struct._vector*, %struct._list* }
%struct.anon = type { %struct.in_addr, %struct.in_addr }
%struct.ifa_cacheinfo = type { i32, i32, i32, i32 }
%struct.anon.2 = type { %struct.nlmsghdr, %struct.ifaddrmsg, [256 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.ipt_handle = type opaque

@ipaddresstos.addr_str = internal global [46 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [58 x i8] c"Not adding address %s to %s since interface doesn't exist\00", align 1
@netlink_error_ignore = external global i32, align 4
@nl_cmd = external global %struct._nl_handle, align 8
@debug = external global i64, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"     %s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"default6\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"Invalid address prefix len %s for address %s - using %d\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"VRRP parsed invalid IP %s. skipping IP...\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"Cannot specify static ipaddress device more than once for %s\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"WARNING - interface %s for ip address %s doesn't exist\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"scope\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"Invalid scope '%s' specified for %s - ignoring\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"broadcast\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"brd\00", align 1
@.str.13 = private unnamed_addr constant [91 x i8] c"VRRP is trying to assign a broadcast %s to the IPv6 address %s !!?? WTF... skipping VIP...\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.16 = private unnamed_addr constant [63 x i8] c"VRRP is trying to assign invalid broadcast %s. skipping VIP...\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"peer\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"Peer %s - another peer has already been specified\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"Invalid peer address %s\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"Peer address %s does not match address family\00", align 1
@.str.22 = private unnamed_addr constant [70 x i8] c"Cannot specify address prefix when specifying peer address - ignoring\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"home\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"-nodad\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"mngtmpaddr\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"noprefixroute\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"autojoin\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"no_track\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"track_group\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"track_group %s is a duplicate\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"track_group %s not found\00", align 1
@.str.32 = private unnamed_addr constant [59 x i8] c"Unknown configuration entry '%s' for ip address - ignoring\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"No %s parameter specified for %s\00", align 1
@.str.34 = private unnamed_addr constant [73 x i8] c"Cannot specify broadcast and peer addresses - ignoring broadcast address\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"Address prefix length %d too long for broadcast\00", align 1
@global_data = external global %struct._data*, align 8
@.str.36 = private unnamed_addr constant [5 x i8] c"eth0\00", align 1
@.str.37 = private unnamed_addr constant [58 x i8] c"Default interface %s doesn't exist for static address %s.\00", align 1
@.str.38 = private unnamed_addr constant [62 x i8] c"Cannot specify scope for IPv6 addresses (%s) - ignoring scope\00", align 1
@.str.39 = private unnamed_addr constant [62 x i8] c"Cannot specify label for IPv6 addresses (%s) - ignoring label\00", align 1
@.str.40 = private unnamed_addr constant [57 x i8] c"Static route have track_group if interface not specified\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"Removing a complete VIP or e-VIP block\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"ip address %s/%d dev %s, no longer exist\00", align 1
@old_vrrp_data = external global %struct._vrrp_data*, align 8
@vrrp_data = external global %struct._vrrp_data*, align 8
@block_ipv4 = external global i8, align 1
@block_ipv6 = external global i8, align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"Restoring deleted static address %s\00", align 1
@garp_delay = common global %struct._list* null, align 8
@.str.44 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"/%d\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c" brd %s\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c" dev %s scope %s\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c" label %s\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c" peer %s/%d\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c" home\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c" -nodad\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c" mngtmpaddr\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c" noprefixroute\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c" autojoin\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c" no_track\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c" track_group %s\00", align 1

; Function Attrs: nounwind uwtable
define i8* @ipaddresstos(i8*, %struct._ip_address*) #0 !dbg !360 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._ip_address*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !372, metadata !373), !dbg !374
  store %struct._ip_address* %1, %struct._ip_address** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %4, metadata !375, metadata !373), !dbg !376
  %5 = load i8*, i8** %3, align 8, !dbg !377
  %6 = icmp ne i8* %5, null, !dbg !377
  br i1 %6, label %8, label %7, !dbg !379

; <label>:7:                                      ; preds = %2
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @ipaddresstos.addr_str, i32 0, i32 0), i8** %3, align 8, !dbg !380
  br label %8, !dbg !381

; <label>:8:                                      ; preds = %7, %2
  %9 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !382
  %10 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %9, i32 0, i32 0, !dbg !384
  %11 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %10, i32 0, i32 0, !dbg !385
  %12 = load i8, i8* %11, align 8, !dbg !385
  %13 = zext i8 %12 to i32, !dbg !386
  %14 = icmp eq i32 %13, 10, !dbg !387
  br i1 %14, label %15, label %22, !dbg !388

; <label>:15:                                     ; preds = %8
  %16 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !389
  %17 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %16, i32 0, i32 1, !dbg !391
  %18 = bitcast %union.anon* %17 to %struct.in6_addr*, !dbg !392
  %19 = bitcast %struct.in6_addr* %18 to i8*, !dbg !393
  %20 = load i8*, i8** %3, align 8, !dbg !394
  %21 = call i8* @inet_ntop(i32 10, i8* %19, i8* %20, i32 46) #8, !dbg !395
  br label %30, !dbg !396

; <label>:22:                                     ; preds = %8
  %23 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !397
  %24 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %23, i32 0, i32 1, !dbg !399
  %25 = bitcast %union.anon* %24 to %struct.anon*, !dbg !400
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 0, !dbg !401
  %27 = bitcast %struct.in_addr* %26 to i8*, !dbg !402
  %28 = load i8*, i8** %3, align 8, !dbg !403
  %29 = call i8* @inet_ntop(i32 2, i8* %27, i8* %28, i32 16) #8, !dbg !404
  br label %30

; <label>:30:                                     ; preds = %22, %15
  %31 = load i8*, i8** %3, align 8, !dbg !405
  ret i8* %31, !dbg !406
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @inet_ntop(i32, i8*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @netlink_ipaddress(%struct._ip_address*, i32) #0 !dbg !407 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._ip_address*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifa_cacheinfo, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.anon.2, align 4
  %9 = alloca i32, align 4
  store %struct._ip_address* %0, %struct._ip_address** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %4, metadata !410, metadata !373), !dbg !411
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !412, metadata !373), !dbg !413
  call void @llvm.dbg.declare(metadata %struct.ifa_cacheinfo* %6, metadata !414, metadata !373), !dbg !421
  call void @llvm.dbg.declare(metadata i32* %7, metadata !422, metadata !373), !dbg !423
  store i32 1, i32* %7, align 4, !dbg !423
  call void @llvm.dbg.declare(metadata %struct.anon.2* %8, metadata !424, metadata !373), !dbg !442
  call void @llvm.dbg.declare(metadata i32* %9, metadata !443, metadata !373), !dbg !444
  store i32 0, i32* %9, align 4, !dbg !444
  %10 = load i32, i32* %5, align 4, !dbg !445
  %11 = icmp eq i32 %10, 1, !dbg !447
  br i1 %11, label %12, label %36, !dbg !448

; <label>:12:                                     ; preds = %2
  %13 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !449
  %14 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %13, i32 0, i32 2, !dbg !452
  %15 = load %struct._interface*, %struct._interface** %14, align 8, !dbg !452
  %16 = getelementptr inbounds %struct._interface, %struct._interface* %15, i32 0, i32 1, !dbg !453
  %17 = load i32, i32* %16, align 8, !dbg !453
  %18 = icmp ne i32 %17, 0, !dbg !449
  br i1 %18, label %27, label %19, !dbg !454

; <label>:19:                                     ; preds = %12
  %20 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !455
  %21 = call i8* @ipaddresstos(i8* null, %struct._ip_address* %20), !dbg !457
  %22 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !458
  %23 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %22, i32 0, i32 2, !dbg !459
  %24 = load %struct._interface*, %struct._interface** %23, align 8, !dbg !459
  %25 = getelementptr inbounds %struct._interface, %struct._interface* %24, i32 0, i32 0, !dbg !460
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i32 0, i32 0, !dbg !458
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i32 0, i32 0), i8* %21, i8* %26), !dbg !461
  store i32 -1, i32* %3, align 4, !dbg !463
  br label %219, !dbg !463

; <label>:27:                                     ; preds = %12
  %28 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !464
  %29 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %28, i32 0, i32 2, !dbg !465
  %30 = load %struct._interface*, %struct._interface** %29, align 8, !dbg !465
  %31 = getelementptr inbounds %struct._interface, %struct._interface* %30, i32 0, i32 1, !dbg !466
  %32 = load i32, i32* %31, align 8, !dbg !466
  %33 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !467
  %34 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %33, i32 0, i32 0, !dbg !468
  %35 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %34, i32 0, i32 4, !dbg !469
  store i32 %32, i32* %35, align 4, !dbg !470
  br label %45, !dbg !471

; <label>:36:                                     ; preds = %2
  %37 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !472
  %38 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %37, i32 0, i32 2, !dbg !474
  %39 = load %struct._interface*, %struct._interface** %38, align 8, !dbg !474
  %40 = getelementptr inbounds %struct._interface, %struct._interface* %39, i32 0, i32 1, !dbg !475
  %41 = load i32, i32* %40, align 8, !dbg !475
  %42 = icmp ne i32 %41, 0, !dbg !472
  br i1 %42, label %44, label %43, !dbg !476

; <label>:43:                                     ; preds = %36
  store i32 0, i32* %3, align 4, !dbg !477
  br label %219, !dbg !477

; <label>:44:                                     ; preds = %36
  br label %45

; <label>:45:                                     ; preds = %44, %27
  %46 = bitcast %struct.anon.2* %8 to i8*, !dbg !479
  call void @llvm.memset.p0i8.i64(i8* %46, i8 0, i64 280, i32 4, i1 false), !dbg !479
  %47 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8, i32 0, i32 0, !dbg !480
  %48 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %47, i32 0, i32 0, !dbg !481
  store i32 24, i32* %48, align 4, !dbg !482
  %49 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8, i32 0, i32 0, !dbg !483
  %50 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %49, i32 0, i32 2, !dbg !484
  store i16 1, i16* %50, align 2, !dbg !485
  %51 = load i32, i32* %5, align 4, !dbg !486
  %52 = icmp eq i32 %51, 0, !dbg !487
  %53 = select i1 %52, i32 21, i32 20, !dbg !488
  %54 = trunc i32 %53 to i16, !dbg !488
  %55 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8, i32 0, i32 0, !dbg !489
  %56 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %55, i32 0, i32 1, !dbg !490
  store i16 %54, i16* %56, align 4, !dbg !491
  %57 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8, i32 0, i32 1, !dbg !492
  %58 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !493
  %59 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %58, i32 0, i32 0, !dbg !494
  %60 = bitcast %struct.ifaddrmsg* %57 to i8*, !dbg !494
  %61 = bitcast %struct.ifaddrmsg* %59 to i8*, !dbg !494
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %61, i64 8, i32 4, i1 false), !dbg !494
  %62 = load i32, i32* %5, align 4, !dbg !495
  %63 = icmp eq i32 %62, 1, !dbg !497
  br i1 %63, label %64, label %68, !dbg !498

; <label>:64:                                     ; preds = %45
  %65 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !499
  %66 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %65, i32 0, i32 4, !dbg !500
  %67 = load i32, i32* %66, align 8, !dbg !500
  store i32 %67, i32* %9, align 4, !dbg !501
  br label %68, !dbg !502

; <label>:68:                                     ; preds = %64, %45
  %69 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !503
  %70 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %69, i32 0, i32 0, !dbg !505
  %71 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %70, i32 0, i32 0, !dbg !506
  %72 = load i8, i8* %71, align 8, !dbg !506
  %73 = zext i8 %72 to i32, !dbg !507
  %74 = icmp eq i32 %73, 10, !dbg !508
  br i1 %74, label %75, label %109, !dbg !509

; <label>:75:                                     ; preds = %68
  %76 = load i32, i32* %5, align 4, !dbg !510
  %77 = icmp eq i32 %76, 1, !dbg !513
  br i1 %77, label %78, label %102, !dbg !514

; <label>:78:                                     ; preds = %75
  %79 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !515
  %80 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %79, i32 0, i32 0, !dbg !518
  %81 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %80, i32 0, i32 1, !dbg !519
  %82 = load i8, i8* %81, align 1, !dbg !519
  %83 = zext i8 %82 to i32, !dbg !515
  %84 = icmp eq i32 %83, 128, !dbg !520
  br i1 %84, label %85, label %92, !dbg !521

; <label>:85:                                     ; preds = %78
  %86 = bitcast %struct.ifa_cacheinfo* %6 to i8*, !dbg !522
  call void @llvm.memset.p0i8.i64(i8* %86, i8 0, i64 16, i32 4, i1 false), !dbg !522
  %87 = getelementptr inbounds %struct.ifa_cacheinfo, %struct.ifa_cacheinfo* %6, i32 0, i32 0, !dbg !524
  store i32 0, i32* %87, align 4, !dbg !525
  %88 = getelementptr inbounds %struct.ifa_cacheinfo, %struct.ifa_cacheinfo* %6, i32 0, i32 1, !dbg !526
  store i32 -1, i32* %88, align 4, !dbg !527
  %89 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8, i32 0, i32 0, !dbg !528
  %90 = bitcast %struct.ifa_cacheinfo* %6 to i8*, !dbg !529
  %91 = call i32 @addattr_l(%struct.nlmsghdr* %89, i64 280, i16 zeroext 6, i8* %90, i64 16), !dbg !530
  br label %92, !dbg !531

; <label>:92:                                     ; preds = %85, %78
  %93 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !532
  %94 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %93, i32 0, i32 5, !dbg !534
  %95 = load i32, i32* %94, align 4, !dbg !534
  %96 = and i32 %95, 2, !dbg !535
  %97 = icmp ne i32 %96, 0, !dbg !535
  br i1 %97, label %101, label %98, !dbg !536

; <label>:98:                                     ; preds = %92
  %99 = load i32, i32* %9, align 4, !dbg !537
  %100 = or i32 %99, 2, !dbg !537
  store i32 %100, i32* %9, align 4, !dbg !537
  br label %101, !dbg !538

; <label>:101:                                    ; preds = %98, %92
  br label %102, !dbg !539

; <label>:102:                                    ; preds = %101, %75
  %103 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8, i32 0, i32 0, !dbg !540
  %104 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !541
  %105 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %104, i32 0, i32 1, !dbg !542
  %106 = bitcast %union.anon* %105 to %struct.in6_addr*, !dbg !543
  %107 = bitcast %struct.in6_addr* %106 to i8*, !dbg !544
  %108 = call i32 @addattr_l(%struct.nlmsghdr* %103, i64 280, i16 zeroext 2, i8* %107, i64 16), !dbg !545
  br label %145, !dbg !546

; <label>:109:                                    ; preds = %68
  %110 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8, i32 0, i32 0, !dbg !547
  %111 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !549
  %112 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %111, i32 0, i32 1, !dbg !550
  %113 = bitcast %union.anon* %112 to %struct.anon*, !dbg !551
  %114 = getelementptr inbounds %struct.anon, %struct.anon* %113, i32 0, i32 0, !dbg !552
  %115 = bitcast %struct.in_addr* %114 to i8*, !dbg !553
  %116 = call i32 @addattr_l(%struct.nlmsghdr* %110, i64 280, i16 zeroext 2, i8* %115, i64 4), !dbg !554
  %117 = load i32, i32* %5, align 4, !dbg !555
  %118 = icmp eq i32 %117, 1, !dbg !557
  br i1 %118, label %119, label %136, !dbg !558

; <label>:119:                                    ; preds = %109
  %120 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !559
  %121 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %120, i32 0, i32 1, !dbg !562
  %122 = bitcast %union.anon* %121 to %struct.anon*, !dbg !563
  %123 = getelementptr inbounds %struct.anon, %struct.anon* %122, i32 0, i32 1, !dbg !564
  %124 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %123, i32 0, i32 0, !dbg !565
  %125 = load i32, i32* %124, align 4, !dbg !565
  %126 = icmp ne i32 %125, 0, !dbg !559
  br i1 %126, label %127, label %135, !dbg !566

; <label>:127:                                    ; preds = %119
  %128 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8, i32 0, i32 0, !dbg !567
  %129 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !568
  %130 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %129, i32 0, i32 1, !dbg !569
  %131 = bitcast %union.anon* %130 to %struct.anon*, !dbg !570
  %132 = getelementptr inbounds %struct.anon, %struct.anon* %131, i32 0, i32 1, !dbg !571
  %133 = bitcast %struct.in_addr* %132 to i8*, !dbg !572
  %134 = call i32 @addattr_l(%struct.nlmsghdr* %128, i64 280, i16 zeroext 4, i8* %133, i64 4), !dbg !573
  br label %135, !dbg !573

; <label>:135:                                    ; preds = %127, %119
  br label %144, !dbg !574

; <label>:136:                                    ; preds = %109
  %137 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8, i32 0, i32 0, !dbg !575
  %138 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !577
  %139 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %138, i32 0, i32 1, !dbg !578
  %140 = bitcast %union.anon* %139 to %struct.anon*, !dbg !579
  %141 = getelementptr inbounds %struct.anon, %struct.anon* %140, i32 0, i32 0, !dbg !580
  %142 = bitcast %struct.in_addr* %141 to i8*, !dbg !581
  %143 = call i32 @addattr_l(%struct.nlmsghdr* %137, i64 280, i16 zeroext 1, i8* %142, i64 4), !dbg !582
  br label %144

; <label>:144:                                    ; preds = %136, %135
  br label %145

; <label>:145:                                    ; preds = %144, %102
  %146 = load i32, i32* %5, align 4, !dbg !583
  %147 = icmp eq i32 %146, 1, !dbg !585
  br i1 %147, label %148, label %190, !dbg !586

; <label>:148:                                    ; preds = %145
  %149 = load i32, i32* %9, align 4, !dbg !587
  %150 = icmp ne i32 %149, 0, !dbg !587
  br i1 %150, label %151, label %155, !dbg !590

; <label>:151:                                    ; preds = %148
  %152 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8, i32 0, i32 0, !dbg !591
  %153 = load i32, i32* %9, align 4, !dbg !592
  %154 = call i32 @addattr32(%struct.nlmsghdr* %152, i64 280, i16 zeroext 8, i32 %153), !dbg !593
  br label %155, !dbg !593

; <label>:155:                                    ; preds = %151, %148
  %156 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !594
  %157 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %156, i32 0, i32 3, !dbg !596
  %158 = load i8*, i8** %157, align 8, !dbg !596
  %159 = icmp ne i8* %158, null, !dbg !594
  br i1 %159, label %160, label %171, !dbg !597

; <label>:160:                                    ; preds = %155
  %161 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8, i32 0, i32 0, !dbg !598
  %162 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !599
  %163 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %162, i32 0, i32 3, !dbg !600
  %164 = load i8*, i8** %163, align 8, !dbg !600
  %165 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !601
  %166 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %165, i32 0, i32 3, !dbg !602
  %167 = load i8*, i8** %166, align 8, !dbg !602
  %168 = call i64 @strlen(i8* %167) #9, !dbg !603
  %169 = add i64 %168, 1, !dbg !604
  %170 = call i32 @addattr_l(%struct.nlmsghdr* %161, i64 280, i16 zeroext 3, i8* %164, i64 %169), !dbg !605
  br label %171, !dbg !605

; <label>:171:                                    ; preds = %160, %155
  %172 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !606
  %173 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %172, i32 0, i32 6, !dbg !608
  %174 = load i8, i8* %173, align 8, !dbg !608
  %175 = trunc i8 %174 to i1, !dbg !608
  br i1 %175, label %176, label %189, !dbg !609

; <label>:176:                                    ; preds = %171
  %177 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8, i32 0, i32 0, !dbg !610
  %178 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !611
  %179 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %178, i32 0, i32 7, !dbg !612
  %180 = bitcast %union.anon.1* %179 to i8*, !dbg !613
  %181 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8, i32 0, i32 1, !dbg !614
  %182 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %181, i32 0, i32 0, !dbg !615
  %183 = load i8, i8* %182, align 4, !dbg !615
  %184 = zext i8 %183 to i32, !dbg !616
  %185 = icmp eq i32 %184, 10, !dbg !617
  %186 = select i1 %185, i32 16, i32 4, !dbg !616
  %187 = sext i32 %186 to i64, !dbg !616
  %188 = call i32 @addattr_l(%struct.nlmsghdr* %177, i64 280, i16 zeroext 1, i8* %180, i64 %187), !dbg !618
  br label %189, !dbg !618

; <label>:189:                                    ; preds = %176, %171
  br label %190, !dbg !619

; <label>:190:                                    ; preds = %189, %145
  %191 = load i32, i32* %5, align 4, !dbg !620
  %192 = icmp eq i32 %191, 0, !dbg !622
  br i1 %192, label %193, label %212, !dbg !623

; <label>:193:                                    ; preds = %190
  %194 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !624
  %195 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %194, i32 0, i32 2, !dbg !625
  %196 = load %struct._interface*, %struct._interface** %195, align 8, !dbg !625
  %197 = getelementptr inbounds %struct._interface, %struct._interface* %196, i32 0, i32 4, !dbg !626
  %198 = load i32, i32* %197, align 8, !dbg !626
  %199 = and i32 %198, 65, !dbg !627
  %200 = icmp ne i32 %199, 65, !dbg !628
  br i1 %200, label %211, label %201, !dbg !629

; <label>:201:                                    ; preds = %193
  %202 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !630
  %203 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %202, i32 0, i32 2, !dbg !631
  %204 = load %struct._interface*, %struct._interface** %203, align 8, !dbg !631
  %205 = getelementptr inbounds %struct._interface, %struct._interface* %204, i32 0, i32 14, !dbg !632
  %206 = load %struct._interface*, %struct._interface** %205, align 8, !dbg !632
  %207 = getelementptr inbounds %struct._interface, %struct._interface* %206, i32 0, i32 4, !dbg !633
  %208 = load i32, i32* %207, align 8, !dbg !633
  %209 = and i32 %208, 65, !dbg !634
  %210 = icmp ne i32 %209, 65, !dbg !635
  br i1 %210, label %211, label %212, !dbg !636

; <label>:211:                                    ; preds = %201, %193
  store i32 19, i32* @netlink_error_ignore, align 4, !dbg !638
  br label %212, !dbg !639

; <label>:212:                                    ; preds = %211, %201, %190
  %213 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8, i32 0, i32 0, !dbg !640
  %214 = call i64 @netlink_talk(%struct._nl_handle* @nl_cmd, %struct.nlmsghdr* %213), !dbg !642
  %215 = icmp slt i64 %214, 0, !dbg !643
  br i1 %215, label %216, label %217, !dbg !644

; <label>:216:                                    ; preds = %212
  store i32 -1, i32* %7, align 4, !dbg !645
  br label %217, !dbg !646

; <label>:217:                                    ; preds = %216, %212
  store i32 0, i32* @netlink_error_ignore, align 4, !dbg !647
  %218 = load i32, i32* %7, align 4, !dbg !648
  store i32 %218, i32* %3, align 4, !dbg !649
  br label %219, !dbg !649

; <label>:219:                                    ; preds = %217, %43, %19
  %220 = load i32, i32* %3, align 4, !dbg !650
  ret i32 %220, !dbg !650
}

declare void @log_message(i32, i8*, ...) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @addattr_l(%struct.nlmsghdr*, i64, i16 zeroext, i8*, i64) #3

declare i32 @addattr32(%struct.nlmsghdr*, i64, i16 zeroext, i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i64 @netlink_talk(%struct._nl_handle*, %struct.nlmsghdr*) #3

; Function Attrs: nounwind uwtable
define zeroext i1 @netlink_iplist(%struct._list*, i32, i1 zeroext) #0 !dbg !651 {
  %4 = alloca i1, align 1
  %5 = alloca %struct._list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct._ip_address*, align 8
  %9 = alloca %struct._element*, align 8
  %10 = alloca i8, align 1
  store %struct._list* %0, %struct._list** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %5, metadata !654, metadata !373), !dbg !655
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !656, metadata !373), !dbg !657
  %11 = zext i1 %2 to i8
  store i8 %11, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !658, metadata !373), !dbg !659
  call void @llvm.dbg.declare(metadata %struct._ip_address** %8, metadata !660, metadata !373), !dbg !661
  call void @llvm.dbg.declare(metadata %struct._element** %9, metadata !662, metadata !373), !dbg !664
  call void @llvm.dbg.declare(metadata i8* %10, metadata !665, metadata !373), !dbg !666
  store i8 0, i8* %10, align 1, !dbg !666
  %12 = load %struct._list*, %struct._list** %5, align 8, !dbg !667
  %13 = icmp eq %struct._list* %12, null, !dbg !669
  br i1 %13, label %24, label %14, !dbg !670

; <label>:14:                                     ; preds = %3
  %15 = load %struct._list*, %struct._list** %5, align 8, !dbg !671
  %16 = getelementptr inbounds %struct._list, %struct._list* %15, i32 0, i32 0, !dbg !673
  %17 = load %struct._element*, %struct._element** %16, align 8, !dbg !673
  %18 = icmp eq %struct._element* %17, null, !dbg !674
  br i1 %18, label %19, label %25, !dbg !675

; <label>:19:                                     ; preds = %14
  %20 = load %struct._list*, %struct._list** %5, align 8, !dbg !676
  %21 = getelementptr inbounds %struct._list, %struct._list* %20, i32 0, i32 1, !dbg !678
  %22 = load %struct._element*, %struct._element** %21, align 8, !dbg !678
  %23 = icmp eq %struct._element* %22, null, !dbg !679
  br i1 %23, label %24, label %25, !dbg !680

; <label>:24:                                     ; preds = %19, %3
  store i1 false, i1* %4, align 1, !dbg !681
  br label %91, !dbg !681

; <label>:25:                                     ; preds = %19, %14
  %26 = load %struct._list*, %struct._list** %5, align 8, !dbg !682
  %27 = icmp ne %struct._list* %26, null, !dbg !684
  br i1 %27, label %29, label %28, !dbg !685

; <label>:28:                                     ; preds = %25
  br label %33, !dbg !686

; <label>:29:                                     ; preds = %25
  %30 = load %struct._list*, %struct._list** %5, align 8, !dbg !688
  %31 = getelementptr inbounds %struct._list, %struct._list* %30, i32 0, i32 0, !dbg !690
  %32 = load %struct._element*, %struct._element** %31, align 8, !dbg !690
  br label %33, !dbg !691

; <label>:33:                                     ; preds = %29, %28
  %34 = phi %struct._element* [ null, %28 ], [ %32, %29 ], !dbg !692
  store %struct._element* %34, %struct._element** %9, align 8, !dbg !694
  br label %35, !dbg !695

; <label>:35:                                     ; preds = %84, %33
  %36 = load %struct._element*, %struct._element** %9, align 8, !dbg !696
  %37 = icmp ne %struct._element* %36, null, !dbg !699
  br i1 %37, label %38, label %88, !dbg !699

; <label>:38:                                     ; preds = %35
  %39 = load %struct._element*, %struct._element** %9, align 8, !dbg !700
  %40 = getelementptr inbounds %struct._element, %struct._element* %39, i32 0, i32 2, !dbg !702
  %41 = load i8*, i8** %40, align 8, !dbg !702
  %42 = bitcast i8* %41 to %struct._ip_address*, !dbg !703
  store %struct._ip_address* %42, %struct._ip_address** %8, align 8, !dbg !704
  %43 = load i32, i32* %6, align 4, !dbg !705
  %44 = icmp eq i32 %43, 1, !dbg !707
  br i1 %44, label %45, label %50, !dbg !708

; <label>:45:                                     ; preds = %38
  %46 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !709
  %47 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %46, i32 0, i32 10, !dbg !711
  %48 = load i8, i8* %47, align 8, !dbg !711
  %49 = trunc i8 %48 to i1, !dbg !711
  br i1 %49, label %50, label %63, !dbg !712

; <label>:50:                                     ; preds = %45, %38
  %51 = load i32, i32* %6, align 4, !dbg !713
  %52 = icmp eq i32 %51, 0, !dbg !714
  br i1 %52, label %53, label %83, !dbg !715

; <label>:53:                                     ; preds = %50
  %54 = load i8, i8* %7, align 1, !dbg !716
  %55 = trunc i8 %54 to i1, !dbg !716
  br i1 %55, label %63, label %56, !dbg !717

; <label>:56:                                     ; preds = %53
  %57 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !718
  %58 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %57, i32 0, i32 10, !dbg !719
  %59 = load i8, i8* %58, align 8, !dbg !719
  %60 = trunc i8 %59 to i1, !dbg !719
  br i1 %60, label %63, label %61, !dbg !720

; <label>:61:                                     ; preds = %56
  %62 = call zeroext i1 @__test_bit(i32 4, i64* @debug), !dbg !721
  br i1 %62, label %63, label %83, !dbg !723

; <label>:63:                                     ; preds = %61, %56, %53, %45
  %64 = load i8, i8* %7, align 1, !dbg !725
  %65 = trunc i8 %64 to i1, !dbg !725
  br i1 %65, label %66, label %67, !dbg !728

; <label>:66:                                     ; preds = %63
  store i32 19, i32* @netlink_error_ignore, align 4, !dbg !729
  br label %67, !dbg !730

; <label>:67:                                     ; preds = %66, %63
  %68 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !731
  %69 = load i32, i32* %6, align 4, !dbg !733
  %70 = call i32 @netlink_ipaddress(%struct._ip_address* %68, i32 %69), !dbg !734
  %71 = icmp sgt i32 %70, 0, !dbg !735
  br i1 %71, label %72, label %79, !dbg !736

; <label>:72:                                     ; preds = %67
  %73 = load i32, i32* %6, align 4, !dbg !737
  %74 = icmp eq i32 %73, 0, !dbg !739
  %75 = xor i1 %74, true, !dbg !740
  %76 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !741
  %77 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %76, i32 0, i32 10, !dbg !742
  %78 = zext i1 %75 to i8, !dbg !743
  store i8 %78, i8* %77, align 8, !dbg !743
  store i8 1, i8* %10, align 1, !dbg !744
  br label %82, !dbg !745

; <label>:79:                                     ; preds = %67
  %80 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !746
  %81 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %80, i32 0, i32 10, !dbg !747
  store i8 0, i8* %81, align 8, !dbg !748
  br label %82

; <label>:82:                                     ; preds = %79, %72
  br label %83, !dbg !749

; <label>:83:                                     ; preds = %82, %61, %50
  br label %84, !dbg !750

; <label>:84:                                     ; preds = %83
  %85 = load %struct._element*, %struct._element** %9, align 8, !dbg !751
  %86 = getelementptr inbounds %struct._element, %struct._element* %85, i32 0, i32 0, !dbg !753
  %87 = load %struct._element*, %struct._element** %86, align 8, !dbg !753
  store %struct._element* %87, %struct._element** %9, align 8, !dbg !754
  br label %35, !dbg !755, !llvm.loop !756

; <label>:88:                                     ; preds = %35
  %89 = load i8, i8* %10, align 1, !dbg !758
  %90 = trunc i8 %89 to i1, !dbg !758
  store i1 %90, i1* %4, align 1, !dbg !759
  br label %91, !dbg !759

; <label>:91:                                     ; preds = %88, %24
  %92 = load i1, i1* %4, align 1, !dbg !760
  ret i1 %92, !dbg !760
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @__test_bit(i32, i64*) #6 !dbg !761 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !766, metadata !373), !dbg !767
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !768, metadata !373), !dbg !769
  %5 = load i32, i32* %3, align 4, !dbg !770
  %6 = zext i32 %5 to i64, !dbg !771
  %7 = udiv i64 %6, 64, !dbg !772
  %8 = load i64*, i64** %4, align 8, !dbg !773
  %9 = getelementptr inbounds i64, i64* %8, i64 %7, !dbg !773
  %10 = load i64, i64* %9, align 8, !dbg !773
  %11 = load i32, i32* %3, align 4, !dbg !774
  %12 = zext i32 %11 to i64, !dbg !775
  %13 = urem i64 %12, 64, !dbg !776
  %14 = shl i64 1, %13, !dbg !777
  %15 = and i64 %10, %14, !dbg !778
  %16 = icmp ne i64 %15, 0, !dbg !779
  %17 = xor i1 %16, true, !dbg !779
  %18 = xor i1 %17, true, !dbg !780
  ret i1 %18, !dbg !781
}

; Function Attrs: nounwind uwtable
define void @handle_iptable_rule_to_iplist(%struct.ipt_handle*, %struct._list*, i32, i1 zeroext) #0 !dbg !782 {
  %5 = alloca %struct.ipt_handle*, align 8
  %6 = alloca %struct._list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca %struct._ip_address*, align 8
  %10 = alloca %struct._element*, align 8
  store %struct.ipt_handle* %0, %struct.ipt_handle** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ipt_handle** %5, metadata !787, metadata !373), !dbg !788
  store %struct._list* %1, %struct._list** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %6, metadata !789, metadata !373), !dbg !790
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !791, metadata !373), !dbg !792
  %11 = zext i1 %3 to i8
  store i8 %11, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !793, metadata !373), !dbg !794
  call void @llvm.dbg.declare(metadata %struct._ip_address** %9, metadata !795, metadata !373), !dbg !796
  call void @llvm.dbg.declare(metadata %struct._element** %10, metadata !797, metadata !373), !dbg !798
  %12 = load %struct._list*, %struct._list** %6, align 8, !dbg !799
  %13 = icmp eq %struct._list* %12, null, !dbg !801
  br i1 %13, label %24, label %14, !dbg !802

; <label>:14:                                     ; preds = %4
  %15 = load %struct._list*, %struct._list** %6, align 8, !dbg !803
  %16 = getelementptr inbounds %struct._list, %struct._list* %15, i32 0, i32 0, !dbg !805
  %17 = load %struct._element*, %struct._element** %16, align 8, !dbg !805
  %18 = icmp eq %struct._element* %17, null, !dbg !806
  br i1 %18, label %19, label %25, !dbg !807

; <label>:19:                                     ; preds = %14
  %20 = load %struct._list*, %struct._list** %6, align 8, !dbg !808
  %21 = getelementptr inbounds %struct._list, %struct._list* %20, i32 0, i32 1, !dbg !810
  %22 = load %struct._element*, %struct._element** %21, align 8, !dbg !810
  %23 = icmp eq %struct._element* %22, null, !dbg !811
  br i1 %23, label %24, label %25, !dbg !812

; <label>:24:                                     ; preds = %19, %4
  br label %66, !dbg !813

; <label>:25:                                     ; preds = %19, %14
  %26 = load %struct._list*, %struct._list** %6, align 8, !dbg !814
  %27 = icmp ne %struct._list* %26, null, !dbg !816
  br i1 %27, label %29, label %28, !dbg !817

; <label>:28:                                     ; preds = %25
  br label %33, !dbg !818

; <label>:29:                                     ; preds = %25
  %30 = load %struct._list*, %struct._list** %6, align 8, !dbg !820
  %31 = getelementptr inbounds %struct._list, %struct._list* %30, i32 0, i32 0, !dbg !822
  %32 = load %struct._element*, %struct._element** %31, align 8, !dbg !822
  br label %33, !dbg !823

; <label>:33:                                     ; preds = %29, %28
  %34 = phi %struct._element* [ null, %28 ], [ %32, %29 ], !dbg !824
  store %struct._element* %34, %struct._element** %10, align 8, !dbg !826
  br label %35, !dbg !827

; <label>:35:                                     ; preds = %62, %33
  %36 = load %struct._element*, %struct._element** %10, align 8, !dbg !828
  %37 = icmp ne %struct._element* %36, null, !dbg !831
  br i1 %37, label %38, label %66, !dbg !831

; <label>:38:                                     ; preds = %35
  %39 = load %struct._element*, %struct._element** %10, align 8, !dbg !832
  %40 = getelementptr inbounds %struct._element, %struct._element* %39, i32 0, i32 2, !dbg !834
  %41 = load i8*, i8** %40, align 8, !dbg !834
  %42 = bitcast i8* %41 to %struct._ip_address*, !dbg !835
  store %struct._ip_address* %42, %struct._ip_address** %9, align 8, !dbg !836
  %43 = load i32, i32* %7, align 4, !dbg !837
  %44 = icmp eq i32 %43, 0, !dbg !839
  %45 = zext i1 %44 to i32, !dbg !839
  %46 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !840
  %47 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %46, i32 0, i32 11, !dbg !841
  %48 = load i8, i8* %47, align 1, !dbg !841
  %49 = trunc i8 %48 to i1, !dbg !841
  %50 = zext i1 %49 to i32, !dbg !840
  %51 = icmp eq i32 %45, %50, !dbg !842
  br i1 %51, label %55, label %52, !dbg !843

; <label>:52:                                     ; preds = %38
  %53 = load i8, i8* %8, align 1, !dbg !844
  %54 = trunc i8 %53 to i1, !dbg !844
  br i1 %54, label %55, label %61, !dbg !845

; <label>:55:                                     ; preds = %52, %38
  %56 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !847
  %57 = load i32, i32* %7, align 4, !dbg !848
  %58 = load %struct.ipt_handle*, %struct.ipt_handle** %5, align 8, !dbg !849
  %59 = load i8, i8* %8, align 1, !dbg !850
  %60 = trunc i8 %59 to i1, !dbg !850
  call void @handle_iptable_rule_to_vip(%struct._ip_address* %56, i32 %57, %struct.ipt_handle* %58, i1 zeroext %60), !dbg !851
  br label %61, !dbg !851

; <label>:61:                                     ; preds = %55, %52
  br label %62, !dbg !852

; <label>:62:                                     ; preds = %61
  %63 = load %struct._element*, %struct._element** %10, align 8, !dbg !853
  %64 = getelementptr inbounds %struct._element, %struct._element* %63, i32 0, i32 0, !dbg !855
  %65 = load %struct._element*, %struct._element** %64, align 8, !dbg !855
  store %struct._element* %65, %struct._element** %10, align 8, !dbg !856
  br label %35, !dbg !857, !llvm.loop !858

; <label>:66:                                     ; preds = %24, %35
  ret void, !dbg !860
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @handle_iptable_rule_to_vip(%struct._ip_address*, i32, %struct.ipt_handle*, i1 zeroext) #6 !dbg !861 {
  %5 = alloca %struct._ip_address*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipt_handle*, align 8
  %8 = alloca i8, align 1
  store %struct._ip_address* %0, %struct._ip_address** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %5, metadata !864, metadata !373), !dbg !865
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !866, metadata !373), !dbg !867
  store %struct.ipt_handle* %2, %struct.ipt_handle** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.ipt_handle** %7, metadata !868, metadata !373), !dbg !869
  %9 = zext i1 %3 to i8
  store i8 %9, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !870, metadata !373), !dbg !871
  %10 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !872
  %11 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %10, i32 0, i32 0, !dbg !874
  %12 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %11, i32 0, i32 0, !dbg !875
  %13 = load i8, i8* %12, align 8, !dbg !875
  %14 = zext i8 %13 to i32, !dbg !876
  %15 = icmp eq i32 %14, 10, !dbg !877
  br i1 %15, label %16, label %21, !dbg !878

; <label>:16:                                     ; preds = %4
  %17 = load i8, i8* @block_ipv6, align 1, !dbg !879
  %18 = trunc i8 %17 to i1, !dbg !879
  br i1 %18, label %20, label %19, !dbg !882

; <label>:19:                                     ; preds = %16
  br label %32, !dbg !883

; <label>:20:                                     ; preds = %16
  br label %26, !dbg !884

; <label>:21:                                     ; preds = %4
  %22 = load i8, i8* @block_ipv4, align 1, !dbg !885
  %23 = trunc i8 %22 to i1, !dbg !885
  br i1 %23, label %25, label %24, !dbg !888

; <label>:24:                                     ; preds = %21
  br label %32, !dbg !889

; <label>:25:                                     ; preds = %21
  br label %26

; <label>:26:                                     ; preds = %25, %20
  %27 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !890
  %28 = load i32, i32* %6, align 4, !dbg !892
  %29 = load %struct.ipt_handle*, %struct.ipt_handle** %7, align 8, !dbg !893
  %30 = load i8, i8* %8, align 1, !dbg !894
  %31 = trunc i8 %30 to i1, !dbg !894
  call void @handle_iptable_rule_to_vip_lib(%struct._ip_address* %27, i32 %28, %struct.ipt_handle* %29, i1 zeroext %31), !dbg !895
  br label %32, !dbg !896

; <label>:32:                                     ; preds = %26, %24, %19
  ret void, !dbg !897
}

; Function Attrs: nounwind uwtable
define void @free_ipaddress(i8*) #0 !dbg !898 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._ip_address*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !899, metadata !373), !dbg !900
  call void @llvm.dbg.declare(metadata %struct._ip_address** %3, metadata !901, metadata !373), !dbg !902
  %4 = load i8*, i8** %2, align 8, !dbg !903
  %5 = bitcast i8* %4 to %struct._ip_address*, !dbg !903
  store %struct._ip_address* %5, %struct._ip_address** %3, align 8, !dbg !902
  %6 = load %struct._ip_address*, %struct._ip_address** %3, align 8, !dbg !904
  %7 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %6, i32 0, i32 3, !dbg !907
  %8 = load i8*, i8** %7, align 8, !dbg !907
  %9 = icmp ne i8* %8, null, !dbg !904
  br i1 %9, label %10, label %16, !dbg !908

; <label>:10:                                     ; preds = %1
  %11 = load %struct._ip_address*, %struct._ip_address** %3, align 8, !dbg !909
  %12 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %11, i32 0, i32 3, !dbg !912
  %13 = load i8*, i8** %12, align 8, !dbg !912
  call void @free(i8* %13) #8, !dbg !913
  %14 = load %struct._ip_address*, %struct._ip_address** %3, align 8, !dbg !914
  %15 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %14, i32 0, i32 3, !dbg !915
  store i8* null, i8** %15, align 8, !dbg !916
  br label %16, !dbg !917

; <label>:16:                                     ; preds = %10, %1
  %17 = load %struct._ip_address*, %struct._ip_address** %3, align 8, !dbg !918
  %18 = bitcast %struct._ip_address* %17 to i8*, !dbg !918
  call void @free(i8* %18) #8, !dbg !919
  store %struct._ip_address* null, %struct._ip_address** %3, align 8, !dbg !920
  ret void, !dbg !921
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @dump_ipaddress(%struct._IO_FILE*, i8*) #0 !dbg !922 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._ip_address*, align 8
  %6 = alloca [256 x i8], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !923, metadata !373), !dbg !924
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !925, metadata !373), !dbg !926
  call void @llvm.dbg.declare(metadata %struct._ip_address** %5, metadata !927, metadata !373), !dbg !928
  %7 = load i8*, i8** %4, align 8, !dbg !929
  %8 = bitcast i8* %7 to %struct._ip_address*, !dbg !929
  store %struct._ip_address* %8, %struct._ip_address** %5, align 8, !dbg !928
  call void @llvm.dbg.declare(metadata [256 x i8]* %6, metadata !930, metadata !373), !dbg !931
  %9 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !932
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0, !dbg !933
  call void @format_ipaddress(%struct._ip_address* %9, i8* %10, i64 256), !dbg !934
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !935
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0, !dbg !936
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* %12), !dbg !937
  ret void, !dbg !938
}

; Function Attrs: nounwind uwtable
define internal void @format_ipaddress(%struct._ip_address*, i8*, i64) #0 !dbg !939 {
  %4 = alloca %struct._ip_address*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [46 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct._ip_address* %0, %struct._ip_address** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %4, metadata !942, metadata !373), !dbg !943
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !944, metadata !373), !dbg !945
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !946, metadata !373), !dbg !947
  call void @llvm.dbg.declare(metadata [46 x i8]* %7, metadata !948, metadata !373), !dbg !949
  call void @llvm.dbg.declare(metadata i8** %8, metadata !950, metadata !373), !dbg !951
  %10 = load i8*, i8** %5, align 8, !dbg !952
  store i8* %10, i8** %8, align 8, !dbg !951
  call void @llvm.dbg.declare(metadata i8** %9, metadata !953, metadata !373), !dbg !954
  %11 = load i8*, i8** %5, align 8, !dbg !955
  %12 = load i64, i64* %6, align 8, !dbg !956
  %13 = getelementptr inbounds i8, i8* %11, i64 %12, !dbg !957
  store i8* %13, i8** %9, align 8, !dbg !954
  %14 = load i8*, i8** %8, align 8, !dbg !958
  %15 = load i8*, i8** %9, align 8, !dbg !959
  %16 = load i8*, i8** %8, align 8, !dbg !960
  %17 = ptrtoint i8* %15 to i64, !dbg !961
  %18 = ptrtoint i8* %16 to i64, !dbg !961
  %19 = sub i64 %17, %18, !dbg !961
  %20 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !962
  %21 = call i8* @ipaddresstos(i8* null, %struct._ip_address* %20), !dbg !963
  %22 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %14, i64 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i8* %21) #8, !dbg !964
  %23 = load i8*, i8** %8, align 8, !dbg !966
  %24 = sext i32 %22 to i64, !dbg !966
  %25 = getelementptr inbounds i8, i8* %23, i64 %24, !dbg !966
  store i8* %25, i8** %8, align 8, !dbg !966
  %26 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !967
  %27 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %26, i32 0, i32 6, !dbg !969
  %28 = load i8, i8* %27, align 8, !dbg !969
  %29 = trunc i8 %28 to i1, !dbg !969
  br i1 %29, label %46, label %30, !dbg !970

; <label>:30:                                     ; preds = %3
  %31 = load i8*, i8** %8, align 8, !dbg !971
  %32 = load i8*, i8** %9, align 8, !dbg !972
  %33 = load i8*, i8** %8, align 8, !dbg !973
  %34 = ptrtoint i8* %32 to i64, !dbg !974
  %35 = ptrtoint i8* %33 to i64, !dbg !974
  %36 = sub i64 %34, %35, !dbg !974
  %37 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !975
  %38 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %37, i32 0, i32 0, !dbg !976
  %39 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %38, i32 0, i32 1, !dbg !977
  %40 = load i8, i8* %39, align 1, !dbg !977
  %41 = zext i8 %40 to i32, !dbg !975
  %42 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %31, i64 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i32 %41) #8, !dbg !978
  %43 = load i8*, i8** %8, align 8, !dbg !979
  %44 = sext i32 %42 to i64, !dbg !979
  %45 = getelementptr inbounds i8, i8* %43, i64 %44, !dbg !979
  store i8* %45, i8** %8, align 8, !dbg !979
  br label %46, !dbg !980

; <label>:46:                                     ; preds = %30, %3
  %47 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !981
  %48 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %47, i32 0, i32 0, !dbg !983
  %49 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %48, i32 0, i32 0, !dbg !984
  %50 = load i8, i8* %49, align 8, !dbg !984
  %51 = zext i8 %50 to i32, !dbg !985
  %52 = icmp eq i32 %51, 10, !dbg !986
  br i1 %52, label %79, label %53, !dbg !985

; <label>:53:                                     ; preds = %46
  %54 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !987
  %55 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %54, i32 0, i32 1, !dbg !989
  %56 = bitcast %union.anon* %55 to %struct.anon*, !dbg !990
  %57 = getelementptr inbounds %struct.anon, %struct.anon* %56, i32 0, i32 1, !dbg !991
  %58 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %57, i32 0, i32 0, !dbg !992
  %59 = load i32, i32* %58, align 4, !dbg !992
  %60 = icmp ne i32 %59, 0, !dbg !987
  br i1 %60, label %61, label %79, !dbg !993

; <label>:61:                                     ; preds = %53
  %62 = load i8*, i8** %8, align 8, !dbg !994
  %63 = load i8*, i8** %9, align 8, !dbg !996
  %64 = load i8*, i8** %8, align 8, !dbg !997
  %65 = ptrtoint i8* %63 to i64, !dbg !998
  %66 = ptrtoint i8* %64 to i64, !dbg !998
  %67 = sub i64 %65, %66, !dbg !998
  %68 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !999
  %69 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %68, i32 0, i32 1, !dbg !1000
  %70 = bitcast %union.anon* %69 to %struct.anon*, !dbg !1001
  %71 = getelementptr inbounds %struct.anon, %struct.anon* %70, i32 0, i32 1, !dbg !1002
  %72 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %71, i32 0, i32 0, !dbg !1003
  %73 = load i32, i32* %72, align 4, !dbg !1003
  %74 = call i8* @inet_ntop2(i32 %73), !dbg !1004
  %75 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %62, i64 %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i8* %74) #8, !dbg !1005
  %76 = load i8*, i8** %8, align 8, !dbg !1006
  %77 = sext i32 %75 to i64, !dbg !1006
  %78 = getelementptr inbounds i8, i8* %76, i64 %77, !dbg !1006
  store i8* %78, i8** %8, align 8, !dbg !1006
  br label %79, !dbg !1007

; <label>:79:                                     ; preds = %61, %53, %46
  %80 = load i8*, i8** %8, align 8, !dbg !1008
  %81 = load i8*, i8** %9, align 8, !dbg !1009
  %82 = load i8*, i8** %8, align 8, !dbg !1010
  %83 = ptrtoint i8* %81 to i64, !dbg !1011
  %84 = ptrtoint i8* %82 to i64, !dbg !1011
  %85 = sub i64 %83, %84, !dbg !1011
  %86 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !1012
  %87 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %86, i32 0, i32 2, !dbg !1013
  %88 = load %struct._interface*, %struct._interface** %87, align 8, !dbg !1013
  %89 = getelementptr inbounds %struct._interface, %struct._interface* %88, i32 0, i32 0, !dbg !1014
  %90 = getelementptr inbounds [16 x i8], [16 x i8]* %89, i32 0, i32 0, !dbg !1015
  %91 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !1016
  %92 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %91, i32 0, i32 0, !dbg !1017
  %93 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %92, i32 0, i32 3, !dbg !1018
  %94 = load i8, i8* %93, align 1, !dbg !1018
  %95 = zext i8 %94 to i32, !dbg !1016
  %96 = call i8* @get_rttables_scope(i32 %95), !dbg !1019
  %97 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %80, i64 %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0), i8* %90, i8* %96) #8, !dbg !1020
  %98 = load i8*, i8** %8, align 8, !dbg !1021
  %99 = sext i32 %97 to i64, !dbg !1021
  %100 = getelementptr inbounds i8, i8* %98, i64 %99, !dbg !1021
  store i8* %100, i8** %8, align 8, !dbg !1021
  %101 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !1022
  %102 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %101, i32 0, i32 3, !dbg !1024
  %103 = load i8*, i8** %102, align 8, !dbg !1024
  %104 = icmp ne i8* %103, null, !dbg !1022
  br i1 %104, label %105, label %119, !dbg !1025

; <label>:105:                                    ; preds = %79
  %106 = load i8*, i8** %8, align 8, !dbg !1026
  %107 = load i8*, i8** %9, align 8, !dbg !1027
  %108 = load i8*, i8** %8, align 8, !dbg !1028
  %109 = ptrtoint i8* %107 to i64, !dbg !1029
  %110 = ptrtoint i8* %108 to i64, !dbg !1029
  %111 = sub i64 %109, %110, !dbg !1029
  %112 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !1030
  %113 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %112, i32 0, i32 3, !dbg !1031
  %114 = load i8*, i8** %113, align 8, !dbg !1031
  %115 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %106, i64 %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* %114) #8, !dbg !1032
  %116 = load i8*, i8** %8, align 8, !dbg !1033
  %117 = sext i32 %115 to i64, !dbg !1033
  %118 = getelementptr inbounds i8, i8* %116, i64 %117, !dbg !1033
  store i8* %118, i8** %8, align 8, !dbg !1033
  br label %119, !dbg !1034

; <label>:119:                                    ; preds = %105, %79
  %120 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !1035
  %121 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %120, i32 0, i32 6, !dbg !1037
  %122 = load i8, i8* %121, align 8, !dbg !1037
  %123 = trunc i8 %122 to i1, !dbg !1037
  br i1 %123, label %124, label %151, !dbg !1038

; <label>:124:                                    ; preds = %119
  %125 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !1039
  %126 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %125, i32 0, i32 0, !dbg !1041
  %127 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %126, i32 0, i32 0, !dbg !1042
  %128 = load i8, i8* %127, align 8, !dbg !1042
  %129 = zext i8 %128 to i32, !dbg !1039
  %130 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !1043
  %131 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %130, i32 0, i32 7, !dbg !1044
  %132 = bitcast %union.anon.1* %131 to i8*, !dbg !1045
  %133 = getelementptr inbounds [46 x i8], [46 x i8]* %7, i32 0, i32 0, !dbg !1046
  %134 = call i8* @inet_ntop(i32 %129, i8* %132, i8* %133, i32 46) #8, !dbg !1047
  %135 = load i8*, i8** %8, align 8, !dbg !1048
  %136 = load i8*, i8** %9, align 8, !dbg !1049
  %137 = load i8*, i8** %8, align 8, !dbg !1050
  %138 = ptrtoint i8* %136 to i64, !dbg !1051
  %139 = ptrtoint i8* %137 to i64, !dbg !1051
  %140 = sub i64 %138, %139, !dbg !1051
  %141 = getelementptr inbounds [46 x i8], [46 x i8]* %7, i32 0, i32 0, !dbg !1052
  %142 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !1053
  %143 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %142, i32 0, i32 0, !dbg !1054
  %144 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %143, i32 0, i32 1, !dbg !1055
  %145 = load i8, i8* %144, align 1, !dbg !1055
  %146 = zext i8 %145 to i32, !dbg !1053
  %147 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %135, i64 %140, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8* %141, i32 %146) #8, !dbg !1056
  %148 = load i8*, i8** %8, align 8, !dbg !1057
  %149 = sext i32 %147 to i64, !dbg !1057
  %150 = getelementptr inbounds i8, i8* %148, i64 %149, !dbg !1057
  store i8* %150, i8** %8, align 8, !dbg !1057
  br label %151, !dbg !1058

; <label>:151:                                    ; preds = %124, %119
  %152 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !1059
  %153 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %152, i32 0, i32 4, !dbg !1061
  %154 = load i32, i32* %153, align 8, !dbg !1061
  %155 = and i32 %154, 16, !dbg !1062
  %156 = icmp ne i32 %155, 0, !dbg !1062
  br i1 %156, label %157, label %168, !dbg !1063

; <label>:157:                                    ; preds = %151
  %158 = load i8*, i8** %8, align 8, !dbg !1064
  %159 = load i8*, i8** %9, align 8, !dbg !1065
  %160 = load i8*, i8** %8, align 8, !dbg !1066
  %161 = ptrtoint i8* %159 to i64, !dbg !1067
  %162 = ptrtoint i8* %160 to i64, !dbg !1067
  %163 = sub i64 %161, %162, !dbg !1067
  %164 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %158, i64 %163, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0)) #8, !dbg !1068
  %165 = load i8*, i8** %8, align 8, !dbg !1069
  %166 = sext i32 %164 to i64, !dbg !1069
  %167 = getelementptr inbounds i8, i8* %165, i64 %166, !dbg !1069
  store i8* %167, i8** %8, align 8, !dbg !1069
  br label %168, !dbg !1070

; <label>:168:                                    ; preds = %157, %151
  %169 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !1071
  %170 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %169, i32 0, i32 5, !dbg !1073
  %171 = load i32, i32* %170, align 4, !dbg !1073
  %172 = and i32 %171, 2, !dbg !1074
  %173 = icmp ne i32 %172, 0, !dbg !1074
  br i1 %173, label %174, label %185, !dbg !1075

; <label>:174:                                    ; preds = %168
  %175 = load i8*, i8** %8, align 8, !dbg !1076
  %176 = load i8*, i8** %9, align 8, !dbg !1077
  %177 = load i8*, i8** %8, align 8, !dbg !1078
  %178 = ptrtoint i8* %176 to i64, !dbg !1079
  %179 = ptrtoint i8* %177 to i64, !dbg !1079
  %180 = sub i64 %178, %179, !dbg !1079
  %181 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %175, i64 %180, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0)) #8, !dbg !1080
  %182 = load i8*, i8** %8, align 8, !dbg !1081
  %183 = sext i32 %181 to i64, !dbg !1081
  %184 = getelementptr inbounds i8, i8* %182, i64 %183, !dbg !1081
  store i8* %184, i8** %8, align 8, !dbg !1081
  br label %185, !dbg !1082

; <label>:185:                                    ; preds = %174, %168
  %186 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !1083
  %187 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %186, i32 0, i32 4, !dbg !1085
  %188 = load i32, i32* %187, align 8, !dbg !1085
  %189 = and i32 %188, 256, !dbg !1086
  %190 = icmp ne i32 %189, 0, !dbg !1086
  br i1 %190, label %191, label %202, !dbg !1087

; <label>:191:                                    ; preds = %185
  %192 = load i8*, i8** %8, align 8, !dbg !1088
  %193 = load i8*, i8** %9, align 8, !dbg !1089
  %194 = load i8*, i8** %8, align 8, !dbg !1090
  %195 = ptrtoint i8* %193 to i64, !dbg !1091
  %196 = ptrtoint i8* %194 to i64, !dbg !1091
  %197 = sub i64 %195, %196, !dbg !1091
  %198 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %192, i64 %197, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0)) #8, !dbg !1092
  %199 = load i8*, i8** %8, align 8, !dbg !1093
  %200 = sext i32 %198 to i64, !dbg !1093
  %201 = getelementptr inbounds i8, i8* %199, i64 %200, !dbg !1093
  store i8* %201, i8** %8, align 8, !dbg !1093
  br label %202, !dbg !1094

; <label>:202:                                    ; preds = %191, %185
  %203 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !1095
  %204 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %203, i32 0, i32 4, !dbg !1097
  %205 = load i32, i32* %204, align 8, !dbg !1097
  %206 = and i32 %205, 512, !dbg !1098
  %207 = icmp ne i32 %206, 0, !dbg !1098
  br i1 %207, label %208, label %219, !dbg !1099

; <label>:208:                                    ; preds = %202
  %209 = load i8*, i8** %8, align 8, !dbg !1100
  %210 = load i8*, i8** %9, align 8, !dbg !1101
  %211 = load i8*, i8** %8, align 8, !dbg !1102
  %212 = ptrtoint i8* %210 to i64, !dbg !1103
  %213 = ptrtoint i8* %211 to i64, !dbg !1103
  %214 = sub i64 %212, %213, !dbg !1103
  %215 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %209, i64 %214, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0)) #8, !dbg !1104
  %216 = load i8*, i8** %8, align 8, !dbg !1105
  %217 = sext i32 %215 to i64, !dbg !1105
  %218 = getelementptr inbounds i8, i8* %216, i64 %217, !dbg !1105
  store i8* %218, i8** %8, align 8, !dbg !1105
  br label %219, !dbg !1106

; <label>:219:                                    ; preds = %208, %202
  %220 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !1107
  %221 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %220, i32 0, i32 4, !dbg !1109
  %222 = load i32, i32* %221, align 8, !dbg !1109
  %223 = and i32 %222, 1024, !dbg !1110
  %224 = icmp ne i32 %223, 0, !dbg !1110
  br i1 %224, label %225, label %236, !dbg !1111

; <label>:225:                                    ; preds = %219
  %226 = load i8*, i8** %8, align 8, !dbg !1112
  %227 = load i8*, i8** %9, align 8, !dbg !1113
  %228 = load i8*, i8** %8, align 8, !dbg !1114
  %229 = ptrtoint i8* %227 to i64, !dbg !1115
  %230 = ptrtoint i8* %228 to i64, !dbg !1115
  %231 = sub i64 %229, %230, !dbg !1115
  %232 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %226, i64 %231, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0)) #8, !dbg !1116
  %233 = load i8*, i8** %8, align 8, !dbg !1117
  %234 = sext i32 %232 to i64, !dbg !1117
  %235 = getelementptr inbounds i8, i8* %233, i64 %234, !dbg !1117
  store i8* %235, i8** %8, align 8, !dbg !1117
  br label %236, !dbg !1118

; <label>:236:                                    ; preds = %225, %219
  %237 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !1119
  %238 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %237, i32 0, i32 8, !dbg !1121
  %239 = load i8, i8* %238, align 4, !dbg !1121
  %240 = trunc i8 %239 to i1, !dbg !1121
  br i1 %240, label %241, label %252, !dbg !1122

; <label>:241:                                    ; preds = %236
  %242 = load i8*, i8** %8, align 8, !dbg !1123
  %243 = load i8*, i8** %9, align 8, !dbg !1124
  %244 = load i8*, i8** %8, align 8, !dbg !1125
  %245 = ptrtoint i8* %243 to i64, !dbg !1126
  %246 = ptrtoint i8* %244 to i64, !dbg !1126
  %247 = sub i64 %245, %246, !dbg !1126
  %248 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %242, i64 %247, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0)) #8, !dbg !1127
  %249 = load i8*, i8** %8, align 8, !dbg !1128
  %250 = sext i32 %248 to i64, !dbg !1128
  %251 = getelementptr inbounds i8, i8* %249, i64 %250, !dbg !1128
  store i8* %251, i8** %8, align 8, !dbg !1128
  br label %252, !dbg !1129

; <label>:252:                                    ; preds = %241, %236
  %253 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !1130
  %254 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %253, i32 0, i32 9, !dbg !1132
  %255 = load %struct._static_track_group*, %struct._static_track_group** %254, align 8, !dbg !1132
  %256 = icmp ne %struct._static_track_group* %255, null, !dbg !1130
  br i1 %256, label %257, label %273, !dbg !1133

; <label>:257:                                    ; preds = %252
  %258 = load i8*, i8** %8, align 8, !dbg !1134
  %259 = load i8*, i8** %9, align 8, !dbg !1135
  %260 = load i8*, i8** %8, align 8, !dbg !1136
  %261 = ptrtoint i8* %259 to i64, !dbg !1137
  %262 = ptrtoint i8* %260 to i64, !dbg !1137
  %263 = sub i64 %261, %262, !dbg !1137
  %264 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !1138
  %265 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %264, i32 0, i32 9, !dbg !1139
  %266 = load %struct._static_track_group*, %struct._static_track_group** %265, align 8, !dbg !1139
  %267 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %266, i32 0, i32 0, !dbg !1140
  %268 = load i8*, i8** %267, align 8, !dbg !1140
  %269 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %258, i64 %263, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0), i8* %268) #8, !dbg !1141
  %270 = load i8*, i8** %8, align 8, !dbg !1142
  %271 = sext i32 %269 to i64, !dbg !1142
  %272 = getelementptr inbounds i8, i8* %270, i64 %271, !dbg !1142
  store i8* %272, i8** %8, align 8, !dbg !1142
  br label %273, !dbg !1143

; <label>:273:                                    ; preds = %257, %252
  ret void, !dbg !1144
}

declare void @conf_write(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define %struct._ip_address* @parse_ipaddress(%struct._ip_address*, i8*, i32) #0 !dbg !1145 {
  %4 = alloca %struct._ip_address*, align 8
  %5 = alloca %struct._ip_address*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._ip_address*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct._ip_address* %0, %struct._ip_address** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %5, metadata !1148, metadata !373), !dbg !1149
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1150, metadata !373), !dbg !1151
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1152, metadata !373), !dbg !1153
  call void @llvm.dbg.declare(metadata %struct._ip_address** %8, metadata !1154, metadata !373), !dbg !1155
  %12 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !1156
  store %struct._ip_address* %12, %struct._ip_address** %8, align 8, !dbg !1155
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1157, metadata !373), !dbg !1158
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1159, metadata !373), !dbg !1160
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1161, metadata !373), !dbg !1162
  %13 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !1163
  %14 = icmp ne %struct._ip_address* %13, null, !dbg !1163
  br i1 %14, label %18, label %15, !dbg !1165

; <label>:15:                                     ; preds = %3
  %16 = call i8* @zalloc(i64 88), !dbg !1166
  %17 = bitcast i8* %16 to %struct._ip_address*, !dbg !1168
  store %struct._ip_address* %17, %struct._ip_address** %8, align 8, !dbg !1169
  br label %18, !dbg !1170

; <label>:18:                                     ; preds = %15, %3
  %19 = load i32, i32* %7, align 4, !dbg !1171
  %20 = icmp ne i32 %19, 0, !dbg !1171
  br i1 %20, label %21, label %41, !dbg !1173

; <label>:21:                                     ; preds = %18
  %22 = load i8*, i8** %6, align 8, !dbg !1174
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)) #9, !dbg !1177
  %24 = icmp ne i32 %23, 0, !dbg !1177
  br i1 %24, label %30, label %25, !dbg !1178

; <label>:25:                                     ; preds = %21
  %26 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !1179
  %27 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %26, i32 0, i32 0, !dbg !1181
  %28 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %27, i32 0, i32 0, !dbg !1182
  store i8 2, i8* %28, align 8, !dbg !1183
  %29 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !1184
  store %struct._ip_address* %29, %struct._ip_address** %4, align 8, !dbg !1185
  br label %135, !dbg !1185

; <label>:30:                                     ; preds = %21
  %31 = load i8*, i8** %6, align 8, !dbg !1186
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #9, !dbg !1188
  %33 = icmp ne i32 %32, 0, !dbg !1188
  br i1 %33, label %39, label %34, !dbg !1189

; <label>:34:                                     ; preds = %30
  %35 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !1190
  %36 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %35, i32 0, i32 0, !dbg !1192
  %37 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %36, i32 0, i32 0, !dbg !1193
  store i8 10, i8* %37, align 8, !dbg !1194
  %38 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !1195
  store %struct._ip_address* %38, %struct._ip_address** %4, align 8, !dbg !1196
  br label %135, !dbg !1196

; <label>:39:                                     ; preds = %30
  br label %40

; <label>:40:                                     ; preds = %39
  br label %41, !dbg !1197

; <label>:41:                                     ; preds = %40, %18
  %42 = load i8*, i8** %6, align 8, !dbg !1198
  %43 = call i8* @strchr(i8* %42, i32 58) #9, !dbg !1199
  %44 = icmp ne i8* %43, null, !dbg !1200
  %45 = select i1 %44, i32 10, i32 2, !dbg !1200
  %46 = trunc i32 %45 to i8, !dbg !1200
  %47 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !1201
  %48 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %47, i32 0, i32 0, !dbg !1202
  %49 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %48, i32 0, i32 0, !dbg !1203
  store i8 %46, i8* %49, align 8, !dbg !1204
  %50 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !1205
  %51 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %50, i32 0, i32 0, !dbg !1206
  %52 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %51, i32 0, i32 0, !dbg !1207
  %53 = load i8, i8* %52, align 8, !dbg !1207
  %54 = zext i8 %53 to i32, !dbg !1208
  %55 = icmp eq i32 %54, 10, !dbg !1209
  %56 = select i1 %55, i32 128, i32 32, !dbg !1210
  %57 = trunc i32 %56 to i8, !dbg !1210
  %58 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !1211
  %59 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %58, i32 0, i32 0, !dbg !1212
  %60 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %59, i32 0, i32 1, !dbg !1213
  store i8 %57, i8* %60, align 1, !dbg !1214
  %61 = load i8*, i8** %6, align 8, !dbg !1215
  %62 = call i8* @strchr(i8* %61, i32 47) #9, !dbg !1216
  store i8* %62, i8** %10, align 8, !dbg !1217
  %63 = load i8*, i8** %10, align 8, !dbg !1218
  %64 = icmp ne i8* %63, null, !dbg !1218
  br i1 %64, label %65, label %91, !dbg !1220

; <label>:65:                                     ; preds = %41
  %66 = load i8*, i8** %10, align 8, !dbg !1221
  store i8 0, i8* %66, align 1, !dbg !1223
  %67 = load i8*, i8** %10, align 8, !dbg !1224
  %68 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !1226
  %69 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !1227
  %70 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %69, i32 0, i32 0, !dbg !1228
  %71 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %70, i32 0, i32 1, !dbg !1229
  %72 = load i8, i8* %71, align 1, !dbg !1229
  %73 = zext i8 %72 to i32, !dbg !1227
  %74 = call zeroext i1 @read_unsigned(i8* %68, i32* %11, i32 1, i32 %73, i1 zeroext true), !dbg !1230
  br i1 %74, label %84, label %75, !dbg !1231

; <label>:75:                                     ; preds = %65
  %76 = load i8*, i8** %10, align 8, !dbg !1232
  %77 = getelementptr inbounds i8, i8* %76, i64 1, !dbg !1233
  %78 = load i8*, i8** %6, align 8, !dbg !1234
  %79 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !1235
  %80 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %79, i32 0, i32 0, !dbg !1236
  %81 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %80, i32 0, i32 1, !dbg !1237
  %82 = load i8, i8* %81, align 1, !dbg !1237
  %83 = zext i8 %82 to i32, !dbg !1235
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i32 0, i32 0), i8* %77, i8* %78, i32 %83), !dbg !1238
  br label %90, !dbg !1238

; <label>:84:                                     ; preds = %65
  %85 = load i32, i32* %11, align 4, !dbg !1239
  %86 = trunc i32 %85 to i8, !dbg !1239
  %87 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !1240
  %88 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %87, i32 0, i32 0, !dbg !1241
  %89 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %88, i32 0, i32 1, !dbg !1242
  store i8 %86, i8* %89, align 1, !dbg !1243
  br label %90

; <label>:90:                                     ; preds = %84, %75
  br label %91, !dbg !1244

; <label>:91:                                     ; preds = %90, %41
  %92 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !1245
  %93 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %92, i32 0, i32 0, !dbg !1246
  %94 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %93, i32 0, i32 0, !dbg !1247
  %95 = load i8, i8* %94, align 8, !dbg !1247
  %96 = zext i8 %95 to i32, !dbg !1248
  %97 = icmp eq i32 %96, 10, !dbg !1249
  br i1 %97, label %98, label %103, !dbg !1250

; <label>:98:                                     ; preds = %91
  %99 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !1251
  %100 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %99, i32 0, i32 1, !dbg !1253
  %101 = bitcast %union.anon* %100 to %struct.in6_addr*, !dbg !1254
  %102 = bitcast %struct.in6_addr* %101 to i8*, !dbg !1255
  br label %109, !dbg !1256

; <label>:103:                                    ; preds = %91
  %104 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !1257
  %105 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %104, i32 0, i32 1, !dbg !1258
  %106 = bitcast %union.anon* %105 to %struct.anon*, !dbg !1259
  %107 = getelementptr inbounds %struct.anon, %struct.anon* %106, i32 0, i32 0, !dbg !1260
  %108 = bitcast %struct.in_addr* %107 to i8*, !dbg !1261
  br label %109, !dbg !1262

; <label>:109:                                    ; preds = %103, %98
  %110 = phi i8* [ %102, %98 ], [ %108, %103 ], !dbg !1264
  store i8* %110, i8** %9, align 8, !dbg !1266
  %111 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !1267
  %112 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %111, i32 0, i32 0, !dbg !1269
  %113 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %112, i32 0, i32 0, !dbg !1270
  %114 = load i8, i8* %113, align 8, !dbg !1270
  %115 = zext i8 %114 to i32, !dbg !1271
  %116 = load i8*, i8** %6, align 8, !dbg !1272
  %117 = load i8*, i8** %9, align 8, !dbg !1273
  %118 = call i32 @inet_pton(i32 %115, i8* %116, i8* %117) #8, !dbg !1274
  %119 = icmp ne i32 %118, 0, !dbg !1274
  br i1 %119, label %128, label %120, !dbg !1275

; <label>:120:                                    ; preds = %109
  %121 = load i8*, i8** %6, align 8, !dbg !1276
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i32 0, i32 0), i8* %121), !dbg !1278
  %122 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !1279
  %123 = icmp ne %struct._ip_address* %122, null, !dbg !1279
  br i1 %123, label %127, label %124, !dbg !1281

; <label>:124:                                    ; preds = %120
  %125 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !1282
  %126 = bitcast %struct._ip_address* %125 to i8*, !dbg !1282
  call void @free(i8* %126) #8, !dbg !1283
  store %struct._ip_address* null, %struct._ip_address** %8, align 8, !dbg !1284
  br label %127, !dbg !1285

; <label>:127:                                    ; preds = %124, %120
  store %struct._ip_address* null, %struct._ip_address** %8, align 8, !dbg !1286
  br label %128, !dbg !1287

; <label>:128:                                    ; preds = %127, %109
  %129 = load i8*, i8** %10, align 8, !dbg !1288
  %130 = icmp ne i8* %129, null, !dbg !1288
  br i1 %130, label %131, label %133, !dbg !1290

; <label>:131:                                    ; preds = %128
  %132 = load i8*, i8** %10, align 8, !dbg !1291
  store i8 47, i8* %132, align 1, !dbg !1293
  br label %133, !dbg !1294

; <label>:133:                                    ; preds = %131, %128
  %134 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !1295
  store %struct._ip_address* %134, %struct._ip_address** %4, align 8, !dbg !1296
  br label %135, !dbg !1296

; <label>:135:                                    ; preds = %133, %34, %25
  %136 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !1297
  ret %struct._ip_address* %136, !dbg !1297
}

declare i8* @zalloc(i64) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

declare zeroext i1 @read_unsigned(i8*, i32*, i32, i32, i1 zeroext) #3

declare void @report_config_error(i32, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @inet_pton(i32, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @alloc_ipaddress(%struct._list*, %struct._vector*, %struct._interface*, i1 zeroext) #0 !dbg !1298 {
  %5 = alloca %struct._list*, align 8
  %6 = alloca %struct._vector*, align 8
  %7 = alloca %struct._interface*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct._ip_address*, align 8
  %10 = alloca %struct._interface*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8*, align 8
  %18 = alloca %struct._ip_address, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  store %struct._list* %0, %struct._list** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %5, metadata !1301, metadata !373), !dbg !1302
  store %struct._vector* %1, %struct._vector** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %6, metadata !1303, metadata !373), !dbg !1304
  store %struct._interface* %2, %struct._interface** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %7, metadata !1305, metadata !373), !dbg !1306
  %22 = zext i1 %3 to i8
  store i8 %22, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1307, metadata !373), !dbg !1308
  call void @llvm.dbg.declare(metadata %struct._ip_address** %9, metadata !1309, metadata !373), !dbg !1310
  call void @llvm.dbg.declare(metadata %struct._interface** %10, metadata !1311, metadata !373), !dbg !1312
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1313, metadata !373), !dbg !1314
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1315, metadata !373), !dbg !1316
  store i32 0, i32* %12, align 4, !dbg !1316
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1317, metadata !373), !dbg !1318
  store i32 0, i32* %13, align 4, !dbg !1318
  call void @llvm.dbg.declare(metadata i8* %14, metadata !1319, metadata !373), !dbg !1320
  call void @llvm.dbg.declare(metadata i8* %15, metadata !1321, metadata !373), !dbg !1322
  call void @llvm.dbg.declare(metadata i8* %16, metadata !1323, metadata !373), !dbg !1324
  store i8 0, i8* %16, align 1, !dbg !1324
  call void @llvm.dbg.declare(metadata i8** %17, metadata !1325, metadata !373), !dbg !1326
  call void @llvm.dbg.declare(metadata %struct._ip_address* %18, metadata !1327, metadata !373), !dbg !1328
  %23 = bitcast %struct._ip_address* %18 to i8*, !dbg !1328
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 88, i32 8, i1 false), !dbg !1328
  call void @llvm.dbg.declare(metadata i32* %19, metadata !1329, metadata !373), !dbg !1330
  store i32 0, i32* %19, align 4, !dbg !1330
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1331, metadata !373), !dbg !1332
  call void @llvm.dbg.declare(metadata i8* %21, metadata !1333, metadata !373), !dbg !1334
  store i8 0, i8* %21, align 1, !dbg !1334
  %24 = call i8* @zalloc(i64 88), !dbg !1335
  %25 = bitcast i8* %24 to %struct._ip_address*, !dbg !1336
  store %struct._ip_address* %25, %struct._ip_address** %9, align 8, !dbg !1337
  %26 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1338
  %27 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1340
  %28 = call i8* @strvec_slot(%struct._vector* %27, i64 0), !dbg !1341
  %29 = call %struct._ip_address* @parse_ipaddress(%struct._ip_address* %26, i8* %28, i32 0), !dbg !1342
  %30 = icmp ne %struct._ip_address* %29, null, !dbg !1344
  br i1 %30, label %34, label %31, !dbg !1345

; <label>:31:                                     ; preds = %4
  %32 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1346
  %33 = bitcast %struct._ip_address* %32 to i8*, !dbg !1346
  call void @free(i8* %33) #8, !dbg !1348
  store %struct._ip_address* null, %struct._ip_address** %9, align 8, !dbg !1349
  br label %636, !dbg !1350

; <label>:34:                                     ; preds = %4
  %35 = load i32, i32* %12, align 4, !dbg !1351
  %36 = add i32 %35, 1, !dbg !1351
  store i32 %36, i32* %12, align 4, !dbg !1351
  store i32 %35, i32* %13, align 4, !dbg !1352
  br label %37, !dbg !1353

; <label>:37:                                     ; preds = %443, %227, %34
  %38 = load i32, i32* %12, align 4, !dbg !1354
  %39 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1356
  %40 = getelementptr inbounds %struct._vector, %struct._vector* %39, i32 0, i32 1, !dbg !1357
  %41 = load i32, i32* %40, align 4, !dbg !1357
  %42 = icmp ult i32 %38, %41, !dbg !1358
  br i1 %42, label %43, label %446, !dbg !1359

; <label>:43:                                     ; preds = %37
  %44 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1360
  %45 = load i32, i32* %12, align 4, !dbg !1362
  %46 = zext i32 %45 to i64, !dbg !1362
  %47 = call i8* @strvec_slot(%struct._vector* %44, i64 %46), !dbg !1363
  store i8* %47, i8** %11, align 8, !dbg !1364
  %48 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1365
  %49 = getelementptr inbounds %struct._vector, %struct._vector* %48, i32 0, i32 1, !dbg !1366
  %50 = load i32, i32* %49, align 4, !dbg !1366
  %51 = load i32, i32* %12, align 4, !dbg !1367
  %52 = add i32 %51, 2, !dbg !1368
  %53 = icmp uge i32 %50, %52, !dbg !1369
  %54 = zext i1 %53 to i8, !dbg !1370
  store i8 %54, i8* %15, align 1, !dbg !1370
  %55 = load i8*, i8** %11, align 8, !dbg !1371
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)) #9, !dbg !1373
  %57 = icmp ne i32 %56, 0, !dbg !1373
  br i1 %57, label %97, label %58, !dbg !1374

; <label>:58:                                     ; preds = %43
  %59 = load i8, i8* %15, align 1, !dbg !1375
  %60 = trunc i8 %59 to i1, !dbg !1375
  br i1 %60, label %62, label %61, !dbg !1378

; <label>:61:                                     ; preds = %58
  store i8 1, i8* %16, align 1, !dbg !1379
  br label %446, !dbg !1381

; <label>:62:                                     ; preds = %58
  %63 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1382
  %64 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %63, i32 0, i32 2, !dbg !1384
  %65 = load %struct._interface*, %struct._interface** %64, align 8, !dbg !1384
  %66 = icmp ne %struct._interface* %65, null, !dbg !1382
  br i1 %66, label %67, label %74, !dbg !1385

; <label>:67:                                     ; preds = %62
  %68 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1386
  %69 = load i32, i32* %13, align 4, !dbg !1388
  %70 = zext i32 %69 to i64, !dbg !1388
  %71 = call i8* @strvec_slot(%struct._vector* %68, i64 %70), !dbg !1389
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i32 0), i8* %71), !dbg !1390
  %72 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1392
  %73 = bitcast %struct._ip_address* %72 to i8*, !dbg !1392
  call void @free(i8* %73) #8, !dbg !1393
  store %struct._ip_address* null, %struct._ip_address** %9, align 8, !dbg !1394
  br label %636, !dbg !1395

; <label>:74:                                     ; preds = %62
  %75 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1396
  %76 = load i32, i32* %12, align 4, !dbg !1398
  %77 = add i32 %76, 1, !dbg !1398
  store i32 %77, i32* %12, align 4, !dbg !1398
  %78 = zext i32 %77 to i64, !dbg !1398
  %79 = call i8* @strvec_slot(%struct._vector* %75, i64 %78), !dbg !1399
  %80 = call %struct._interface* @if_get_by_ifname(i8* %79, i32 1), !dbg !1400
  store %struct._interface* %80, %struct._interface** %10, align 8, !dbg !1402
  %81 = icmp ne %struct._interface* %80, null, !dbg !1402
  br i1 %81, label %93, label %82, !dbg !1403

; <label>:82:                                     ; preds = %74
  %83 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1404
  %84 = load i32, i32* %12, align 4, !dbg !1406
  %85 = zext i32 %84 to i64, !dbg !1406
  %86 = call i8* @strvec_slot(%struct._vector* %83, i64 %85), !dbg !1407
  %87 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1408
  %88 = load i32, i32* %13, align 4, !dbg !1409
  %89 = zext i32 %88 to i64, !dbg !1409
  %90 = call i8* @strvec_slot(%struct._vector* %87, i64 %89), !dbg !1410
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i32 0, i32 0), i8* %86, i8* %90), !dbg !1412
  %91 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1413
  %92 = bitcast %struct._ip_address* %91 to i8*, !dbg !1413
  call void @free(i8* %92) #8, !dbg !1414
  store %struct._ip_address* null, %struct._ip_address** %9, align 8, !dbg !1415
  br label %636, !dbg !1416

; <label>:93:                                     ; preds = %74
  %94 = load %struct._interface*, %struct._interface** %10, align 8, !dbg !1417
  %95 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1418
  %96 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %95, i32 0, i32 2, !dbg !1419
  store %struct._interface* %94, %struct._interface** %96, align 8, !dbg !1420
  br label %443, !dbg !1421

; <label>:97:                                     ; preds = %43
  %98 = load i8*, i8** %11, align 8, !dbg !1422
  %99 = call i32 @strcmp(i8* %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)) #9, !dbg !1425
  %100 = icmp ne i32 %99, 0, !dbg !1425
  br i1 %100, label %127, label %101, !dbg !1426

; <label>:101:                                    ; preds = %97
  %102 = load i8, i8* %15, align 1, !dbg !1427
  %103 = trunc i8 %102 to i1, !dbg !1427
  br i1 %103, label %105, label %104, !dbg !1430

; <label>:104:                                    ; preds = %101
  store i8 1, i8* %16, align 1, !dbg !1431
  br label %446, !dbg !1433

; <label>:105:                                    ; preds = %101
  %106 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1434
  %107 = load i32, i32* %12, align 4, !dbg !1436
  %108 = add i32 %107, 1, !dbg !1436
  store i32 %108, i32* %12, align 4, !dbg !1436
  %109 = zext i32 %108 to i64, !dbg !1436
  %110 = call i8* @strvec_slot(%struct._vector* %106, i64 %109), !dbg !1437
  %111 = call zeroext i1 @find_rttables_scope(i8* %110, i8* %14), !dbg !1438
  br i1 %111, label %121, label %112, !dbg !1440

; <label>:112:                                    ; preds = %105
  %113 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1441
  %114 = load i32, i32* %12, align 4, !dbg !1442
  %115 = zext i32 %114 to i64, !dbg !1442
  %116 = call i8* @strvec_slot(%struct._vector* %113, i64 %115), !dbg !1443
  %117 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1444
  %118 = load i32, i32* %13, align 4, !dbg !1445
  %119 = zext i32 %118 to i64, !dbg !1445
  %120 = call i8* @strvec_slot(%struct._vector* %117, i64 %119), !dbg !1446
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i32 0, i32 0), i8* %116, i8* %120), !dbg !1447
  br label %126, !dbg !1449

; <label>:121:                                    ; preds = %105
  %122 = load i8, i8* %14, align 1, !dbg !1450
  %123 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1451
  %124 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %123, i32 0, i32 0, !dbg !1452
  %125 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %124, i32 0, i32 3, !dbg !1453
  store i8 %122, i8* %125, align 1, !dbg !1454
  br label %126

; <label>:126:                                    ; preds = %121, %112
  br label %442, !dbg !1455

; <label>:127:                                    ; preds = %97
  %128 = load i8*, i8** %11, align 8, !dbg !1456
  %129 = call i32 @strcmp(i8* %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0)) #9, !dbg !1459
  %130 = icmp ne i32 %129, 0, !dbg !1459
  br i1 %130, label %131, label %135, !dbg !1460

; <label>:131:                                    ; preds = %127
  %132 = load i8*, i8** %11, align 8, !dbg !1461
  %133 = call i32 @strcmp(i8* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #9, !dbg !1463
  %134 = icmp ne i32 %133, 0, !dbg !1463
  br i1 %134, label %191, label %135, !dbg !1464

; <label>:135:                                    ; preds = %131, %127
  %136 = load i8, i8* %15, align 1, !dbg !1465
  %137 = trunc i8 %136 to i1, !dbg !1465
  br i1 %137, label %139, label %138, !dbg !1468

; <label>:138:                                    ; preds = %135
  store i8 1, i8* %16, align 1, !dbg !1469
  br label %446, !dbg !1471

; <label>:139:                                    ; preds = %135
  %140 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1472
  %141 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %140, i32 0, i32 0, !dbg !1474
  %142 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %141, i32 0, i32 0, !dbg !1475
  %143 = load i8, i8* %142, align 8, !dbg !1475
  %144 = zext i8 %143 to i32, !dbg !1476
  %145 = icmp eq i32 %144, 10, !dbg !1477
  br i1 %145, label %146, label %157, !dbg !1478

; <label>:146:                                    ; preds = %139
  %147 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1479
  %148 = load i32, i32* %12, align 4, !dbg !1481
  %149 = zext i32 %148 to i64, !dbg !1481
  %150 = call i8* @strvec_slot(%struct._vector* %147, i64 %149), !dbg !1482
  %151 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1483
  %152 = load i32, i32* %13, align 4, !dbg !1484
  %153 = zext i32 %152 to i64, !dbg !1484
  %154 = call i8* @strvec_slot(%struct._vector* %151, i64 %153), !dbg !1485
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.13, i32 0, i32 0), i8* %150, i8* %154), !dbg !1487
  %155 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1488
  %156 = bitcast %struct._ip_address* %155 to i8*, !dbg !1488
  call void @free(i8* %156) #8, !dbg !1489
  store %struct._ip_address* null, %struct._ip_address** %9, align 8, !dbg !1490
  br label %636, !dbg !1491

; <label>:157:                                    ; preds = %139
  store i8 1, i8* %21, align 1, !dbg !1492
  %158 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1493
  %159 = load i32, i32* %12, align 4, !dbg !1494
  %160 = add i32 %159, 1, !dbg !1494
  store i32 %160, i32* %12, align 4, !dbg !1494
  %161 = zext i32 %160 to i64, !dbg !1494
  %162 = call i8* @strvec_slot(%struct._vector* %158, i64 %161), !dbg !1495
  store i8* %162, i8** %17, align 8, !dbg !1496
  %163 = load i8*, i8** %17, align 8, !dbg !1497
  %164 = call i32 @strcmp(i8* %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #9, !dbg !1499
  %165 = icmp ne i32 %164, 0, !dbg !1499
  br i1 %165, label %167, label %166, !dbg !1500

; <label>:166:                                    ; preds = %157
  store i32 -2, i32* %19, align 4, !dbg !1501
  br label %190, !dbg !1502

; <label>:167:                                    ; preds = %157
  %168 = load i8*, i8** %17, align 8, !dbg !1503
  %169 = call i32 @strcmp(i8* %168, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0)) #9, !dbg !1505
  %170 = icmp ne i32 %169, 0, !dbg !1505
  br i1 %170, label %172, label %171, !dbg !1506

; <label>:171:                                    ; preds = %167
  store i32 -1, i32* %19, align 4, !dbg !1507
  br label %189, !dbg !1508

; <label>:172:                                    ; preds = %167
  %173 = load i8*, i8** %17, align 8, !dbg !1509
  %174 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1511
  %175 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %174, i32 0, i32 1, !dbg !1512
  %176 = bitcast %union.anon* %175 to %struct.anon*, !dbg !1513
  %177 = getelementptr inbounds %struct.anon, %struct.anon* %176, i32 0, i32 1, !dbg !1514
  %178 = bitcast %struct.in_addr* %177 to i8*, !dbg !1515
  %179 = call i32 @inet_pton(i32 2, i8* %173, i8* %178) #8, !dbg !1516
  %180 = icmp ne i32 %179, 0, !dbg !1516
  br i1 %180, label %188, label %181, !dbg !1517

; <label>:181:                                    ; preds = %172
  %182 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1518
  %183 = load i32, i32* %12, align 4, !dbg !1520
  %184 = zext i32 %183 to i64, !dbg !1520
  %185 = call i8* @strvec_slot(%struct._vector* %182, i64 %184), !dbg !1521
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.16, i32 0, i32 0), i8* %185), !dbg !1522
  %186 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1523
  %187 = bitcast %struct._ip_address* %186 to i8*, !dbg !1523
  call void @free(i8* %187) #8, !dbg !1524
  store %struct._ip_address* null, %struct._ip_address** %9, align 8, !dbg !1525
  br label %636, !dbg !1526

; <label>:188:                                    ; preds = %172
  br label %189

; <label>:189:                                    ; preds = %188, %171
  br label %190

; <label>:190:                                    ; preds = %189, %166
  br label %441, !dbg !1527

; <label>:191:                                    ; preds = %131
  %192 = load i8*, i8** %11, align 8, !dbg !1528
  %193 = call i32 @strcmp(i8* %192, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0)) #9, !dbg !1531
  %194 = icmp ne i32 %193, 0, !dbg !1531
  br i1 %194, label %212, label %195, !dbg !1532

; <label>:195:                                    ; preds = %191
  %196 = load i8, i8* %15, align 1, !dbg !1533
  %197 = trunc i8 %196 to i1, !dbg !1533
  br i1 %197, label %199, label %198, !dbg !1536

; <label>:198:                                    ; preds = %195
  store i8 1, i8* %16, align 1, !dbg !1537
  br label %446, !dbg !1539

; <label>:199:                                    ; preds = %195
  %200 = call i8* @zalloc(i64 16), !dbg !1540
  %201 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1541
  %202 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %201, i32 0, i32 3, !dbg !1542
  store i8* %200, i8** %202, align 8, !dbg !1543
  %203 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1544
  %204 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %203, i32 0, i32 3, !dbg !1545
  %205 = load i8*, i8** %204, align 8, !dbg !1545
  %206 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1546
  %207 = load i32, i32* %12, align 4, !dbg !1547
  %208 = add i32 %207, 1, !dbg !1547
  store i32 %208, i32* %12, align 4, !dbg !1547
  %209 = zext i32 %208 to i64, !dbg !1547
  %210 = call i8* @strvec_slot(%struct._vector* %206, i64 %209), !dbg !1548
  %211 = call i8* @strncpy(i8* %205, i8* %210, i64 16) #8, !dbg !1549
  br label %440, !dbg !1551

; <label>:212:                                    ; preds = %191
  %213 = load i8*, i8** %11, align 8, !dbg !1552
  %214 = call i32 @strcmp(i8* %213, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0)) #9, !dbg !1555
  %215 = icmp ne i32 %214, 0, !dbg !1555
  br i1 %215, label %324, label %216, !dbg !1556

; <label>:216:                                    ; preds = %212
  %217 = load i8, i8* %15, align 1, !dbg !1557
  %218 = trunc i8 %217 to i1, !dbg !1557
  br i1 %218, label %220, label %219, !dbg !1560

; <label>:219:                                    ; preds = %216
  store i8 1, i8* %16, align 1, !dbg !1561
  br label %446, !dbg !1563

; <label>:220:                                    ; preds = %216
  %221 = load i32, i32* %12, align 4, !dbg !1564
  %222 = add i32 %221, 1, !dbg !1564
  store i32 %222, i32* %12, align 4, !dbg !1564
  %223 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1565
  %224 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %223, i32 0, i32 6, !dbg !1567
  %225 = load i8, i8* %224, align 8, !dbg !1567
  %226 = trunc i8 %225 to i1, !dbg !1567
  br i1 %226, label %227, label %232, !dbg !1568

; <label>:227:                                    ; preds = %220
  %228 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1569
  %229 = load i32, i32* %12, align 4, !dbg !1571
  %230 = zext i32 %229 to i64, !dbg !1571
  %231 = call i8* @strvec_slot(%struct._vector* %228, i64 %230), !dbg !1572
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i32 0, i32 0), i8* %231), !dbg !1573
  br label %37, !dbg !1575, !llvm.loop !1576

; <label>:232:                                    ; preds = %220
  %233 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1577
  %234 = load i32, i32* %12, align 4, !dbg !1579
  %235 = zext i32 %234 to i64, !dbg !1579
  %236 = call i8* @strvec_slot(%struct._vector* %233, i64 %235), !dbg !1580
  %237 = call %struct._ip_address* @parse_ipaddress(%struct._ip_address* %18, i8* %236, i32 0), !dbg !1581
  %238 = icmp ne %struct._ip_address* %237, null, !dbg !1583
  br i1 %238, label %244, label %239, !dbg !1584

; <label>:239:                                    ; preds = %232
  %240 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1585
  %241 = load i32, i32* %12, align 4, !dbg !1586
  %242 = zext i32 %241 to i64, !dbg !1586
  %243 = call i8* @strvec_slot(%struct._vector* %240, i64 %242), !dbg !1587
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0), i8* %243), !dbg !1588
  br label %323, !dbg !1589

; <label>:244:                                    ; preds = %232
  %245 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %18, i32 0, i32 0, !dbg !1590
  %246 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %245, i32 0, i32 0, !dbg !1592
  %247 = load i8, i8* %246, align 8, !dbg !1592
  %248 = zext i8 %247 to i32, !dbg !1593
  %249 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1594
  %250 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %249, i32 0, i32 0, !dbg !1595
  %251 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %250, i32 0, i32 0, !dbg !1596
  %252 = load i8, i8* %251, align 8, !dbg !1596
  %253 = zext i8 %252 to i32, !dbg !1594
  %254 = icmp ne i32 %248, %253, !dbg !1597
  br i1 %254, label %255, label %260, !dbg !1598

; <label>:255:                                    ; preds = %244
  %256 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1599
  %257 = load i32, i32* %12, align 4, !dbg !1600
  %258 = zext i32 %257 to i64, !dbg !1600
  %259 = call i8* @strvec_slot(%struct._vector* %256, i64 %258), !dbg !1601
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i32 0, i32 0), i8* %259), !dbg !1602
  br label %322, !dbg !1604

; <label>:260:                                    ; preds = %244
  %261 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1605
  %262 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %261, i32 0, i32 0, !dbg !1608
  %263 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %262, i32 0, i32 0, !dbg !1609
  %264 = load i8, i8* %263, align 8, !dbg !1609
  %265 = zext i8 %264 to i32, !dbg !1605
  %266 = icmp eq i32 %265, 10, !dbg !1610
  br i1 %266, label %267, label %274, !dbg !1611

; <label>:267:                                    ; preds = %260
  %268 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1612
  %269 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %268, i32 0, i32 0, !dbg !1614
  %270 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %269, i32 0, i32 1, !dbg !1615
  %271 = load i8, i8* %270, align 1, !dbg !1615
  %272 = zext i8 %271 to i32, !dbg !1612
  %273 = icmp ne i32 %272, 128, !dbg !1616
  br i1 %273, label %288, label %274, !dbg !1617

; <label>:274:                                    ; preds = %267, %260
  %275 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1618
  %276 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %275, i32 0, i32 0, !dbg !1619
  %277 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %276, i32 0, i32 0, !dbg !1620
  %278 = load i8, i8* %277, align 8, !dbg !1620
  %279 = zext i8 %278 to i32, !dbg !1618
  %280 = icmp eq i32 %279, 2, !dbg !1621
  br i1 %280, label %281, label %289, !dbg !1622

; <label>:281:                                    ; preds = %274
  %282 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1623
  %283 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %282, i32 0, i32 0, !dbg !1624
  %284 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %283, i32 0, i32 1, !dbg !1625
  %285 = load i8, i8* %284, align 1, !dbg !1625
  %286 = zext i8 %285 to i32, !dbg !1623
  %287 = icmp ne i32 %286, 32, !dbg !1626
  br i1 %287, label %288, label %289, !dbg !1627

; <label>:288:                                    ; preds = %281, %267
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.22, i32 0, i32 0)), !dbg !1629
  br label %289, !dbg !1629

; <label>:289:                                    ; preds = %288, %281, %274
  %290 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1630
  %291 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %290, i32 0, i32 6, !dbg !1631
  store i8 1, i8* %291, align 8, !dbg !1632
  %292 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %18, i32 0, i32 0, !dbg !1633
  %293 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %292, i32 0, i32 1, !dbg !1634
  %294 = load i8, i8* %293, align 1, !dbg !1634
  %295 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1635
  %296 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %295, i32 0, i32 0, !dbg !1636
  %297 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %296, i32 0, i32 1, !dbg !1637
  store i8 %294, i8* %297, align 1, !dbg !1638
  %298 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1639
  %299 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %298, i32 0, i32 0, !dbg !1641
  %300 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %299, i32 0, i32 0, !dbg !1642
  %301 = load i8, i8* %300, align 8, !dbg !1642
  %302 = zext i8 %301 to i32, !dbg !1639
  %303 = icmp eq i32 %302, 10, !dbg !1643
  br i1 %303, label %304, label %312, !dbg !1644

; <label>:304:                                    ; preds = %289
  %305 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1645
  %306 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %305, i32 0, i32 7, !dbg !1646
  %307 = bitcast %union.anon.1* %306 to %struct.in6_addr*, !dbg !1647
  %308 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %18, i32 0, i32 1, !dbg !1648
  %309 = bitcast %union.anon* %308 to %struct.in6_addr*, !dbg !1649
  %310 = bitcast %struct.in6_addr* %307 to i8*, !dbg !1649
  %311 = bitcast %struct.in6_addr* %309 to i8*, !dbg !1649
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %310, i8* %311, i64 16, i32 4, i1 false), !dbg !1649
  br label %321, !dbg !1645

; <label>:312:                                    ; preds = %289
  %313 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1650
  %314 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %313, i32 0, i32 7, !dbg !1651
  %315 = bitcast %union.anon.1* %314 to %struct.in_addr*, !dbg !1652
  %316 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %18, i32 0, i32 1, !dbg !1653
  %317 = bitcast %union.anon* %316 to %struct.anon*, !dbg !1654
  %318 = getelementptr inbounds %struct.anon, %struct.anon* %317, i32 0, i32 0, !dbg !1655
  %319 = bitcast %struct.in_addr* %315 to i8*, !dbg !1655
  %320 = bitcast %struct.in_addr* %318 to i8*, !dbg !1655
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %319, i8* %320, i64 4, i32 4, i1 false), !dbg !1655
  br label %321

; <label>:321:                                    ; preds = %312, %304
  br label %322

; <label>:322:                                    ; preds = %321, %255
  br label %323

; <label>:323:                                    ; preds = %322, %239
  br label %439, !dbg !1656

; <label>:324:                                    ; preds = %212
  %325 = load i8*, i8** %11, align 8, !dbg !1657
  %326 = call i32 @strcmp(i8* %325, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0)) #9, !dbg !1660
  %327 = icmp ne i32 %326, 0, !dbg !1660
  br i1 %327, label %337, label %328, !dbg !1661

; <label>:328:                                    ; preds = %324
  %329 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1662
  %330 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %329, i32 0, i32 4, !dbg !1664
  %331 = load i32, i32* %330, align 8, !dbg !1665
  %332 = or i32 %331, 16, !dbg !1665
  store i32 %332, i32* %330, align 8, !dbg !1665
  %333 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1666
  %334 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %333, i32 0, i32 5, !dbg !1667
  %335 = load i32, i32* %334, align 4, !dbg !1668
  %336 = or i32 %335, 16, !dbg !1668
  store i32 %336, i32* %334, align 4, !dbg !1668
  br label %438, !dbg !1669

; <label>:337:                                    ; preds = %324
  %338 = load i8*, i8** %11, align 8, !dbg !1670
  %339 = call i32 @strcmp(i8* %338, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0)) #9, !dbg !1673
  %340 = icmp ne i32 %339, 0, !dbg !1673
  br i1 %340, label %346, label %341, !dbg !1674

; <label>:341:                                    ; preds = %337
  %342 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1675
  %343 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %342, i32 0, i32 5, !dbg !1677
  %344 = load i32, i32* %343, align 4, !dbg !1678
  %345 = or i32 %344, 2, !dbg !1678
  store i32 %345, i32* %343, align 4, !dbg !1678
  br label %437, !dbg !1679

; <label>:346:                                    ; preds = %337
  %347 = load i8*, i8** %11, align 8, !dbg !1680
  %348 = call i32 @strcmp(i8* %347, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0)) #9, !dbg !1683
  %349 = icmp ne i32 %348, 0, !dbg !1683
  br i1 %349, label %359, label %350, !dbg !1684

; <label>:350:                                    ; preds = %346
  %351 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1685
  %352 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %351, i32 0, i32 4, !dbg !1687
  %353 = load i32, i32* %352, align 8, !dbg !1688
  %354 = or i32 %353, 256, !dbg !1688
  store i32 %354, i32* %352, align 8, !dbg !1688
  %355 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1689
  %356 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %355, i32 0, i32 5, !dbg !1690
  %357 = load i32, i32* %356, align 4, !dbg !1691
  %358 = or i32 %357, 256, !dbg !1691
  store i32 %358, i32* %356, align 4, !dbg !1691
  br label %436, !dbg !1692

; <label>:359:                                    ; preds = %346
  %360 = load i8*, i8** %11, align 8, !dbg !1693
  %361 = call i32 @strcmp(i8* %360, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0)) #9, !dbg !1696
  %362 = icmp ne i32 %361, 0, !dbg !1696
  br i1 %362, label %372, label %363, !dbg !1697

; <label>:363:                                    ; preds = %359
  %364 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1698
  %365 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %364, i32 0, i32 4, !dbg !1700
  %366 = load i32, i32* %365, align 8, !dbg !1701
  %367 = or i32 %366, 512, !dbg !1701
  store i32 %367, i32* %365, align 8, !dbg !1701
  %368 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1702
  %369 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %368, i32 0, i32 5, !dbg !1703
  %370 = load i32, i32* %369, align 4, !dbg !1704
  %371 = or i32 %370, 512, !dbg !1704
  store i32 %371, i32* %369, align 4, !dbg !1704
  br label %435, !dbg !1705

; <label>:372:                                    ; preds = %359
  %373 = load i8*, i8** %11, align 8, !dbg !1706
  %374 = call i32 @strcmp(i8* %373, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0)) #9, !dbg !1709
  %375 = icmp ne i32 %374, 0, !dbg !1709
  br i1 %375, label %385, label %376, !dbg !1710

; <label>:376:                                    ; preds = %372
  %377 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1711
  %378 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %377, i32 0, i32 4, !dbg !1713
  %379 = load i32, i32* %378, align 8, !dbg !1714
  %380 = or i32 %379, 1024, !dbg !1714
  store i32 %380, i32* %378, align 8, !dbg !1714
  %381 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1715
  %382 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %381, i32 0, i32 5, !dbg !1716
  %383 = load i32, i32* %382, align 4, !dbg !1717
  %384 = or i32 %383, 1024, !dbg !1717
  store i32 %384, i32* %382, align 4, !dbg !1717
  br label %434, !dbg !1718

; <label>:385:                                    ; preds = %372
  %386 = load i8*, i8** %11, align 8, !dbg !1719
  %387 = call i32 @strcmp(i8* %386, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0)) #9, !dbg !1722
  %388 = icmp ne i32 %387, 0, !dbg !1722
  br i1 %388, label %392, label %389, !dbg !1723

; <label>:389:                                    ; preds = %385
  %390 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1724
  %391 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %390, i32 0, i32 8, !dbg !1726
  store i8 1, i8* %391, align 4, !dbg !1727
  br label %433, !dbg !1728

; <label>:392:                                    ; preds = %385
  %393 = load i8, i8* %8, align 1, !dbg !1729
  %394 = trunc i8 %393 to i1, !dbg !1729
  br i1 %394, label %395, label %430, !dbg !1732

; <label>:395:                                    ; preds = %392
  %396 = load i8*, i8** %11, align 8, !dbg !1733
  %397 = call i32 @strcmp(i8* %396, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0)) #9, !dbg !1735
  %398 = icmp ne i32 %397, 0, !dbg !1735
  br i1 %398, label %430, label %399, !dbg !1736

; <label>:399:                                    ; preds = %395
  %400 = load i8, i8* %15, align 1, !dbg !1737
  %401 = trunc i8 %400 to i1, !dbg !1737
  br i1 %401, label %403, label %402, !dbg !1740

; <label>:402:                                    ; preds = %399
  store i8 1, i8* %16, align 1, !dbg !1741
  br label %446, !dbg !1743

; <label>:403:                                    ; preds = %399
  %404 = load i32, i32* %12, align 4, !dbg !1744
  %405 = add i32 %404, 1, !dbg !1744
  store i32 %405, i32* %12, align 4, !dbg !1744
  %406 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1745
  %407 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %406, i32 0, i32 9, !dbg !1747
  %408 = load %struct._static_track_group*, %struct._static_track_group** %407, align 8, !dbg !1747
  %409 = icmp ne %struct._static_track_group* %408, null, !dbg !1745
  br i1 %409, label %410, label %415, !dbg !1748

; <label>:410:                                    ; preds = %403
  %411 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1749
  %412 = load i32, i32* %12, align 4, !dbg !1751
  %413 = zext i32 %412 to i64, !dbg !1751
  %414 = call i8* @strvec_slot(%struct._vector* %411, i64 %413), !dbg !1752
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i32 0, i32 0), i8* %414), !dbg !1753
  br label %446, !dbg !1755

; <label>:415:                                    ; preds = %403
  %416 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1756
  %417 = load i32, i32* %12, align 4, !dbg !1758
  %418 = zext i32 %417 to i64, !dbg !1758
  %419 = call i8* @strvec_slot(%struct._vector* %416, i64 %418), !dbg !1759
  %420 = call %struct._static_track_group* @find_track_group(i8* %419), !dbg !1760
  %421 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1762
  %422 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %421, i32 0, i32 9, !dbg !1763
  store %struct._static_track_group* %420, %struct._static_track_group** %422, align 8, !dbg !1764
  %423 = icmp ne %struct._static_track_group* %420, null, !dbg !1764
  br i1 %423, label %429, label %424, !dbg !1765

; <label>:424:                                    ; preds = %415
  %425 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1766
  %426 = load i32, i32* %12, align 4, !dbg !1767
  %427 = zext i32 %426 to i64, !dbg !1767
  %428 = call i8* @strvec_slot(%struct._vector* %425, i64 %427), !dbg !1768
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i32 0, i32 0), i8* %428), !dbg !1769
  br label %429, !dbg !1770

; <label>:429:                                    ; preds = %424, %415
  br label %432, !dbg !1771

; <label>:430:                                    ; preds = %395, %392
  %431 = load i8*, i8** %11, align 8, !dbg !1772
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.32, i32 0, i32 0), i8* %431), !dbg !1773
  br label %432

; <label>:432:                                    ; preds = %430, %429
  br label %433

; <label>:433:                                    ; preds = %432, %389
  br label %434

; <label>:434:                                    ; preds = %433, %376
  br label %435

; <label>:435:                                    ; preds = %434, %363
  br label %436

; <label>:436:                                    ; preds = %435, %350
  br label %437

; <label>:437:                                    ; preds = %436, %341
  br label %438

; <label>:438:                                    ; preds = %437, %328
  br label %439

; <label>:439:                                    ; preds = %438, %323
  br label %440

; <label>:440:                                    ; preds = %439, %199
  br label %441

; <label>:441:                                    ; preds = %440, %190
  br label %442

; <label>:442:                                    ; preds = %441, %126
  br label %443

; <label>:443:                                    ; preds = %442, %93
  %444 = load i32, i32* %12, align 4, !dbg !1774
  %445 = add i32 %444, 1, !dbg !1774
  store i32 %445, i32* %12, align 4, !dbg !1774
  br label %37, !dbg !1775, !llvm.loop !1576

; <label>:446:                                    ; preds = %410, %402, %219, %198, %138, %104, %61, %37
  %447 = load i8, i8* %16, align 1, !dbg !1777
  %448 = trunc i8 %447 to i1, !dbg !1777
  br i1 %448, label %449, label %457, !dbg !1779

; <label>:449:                                    ; preds = %446
  %450 = load i8*, i8** %11, align 8, !dbg !1780
  %451 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1782
  %452 = load i32, i32* %13, align 4, !dbg !1783
  %453 = zext i32 %452 to i64, !dbg !1783
  %454 = call i8* @strvec_slot(%struct._vector* %451, i64 %453), !dbg !1784
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i32 0, i32 0), i8* %450, i8* %454), !dbg !1785
  %455 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1787
  %456 = bitcast %struct._ip_address* %455 to i8*, !dbg !1787
  call void @free(i8* %456) #8, !dbg !1788
  br label %636, !dbg !1789

; <label>:457:                                    ; preds = %446
  %458 = load i8, i8* %21, align 1, !dbg !1790
  %459 = trunc i8 %458 to i1, !dbg !1790
  br i1 %459, label %460, label %471, !dbg !1792

; <label>:460:                                    ; preds = %457
  %461 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1793
  %462 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %461, i32 0, i32 6, !dbg !1795
  %463 = load i8, i8* %462, align 8, !dbg !1795
  %464 = trunc i8 %463 to i1, !dbg !1795
  br i1 %464, label %465, label %471, !dbg !1796

; <label>:465:                                    ; preds = %460
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.34, i32 0, i32 0)), !dbg !1797
  %466 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1799
  %467 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %466, i32 0, i32 1, !dbg !1800
  %468 = bitcast %union.anon* %467 to %struct.anon*, !dbg !1801
  %469 = getelementptr inbounds %struct.anon, %struct.anon* %468, i32 0, i32 1, !dbg !1802
  %470 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %469, i32 0, i32 0, !dbg !1803
  store i32 0, i32* %470, align 4, !dbg !1804
  br label %545, !dbg !1805

; <label>:471:                                    ; preds = %460, %457
  %472 = load i32, i32* %19, align 4, !dbg !1806
  %473 = icmp slt i32 %472, 0, !dbg !1808
  br i1 %473, label %474, label %534, !dbg !1809

; <label>:474:                                    ; preds = %471
  %475 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1810
  %476 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %475, i32 0, i32 0, !dbg !1812
  %477 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %476, i32 0, i32 1, !dbg !1813
  %478 = load i8, i8* %477, align 1, !dbg !1813
  %479 = zext i8 %478 to i32, !dbg !1810
  %480 = icmp sle i32 %479, 30, !dbg !1814
  br i1 %480, label %481, label %534, !dbg !1815

; <label>:481:                                    ; preds = %474
  %482 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1816
  %483 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %482, i32 0, i32 1, !dbg !1818
  %484 = bitcast %union.anon* %483 to %struct.anon*, !dbg !1819
  %485 = getelementptr inbounds %struct.anon, %struct.anon* %484, i32 0, i32 1, !dbg !1820
  %486 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1821
  %487 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %486, i32 0, i32 6, !dbg !1822
  %488 = load i8, i8* %487, align 8, !dbg !1822
  %489 = trunc i8 %488 to i1, !dbg !1822
  br i1 %489, label %490, label %496, !dbg !1823

; <label>:490:                                    ; preds = %481
  %491 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1824
  %492 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %491, i32 0, i32 7, !dbg !1826
  %493 = bitcast %union.anon.1* %492 to %struct.in_addr*, !dbg !1827
  %494 = bitcast %struct.in_addr* %485 to i8*, !dbg !1827
  %495 = bitcast %struct.in_addr* %493 to i8*, !dbg !1827
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %494, i8* %495, i64 4, i32 4, i1 false), !dbg !1827
  br label %503, !dbg !1828

; <label>:496:                                    ; preds = %481
  %497 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1829
  %498 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %497, i32 0, i32 1, !dbg !1831
  %499 = bitcast %union.anon* %498 to %struct.anon*, !dbg !1832
  %500 = getelementptr inbounds %struct.anon, %struct.anon* %499, i32 0, i32 0, !dbg !1833
  %501 = bitcast %struct.in_addr* %485 to i8*, !dbg !1833
  %502 = bitcast %struct.in_addr* %500 to i8*, !dbg !1833
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %501, i8* %502, i64 4, i32 4, i1 false), !dbg !1833
  br label %503, !dbg !1834

; <label>:503:                                    ; preds = %496, %490
  %504 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1835
  %505 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %504, i32 0, i32 0, !dbg !1836
  %506 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %505, i32 0, i32 1, !dbg !1837
  %507 = load i8, i8* %506, align 1, !dbg !1837
  %508 = zext i8 %507 to i32, !dbg !1835
  %509 = lshr i32 -1, %508, !dbg !1838
  store i32 %509, i32* %20, align 4, !dbg !1839
  %510 = load i32, i32* %20, align 4, !dbg !1840
  %511 = call i32 @htonl(i32 %510) #1, !dbg !1841
  store i32 %511, i32* %20, align 4, !dbg !1842
  %512 = load i32, i32* %19, align 4, !dbg !1843
  %513 = icmp eq i32 %512, -1, !dbg !1845
  br i1 %513, label %514, label %523, !dbg !1846

; <label>:514:                                    ; preds = %503
  %515 = load i32, i32* %20, align 4, !dbg !1847
  %516 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1848
  %517 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %516, i32 0, i32 1, !dbg !1849
  %518 = bitcast %union.anon* %517 to %struct.anon*, !dbg !1850
  %519 = getelementptr inbounds %struct.anon, %struct.anon* %518, i32 0, i32 1, !dbg !1851
  %520 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %519, i32 0, i32 0, !dbg !1852
  %521 = load i32, i32* %520, align 4, !dbg !1853
  %522 = or i32 %521, %515, !dbg !1853
  store i32 %522, i32* %520, align 4, !dbg !1853
  br label %533, !dbg !1848

; <label>:523:                                    ; preds = %503
  %524 = load i32, i32* %20, align 4, !dbg !1854
  %525 = xor i32 %524, -1, !dbg !1855
  %526 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1856
  %527 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %526, i32 0, i32 1, !dbg !1857
  %528 = bitcast %union.anon* %527 to %struct.anon*, !dbg !1858
  %529 = getelementptr inbounds %struct.anon, %struct.anon* %528, i32 0, i32 1, !dbg !1859
  %530 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %529, i32 0, i32 0, !dbg !1860
  %531 = load i32, i32* %530, align 4, !dbg !1861
  %532 = and i32 %531, %525, !dbg !1861
  store i32 %532, i32* %530, align 4, !dbg !1861
  br label %533

; <label>:533:                                    ; preds = %523, %514
  br label %544, !dbg !1862

; <label>:534:                                    ; preds = %474, %471
  %535 = load i32, i32* %19, align 4, !dbg !1863
  %536 = icmp slt i32 %535, 0, !dbg !1865
  br i1 %536, label %537, label %543, !dbg !1866

; <label>:537:                                    ; preds = %534
  %538 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1867
  %539 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %538, i32 0, i32 0, !dbg !1868
  %540 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %539, i32 0, i32 1, !dbg !1869
  %541 = load i8, i8* %540, align 1, !dbg !1869
  %542 = zext i8 %541 to i32, !dbg !1867
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.35, i32 0, i32 0), i32 %542), !dbg !1870
  br label %543, !dbg !1870

; <label>:543:                                    ; preds = %537, %534
  br label %544

; <label>:544:                                    ; preds = %543, %533
  br label %545

; <label>:545:                                    ; preds = %544, %465
  %546 = load %struct._interface*, %struct._interface** %7, align 8, !dbg !1871
  %547 = icmp ne %struct._interface* %546, null, !dbg !1871
  br i1 %547, label %580, label %548, !dbg !1873

; <label>:548:                                    ; preds = %545
  %549 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1874
  %550 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %549, i32 0, i32 2, !dbg !1876
  %551 = load %struct._interface*, %struct._interface** %550, align 8, !dbg !1876
  %552 = icmp ne %struct._interface* %551, null, !dbg !1874
  br i1 %552, label %580, label %553, !dbg !1877

; <label>:553:                                    ; preds = %548
  %554 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1878
  %555 = getelementptr inbounds %struct._data, %struct._data* %554, i32 0, i32 15, !dbg !1881
  %556 = load %struct._interface*, %struct._interface** %555, align 8, !dbg !1881
  %557 = icmp ne %struct._interface* %556, null, !dbg !1878
  br i1 %557, label %574, label %558, !dbg !1882

; <label>:558:                                    ; preds = %553
  %559 = call %struct._interface* @if_get_by_ifname(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 1), !dbg !1883
  %560 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1885
  %561 = getelementptr inbounds %struct._data, %struct._data* %560, i32 0, i32 15, !dbg !1886
  store %struct._interface* %559, %struct._interface** %561, align 8, !dbg !1887
  %562 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1888
  %563 = getelementptr inbounds %struct._data, %struct._data* %562, i32 0, i32 15, !dbg !1890
  %564 = load %struct._interface*, %struct._interface** %563, align 8, !dbg !1890
  %565 = icmp ne %struct._interface* %564, null, !dbg !1888
  br i1 %565, label %573, label %566, !dbg !1891

; <label>:566:                                    ; preds = %558
  %567 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1892
  %568 = load i32, i32* %13, align 4, !dbg !1894
  %569 = zext i32 %568 to i64, !dbg !1894
  %570 = call i8* @strvec_slot(%struct._vector* %567, i64 %569), !dbg !1895
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* %570), !dbg !1896
  %571 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1897
  %572 = bitcast %struct._ip_address* %571 to i8*, !dbg !1897
  call void @free(i8* %572) #8, !dbg !1898
  store %struct._ip_address* null, %struct._ip_address** %9, align 8, !dbg !1899
  br label %636, !dbg !1900

; <label>:573:                                    ; preds = %558
  br label %574, !dbg !1901

; <label>:574:                                    ; preds = %573, %553
  %575 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1902
  %576 = getelementptr inbounds %struct._data, %struct._data* %575, i32 0, i32 15, !dbg !1903
  %577 = load %struct._interface*, %struct._interface** %576, align 8, !dbg !1903
  %578 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1904
  %579 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %578, i32 0, i32 2, !dbg !1905
  store %struct._interface* %577, %struct._interface** %579, align 8, !dbg !1906
  br label %580, !dbg !1907

; <label>:580:                                    ; preds = %574, %548, %545
  %581 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1908
  %582 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %581, i32 0, i32 0, !dbg !1910
  %583 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %582, i32 0, i32 0, !dbg !1911
  %584 = load i8, i8* %583, align 8, !dbg !1911
  %585 = zext i8 %584 to i32, !dbg !1908
  %586 = icmp eq i32 %585, 10, !dbg !1912
  br i1 %586, label %587, label %619, !dbg !1913

; <label>:587:                                    ; preds = %580
  %588 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1914
  %589 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %588, i32 0, i32 0, !dbg !1917
  %590 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %589, i32 0, i32 3, !dbg !1918
  %591 = load i8, i8* %590, align 1, !dbg !1918
  %592 = icmp ne i8 %591, 0, !dbg !1914
  br i1 %592, label %593, label %601, !dbg !1919

; <label>:593:                                    ; preds = %587
  %594 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1920
  %595 = load i32, i32* %13, align 4, !dbg !1922
  %596 = zext i32 %595 to i64, !dbg !1922
  %597 = call i8* @strvec_slot(%struct._vector* %594, i64 %596), !dbg !1923
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.38, i32 0, i32 0), i8* %597), !dbg !1924
  %598 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1926
  %599 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %598, i32 0, i32 0, !dbg !1927
  %600 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %599, i32 0, i32 3, !dbg !1928
  store i8 0, i8* %600, align 1, !dbg !1929
  br label %601, !dbg !1930

; <label>:601:                                    ; preds = %593, %587
  %602 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1931
  %603 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %602, i32 0, i32 3, !dbg !1933
  %604 = load i8*, i8** %603, align 8, !dbg !1933
  %605 = icmp ne i8* %604, null, !dbg !1931
  br i1 %605, label %606, label %618, !dbg !1934

; <label>:606:                                    ; preds = %601
  %607 = load %struct._vector*, %struct._vector** %6, align 8, !dbg !1935
  %608 = load i32, i32* %13, align 4, !dbg !1937
  %609 = zext i32 %608 to i64, !dbg !1937
  %610 = call i8* @strvec_slot(%struct._vector* %607, i64 %609), !dbg !1938
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.39, i32 0, i32 0), i8* %610), !dbg !1939
  %611 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1941
  %612 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %611, i32 0, i32 3, !dbg !1942
  %613 = load i8*, i8** %612, align 8, !dbg !1942
  call void @free(i8* %613) #8, !dbg !1943
  %614 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1944
  %615 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %614, i32 0, i32 3, !dbg !1945
  store i8* null, i8** %615, align 8, !dbg !1946
  %616 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1947
  %617 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %616, i32 0, i32 3, !dbg !1948
  store i8* null, i8** %617, align 8, !dbg !1949
  br label %618, !dbg !1950

; <label>:618:                                    ; preds = %606, %601
  br label %619, !dbg !1951

; <label>:619:                                    ; preds = %618, %580
  %620 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1952
  %621 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %620, i32 0, i32 9, !dbg !1954
  %622 = load %struct._static_track_group*, %struct._static_track_group** %621, align 8, !dbg !1954
  %623 = icmp ne %struct._static_track_group* %622, null, !dbg !1952
  br i1 %623, label %624, label %632, !dbg !1955

; <label>:624:                                    ; preds = %619
  %625 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1956
  %626 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %625, i32 0, i32 2, !dbg !1958
  %627 = load %struct._interface*, %struct._interface** %626, align 8, !dbg !1958
  %628 = icmp ne %struct._interface* %627, null, !dbg !1956
  br i1 %628, label %632, label %629, !dbg !1959

; <label>:629:                                    ; preds = %624
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.40, i32 0, i32 0)), !dbg !1960
  %630 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1962
  %631 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %630, i32 0, i32 9, !dbg !1963
  store %struct._static_track_group* null, %struct._static_track_group** %631, align 8, !dbg !1964
  br label %632, !dbg !1965

; <label>:632:                                    ; preds = %629, %624, %619
  %633 = load %struct._list*, %struct._list** %5, align 8, !dbg !1966
  %634 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !1967
  %635 = bitcast %struct._ip_address* %634 to i8*, !dbg !1967
  call void @list_add(%struct._list* %633, i8* %635), !dbg !1968
  br label %636, !dbg !1969

; <label>:636:                                    ; preds = %632, %566, %449, %181, %146, %82, %67, %31
  ret void, !dbg !1970
}

declare i8* @strvec_slot(%struct._vector*, i64) #3

declare %struct._interface* @if_get_by_ifname(i8*, i32) #3

declare zeroext i1 @find_rttables_scope(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

declare %struct._static_track_group* @find_track_group(i8*) #3

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #7

declare void @list_add(%struct._list*, i8*) #3

; Function Attrs: nounwind uwtable
define void @clear_diff_address(%struct.ipt_handle*, %struct._list*, %struct._list*) #0 !dbg !1971 {
  %4 = alloca %struct.ipt_handle*, align 8
  %5 = alloca %struct._list*, align 8
  %6 = alloca %struct._list*, align 8
  %7 = alloca %struct._ip_address*, align 8
  %8 = alloca %struct._element*, align 8
  %9 = alloca [46 x i8], align 16
  %10 = alloca i8*, align 8
  store %struct.ipt_handle* %0, %struct.ipt_handle** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.ipt_handle** %4, metadata !1974, metadata !373), !dbg !1975
  store %struct._list* %1, %struct._list** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %5, metadata !1976, metadata !373), !dbg !1977
  store %struct._list* %2, %struct._list** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %6, metadata !1978, metadata !373), !dbg !1979
  call void @llvm.dbg.declare(metadata %struct._ip_address** %7, metadata !1980, metadata !373), !dbg !1981
  call void @llvm.dbg.declare(metadata %struct._element** %8, metadata !1982, metadata !373), !dbg !1983
  call void @llvm.dbg.declare(metadata [46 x i8]* %9, metadata !1984, metadata !373), !dbg !1985
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1986, metadata !373), !dbg !1987
  %11 = load %struct._list*, %struct._list** %5, align 8, !dbg !1988
  %12 = icmp eq %struct._list* %11, null, !dbg !1990
  br i1 %12, label %23, label %13, !dbg !1991

; <label>:13:                                     ; preds = %3
  %14 = load %struct._list*, %struct._list** %5, align 8, !dbg !1992
  %15 = getelementptr inbounds %struct._list, %struct._list* %14, i32 0, i32 0, !dbg !1994
  %16 = load %struct._element*, %struct._element** %15, align 8, !dbg !1994
  %17 = icmp eq %struct._element* %16, null, !dbg !1995
  br i1 %17, label %18, label %24, !dbg !1996

; <label>:18:                                     ; preds = %13
  %19 = load %struct._list*, %struct._list** %5, align 8, !dbg !1997
  %20 = getelementptr inbounds %struct._list, %struct._list* %19, i32 0, i32 1, !dbg !1999
  %21 = load %struct._element*, %struct._element** %20, align 8, !dbg !1999
  %22 = icmp eq %struct._element* %21, null, !dbg !2000
  br i1 %22, label %23, label %24, !dbg !2001

; <label>:23:                                     ; preds = %18, %3
  br label %131, !dbg !2002

; <label>:24:                                     ; preds = %18, %13
  %25 = load %struct._list*, %struct._list** %6, align 8, !dbg !2003
  %26 = icmp eq %struct._list* %25, null, !dbg !2005
  br i1 %26, label %37, label %27, !dbg !2006

; <label>:27:                                     ; preds = %24
  %28 = load %struct._list*, %struct._list** %6, align 8, !dbg !2007
  %29 = getelementptr inbounds %struct._list, %struct._list* %28, i32 0, i32 0, !dbg !2009
  %30 = load %struct._element*, %struct._element** %29, align 8, !dbg !2009
  %31 = icmp eq %struct._element* %30, null, !dbg !2010
  br i1 %31, label %32, label %42, !dbg !2011

; <label>:32:                                     ; preds = %27
  %33 = load %struct._list*, %struct._list** %6, align 8, !dbg !2012
  %34 = getelementptr inbounds %struct._list, %struct._list* %33, i32 0, i32 1, !dbg !2014
  %35 = load %struct._element*, %struct._element** %34, align 8, !dbg !2014
  %36 = icmp eq %struct._element* %35, null, !dbg !2015
  br i1 %36, label %37, label %42, !dbg !2016

; <label>:37:                                     ; preds = %32, %24
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.41, i32 0, i32 0)), !dbg !2017
  %38 = load %struct._list*, %struct._list** %5, align 8, !dbg !2019
  %39 = call zeroext i1 @netlink_iplist(%struct._list* %38, i32 0, i1 zeroext false), !dbg !2020
  %40 = load %struct.ipt_handle*, %struct.ipt_handle** %4, align 8, !dbg !2021
  %41 = load %struct._list*, %struct._list** %5, align 8, !dbg !2022
  call void @handle_iptable_rule_to_iplist(%struct.ipt_handle* %40, %struct._list* %41, i32 0, i1 zeroext false), !dbg !2023
  br label %131, !dbg !2024

; <label>:42:                                     ; preds = %32, %27
  %43 = load %struct._list*, %struct._list** %5, align 8, !dbg !2025
  %44 = icmp ne %struct._list* %43, null, !dbg !2027
  br i1 %44, label %45, label %55, !dbg !2027

; <label>:45:                                     ; preds = %42
  %46 = load %struct._list*, %struct._list** %5, align 8, !dbg !2028
  %47 = icmp ne %struct._list* %46, null, !dbg !2030
  br i1 %47, label %49, label %48, !dbg !2031

; <label>:48:                                     ; preds = %45
  br label %53, !dbg !2032

; <label>:49:                                     ; preds = %45
  %50 = load %struct._list*, %struct._list** %5, align 8, !dbg !2034
  %51 = getelementptr inbounds %struct._list, %struct._list* %50, i32 0, i32 0, !dbg !2036
  %52 = load %struct._element*, %struct._element** %51, align 8, !dbg !2036
  br label %53, !dbg !2037

; <label>:53:                                     ; preds = %49, %48
  %54 = phi %struct._element* [ null, %48 ], [ %52, %49 ], !dbg !2038
  br label %56, !dbg !2040

; <label>:55:                                     ; preds = %42
  br label %56, !dbg !2041

; <label>:56:                                     ; preds = %55, %53
  %57 = phi %struct._element* [ %54, %53 ], [ null, %55 ], !dbg !2043
  store %struct._element* %57, %struct._element** %8, align 8, !dbg !2045
  br label %58, !dbg !2046

; <label>:58:                                     ; preds = %127, %56
  %59 = load %struct._element*, %struct._element** %8, align 8, !dbg !2047
  %60 = icmp ne %struct._element* %59, null, !dbg !2050
  br i1 %60, label %61, label %66, !dbg !2051

; <label>:61:                                     ; preds = %58
  %62 = load %struct._element*, %struct._element** %8, align 8, !dbg !2052
  %63 = getelementptr inbounds %struct._element, %struct._element* %62, i32 0, i32 2, !dbg !2054
  %64 = load i8*, i8** %63, align 8, !dbg !2054
  %65 = bitcast i8* %64 to %struct._ip_address*, !dbg !2055
  store %struct._ip_address* %65, %struct._ip_address** %7, align 8, !dbg !2056
  br label %66

; <label>:66:                                     ; preds = %61, %58
  %67 = phi i1 [ false, %58 ], [ true, %61 ]
  br i1 %67, label %68, label %131, !dbg !2057

; <label>:68:                                     ; preds = %66
  %69 = load %struct._list*, %struct._list** %6, align 8, !dbg !2059
  %70 = load %struct._ip_address*, %struct._ip_address** %7, align 8, !dbg !2062
  %71 = call zeroext i1 @address_exist(%struct._list* %69, %struct._ip_address* %70), !dbg !2063
  br i1 %71, label %126, label %72, !dbg !2064

; <label>:72:                                     ; preds = %68
  %73 = load %struct._ip_address*, %struct._ip_address** %7, align 8, !dbg !2065
  %74 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %73, i32 0, i32 10, !dbg !2067
  %75 = load i8, i8* %74, align 8, !dbg !2067
  %76 = trunc i8 %75 to i1, !dbg !2067
  br i1 %76, label %77, label %126, !dbg !2068

; <label>:77:                                     ; preds = %72
  %78 = load %struct._ip_address*, %struct._ip_address** %7, align 8, !dbg !2069
  %79 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %78, i32 0, i32 0, !dbg !2071
  %80 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %79, i32 0, i32 0, !dbg !2072
  %81 = load i8, i8* %80, align 8, !dbg !2072
  %82 = zext i8 %81 to i32, !dbg !2073
  %83 = icmp eq i32 %82, 10, !dbg !2074
  br i1 %83, label %84, label %89, !dbg !2075

; <label>:84:                                     ; preds = %77
  %85 = load %struct._ip_address*, %struct._ip_address** %7, align 8, !dbg !2076
  %86 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %85, i32 0, i32 1, !dbg !2078
  %87 = bitcast %union.anon* %86 to %struct.in6_addr*, !dbg !2079
  %88 = bitcast %struct.in6_addr* %87 to i8*, !dbg !2080
  br label %95, !dbg !2081

; <label>:89:                                     ; preds = %77
  %90 = load %struct._ip_address*, %struct._ip_address** %7, align 8, !dbg !2082
  %91 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %90, i32 0, i32 1, !dbg !2083
  %92 = bitcast %union.anon* %91 to %struct.anon*, !dbg !2084
  %93 = getelementptr inbounds %struct.anon, %struct.anon* %92, i32 0, i32 0, !dbg !2085
  %94 = bitcast %struct.in_addr* %93 to i8*, !dbg !2086
  br label %95, !dbg !2087

; <label>:95:                                     ; preds = %89, %84
  %96 = phi i8* [ %88, %84 ], [ %94, %89 ], !dbg !2089
  store i8* %96, i8** %10, align 8, !dbg !2091
  %97 = load %struct._ip_address*, %struct._ip_address** %7, align 8, !dbg !2092
  %98 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %97, i32 0, i32 0, !dbg !2093
  %99 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %98, i32 0, i32 0, !dbg !2094
  %100 = load i8, i8* %99, align 8, !dbg !2094
  %101 = zext i8 %100 to i32, !dbg !2095
  %102 = load i8*, i8** %10, align 8, !dbg !2096
  %103 = getelementptr inbounds [46 x i8], [46 x i8]* %9, i32 0, i32 0, !dbg !2097
  %104 = call i8* @inet_ntop(i32 %101, i8* %102, i8* %103, i32 46) #8, !dbg !2098
  %105 = getelementptr inbounds [46 x i8], [46 x i8]* %9, i32 0, i32 0, !dbg !2099
  %106 = load %struct._ip_address*, %struct._ip_address** %7, align 8, !dbg !2100
  %107 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %106, i32 0, i32 0, !dbg !2101
  %108 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %107, i32 0, i32 1, !dbg !2102
  %109 = load i8, i8* %108, align 1, !dbg !2102
  %110 = zext i8 %109 to i32, !dbg !2100
  %111 = load %struct._ip_address*, %struct._ip_address** %7, align 8, !dbg !2103
  %112 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %111, i32 0, i32 2, !dbg !2104
  %113 = load %struct._interface*, %struct._interface** %112, align 8, !dbg !2104
  %114 = getelementptr inbounds %struct._interface, %struct._interface* %113, i32 0, i32 0, !dbg !2105
  %115 = getelementptr inbounds [16 x i8], [16 x i8]* %114, i32 0, i32 0, !dbg !2103
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i32 0, i32 0), i8* %105, i32 %110, i8* %115), !dbg !2106
  %116 = load %struct._ip_address*, %struct._ip_address** %7, align 8, !dbg !2107
  %117 = call i32 @netlink_ipaddress(%struct._ip_address* %116, i32 0), !dbg !2108
  %118 = load %struct._ip_address*, %struct._ip_address** %7, align 8, !dbg !2109
  %119 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %118, i32 0, i32 11, !dbg !2111
  %120 = load i8, i8* %119, align 1, !dbg !2111
  %121 = trunc i8 %120 to i1, !dbg !2111
  br i1 %121, label %122, label %125, !dbg !2112

; <label>:122:                                    ; preds = %95
  %123 = load %struct._ip_address*, %struct._ip_address** %7, align 8, !dbg !2113
  %124 = load %struct.ipt_handle*, %struct.ipt_handle** %4, align 8, !dbg !2114
  call void @handle_iptable_rule_to_vip(%struct._ip_address* %123, i32 0, %struct.ipt_handle* %124, i1 zeroext false), !dbg !2115
  br label %125, !dbg !2115

; <label>:125:                                    ; preds = %122, %95
  br label %126, !dbg !2116

; <label>:126:                                    ; preds = %125, %72, %68
  br label %127, !dbg !2117

; <label>:127:                                    ; preds = %126
  %128 = load %struct._element*, %struct._element** %8, align 8, !dbg !2118
  %129 = getelementptr inbounds %struct._element, %struct._element* %128, i32 0, i32 0, !dbg !2120
  %130 = load %struct._element*, %struct._element** %129, align 8, !dbg !2120
  store %struct._element* %130, %struct._element** %8, align 8, !dbg !2121
  br label %58, !dbg !2122, !llvm.loop !2123

; <label>:131:                                    ; preds = %23, %37, %66
  ret void, !dbg !2125
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @address_exist(%struct._list*, %struct._ip_address*) #0 !dbg !2126 {
  %3 = alloca i1, align 1
  %4 = alloca %struct._list*, align 8
  %5 = alloca %struct._ip_address*, align 8
  %6 = alloca %struct._ip_address*, align 8
  %7 = alloca %struct._element*, align 8
  store %struct._list* %0, %struct._list** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %4, metadata !2129, metadata !373), !dbg !2130
  store %struct._ip_address* %1, %struct._ip_address** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %5, metadata !2131, metadata !373), !dbg !2132
  call void @llvm.dbg.declare(metadata %struct._ip_address** %6, metadata !2133, metadata !373), !dbg !2134
  call void @llvm.dbg.declare(metadata %struct._element** %7, metadata !2135, metadata !373), !dbg !2136
  %8 = load %struct._list*, %struct._list** %4, align 8, !dbg !2137
  %9 = icmp ne %struct._list* %8, null, !dbg !2139
  br i1 %9, label %10, label %20, !dbg !2139

; <label>:10:                                     ; preds = %2
  %11 = load %struct._list*, %struct._list** %4, align 8, !dbg !2140
  %12 = icmp ne %struct._list* %11, null, !dbg !2142
  br i1 %12, label %14, label %13, !dbg !2143

; <label>:13:                                     ; preds = %10
  br label %18, !dbg !2144

; <label>:14:                                     ; preds = %10
  %15 = load %struct._list*, %struct._list** %4, align 8, !dbg !2146
  %16 = getelementptr inbounds %struct._list, %struct._list* %15, i32 0, i32 0, !dbg !2148
  %17 = load %struct._element*, %struct._element** %16, align 8, !dbg !2148
  br label %18, !dbg !2149

; <label>:18:                                     ; preds = %14, %13
  %19 = phi %struct._element* [ null, %13 ], [ %17, %14 ], !dbg !2150
  br label %21, !dbg !2152

; <label>:20:                                     ; preds = %2
  br label %21, !dbg !2153

; <label>:21:                                     ; preds = %20, %18
  %22 = phi %struct._element* [ %19, %18 ], [ null, %20 ], !dbg !2155
  store %struct._element* %22, %struct._element** %7, align 8, !dbg !2157
  br label %23, !dbg !2158

; <label>:23:                                     ; preds = %298, %21
  %24 = load %struct._element*, %struct._element** %7, align 8, !dbg !2159
  %25 = icmp ne %struct._element* %24, null, !dbg !2162
  br i1 %25, label %26, label %31, !dbg !2163

; <label>:26:                                     ; preds = %23
  %27 = load %struct._element*, %struct._element** %7, align 8, !dbg !2164
  %28 = getelementptr inbounds %struct._element, %struct._element* %27, i32 0, i32 2, !dbg !2166
  %29 = load i8*, i8** %28, align 8, !dbg !2166
  %30 = bitcast i8* %29 to %struct._ip_address*, !dbg !2167
  store %struct._ip_address* %30, %struct._ip_address** %6, align 8, !dbg !2168
  br label %31

; <label>:31:                                     ; preds = %26, %23
  %32 = phi i1 [ false, %23 ], [ true, %26 ]
  br i1 %32, label %33, label %302, !dbg !2169

; <label>:33:                                     ; preds = %31
  %34 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !2171
  %35 = icmp ne %struct._ip_address* %34, null, !dbg !2174
  br i1 %35, label %40, label %36, !dbg !2175

; <label>:36:                                     ; preds = %33
  %37 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !2176
  %38 = icmp ne %struct._ip_address* %37, null, !dbg !2178
  br i1 %38, label %40, label %39, !dbg !2179

; <label>:39:                                     ; preds = %36
  br i1 true, label %275, label %297, !dbg !2180

; <label>:40:                                     ; preds = %36, %33
  %41 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !2182
  %42 = icmp ne %struct._ip_address* %41, null, !dbg !2184
  %43 = xor i1 %42, true, !dbg !2184
  %44 = zext i1 %43 to i32, !dbg !2184
  %45 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !2185
  %46 = icmp ne %struct._ip_address* %45, null, !dbg !2186
  %47 = xor i1 %46, true, !dbg !2186
  %48 = zext i1 %47 to i32, !dbg !2186
  %49 = icmp ne i32 %44, %48, !dbg !2187
  br i1 %49, label %50, label %51, !dbg !2188

; <label>:50:                                     ; preds = %40
  br i1 false, label %275, label %297, !dbg !2189

; <label>:51:                                     ; preds = %40
  %52 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !2191
  %53 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %52, i32 0, i32 0, !dbg !2193
  %54 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %53, i32 0, i32 0, !dbg !2194
  %55 = load i8, i8* %54, align 8, !dbg !2194
  %56 = zext i8 %55 to i32, !dbg !2195
  %57 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !2196
  %58 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %57, i32 0, i32 0, !dbg !2197
  %59 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %58, i32 0, i32 0, !dbg !2198
  %60 = load i8, i8* %59, align 8, !dbg !2198
  %61 = zext i8 %60 to i32, !dbg !2199
  %62 = icmp ne i32 %56, %61, !dbg !2200
  br i1 %62, label %63, label %64, !dbg !2201

; <label>:63:                                     ; preds = %51
  br i1 false, label %275, label %297, !dbg !2202

; <label>:64:                                     ; preds = %51
  %65 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !2204
  %66 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %65, i32 0, i32 0, !dbg !2206
  %67 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %66, i32 0, i32 0, !dbg !2207
  %68 = load i8, i8* %67, align 8, !dbg !2207
  %69 = zext i8 %68 to i32, !dbg !2208
  %70 = icmp eq i32 %69, 10, !dbg !2209
  br i1 %70, label %71, label %198, !dbg !2210

; <label>:71:                                     ; preds = %64
  %72 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !2211
  %73 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %72, i32 0, i32 1, !dbg !2213
  %74 = bitcast %union.anon* %73 to %struct.in6_addr*, !dbg !2214
  %75 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %74, i32 0, i32 0, !dbg !2215
  %76 = bitcast %union.anon.0* %75 to [4 x i32]*, !dbg !2216
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %76, i64 0, i64 0, !dbg !2217
  %78 = load i32, i32* %77, align 8, !dbg !2217
  %79 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !2216
  %80 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %79, i32 0, i32 1, !dbg !2218
  %81 = bitcast %union.anon* %80 to %struct.in6_addr*, !dbg !2219
  %82 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %81, i32 0, i32 0, !dbg !2215
  %83 = bitcast %union.anon.0* %82 to [4 x i32]*, !dbg !2216
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %83, i64 0, i64 0, !dbg !2220
  %85 = load i32, i32* %84, align 8, !dbg !2220
  %86 = icmp eq i32 %78, %85, !dbg !2221
  br i1 %86, label %87, label %297, !dbg !2221

; <label>:87:                                     ; preds = %71
  %88 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !2222
  %89 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %88, i32 0, i32 1, !dbg !2224
  %90 = bitcast %union.anon* %89 to %struct.in6_addr*, !dbg !2225
  %91 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %90, i32 0, i32 0, !dbg !2226
  %92 = bitcast %union.anon.0* %91 to [4 x i32]*, !dbg !2222
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %92, i64 0, i64 1, !dbg !2227
  %94 = load i32, i32* %93, align 4, !dbg !2227
  %95 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !2222
  %96 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %95, i32 0, i32 1, !dbg !2228
  %97 = bitcast %union.anon* %96 to %struct.in6_addr*, !dbg !2229
  %98 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %97, i32 0, i32 0, !dbg !2226
  %99 = bitcast %union.anon.0* %98 to [4 x i32]*, !dbg !2222
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %99, i64 0, i64 1, !dbg !2227
  %101 = load i32, i32* %100, align 4, !dbg !2227
  %102 = icmp eq i32 %94, %101, !dbg !2230
  br i1 %102, label %103, label %297, !dbg !2230

; <label>:103:                                    ; preds = %87
  %104 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !2231
  %105 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %104, i32 0, i32 1, !dbg !2233
  %106 = bitcast %union.anon* %105 to %struct.in6_addr*, !dbg !2234
  %107 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %106, i32 0, i32 0, !dbg !2235
  %108 = bitcast %union.anon.0* %107 to [4 x i32]*, !dbg !2231
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %108, i64 0, i64 2, !dbg !2236
  %110 = load i32, i32* %109, align 8, !dbg !2236
  %111 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !2231
  %112 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %111, i32 0, i32 1, !dbg !2237
  %113 = bitcast %union.anon* %112 to %struct.in6_addr*, !dbg !2238
  %114 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %113, i32 0, i32 0, !dbg !2235
  %115 = bitcast %union.anon.0* %114 to [4 x i32]*, !dbg !2231
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %115, i64 0, i64 2, !dbg !2236
  %117 = load i32, i32* %116, align 8, !dbg !2236
  %118 = icmp eq i32 %110, %117, !dbg !2239
  br i1 %118, label %119, label %297, !dbg !2239

; <label>:119:                                    ; preds = %103
  %120 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !2240
  %121 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %120, i32 0, i32 1, !dbg !2242
  %122 = bitcast %union.anon* %121 to %struct.in6_addr*, !dbg !2243
  %123 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %122, i32 0, i32 0, !dbg !2244
  %124 = bitcast %union.anon.0* %123 to [4 x i32]*, !dbg !2240
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %124, i64 0, i64 3, !dbg !2245
  %126 = load i32, i32* %125, align 4, !dbg !2245
  %127 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !2240
  %128 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %127, i32 0, i32 1, !dbg !2246
  %129 = bitcast %union.anon* %128 to %struct.in6_addr*, !dbg !2247
  %130 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %129, i32 0, i32 0, !dbg !2244
  %131 = bitcast %union.anon.0* %130 to [4 x i32]*, !dbg !2240
  %132 = getelementptr inbounds [4 x i32], [4 x i32]* %131, i64 0, i64 3, !dbg !2245
  %133 = load i32, i32* %132, align 4, !dbg !2245
  %134 = icmp eq i32 %126, %133, !dbg !2248
  br i1 %134, label %135, label %297, !dbg !2248

; <label>:135:                                    ; preds = %119
  %136 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !2249
  %137 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %136, i32 0, i32 0, !dbg !2251
  %138 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %137, i32 0, i32 1, !dbg !2252
  %139 = load i8, i8* %138, align 1, !dbg !2252
  %140 = zext i8 %139 to i32, !dbg !2253
  %141 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !2254
  %142 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %141, i32 0, i32 0, !dbg !2255
  %143 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %142, i32 0, i32 1, !dbg !2256
  %144 = load i8, i8* %143, align 1, !dbg !2256
  %145 = zext i8 %144 to i32, !dbg !2257
  %146 = icmp eq i32 %140, %145, !dbg !2258
  br i1 %146, label %147, label %297, !dbg !2259

; <label>:147:                                    ; preds = %135
  %148 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !2260
  %149 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %148, i32 0, i32 2, !dbg !2262
  %150 = load %struct._interface*, %struct._interface** %149, align 8, !dbg !2262
  %151 = icmp ne %struct._interface* %150, null, !dbg !2263
  %152 = xor i1 %151, true, !dbg !2263
  %153 = zext i1 %152 to i32, !dbg !2263
  %154 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !2264
  %155 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %154, i32 0, i32 2, !dbg !2265
  %156 = load %struct._interface*, %struct._interface** %155, align 8, !dbg !2265
  %157 = icmp ne %struct._interface* %156, null, !dbg !2266
  %158 = xor i1 %157, true, !dbg !2266
  %159 = zext i1 %158 to i32, !dbg !2266
  %160 = icmp eq i32 %153, %159, !dbg !2267
  br i1 %160, label %161, label %297, !dbg !2268

; <label>:161:                                    ; preds = %147
  %162 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !2269
  %163 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %162, i32 0, i32 2, !dbg !2271
  %164 = load %struct._interface*, %struct._interface** %163, align 8, !dbg !2271
  %165 = icmp ne %struct._interface* %164, null, !dbg !2272
  br i1 %165, label %166, label %178, !dbg !2273

; <label>:166:                                    ; preds = %161
  %167 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !2274
  %168 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %167, i32 0, i32 2, !dbg !2276
  %169 = load %struct._interface*, %struct._interface** %168, align 8, !dbg !2276
  %170 = getelementptr inbounds %struct._interface, %struct._interface* %169, i32 0, i32 1, !dbg !2277
  %171 = load i32, i32* %170, align 8, !dbg !2277
  %172 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !2278
  %173 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %172, i32 0, i32 2, !dbg !2279
  %174 = load %struct._interface*, %struct._interface** %173, align 8, !dbg !2279
  %175 = getelementptr inbounds %struct._interface, %struct._interface* %174, i32 0, i32 1, !dbg !2280
  %176 = load i32, i32* %175, align 8, !dbg !2280
  %177 = icmp eq i32 %171, %176, !dbg !2281
  br i1 %177, label %178, label %297, !dbg !2282

; <label>:178:                                    ; preds = %166, %161
  %179 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !2283
  %180 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %179, i32 0, i32 0, !dbg !2285
  %181 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %180, i32 0, i32 3, !dbg !2286
  %182 = load i8, i8* %181, align 1, !dbg !2286
  %183 = zext i8 %182 to i32, !dbg !2287
  %184 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !2288
  %185 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %184, i32 0, i32 0, !dbg !2289
  %186 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %185, i32 0, i32 3, !dbg !2290
  %187 = load i8, i8* %186, align 1, !dbg !2290
  %188 = zext i8 %187 to i32, !dbg !2291
  %189 = icmp eq i32 %183, %188, !dbg !2292
  br i1 %189, label %190, label %297, !dbg !2293

; <label>:190:                                    ; preds = %178
  %191 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !2294
  %192 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %191, i32 0, i32 3, !dbg !2296
  %193 = load i8*, i8** %192, align 8, !dbg !2296
  %194 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !2297
  %195 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %194, i32 0, i32 3, !dbg !2298
  %196 = load i8*, i8** %195, align 8, !dbg !2298
  %197 = call zeroext i1 @string_equal(i8* %193, i8* %196), !dbg !2299
  br i1 %197, label %275, label %297, !dbg !2300

; <label>:198:                                    ; preds = %64
  %199 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !2301
  %200 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %199, i32 0, i32 1, !dbg !2303
  %201 = bitcast %union.anon* %200 to %struct.anon*, !dbg !2304
  %202 = getelementptr inbounds %struct.anon, %struct.anon* %201, i32 0, i32 0, !dbg !2305
  %203 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %202, i32 0, i32 0, !dbg !2306
  %204 = load i32, i32* %203, align 8, !dbg !2306
  %205 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !2307
  %206 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %205, i32 0, i32 1, !dbg !2308
  %207 = bitcast %union.anon* %206 to %struct.anon*, !dbg !2309
  %208 = getelementptr inbounds %struct.anon, %struct.anon* %207, i32 0, i32 0, !dbg !2310
  %209 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %208, i32 0, i32 0, !dbg !2311
  %210 = load i32, i32* %209, align 8, !dbg !2311
  %211 = icmp eq i32 %204, %210, !dbg !2312
  br i1 %211, label %212, label %297, !dbg !2313

; <label>:212:                                    ; preds = %198
  %213 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !2314
  %214 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %213, i32 0, i32 0, !dbg !2316
  %215 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %214, i32 0, i32 1, !dbg !2317
  %216 = load i8, i8* %215, align 1, !dbg !2317
  %217 = zext i8 %216 to i32, !dbg !2318
  %218 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !2319
  %219 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %218, i32 0, i32 0, !dbg !2320
  %220 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %219, i32 0, i32 1, !dbg !2321
  %221 = load i8, i8* %220, align 1, !dbg !2321
  %222 = zext i8 %221 to i32, !dbg !2322
  %223 = icmp eq i32 %217, %222, !dbg !2323
  br i1 %223, label %224, label %297, !dbg !2324

; <label>:224:                                    ; preds = %212
  %225 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !2325
  %226 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %225, i32 0, i32 2, !dbg !2327
  %227 = load %struct._interface*, %struct._interface** %226, align 8, !dbg !2327
  %228 = icmp ne %struct._interface* %227, null, !dbg !2328
  %229 = xor i1 %228, true, !dbg !2328
  %230 = zext i1 %229 to i32, !dbg !2328
  %231 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !2329
  %232 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %231, i32 0, i32 2, !dbg !2330
  %233 = load %struct._interface*, %struct._interface** %232, align 8, !dbg !2330
  %234 = icmp ne %struct._interface* %233, null, !dbg !2331
  %235 = xor i1 %234, true, !dbg !2331
  %236 = zext i1 %235 to i32, !dbg !2331
  %237 = icmp eq i32 %230, %236, !dbg !2332
  br i1 %237, label %238, label %297, !dbg !2333

; <label>:238:                                    ; preds = %224
  %239 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !2334
  %240 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %239, i32 0, i32 2, !dbg !2336
  %241 = load %struct._interface*, %struct._interface** %240, align 8, !dbg !2336
  %242 = icmp ne %struct._interface* %241, null, !dbg !2337
  br i1 %242, label %243, label %255, !dbg !2338

; <label>:243:                                    ; preds = %238
  %244 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !2339
  %245 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %244, i32 0, i32 2, !dbg !2341
  %246 = load %struct._interface*, %struct._interface** %245, align 8, !dbg !2341
  %247 = getelementptr inbounds %struct._interface, %struct._interface* %246, i32 0, i32 1, !dbg !2342
  %248 = load i32, i32* %247, align 8, !dbg !2342
  %249 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !2343
  %250 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %249, i32 0, i32 2, !dbg !2344
  %251 = load %struct._interface*, %struct._interface** %250, align 8, !dbg !2344
  %252 = getelementptr inbounds %struct._interface, %struct._interface* %251, i32 0, i32 1, !dbg !2345
  %253 = load i32, i32* %252, align 8, !dbg !2345
  %254 = icmp eq i32 %248, %253, !dbg !2346
  br i1 %254, label %255, label %297, !dbg !2347

; <label>:255:                                    ; preds = %243, %238
  %256 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !2348
  %257 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %256, i32 0, i32 0, !dbg !2350
  %258 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %257, i32 0, i32 3, !dbg !2351
  %259 = load i8, i8* %258, align 1, !dbg !2351
  %260 = zext i8 %259 to i32, !dbg !2352
  %261 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !2353
  %262 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %261, i32 0, i32 0, !dbg !2354
  %263 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %262, i32 0, i32 3, !dbg !2355
  %264 = load i8, i8* %263, align 1, !dbg !2355
  %265 = zext i8 %264 to i32, !dbg !2356
  %266 = icmp eq i32 %260, %265, !dbg !2357
  br i1 %266, label %267, label %297, !dbg !2358

; <label>:267:                                    ; preds = %255
  %268 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !2359
  %269 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %268, i32 0, i32 3, !dbg !2361
  %270 = load i8*, i8** %269, align 8, !dbg !2361
  %271 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !2362
  %272 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %271, i32 0, i32 3, !dbg !2363
  %273 = load i8*, i8** %272, align 8, !dbg !2363
  %274 = call zeroext i1 @string_equal(i8* %270, i8* %273), !dbg !2364
  br i1 %274, label %275, label %297, !dbg !2365

; <label>:275:                                    ; preds = %267, %190, %63, %50, %39
  %276 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !2366
  %277 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %276, i32 0, i32 10, !dbg !2368
  %278 = load i8, i8* %277, align 8, !dbg !2368
  %279 = trunc i8 %278 to i1, !dbg !2368
  %280 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !2369
  %281 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %280, i32 0, i32 10, !dbg !2370
  %282 = zext i1 %279 to i8, !dbg !2371
  store i8 %282, i8* %281, align 8, !dbg !2371
  %283 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !2372
  %284 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %283, i32 0, i32 11, !dbg !2373
  %285 = load i8, i8* %284, align 1, !dbg !2373
  %286 = trunc i8 %285 to i1, !dbg !2373
  %287 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !2374
  %288 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %287, i32 0, i32 11, !dbg !2375
  %289 = zext i1 %286 to i8, !dbg !2376
  store i8 %289, i8* %288, align 1, !dbg !2376
  %290 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !2377
  %291 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %290, i32 0, i32 0, !dbg !2378
  %292 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %291, i32 0, i32 4, !dbg !2379
  %293 = load i32, i32* %292, align 4, !dbg !2379
  %294 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !2380
  %295 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %294, i32 0, i32 0, !dbg !2381
  %296 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %295, i32 0, i32 4, !dbg !2382
  store i32 %293, i32* %296, align 4, !dbg !2383
  store i1 true, i1* %3, align 1, !dbg !2384
  br label %303, !dbg !2384

; <label>:297:                                    ; preds = %267, %255, %243, %224, %212, %198, %190, %178, %166, %147, %135, %119, %103, %87, %71, %63, %50, %39
  br label %298, !dbg !2385

; <label>:298:                                    ; preds = %297
  %299 = load %struct._element*, %struct._element** %7, align 8, !dbg !2386
  %300 = getelementptr inbounds %struct._element, %struct._element* %299, i32 0, i32 0, !dbg !2388
  %301 = load %struct._element*, %struct._element** %300, align 8, !dbg !2388
  store %struct._element* %301, %struct._element** %7, align 8, !dbg !2389
  br label %23, !dbg !2390, !llvm.loop !2391

; <label>:302:                                    ; preds = %31
  store i1 false, i1* %3, align 1, !dbg !2393
  br label %303, !dbg !2393

; <label>:303:                                    ; preds = %302, %275
  %304 = load i1, i1* %3, align 1, !dbg !2394
  ret i1 %304, !dbg !2394
}

; Function Attrs: nounwind uwtable
define void @clear_diff_saddresses() #0 !dbg !2395 {
  %1 = load %struct._vrrp_data*, %struct._vrrp_data** @old_vrrp_data, align 8, !dbg !2398
  %2 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %1, i32 0, i32 1, !dbg !2399
  %3 = load %struct._list*, %struct._list** %2, align 8, !dbg !2399
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2400
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 1, !dbg !2401
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !2401
  call void @clear_diff_address(%struct.ipt_handle* null, %struct._list* %3, %struct._list* %6), !dbg !2402
  ret void, !dbg !2403
}

; Function Attrs: nounwind uwtable
define void @iptables_init() #0 !dbg !2404 {
  %1 = load i8, i8* @block_ipv4, align 1, !dbg !2405
  %2 = trunc i8 %1 to i1, !dbg !2405
  br i1 %2, label %9, label %3, !dbg !2407

; <label>:3:                                      ; preds = %0
  %4 = load i8, i8* @block_ipv6, align 1, !dbg !2408
  %5 = trunc i8 %4 to i1, !dbg !2408
  br i1 %5, label %9, label %6, !dbg !2410

; <label>:6:                                      ; preds = %3
  %7 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2411
  %8 = getelementptr inbounds %struct._data, %struct._data* %7, i32 0, i32 37, !dbg !2413
  store i8 0, i8* %8, align 2, !dbg !2414
  br label %19, !dbg !2415

; <label>:9:                                      ; preds = %3, %0
  call void @iptables_init_lib(), !dbg !2416
  %10 = load i8, i8* @block_ipv4, align 1, !dbg !2417
  %11 = trunc i8 %10 to i1, !dbg !2417
  br i1 %11, label %15, label %12, !dbg !2419

; <label>:12:                                     ; preds = %9
  %13 = load i8, i8* @block_ipv6, align 1, !dbg !2420
  %14 = trunc i8 %13 to i1, !dbg !2420
  br i1 %14, label %15, label %16, !dbg !2422

; <label>:15:                                     ; preds = %12, %9
  call void @check_chains_exist(), !dbg !2423
  br label %19, !dbg !2423

; <label>:16:                                     ; preds = %12
  %17 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2424
  %18 = getelementptr inbounds %struct._data, %struct._data* %17, i32 0, i32 37, !dbg !2425
  store i8 0, i8* %18, align 2, !dbg !2426
  br label %19

; <label>:19:                                     ; preds = %6, %16, %15
  ret void, !dbg !2427
}

declare void @iptables_init_lib() #3

; Function Attrs: nounwind uwtable
define internal void @check_chains_exist() #0 !dbg !2428 {
  call void @check_chains_exist_lib(), !dbg !2429
  ret void, !dbg !2430
}

; Function Attrs: nounwind uwtable
define void @reinstate_static_address(%struct._ip_address*) #0 !dbg !2431 {
  %2 = alloca %struct._ip_address*, align 8
  %3 = alloca [256 x i8], align 16
  store %struct._ip_address* %0, %struct._ip_address** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %2, metadata !2434, metadata !373), !dbg !2435
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !2436, metadata !373), !dbg !2437
  %4 = load %struct._ip_address*, %struct._ip_address** %2, align 8, !dbg !2438
  %5 = call i32 @netlink_ipaddress(%struct._ip_address* %4, i32 1), !dbg !2439
  %6 = icmp sgt i32 %5, 0, !dbg !2440
  %7 = load %struct._ip_address*, %struct._ip_address** %2, align 8, !dbg !2441
  %8 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %7, i32 0, i32 10, !dbg !2442
  %9 = zext i1 %6 to i8, !dbg !2443
  store i8 %9, i8* %8, align 8, !dbg !2443
  %10 = load %struct._ip_address*, %struct._ip_address** %2, align 8, !dbg !2444
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i32 0, i32 0, !dbg !2445
  call void @format_ipaddress(%struct._ip_address* %10, i8* %11, i64 256), !dbg !2446
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i32 0, i32 0, !dbg !2447
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.43, i32 0, i32 0), i8* %12), !dbg !2448
  ret void, !dbg !2449
}

declare void @handle_iptable_rule_to_vip_lib(%struct._ip_address*, i32, %struct.ipt_handle*, i1 zeroext) #3

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare i8* @inet_ntop2(i32) #3

declare i8* @get_rttables_scope(i32) #3

declare zeroext i1 @string_equal(i8*, i8*) #3

declare void @check_chains_exist_lib() #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!369, !370}
!llvm.ident = !{!371}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !126, globals: !358)
!1 = !DIFile(filename: "[inter]keepalived--vrrp--vrrp_ipaddress.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2 = !{!3, !56, !69, !88, !103, !119}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 23, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/linux/rtnetlink.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!6 = !DIEnumerator(name: "RTM_BASE", value: 16)
!7 = !DIEnumerator(name: "RTM_NEWLINK", value: 16)
!8 = !DIEnumerator(name: "RTM_DELLINK", value: 17)
!9 = !DIEnumerator(name: "RTM_GETLINK", value: 18)
!10 = !DIEnumerator(name: "RTM_SETLINK", value: 19)
!11 = !DIEnumerator(name: "RTM_NEWADDR", value: 20)
!12 = !DIEnumerator(name: "RTM_DELADDR", value: 21)
!13 = !DIEnumerator(name: "RTM_GETADDR", value: 22)
!14 = !DIEnumerator(name: "RTM_NEWROUTE", value: 24)
!15 = !DIEnumerator(name: "RTM_DELROUTE", value: 25)
!16 = !DIEnumerator(name: "RTM_GETROUTE", value: 26)
!17 = !DIEnumerator(name: "RTM_NEWNEIGH", value: 28)
!18 = !DIEnumerator(name: "RTM_DELNEIGH", value: 29)
!19 = !DIEnumerator(name: "RTM_GETNEIGH", value: 30)
!20 = !DIEnumerator(name: "RTM_NEWRULE", value: 32)
!21 = !DIEnumerator(name: "RTM_DELRULE", value: 33)
!22 = !DIEnumerator(name: "RTM_GETRULE", value: 34)
!23 = !DIEnumerator(name: "RTM_NEWQDISC", value: 36)
!24 = !DIEnumerator(name: "RTM_DELQDISC", value: 37)
!25 = !DIEnumerator(name: "RTM_GETQDISC", value: 38)
!26 = !DIEnumerator(name: "RTM_NEWTCLASS", value: 40)
!27 = !DIEnumerator(name: "RTM_DELTCLASS", value: 41)
!28 = !DIEnumerator(name: "RTM_GETTCLASS", value: 42)
!29 = !DIEnumerator(name: "RTM_NEWTFILTER", value: 44)
!30 = !DIEnumerator(name: "RTM_DELTFILTER", value: 45)
!31 = !DIEnumerator(name: "RTM_GETTFILTER", value: 46)
!32 = !DIEnumerator(name: "RTM_NEWACTION", value: 48)
!33 = !DIEnumerator(name: "RTM_DELACTION", value: 49)
!34 = !DIEnumerator(name: "RTM_GETACTION", value: 50)
!35 = !DIEnumerator(name: "RTM_NEWPREFIX", value: 52)
!36 = !DIEnumerator(name: "RTM_GETMULTICAST", value: 58)
!37 = !DIEnumerator(name: "RTM_GETANYCAST", value: 62)
!38 = !DIEnumerator(name: "RTM_NEWNEIGHTBL", value: 64)
!39 = !DIEnumerator(name: "RTM_GETNEIGHTBL", value: 66)
!40 = !DIEnumerator(name: "RTM_SETNEIGHTBL", value: 67)
!41 = !DIEnumerator(name: "RTM_NEWNDUSEROPT", value: 68)
!42 = !DIEnumerator(name: "RTM_NEWADDRLABEL", value: 72)
!43 = !DIEnumerator(name: "RTM_DELADDRLABEL", value: 73)
!44 = !DIEnumerator(name: "RTM_GETADDRLABEL", value: 74)
!45 = !DIEnumerator(name: "RTM_GETDCB", value: 78)
!46 = !DIEnumerator(name: "RTM_SETDCB", value: 79)
!47 = !DIEnumerator(name: "RTM_NEWNETCONF", value: 80)
!48 = !DIEnumerator(name: "RTM_GETNETCONF", value: 82)
!49 = !DIEnumerator(name: "RTM_NEWMDB", value: 84)
!50 = !DIEnumerator(name: "RTM_DELMDB", value: 85)
!51 = !DIEnumerator(name: "RTM_GETMDB", value: 86)
!52 = !DIEnumerator(name: "RTM_NEWNSID", value: 88)
!53 = !DIEnumerator(name: "RTM_DELNSID", value: 89)
!54 = !DIEnumerator(name: "RTM_GETNSID", value: 90)
!55 = !DIEnumerator(name: "__RTM_MAX", value: 91)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 25, size: 32, align: 32, elements: !58)
!57 = !DIFile(filename: "/usr/include/linux/if_addr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!59 = !DIEnumerator(name: "IFA_UNSPEC", value: 0)
!60 = !DIEnumerator(name: "IFA_ADDRESS", value: 1)
!61 = !DIEnumerator(name: "IFA_LOCAL", value: 2)
!62 = !DIEnumerator(name: "IFA_LABEL", value: 3)
!63 = !DIEnumerator(name: "IFA_BROADCAST", value: 4)
!64 = !DIEnumerator(name: "IFA_ANYCAST", value: 5)
!65 = !DIEnumerator(name: "IFA_CACHEINFO", value: 6)
!66 = !DIEnumerator(name: "IFA_MULTICAST", value: 7)
!67 = !DIEnumerator(name: "IFA_FLAGS", value: 8)
!68 = !DIEnumerator(name: "__IFA_MAX", value: 9)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !70, line: 42, size: 32, align: 32, elements: !71)
!70 = !DIFile(filename: "/usr/include/net/if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!72 = !DIEnumerator(name: "IFF_UP", value: 1)
!73 = !DIEnumerator(name: "IFF_BROADCAST", value: 2)
!74 = !DIEnumerator(name: "IFF_DEBUG", value: 4)
!75 = !DIEnumerator(name: "IFF_LOOPBACK", value: 8)
!76 = !DIEnumerator(name: "IFF_POINTOPOINT", value: 16)
!77 = !DIEnumerator(name: "IFF_NOTRAILERS", value: 32)
!78 = !DIEnumerator(name: "IFF_RUNNING", value: 64)
!79 = !DIEnumerator(name: "IFF_NOARP", value: 128)
!80 = !DIEnumerator(name: "IFF_PROMISC", value: 256)
!81 = !DIEnumerator(name: "IFF_ALLMULTI", value: 512)
!82 = !DIEnumerator(name: "IFF_MASTER", value: 1024)
!83 = !DIEnumerator(name: "IFF_SLAVE", value: 2048)
!84 = !DIEnumerator(name: "IFF_MULTICAST", value: 4096)
!85 = !DIEnumerator(name: "IFF_PORTSEL", value: 8192)
!86 = !DIEnumerator(name: "IFF_AUTOMEDIA", value: 16384)
!87 = !DIEnumerator(name: "IFF_DYNAMIC", value: 32768)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "global_bits", file: !89, line: 53, size: 32, align: 32, elements: !90)
!89 = !DIFile(filename: "../../lib/bitops.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!90 = !{!91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102}
!91 = !DIEnumerator(name: "LOG_CONSOLE_BIT", value: 0)
!92 = !DIEnumerator(name: "NO_SYSLOG_BIT", value: 1)
!93 = !DIEnumerator(name: "DONT_FORK_BIT", value: 2)
!94 = !DIEnumerator(name: "DUMP_CONF_BIT", value: 3)
!95 = !DIEnumerator(name: "DONT_RELEASE_VRRP_BIT", value: 4)
!96 = !DIEnumerator(name: "RELEASE_VIPS_BIT", value: 5)
!97 = !DIEnumerator(name: "DONT_RELEASE_IPVS_BIT", value: 6)
!98 = !DIEnumerator(name: "LOG_DETAIL_BIT", value: 7)
!99 = !DIEnumerator(name: "LOG_EXTRA_DETAIL_BIT", value: 8)
!100 = !DIEnumerator(name: "DONT_RESPAWN_BIT", value: 9)
!101 = !DIEnumerator(name: "LOG_ADDRESS_CHANGES", value: 10)
!102 = !DIEnumerator(name: "CONFIG_TEST_BIT", value: 11)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !104, line: 44, size: 32, align: 32, elements: !105)
!104 = !DIFile(filename: "../../lib/parser.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118}
!106 = !DIEnumerator(name: "CONFIG_OK", value: 0)
!107 = !DIEnumerator(name: "CONFIG_FILE_NOT_FOUND", value: 1)
!108 = !DIEnumerator(name: "CONFIG_BAD_IF", value: 2)
!109 = !DIEnumerator(name: "CONFIG_FATAL", value: 3)
!110 = !DIEnumerator(name: "CONFIG_MULTIPLE_FILES", value: 4)
!111 = !DIEnumerator(name: "CONFIG_UNKNOWN_KEYWORD", value: 5)
!112 = !DIEnumerator(name: "CONFIG_UNEXPECTED_BOB", value: 6)
!113 = !DIEnumerator(name: "CONFIG_MISSING_BOB", value: 7)
!114 = !DIEnumerator(name: "CONFIG_UNMATCHED_QUOTE", value: 8)
!115 = !DIEnumerator(name: "CONFIG_MISSING_PARAMETER", value: 9)
!116 = !DIEnumerator(name: "CONFIG_INVALID_NUMBER", value: 10)
!117 = !DIEnumerator(name: "CONFIG_GENERAL_ERROR", value: 11)
!118 = !DIEnumerator(name: "CONFIG_SECURITY_ERROR", value: 12)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "if_lookup", file: !120, line: 142, size: 32, align: 32, elements: !121)
!120 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!121 = !{!122, !123, !124, !125}
!122 = !DIEnumerator(name: "IF_NO_CREATE", value: 0)
!123 = !DIEnumerator(name: "IF_CREATE_IF_DYNAMIC", value: 1)
!124 = !DIEnumerator(name: "IF_CREATE_ALWAYS", value: 2)
!125 = !DIEnumerator(name: "IF_CREATE_NETLINK", value: 3)
!126 = !{!127, !128, !129, !281}
!127 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_address_t", file: !131, line: 73, baseType: !132)
!131 = !DIFile(filename: "./../include/vrrp_ipaddress.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_address", file: !131, line: 41, size: 704, align: 64, elements: !133)
!133 = !{!134, !147, !183, !327, !328, !329, !330, !331, !336, !337, !355, !356, !357}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "ifa", scope: !132, file: !131, line: 42, baseType: !135, size: 64, align: 32)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifaddrmsg", file: !57, line: 7, size: 64, align: 32, elements: !136)
!136 = !{!137, !141, !142, !143, !144}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_family", scope: !135, file: !57, line: 8, baseType: !138, size: 8, align: 8)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !139, line: 20, baseType: !140)
!139 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!140 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_prefixlen", scope: !135, file: !57, line: 9, baseType: !138, size: 8, align: 8, offset: 8)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_flags", scope: !135, file: !57, line: 10, baseType: !138, size: 8, align: 8, offset: 16)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_scope", scope: !135, file: !57, line: 11, baseType: !138, size: 8, align: 8, offset: 24)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_index", scope: !135, file: !57, line: 12, baseType: !145, size: 32, align: 32, offset: 32)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !139, line: 26, baseType: !146)
!146 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !132, file: !131, line: 50, baseType: !148, size: 128, align: 32, offset: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !132, file: !131, line: 44, size: 128, align: 32, elements: !149)
!149 = !{!150, !162}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !148, file: !131, line: 48, baseType: !151, size: 64, align: 32)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !148, file: !131, line: 45, size: 64, align: 32, elements: !152)
!152 = !{!153, !161}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !151, file: !131, line: 46, baseType: !154, size: 32, align: 32)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !155, line: 31, size: 32, align: 32, elements: !156)
!155 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!156 = !{!157}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !154, file: !155, line: 33, baseType: !158, size: 32, align: 32)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !155, line: 30, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !160, line: 51, baseType: !146)
!160 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!161 = !DIDerivedType(tag: DW_TAG_member, name: "sin_brd", scope: !151, file: !131, line: 47, baseType: !154, size: 32, align: 32, offset: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !148, file: !131, line: 49, baseType: !163, size: 128, align: 32)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !155, line: 211, size: 128, align: 32, elements: !164)
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !163, file: !155, line: 220, baseType: !166, size: 128, align: 32)
!166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !163, file: !155, line: 213, size: 128, align: 32, elements: !167)
!167 = !{!168, !173, !179}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !166, file: !155, line: 215, baseType: !169, size: 128, align: 8)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 128, align: 8, elements: !171)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !160, line: 48, baseType: !140)
!171 = !{!172}
!172 = !DISubrange(count: 16)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !166, file: !155, line: 217, baseType: !174, size: 128, align: 16)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 128, align: 16, elements: !177)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !160, line: 49, baseType: !176)
!176 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!177 = !{!178}
!178 = !DISubrange(count: 8)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !166, file: !155, line: 218, baseType: !180, size: 128, align: 32)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 128, align: 32, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 4)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !132, file: !131, line: 52, baseType: !184, size: 64, align: 64, offset: 192)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "interface_t", file: !120, line: 111, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interface", file: !120, line: 76, size: 1792, align: 64, elements: !187)
!187 = !{!188, !191, !193, !194, !195, !196, !198, !199, !200, !208, !209, !213, !214, !215, !216, !218, !219, !220, !221, !243, !244, !245, !246, !247, !248, !249, !250}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !186, file: !120, line: 77, baseType: !189, size: 128, align: 8)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 128, align: 8, elements: !171)
!190 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !186, file: !120, line: 78, baseType: !192, size: 32, align: 32, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "ifindex_t", file: !120, line: 62, baseType: !159)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !186, file: !120, line: 79, baseType: !154, size: 32, align: 32, offset: 160)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !186, file: !120, line: 80, baseType: !163, size: 128, align: 32, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_flags", scope: !186, file: !120, line: 81, baseType: !146, size: 32, align: 32, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !186, file: !120, line: 82, baseType: !197, size: 8, align: 8, offset: 352)
!197 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !186, file: !120, line: 83, baseType: !159, size: 32, align: 32, offset: 384)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "hw_type", scope: !186, file: !120, line: 84, baseType: !176, size: 16, align: 16, offset: 416)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr", scope: !186, file: !120, line: 85, baseType: !201, size: 256, align: 8, offset: 432)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 256, align: 8, elements: !206)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !203, line: 33, baseType: !204)
!203 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !205, line: 30, baseType: !140)
!205 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!206 = !{!207}
!207 = !DISubrange(count: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_bcast", scope: !186, file: !120, line: 86, baseType: !201, size: 256, align: 8, offset: 688)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_len", scope: !186, file: !120, line: 87, baseType: !210, size: 64, align: 64, offset: 960)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !211, line: 216, baseType: !212)
!211 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!212 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !186, file: !120, line: 88, baseType: !127, size: 32, align: 32, offset: 1024)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "vmac", scope: !186, file: !120, line: 90, baseType: !197, size: 8, align: 8, offset: 1056)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifindex", scope: !186, file: !120, line: 91, baseType: !192, size: 32, align: 32, offset: 1088)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifp", scope: !186, file: !120, line: 92, baseType: !217, size: 64, align: 64, offset: 1152)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifindex", scope: !186, file: !120, line: 94, baseType: !192, size: 32, align: 32, offset: 1216)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifp", scope: !186, file: !120, line: 96, baseType: !217, size: 64, align: 64, offset: 1280)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master", scope: !186, file: !120, line: 97, baseType: !197, size: 8, align: 8, offset: 1344)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !186, file: !120, line: 100, baseType: !222, size: 64, align: 64, offset: 1408)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "garp_delay_t", file: !120, line: 73, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_garp_delay", file: !120, line: 65, size: 704, align: 64, elements: !225)
!225 = !{!226, !237, !238, !239, !240, !241, !242}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "garp_interval", scope: !224, file: !120, line: 66, baseType: !227, size: 128, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !228, line: 31, baseType: !229)
!228 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !230, line: 30, size: 128, align: 64, elements: !231)
!230 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!231 = !{!232, !235}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !229, file: !230, line: 32, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !205, line: 139, baseType: !234)
!234 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !229, file: !230, line: 33, baseType: !236, size: 64, align: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !205, line: 141, baseType: !234)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "have_garp_interval", scope: !224, file: !120, line: 67, baseType: !197, size: 8, align: 8, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "gna_interval", scope: !224, file: !120, line: 68, baseType: !227, size: 128, align: 64, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "have_gna_interval", scope: !224, file: !120, line: 69, baseType: !197, size: 8, align: 8, offset: 320)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "garp_next_time", scope: !224, file: !120, line: 70, baseType: !227, size: 128, align: 64, offset: 384)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "gna_next_time", scope: !224, file: !120, line: 71, baseType: !227, size: 128, align: 64, offset: 512)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "aggregation_group", scope: !224, file: !120, line: 72, baseType: !127, size: 32, align: 32, offset: 640)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "gna_router", scope: !186, file: !120, line: 101, baseType: !197, size: 8, align: 8, offset: 1472)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_config", scope: !186, file: !120, line: 102, baseType: !127, size: 32, align: 32, offset: 1504)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_ignore_value", scope: !186, file: !120, line: 103, baseType: !159, size: 32, align: 32, offset: 1536)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_filter_value", scope: !186, file: !120, line: 104, baseType: !159, size: 32, align: 32, offset: 1568)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "reset_promote_secondaries", scope: !186, file: !120, line: 105, baseType: !159, size: 32, align: 32, offset: 1600)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "rp_filter", scope: !186, file: !120, line: 107, baseType: !146, size: 32, align: 32, offset: 1632)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries_already_set", scope: !186, file: !120, line: 109, baseType: !197, size: 8, align: 8, offset: 1664)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !186, file: !120, line: 110, baseType: !251, size: 64, align: 64, offset: 1728)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !252, line: 31, baseType: !253)
!252 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !252, line: 39, size: 320, align: 64, elements: !255)
!255 = !{!256, !263, !264, !265, !269}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !254, file: !252, line: 40, baseType: !257, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !252, line: 33, size: 192, align: 64, elements: !259)
!259 = !{!260, !261, !262}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !258, file: !252, line: 34, baseType: !257, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !258, file: !252, line: 35, baseType: !257, size: 64, align: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !258, file: !252, line: 36, baseType: !128, size: 64, align: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !254, file: !252, line: 41, baseType: !257, size: 64, align: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !254, file: !252, line: 42, baseType: !146, size: 32, align: 32, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !254, file: !252, line: 43, baseType: !266, size: 64, align: 64, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !128}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !254, file: !252, line: 44, baseType: !270, size: 64, align: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !273, !128}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !275, line: 48, baseType: !276)
!275 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !277, line: 241, size: 1728, align: 64, elements: !278)
!277 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!278 = !{!279, !280, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !300, !301, !302, !303, !305, !306, !308, !312, !315, !317, !318, !319, !320, !321, !322, !323}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !276, file: !277, line: 242, baseType: !127, size: 32, align: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !276, file: !277, line: 247, baseType: !281, size: 64, align: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !276, file: !277, line: 248, baseType: !281, size: 64, align: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !276, file: !277, line: 249, baseType: !281, size: 64, align: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !276, file: !277, line: 250, baseType: !281, size: 64, align: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !276, file: !277, line: 251, baseType: !281, size: 64, align: 64, offset: 320)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !276, file: !277, line: 252, baseType: !281, size: 64, align: 64, offset: 384)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !276, file: !277, line: 253, baseType: !281, size: 64, align: 64, offset: 448)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !276, file: !277, line: 254, baseType: !281, size: 64, align: 64, offset: 512)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !276, file: !277, line: 256, baseType: !281, size: 64, align: 64, offset: 576)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !276, file: !277, line: 257, baseType: !281, size: 64, align: 64, offset: 640)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !276, file: !277, line: 258, baseType: !281, size: 64, align: 64, offset: 704)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !276, file: !277, line: 260, baseType: !293, size: 64, align: 64, offset: 768)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !277, line: 156, size: 192, align: 64, elements: !295)
!295 = !{!296, !297, !299}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !294, file: !277, line: 157, baseType: !293, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !294, file: !277, line: 158, baseType: !298, size: 64, align: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !294, file: !277, line: 162, baseType: !127, size: 32, align: 32, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !276, file: !277, line: 262, baseType: !298, size: 64, align: 64, offset: 832)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !276, file: !277, line: 264, baseType: !127, size: 32, align: 32, offset: 896)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !276, file: !277, line: 268, baseType: !127, size: 32, align: 32, offset: 928)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !276, file: !277, line: 270, baseType: !304, size: 64, align: 64, offset: 960)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !205, line: 131, baseType: !234)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !276, file: !277, line: 274, baseType: !176, size: 16, align: 16, offset: 1024)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !276, file: !277, line: 275, baseType: !307, size: 8, align: 8, offset: 1040)
!307 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !276, file: !277, line: 276, baseType: !309, size: 8, align: 8, offset: 1048)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 8, align: 8, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 1)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !276, file: !277, line: 280, baseType: !313, size: 64, align: 64, offset: 1088)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !277, line: 150, baseType: null)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !276, file: !277, line: 289, baseType: !316, size: 64, align: 64, offset: 1152)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !205, line: 132, baseType: !234)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !276, file: !277, line: 297, baseType: !128, size: 64, align: 64, offset: 1216)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !276, file: !277, line: 298, baseType: !128, size: 64, align: 64, offset: 1280)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !276, file: !277, line: 299, baseType: !128, size: 64, align: 64, offset: 1344)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !276, file: !277, line: 300, baseType: !128, size: 64, align: 64, offset: 1408)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !276, file: !277, line: 302, baseType: !210, size: 64, align: 64, offset: 1472)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !276, file: !277, line: 303, baseType: !127, size: 32, align: 32, offset: 1536)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !276, file: !277, line: 305, baseType: !324, size: 160, align: 8, offset: 1568)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 160, align: 8, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 20)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !132, file: !131, line: 53, baseType: !281, size: 64, align: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !132, file: !131, line: 55, baseType: !159, size: 32, align: 32, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "flagmask", scope: !132, file: !131, line: 56, baseType: !159, size: 32, align: 32, offset: 352)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "have_peer", scope: !132, file: !131, line: 61, baseType: !197, size: 8, align: 8, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !132, file: !131, line: 65, baseType: !332, size: 128, align: 32, offset: 416)
!332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !132, file: !131, line: 62, size: 128, align: 32, elements: !333)
!333 = !{!334, !335}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !332, file: !131, line: 63, baseType: !154, size: 32, align: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !332, file: !131, line: 64, baseType: !163, size: 128, align: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track", scope: !132, file: !131, line: 66, baseType: !197, size: 8, align: 8, offset: 544)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "track_group", scope: !132, file: !131, line: 67, baseType: !338, size: 64, align: 64, offset: 576)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "static_track_group_t", file: !340, line: 39, baseType: !341)
!340 = !DIFile(filename: "./../include/vrrp_static_track.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_static_track_group", file: !340, line: 35, size: 192, align: 64, elements: !342)
!342 = !{!343, !344, !354}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !341, file: !340, line: 36, baseType: !281, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !341, file: !340, line: 37, baseType: !345, size: 64, align: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !347, line: 34, baseType: !348)
!347 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !347, line: 30, size: 128, align: 64, elements: !349)
!349 = !{!350, !351, !352}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !348, file: !347, line: 31, baseType: !146, size: 32, align: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !348, file: !347, line: 32, baseType: !146, size: 32, align: 32, offset: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !348, file: !347, line: 33, baseType: !353, size: 64, align: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !341, file: !340, line: 38, baseType: !251, size: 64, align: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !132, file: !131, line: 69, baseType: !197, size: 8, align: 8, offset: 640)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rule_set", scope: !132, file: !131, line: 70, baseType: !197, size: 8, align: 8, offset: 648)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "garp_gna_pending", scope: !132, file: !131, line: 72, baseType: !197, size: 8, align: 8, offset: 656)
!358 = !{!359, !368}
!359 = distinct !DIGlobalVariable(name: "addr_str", scope: !360, file: !361, line: 63, type: !365, isLocal: true, isDefinition: true, variable: [46 x i8]* @ipaddresstos.addr_str)
!360 = distinct !DISubprogram(name: "ipaddresstos", scope: !361, file: !361, line: 61, type: !362, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !364)
!361 = !DIFile(filename: "vrrp_ipaddress.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!362 = !DISubroutineType(types: !363)
!363 = !{!281, !281, !129}
!364 = !{}
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 368, align: 8, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 46)
!368 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !120, line: 150, type: !251, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!369 = !{i32 2, !"Dwarf Version", i32 4}
!370 = !{i32 2, !"Debug Info Version", i32 3}
!371 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!372 = !DILocalVariable(name: "buf", arg: 1, scope: !360, file: !361, line: 61, type: !281)
!373 = !DIExpression()
!374 = !DILocation(line: 61, column: 20, scope: !360)
!375 = !DILocalVariable(name: "ipaddress", arg: 2, scope: !360, file: !361, line: 61, type: !129)
!376 = !DILocation(line: 61, column: 39, scope: !360)
!377 = !DILocation(line: 65, column: 7, scope: !378)
!378 = distinct !DILexicalBlock(scope: !360, file: !361, line: 65, column: 6)
!379 = !DILocation(line: 65, column: 6, scope: !360)
!380 = !DILocation(line: 66, column: 7, scope: !378)
!381 = !DILocation(line: 66, column: 3, scope: !378)
!382 = !DILocation(line: 68, column: 8, scope: !383)
!383 = distinct !DILexicalBlock(scope: !360, file: !361, line: 68, column: 6)
!384 = !DILocation(line: 68, column: 20, scope: !383)
!385 = !DILocation(line: 68, column: 24, scope: !383)
!386 = !DILocation(line: 68, column: 7, scope: !383)
!387 = !DILocation(line: 68, column: 35, scope: !383)
!388 = !DILocation(line: 68, column: 6, scope: !360)
!389 = !DILocation(line: 69, column: 23, scope: !390)
!390 = distinct !DILexicalBlock(scope: !383, file: !361, line: 68, column: 8)
!391 = !DILocation(line: 69, column: 34, scope: !390)
!392 = !DILocation(line: 69, column: 36, scope: !390)
!393 = !DILocation(line: 69, column: 22, scope: !390)
!394 = !DILocation(line: 69, column: 47, scope: !390)
!395 = !DILocation(line: 69, column: 3, scope: !390)
!396 = !DILocation(line: 70, column: 2, scope: !390)
!397 = !DILocation(line: 71, column: 22, scope: !398)
!398 = distinct !DILexicalBlock(scope: !383, file: !361, line: 70, column: 9)
!399 = !DILocation(line: 71, column: 33, scope: !398)
!400 = !DILocation(line: 71, column: 35, scope: !398)
!401 = !DILocation(line: 71, column: 39, scope: !398)
!402 = !DILocation(line: 71, column: 21, scope: !398)
!403 = !DILocation(line: 71, column: 49, scope: !398)
!404 = !DILocation(line: 71, column: 3, scope: !398)
!405 = !DILocation(line: 74, column: 9, scope: !360)
!406 = !DILocation(line: 74, column: 2, scope: !360)
!407 = distinct !DISubprogram(name: "netlink_ipaddress", scope: !361, file: !361, line: 79, type: !408, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !364)
!408 = !DISubroutineType(types: !409)
!409 = !{!127, !129, !127}
!410 = !DILocalVariable(name: "ipaddress", arg: 1, scope: !407, file: !361, line: 79, type: !129)
!411 = !DILocation(line: 79, column: 33, scope: !407)
!412 = !DILocalVariable(name: "cmd", arg: 2, scope: !407, file: !361, line: 79, type: !127)
!413 = !DILocation(line: 79, column: 48, scope: !407)
!414 = !DILocalVariable(name: "cinfo", scope: !407, file: !361, line: 81, type: !415)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifa_cacheinfo", file: !57, line: 56, size: 128, align: 32, elements: !416)
!416 = !{!417, !418, !419, !420}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_prefered", scope: !415, file: !57, line: 57, baseType: !145, size: 32, align: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_valid", scope: !415, file: !57, line: 58, baseType: !145, size: 32, align: 32, offset: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "cstamp", scope: !415, file: !57, line: 59, baseType: !145, size: 32, align: 32, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !415, file: !57, line: 60, baseType: !145, size: 32, align: 32, offset: 96)
!421 = !DILocation(line: 81, column: 23, scope: !407)
!422 = !DILocalVariable(name: "status", scope: !407, file: !361, line: 82, type: !127)
!423 = !DILocation(line: 82, column: 6, scope: !407)
!424 = !DILocalVariable(name: "req", scope: !407, file: !361, line: 87, type: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !407, file: !361, line: 83, size: 2240, align: 32, elements: !426)
!426 = !{!427, !437, !438}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !425, file: !361, line: 84, baseType: !428, size: 128, align: 32)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nlmsghdr", file: !429, line: 42, size: 128, align: 32, elements: !430)
!429 = !DIFile(filename: "/usr/include/linux/netlink.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!430 = !{!431, !432, !434, !435, !436}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_len", scope: !428, file: !429, line: 43, baseType: !145, size: 32, align: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_type", scope: !428, file: !429, line: 44, baseType: !433, size: 16, align: 16, offset: 32)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !139, line: 23, baseType: !176)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_flags", scope: !428, file: !429, line: 45, baseType: !433, size: 16, align: 16, offset: 48)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_seq", scope: !428, file: !429, line: 46, baseType: !145, size: 32, align: 32, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_pid", scope: !428, file: !429, line: 47, baseType: !145, size: 32, align: 32, offset: 96)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "ifa", scope: !425, file: !361, line: 85, baseType: !135, size: 64, align: 32, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !425, file: !361, line: 86, baseType: !439, size: 2048, align: 8, offset: 192)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 2048, align: 8, elements: !440)
!440 = !{!441}
!441 = !DISubrange(count: 256)
!442 = !DILocation(line: 87, column: 4, scope: !407)
!443 = !DILocalVariable(name: "ifa_flags", scope: !407, file: !361, line: 89, type: !159)
!444 = !DILocation(line: 89, column: 11, scope: !407)
!445 = !DILocation(line: 94, column: 6, scope: !446)
!446 = distinct !DILexicalBlock(scope: !407, file: !361, line: 94, column: 6)
!447 = !DILocation(line: 94, column: 10, scope: !446)
!448 = !DILocation(line: 94, column: 6, scope: !407)
!449 = !DILocation(line: 96, column: 8, scope: !450)
!450 = distinct !DILexicalBlock(scope: !451, file: !361, line: 96, column: 7)
!451 = distinct !DILexicalBlock(scope: !446, file: !361, line: 94, column: 16)
!452 = !DILocation(line: 96, column: 19, scope: !450)
!453 = !DILocation(line: 96, column: 24, scope: !450)
!454 = !DILocation(line: 96, column: 7, scope: !451)
!455 = !DILocation(line: 97, column: 105, scope: !456)
!456 = distinct !DILexicalBlock(scope: !450, file: !361, line: 96, column: 33)
!457 = !DILocation(line: 97, column: 86, scope: !456)
!458 = !DILocation(line: 97, column: 117, scope: !456)
!459 = !DILocation(line: 97, column: 128, scope: !456)
!460 = !DILocation(line: 97, column: 133, scope: !456)
!461 = !DILocation(line: 97, column: 4, scope: !462)
!462 = !DILexicalBlockFile(scope: !456, file: !361, discriminator: 1)
!463 = !DILocation(line: 98, column: 4, scope: !456)
!464 = !DILocation(line: 102, column: 30, scope: !451)
!465 = !DILocation(line: 102, column: 41, scope: !451)
!466 = !DILocation(line: 102, column: 46, scope: !451)
!467 = !DILocation(line: 102, column: 3, scope: !451)
!468 = !DILocation(line: 102, column: 14, scope: !451)
!469 = !DILocation(line: 102, column: 18, scope: !451)
!470 = !DILocation(line: 102, column: 28, scope: !451)
!471 = !DILocation(line: 103, column: 2, scope: !451)
!472 = !DILocation(line: 104, column: 12, scope: !473)
!473 = distinct !DILexicalBlock(scope: !446, file: !361, line: 104, column: 11)
!474 = !DILocation(line: 104, column: 23, scope: !473)
!475 = !DILocation(line: 104, column: 28, scope: !473)
!476 = !DILocation(line: 104, column: 11, scope: !446)
!477 = !DILocation(line: 106, column: 3, scope: !478)
!478 = distinct !DILexicalBlock(scope: !473, file: !361, line: 104, column: 37)
!479 = !DILocation(line: 109, column: 2, scope: !407)
!480 = !DILocation(line: 111, column: 6, scope: !407)
!481 = !DILocation(line: 111, column: 8, scope: !407)
!482 = !DILocation(line: 111, column: 18, scope: !407)
!483 = !DILocation(line: 112, column: 6, scope: !407)
!484 = !DILocation(line: 112, column: 8, scope: !407)
!485 = !DILocation(line: 112, column: 20, scope: !407)
!486 = !DILocation(line: 113, column: 22, scope: !407)
!487 = !DILocation(line: 113, column: 26, scope: !407)
!488 = !DILocation(line: 113, column: 21, scope: !407)
!489 = !DILocation(line: 113, column: 6, scope: !407)
!490 = !DILocation(line: 113, column: 8, scope: !407)
!491 = !DILocation(line: 113, column: 19, scope: !407)
!492 = !DILocation(line: 114, column: 6, scope: !407)
!493 = !DILocation(line: 114, column: 12, scope: !407)
!494 = !DILocation(line: 114, column: 23, scope: !407)
!495 = !DILocation(line: 116, column: 6, scope: !496)
!496 = distinct !DILexicalBlock(scope: !407, file: !361, line: 116, column: 6)
!497 = !DILocation(line: 116, column: 10, scope: !496)
!498 = !DILocation(line: 116, column: 6, scope: !407)
!499 = !DILocation(line: 117, column: 15, scope: !496)
!500 = !DILocation(line: 117, column: 26, scope: !496)
!501 = !DILocation(line: 117, column: 13, scope: !496)
!502 = !DILocation(line: 117, column: 3, scope: !496)
!503 = !DILocation(line: 119, column: 8, scope: !504)
!504 = distinct !DILexicalBlock(scope: !407, file: !361, line: 119, column: 6)
!505 = !DILocation(line: 119, column: 20, scope: !504)
!506 = !DILocation(line: 119, column: 24, scope: !504)
!507 = !DILocation(line: 119, column: 7, scope: !504)
!508 = !DILocation(line: 119, column: 35, scope: !504)
!509 = !DILocation(line: 119, column: 6, scope: !407)
!510 = !DILocation(line: 120, column: 7, scope: !511)
!511 = distinct !DILexicalBlock(scope: !512, file: !361, line: 120, column: 7)
!512 = distinct !DILexicalBlock(scope: !504, file: !361, line: 119, column: 8)
!513 = !DILocation(line: 120, column: 11, scope: !511)
!514 = !DILocation(line: 120, column: 7, scope: !512)
!515 = !DILocation(line: 124, column: 8, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !361, line: 124, column: 8)
!517 = distinct !DILexicalBlock(scope: !511, file: !361, line: 120, column: 17)
!518 = !DILocation(line: 124, column: 19, scope: !516)
!519 = !DILocation(line: 124, column: 23, scope: !516)
!520 = !DILocation(line: 124, column: 37, scope: !516)
!521 = !DILocation(line: 124, column: 8, scope: !517)
!522 = !DILocation(line: 125, column: 5, scope: !523)
!523 = distinct !DILexicalBlock(scope: !516, file: !361, line: 124, column: 45)
!524 = !DILocation(line: 126, column: 11, scope: !523)
!525 = !DILocation(line: 126, column: 24, scope: !523)
!526 = !DILocation(line: 127, column: 11, scope: !523)
!527 = !DILocation(line: 127, column: 21, scope: !523)
!528 = !DILocation(line: 129, column: 20, scope: !523)
!529 = !DILocation(line: 129, column: 51, scope: !523)
!530 = !DILocation(line: 129, column: 5, scope: !523)
!531 = !DILocation(line: 131, column: 4, scope: !523)
!532 = !DILocation(line: 145, column: 10, scope: !533)
!533 = distinct !DILexicalBlock(scope: !517, file: !361, line: 145, column: 8)
!534 = !DILocation(line: 145, column: 21, scope: !533)
!535 = !DILocation(line: 145, column: 30, scope: !533)
!536 = !DILocation(line: 145, column: 8, scope: !517)
!537 = !DILocation(line: 146, column: 15, scope: !533)
!538 = !DILocation(line: 146, column: 5, scope: !533)
!539 = !DILocation(line: 148, column: 3, scope: !517)
!540 = !DILocation(line: 150, column: 18, scope: !512)
!541 = !DILocation(line: 151, column: 7, scope: !512)
!542 = !DILocation(line: 151, column: 18, scope: !512)
!543 = !DILocation(line: 151, column: 20, scope: !512)
!544 = !DILocation(line: 151, column: 6, scope: !512)
!545 = !DILocation(line: 150, column: 3, scope: !512)
!546 = !DILocation(line: 152, column: 2, scope: !512)
!547 = !DILocation(line: 153, column: 18, scope: !548)
!548 = distinct !DILexicalBlock(scope: !504, file: !361, line: 152, column: 9)
!549 = !DILocation(line: 154, column: 7, scope: !548)
!550 = !DILocation(line: 154, column: 18, scope: !548)
!551 = !DILocation(line: 154, column: 20, scope: !548)
!552 = !DILocation(line: 154, column: 24, scope: !548)
!553 = !DILocation(line: 154, column: 6, scope: !548)
!554 = !DILocation(line: 153, column: 3, scope: !548)
!555 = !DILocation(line: 156, column: 7, scope: !556)
!556 = distinct !DILexicalBlock(scope: !548, file: !361, line: 156, column: 7)
!557 = !DILocation(line: 156, column: 11, scope: !556)
!558 = !DILocation(line: 156, column: 7, scope: !548)
!559 = !DILocation(line: 157, column: 8, scope: !560)
!560 = distinct !DILexicalBlock(scope: !561, file: !361, line: 157, column: 8)
!561 = distinct !DILexicalBlock(scope: !556, file: !361, line: 156, column: 17)
!562 = !DILocation(line: 157, column: 19, scope: !560)
!563 = !DILocation(line: 157, column: 21, scope: !560)
!564 = !DILocation(line: 157, column: 25, scope: !560)
!565 = !DILocation(line: 157, column: 33, scope: !560)
!566 = !DILocation(line: 157, column: 8, scope: !561)
!567 = !DILocation(line: 158, column: 20, scope: !560)
!568 = !DILocation(line: 159, column: 9, scope: !560)
!569 = !DILocation(line: 159, column: 20, scope: !560)
!570 = !DILocation(line: 159, column: 22, scope: !560)
!571 = !DILocation(line: 159, column: 26, scope: !560)
!572 = !DILocation(line: 159, column: 8, scope: !560)
!573 = !DILocation(line: 158, column: 5, scope: !560)
!574 = !DILocation(line: 160, column: 3, scope: !561)
!575 = !DILocation(line: 163, column: 19, scope: !576)
!576 = distinct !DILexicalBlock(scope: !556, file: !361, line: 161, column: 8)
!577 = !DILocation(line: 164, column: 8, scope: !576)
!578 = !DILocation(line: 164, column: 19, scope: !576)
!579 = !DILocation(line: 164, column: 21, scope: !576)
!580 = !DILocation(line: 164, column: 25, scope: !576)
!581 = !DILocation(line: 164, column: 7, scope: !576)
!582 = !DILocation(line: 163, column: 4, scope: !576)
!583 = !DILocation(line: 168, column: 6, scope: !584)
!584 = distinct !DILexicalBlock(scope: !407, file: !361, line: 168, column: 6)
!585 = !DILocation(line: 168, column: 10, scope: !584)
!586 = !DILocation(line: 168, column: 6, scope: !407)
!587 = !DILocation(line: 170, column: 7, scope: !588)
!588 = distinct !DILexicalBlock(scope: !589, file: !361, line: 170, column: 7)
!589 = distinct !DILexicalBlock(scope: !584, file: !361, line: 168, column: 16)
!590 = !DILocation(line: 170, column: 7, scope: !589)
!591 = !DILocation(line: 171, column: 19, scope: !588)
!592 = !DILocation(line: 171, column: 46, scope: !588)
!593 = !DILocation(line: 171, column: 4, scope: !588)
!594 = !DILocation(line: 175, column: 7, scope: !595)
!595 = distinct !DILexicalBlock(scope: !589, file: !361, line: 175, column: 7)
!596 = !DILocation(line: 175, column: 18, scope: !595)
!597 = !DILocation(line: 175, column: 7, scope: !589)
!598 = !DILocation(line: 176, column: 19, scope: !595)
!599 = !DILocation(line: 177, column: 7, scope: !595)
!600 = !DILocation(line: 177, column: 18, scope: !595)
!601 = !DILocation(line: 177, column: 32, scope: !595)
!602 = !DILocation(line: 177, column: 43, scope: !595)
!603 = !DILocation(line: 177, column: 25, scope: !595)
!604 = !DILocation(line: 177, column: 50, scope: !595)
!605 = !DILocation(line: 176, column: 4, scope: !595)
!606 = !DILocation(line: 179, column: 7, scope: !607)
!607 = distinct !DILexicalBlock(scope: !589, file: !361, line: 179, column: 7)
!608 = !DILocation(line: 179, column: 18, scope: !607)
!609 = !DILocation(line: 179, column: 7, scope: !589)
!610 = !DILocation(line: 180, column: 40, scope: !607)
!611 = !DILocation(line: 180, column: 70, scope: !607)
!612 = !DILocation(line: 180, column: 81, scope: !607)
!613 = !DILocation(line: 180, column: 69, scope: !607)
!614 = !DILocation(line: 180, column: 91, scope: !607)
!615 = !DILocation(line: 180, column: 95, scope: !607)
!616 = !DILocation(line: 180, column: 87, scope: !607)
!617 = !DILocation(line: 180, column: 106, scope: !607)
!618 = !DILocation(line: 180, column: 25, scope: !607)
!619 = !DILocation(line: 181, column: 2, scope: !589)
!620 = !DILocation(line: 185, column: 6, scope: !621)
!621 = distinct !DILexicalBlock(scope: !407, file: !361, line: 185, column: 6)
!622 = !DILocation(line: 185, column: 10, scope: !621)
!623 = !DILocation(line: 185, column: 15, scope: !621)
!624 = !DILocation(line: 186, column: 9, scope: !621)
!625 = !DILocation(line: 186, column: 20, scope: !621)
!626 = !DILocation(line: 186, column: 25, scope: !621)
!627 = !DILocation(line: 186, column: 35, scope: !621)
!628 = !DILocation(line: 186, column: 60, scope: !621)
!629 = !DILocation(line: 186, column: 87, scope: !621)
!630 = !DILocation(line: 187, column: 11, scope: !621)
!631 = !DILocation(line: 187, column: 22, scope: !621)
!632 = !DILocation(line: 187, column: 28, scope: !621)
!633 = !DILocation(line: 187, column: 39, scope: !621)
!634 = !DILocation(line: 187, column: 49, scope: !621)
!635 = !DILocation(line: 187, column: 73, scope: !621)
!636 = !DILocation(line: 185, column: 6, scope: !637)
!637 = !DILexicalBlockFile(scope: !407, file: !361, discriminator: 1)
!638 = !DILocation(line: 188, column: 24, scope: !621)
!639 = !DILocation(line: 188, column: 3, scope: !621)
!640 = !DILocation(line: 189, column: 33, scope: !641)
!641 = distinct !DILexicalBlock(scope: !407, file: !361, line: 189, column: 6)
!642 = !DILocation(line: 189, column: 6, scope: !641)
!643 = !DILocation(line: 189, column: 36, scope: !641)
!644 = !DILocation(line: 189, column: 6, scope: !407)
!645 = !DILocation(line: 190, column: 10, scope: !641)
!646 = !DILocation(line: 190, column: 3, scope: !641)
!647 = !DILocation(line: 191, column: 23, scope: !407)
!648 = !DILocation(line: 193, column: 9, scope: !407)
!649 = !DILocation(line: 193, column: 2, scope: !407)
!650 = !DILocation(line: 194, column: 1, scope: !407)
!651 = distinct !DISubprogram(name: "netlink_iplist", scope: !361, file: !361, line: 198, type: !652, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !364)
!652 = !DISubroutineType(types: !653)
!653 = !{!197, !251, !127, !197}
!654 = !DILocalVariable(name: "ip_list", arg: 1, scope: !651, file: !361, line: 198, type: !251)
!655 = !DILocation(line: 198, column: 21, scope: !651)
!656 = !DILocalVariable(name: "cmd", arg: 2, scope: !651, file: !361, line: 198, type: !127)
!657 = !DILocation(line: 198, column: 34, scope: !651)
!658 = !DILocalVariable(name: "force", arg: 3, scope: !651, file: !361, line: 198, type: !197)
!659 = !DILocation(line: 198, column: 43, scope: !651)
!660 = !DILocalVariable(name: "ipaddr", scope: !651, file: !361, line: 200, type: !129)
!661 = !DILocation(line: 200, column: 16, scope: !651)
!662 = !DILocalVariable(name: "e", scope: !651, file: !361, line: 201, type: !663)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "element", file: !252, line: 30, baseType: !257)
!664 = !DILocation(line: 201, column: 10, scope: !651)
!665 = !DILocalVariable(name: "changed_entries", scope: !651, file: !361, line: 202, type: !197)
!666 = !DILocation(line: 202, column: 6, scope: !651)
!667 = !DILocation(line: 205, column: 8, scope: !668)
!668 = distinct !DILexicalBlock(scope: !651, file: !361, line: 205, column: 6)
!669 = !DILocation(line: 205, column: 17, scope: !668)
!670 = !DILocation(line: 205, column: 5, scope: !668)
!671 = !DILocation(line: 205, column: 10, scope: !672)
!672 = !DILexicalBlockFile(scope: !668, file: !361, discriminator: 1)
!673 = !DILocation(line: 205, column: 20, scope: !672)
!674 = !DILocation(line: 205, column: 25, scope: !672)
!675 = !DILocation(line: 205, column: 5, scope: !672)
!676 = !DILocation(line: 205, column: 9, scope: !677)
!677 = !DILexicalBlockFile(scope: !668, file: !361, discriminator: 2)
!678 = !DILocation(line: 205, column: 19, scope: !677)
!679 = !DILocation(line: 205, column: 24, scope: !677)
!680 = !DILocation(line: 205, column: 6, scope: !677)
!681 = !DILocation(line: 206, column: 3, scope: !668)
!682 = !DILocation(line: 212, column: 14, scope: !683)
!683 = distinct !DILexicalBlock(scope: !651, file: !361, line: 212, column: 2)
!684 = !DILocation(line: 212, column: 13, scope: !683)
!685 = !DILocation(line: 212, column: 12, scope: !683)
!686 = !DILocation(line: 212, column: 12, scope: !687)
!687 = !DILexicalBlockFile(scope: !683, file: !361, discriminator: 1)
!688 = !DILocation(line: 212, column: 13, scope: !689)
!689 = !DILexicalBlockFile(scope: !683, file: !361, discriminator: 2)
!690 = !DILocation(line: 212, column: 23, scope: !689)
!691 = !DILocation(line: 212, column: 12, scope: !689)
!692 = !DILocation(line: 212, column: 12, scope: !693)
!693 = !DILexicalBlockFile(scope: !683, file: !361, discriminator: 3)
!694 = !DILocation(line: 212, column: 9, scope: !693)
!695 = !DILocation(line: 212, column: 7, scope: !693)
!696 = !DILocation(line: 212, column: 30, scope: !697)
!697 = !DILexicalBlockFile(scope: !698, file: !361, discriminator: 4)
!698 = distinct !DILexicalBlock(scope: !683, file: !361, line: 212, column: 2)
!699 = !DILocation(line: 212, column: 2, scope: !697)
!700 = !DILocation(line: 213, column: 14, scope: !701)
!701 = distinct !DILexicalBlock(scope: !698, file: !361, line: 212, column: 52)
!702 = !DILocation(line: 213, column: 18, scope: !701)
!703 = !DILocation(line: 213, column: 12, scope: !701)
!704 = !DILocation(line: 213, column: 10, scope: !701)
!705 = !DILocation(line: 214, column: 8, scope: !706)
!706 = distinct !DILexicalBlock(scope: !701, file: !361, line: 214, column: 7)
!707 = !DILocation(line: 214, column: 12, scope: !706)
!708 = !DILocation(line: 214, column: 17, scope: !706)
!709 = !DILocation(line: 214, column: 21, scope: !710)
!710 = !DILexicalBlockFile(scope: !706, file: !361, discriminator: 1)
!711 = !DILocation(line: 214, column: 29, scope: !710)
!712 = !DILocation(line: 214, column: 34, scope: !710)
!713 = !DILocation(line: 215, column: 8, scope: !706)
!714 = !DILocation(line: 215, column: 12, scope: !706)
!715 = !DILocation(line: 215, column: 17, scope: !706)
!716 = !DILocation(line: 216, column: 9, scope: !706)
!717 = !DILocation(line: 216, column: 15, scope: !706)
!718 = !DILocation(line: 216, column: 18, scope: !710)
!719 = !DILocation(line: 216, column: 26, scope: !710)
!720 = !DILocation(line: 216, column: 30, scope: !710)
!721 = !DILocation(line: 216, column: 33, scope: !722)
!722 = !DILexicalBlockFile(scope: !706, file: !361, discriminator: 2)
!723 = !DILocation(line: 214, column: 7, scope: !724)
!724 = !DILexicalBlockFile(scope: !701, file: !361, discriminator: 2)
!725 = !DILocation(line: 219, column: 8, scope: !726)
!726 = distinct !DILexicalBlock(scope: !727, file: !361, line: 219, column: 8)
!727 = distinct !DILexicalBlock(scope: !706, file: !361, line: 216, column: 78)
!728 = !DILocation(line: 219, column: 8, scope: !727)
!729 = !DILocation(line: 220, column: 26, scope: !726)
!730 = !DILocation(line: 220, column: 5, scope: !726)
!731 = !DILocation(line: 222, column: 26, scope: !732)
!732 = distinct !DILexicalBlock(scope: !727, file: !361, line: 222, column: 8)
!733 = !DILocation(line: 222, column: 34, scope: !732)
!734 = !DILocation(line: 222, column: 8, scope: !732)
!735 = !DILocation(line: 222, column: 39, scope: !732)
!736 = !DILocation(line: 222, column: 8, scope: !727)
!737 = !DILocation(line: 223, column: 21, scope: !738)
!738 = distinct !DILexicalBlock(scope: !732, file: !361, line: 222, column: 44)
!739 = !DILocation(line: 223, column: 25, scope: !738)
!740 = !DILocation(line: 223, column: 19, scope: !738)
!741 = !DILocation(line: 223, column: 5, scope: !738)
!742 = !DILocation(line: 223, column: 13, scope: !738)
!743 = !DILocation(line: 223, column: 17, scope: !738)
!744 = !DILocation(line: 224, column: 21, scope: !738)
!745 = !DILocation(line: 225, column: 4, scope: !738)
!746 = !DILocation(line: 227, column: 5, scope: !732)
!747 = !DILocation(line: 227, column: 13, scope: !732)
!748 = !DILocation(line: 227, column: 17, scope: !732)
!749 = !DILocation(line: 228, column: 3, scope: !727)
!750 = !DILocation(line: 229, column: 2, scope: !701)
!751 = !DILocation(line: 212, column: 41, scope: !752)
!752 = !DILexicalBlockFile(scope: !698, file: !361, discriminator: 5)
!753 = !DILocation(line: 212, column: 45, scope: !752)
!754 = !DILocation(line: 212, column: 38, scope: !752)
!755 = !DILocation(line: 212, column: 2, scope: !752)
!756 = distinct !{!756, !757}
!757 = !DILocation(line: 212, column: 2, scope: !651)
!758 = !DILocation(line: 231, column: 9, scope: !651)
!759 = !DILocation(line: 231, column: 2, scope: !651)
!760 = !DILocation(line: 232, column: 1, scope: !651)
!761 = distinct !DISubprogram(name: "__test_bit", scope: !89, file: !89, line: 47, type: !762, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !364)
!762 = !DISubroutineType(types: !763)
!763 = !{!197, !146, !764}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64, align: 64)
!765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!766 = !DILocalVariable(name: "idx", arg: 1, scope: !761, file: !89, line: 47, type: !146)
!767 = !DILocation(line: 47, column: 39, scope: !761)
!768 = !DILocalVariable(name: "bmap", arg: 2, scope: !761, file: !89, line: 47, type: !764)
!769 = !DILocation(line: 47, column: 65, scope: !761)
!770 = !DILocation(line: 49, column: 19, scope: !761)
!771 = !DILocation(line: 49, column: 18, scope: !761)
!772 = !DILocation(line: 49, column: 24, scope: !761)
!773 = !DILocation(line: 49, column: 12, scope: !761)
!774 = !DILocation(line: 49, column: 68, scope: !761)
!775 = !DILocation(line: 49, column: 67, scope: !761)
!776 = !DILocation(line: 49, column: 73, scope: !761)
!777 = !DILocation(line: 49, column: 63, scope: !761)
!778 = !DILocation(line: 49, column: 56, scope: !761)
!779 = !DILocation(line: 49, column: 10, scope: !761)
!780 = !DILocation(line: 49, column: 9, scope: !761)
!781 = !DILocation(line: 49, column: 2, scope: !761)
!782 = distinct !DISubprogram(name: "handle_iptable_rule_to_iplist", scope: !361, file: !361, line: 398, type: !783, isLocal: false, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !364)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !785, !251, !127, !197}
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64, align: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipt_handle", file: !131, line: 104, flags: DIFlagFwdDecl)
!787 = !DILocalVariable(name: "h", arg: 1, scope: !782, file: !361, line: 398, type: !785)
!788 = !DILocation(line: 398, column: 50, scope: !782)
!789 = !DILocalVariable(name: "ip_list", arg: 2, scope: !782, file: !361, line: 398, type: !251)
!790 = !DILocation(line: 398, column: 58, scope: !782)
!791 = !DILocalVariable(name: "cmd", arg: 3, scope: !782, file: !361, line: 398, type: !127)
!792 = !DILocation(line: 398, column: 71, scope: !782)
!793 = !DILocalVariable(name: "force", arg: 4, scope: !782, file: !361, line: 398, type: !197)
!794 = !DILocation(line: 398, column: 80, scope: !782)
!795 = !DILocalVariable(name: "ipaddr", scope: !782, file: !361, line: 400, type: !129)
!796 = !DILocation(line: 400, column: 16, scope: !782)
!797 = !DILocalVariable(name: "e", scope: !782, file: !361, line: 401, type: !663)
!798 = !DILocation(line: 401, column: 10, scope: !782)
!799 = !DILocation(line: 404, column: 8, scope: !800)
!800 = distinct !DILexicalBlock(scope: !782, file: !361, line: 404, column: 6)
!801 = !DILocation(line: 404, column: 17, scope: !800)
!802 = !DILocation(line: 404, column: 5, scope: !800)
!803 = !DILocation(line: 404, column: 10, scope: !804)
!804 = !DILexicalBlockFile(scope: !800, file: !361, discriminator: 1)
!805 = !DILocation(line: 404, column: 20, scope: !804)
!806 = !DILocation(line: 404, column: 25, scope: !804)
!807 = !DILocation(line: 404, column: 5, scope: !804)
!808 = !DILocation(line: 404, column: 9, scope: !809)
!809 = !DILexicalBlockFile(scope: !800, file: !361, discriminator: 2)
!810 = !DILocation(line: 404, column: 19, scope: !809)
!811 = !DILocation(line: 404, column: 24, scope: !809)
!812 = !DILocation(line: 404, column: 6, scope: !809)
!813 = !DILocation(line: 405, column: 3, scope: !800)
!814 = !DILocation(line: 407, column: 14, scope: !815)
!815 = distinct !DILexicalBlock(scope: !782, file: !361, line: 407, column: 2)
!816 = !DILocation(line: 407, column: 13, scope: !815)
!817 = !DILocation(line: 407, column: 12, scope: !815)
!818 = !DILocation(line: 407, column: 12, scope: !819)
!819 = !DILexicalBlockFile(scope: !815, file: !361, discriminator: 1)
!820 = !DILocation(line: 407, column: 13, scope: !821)
!821 = !DILexicalBlockFile(scope: !815, file: !361, discriminator: 2)
!822 = !DILocation(line: 407, column: 23, scope: !821)
!823 = !DILocation(line: 407, column: 12, scope: !821)
!824 = !DILocation(line: 407, column: 12, scope: !825)
!825 = !DILexicalBlockFile(scope: !815, file: !361, discriminator: 3)
!826 = !DILocation(line: 407, column: 9, scope: !825)
!827 = !DILocation(line: 407, column: 7, scope: !825)
!828 = !DILocation(line: 407, column: 30, scope: !829)
!829 = !DILexicalBlockFile(scope: !830, file: !361, discriminator: 4)
!830 = distinct !DILexicalBlock(scope: !815, file: !361, line: 407, column: 2)
!831 = !DILocation(line: 407, column: 2, scope: !829)
!832 = !DILocation(line: 408, column: 14, scope: !833)
!833 = distinct !DILexicalBlock(scope: !830, file: !361, line: 407, column: 52)
!834 = !DILocation(line: 408, column: 18, scope: !833)
!835 = !DILocation(line: 408, column: 12, scope: !833)
!836 = !DILocation(line: 408, column: 10, scope: !833)
!837 = !DILocation(line: 409, column: 8, scope: !838)
!838 = distinct !DILexicalBlock(scope: !833, file: !361, line: 409, column: 7)
!839 = !DILocation(line: 409, column: 12, scope: !838)
!840 = !DILocation(line: 409, column: 21, scope: !838)
!841 = !DILocation(line: 409, column: 29, scope: !838)
!842 = !DILocation(line: 409, column: 18, scope: !838)
!843 = !DILocation(line: 409, column: 46, scope: !838)
!844 = !DILocation(line: 410, column: 7, scope: !838)
!845 = !DILocation(line: 409, column: 7, scope: !846)
!846 = !DILexicalBlockFile(scope: !833, file: !361, discriminator: 1)
!847 = !DILocation(line: 411, column: 31, scope: !838)
!848 = !DILocation(line: 411, column: 39, scope: !838)
!849 = !DILocation(line: 411, column: 44, scope: !838)
!850 = !DILocation(line: 411, column: 47, scope: !838)
!851 = !DILocation(line: 411, column: 4, scope: !838)
!852 = !DILocation(line: 412, column: 2, scope: !833)
!853 = !DILocation(line: 407, column: 41, scope: !854)
!854 = !DILexicalBlockFile(scope: !830, file: !361, discriminator: 5)
!855 = !DILocation(line: 407, column: 45, scope: !854)
!856 = !DILocation(line: 407, column: 38, scope: !854)
!857 = !DILocation(line: 407, column: 2, scope: !854)
!858 = distinct !{!858, !859}
!859 = !DILocation(line: 407, column: 2, scope: !782)
!860 = !DILocation(line: 413, column: 1, scope: !782)
!861 = distinct !DISubprogram(name: "handle_iptable_rule_to_vip", scope: !361, file: !361, line: 365, type: !862, isLocal: true, isDefinition: true, scopeLine: 372, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !364)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !129, !127, !785, !197}
!864 = !DILocalVariable(name: "ipaddr", arg: 1, scope: !861, file: !361, line: 365, type: !129)
!865 = !DILocation(line: 365, column: 42, scope: !861)
!866 = !DILocalVariable(name: "cmd", arg: 2, scope: !861, file: !361, line: 365, type: !127)
!867 = !DILocation(line: 365, column: 54, scope: !861)
!868 = !DILocalVariable(name: "h", arg: 3, scope: !861, file: !361, line: 367, type: !785)
!869 = !DILocation(line: 367, column: 32, scope: !861)
!870 = !DILocalVariable(name: "force", arg: 4, scope: !861, file: !361, line: 371, type: !197)
!871 = !DILocation(line: 371, column: 20, scope: !861)
!872 = !DILocation(line: 373, column: 8, scope: !873)
!873 = distinct !DILexicalBlock(scope: !861, file: !361, line: 373, column: 6)
!874 = !DILocation(line: 373, column: 17, scope: !873)
!875 = !DILocation(line: 373, column: 21, scope: !873)
!876 = !DILocation(line: 373, column: 7, scope: !873)
!877 = !DILocation(line: 373, column: 32, scope: !873)
!878 = !DILocation(line: 373, column: 6, scope: !861)
!879 = !DILocation(line: 374, column: 8, scope: !880)
!880 = distinct !DILexicalBlock(scope: !881, file: !361, line: 374, column: 7)
!881 = distinct !DILexicalBlock(scope: !873, file: !361, line: 373, column: 8)
!882 = !DILocation(line: 374, column: 7, scope: !881)
!883 = !DILocation(line: 375, column: 4, scope: !880)
!884 = !DILocation(line: 376, column: 2, scope: !881)
!885 = !DILocation(line: 377, column: 8, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !361, line: 377, column: 7)
!887 = distinct !DILexicalBlock(scope: !873, file: !361, line: 376, column: 9)
!888 = !DILocation(line: 377, column: 7, scope: !887)
!889 = !DILocation(line: 378, column: 4, scope: !886)
!890 = !DILocation(line: 387, column: 34, scope: !891)
!891 = distinct !DILexicalBlock(scope: !861, file: !361, line: 386, column: 2)
!892 = !DILocation(line: 387, column: 42, scope: !891)
!893 = !DILocation(line: 387, column: 47, scope: !891)
!894 = !DILocation(line: 387, column: 50, scope: !891)
!895 = !DILocation(line: 387, column: 3, scope: !891)
!896 = !DILocation(line: 388, column: 3, scope: !891)
!897 = !DILocation(line: 394, column: 1, scope: !861)
!898 = distinct !DISubprogram(name: "free_ipaddress", scope: !361, file: !361, line: 417, type: !267, isLocal: false, isDefinition: true, scopeLine: 418, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !364)
!899 = !DILocalVariable(name: "if_data", arg: 1, scope: !898, file: !361, line: 417, type: !128)
!900 = !DILocation(line: 417, column: 22, scope: !898)
!901 = !DILocalVariable(name: "ipaddr", scope: !898, file: !361, line: 419, type: !129)
!902 = !DILocation(line: 419, column: 16, scope: !898)
!903 = !DILocation(line: 419, column: 25, scope: !898)
!904 = !DILocation(line: 421, column: 8, scope: !905)
!905 = distinct !DILexicalBlock(scope: !906, file: !361, line: 421, column: 8)
!906 = distinct !DILexicalBlock(scope: !898, file: !361, line: 421, column: 2)
!907 = !DILocation(line: 421, column: 16, scope: !905)
!908 = !DILocation(line: 421, column: 8, scope: !906)
!909 = !DILocation(line: 421, column: 31, scope: !910)
!910 = !DILexicalBlockFile(scope: !911, file: !361, discriminator: 1)
!911 = distinct !DILexicalBlock(scope: !905, file: !361, line: 421, column: 23)
!912 = !DILocation(line: 421, column: 39, scope: !910)
!913 = !DILocation(line: 421, column: 26, scope: !910)
!914 = !DILocation(line: 421, column: 48, scope: !910)
!915 = !DILocation(line: 421, column: 56, scope: !910)
!916 = !DILocation(line: 421, column: 63, scope: !910)
!917 = !DILocation(line: 421, column: 3, scope: !910)
!918 = !DILocation(line: 422, column: 8, scope: !898)
!919 = !DILocation(line: 422, column: 3, scope: !898)
!920 = !DILocation(line: 422, column: 26, scope: !898)
!921 = !DILocation(line: 423, column: 1, scope: !898)
!922 = distinct !DISubprogram(name: "dump_ipaddress", scope: !361, file: !361, line: 476, type: !271, isLocal: false, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !364)
!923 = !DILocalVariable(name: "fp", arg: 1, scope: !922, file: !361, line: 476, type: !273)
!924 = !DILocation(line: 476, column: 22, scope: !922)
!925 = !DILocalVariable(name: "if_data", arg: 2, scope: !922, file: !361, line: 476, type: !128)
!926 = !DILocation(line: 476, column: 32, scope: !922)
!927 = !DILocalVariable(name: "ipaddr", scope: !922, file: !361, line: 478, type: !129)
!928 = !DILocation(line: 478, column: 16, scope: !922)
!929 = !DILocation(line: 478, column: 25, scope: !922)
!930 = !DILocalVariable(name: "buf", scope: !922, file: !361, line: 479, type: !439)
!931 = !DILocation(line: 479, column: 7, scope: !922)
!932 = !DILocation(line: 481, column: 19, scope: !922)
!933 = !DILocation(line: 481, column: 27, scope: !922)
!934 = !DILocation(line: 481, column: 2, scope: !922)
!935 = !DILocation(line: 483, column: 13, scope: !922)
!936 = !DILocation(line: 483, column: 28, scope: !922)
!937 = !DILocation(line: 483, column: 2, scope: !922)
!938 = !DILocation(line: 484, column: 1, scope: !922)
!939 = distinct !DISubprogram(name: "format_ipaddress", scope: !361, file: !361, line: 426, type: !940, isLocal: true, isDefinition: true, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !364)
!940 = !DISubroutineType(types: !941)
!941 = !{null, !129, !281, !210}
!942 = !DILocalVariable(name: "ipaddr", arg: 1, scope: !939, file: !361, line: 426, type: !129)
!943 = !DILocation(line: 426, column: 32, scope: !939)
!944 = !DILocalVariable(name: "buf", arg: 2, scope: !939, file: !361, line: 426, type: !281)
!945 = !DILocation(line: 426, column: 46, scope: !939)
!946 = !DILocalVariable(name: "buf_len", arg: 3, scope: !939, file: !361, line: 426, type: !210)
!947 = !DILocation(line: 426, column: 58, scope: !939)
!948 = !DILocalVariable(name: "peer", scope: !939, file: !361, line: 428, type: !365)
!949 = !DILocation(line: 428, column: 7, scope: !939)
!950 = !DILocalVariable(name: "buf_p", scope: !939, file: !361, line: 429, type: !281)
!951 = !DILocation(line: 429, column: 8, scope: !939)
!952 = !DILocation(line: 429, column: 16, scope: !939)
!953 = !DILocalVariable(name: "buf_end", scope: !939, file: !361, line: 430, type: !281)
!954 = !DILocation(line: 430, column: 8, scope: !939)
!955 = !DILocation(line: 430, column: 18, scope: !939)
!956 = !DILocation(line: 430, column: 24, scope: !939)
!957 = !DILocation(line: 430, column: 22, scope: !939)
!958 = !DILocation(line: 432, column: 20, scope: !939)
!959 = !DILocation(line: 432, column: 27, scope: !939)
!960 = !DILocation(line: 432, column: 37, scope: !939)
!961 = !DILocation(line: 432, column: 35, scope: !939)
!962 = !DILocation(line: 432, column: 68, scope: !939)
!963 = !DILocation(line: 432, column: 50, scope: !939)
!964 = !DILocation(line: 432, column: 11, scope: !965)
!965 = !DILexicalBlockFile(scope: !939, file: !361, discriminator: 1)
!966 = !DILocation(line: 432, column: 8, scope: !939)
!967 = !DILocation(line: 433, column: 7, scope: !968)
!968 = distinct !DILexicalBlock(scope: !939, file: !361, line: 433, column: 6)
!969 = !DILocation(line: 433, column: 15, scope: !968)
!970 = !DILocation(line: 433, column: 6, scope: !939)
!971 = !DILocation(line: 434, column: 21, scope: !968)
!972 = !DILocation(line: 434, column: 28, scope: !968)
!973 = !DILocation(line: 434, column: 38, scope: !968)
!974 = !DILocation(line: 434, column: 36, scope: !968)
!975 = !DILocation(line: 434, column: 52, scope: !968)
!976 = !DILocation(line: 434, column: 60, scope: !968)
!977 = !DILocation(line: 434, column: 64, scope: !968)
!978 = !DILocation(line: 434, column: 12, scope: !968)
!979 = !DILocation(line: 434, column: 9, scope: !968)
!980 = !DILocation(line: 434, column: 3, scope: !968)
!981 = !DILocation(line: 435, column: 9, scope: !982)
!982 = distinct !DILexicalBlock(scope: !939, file: !361, line: 435, column: 6)
!983 = !DILocation(line: 435, column: 18, scope: !982)
!984 = !DILocation(line: 435, column: 22, scope: !982)
!985 = !DILocation(line: 435, column: 8, scope: !982)
!986 = !DILocation(line: 435, column: 33, scope: !982)
!987 = !DILocation(line: 435, column: 11, scope: !988)
!988 = !DILexicalBlockFile(scope: !982, file: !361, discriminator: 1)
!989 = !DILocation(line: 435, column: 19, scope: !988)
!990 = !DILocation(line: 435, column: 21, scope: !988)
!991 = !DILocation(line: 435, column: 25, scope: !988)
!992 = !DILocation(line: 435, column: 33, scope: !988)
!993 = !DILocation(line: 435, column: 6, scope: !988)
!994 = !DILocation(line: 436, column: 21, scope: !995)
!995 = distinct !DILexicalBlock(scope: !982, file: !361, line: 435, column: 41)
!996 = !DILocation(line: 436, column: 28, scope: !995)
!997 = !DILocation(line: 436, column: 38, scope: !995)
!998 = !DILocation(line: 436, column: 36, scope: !995)
!999 = !DILocation(line: 437, column: 16, scope: !995)
!1000 = !DILocation(line: 437, column: 24, scope: !995)
!1001 = !DILocation(line: 437, column: 26, scope: !995)
!1002 = !DILocation(line: 437, column: 30, scope: !995)
!1003 = !DILocation(line: 437, column: 38, scope: !995)
!1004 = !DILocation(line: 437, column: 5, scope: !995)
!1005 = !DILocation(line: 436, column: 12, scope: !995)
!1006 = !DILocation(line: 436, column: 9, scope: !995)
!1007 = !DILocation(line: 438, column: 2, scope: !995)
!1008 = !DILocation(line: 439, column: 20, scope: !939)
!1009 = !DILocation(line: 439, column: 27, scope: !939)
!1010 = !DILocation(line: 439, column: 37, scope: !939)
!1011 = !DILocation(line: 439, column: 35, scope: !939)
!1012 = !DILocation(line: 440, column: 10, scope: !939)
!1013 = !DILocation(line: 440, column: 18, scope: !939)
!1014 = !DILocation(line: 440, column: 24, scope: !939)
!1015 = !DILocation(line: 440, column: 8, scope: !939)
!1016 = !DILocation(line: 441, column: 27, scope: !939)
!1017 = !DILocation(line: 441, column: 35, scope: !939)
!1018 = !DILocation(line: 441, column: 39, scope: !939)
!1019 = !DILocation(line: 441, column: 8, scope: !939)
!1020 = !DILocation(line: 439, column: 11, scope: !939)
!1021 = !DILocation(line: 439, column: 8, scope: !939)
!1022 = !DILocation(line: 442, column: 6, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !939, file: !361, line: 442, column: 6)
!1024 = !DILocation(line: 442, column: 14, scope: !1023)
!1025 = !DILocation(line: 442, column: 6, scope: !939)
!1026 = !DILocation(line: 443, column: 21, scope: !1023)
!1027 = !DILocation(line: 443, column: 28, scope: !1023)
!1028 = !DILocation(line: 443, column: 38, scope: !1023)
!1029 = !DILocation(line: 443, column: 36, scope: !1023)
!1030 = !DILocation(line: 443, column: 58, scope: !1023)
!1031 = !DILocation(line: 443, column: 66, scope: !1023)
!1032 = !DILocation(line: 443, column: 12, scope: !1023)
!1033 = !DILocation(line: 443, column: 9, scope: !1023)
!1034 = !DILocation(line: 443, column: 3, scope: !1023)
!1035 = !DILocation(line: 444, column: 6, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !939, file: !361, line: 444, column: 6)
!1037 = !DILocation(line: 444, column: 14, scope: !1036)
!1038 = !DILocation(line: 444, column: 6, scope: !939)
!1039 = !DILocation(line: 445, column: 13, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1036, file: !361, line: 444, column: 25)
!1041 = !DILocation(line: 445, column: 21, scope: !1040)
!1042 = !DILocation(line: 445, column: 25, scope: !1040)
!1043 = !DILocation(line: 445, column: 38, scope: !1040)
!1044 = !DILocation(line: 445, column: 46, scope: !1040)
!1045 = !DILocation(line: 445, column: 37, scope: !1040)
!1046 = !DILocation(line: 445, column: 52, scope: !1040)
!1047 = !DILocation(line: 445, column: 3, scope: !1040)
!1048 = !DILocation(line: 446, column: 21, scope: !1040)
!1049 = !DILocation(line: 446, column: 28, scope: !1040)
!1050 = !DILocation(line: 446, column: 38, scope: !1040)
!1051 = !DILocation(line: 446, column: 36, scope: !1040)
!1052 = !DILocation(line: 446, column: 61, scope: !1040)
!1053 = !DILocation(line: 446, column: 68, scope: !1040)
!1054 = !DILocation(line: 446, column: 76, scope: !1040)
!1055 = !DILocation(line: 446, column: 80, scope: !1040)
!1056 = !DILocation(line: 446, column: 12, scope: !1040)
!1057 = !DILocation(line: 446, column: 9, scope: !1040)
!1058 = !DILocation(line: 447, column: 2, scope: !1040)
!1059 = !DILocation(line: 449, column: 6, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !939, file: !361, line: 449, column: 6)
!1061 = !DILocation(line: 449, column: 14, scope: !1060)
!1062 = !DILocation(line: 449, column: 20, scope: !1060)
!1063 = !DILocation(line: 449, column: 6, scope: !939)
!1064 = !DILocation(line: 450, column: 21, scope: !1060)
!1065 = !DILocation(line: 450, column: 28, scope: !1060)
!1066 = !DILocation(line: 450, column: 38, scope: !1060)
!1067 = !DILocation(line: 450, column: 36, scope: !1060)
!1068 = !DILocation(line: 450, column: 12, scope: !1060)
!1069 = !DILocation(line: 450, column: 9, scope: !1060)
!1070 = !DILocation(line: 450, column: 3, scope: !1060)
!1071 = !DILocation(line: 453, column: 6, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !939, file: !361, line: 453, column: 6)
!1073 = !DILocation(line: 453, column: 14, scope: !1072)
!1074 = !DILocation(line: 453, column: 23, scope: !1072)
!1075 = !DILocation(line: 453, column: 6, scope: !939)
!1076 = !DILocation(line: 454, column: 21, scope: !1072)
!1077 = !DILocation(line: 454, column: 28, scope: !1072)
!1078 = !DILocation(line: 454, column: 38, scope: !1072)
!1079 = !DILocation(line: 454, column: 36, scope: !1072)
!1080 = !DILocation(line: 454, column: 12, scope: !1072)
!1081 = !DILocation(line: 454, column: 9, scope: !1072)
!1082 = !DILocation(line: 454, column: 3, scope: !1072)
!1083 = !DILocation(line: 457, column: 6, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !939, file: !361, line: 457, column: 6)
!1085 = !DILocation(line: 457, column: 14, scope: !1084)
!1086 = !DILocation(line: 457, column: 20, scope: !1084)
!1087 = !DILocation(line: 457, column: 6, scope: !939)
!1088 = !DILocation(line: 458, column: 21, scope: !1084)
!1089 = !DILocation(line: 458, column: 28, scope: !1084)
!1090 = !DILocation(line: 458, column: 38, scope: !1084)
!1091 = !DILocation(line: 458, column: 36, scope: !1084)
!1092 = !DILocation(line: 458, column: 12, scope: !1084)
!1093 = !DILocation(line: 458, column: 9, scope: !1084)
!1094 = !DILocation(line: 458, column: 3, scope: !1084)
!1095 = !DILocation(line: 461, column: 6, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !939, file: !361, line: 461, column: 6)
!1097 = !DILocation(line: 461, column: 14, scope: !1096)
!1098 = !DILocation(line: 461, column: 20, scope: !1096)
!1099 = !DILocation(line: 461, column: 6, scope: !939)
!1100 = !DILocation(line: 462, column: 21, scope: !1096)
!1101 = !DILocation(line: 462, column: 28, scope: !1096)
!1102 = !DILocation(line: 462, column: 38, scope: !1096)
!1103 = !DILocation(line: 462, column: 36, scope: !1096)
!1104 = !DILocation(line: 462, column: 12, scope: !1096)
!1105 = !DILocation(line: 462, column: 9, scope: !1096)
!1106 = !DILocation(line: 462, column: 3, scope: !1096)
!1107 = !DILocation(line: 465, column: 6, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !939, file: !361, line: 465, column: 6)
!1109 = !DILocation(line: 465, column: 14, scope: !1108)
!1110 = !DILocation(line: 465, column: 20, scope: !1108)
!1111 = !DILocation(line: 465, column: 6, scope: !939)
!1112 = !DILocation(line: 466, column: 21, scope: !1108)
!1113 = !DILocation(line: 466, column: 28, scope: !1108)
!1114 = !DILocation(line: 466, column: 38, scope: !1108)
!1115 = !DILocation(line: 466, column: 36, scope: !1108)
!1116 = !DILocation(line: 466, column: 12, scope: !1108)
!1117 = !DILocation(line: 466, column: 9, scope: !1108)
!1118 = !DILocation(line: 466, column: 3, scope: !1108)
!1119 = !DILocation(line: 468, column: 6, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !939, file: !361, line: 468, column: 6)
!1121 = !DILocation(line: 468, column: 14, scope: !1120)
!1122 = !DILocation(line: 468, column: 6, scope: !939)
!1123 = !DILocation(line: 469, column: 21, scope: !1120)
!1124 = !DILocation(line: 469, column: 28, scope: !1120)
!1125 = !DILocation(line: 469, column: 38, scope: !1120)
!1126 = !DILocation(line: 469, column: 36, scope: !1120)
!1127 = !DILocation(line: 469, column: 12, scope: !1120)
!1128 = !DILocation(line: 469, column: 9, scope: !1120)
!1129 = !DILocation(line: 469, column: 3, scope: !1120)
!1130 = !DILocation(line: 471, column: 6, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !939, file: !361, line: 471, column: 6)
!1132 = !DILocation(line: 471, column: 14, scope: !1131)
!1133 = !DILocation(line: 471, column: 6, scope: !939)
!1134 = !DILocation(line: 472, column: 21, scope: !1131)
!1135 = !DILocation(line: 472, column: 28, scope: !1131)
!1136 = !DILocation(line: 472, column: 38, scope: !1131)
!1137 = !DILocation(line: 472, column: 36, scope: !1131)
!1138 = !DILocation(line: 472, column: 64, scope: !1131)
!1139 = !DILocation(line: 472, column: 72, scope: !1131)
!1140 = !DILocation(line: 472, column: 85, scope: !1131)
!1141 = !DILocation(line: 472, column: 12, scope: !1131)
!1142 = !DILocation(line: 472, column: 9, scope: !1131)
!1143 = !DILocation(line: 472, column: 3, scope: !1131)
!1144 = !DILocation(line: 473, column: 1, scope: !939)
!1145 = distinct !DISubprogram(name: "parse_ipaddress", scope: !361, file: !361, line: 487, type: !1146, isLocal: false, isDefinition: true, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !364)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!129, !129, !281, !127}
!1148 = !DILocalVariable(name: "ip_address", arg: 1, scope: !1145, file: !361, line: 487, type: !129)
!1149 = !DILocation(line: 487, column: 31, scope: !1145)
!1150 = !DILocalVariable(name: "str", arg: 2, scope: !1145, file: !361, line: 487, type: !281)
!1151 = !DILocation(line: 487, column: 49, scope: !1145)
!1152 = !DILocalVariable(name: "allow_default", arg: 3, scope: !1145, file: !361, line: 487, type: !127)
!1153 = !DILocation(line: 487, column: 58, scope: !1145)
!1154 = !DILocalVariable(name: "new", scope: !1145, file: !361, line: 489, type: !129)
!1155 = !DILocation(line: 489, column: 16, scope: !1145)
!1156 = !DILocation(line: 489, column: 22, scope: !1145)
!1157 = !DILocalVariable(name: "addr", scope: !1145, file: !361, line: 490, type: !128)
!1158 = !DILocation(line: 490, column: 8, scope: !1145)
!1159 = !DILocalVariable(name: "p", scope: !1145, file: !361, line: 491, type: !281)
!1160 = !DILocation(line: 491, column: 8, scope: !1145)
!1161 = !DILocalVariable(name: "prefixlen", scope: !1145, file: !361, line: 492, type: !146)
!1162 = !DILocation(line: 492, column: 11, scope: !1145)
!1163 = !DILocation(line: 495, column: 7, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1145, file: !361, line: 495, column: 6)
!1165 = !DILocation(line: 495, column: 6, scope: !1145)
!1166 = !DILocation(line: 496, column: 27, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1164, file: !361, line: 495, column: 12)
!1168 = !DILocation(line: 496, column: 9, scope: !1167)
!1169 = !DILocation(line: 496, column: 7, scope: !1167)
!1170 = !DILocation(line: 497, column: 2, scope: !1167)
!1171 = !DILocation(line: 500, column: 6, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1145, file: !361, line: 500, column: 6)
!1173 = !DILocation(line: 500, column: 6, scope: !1145)
!1174 = !DILocation(line: 501, column: 15, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !361, line: 501, column: 7)
!1176 = distinct !DILexicalBlock(scope: !1172, file: !361, line: 500, column: 21)
!1177 = !DILocation(line: 501, column: 8, scope: !1175)
!1178 = !DILocation(line: 501, column: 7, scope: !1176)
!1179 = !DILocation(line: 502, column: 4, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1175, file: !361, line: 501, column: 32)
!1181 = !DILocation(line: 502, column: 9, scope: !1180)
!1182 = !DILocation(line: 502, column: 13, scope: !1180)
!1183 = !DILocation(line: 502, column: 24, scope: !1180)
!1184 = !DILocation(line: 503, column: 11, scope: !1180)
!1185 = !DILocation(line: 503, column: 4, scope: !1180)
!1186 = !DILocation(line: 504, column: 22, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1175, file: !361, line: 504, column: 14)
!1188 = !DILocation(line: 504, column: 15, scope: !1187)
!1189 = !DILocation(line: 504, column: 14, scope: !1175)
!1190 = !DILocation(line: 505, column: 4, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1187, file: !361, line: 504, column: 40)
!1192 = !DILocation(line: 505, column: 9, scope: !1191)
!1193 = !DILocation(line: 505, column: 13, scope: !1191)
!1194 = !DILocation(line: 505, column: 24, scope: !1191)
!1195 = !DILocation(line: 506, column: 11, scope: !1191)
!1196 = !DILocation(line: 506, column: 4, scope: !1191)
!1197 = !DILocation(line: 508, column: 2, scope: !1176)
!1198 = !DILocation(line: 511, column: 32, scope: !1145)
!1199 = !DILocation(line: 511, column: 25, scope: !1145)
!1200 = !DILocation(line: 511, column: 24, scope: !1145)
!1201 = !DILocation(line: 511, column: 2, scope: !1145)
!1202 = !DILocation(line: 511, column: 7, scope: !1145)
!1203 = !DILocation(line: 511, column: 11, scope: !1145)
!1204 = !DILocation(line: 511, column: 22, scope: !1145)
!1205 = !DILocation(line: 512, column: 30, scope: !1145)
!1206 = !DILocation(line: 512, column: 36, scope: !1145)
!1207 = !DILocation(line: 512, column: 40, scope: !1145)
!1208 = !DILocation(line: 512, column: 29, scope: !1145)
!1209 = !DILocation(line: 512, column: 51, scope: !1145)
!1210 = !DILocation(line: 512, column: 27, scope: !1145)
!1211 = !DILocation(line: 512, column: 2, scope: !1145)
!1212 = !DILocation(line: 512, column: 7, scope: !1145)
!1213 = !DILocation(line: 512, column: 11, scope: !1145)
!1214 = !DILocation(line: 512, column: 25, scope: !1145)
!1215 = !DILocation(line: 513, column: 13, scope: !1145)
!1216 = !DILocation(line: 513, column: 6, scope: !1145)
!1217 = !DILocation(line: 513, column: 4, scope: !1145)
!1218 = !DILocation(line: 514, column: 6, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1145, file: !361, line: 514, column: 6)
!1220 = !DILocation(line: 514, column: 6, scope: !1145)
!1221 = !DILocation(line: 515, column: 4, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1219, file: !361, line: 514, column: 9)
!1223 = !DILocation(line: 515, column: 6, scope: !1222)
!1224 = !DILocation(line: 516, column: 22, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1222, file: !361, line: 516, column: 7)
!1226 = !DILocation(line: 516, column: 24, scope: !1225)
!1227 = !DILocation(line: 516, column: 44, scope: !1225)
!1228 = !DILocation(line: 516, column: 49, scope: !1225)
!1229 = !DILocation(line: 516, column: 53, scope: !1225)
!1230 = !DILocation(line: 516, column: 8, scope: !1225)
!1231 = !DILocation(line: 516, column: 7, scope: !1222)
!1232 = !DILocation(line: 517, column: 105, scope: !1225)
!1233 = !DILocation(line: 517, column: 107, scope: !1225)
!1234 = !DILocation(line: 517, column: 112, scope: !1225)
!1235 = !DILocation(line: 517, column: 117, scope: !1225)
!1236 = !DILocation(line: 517, column: 122, scope: !1225)
!1237 = !DILocation(line: 517, column: 126, scope: !1225)
!1238 = !DILocation(line: 517, column: 4, scope: !1225)
!1239 = !DILocation(line: 519, column: 29, scope: !1225)
!1240 = !DILocation(line: 519, column: 4, scope: !1225)
!1241 = !DILocation(line: 519, column: 9, scope: !1225)
!1242 = !DILocation(line: 519, column: 13, scope: !1225)
!1243 = !DILocation(line: 519, column: 27, scope: !1225)
!1244 = !DILocation(line: 520, column: 2, scope: !1222)
!1245 = !DILocation(line: 522, column: 12, scope: !1145)
!1246 = !DILocation(line: 522, column: 18, scope: !1145)
!1247 = !DILocation(line: 522, column: 22, scope: !1145)
!1248 = !DILocation(line: 522, column: 11, scope: !1145)
!1249 = !DILocation(line: 522, column: 33, scope: !1145)
!1250 = !DILocation(line: 522, column: 9, scope: !1145)
!1251 = !DILocation(line: 522, column: 24, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1145, file: !361, discriminator: 1)
!1253 = !DILocation(line: 522, column: 29, scope: !1252)
!1254 = !DILocation(line: 522, column: 31, scope: !1252)
!1255 = !DILocation(line: 522, column: 14, scope: !1252)
!1256 = !DILocation(line: 522, column: 9, scope: !1252)
!1257 = !DILocation(line: 523, column: 21, scope: !1145)
!1258 = !DILocation(line: 523, column: 26, scope: !1145)
!1259 = !DILocation(line: 523, column: 28, scope: !1145)
!1260 = !DILocation(line: 523, column: 32, scope: !1145)
!1261 = !DILocation(line: 523, column: 11, scope: !1145)
!1262 = !DILocation(line: 522, column: 9, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1145, file: !361, discriminator: 2)
!1264 = !DILocation(line: 522, column: 9, scope: !1265)
!1265 = !DILexicalBlockFile(scope: !1145, file: !361, discriminator: 3)
!1266 = !DILocation(line: 522, column: 7, scope: !1265)
!1267 = !DILocation(line: 524, column: 18, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1145, file: !361, line: 524, column: 6)
!1269 = !DILocation(line: 524, column: 24, scope: !1268)
!1270 = !DILocation(line: 524, column: 28, scope: !1268)
!1271 = !DILocation(line: 524, column: 17, scope: !1268)
!1272 = !DILocation(line: 524, column: 40, scope: !1268)
!1273 = !DILocation(line: 524, column: 45, scope: !1268)
!1274 = !DILocation(line: 524, column: 7, scope: !1268)
!1275 = !DILocation(line: 524, column: 6, scope: !1145)
!1276 = !DILocation(line: 525, column: 90, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1268, file: !361, line: 524, column: 52)
!1278 = !DILocation(line: 525, column: 3, scope: !1277)
!1279 = !DILocation(line: 526, column: 8, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1277, file: !361, line: 526, column: 7)
!1281 = !DILocation(line: 526, column: 7, scope: !1277)
!1282 = !DILocation(line: 527, column: 10, scope: !1280)
!1283 = !DILocation(line: 527, column: 5, scope: !1280)
!1284 = !DILocation(line: 527, column: 22, scope: !1280)
!1285 = !DILocation(line: 527, column: 4, scope: !1280)
!1286 = !DILocation(line: 528, column: 7, scope: !1277)
!1287 = !DILocation(line: 529, column: 2, scope: !1277)
!1288 = !DILocation(line: 532, column: 6, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1145, file: !361, line: 532, column: 6)
!1290 = !DILocation(line: 532, column: 6, scope: !1145)
!1291 = !DILocation(line: 533, column: 4, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1289, file: !361, line: 532, column: 9)
!1293 = !DILocation(line: 533, column: 6, scope: !1292)
!1294 = !DILocation(line: 534, column: 2, scope: !1292)
!1295 = !DILocation(line: 536, column: 9, scope: !1145)
!1296 = !DILocation(line: 536, column: 2, scope: !1145)
!1297 = !DILocation(line: 537, column: 1, scope: !1145)
!1298 = distinct !DISubprogram(name: "alloc_ipaddress", scope: !361, file: !361, line: 539, type: !1299, isLocal: false, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !364)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{null, !251, !345, !184, !197}
!1301 = !DILocalVariable(name: "ip_list", arg: 1, scope: !1298, file: !361, line: 539, type: !251)
!1302 = !DILocation(line: 539, column: 22, scope: !1298)
!1303 = !DILocalVariable(name: "strvec", arg: 2, scope: !1298, file: !361, line: 539, type: !345)
!1304 = !DILocation(line: 539, column: 41, scope: !1298)
!1305 = !DILocalVariable(name: "ifp", arg: 3, scope: !1298, file: !361, line: 539, type: !184)
!1306 = !DILocation(line: 539, column: 62, scope: !1298)
!1307 = !DILocalVariable(name: "allow_track_group", arg: 4, scope: !1298, file: !361, line: 539, type: !197)
!1308 = !DILocation(line: 539, column: 71, scope: !1298)
!1309 = !DILocalVariable(name: "new", scope: !1298, file: !361, line: 552, type: !129)
!1310 = !DILocation(line: 552, column: 16, scope: !1298)
!1311 = !DILocalVariable(name: "ifp_local", scope: !1298, file: !361, line: 553, type: !184)
!1312 = !DILocation(line: 553, column: 15, scope: !1298)
!1313 = !DILocalVariable(name: "str", scope: !1298, file: !361, line: 554, type: !281)
!1314 = !DILocation(line: 554, column: 8, scope: !1298)
!1315 = !DILocalVariable(name: "i", scope: !1298, file: !361, line: 555, type: !146)
!1316 = !DILocation(line: 555, column: 15, scope: !1298)
!1317 = !DILocalVariable(name: "addr_idx", scope: !1298, file: !361, line: 555, type: !146)
!1318 = !DILocation(line: 555, column: 22, scope: !1298)
!1319 = !DILocalVariable(name: "scope", scope: !1298, file: !361, line: 556, type: !170)
!1320 = !DILocation(line: 556, column: 10, scope: !1298)
!1321 = !DILocalVariable(name: "param_avail", scope: !1298, file: !361, line: 557, type: !197)
!1322 = !DILocation(line: 557, column: 6, scope: !1298)
!1323 = !DILocalVariable(name: "param_missing", scope: !1298, file: !361, line: 558, type: !197)
!1324 = !DILocation(line: 558, column: 6, scope: !1298)
!1325 = !DILocalVariable(name: "param", scope: !1298, file: !361, line: 559, type: !281)
!1326 = !DILocation(line: 559, column: 8, scope: !1298)
!1327 = !DILocalVariable(name: "peer", scope: !1298, file: !361, line: 560, type: !130)
!1328 = !DILocation(line: 560, column: 15, scope: !1298)
!1329 = !DILocalVariable(name: "brd_len", scope: !1298, file: !361, line: 561, type: !127)
!1330 = !DILocation(line: 561, column: 6, scope: !1298)
!1331 = !DILocalVariable(name: "mask", scope: !1298, file: !361, line: 562, type: !159)
!1332 = !DILocation(line: 562, column: 11, scope: !1298)
!1333 = !DILocalVariable(name: "have_broadcast", scope: !1298, file: !361, line: 563, type: !197)
!1334 = !DILocation(line: 563, column: 6, scope: !1298)
!1335 = !DILocation(line: 565, column: 26, scope: !1298)
!1336 = !DILocation(line: 565, column: 8, scope: !1298)
!1337 = !DILocation(line: 565, column: 6, scope: !1298)
!1338 = !DILocation(line: 568, column: 23, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1298, file: !361, line: 568, column: 6)
!1340 = !DILocation(line: 568, column: 40, scope: !1339)
!1341 = !DILocation(line: 568, column: 28, scope: !1339)
!1342 = !DILocation(line: 568, column: 7, scope: !1343)
!1343 = !DILexicalBlockFile(scope: !1339, file: !361, discriminator: 1)
!1344 = !DILocation(line: 568, column: 7, scope: !1339)
!1345 = !DILocation(line: 568, column: 6, scope: !1298)
!1346 = !DILocation(line: 569, column: 9, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1339, file: !361, line: 568, column: 58)
!1348 = !DILocation(line: 569, column: 4, scope: !1347)
!1349 = !DILocation(line: 569, column: 21, scope: !1347)
!1350 = !DILocation(line: 570, column: 3, scope: !1347)
!1351 = !DILocation(line: 573, column: 14, scope: !1298)
!1352 = !DILocation(line: 573, column: 11, scope: !1298)
!1353 = !DILocation(line: 576, column: 2, scope: !1298)
!1354 = !DILocation(line: 576, column: 9, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !1298, file: !361, discriminator: 1)
!1356 = !DILocation(line: 576, column: 15, scope: !1355)
!1357 = !DILocation(line: 576, column: 24, scope: !1355)
!1358 = !DILocation(line: 576, column: 11, scope: !1355)
!1359 = !DILocation(line: 576, column: 2, scope: !1355)
!1360 = !DILocation(line: 577, column: 21, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1298, file: !361, line: 576, column: 36)
!1362 = !DILocation(line: 577, column: 29, scope: !1361)
!1363 = !DILocation(line: 577, column: 9, scope: !1361)
!1364 = !DILocation(line: 577, column: 7, scope: !1361)
!1365 = !DILocation(line: 580, column: 20, scope: !1361)
!1366 = !DILocation(line: 580, column: 29, scope: !1361)
!1367 = !DILocation(line: 580, column: 43, scope: !1361)
!1368 = !DILocation(line: 580, column: 44, scope: !1361)
!1369 = !DILocation(line: 580, column: 40, scope: !1361)
!1370 = !DILocation(line: 580, column: 15, scope: !1361)
!1371 = !DILocation(line: 582, column: 15, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1361, file: !361, line: 582, column: 7)
!1373 = !DILocation(line: 582, column: 8, scope: !1372)
!1374 = !DILocation(line: 582, column: 7, scope: !1361)
!1375 = !DILocation(line: 583, column: 9, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !361, line: 583, column: 8)
!1377 = distinct !DILexicalBlock(scope: !1372, file: !361, line: 582, column: 28)
!1378 = !DILocation(line: 583, column: 8, scope: !1377)
!1379 = !DILocation(line: 584, column: 19, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1376, file: !361, line: 583, column: 22)
!1381 = !DILocation(line: 585, column: 5, scope: !1380)
!1382 = !DILocation(line: 588, column: 8, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1377, file: !361, line: 588, column: 8)
!1384 = !DILocation(line: 588, column: 13, scope: !1383)
!1385 = !DILocation(line: 588, column: 8, scope: !1377)
!1386 = !DILocation(line: 589, column: 131, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1383, file: !361, line: 588, column: 18)
!1388 = !DILocation(line: 589, column: 138, scope: !1387)
!1389 = !DILocation(line: 589, column: 119, scope: !1387)
!1390 = !DILocation(line: 589, column: 5, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1387, file: !361, discriminator: 1)
!1392 = !DILocation(line: 590, column: 11, scope: !1387)
!1393 = !DILocation(line: 590, column: 6, scope: !1387)
!1394 = !DILocation(line: 590, column: 23, scope: !1387)
!1395 = !DILocation(line: 591, column: 5, scope: !1387)
!1396 = !DILocation(line: 593, column: 51, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1377, file: !361, line: 593, column: 8)
!1398 = !DILocation(line: 593, column: 59, scope: !1397)
!1399 = !DILocation(line: 593, column: 39, scope: !1397)
!1400 = !DILocation(line: 593, column: 22, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !1397, file: !361, discriminator: 1)
!1402 = !DILocation(line: 593, column: 20, scope: !1397)
!1403 = !DILocation(line: 593, column: 8, scope: !1377)
!1404 = !DILocation(line: 595, column: 27, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1397, file: !361, line: 593, column: 89)
!1406 = !DILocation(line: 595, column: 34, scope: !1405)
!1407 = !DILocation(line: 595, column: 15, scope: !1405)
!1408 = !DILocation(line: 595, column: 59, scope: !1405)
!1409 = !DILocation(line: 595, column: 66, scope: !1405)
!1410 = !DILocation(line: 595, column: 47, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !1405, file: !361, discriminator: 1)
!1412 = !DILocation(line: 594, column: 5, scope: !1405)
!1413 = !DILocation(line: 596, column: 11, scope: !1405)
!1414 = !DILocation(line: 596, column: 6, scope: !1405)
!1415 = !DILocation(line: 596, column: 23, scope: !1405)
!1416 = !DILocation(line: 597, column: 5, scope: !1405)
!1417 = !DILocation(line: 599, column: 15, scope: !1377)
!1418 = !DILocation(line: 599, column: 4, scope: !1377)
!1419 = !DILocation(line: 599, column: 9, scope: !1377)
!1420 = !DILocation(line: 599, column: 13, scope: !1377)
!1421 = !DILocation(line: 600, column: 3, scope: !1377)
!1422 = !DILocation(line: 600, column: 22, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1424, file: !361, discriminator: 1)
!1424 = distinct !DILexicalBlock(scope: !1372, file: !361, line: 600, column: 14)
!1425 = !DILocation(line: 600, column: 15, scope: !1423)
!1426 = !DILocation(line: 600, column: 14, scope: !1423)
!1427 = !DILocation(line: 601, column: 9, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !361, line: 601, column: 8)
!1429 = distinct !DILexicalBlock(scope: !1424, file: !361, line: 600, column: 37)
!1430 = !DILocation(line: 601, column: 8, scope: !1429)
!1431 = !DILocation(line: 602, column: 19, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1428, file: !361, line: 601, column: 22)
!1433 = !DILocation(line: 603, column: 5, scope: !1432)
!1434 = !DILocation(line: 606, column: 41, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1429, file: !361, line: 606, column: 8)
!1436 = !DILocation(line: 606, column: 49, scope: !1435)
!1437 = !DILocation(line: 606, column: 29, scope: !1435)
!1438 = !DILocation(line: 606, column: 9, scope: !1439)
!1439 = !DILexicalBlockFile(scope: !1435, file: !361, discriminator: 1)
!1440 = !DILocation(line: 606, column: 8, scope: !1429)
!1441 = !DILocation(line: 607, column: 117, scope: !1435)
!1442 = !DILocation(line: 607, column: 124, scope: !1435)
!1443 = !DILocation(line: 607, column: 105, scope: !1435)
!1444 = !DILocation(line: 607, column: 149, scope: !1435)
!1445 = !DILocation(line: 607, column: 156, scope: !1435)
!1446 = !DILocation(line: 607, column: 137, scope: !1439)
!1447 = !DILocation(line: 607, column: 5, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !1435, file: !361, discriminator: 2)
!1449 = !DILocation(line: 607, column: 5, scope: !1435)
!1450 = !DILocation(line: 609, column: 26, scope: !1435)
!1451 = !DILocation(line: 609, column: 5, scope: !1435)
!1452 = !DILocation(line: 609, column: 10, scope: !1435)
!1453 = !DILocation(line: 609, column: 14, scope: !1435)
!1454 = !DILocation(line: 609, column: 24, scope: !1435)
!1455 = !DILocation(line: 610, column: 3, scope: !1429)
!1456 = !DILocation(line: 610, column: 22, scope: !1457)
!1457 = !DILexicalBlockFile(scope: !1458, file: !361, discriminator: 1)
!1458 = distinct !DILexicalBlock(scope: !1424, file: !361, line: 610, column: 14)
!1459 = !DILocation(line: 610, column: 15, scope: !1457)
!1460 = !DILocation(line: 610, column: 40, scope: !1457)
!1461 = !DILocation(line: 610, column: 51, scope: !1462)
!1462 = !DILexicalBlockFile(scope: !1458, file: !361, discriminator: 2)
!1463 = !DILocation(line: 610, column: 44, scope: !1462)
!1464 = !DILocation(line: 610, column: 14, scope: !1462)
!1465 = !DILocation(line: 611, column: 9, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !361, line: 611, column: 8)
!1467 = distinct !DILexicalBlock(scope: !1458, file: !361, line: 610, column: 64)
!1468 = !DILocation(line: 611, column: 8, scope: !1467)
!1469 = !DILocation(line: 612, column: 19, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1466, file: !361, line: 611, column: 22)
!1471 = !DILocation(line: 613, column: 5, scope: !1470)
!1472 = !DILocation(line: 616, column: 10, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1467, file: !361, line: 616, column: 8)
!1474 = !DILocation(line: 616, column: 16, scope: !1473)
!1475 = !DILocation(line: 616, column: 20, scope: !1473)
!1476 = !DILocation(line: 616, column: 9, scope: !1473)
!1477 = !DILocation(line: 616, column: 31, scope: !1473)
!1478 = !DILocation(line: 616, column: 8, scope: !1467)
!1479 = !DILocation(line: 619, column: 33, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1473, file: !361, line: 616, column: 10)
!1481 = !DILocation(line: 619, column: 40, scope: !1480)
!1482 = !DILocation(line: 619, column: 21, scope: !1480)
!1483 = !DILocation(line: 619, column: 65, scope: !1480)
!1484 = !DILocation(line: 619, column: 72, scope: !1480)
!1485 = !DILocation(line: 619, column: 53, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !1480, file: !361, discriminator: 1)
!1487 = !DILocation(line: 617, column: 5, scope: !1480)
!1488 = !DILocation(line: 620, column: 11, scope: !1480)
!1489 = !DILocation(line: 620, column: 6, scope: !1480)
!1490 = !DILocation(line: 620, column: 23, scope: !1480)
!1491 = !DILocation(line: 621, column: 5, scope: !1480)
!1492 = !DILocation(line: 624, column: 19, scope: !1467)
!1493 = !DILocation(line: 626, column: 24, scope: !1467)
!1494 = !DILocation(line: 626, column: 32, scope: !1467)
!1495 = !DILocation(line: 626, column: 12, scope: !1467)
!1496 = !DILocation(line: 626, column: 10, scope: !1467)
!1497 = !DILocation(line: 627, column: 16, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1467, file: !361, line: 627, column: 8)
!1499 = !DILocation(line: 627, column: 9, scope: !1498)
!1500 = !DILocation(line: 627, column: 8, scope: !1467)
!1501 = !DILocation(line: 628, column: 13, scope: !1498)
!1502 = !DILocation(line: 628, column: 5, scope: !1498)
!1503 = !DILocation(line: 629, column: 21, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1498, file: !361, line: 629, column: 13)
!1505 = !DILocation(line: 629, column: 14, scope: !1504)
!1506 = !DILocation(line: 629, column: 13, scope: !1498)
!1507 = !DILocation(line: 630, column: 13, scope: !1504)
!1508 = !DILocation(line: 630, column: 5, scope: !1504)
!1509 = !DILocation(line: 631, column: 32, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1504, file: !361, line: 631, column: 13)
!1511 = !DILocation(line: 631, column: 40, scope: !1510)
!1512 = !DILocation(line: 631, column: 45, scope: !1510)
!1513 = !DILocation(line: 631, column: 47, scope: !1510)
!1514 = !DILocation(line: 631, column: 51, scope: !1510)
!1515 = !DILocation(line: 631, column: 39, scope: !1510)
!1516 = !DILocation(line: 631, column: 14, scope: !1510)
!1517 = !DILocation(line: 631, column: 13, scope: !1504)
!1518 = !DILocation(line: 633, column: 52, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1510, file: !361, line: 631, column: 61)
!1520 = !DILocation(line: 633, column: 59, scope: !1519)
!1521 = !DILocation(line: 633, column: 40, scope: !1519)
!1522 = !DILocation(line: 632, column: 5, scope: !1519)
!1523 = !DILocation(line: 634, column: 11, scope: !1519)
!1524 = !DILocation(line: 634, column: 6, scope: !1519)
!1525 = !DILocation(line: 634, column: 23, scope: !1519)
!1526 = !DILocation(line: 635, column: 5, scope: !1519)
!1527 = !DILocation(line: 637, column: 3, scope: !1467)
!1528 = !DILocation(line: 637, column: 22, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !1530, file: !361, discriminator: 1)
!1530 = distinct !DILexicalBlock(scope: !1458, file: !361, line: 637, column: 14)
!1531 = !DILocation(line: 637, column: 15, scope: !1529)
!1532 = !DILocation(line: 637, column: 14, scope: !1529)
!1533 = !DILocation(line: 638, column: 9, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !361, line: 638, column: 8)
!1535 = distinct !DILexicalBlock(scope: !1530, file: !361, line: 637, column: 37)
!1536 = !DILocation(line: 638, column: 8, scope: !1535)
!1537 = !DILocation(line: 639, column: 19, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1534, file: !361, line: 638, column: 22)
!1539 = !DILocation(line: 640, column: 5, scope: !1538)
!1540 = !DILocation(line: 643, column: 18, scope: !1535)
!1541 = !DILocation(line: 643, column: 4, scope: !1535)
!1542 = !DILocation(line: 643, column: 9, scope: !1535)
!1543 = !DILocation(line: 643, column: 15, scope: !1535)
!1544 = !DILocation(line: 644, column: 12, scope: !1535)
!1545 = !DILocation(line: 644, column: 17, scope: !1535)
!1546 = !DILocation(line: 644, column: 36, scope: !1535)
!1547 = !DILocation(line: 644, column: 44, scope: !1535)
!1548 = !DILocation(line: 644, column: 24, scope: !1535)
!1549 = !DILocation(line: 644, column: 4, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1535, file: !361, discriminator: 1)
!1551 = !DILocation(line: 645, column: 3, scope: !1535)
!1552 = !DILocation(line: 645, column: 22, scope: !1553)
!1553 = !DILexicalBlockFile(scope: !1554, file: !361, discriminator: 1)
!1554 = distinct !DILexicalBlock(scope: !1530, file: !361, line: 645, column: 14)
!1555 = !DILocation(line: 645, column: 15, scope: !1553)
!1556 = !DILocation(line: 645, column: 14, scope: !1553)
!1557 = !DILocation(line: 646, column: 9, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !361, line: 646, column: 8)
!1559 = distinct !DILexicalBlock(scope: !1554, file: !361, line: 645, column: 36)
!1560 = !DILocation(line: 646, column: 8, scope: !1559)
!1561 = !DILocation(line: 647, column: 19, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1558, file: !361, line: 646, column: 22)
!1563 = !DILocation(line: 648, column: 5, scope: !1562)
!1564 = !DILocation(line: 651, column: 5, scope: !1559)
!1565 = !DILocation(line: 652, column: 8, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1559, file: !361, line: 652, column: 8)
!1567 = !DILocation(line: 652, column: 13, scope: !1566)
!1568 = !DILocation(line: 652, column: 8, scope: !1559)
!1569 = !DILocation(line: 653, column: 120, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1566, file: !361, line: 652, column: 24)
!1571 = !DILocation(line: 653, column: 127, scope: !1570)
!1572 = !DILocation(line: 653, column: 108, scope: !1570)
!1573 = !DILocation(line: 653, column: 5, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !1570, file: !361, discriminator: 1)
!1575 = !DILocation(line: 654, column: 5, scope: !1570)
!1576 = distinct !{!1576, !1353}
!1577 = !DILocation(line: 657, column: 44, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1559, file: !361, line: 657, column: 8)
!1579 = !DILocation(line: 657, column: 51, scope: !1578)
!1580 = !DILocation(line: 657, column: 32, scope: !1578)
!1581 = !DILocation(line: 657, column: 9, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !1578, file: !361, discriminator: 1)
!1583 = !DILocation(line: 657, column: 9, scope: !1578)
!1584 = !DILocation(line: 657, column: 8, scope: !1559)
!1585 = !DILocation(line: 658, column: 94, scope: !1578)
!1586 = !DILocation(line: 658, column: 101, scope: !1578)
!1587 = !DILocation(line: 658, column: 82, scope: !1578)
!1588 = !DILocation(line: 658, column: 5, scope: !1582)
!1589 = !DILocation(line: 658, column: 5, scope: !1578)
!1590 = !DILocation(line: 659, column: 18, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1578, file: !361, line: 659, column: 13)
!1592 = !DILocation(line: 659, column: 22, scope: !1591)
!1593 = !DILocation(line: 659, column: 13, scope: !1591)
!1594 = !DILocation(line: 659, column: 36, scope: !1591)
!1595 = !DILocation(line: 659, column: 41, scope: !1591)
!1596 = !DILocation(line: 659, column: 45, scope: !1591)
!1597 = !DILocation(line: 659, column: 33, scope: !1591)
!1598 = !DILocation(line: 659, column: 13, scope: !1578)
!1599 = !DILocation(line: 660, column: 116, scope: !1591)
!1600 = !DILocation(line: 660, column: 123, scope: !1591)
!1601 = !DILocation(line: 660, column: 104, scope: !1591)
!1602 = !DILocation(line: 660, column: 5, scope: !1603)
!1603 = !DILexicalBlockFile(scope: !1591, file: !361, discriminator: 1)
!1604 = !DILocation(line: 660, column: 5, scope: !1591)
!1605 = !DILocation(line: 662, column: 10, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !361, line: 662, column: 9)
!1607 = distinct !DILexicalBlock(scope: !1591, file: !361, line: 661, column: 9)
!1608 = !DILocation(line: 662, column: 15, scope: !1606)
!1609 = !DILocation(line: 662, column: 19, scope: !1606)
!1610 = !DILocation(line: 662, column: 30, scope: !1606)
!1611 = !DILocation(line: 662, column: 41, scope: !1606)
!1612 = !DILocation(line: 662, column: 44, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1606, file: !361, discriminator: 1)
!1614 = !DILocation(line: 662, column: 49, scope: !1613)
!1615 = !DILocation(line: 662, column: 53, scope: !1613)
!1616 = !DILocation(line: 662, column: 67, scope: !1613)
!1617 = !DILocation(line: 662, column: 75, scope: !1613)
!1618 = !DILocation(line: 663, column: 10, scope: !1606)
!1619 = !DILocation(line: 663, column: 15, scope: !1606)
!1620 = !DILocation(line: 663, column: 19, scope: !1606)
!1621 = !DILocation(line: 663, column: 30, scope: !1606)
!1622 = !DILocation(line: 663, column: 40, scope: !1606)
!1623 = !DILocation(line: 663, column: 43, scope: !1613)
!1624 = !DILocation(line: 663, column: 48, scope: !1613)
!1625 = !DILocation(line: 663, column: 52, scope: !1613)
!1626 = !DILocation(line: 663, column: 66, scope: !1613)
!1627 = !DILocation(line: 662, column: 9, scope: !1628)
!1628 = !DILexicalBlockFile(scope: !1607, file: !361, discriminator: 2)
!1629 = !DILocation(line: 664, column: 6, scope: !1606)
!1630 = !DILocation(line: 665, column: 5, scope: !1607)
!1631 = !DILocation(line: 665, column: 10, scope: !1607)
!1632 = !DILocation(line: 665, column: 20, scope: !1607)
!1633 = !DILocation(line: 666, column: 35, scope: !1607)
!1634 = !DILocation(line: 666, column: 39, scope: !1607)
!1635 = !DILocation(line: 666, column: 5, scope: !1607)
!1636 = !DILocation(line: 666, column: 10, scope: !1607)
!1637 = !DILocation(line: 666, column: 14, scope: !1607)
!1638 = !DILocation(line: 666, column: 28, scope: !1607)
!1639 = !DILocation(line: 667, column: 9, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1607, file: !361, line: 667, column: 9)
!1641 = !DILocation(line: 667, column: 14, scope: !1640)
!1642 = !DILocation(line: 667, column: 18, scope: !1640)
!1643 = !DILocation(line: 667, column: 29, scope: !1640)
!1644 = !DILocation(line: 667, column: 9, scope: !1607)
!1645 = !DILocation(line: 668, column: 6, scope: !1640)
!1646 = !DILocation(line: 668, column: 11, scope: !1640)
!1647 = !DILocation(line: 668, column: 16, scope: !1640)
!1648 = !DILocation(line: 668, column: 33, scope: !1640)
!1649 = !DILocation(line: 668, column: 35, scope: !1640)
!1650 = !DILocation(line: 670, column: 6, scope: !1640)
!1651 = !DILocation(line: 670, column: 11, scope: !1640)
!1652 = !DILocation(line: 670, column: 16, scope: !1640)
!1653 = !DILocation(line: 670, column: 32, scope: !1640)
!1654 = !DILocation(line: 670, column: 34, scope: !1640)
!1655 = !DILocation(line: 670, column: 38, scope: !1640)
!1656 = !DILocation(line: 673, column: 3, scope: !1559)
!1657 = !DILocation(line: 673, column: 22, scope: !1658)
!1658 = !DILexicalBlockFile(scope: !1659, file: !361, discriminator: 1)
!1659 = distinct !DILexicalBlock(scope: !1554, file: !361, line: 673, column: 14)
!1660 = !DILocation(line: 673, column: 15, scope: !1658)
!1661 = !DILocation(line: 673, column: 14, scope: !1658)
!1662 = !DILocation(line: 674, column: 4, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1659, file: !361, line: 673, column: 36)
!1664 = !DILocation(line: 674, column: 9, scope: !1663)
!1665 = !DILocation(line: 674, column: 15, scope: !1663)
!1666 = !DILocation(line: 675, column: 4, scope: !1663)
!1667 = !DILocation(line: 675, column: 9, scope: !1663)
!1668 = !DILocation(line: 675, column: 18, scope: !1663)
!1669 = !DILocation(line: 678, column: 3, scope: !1663)
!1670 = !DILocation(line: 678, column: 22, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1672, file: !361, discriminator: 1)
!1672 = distinct !DILexicalBlock(scope: !1659, file: !361, line: 678, column: 14)
!1673 = !DILocation(line: 678, column: 15, scope: !1671)
!1674 = !DILocation(line: 678, column: 14, scope: !1671)
!1675 = !DILocation(line: 679, column: 4, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1672, file: !361, line: 678, column: 38)
!1677 = !DILocation(line: 679, column: 9, scope: !1676)
!1678 = !DILocation(line: 679, column: 18, scope: !1676)
!1679 = !DILocation(line: 682, column: 3, scope: !1676)
!1680 = !DILocation(line: 682, column: 22, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !1682, file: !361, discriminator: 1)
!1682 = distinct !DILexicalBlock(scope: !1672, file: !361, line: 682, column: 14)
!1683 = !DILocation(line: 682, column: 15, scope: !1681)
!1684 = !DILocation(line: 682, column: 14, scope: !1681)
!1685 = !DILocation(line: 683, column: 4, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1682, file: !361, line: 682, column: 42)
!1687 = !DILocation(line: 683, column: 9, scope: !1686)
!1688 = !DILocation(line: 683, column: 15, scope: !1686)
!1689 = !DILocation(line: 684, column: 4, scope: !1686)
!1690 = !DILocation(line: 684, column: 9, scope: !1686)
!1691 = !DILocation(line: 684, column: 18, scope: !1686)
!1692 = !DILocation(line: 687, column: 3, scope: !1686)
!1693 = !DILocation(line: 687, column: 22, scope: !1694)
!1694 = !DILexicalBlockFile(scope: !1695, file: !361, discriminator: 1)
!1695 = distinct !DILexicalBlock(scope: !1682, file: !361, line: 687, column: 14)
!1696 = !DILocation(line: 687, column: 15, scope: !1694)
!1697 = !DILocation(line: 687, column: 14, scope: !1694)
!1698 = !DILocation(line: 688, column: 4, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1695, file: !361, line: 687, column: 45)
!1700 = !DILocation(line: 688, column: 9, scope: !1699)
!1701 = !DILocation(line: 688, column: 15, scope: !1699)
!1702 = !DILocation(line: 689, column: 4, scope: !1699)
!1703 = !DILocation(line: 689, column: 9, scope: !1699)
!1704 = !DILocation(line: 689, column: 18, scope: !1699)
!1705 = !DILocation(line: 692, column: 3, scope: !1699)
!1706 = !DILocation(line: 692, column: 22, scope: !1707)
!1707 = !DILexicalBlockFile(scope: !1708, file: !361, discriminator: 1)
!1708 = distinct !DILexicalBlock(scope: !1695, file: !361, line: 692, column: 14)
!1709 = !DILocation(line: 692, column: 15, scope: !1707)
!1710 = !DILocation(line: 692, column: 14, scope: !1707)
!1711 = !DILocation(line: 693, column: 4, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1708, file: !361, line: 692, column: 40)
!1713 = !DILocation(line: 693, column: 9, scope: !1712)
!1714 = !DILocation(line: 693, column: 15, scope: !1712)
!1715 = !DILocation(line: 694, column: 4, scope: !1712)
!1716 = !DILocation(line: 694, column: 9, scope: !1712)
!1717 = !DILocation(line: 694, column: 18, scope: !1712)
!1718 = !DILocation(line: 696, column: 3, scope: !1712)
!1719 = !DILocation(line: 696, column: 22, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !1721, file: !361, discriminator: 1)
!1721 = distinct !DILexicalBlock(scope: !1708, file: !361, line: 696, column: 14)
!1722 = !DILocation(line: 696, column: 15, scope: !1720)
!1723 = !DILocation(line: 696, column: 14, scope: !1720)
!1724 = !DILocation(line: 697, column: 4, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1721, file: !361, line: 696, column: 40)
!1726 = !DILocation(line: 697, column: 9, scope: !1725)
!1727 = !DILocation(line: 697, column: 20, scope: !1725)
!1728 = !DILocation(line: 698, column: 3, scope: !1725)
!1729 = !DILocation(line: 698, column: 14, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !1731, file: !361, discriminator: 1)
!1731 = distinct !DILexicalBlock(scope: !1721, file: !361, line: 698, column: 14)
!1732 = !DILocation(line: 698, column: 32, scope: !1730)
!1733 = !DILocation(line: 698, column: 43, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1731, file: !361, discriminator: 2)
!1735 = !DILocation(line: 698, column: 36, scope: !1734)
!1736 = !DILocation(line: 698, column: 14, scope: !1734)
!1737 = !DILocation(line: 699, column: 9, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !361, line: 699, column: 8)
!1739 = distinct !DILexicalBlock(scope: !1731, file: !361, line: 698, column: 64)
!1740 = !DILocation(line: 699, column: 8, scope: !1739)
!1741 = !DILocation(line: 700, column: 19, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1738, file: !361, line: 699, column: 22)
!1743 = !DILocation(line: 701, column: 5, scope: !1742)
!1744 = !DILocation(line: 703, column: 5, scope: !1739)
!1745 = !DILocation(line: 704, column: 8, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1739, file: !361, line: 704, column: 8)
!1747 = !DILocation(line: 704, column: 13, scope: !1746)
!1748 = !DILocation(line: 704, column: 8, scope: !1739)
!1749 = !DILocation(line: 705, column: 100, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1746, file: !361, line: 704, column: 26)
!1751 = !DILocation(line: 705, column: 107, scope: !1750)
!1752 = !DILocation(line: 705, column: 88, scope: !1750)
!1753 = !DILocation(line: 705, column: 5, scope: !1754)
!1754 = !DILexicalBlockFile(scope: !1750, file: !361, discriminator: 1)
!1755 = !DILocation(line: 706, column: 5, scope: !1750)
!1756 = !DILocation(line: 708, column: 58, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1739, file: !361, line: 708, column: 8)
!1758 = !DILocation(line: 708, column: 66, scope: !1757)
!1759 = !DILocation(line: 708, column: 46, scope: !1757)
!1760 = !DILocation(line: 708, column: 29, scope: !1761)
!1761 = !DILexicalBlockFile(scope: !1757, file: !361, discriminator: 1)
!1762 = !DILocation(line: 708, column: 10, scope: !1757)
!1763 = !DILocation(line: 708, column: 15, scope: !1757)
!1764 = !DILocation(line: 708, column: 27, scope: !1757)
!1765 = !DILocation(line: 708, column: 8, scope: !1739)
!1766 = !DILocation(line: 709, column: 123, scope: !1757)
!1767 = !DILocation(line: 709, column: 130, scope: !1757)
!1768 = !DILocation(line: 709, column: 111, scope: !1757)
!1769 = !DILocation(line: 709, column: 33, scope: !1761)
!1770 = !DILocation(line: 709, column: 33, scope: !1757)
!1771 = !DILocation(line: 710, column: 3, scope: !1739)
!1772 = !DILocation(line: 711, column: 108, scope: !1731)
!1773 = !DILocation(line: 711, column: 4, scope: !1731)
!1774 = !DILocation(line: 712, column: 4, scope: !1361)
!1775 = !DILocation(line: 576, column: 2, scope: !1776)
!1776 = !DILexicalBlockFile(scope: !1298, file: !361, discriminator: 2)
!1777 = !DILocation(line: 716, column: 6, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1298, file: !361, line: 716, column: 6)
!1779 = !DILocation(line: 716, column: 6, scope: !1298)
!1780 = !DILocation(line: 717, column: 81, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1778, file: !361, line: 716, column: 21)
!1782 = !DILocation(line: 717, column: 106, scope: !1781)
!1783 = !DILocation(line: 717, column: 113, scope: !1781)
!1784 = !DILocation(line: 717, column: 94, scope: !1781)
!1785 = !DILocation(line: 717, column: 3, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !1781, file: !361, discriminator: 1)
!1787 = !DILocation(line: 718, column: 8, scope: !1781)
!1788 = !DILocation(line: 718, column: 3, scope: !1781)
!1789 = !DILocation(line: 719, column: 3, scope: !1781)
!1790 = !DILocation(line: 723, column: 6, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1298, file: !361, line: 723, column: 6)
!1792 = !DILocation(line: 723, column: 21, scope: !1791)
!1793 = !DILocation(line: 723, column: 24, scope: !1794)
!1794 = !DILexicalBlockFile(scope: !1791, file: !361, discriminator: 1)
!1795 = !DILocation(line: 723, column: 29, scope: !1794)
!1796 = !DILocation(line: 723, column: 6, scope: !1794)
!1797 = !DILocation(line: 724, column: 3, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1791, file: !361, line: 723, column: 40)
!1799 = !DILocation(line: 725, column: 3, scope: !1798)
!1800 = !DILocation(line: 725, column: 8, scope: !1798)
!1801 = !DILocation(line: 725, column: 10, scope: !1798)
!1802 = !DILocation(line: 725, column: 14, scope: !1798)
!1803 = !DILocation(line: 725, column: 22, scope: !1798)
!1804 = !DILocation(line: 725, column: 29, scope: !1798)
!1805 = !DILocation(line: 726, column: 2, scope: !1798)
!1806 = !DILocation(line: 727, column: 11, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1791, file: !361, line: 727, column: 11)
!1808 = !DILocation(line: 727, column: 19, scope: !1807)
!1809 = !DILocation(line: 727, column: 23, scope: !1807)
!1810 = !DILocation(line: 727, column: 26, scope: !1811)
!1811 = !DILexicalBlockFile(scope: !1807, file: !361, discriminator: 1)
!1812 = !DILocation(line: 727, column: 31, scope: !1811)
!1813 = !DILocation(line: 727, column: 35, scope: !1811)
!1814 = !DILocation(line: 727, column: 49, scope: !1811)
!1815 = !DILocation(line: 727, column: 11, scope: !1811)
!1816 = !DILocation(line: 728, column: 3, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1807, file: !361, line: 727, column: 56)
!1818 = !DILocation(line: 728, column: 8, scope: !1817)
!1819 = !DILocation(line: 728, column: 10, scope: !1817)
!1820 = !DILocation(line: 728, column: 14, scope: !1817)
!1821 = !DILocation(line: 728, column: 25, scope: !1817)
!1822 = !DILocation(line: 728, column: 30, scope: !1817)
!1823 = !DILocation(line: 728, column: 24, scope: !1817)
!1824 = !DILocation(line: 728, column: 43, scope: !1825)
!1825 = !DILexicalBlockFile(scope: !1817, file: !361, discriminator: 1)
!1826 = !DILocation(line: 728, column: 48, scope: !1825)
!1827 = !DILocation(line: 728, column: 53, scope: !1825)
!1828 = !DILocation(line: 728, column: 24, scope: !1825)
!1829 = !DILocation(line: 728, column: 64, scope: !1830)
!1830 = !DILexicalBlockFile(scope: !1817, file: !361, discriminator: 2)
!1831 = !DILocation(line: 728, column: 69, scope: !1830)
!1832 = !DILocation(line: 728, column: 71, scope: !1830)
!1833 = !DILocation(line: 728, column: 75, scope: !1830)
!1834 = !DILocation(line: 728, column: 24, scope: !1830)
!1835 = !DILocation(line: 729, column: 25, scope: !1817)
!1836 = !DILocation(line: 729, column: 30, scope: !1817)
!1837 = !DILocation(line: 729, column: 34, scope: !1817)
!1838 = !DILocation(line: 729, column: 22, scope: !1817)
!1839 = !DILocation(line: 729, column: 8, scope: !1817)
!1840 = !DILocation(line: 730, column: 16, scope: !1817)
!1841 = !DILocation(line: 730, column: 10, scope: !1817)
!1842 = !DILocation(line: 730, column: 8, scope: !1817)
!1843 = !DILocation(line: 731, column: 7, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1817, file: !361, line: 731, column: 7)
!1845 = !DILocation(line: 731, column: 15, scope: !1844)
!1846 = !DILocation(line: 731, column: 7, scope: !1817)
!1847 = !DILocation(line: 732, column: 33, scope: !1844)
!1848 = !DILocation(line: 732, column: 4, scope: !1844)
!1849 = !DILocation(line: 732, column: 9, scope: !1844)
!1850 = !DILocation(line: 732, column: 11, scope: !1844)
!1851 = !DILocation(line: 732, column: 15, scope: !1844)
!1852 = !DILocation(line: 732, column: 23, scope: !1844)
!1853 = !DILocation(line: 732, column: 30, scope: !1844)
!1854 = !DILocation(line: 734, column: 34, scope: !1844)
!1855 = !DILocation(line: 734, column: 33, scope: !1844)
!1856 = !DILocation(line: 734, column: 4, scope: !1844)
!1857 = !DILocation(line: 734, column: 9, scope: !1844)
!1858 = !DILocation(line: 734, column: 11, scope: !1844)
!1859 = !DILocation(line: 734, column: 15, scope: !1844)
!1860 = !DILocation(line: 734, column: 23, scope: !1844)
!1861 = !DILocation(line: 734, column: 30, scope: !1844)
!1862 = !DILocation(line: 735, column: 2, scope: !1817)
!1863 = !DILocation(line: 736, column: 11, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1807, file: !361, line: 736, column: 11)
!1865 = !DILocation(line: 736, column: 19, scope: !1864)
!1866 = !DILocation(line: 736, column: 11, scope: !1807)
!1867 = !DILocation(line: 737, column: 96, scope: !1864)
!1868 = !DILocation(line: 737, column: 101, scope: !1864)
!1869 = !DILocation(line: 737, column: 105, scope: !1864)
!1870 = !DILocation(line: 737, column: 3, scope: !1864)
!1871 = !DILocation(line: 739, column: 7, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1298, file: !361, line: 739, column: 6)
!1873 = !DILocation(line: 739, column: 11, scope: !1872)
!1874 = !DILocation(line: 739, column: 15, scope: !1875)
!1875 = !DILexicalBlockFile(scope: !1872, file: !361, discriminator: 1)
!1876 = !DILocation(line: 739, column: 20, scope: !1875)
!1877 = !DILocation(line: 739, column: 6, scope: !1875)
!1878 = !DILocation(line: 740, column: 8, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !361, line: 740, column: 7)
!1880 = distinct !DILexicalBlock(scope: !1872, file: !361, line: 739, column: 25)
!1881 = !DILocation(line: 740, column: 21, scope: !1879)
!1882 = !DILocation(line: 740, column: 7, scope: !1880)
!1883 = !DILocation(line: 741, column: 31, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1879, file: !361, line: 740, column: 34)
!1885 = !DILocation(line: 741, column: 4, scope: !1884)
!1886 = !DILocation(line: 741, column: 17, scope: !1884)
!1887 = !DILocation(line: 741, column: 29, scope: !1884)
!1888 = !DILocation(line: 742, column: 9, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1884, file: !361, line: 742, column: 8)
!1890 = !DILocation(line: 742, column: 22, scope: !1889)
!1891 = !DILocation(line: 742, column: 8, scope: !1884)
!1892 = !DILocation(line: 744, column: 36, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1889, file: !361, line: 742, column: 35)
!1894 = !DILocation(line: 744, column: 43, scope: !1893)
!1895 = !DILocation(line: 744, column: 24, scope: !1893)
!1896 = !DILocation(line: 743, column: 5, scope: !1893)
!1897 = !DILocation(line: 745, column: 11, scope: !1893)
!1898 = !DILocation(line: 745, column: 6, scope: !1893)
!1899 = !DILocation(line: 745, column: 23, scope: !1893)
!1900 = !DILocation(line: 746, column: 5, scope: !1893)
!1901 = !DILocation(line: 748, column: 3, scope: !1884)
!1902 = !DILocation(line: 749, column: 14, scope: !1880)
!1903 = !DILocation(line: 749, column: 27, scope: !1880)
!1904 = !DILocation(line: 749, column: 3, scope: !1880)
!1905 = !DILocation(line: 749, column: 8, scope: !1880)
!1906 = !DILocation(line: 749, column: 12, scope: !1880)
!1907 = !DILocation(line: 750, column: 2, scope: !1880)
!1908 = !DILocation(line: 752, column: 6, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1298, file: !361, line: 752, column: 6)
!1910 = !DILocation(line: 752, column: 11, scope: !1909)
!1911 = !DILocation(line: 752, column: 15, scope: !1909)
!1912 = !DILocation(line: 752, column: 26, scope: !1909)
!1913 = !DILocation(line: 752, column: 6, scope: !1298)
!1914 = !DILocation(line: 753, column: 7, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !361, line: 753, column: 7)
!1916 = distinct !DILexicalBlock(scope: !1909, file: !361, line: 752, column: 38)
!1917 = !DILocation(line: 753, column: 12, scope: !1915)
!1918 = !DILocation(line: 753, column: 16, scope: !1915)
!1919 = !DILocation(line: 753, column: 7, scope: !1916)
!1920 = !DILocation(line: 754, column: 131, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1915, file: !361, line: 753, column: 27)
!1922 = !DILocation(line: 754, column: 138, scope: !1921)
!1923 = !DILocation(line: 754, column: 119, scope: !1921)
!1924 = !DILocation(line: 754, column: 4, scope: !1925)
!1925 = !DILexicalBlockFile(scope: !1921, file: !361, discriminator: 1)
!1926 = !DILocation(line: 755, column: 4, scope: !1921)
!1927 = !DILocation(line: 755, column: 9, scope: !1921)
!1928 = !DILocation(line: 755, column: 13, scope: !1921)
!1929 = !DILocation(line: 755, column: 23, scope: !1921)
!1930 = !DILocation(line: 756, column: 3, scope: !1921)
!1931 = !DILocation(line: 757, column: 7, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1916, file: !361, line: 757, column: 7)
!1933 = !DILocation(line: 757, column: 12, scope: !1932)
!1934 = !DILocation(line: 757, column: 7, scope: !1916)
!1935 = !DILocation(line: 758, column: 131, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1932, file: !361, line: 757, column: 19)
!1937 = !DILocation(line: 758, column: 138, scope: !1936)
!1938 = !DILocation(line: 758, column: 119, scope: !1936)
!1939 = !DILocation(line: 758, column: 4, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !1936, file: !361, discriminator: 1)
!1941 = !DILocation(line: 759, column: 10, scope: !1936)
!1942 = !DILocation(line: 759, column: 15, scope: !1936)
!1943 = !DILocation(line: 759, column: 5, scope: !1936)
!1944 = !DILocation(line: 759, column: 24, scope: !1936)
!1945 = !DILocation(line: 759, column: 29, scope: !1936)
!1946 = !DILocation(line: 759, column: 36, scope: !1936)
!1947 = !DILocation(line: 760, column: 4, scope: !1936)
!1948 = !DILocation(line: 760, column: 9, scope: !1936)
!1949 = !DILocation(line: 760, column: 15, scope: !1936)
!1950 = !DILocation(line: 761, column: 3, scope: !1936)
!1951 = !DILocation(line: 762, column: 2, scope: !1916)
!1952 = !DILocation(line: 764, column: 6, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1298, file: !361, line: 764, column: 6)
!1954 = !DILocation(line: 764, column: 11, scope: !1953)
!1955 = !DILocation(line: 764, column: 23, scope: !1953)
!1956 = !DILocation(line: 764, column: 27, scope: !1957)
!1957 = !DILexicalBlockFile(scope: !1953, file: !361, discriminator: 1)
!1958 = !DILocation(line: 764, column: 32, scope: !1957)
!1959 = !DILocation(line: 764, column: 6, scope: !1957)
!1960 = !DILocation(line: 765, column: 3, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1953, file: !361, line: 764, column: 37)
!1962 = !DILocation(line: 766, column: 3, scope: !1961)
!1963 = !DILocation(line: 766, column: 8, scope: !1961)
!1964 = !DILocation(line: 766, column: 20, scope: !1961)
!1965 = !DILocation(line: 767, column: 2, scope: !1961)
!1966 = !DILocation(line: 769, column: 11, scope: !1298)
!1967 = !DILocation(line: 769, column: 20, scope: !1298)
!1968 = !DILocation(line: 769, column: 2, scope: !1298)
!1969 = !DILocation(line: 770, column: 1, scope: !1298)
!1970 = !DILocation(line: 770, column: 1, scope: !1355)
!1971 = distinct !DISubprogram(name: "clear_diff_address", scope: !361, file: !361, line: 793, type: !1972, isLocal: false, isDefinition: true, scopeLine: 794, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !364)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{null, !785, !251, !251}
!1974 = !DILocalVariable(name: "h", arg: 1, scope: !1971, file: !361, line: 793, type: !785)
!1975 = !DILocation(line: 793, column: 39, scope: !1971)
!1976 = !DILocalVariable(name: "old", arg: 2, scope: !1971, file: !361, line: 793, type: !251)
!1977 = !DILocation(line: 793, column: 47, scope: !1971)
!1978 = !DILocalVariable(name: "new", arg: 3, scope: !1971, file: !361, line: 793, type: !251)
!1979 = !DILocation(line: 793, column: 57, scope: !1971)
!1980 = !DILocalVariable(name: "ipaddr", scope: !1971, file: !361, line: 795, type: !129)
!1981 = !DILocation(line: 795, column: 16, scope: !1971)
!1982 = !DILocalVariable(name: "e", scope: !1971, file: !361, line: 796, type: !663)
!1983 = !DILocation(line: 796, column: 10, scope: !1971)
!1984 = !DILocalVariable(name: "addr_str", scope: !1971, file: !361, line: 797, type: !365)
!1985 = !DILocation(line: 797, column: 7, scope: !1971)
!1986 = !DILocalVariable(name: "addr", scope: !1971, file: !361, line: 798, type: !128)
!1987 = !DILocation(line: 798, column: 8, scope: !1971)
!1988 = !DILocation(line: 801, column: 8, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1971, file: !361, line: 801, column: 6)
!1990 = !DILocation(line: 801, column: 13, scope: !1989)
!1991 = !DILocation(line: 801, column: 5, scope: !1989)
!1992 = !DILocation(line: 801, column: 10, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !1989, file: !361, discriminator: 1)
!1994 = !DILocation(line: 801, column: 16, scope: !1993)
!1995 = !DILocation(line: 801, column: 21, scope: !1993)
!1996 = !DILocation(line: 801, column: 5, scope: !1993)
!1997 = !DILocation(line: 801, column: 9, scope: !1998)
!1998 = !DILexicalBlockFile(scope: !1989, file: !361, discriminator: 2)
!1999 = !DILocation(line: 801, column: 15, scope: !1998)
!2000 = !DILocation(line: 801, column: 20, scope: !1998)
!2001 = !DILocation(line: 801, column: 6, scope: !1998)
!2002 = !DILocation(line: 802, column: 3, scope: !1989)
!2003 = !DILocation(line: 805, column: 8, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1971, file: !361, line: 805, column: 6)
!2005 = !DILocation(line: 805, column: 13, scope: !2004)
!2006 = !DILocation(line: 805, column: 5, scope: !2004)
!2007 = !DILocation(line: 805, column: 10, scope: !2008)
!2008 = !DILexicalBlockFile(scope: !2004, file: !361, discriminator: 1)
!2009 = !DILocation(line: 805, column: 16, scope: !2008)
!2010 = !DILocation(line: 805, column: 21, scope: !2008)
!2011 = !DILocation(line: 805, column: 5, scope: !2008)
!2012 = !DILocation(line: 805, column: 9, scope: !2013)
!2013 = !DILexicalBlockFile(scope: !2004, file: !361, discriminator: 2)
!2014 = !DILocation(line: 805, column: 15, scope: !2013)
!2015 = !DILocation(line: 805, column: 20, scope: !2013)
!2016 = !DILocation(line: 805, column: 6, scope: !2013)
!2017 = !DILocation(line: 806, column: 3, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2004, file: !361, line: 805, column: 9)
!2019 = !DILocation(line: 807, column: 18, scope: !2018)
!2020 = !DILocation(line: 807, column: 3, scope: !2018)
!2021 = !DILocation(line: 808, column: 33, scope: !2018)
!2022 = !DILocation(line: 808, column: 36, scope: !2018)
!2023 = !DILocation(line: 808, column: 3, scope: !2018)
!2024 = !DILocation(line: 809, column: 3, scope: !2018)
!2025 = !DILocation(line: 812, column: 15, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1971, file: !361, line: 812, column: 2)
!2027 = !DILocation(line: 812, column: 14, scope: !2026)
!2028 = !DILocation(line: 812, column: 25, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !2026, file: !361, discriminator: 1)
!2030 = !DILocation(line: 812, column: 24, scope: !2029)
!2031 = !DILocation(line: 812, column: 23, scope: !2029)
!2032 = !DILocation(line: 812, column: 23, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !2026, file: !361, discriminator: 2)
!2034 = !DILocation(line: 812, column: 4, scope: !2035)
!2035 = !DILexicalBlockFile(scope: !2026, file: !361, discriminator: 3)
!2036 = !DILocation(line: 812, column: 10, scope: !2035)
!2037 = !DILocation(line: 812, column: 23, scope: !2035)
!2038 = !DILocation(line: 812, column: 23, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !2026, file: !361, discriminator: 4)
!2040 = !DILocation(line: 812, column: 14, scope: !2039)
!2041 = !DILocation(line: 812, column: 14, scope: !2042)
!2042 = !DILexicalBlockFile(scope: !2026, file: !361, discriminator: 5)
!2043 = !DILocation(line: 812, column: 14, scope: !2044)
!2044 = !DILexicalBlockFile(scope: !2026, file: !361, discriminator: 6)
!2045 = !DILocation(line: 812, column: 11, scope: !2044)
!2046 = !DILocation(line: 812, column: 7, scope: !2044)
!2047 = !DILocation(line: 812, column: 5, scope: !2048)
!2048 = !DILexicalBlockFile(scope: !2049, file: !361, discriminator: 7)
!2049 = distinct !DILexicalBlock(scope: !2026, file: !361, line: 812, column: 2)
!2050 = !DILocation(line: 812, column: 4, scope: !2048)
!2051 = !DILocation(line: 812, column: 8, scope: !2048)
!2052 = !DILocation(line: 812, column: 25, scope: !2053)
!2053 = !DILexicalBlockFile(scope: !2049, file: !361, discriminator: 8)
!2054 = !DILocation(line: 812, column: 29, scope: !2053)
!2055 = !DILocation(line: 812, column: 23, scope: !2053)
!2056 = !DILocation(line: 812, column: 21, scope: !2053)
!2057 = !DILocation(line: 812, column: 2, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !2026, file: !361, discriminator: 9)
!2059 = !DILocation(line: 813, column: 22, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !361, line: 813, column: 7)
!2061 = distinct !DILexicalBlock(scope: !2049, file: !361, line: 812, column: 59)
!2062 = !DILocation(line: 813, column: 27, scope: !2060)
!2063 = !DILocation(line: 813, column: 8, scope: !2060)
!2064 = !DILocation(line: 813, column: 35, scope: !2060)
!2065 = !DILocation(line: 813, column: 38, scope: !2066)
!2066 = !DILexicalBlockFile(scope: !2060, file: !361, discriminator: 1)
!2067 = !DILocation(line: 813, column: 46, scope: !2066)
!2068 = !DILocation(line: 813, column: 7, scope: !2066)
!2069 = !DILocation(line: 814, column: 14, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2060, file: !361, line: 813, column: 51)
!2071 = !DILocation(line: 814, column: 23, scope: !2070)
!2072 = !DILocation(line: 814, column: 27, scope: !2070)
!2073 = !DILocation(line: 814, column: 13, scope: !2070)
!2074 = !DILocation(line: 814, column: 38, scope: !2070)
!2075 = !DILocation(line: 814, column: 11, scope: !2070)
!2076 = !DILocation(line: 814, column: 26, scope: !2077)
!2077 = !DILexicalBlockFile(scope: !2070, file: !361, discriminator: 1)
!2078 = !DILocation(line: 814, column: 34, scope: !2077)
!2079 = !DILocation(line: 814, column: 36, scope: !2077)
!2080 = !DILocation(line: 814, column: 16, scope: !2077)
!2081 = !DILocation(line: 814, column: 11, scope: !2077)
!2082 = !DILocation(line: 815, column: 19, scope: !2070)
!2083 = !DILocation(line: 815, column: 27, scope: !2070)
!2084 = !DILocation(line: 815, column: 29, scope: !2070)
!2085 = !DILocation(line: 815, column: 33, scope: !2070)
!2086 = !DILocation(line: 815, column: 9, scope: !2070)
!2087 = !DILocation(line: 814, column: 11, scope: !2088)
!2088 = !DILexicalBlockFile(scope: !2070, file: !361, discriminator: 2)
!2089 = !DILocation(line: 814, column: 11, scope: !2090)
!2090 = !DILexicalBlockFile(scope: !2070, file: !361, discriminator: 3)
!2091 = !DILocation(line: 814, column: 9, scope: !2090)
!2092 = !DILocation(line: 816, column: 15, scope: !2070)
!2093 = !DILocation(line: 816, column: 24, scope: !2070)
!2094 = !DILocation(line: 816, column: 28, scope: !2070)
!2095 = !DILocation(line: 816, column: 14, scope: !2070)
!2096 = !DILocation(line: 816, column: 40, scope: !2070)
!2097 = !DILocation(line: 816, column: 46, scope: !2070)
!2098 = !DILocation(line: 816, column: 4, scope: !2070)
!2099 = !DILocation(line: 819, column: 12, scope: !2070)
!2100 = !DILocation(line: 820, column: 12, scope: !2070)
!2101 = !DILocation(line: 820, column: 20, scope: !2070)
!2102 = !DILocation(line: 820, column: 24, scope: !2070)
!2103 = !DILocation(line: 821, column: 12, scope: !2070)
!2104 = !DILocation(line: 821, column: 20, scope: !2070)
!2105 = !DILocation(line: 821, column: 25, scope: !2070)
!2106 = !DILocation(line: 818, column: 4, scope: !2070)
!2107 = !DILocation(line: 822, column: 22, scope: !2070)
!2108 = !DILocation(line: 822, column: 4, scope: !2070)
!2109 = !DILocation(line: 823, column: 8, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2070, file: !361, line: 823, column: 8)
!2111 = !DILocation(line: 823, column: 16, scope: !2110)
!2112 = !DILocation(line: 823, column: 8, scope: !2070)
!2113 = !DILocation(line: 824, column: 32, scope: !2110)
!2114 = !DILocation(line: 824, column: 43, scope: !2110)
!2115 = !DILocation(line: 824, column: 5, scope: !2110)
!2116 = !DILocation(line: 825, column: 3, scope: !2070)
!2117 = !DILocation(line: 826, column: 2, scope: !2061)
!2118 = !DILocation(line: 812, column: 48, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !2049, file: !361, discriminator: 10)
!2120 = !DILocation(line: 812, column: 52, scope: !2119)
!2121 = !DILocation(line: 812, column: 45, scope: !2119)
!2122 = !DILocation(line: 812, column: 2, scope: !2119)
!2123 = distinct !{!2123, !2124}
!2124 = !DILocation(line: 812, column: 2, scope: !1971)
!2125 = !DILocation(line: 827, column: 1, scope: !1971)
!2126 = distinct !DISubprogram(name: "address_exist", scope: !361, file: !361, line: 774, type: !2127, isLocal: true, isDefinition: true, scopeLine: 775, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !364)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!197, !251, !129}
!2129 = !DILocalVariable(name: "l", arg: 1, scope: !2126, file: !361, line: 774, type: !251)
!2130 = !DILocation(line: 774, column: 20, scope: !2126)
!2131 = !DILocalVariable(name: "ipaddress", arg: 2, scope: !2126, file: !361, line: 774, type: !129)
!2132 = !DILocation(line: 774, column: 37, scope: !2126)
!2133 = !DILocalVariable(name: "ipaddr", scope: !2126, file: !361, line: 776, type: !129)
!2134 = !DILocation(line: 776, column: 16, scope: !2126)
!2135 = !DILocalVariable(name: "e", scope: !2126, file: !361, line: 777, type: !663)
!2136 = !DILocation(line: 777, column: 10, scope: !2126)
!2137 = !DILocation(line: 779, column: 15, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2126, file: !361, line: 779, column: 2)
!2139 = !DILocation(line: 779, column: 14, scope: !2138)
!2140 = !DILocation(line: 779, column: 23, scope: !2141)
!2141 = !DILexicalBlockFile(scope: !2138, file: !361, discriminator: 1)
!2142 = !DILocation(line: 779, column: 22, scope: !2141)
!2143 = !DILocation(line: 779, column: 21, scope: !2141)
!2144 = !DILocation(line: 779, column: 21, scope: !2145)
!2145 = !DILexicalBlockFile(scope: !2138, file: !361, discriminator: 2)
!2146 = !DILocation(line: 779, column: 4, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !2138, file: !361, discriminator: 3)
!2148 = !DILocation(line: 779, column: 8, scope: !2147)
!2149 = !DILocation(line: 779, column: 21, scope: !2147)
!2150 = !DILocation(line: 779, column: 21, scope: !2151)
!2151 = !DILexicalBlockFile(scope: !2138, file: !361, discriminator: 4)
!2152 = !DILocation(line: 779, column: 14, scope: !2151)
!2153 = !DILocation(line: 779, column: 14, scope: !2154)
!2154 = !DILexicalBlockFile(scope: !2138, file: !361, discriminator: 5)
!2155 = !DILocation(line: 779, column: 14, scope: !2156)
!2156 = !DILexicalBlockFile(scope: !2138, file: !361, discriminator: 6)
!2157 = !DILocation(line: 779, column: 11, scope: !2156)
!2158 = !DILocation(line: 779, column: 7, scope: !2156)
!2159 = !DILocation(line: 779, column: 5, scope: !2160)
!2160 = !DILexicalBlockFile(scope: !2161, file: !361, discriminator: 7)
!2161 = distinct !DILexicalBlock(scope: !2138, file: !361, line: 779, column: 2)
!2162 = !DILocation(line: 779, column: 4, scope: !2160)
!2163 = !DILocation(line: 779, column: 8, scope: !2160)
!2164 = !DILocation(line: 779, column: 25, scope: !2165)
!2165 = !DILexicalBlockFile(scope: !2161, file: !361, discriminator: 8)
!2166 = !DILocation(line: 779, column: 29, scope: !2165)
!2167 = !DILocation(line: 779, column: 23, scope: !2165)
!2168 = !DILocation(line: 779, column: 21, scope: !2165)
!2169 = !DILocation(line: 779, column: 2, scope: !2170)
!2170 = !DILexicalBlockFile(scope: !2138, file: !361, discriminator: 9)
!2171 = !DILocation(line: 780, column: 10, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !361, line: 780, column: 7)
!2173 = distinct !DILexicalBlock(scope: !2161, file: !361, line: 779, column: 59)
!2174 = !DILocation(line: 780, column: 9, scope: !2172)
!2175 = !DILocation(line: 780, column: 18, scope: !2172)
!2176 = !DILocation(line: 780, column: 23, scope: !2177)
!2177 = !DILexicalBlockFile(scope: !2172, file: !361, discriminator: 1)
!2178 = !DILocation(line: 780, column: 22, scope: !2177)
!2179 = !DILocation(line: 780, column: 7, scope: !2177)
!2180 = !DILocation(line: 780, column: 8, scope: !2181)
!2181 = !DILexicalBlockFile(scope: !2172, file: !361, discriminator: 2)
!2182 = !DILocation(line: 780, column: 10, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2172, file: !361, discriminator: 3)
!2184 = !DILocation(line: 780, column: 8, scope: !2183)
!2185 = !DILocation(line: 780, column: 23, scope: !2183)
!2186 = !DILocation(line: 780, column: 21, scope: !2183)
!2187 = !DILocation(line: 780, column: 18, scope: !2183)
!2188 = !DILocation(line: 780, column: 7, scope: !2183)
!2189 = !DILocation(line: 780, column: 8, scope: !2190)
!2190 = !DILexicalBlockFile(scope: !2172, file: !361, discriminator: 4)
!2191 = !DILocation(line: 780, column: 10, scope: !2192)
!2192 = !DILexicalBlockFile(scope: !2172, file: !361, discriminator: 5)
!2193 = !DILocation(line: 780, column: 19, scope: !2192)
!2194 = !DILocation(line: 780, column: 23, scope: !2192)
!2195 = !DILocation(line: 780, column: 9, scope: !2192)
!2196 = !DILocation(line: 780, column: 38, scope: !2192)
!2197 = !DILocation(line: 780, column: 50, scope: !2192)
!2198 = !DILocation(line: 780, column: 54, scope: !2192)
!2199 = !DILocation(line: 780, column: 37, scope: !2192)
!2200 = !DILocation(line: 780, column: 34, scope: !2192)
!2201 = !DILocation(line: 780, column: 7, scope: !2192)
!2202 = !DILocation(line: 780, column: 9, scope: !2203)
!2203 = !DILexicalBlockFile(scope: !2172, file: !361, discriminator: 6)
!2204 = !DILocation(line: 780, column: 10, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !2172, file: !361, discriminator: 7)
!2206 = !DILocation(line: 780, column: 19, scope: !2205)
!2207 = !DILocation(line: 780, column: 23, scope: !2205)
!2208 = !DILocation(line: 780, column: 9, scope: !2205)
!2209 = !DILocation(line: 780, column: 34, scope: !2205)
!2210 = !DILocation(line: 780, column: 7, scope: !2205)
!2211 = !DILocation(line: 780, column: 12, scope: !2212)
!2212 = !DILexicalBlockFile(scope: !2172, file: !361, discriminator: 8)
!2213 = !DILocation(line: 780, column: 21, scope: !2212)
!2214 = !DILocation(line: 780, column: 23, scope: !2212)
!2215 = !DILocation(line: 780, column: 6, scope: !2212)
!2216 = !DILocation(line: 780, column: 14, scope: !2212)
!2217 = !DILocation(line: 780, column: 11, scope: !2212)
!2218 = !DILocation(line: 780, column: 26, scope: !2212)
!2219 = !DILocation(line: 780, column: 28, scope: !2212)
!2220 = !DILocation(line: 780, column: 13, scope: !2212)
!2221 = !DILocation(line: 780, column: 10, scope: !2212)
!2222 = !DILocation(line: 780, column: 14, scope: !2223)
!2223 = !DILexicalBlockFile(scope: !2172, file: !361, discriminator: 9)
!2224 = !DILocation(line: 780, column: 23, scope: !2223)
!2225 = !DILocation(line: 780, column: 25, scope: !2223)
!2226 = !DILocation(line: 780, column: 6, scope: !2223)
!2227 = !DILocation(line: 780, column: 13, scope: !2223)
!2228 = !DILocation(line: 780, column: 26, scope: !2223)
!2229 = !DILocation(line: 780, column: 28, scope: !2223)
!2230 = !DILocation(line: 780, column: 10, scope: !2223)
!2231 = !DILocation(line: 780, column: 14, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !2172, file: !361, discriminator: 10)
!2233 = !DILocation(line: 780, column: 23, scope: !2232)
!2234 = !DILocation(line: 780, column: 25, scope: !2232)
!2235 = !DILocation(line: 780, column: 6, scope: !2232)
!2236 = !DILocation(line: 780, column: 13, scope: !2232)
!2237 = !DILocation(line: 780, column: 26, scope: !2232)
!2238 = !DILocation(line: 780, column: 28, scope: !2232)
!2239 = !DILocation(line: 780, column: 10, scope: !2232)
!2240 = !DILocation(line: 780, column: 14, scope: !2241)
!2241 = !DILexicalBlockFile(scope: !2172, file: !361, discriminator: 11)
!2242 = !DILocation(line: 780, column: 23, scope: !2241)
!2243 = !DILocation(line: 780, column: 25, scope: !2241)
!2244 = !DILocation(line: 780, column: 6, scope: !2241)
!2245 = !DILocation(line: 780, column: 13, scope: !2241)
!2246 = !DILocation(line: 780, column: 26, scope: !2241)
!2247 = !DILocation(line: 780, column: 28, scope: !2241)
!2248 = !DILocation(line: 780, column: 10, scope: !2241)
!2249 = !DILocation(line: 780, column: 16, scope: !2250)
!2250 = !DILexicalBlockFile(scope: !2172, file: !361, discriminator: 12)
!2251 = !DILocation(line: 780, column: 26, scope: !2250)
!2252 = !DILocation(line: 780, column: 30, scope: !2250)
!2253 = !DILocation(line: 780, column: 14, scope: !2250)
!2254 = !DILocation(line: 780, column: 49, scope: !2250)
!2255 = !DILocation(line: 780, column: 62, scope: !2250)
!2256 = !DILocation(line: 780, column: 66, scope: !2250)
!2257 = !DILocation(line: 780, column: 47, scope: !2250)
!2258 = !DILocation(line: 780, column: 44, scope: !2250)
!2259 = !DILocation(line: 780, column: 80, scope: !2250)
!2260 = !DILocation(line: 780, column: 86, scope: !2261)
!2261 = !DILexicalBlockFile(scope: !2172, file: !361, discriminator: 13)
!2262 = !DILocation(line: 780, column: 96, scope: !2261)
!2263 = !DILocation(line: 780, column: 83, scope: !2261)
!2264 = !DILocation(line: 780, column: 106, scope: !2261)
!2265 = !DILocation(line: 780, column: 119, scope: !2261)
!2266 = !DILocation(line: 780, column: 103, scope: !2261)
!2267 = !DILocation(line: 780, column: 100, scope: !2261)
!2268 = !DILocation(line: 780, column: 123, scope: !2261)
!2269 = !DILocation(line: 780, column: 130, scope: !2270)
!2270 = !DILexicalBlockFile(scope: !2172, file: !361, discriminator: 14)
!2271 = !DILocation(line: 780, column: 140, scope: !2270)
!2272 = !DILocation(line: 780, column: 128, scope: !2270)
!2273 = !DILocation(line: 780, column: 144, scope: !2270)
!2274 = !DILocation(line: 780, column: 149, scope: !2275)
!2275 = !DILexicalBlockFile(scope: !2172, file: !361, discriminator: 15)
!2276 = !DILocation(line: 780, column: 159, scope: !2275)
!2277 = !DILocation(line: 780, column: 164, scope: !2275)
!2278 = !DILocation(line: 780, column: 177, scope: !2275)
!2279 = !DILocation(line: 780, column: 190, scope: !2275)
!2280 = !DILocation(line: 780, column: 195, scope: !2275)
!2281 = !DILocation(line: 780, column: 172, scope: !2275)
!2282 = !DILocation(line: 780, column: 204, scope: !2275)
!2283 = !DILocation(line: 780, column: 209, scope: !2284)
!2284 = !DILexicalBlockFile(scope: !2172, file: !361, discriminator: 16)
!2285 = !DILocation(line: 780, column: 219, scope: !2284)
!2286 = !DILocation(line: 780, column: 223, scope: !2284)
!2287 = !DILocation(line: 780, column: 207, scope: !2284)
!2288 = !DILocation(line: 780, column: 238, scope: !2284)
!2289 = !DILocation(line: 780, column: 251, scope: !2284)
!2290 = !DILocation(line: 780, column: 255, scope: !2284)
!2291 = !DILocation(line: 780, column: 236, scope: !2284)
!2292 = !DILocation(line: 780, column: 233, scope: !2284)
!2293 = !DILocation(line: 780, column: 265, scope: !2284)
!2294 = !DILocation(line: 780, column: 283, scope: !2295)
!2295 = !DILexicalBlockFile(scope: !2172, file: !361, discriminator: 17)
!2296 = !DILocation(line: 780, column: 293, scope: !2295)
!2297 = !DILocation(line: 780, column: 302, scope: !2295)
!2298 = !DILocation(line: 780, column: 315, scope: !2295)
!2299 = !DILocation(line: 780, column: 268, scope: !2295)
!2300 = !DILocation(line: 780, column: 8, scope: !2295)
!2301 = !DILocation(line: 780, column: 328, scope: !2302)
!2302 = !DILexicalBlockFile(scope: !2172, file: !361, discriminator: 18)
!2303 = !DILocation(line: 780, column: 337, scope: !2302)
!2304 = !DILocation(line: 780, column: 339, scope: !2302)
!2305 = !DILocation(line: 780, column: 343, scope: !2302)
!2306 = !DILocation(line: 780, column: 352, scope: !2302)
!2307 = !DILocation(line: 780, column: 363, scope: !2302)
!2308 = !DILocation(line: 780, column: 375, scope: !2302)
!2309 = !DILocation(line: 780, column: 377, scope: !2302)
!2310 = !DILocation(line: 780, column: 381, scope: !2302)
!2311 = !DILocation(line: 780, column: 390, scope: !2302)
!2312 = !DILocation(line: 780, column: 359, scope: !2302)
!2313 = !DILocation(line: 780, column: 397, scope: !2302)
!2314 = !DILocation(line: 780, column: 403, scope: !2315)
!2315 = !DILexicalBlockFile(scope: !2172, file: !361, discriminator: 19)
!2316 = !DILocation(line: 780, column: 413, scope: !2315)
!2317 = !DILocation(line: 780, column: 417, scope: !2315)
!2318 = !DILocation(line: 780, column: 401, scope: !2315)
!2319 = !DILocation(line: 780, column: 436, scope: !2315)
!2320 = !DILocation(line: 780, column: 449, scope: !2315)
!2321 = !DILocation(line: 780, column: 453, scope: !2315)
!2322 = !DILocation(line: 780, column: 434, scope: !2315)
!2323 = !DILocation(line: 780, column: 431, scope: !2315)
!2324 = !DILocation(line: 780, column: 467, scope: !2315)
!2325 = !DILocation(line: 780, column: 473, scope: !2326)
!2326 = !DILexicalBlockFile(scope: !2172, file: !361, discriminator: 20)
!2327 = !DILocation(line: 780, column: 483, scope: !2326)
!2328 = !DILocation(line: 780, column: 470, scope: !2326)
!2329 = !DILocation(line: 780, column: 493, scope: !2326)
!2330 = !DILocation(line: 780, column: 506, scope: !2326)
!2331 = !DILocation(line: 780, column: 490, scope: !2326)
!2332 = !DILocation(line: 780, column: 487, scope: !2326)
!2333 = !DILocation(line: 780, column: 510, scope: !2326)
!2334 = !DILocation(line: 780, column: 517, scope: !2335)
!2335 = !DILexicalBlockFile(scope: !2172, file: !361, discriminator: 21)
!2336 = !DILocation(line: 780, column: 527, scope: !2335)
!2337 = !DILocation(line: 780, column: 515, scope: !2335)
!2338 = !DILocation(line: 780, column: 531, scope: !2335)
!2339 = !DILocation(line: 780, column: 536, scope: !2340)
!2340 = !DILexicalBlockFile(scope: !2172, file: !361, discriminator: 22)
!2341 = !DILocation(line: 780, column: 546, scope: !2340)
!2342 = !DILocation(line: 780, column: 551, scope: !2340)
!2343 = !DILocation(line: 780, column: 564, scope: !2340)
!2344 = !DILocation(line: 780, column: 577, scope: !2340)
!2345 = !DILocation(line: 780, column: 582, scope: !2340)
!2346 = !DILocation(line: 780, column: 559, scope: !2340)
!2347 = !DILocation(line: 780, column: 591, scope: !2340)
!2348 = !DILocation(line: 780, column: 596, scope: !2349)
!2349 = !DILexicalBlockFile(scope: !2172, file: !361, discriminator: 23)
!2350 = !DILocation(line: 780, column: 606, scope: !2349)
!2351 = !DILocation(line: 780, column: 610, scope: !2349)
!2352 = !DILocation(line: 780, column: 594, scope: !2349)
!2353 = !DILocation(line: 780, column: 625, scope: !2349)
!2354 = !DILocation(line: 780, column: 638, scope: !2349)
!2355 = !DILocation(line: 780, column: 642, scope: !2349)
!2356 = !DILocation(line: 780, column: 623, scope: !2349)
!2357 = !DILocation(line: 780, column: 620, scope: !2349)
!2358 = !DILocation(line: 780, column: 652, scope: !2349)
!2359 = !DILocation(line: 780, column: 670, scope: !2360)
!2360 = !DILexicalBlockFile(scope: !2172, file: !361, discriminator: 24)
!2361 = !DILocation(line: 780, column: 680, scope: !2360)
!2362 = !DILocation(line: 780, column: 689, scope: !2360)
!2363 = !DILocation(line: 780, column: 702, scope: !2360)
!2364 = !DILocation(line: 780, column: 655, scope: !2360)
!2365 = !DILocation(line: 780, column: 7, scope: !2360)
!2366 = !DILocation(line: 781, column: 18, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2172, file: !361, line: 780, column: 714)
!2368 = !DILocation(line: 781, column: 29, scope: !2367)
!2369 = !DILocation(line: 781, column: 4, scope: !2367)
!2370 = !DILocation(line: 781, column: 12, scope: !2367)
!2371 = !DILocation(line: 781, column: 16, scope: !2367)
!2372 = !DILocation(line: 782, column: 31, scope: !2367)
!2373 = !DILocation(line: 782, column: 42, scope: !2367)
!2374 = !DILocation(line: 782, column: 4, scope: !2367)
!2375 = !DILocation(line: 782, column: 12, scope: !2367)
!2376 = !DILocation(line: 782, column: 29, scope: !2367)
!2377 = !DILocation(line: 783, column: 28, scope: !2367)
!2378 = !DILocation(line: 783, column: 39, scope: !2367)
!2379 = !DILocation(line: 783, column: 43, scope: !2367)
!2380 = !DILocation(line: 783, column: 4, scope: !2367)
!2381 = !DILocation(line: 783, column: 12, scope: !2367)
!2382 = !DILocation(line: 783, column: 16, scope: !2367)
!2383 = !DILocation(line: 783, column: 26, scope: !2367)
!2384 = !DILocation(line: 784, column: 4, scope: !2367)
!2385 = !DILocation(line: 786, column: 2, scope: !2173)
!2386 = !DILocation(line: 779, column: 48, scope: !2387)
!2387 = !DILexicalBlockFile(scope: !2161, file: !361, discriminator: 10)
!2388 = !DILocation(line: 779, column: 52, scope: !2387)
!2389 = !DILocation(line: 779, column: 45, scope: !2387)
!2390 = !DILocation(line: 779, column: 2, scope: !2387)
!2391 = distinct !{!2391, !2392}
!2392 = !DILocation(line: 779, column: 2, scope: !2126)
!2393 = !DILocation(line: 788, column: 2, scope: !2126)
!2394 = !DILocation(line: 789, column: 1, scope: !2126)
!2395 = distinct !DISubprogram(name: "clear_diff_saddresses", scope: !361, file: !361, line: 831, type: !2396, isLocal: false, isDefinition: true, scopeLine: 832, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !364)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{null}
!2398 = !DILocation(line: 833, column: 26, scope: !2395)
!2399 = !DILocation(line: 833, column: 41, scope: !2395)
!2400 = !DILocation(line: 833, column: 59, scope: !2395)
!2401 = !DILocation(line: 833, column: 70, scope: !2395)
!2402 = !DILocation(line: 833, column: 2, scope: !2395)
!2403 = !DILocation(line: 834, column: 1, scope: !2395)
!2404 = distinct !DISubprogram(name: "iptables_init", scope: !361, file: !361, line: 901, type: !2396, isLocal: false, isDefinition: true, scopeLine: 902, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !364)
!2405 = !DILocation(line: 903, column: 7, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2404, file: !361, line: 903, column: 6)
!2407 = !DILocation(line: 903, column: 18, scope: !2406)
!2408 = !DILocation(line: 903, column: 22, scope: !2409)
!2409 = !DILexicalBlockFile(scope: !2406, file: !361, discriminator: 1)
!2410 = !DILocation(line: 903, column: 6, scope: !2409)
!2411 = !DILocation(line: 905, column: 3, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2406, file: !361, line: 903, column: 34)
!2413 = !DILocation(line: 905, column: 16, scope: !2412)
!2414 = !DILocation(line: 905, column: 29, scope: !2412)
!2415 = !DILocation(line: 907, column: 3, scope: !2412)
!2416 = !DILocation(line: 911, column: 2, scope: !2404)
!2417 = !DILocation(line: 948, column: 6, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2404, file: !361, line: 948, column: 6)
!2419 = !DILocation(line: 948, column: 17, scope: !2418)
!2420 = !DILocation(line: 948, column: 20, scope: !2421)
!2421 = !DILexicalBlockFile(scope: !2418, file: !361, discriminator: 1)
!2422 = !DILocation(line: 948, column: 6, scope: !2421)
!2423 = !DILocation(line: 949, column: 3, scope: !2418)
!2424 = !DILocation(line: 952, column: 3, scope: !2418)
!2425 = !DILocation(line: 952, column: 16, scope: !2418)
!2426 = !DILocation(line: 952, column: 29, scope: !2418)
!2427 = !DILocation(line: 954, column: 1, scope: !2404)
!2428 = distinct !DISubprogram(name: "check_chains_exist", scope: !361, file: !361, line: 837, type: !2396, isLocal: true, isDefinition: true, scopeLine: 838, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !364)
!2429 = !DILocation(line: 843, column: 3, scope: !2428)
!2430 = !DILocation(line: 898, column: 1, scope: !2428)
!2431 = distinct !DISubprogram(name: "reinstate_static_address", scope: !361, file: !361, line: 956, type: !2432, isLocal: false, isDefinition: true, scopeLine: 957, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !364)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{null, !129}
!2434 = !DILocalVariable(name: "ipaddr", arg: 1, scope: !2431, file: !361, line: 956, type: !129)
!2435 = !DILocation(line: 956, column: 45, scope: !2431)
!2436 = !DILocalVariable(name: "buf", scope: !2431, file: !361, line: 958, type: !439)
!2437 = !DILocation(line: 958, column: 7, scope: !2431)
!2438 = !DILocation(line: 960, column: 35, scope: !2431)
!2439 = !DILocation(line: 960, column: 17, scope: !2431)
!2440 = !DILocation(line: 960, column: 46, scope: !2431)
!2441 = !DILocation(line: 960, column: 2, scope: !2431)
!2442 = !DILocation(line: 960, column: 10, scope: !2431)
!2443 = !DILocation(line: 960, column: 14, scope: !2431)
!2444 = !DILocation(line: 961, column: 19, scope: !2431)
!2445 = !DILocation(line: 961, column: 27, scope: !2431)
!2446 = !DILocation(line: 961, column: 2, scope: !2431)
!2447 = !DILocation(line: 962, column: 62, scope: !2431)
!2448 = !DILocation(line: 962, column: 2, scope: !2431)
!2449 = !DILocation(line: 963, column: 1, scope: !2431)
