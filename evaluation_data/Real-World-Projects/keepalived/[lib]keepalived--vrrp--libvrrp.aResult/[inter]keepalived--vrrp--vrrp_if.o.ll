; ModuleID = './[inter]keepalived--vrrp--vrrp_if.o.i'
source_filename = "./[inter]keepalived--vrrp--vrrp_if.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._data = type { i8*, i8, i8*, i8, i8*, i8*, %struct.sockaddr_storage, i8*, i64, %struct._list*, i32, i8, i8, i32, i8*, %struct._interface*, i32, i32, i32, i32, %struct.lvs_syncd_config, i8, %struct.sockaddr_in, %struct.sockaddr_in6, i32, %struct.timeval, i32, i32, i32, i32, i32, i32, i8, i8, i32, [29 x i8], [29 x i8], i8, [32 x i8], [32 x i8], [32 x i8], i8, i8, i8, i8, i8, i8, i32, i64, i8, i8, i8, i32, i64, %struct._notify_fifo, %struct._notify_fifo, %struct._notify_fifo, i32, i8, i32, i8, i32, i8, i32, i8, i8, i8, i32, i64, i32 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct._interface = type { [16 x i8], i32, %struct.in_addr, %struct.in6_addr, i32, i8, i32, i16, [32 x i8], [32 x i8], i64, i32, i8, i32, %struct._interface*, i32, %struct._interface*, i8, %struct._garp_delay*, i8, i32, i32, i32, i32, i32, i8, %struct._list* }
%struct.in_addr = type { i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct._garp_delay = type { %struct.timeval, i8, %struct.timeval, i8, %struct.timeval, %struct.timeval, i32 }
%struct.lvs_syncd_config = type { i8*, %struct._vrrp_t*, i32, i16, %struct.sockaddr_storage, i16, i8, i8* }
%struct._vrrp_t = type { i16, i8*, %struct._vrrp_sgroup*, %struct._vrrp_stats*, %struct._interface*, i8, i8, i8, i32, i64, [16 x i8], %struct._list*, %struct._list*, %struct._list*, i32, i32, %struct.sockaddr_storage, i8, i8, %struct.sockaddr_storage, %struct._list*, i32, %struct.sockaddr_storage, i8, %struct.timeval, i32, %struct.timeval, %struct.timeval, i32, i32, i32, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, %struct._list*, %struct._list*, i8, i8, %struct._list*, %struct._list*, i32, i32, i32, i64, i8, i8, i64, %struct.timeval, i32, i32, i8, %struct._sock*, i32, i32, i32, i32, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, %struct.timeval, i8*, i64, i32, i8, [8 x i8], %struct._seq_counter, i32 }
%struct._vrrp_sgroup = type { i8*, %struct._vector*, %struct._list*, i32, i32, i32, i8, %struct._list*, %struct._list*, %struct._list*, %struct._list*, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, i32 }
%struct._vector = type { i32, i32, i8** }
%struct._vrrp_stats = type { i64, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i64, i64 }
%struct._sock = type { i16, %struct.sockaddr_storage, i32, i32, i8, i32, i32, i32, %struct._thread* }
%struct._thread = type { i64, i32, %struct._thread_master*, i32 (%struct._thread*)*, i8*, %struct.timeval, %union.anon.0, %struct._thread_event*, %union.anon.1 }
%struct._thread_master = type { %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct._list*, %struct.rb_root, %struct.epoll_event*, %struct._thread_event*, i32, i32, i32, i32, %struct._thread*, i64, i64, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.epoll_event = type opaque
%union.anon.0 = type { %struct.anon }
%struct.anon = type { i32, i32 }
%struct._thread_event = type { %struct._thread*, %struct._thread*, i64, i32, %struct.rb_node }
%union.anon.1 = type { %struct.rb_node }
%struct._notify_script = type { i8**, i32, i32, i32, i32 }
%struct._seq_counter = type { i8, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.timeval = type { i64, i64 }
%struct._notify_fifo = type { i8*, i32, i8, %struct._notify_script* }
%struct._vrrp_data = type { %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list* }
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.ifreq = type { %union.anon.6, %union.anon.7 }
%union.anon.6 = type { [16 x i8] }
%union.anon.7 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }
%struct.mii_ioctl_data = type { i16, i16, i16, i16 }
%struct.ip_mreqn = type { %struct.in_addr, %struct.in_addr, i32 }
%struct.ipv6_mreq = type { %struct.in6_addr, i32 }
%struct.sock_fprog = type { i16, %struct.sock_filter* }
%struct._ip_route = type { %struct._ip_address*, %struct._ip_address*, %struct._ip_address*, i8, i8, i32, i8, i8, i32, %struct._ip_address*, %struct._interface*, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8, i8, i32, %struct._encap, %struct._list*, i32, i8, %struct._static_track_group*, i8, i32 }
%struct._ip_address = type { %struct.ifaddrmsg, %union.anon.2, %struct._interface*, i8*, i32, i32, i8, %union.anon.4, i8, %struct._static_track_group*, i8, i8, i8 }
%struct.ifaddrmsg = type { i8, i8, i8, i8, i32 }
%union.anon.2 = type { %struct.in6_addr }
%union.anon.4 = type { %struct.in6_addr }
%struct._encap = type { i16, i32, %union.anon.5 }
%union.anon.5 = type { %struct._encap_ip }
%struct._encap_ip = type { i64, %struct._ip_address*, %struct._ip_address*, i8, i16, i8 }
%struct._static_track_group = type { i8*, %struct._vector*, %struct._list* }
%struct._tracking_vrrp = type { i32, %struct._vrrp_t*, i32 }
%struct.ethtool_value = type { i32, i32 }

@if_queue = internal global %struct._list* null, align 8
@global_data = external global %struct._data*, align 8
@non_existent_interface_specified = external global i8, align 1
@.str = private unnamed_addr constant [89 x i8] c"Configuration specifies interface %s which doesn't currently exist - will use if created\00", align 1
@garp_delay = common global %struct._list* null, align 8
@old_garp_delay = internal global %struct._list* null, align 8
@vrrp_data = external global %struct._vrrp_data*, align 8
@master = external global %struct._thread_master*, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Using MII-BMSR/ETHTOOL NIC polling thread...\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"(%s) cant do IP%s_ADD_MEMBERSHIP errno=%s (%d)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"v6\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"(%s) cant do IP%s_DROP_MEMBERSHIP errno=%s (%d)\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"V6\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"can't bind to device %s. errno=%d. (try to run it as root)\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"cant set HDRINCL IP option. errno=%d (%m)\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"cant set IPV6_CHECKSUM IP option. errno=%d (%m)\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"cant set IP_MULTICAST_ALL IP option. errno=%d (%m)\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"cant set IP%s_MULTICAST_LOOP IP option. errno=%d (%m)\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"cant set IPV6_MULTICAST_HOPS IP option. errno=%d (%m)\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"cant set IP%s_MULTICAST_IF IP option. errno=%d (%m)\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"can't set %s option. errno=%d (%m)\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"IP_TOS\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"IPV6_TCLASS\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"cant set SO_RCVBUF IP option. errno=%d (%m)\00", align 1
@if_setsockopt_no_receive.bpfcode = private unnamed_addr constant [1 x %struct.sock_filter] [%struct.sock_filter { i16 6, i8 0, i8 0, i32 0 }], align 4
@.str.18 = private unnamed_addr constant [49 x i8] c"Can't set SO_ATTACH_FILTER option. errno=%d (%m)\00", align 1
@netlink_error_ignore = external global i32, align 4
@.str.19 = private unnamed_addr constant [79 x i8] c"(%s): cannot configure a VMAC (%s) on a macvlan interface (%s), use %s instead\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"------< GARP delay group %d >------\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c" GARP interval = %g\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"invalid time \00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c" GARP next time %ld.%6.6ld (%.19s.%6.6ld)\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c" GNA interval = %g\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c" GNA next time %ld.%6.6ld (%.19s.%6.6ld)\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c" No configuration\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c" Interfaces\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@ifr = internal global %struct.ifreq zeroinitializer, align 8
@.str.29 = private unnamed_addr constant [38 x i8] c"No MII transceiver present for %s !!!\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"SIOCGMIIREG on %s failed: %s\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"Linkbeat reports %s %s\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c" Name = %s\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"   index = %u\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"   IPv4 address = %s\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"   IPv6 address = %s\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"%.2x%s\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"   MAC = %s\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"   MAC broadcast = %s\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"   State = %sUP, %sRUNNING%s%s%s%s%s\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c", no broadcast\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c", loopback\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c", point to point\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c", no arp\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c", no multicast\00", align 1
@.str.50 = private unnamed_addr constant [59 x i8] c"   VMAC underlying interface = %s, state = %sUP, %sRUNNING\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"   MTU = %d\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"   HW Type = LOOPBACK\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"   HW Type = ETHERNET\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c" HW Type = INFINIBAND\00", align 1
@.str.55 = private unnamed_addr constant [26 x i8] c"   HW Type = UNKNOWN (%d)\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"   NIC netlink status update\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"   NIC support MII regs\00", align 1
@.str.58 = private unnamed_addr constant [39 x i8] c"   NIC support ETHTOOL GLINK interface\00", align 1
@.str.59 = private unnamed_addr constant [29 x i8] c"   NIC ioctl refresh polling\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"   VRF master\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"   VRF slave of %s\00", align 1
@.str.62 = private unnamed_addr constant [33 x i8] c"   Gratuitous ARP interval %ldms\00", align 1
@.str.63 = private unnamed_addr constant [32 x i8] c"   Gratuitous NA interval %ldms\00", align 1
@.str.64 = private unnamed_addr constant [39 x i8] c"   Gratuitous ARP aggregation group %d\00", align 1
@.str.65 = private unnamed_addr constant [32 x i8] c"   Tracking VRRP instances = %d\00", align 1
@vrrp_initialised = external global i8, align 1

; Function Attrs: nounwind uwtable
define %struct._interface* @if_get_by_ifindex(i32) #0 !dbg !274 {
  %2 = alloca %struct._interface*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._interface*, align 8
  %5 = alloca %struct._element*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !360, metadata !361), !dbg !362
  call void @llvm.dbg.declare(metadata %struct._interface** %4, metadata !363, metadata !361), !dbg !364
  call void @llvm.dbg.declare(metadata %struct._element** %5, metadata !365, metadata !361), !dbg !367
  %6 = load %struct._list*, %struct._list** @if_queue, align 8, !dbg !368
  %7 = icmp eq %struct._list* %6, null, !dbg !370
  br i1 %7, label %18, label %8, !dbg !371

; <label>:8:                                      ; preds = %1
  %9 = load %struct._list*, %struct._list** @if_queue, align 8, !dbg !372
  %10 = getelementptr inbounds %struct._list, %struct._list* %9, i32 0, i32 0, !dbg !374
  %11 = load %struct._element*, %struct._element** %10, align 8, !dbg !374
  %12 = icmp eq %struct._element* %11, null, !dbg !375
  br i1 %12, label %13, label %19, !dbg !376

; <label>:13:                                     ; preds = %8
  %14 = load %struct._list*, %struct._list** @if_queue, align 8, !dbg !377
  %15 = getelementptr inbounds %struct._list, %struct._list* %14, i32 0, i32 1, !dbg !379
  %16 = load %struct._element*, %struct._element** %15, align 8, !dbg !379
  %17 = icmp eq %struct._element* %16, null, !dbg !380
  br i1 %17, label %18, label %19, !dbg !381

; <label>:18:                                     ; preds = %13, %1
  store %struct._interface* null, %struct._interface** %2, align 8, !dbg !382
  br label %50, !dbg !382

; <label>:19:                                     ; preds = %13, %8
  %20 = load %struct._list*, %struct._list** @if_queue, align 8, !dbg !383
  %21 = icmp ne %struct._list* %20, null, !dbg !385
  br i1 %21, label %23, label %22, !dbg !386

; <label>:22:                                     ; preds = %19
  br label %27, !dbg !387

; <label>:23:                                     ; preds = %19
  %24 = load %struct._list*, %struct._list** @if_queue, align 8, !dbg !389
  %25 = getelementptr inbounds %struct._list, %struct._list* %24, i32 0, i32 0, !dbg !391
  %26 = load %struct._element*, %struct._element** %25, align 8, !dbg !391
  br label %27, !dbg !392

; <label>:27:                                     ; preds = %23, %22
  %28 = phi %struct._element* [ null, %22 ], [ %26, %23 ], !dbg !393
  store %struct._element* %28, %struct._element** %5, align 8, !dbg !395
  br label %29, !dbg !396

; <label>:29:                                     ; preds = %45, %27
  %30 = load %struct._element*, %struct._element** %5, align 8, !dbg !397
  %31 = icmp ne %struct._element* %30, null, !dbg !400
  br i1 %31, label %32, label %49, !dbg !400

; <label>:32:                                     ; preds = %29
  %33 = load %struct._element*, %struct._element** %5, align 8, !dbg !401
  %34 = getelementptr inbounds %struct._element, %struct._element* %33, i32 0, i32 2, !dbg !403
  %35 = load i8*, i8** %34, align 8, !dbg !403
  %36 = bitcast i8* %35 to %struct._interface*, !dbg !404
  store %struct._interface* %36, %struct._interface** %4, align 8, !dbg !405
  %37 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !406
  %38 = getelementptr inbounds %struct._interface, %struct._interface* %37, i32 0, i32 1, !dbg !408
  %39 = load i32, i32* %38, align 8, !dbg !408
  %40 = load i32, i32* %3, align 4, !dbg !409
  %41 = icmp eq i32 %39, %40, !dbg !410
  br i1 %41, label %42, label %44, !dbg !411

; <label>:42:                                     ; preds = %32
  %43 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !412
  store %struct._interface* %43, %struct._interface** %2, align 8, !dbg !413
  br label %50, !dbg !413

; <label>:44:                                     ; preds = %32
  br label %45, !dbg !414

; <label>:45:                                     ; preds = %44
  %46 = load %struct._element*, %struct._element** %5, align 8, !dbg !415
  %47 = getelementptr inbounds %struct._element, %struct._element* %46, i32 0, i32 0, !dbg !417
  %48 = load %struct._element*, %struct._element** %47, align 8, !dbg !417
  store %struct._element* %48, %struct._element** %5, align 8, !dbg !418
  br label %29, !dbg !419, !llvm.loop !420

; <label>:49:                                     ; preds = %29
  store %struct._interface* null, %struct._interface** %2, align 8, !dbg !422
  br label %50, !dbg !422

; <label>:50:                                     ; preds = %49, %42, %18
  %51 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !423
  ret %struct._interface* %51, !dbg !423
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define %struct._interface* @base_if_get_by_ifp(%struct._interface*) #0 !dbg !424 {
  %2 = alloca %struct._interface*, align 8
  store %struct._interface* %0, %struct._interface** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %2, metadata !427, metadata !361), !dbg !428
  %3 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !429
  %4 = icmp ne %struct._interface* %3, null, !dbg !429
  br i1 %4, label %5, label %14, !dbg !430

; <label>:5:                                      ; preds = %1
  %6 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !431
  %7 = getelementptr inbounds %struct._interface, %struct._interface* %6, i32 0, i32 12, !dbg !433
  %8 = load i8, i8* %7, align 4, !dbg !433
  %9 = trunc i8 %8 to i1, !dbg !433
  br i1 %9, label %10, label %14, !dbg !434

; <label>:10:                                     ; preds = %5
  %11 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !435
  %12 = getelementptr inbounds %struct._interface, %struct._interface* %11, i32 0, i32 14, !dbg !437
  %13 = load %struct._interface*, %struct._interface** %12, align 8, !dbg !437
  br label %16, !dbg !438

; <label>:14:                                     ; preds = %5, %1
  %15 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !439
  br label %16, !dbg !441

; <label>:16:                                     ; preds = %14, %10
  %17 = phi %struct._interface* [ %13, %10 ], [ %15, %14 ], !dbg !442
  ret %struct._interface* %17, !dbg !444
}

; Function Attrs: nounwind uwtable
define %struct._interface* @if_get_by_ifname(i8*, i32) #0 !dbg !445 {
  %3 = alloca %struct._interface*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._interface*, align 8
  %7 = alloca %struct._element*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !451, metadata !361), !dbg !452
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !453, metadata !361), !dbg !454
  call void @llvm.dbg.declare(metadata %struct._interface** %6, metadata !455, metadata !361), !dbg !456
  call void @llvm.dbg.declare(metadata %struct._element** %7, metadata !457, metadata !361), !dbg !458
  %8 = load %struct._list*, %struct._list** @if_queue, align 8, !dbg !459
  %9 = icmp eq %struct._list* %8, null, !dbg !461
  br i1 %9, label %52, label %10, !dbg !462

; <label>:10:                                     ; preds = %2
  %11 = load %struct._list*, %struct._list** @if_queue, align 8, !dbg !463
  %12 = getelementptr inbounds %struct._list, %struct._list* %11, i32 0, i32 0, !dbg !465
  %13 = load %struct._element*, %struct._element** %12, align 8, !dbg !465
  %14 = icmp eq %struct._element* %13, null, !dbg !466
  br i1 %14, label %15, label %20, !dbg !467

; <label>:15:                                     ; preds = %10
  %16 = load %struct._list*, %struct._list** @if_queue, align 8, !dbg !468
  %17 = getelementptr inbounds %struct._list, %struct._list* %16, i32 0, i32 1, !dbg !470
  %18 = load %struct._element*, %struct._element** %17, align 8, !dbg !470
  %19 = icmp eq %struct._element* %18, null, !dbg !471
  br i1 %19, label %52, label %20, !dbg !472

; <label>:20:                                     ; preds = %15, %10
  %21 = load %struct._list*, %struct._list** @if_queue, align 8, !dbg !473
  %22 = icmp ne %struct._list* %21, null, !dbg !476
  br i1 %22, label %24, label %23, !dbg !477

; <label>:23:                                     ; preds = %20
  br label %28, !dbg !478

; <label>:24:                                     ; preds = %20
  %25 = load %struct._list*, %struct._list** @if_queue, align 8, !dbg !480
  %26 = getelementptr inbounds %struct._list, %struct._list* %25, i32 0, i32 0, !dbg !482
  %27 = load %struct._element*, %struct._element** %26, align 8, !dbg !482
  br label %28, !dbg !483

; <label>:28:                                     ; preds = %24, %23
  %29 = phi %struct._element* [ null, %23 ], [ %27, %24 ], !dbg !484
  store %struct._element* %29, %struct._element** %7, align 8, !dbg !486
  br label %30, !dbg !487

; <label>:30:                                     ; preds = %47, %28
  %31 = load %struct._element*, %struct._element** %7, align 8, !dbg !488
  %32 = icmp ne %struct._element* %31, null, !dbg !491
  br i1 %32, label %33, label %51, !dbg !491

; <label>:33:                                     ; preds = %30
  %34 = load %struct._element*, %struct._element** %7, align 8, !dbg !492
  %35 = getelementptr inbounds %struct._element, %struct._element* %34, i32 0, i32 2, !dbg !494
  %36 = load i8*, i8** %35, align 8, !dbg !494
  %37 = bitcast i8* %36 to %struct._interface*, !dbg !495
  store %struct._interface* %37, %struct._interface** %6, align 8, !dbg !496
  %38 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !497
  %39 = getelementptr inbounds %struct._interface, %struct._interface* %38, i32 0, i32 0, !dbg !499
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %39, i32 0, i32 0, !dbg !497
  %41 = load i8*, i8** %4, align 8, !dbg !500
  %42 = call i32 @strcmp(i8* %40, i8* %41) #8, !dbg !501
  %43 = icmp ne i32 %42, 0, !dbg !501
  br i1 %43, label %46, label %44, !dbg !502

; <label>:44:                                     ; preds = %33
  %45 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !503
  store %struct._interface* %45, %struct._interface** %3, align 8, !dbg !504
  br label %92, !dbg !504

; <label>:46:                                     ; preds = %33
  br label %47, !dbg !505

; <label>:47:                                     ; preds = %46
  %48 = load %struct._element*, %struct._element** %7, align 8, !dbg !506
  %49 = getelementptr inbounds %struct._element, %struct._element* %48, i32 0, i32 0, !dbg !508
  %50 = load %struct._element*, %struct._element** %49, align 8, !dbg !508
  store %struct._element* %50, %struct._element** %7, align 8, !dbg !509
  br label %30, !dbg !510, !llvm.loop !511

; <label>:51:                                     ; preds = %30
  br label %52, !dbg !513

; <label>:52:                                     ; preds = %51, %15, %2
  %53 = load i32, i32* %5, align 4, !dbg !514
  %54 = icmp eq i32 %53, 0, !dbg !516
  br i1 %54, label %66, label %55, !dbg !517

; <label>:55:                                     ; preds = %52
  %56 = load i32, i32* %5, align 4, !dbg !518
  %57 = icmp eq i32 %56, 1, !dbg !519
  br i1 %57, label %58, label %71, !dbg !520

; <label>:58:                                     ; preds = %55
  %59 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !521
  %60 = icmp ne %struct._data* %59, null, !dbg !521
  br i1 %60, label %61, label %66, !dbg !523

; <label>:61:                                     ; preds = %58
  %62 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !524
  %63 = getelementptr inbounds %struct._data, %struct._data* %62, i32 0, i32 11, !dbg !526
  %64 = load i8, i8* %63, align 4, !dbg !526
  %65 = trunc i8 %64 to i1, !dbg !526
  br i1 %65, label %71, label %66, !dbg !527

; <label>:66:                                     ; preds = %61, %58, %52
  %67 = load i32, i32* %5, align 4, !dbg !529
  %68 = icmp eq i32 %67, 1, !dbg !532
  br i1 %68, label %69, label %70, !dbg !533

; <label>:69:                                     ; preds = %66
  store i8 1, i8* @non_existent_interface_specified, align 1, !dbg !534
  br label %70, !dbg !535

; <label>:70:                                     ; preds = %69, %66
  store %struct._interface* null, %struct._interface** %3, align 8, !dbg !536
  br label %92, !dbg !536

; <label>:71:                                     ; preds = %61, %55
  %72 = call i8* @zalloc(i64 224), !dbg !537
  %73 = bitcast i8* %72 to %struct._interface*, !dbg !539
  store %struct._interface* %73, %struct._interface** %6, align 8, !dbg !540
  %74 = icmp ne %struct._interface* %73, null, !dbg !540
  br i1 %74, label %76, label %75, !dbg !541

; <label>:75:                                     ; preds = %71
  store %struct._interface* null, %struct._interface** %3, align 8, !dbg !542
  br label %92, !dbg !542

; <label>:76:                                     ; preds = %71
  %77 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !543
  %78 = getelementptr inbounds %struct._interface, %struct._interface* %77, i32 0, i32 0, !dbg !544
  %79 = getelementptr inbounds [16 x i8], [16 x i8]* %78, i32 0, i32 0, !dbg !543
  %80 = load i8*, i8** %4, align 8, !dbg !545
  %81 = call i8* @strcpy(i8* %79, i8* %80) #9, !dbg !546
  %82 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !547
  %83 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !548
  %84 = getelementptr inbounds %struct._interface, %struct._interface* %83, i32 0, i32 14, !dbg !549
  store %struct._interface* %82, %struct._interface** %84, align 8, !dbg !550
  %85 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !551
  call void @if_add_queue(%struct._interface* %85), !dbg !552
  %86 = load i32, i32* %5, align 4, !dbg !553
  %87 = icmp eq i32 %86, 1, !dbg !555
  br i1 %87, label %88, label %90, !dbg !556

; <label>:88:                                     ; preds = %76
  %89 = load i8*, i8** %4, align 8, !dbg !557
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i32 0, i32 0), i8* %89), !dbg !558
  br label %90, !dbg !558

; <label>:90:                                     ; preds = %88, %76
  %91 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !559
  store %struct._interface* %91, %struct._interface** %3, align 8, !dbg !560
  br label %92, !dbg !560

; <label>:92:                                     ; preds = %90, %75, %70, %44
  %93 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !561
  ret %struct._interface* %93, !dbg !561
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i8* @zalloc(i64) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define void @if_add_queue(%struct._interface*) #0 !dbg !562 {
  %2 = alloca %struct._interface*, align 8
  store %struct._interface* %0, %struct._interface** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %2, metadata !565, metadata !361), !dbg !566
  %3 = load %struct._list*, %struct._list** @if_queue, align 8, !dbg !567
  %4 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !568
  %5 = bitcast %struct._interface* %4 to i8*, !dbg !568
  call void @list_add(%struct._list* %3, i8* %5), !dbg !569
  ret void, !dbg !570
}

declare void @log_message(i32, i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @set_base_ifp() #0 !dbg !571 {
  %1 = alloca %struct._interface*, align 8
  %2 = alloca %struct._interface*, align 8
  %3 = alloca %struct._element*, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %1, metadata !574, metadata !361), !dbg !575
  call void @llvm.dbg.declare(metadata %struct._interface** %2, metadata !576, metadata !361), !dbg !577
  call void @llvm.dbg.declare(metadata %struct._element** %3, metadata !578, metadata !361), !dbg !579
  %4 = load %struct._list*, %struct._list** @if_queue, align 8, !dbg !580
  %5 = icmp eq %struct._list* %4, null, !dbg !582
  br i1 %5, label %16, label %6, !dbg !583

; <label>:6:                                      ; preds = %0
  %7 = load %struct._list*, %struct._list** @if_queue, align 8, !dbg !584
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 0, !dbg !586
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !586
  %10 = icmp eq %struct._element* %9, null, !dbg !587
  br i1 %10, label %11, label %17, !dbg !588

; <label>:11:                                     ; preds = %6
  %12 = load %struct._list*, %struct._list** @if_queue, align 8, !dbg !589
  %13 = getelementptr inbounds %struct._list, %struct._list* %12, i32 0, i32 1, !dbg !591
  %14 = load %struct._element*, %struct._element** %13, align 8, !dbg !591
  %15 = icmp eq %struct._element* %14, null, !dbg !592
  br i1 %15, label %16, label %17, !dbg !593

; <label>:16:                                     ; preds = %11, %0
  br label %91, !dbg !594

; <label>:17:                                     ; preds = %11, %6
  %18 = load %struct._list*, %struct._list** @if_queue, align 8, !dbg !595
  %19 = icmp ne %struct._list* %18, null, !dbg !597
  br i1 %19, label %20, label %30, !dbg !597

; <label>:20:                                     ; preds = %17
  %21 = load %struct._list*, %struct._list** @if_queue, align 8, !dbg !598
  %22 = icmp ne %struct._list* %21, null, !dbg !600
  br i1 %22, label %24, label %23, !dbg !601

; <label>:23:                                     ; preds = %20
  br label %28, !dbg !602

; <label>:24:                                     ; preds = %20
  %25 = load %struct._list*, %struct._list** @if_queue, align 8, !dbg !604
  %26 = getelementptr inbounds %struct._list, %struct._list* %25, i32 0, i32 0, !dbg !606
  %27 = load %struct._element*, %struct._element** %26, align 8, !dbg !606
  br label %28, !dbg !607

; <label>:28:                                     ; preds = %24, %23
  %29 = phi %struct._element* [ null, %23 ], [ %27, %24 ], !dbg !608
  br label %31, !dbg !610

; <label>:30:                                     ; preds = %17
  br label %31, !dbg !611

; <label>:31:                                     ; preds = %30, %28
  %32 = phi %struct._element* [ %29, %28 ], [ null, %30 ], !dbg !613
  store %struct._element* %32, %struct._element** %3, align 8, !dbg !615
  br label %33, !dbg !616

; <label>:33:                                     ; preds = %87, %31
  %34 = load %struct._element*, %struct._element** %3, align 8, !dbg !617
  %35 = icmp ne %struct._element* %34, null, !dbg !620
  br i1 %35, label %36, label %41, !dbg !621

; <label>:36:                                     ; preds = %33
  %37 = load %struct._element*, %struct._element** %3, align 8, !dbg !622
  %38 = getelementptr inbounds %struct._element, %struct._element* %37, i32 0, i32 2, !dbg !624
  %39 = load i8*, i8** %38, align 8, !dbg !624
  %40 = bitcast i8* %39 to %struct._interface*, !dbg !625
  store %struct._interface* %40, %struct._interface** %1, align 8, !dbg !626
  br label %41

; <label>:41:                                     ; preds = %36, %33
  %42 = phi i1 [ false, %33 ], [ true, %36 ]
  br i1 %42, label %43, label %91, !dbg !627

; <label>:43:                                     ; preds = %41
  %44 = load %struct._interface*, %struct._interface** %1, align 8, !dbg !629
  %45 = getelementptr inbounds %struct._interface, %struct._interface* %44, i32 0, i32 14, !dbg !632
  %46 = load %struct._interface*, %struct._interface** %45, align 8, !dbg !632
  %47 = icmp ne %struct._interface* %46, null, !dbg !629
  br i1 %47, label %62, label %48, !dbg !633

; <label>:48:                                     ; preds = %43
  %49 = load %struct._interface*, %struct._interface** %1, align 8, !dbg !634
  %50 = getelementptr inbounds %struct._interface, %struct._interface* %49, i32 0, i32 13, !dbg !635
  %51 = load i32, i32* %50, align 8, !dbg !635
  %52 = icmp ne i32 %51, 0, !dbg !634
  br i1 %52, label %53, label %62, !dbg !636

; <label>:53:                                     ; preds = %48
  %54 = load %struct._interface*, %struct._interface** %1, align 8, !dbg !638
  %55 = getelementptr inbounds %struct._interface, %struct._interface* %54, i32 0, i32 13, !dbg !640
  %56 = load i32, i32* %55, align 8, !dbg !640
  %57 = call %struct._interface* @if_get_by_ifindex(i32 %56), !dbg !641
  %58 = load %struct._interface*, %struct._interface** %1, align 8, !dbg !642
  %59 = getelementptr inbounds %struct._interface, %struct._interface* %58, i32 0, i32 14, !dbg !643
  store %struct._interface* %57, %struct._interface** %59, align 8, !dbg !644
  %60 = load %struct._interface*, %struct._interface** %1, align 8, !dbg !645
  %61 = getelementptr inbounds %struct._interface, %struct._interface* %60, i32 0, i32 13, !dbg !646
  store i32 0, i32* %61, align 8, !dbg !647
  br label %62, !dbg !648

; <label>:62:                                     ; preds = %53, %48, %43
  %63 = load %struct._interface*, %struct._interface** %1, align 8, !dbg !649
  %64 = getelementptr inbounds %struct._interface, %struct._interface* %63, i32 0, i32 15, !dbg !651
  %65 = load i32, i32* %64, align 8, !dbg !651
  %66 = icmp ne i32 %65, 0, !dbg !649
  br i1 %66, label %67, label %86, !dbg !652

; <label>:67:                                     ; preds = %62
  %68 = load %struct._interface*, %struct._interface** %1, align 8, !dbg !653
  %69 = getelementptr inbounds %struct._interface, %struct._interface* %68, i32 0, i32 15, !dbg !655
  %70 = load i32, i32* %69, align 8, !dbg !655
  %71 = call %struct._interface* @if_get_by_ifindex(i32 %70), !dbg !656
  store %struct._interface* %71, %struct._interface** %2, align 8, !dbg !657
  %72 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !658
  %73 = icmp ne %struct._interface* %72, null, !dbg !658
  br i1 %73, label %74, label %83, !dbg !660

; <label>:74:                                     ; preds = %67
  %75 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !661
  %76 = getelementptr inbounds %struct._interface, %struct._interface* %75, i32 0, i32 17, !dbg !663
  %77 = load i8, i8* %76, align 8, !dbg !663
  %78 = trunc i8 %77 to i1, !dbg !663
  br i1 %78, label %79, label %83, !dbg !664

; <label>:79:                                     ; preds = %74
  %80 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !665
  %81 = load %struct._interface*, %struct._interface** %1, align 8, !dbg !666
  %82 = getelementptr inbounds %struct._interface, %struct._interface* %81, i32 0, i32 16, !dbg !667
  store %struct._interface* %80, %struct._interface** %82, align 8, !dbg !668
  br label %83, !dbg !666

; <label>:83:                                     ; preds = %79, %74, %67
  %84 = load %struct._interface*, %struct._interface** %1, align 8, !dbg !669
  %85 = getelementptr inbounds %struct._interface, %struct._interface* %84, i32 0, i32 15, !dbg !670
  store i32 0, i32* %85, align 8, !dbg !671
  br label %86, !dbg !672

; <label>:86:                                     ; preds = %83, %62
  br label %87, !dbg !673

; <label>:87:                                     ; preds = %86
  %88 = load %struct._element*, %struct._element** %3, align 8, !dbg !674
  %89 = getelementptr inbounds %struct._element, %struct._element* %88, i32 0, i32 0, !dbg !676
  %90 = load %struct._element*, %struct._element** %89, align 8, !dbg !676
  store %struct._element* %90, %struct._element** %3, align 8, !dbg !677
  br label %33, !dbg !678, !llvm.loop !679

; <label>:91:                                     ; preds = %16, %41
  ret void, !dbg !681
}

; Function Attrs: nounwind uwtable
define %struct._list* @get_if_list() #0 !dbg !682 {
  %1 = load %struct._list*, %struct._list** @if_queue, align 8, !dbg !685
  ret %struct._list* %1, !dbg !686
}

; Function Attrs: nounwind uwtable
define void @reset_interface_queue() #0 !dbg !687 {
  %1 = alloca %struct._interface*, align 8
  %2 = alloca %struct._element*, align 8
  %3 = load %struct._list*, %struct._list** @garp_delay, align 8, !dbg !688
  store %struct._list* %3, %struct._list** @old_garp_delay, align 8, !dbg !689
  call void @llvm.dbg.declare(metadata %struct._interface** %1, metadata !690, metadata !361), !dbg !691
  call void @llvm.dbg.declare(metadata %struct._element** %2, metadata !692, metadata !361), !dbg !693
  store %struct._list* null, %struct._list** @garp_delay, align 8, !dbg !694
  %4 = load %struct._list*, %struct._list** @if_queue, align 8, !dbg !695
  %5 = icmp ne %struct._list* %4, null, !dbg !697
  br i1 %5, label %6, label %16, !dbg !697

; <label>:6:                                      ; preds = %0
  %7 = load %struct._list*, %struct._list** @if_queue, align 8, !dbg !698
  %8 = icmp ne %struct._list* %7, null, !dbg !700
  br i1 %8, label %10, label %9, !dbg !701

; <label>:9:                                      ; preds = %6
  br label %14, !dbg !702

; <label>:10:                                     ; preds = %6
  %11 = load %struct._list*, %struct._list** @if_queue, align 8, !dbg !704
  %12 = getelementptr inbounds %struct._list, %struct._list* %11, i32 0, i32 0, !dbg !706
  %13 = load %struct._element*, %struct._element** %12, align 8, !dbg !706
  br label %14, !dbg !707

; <label>:14:                                     ; preds = %10, %9
  %15 = phi %struct._element* [ null, %9 ], [ %13, %10 ], !dbg !708
  br label %17, !dbg !710

; <label>:16:                                     ; preds = %0
  br label %17, !dbg !711

; <label>:17:                                     ; preds = %16, %14
  %18 = phi %struct._element* [ %15, %14 ], [ null, %16 ], !dbg !713
  store %struct._element* %18, %struct._element** %2, align 8, !dbg !715
  br label %19, !dbg !716

; <label>:19:                                     ; preds = %36, %17
  %20 = load %struct._element*, %struct._element** %2, align 8, !dbg !717
  %21 = icmp ne %struct._element* %20, null, !dbg !720
  br i1 %21, label %22, label %27, !dbg !721

; <label>:22:                                     ; preds = %19
  %23 = load %struct._element*, %struct._element** %2, align 8, !dbg !722
  %24 = getelementptr inbounds %struct._element, %struct._element* %23, i32 0, i32 2, !dbg !724
  %25 = load i8*, i8** %24, align 8, !dbg !724
  %26 = bitcast i8* %25 to %struct._interface*, !dbg !725
  store %struct._interface* %26, %struct._interface** %1, align 8, !dbg !726
  br label %27

; <label>:27:                                     ; preds = %22, %19
  %28 = phi i1 [ false, %19 ], [ true, %22 ]
  br i1 %28, label %29, label %40, !dbg !727

; <label>:29:                                     ; preds = %27
  %30 = load %struct._interface*, %struct._interface** %1, align 8, !dbg !729
  %31 = getelementptr inbounds %struct._interface, %struct._interface* %30, i32 0, i32 5, !dbg !731
  store i8 0, i8* %31, align 4, !dbg !732
  %32 = load %struct._interface*, %struct._interface** %1, align 8, !dbg !733
  %33 = getelementptr inbounds %struct._interface, %struct._interface* %32, i32 0, i32 18, !dbg !734
  store %struct._garp_delay* null, %struct._garp_delay** %33, align 8, !dbg !735
  %34 = load %struct._interface*, %struct._interface** %1, align 8, !dbg !736
  %35 = getelementptr inbounds %struct._interface, %struct._interface* %34, i32 0, i32 26, !dbg !737
  call void @free_list(%struct._list** %35), !dbg !738
  br label %36, !dbg !739

; <label>:36:                                     ; preds = %29
  %37 = load %struct._element*, %struct._element** %2, align 8, !dbg !740
  %38 = getelementptr inbounds %struct._element, %struct._element* %37, i32 0, i32 0, !dbg !742
  %39 = load %struct._element*, %struct._element** %38, align 8, !dbg !742
  store %struct._element* %39, %struct._element** %2, align 8, !dbg !743
  br label %19, !dbg !744, !llvm.loop !745

; <label>:40:                                     ; preds = %27
  ret void, !dbg !747
}

declare void @free_list(%struct._list**) #3

; Function Attrs: nounwind uwtable
define void @alloc_garp_delay() #0 !dbg !748 {
  %1 = load %struct._list*, %struct._list** @garp_delay, align 8, !dbg !749
  %2 = icmp ne %struct._list* %1, null, !dbg !751
  br i1 %2, label %5, label %3, !dbg !752

; <label>:3:                                      ; preds = %0
  %4 = call %struct._list* @alloc_list(void (i8*)* @free_garp_delay, void (%struct._IO_FILE*, i8*)* @dump_garp_delay), !dbg !753
  store %struct._list* %4, %struct._list** @garp_delay, align 8, !dbg !754
  br label %5, !dbg !755

; <label>:5:                                      ; preds = %3, %0
  %6 = load %struct._list*, %struct._list** @garp_delay, align 8, !dbg !756
  %7 = call i8* @zalloc(i64 88), !dbg !757
  call void @list_add(%struct._list* %6, i8* %7), !dbg !758
  ret void, !dbg !760
}

declare %struct._list* @alloc_list(void (i8*)*, void (%struct._IO_FILE*, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal void @free_garp_delay(i8*) #0 !dbg !761 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !762, metadata !361), !dbg !763
  %3 = load i8*, i8** %2, align 8, !dbg !764
  call void @free(i8* %3) #9, !dbg !765
  store i8* null, i8** %2, align 8, !dbg !766
  ret void, !dbg !767
}

; Function Attrs: nounwind uwtable
define internal void @dump_garp_delay(%struct._IO_FILE*, i8*) #0 !dbg !768 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._garp_delay*, align 8
  %6 = alloca [26 x i8], align 16
  %7 = alloca %struct._interface*, align 8
  %8 = alloca %struct._element*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !769, metadata !361), !dbg !770
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !771, metadata !361), !dbg !772
  call void @llvm.dbg.declare(metadata %struct._garp_delay** %5, metadata !773, metadata !361), !dbg !774
  %9 = load i8*, i8** %4, align 8, !dbg !775
  %10 = bitcast i8* %9 to %struct._garp_delay*, !dbg !775
  store %struct._garp_delay* %10, %struct._garp_delay** %5, align 8, !dbg !774
  call void @llvm.dbg.declare(metadata [26 x i8]* %6, metadata !776, metadata !361), !dbg !780
  call void @llvm.dbg.declare(metadata %struct._interface** %7, metadata !781, metadata !361), !dbg !782
  call void @llvm.dbg.declare(metadata %struct._element** %8, metadata !783, metadata !361), !dbg !784
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !785
  %12 = load %struct._garp_delay*, %struct._garp_delay** %5, align 8, !dbg !786
  %13 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %12, i32 0, i32 6, !dbg !787
  %14 = load i32, i32* %13, align 8, !dbg !787
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i32 0, i32 0), i32 %14), !dbg !788
  %15 = load %struct._garp_delay*, %struct._garp_delay** %5, align 8, !dbg !789
  %16 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %15, i32 0, i32 1, !dbg !791
  %17 = load i8, i8* %16, align 8, !dbg !791
  %18 = trunc i8 %17 to i1, !dbg !791
  br i1 %18, label %19, label %57, !dbg !792

; <label>:19:                                     ; preds = %2
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !793
  %21 = load %struct._garp_delay*, %struct._garp_delay** %5, align 8, !dbg !795
  %22 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %21, i32 0, i32 0, !dbg !796
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0, !dbg !797
  %24 = load i64, i64* %23, align 8, !dbg !797
  %25 = sitofp i64 %24 to double, !dbg !795
  %26 = load %struct._garp_delay*, %struct._garp_delay** %5, align 8, !dbg !798
  %27 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %26, i32 0, i32 0, !dbg !799
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %27, i32 0, i32 1, !dbg !800
  %29 = load i64, i64* %28, align 8, !dbg !800
  %30 = sitofp i64 %29 to double, !dbg !801
  %31 = fdiv double %30, 1.000000e+06, !dbg !802
  %32 = fadd double %25, %31, !dbg !803
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), double %32), !dbg !804
  %33 = load %struct._garp_delay*, %struct._garp_delay** %5, align 8, !dbg !805
  %34 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %33, i32 0, i32 4, !dbg !807
  %35 = getelementptr inbounds %struct.timeval, %struct.timeval* %34, i32 0, i32 0, !dbg !808
  %36 = getelementptr inbounds [26 x i8], [26 x i8]* %6, i32 0, i32 0, !dbg !809
  %37 = call i8* @ctime_r(i64* %35, i8* %36) #9, !dbg !810
  %38 = icmp ne i8* %37, null, !dbg !810
  br i1 %38, label %42, label %39, !dbg !811

; <label>:39:                                     ; preds = %19
  %40 = getelementptr inbounds [26 x i8], [26 x i8]* %6, i32 0, i32 0, !dbg !812
  %41 = call i8* @strcpy(i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0)) #9, !dbg !813
  br label %42, !dbg !813

; <label>:42:                                     ; preds = %39, %19
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !814
  %44 = load %struct._garp_delay*, %struct._garp_delay** %5, align 8, !dbg !815
  %45 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %44, i32 0, i32 4, !dbg !816
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %45, i32 0, i32 0, !dbg !817
  %47 = load i64, i64* %46, align 8, !dbg !817
  %48 = load %struct._garp_delay*, %struct._garp_delay** %5, align 8, !dbg !818
  %49 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %48, i32 0, i32 4, !dbg !819
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %49, i32 0, i32 1, !dbg !820
  %51 = load i64, i64* %50, align 8, !dbg !820
  %52 = getelementptr inbounds [26 x i8], [26 x i8]* %6, i32 0, i32 0, !dbg !821
  %53 = load %struct._garp_delay*, %struct._garp_delay** %5, align 8, !dbg !822
  %54 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %53, i32 0, i32 4, !dbg !823
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %54, i32 0, i32 1, !dbg !824
  %56 = load i64, i64* %55, align 8, !dbg !824
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i32 0, i32 0), i64 %47, i64 %51, i8* %52, i64 %56), !dbg !825
  br label %57, !dbg !826

; <label>:57:                                     ; preds = %42, %2
  %58 = load %struct._garp_delay*, %struct._garp_delay** %5, align 8, !dbg !827
  %59 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %58, i32 0, i32 3, !dbg !829
  %60 = load i8, i8* %59, align 8, !dbg !829
  %61 = trunc i8 %60 to i1, !dbg !829
  br i1 %61, label %62, label %100, !dbg !830

; <label>:62:                                     ; preds = %57
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !831
  %64 = load %struct._garp_delay*, %struct._garp_delay** %5, align 8, !dbg !833
  %65 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %64, i32 0, i32 2, !dbg !834
  %66 = getelementptr inbounds %struct.timeval, %struct.timeval* %65, i32 0, i32 0, !dbg !835
  %67 = load i64, i64* %66, align 8, !dbg !835
  %68 = sitofp i64 %67 to double, !dbg !833
  %69 = load %struct._garp_delay*, %struct._garp_delay** %5, align 8, !dbg !836
  %70 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %69, i32 0, i32 2, !dbg !837
  %71 = getelementptr inbounds %struct.timeval, %struct.timeval* %70, i32 0, i32 1, !dbg !838
  %72 = load i64, i64* %71, align 8, !dbg !838
  %73 = sitofp i64 %72 to double, !dbg !839
  %74 = fdiv double %73, 1.000000e+06, !dbg !840
  %75 = fadd double %68, %74, !dbg !841
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0), double %75), !dbg !842
  %76 = load %struct._garp_delay*, %struct._garp_delay** %5, align 8, !dbg !843
  %77 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %76, i32 0, i32 5, !dbg !845
  %78 = getelementptr inbounds %struct.timeval, %struct.timeval* %77, i32 0, i32 0, !dbg !846
  %79 = getelementptr inbounds [26 x i8], [26 x i8]* %6, i32 0, i32 0, !dbg !847
  %80 = call i8* @ctime_r(i64* %78, i8* %79) #9, !dbg !848
  %81 = icmp ne i8* %80, null, !dbg !848
  br i1 %81, label %85, label %82, !dbg !849

; <label>:82:                                     ; preds = %62
  %83 = getelementptr inbounds [26 x i8], [26 x i8]* %6, i32 0, i32 0, !dbg !850
  %84 = call i8* @strcpy(i8* %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0)) #9, !dbg !851
  br label %85, !dbg !851

; <label>:85:                                     ; preds = %82, %62
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !852
  %87 = load %struct._garp_delay*, %struct._garp_delay** %5, align 8, !dbg !853
  %88 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %87, i32 0, i32 5, !dbg !854
  %89 = getelementptr inbounds %struct.timeval, %struct.timeval* %88, i32 0, i32 0, !dbg !855
  %90 = load i64, i64* %89, align 8, !dbg !855
  %91 = load %struct._garp_delay*, %struct._garp_delay** %5, align 8, !dbg !856
  %92 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %91, i32 0, i32 5, !dbg !857
  %93 = getelementptr inbounds %struct.timeval, %struct.timeval* %92, i32 0, i32 1, !dbg !858
  %94 = load i64, i64* %93, align 8, !dbg !858
  %95 = getelementptr inbounds [26 x i8], [26 x i8]* %6, i32 0, i32 0, !dbg !859
  %96 = load %struct._garp_delay*, %struct._garp_delay** %5, align 8, !dbg !860
  %97 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %96, i32 0, i32 5, !dbg !861
  %98 = getelementptr inbounds %struct.timeval, %struct.timeval* %97, i32 0, i32 1, !dbg !862
  %99 = load i64, i64* %98, align 8, !dbg !862
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %86, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i32 0, i32 0), i64 %90, i64 %94, i8* %95, i64 %99), !dbg !863
  br label %108, !dbg !864

; <label>:100:                                    ; preds = %57
  %101 = load %struct._garp_delay*, %struct._garp_delay** %5, align 8, !dbg !865
  %102 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %101, i32 0, i32 1, !dbg !867
  %103 = load i8, i8* %102, align 8, !dbg !867
  %104 = trunc i8 %103 to i1, !dbg !867
  br i1 %104, label %107, label %105, !dbg !868

; <label>:105:                                    ; preds = %100
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !869
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %106, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0)), !dbg !870
  br label %107, !dbg !870

; <label>:107:                                    ; preds = %105, %100
  br label %108

; <label>:108:                                    ; preds = %107, %85
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !871
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0)), !dbg !872
  %110 = load %struct._list*, %struct._list** @if_queue, align 8, !dbg !873
  %111 = icmp ne %struct._list* %110, null, !dbg !875
  br i1 %111, label %112, label %122, !dbg !875

; <label>:112:                                    ; preds = %108
  %113 = load %struct._list*, %struct._list** @if_queue, align 8, !dbg !876
  %114 = icmp ne %struct._list* %113, null, !dbg !878
  br i1 %114, label %116, label %115, !dbg !879

; <label>:115:                                    ; preds = %112
  br label %120, !dbg !880

; <label>:116:                                    ; preds = %112
  %117 = load %struct._list*, %struct._list** @if_queue, align 8, !dbg !882
  %118 = getelementptr inbounds %struct._list, %struct._list* %117, i32 0, i32 0, !dbg !884
  %119 = load %struct._element*, %struct._element** %118, align 8, !dbg !884
  br label %120, !dbg !885

; <label>:120:                                    ; preds = %116, %115
  %121 = phi %struct._element* [ null, %115 ], [ %119, %116 ], !dbg !886
  br label %123, !dbg !888

; <label>:122:                                    ; preds = %108
  br label %123, !dbg !889

; <label>:123:                                    ; preds = %122, %120
  %124 = phi %struct._element* [ %121, %120 ], [ null, %122 ], !dbg !891
  store %struct._element* %124, %struct._element** %8, align 8, !dbg !893
  br label %125, !dbg !894

; <label>:125:                                    ; preds = %147, %123
  %126 = load %struct._element*, %struct._element** %8, align 8, !dbg !895
  %127 = icmp ne %struct._element* %126, null, !dbg !898
  br i1 %127, label %128, label %133, !dbg !899

; <label>:128:                                    ; preds = %125
  %129 = load %struct._element*, %struct._element** %8, align 8, !dbg !900
  %130 = getelementptr inbounds %struct._element, %struct._element* %129, i32 0, i32 2, !dbg !902
  %131 = load i8*, i8** %130, align 8, !dbg !902
  %132 = bitcast i8* %131 to %struct._interface*, !dbg !903
  store %struct._interface* %132, %struct._interface** %7, align 8, !dbg !904
  br label %133

; <label>:133:                                    ; preds = %128, %125
  %134 = phi i1 [ false, %125 ], [ true, %128 ]
  br i1 %134, label %135, label %151, !dbg !905

; <label>:135:                                    ; preds = %133
  %136 = load %struct._interface*, %struct._interface** %7, align 8, !dbg !907
  %137 = getelementptr inbounds %struct._interface, %struct._interface* %136, i32 0, i32 18, !dbg !910
  %138 = load %struct._garp_delay*, %struct._garp_delay** %137, align 8, !dbg !910
  %139 = load %struct._garp_delay*, %struct._garp_delay** %5, align 8, !dbg !911
  %140 = icmp eq %struct._garp_delay* %138, %139, !dbg !912
  br i1 %140, label %141, label %146, !dbg !913

; <label>:141:                                    ; preds = %135
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !914
  %143 = load %struct._interface*, %struct._interface** %7, align 8, !dbg !915
  %144 = getelementptr inbounds %struct._interface, %struct._interface* %143, i32 0, i32 0, !dbg !916
  %145 = getelementptr inbounds [16 x i8], [16 x i8]* %144, i32 0, i32 0, !dbg !915
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* %145), !dbg !917
  br label %146, !dbg !917

; <label>:146:                                    ; preds = %141, %135
  br label %147, !dbg !918

; <label>:147:                                    ; preds = %146
  %148 = load %struct._element*, %struct._element** %8, align 8, !dbg !919
  %149 = getelementptr inbounds %struct._element, %struct._element* %148, i32 0, i32 0, !dbg !921
  %150 = load %struct._element*, %struct._element** %149, align 8, !dbg !921
  store %struct._element* %150, %struct._element** %8, align 8, !dbg !922
  br label %125, !dbg !923, !llvm.loop !924

; <label>:151:                                    ; preds = %133
  ret void, !dbg !926
}

declare void @list_add(%struct._list*, i8*) #3

; Function Attrs: nounwind uwtable
define void @set_default_garp_delay() #0 !dbg !927 {
  %1 = alloca %struct._garp_delay, align 8
  %2 = alloca %struct._element*, align 8
  %3 = alloca %struct._interface*, align 8
  %4 = alloca %struct._garp_delay*, align 8
  %5 = alloca %struct._vrrp_t*, align 8
  call void @llvm.dbg.declare(metadata %struct._garp_delay* %1, metadata !928, metadata !361), !dbg !929
  call void @llvm.dbg.declare(metadata %struct._element** %2, metadata !930, metadata !361), !dbg !931
  call void @llvm.dbg.declare(metadata %struct._interface** %3, metadata !932, metadata !361), !dbg !933
  call void @llvm.dbg.declare(metadata %struct._garp_delay** %4, metadata !934, metadata !361), !dbg !935
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %5, metadata !936, metadata !361), !dbg !1202
  %6 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1203
  %7 = getelementptr inbounds %struct._data, %struct._data* %6, i32 0, i32 30, !dbg !1205
  %8 = load i32, i32* %7, align 8, !dbg !1205
  %9 = icmp ne i32 %8, 0, !dbg !1203
  br i1 %9, label %10, label %26, !dbg !1206

; <label>:10:                                     ; preds = %0
  %11 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1207
  %12 = getelementptr inbounds %struct._data, %struct._data* %11, i32 0, i32 30, !dbg !1209
  %13 = load i32, i32* %12, align 8, !dbg !1209
  %14 = udiv i32 %13, 1000000, !dbg !1210
  %15 = zext i32 %14 to i64, !dbg !1207
  %16 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %1, i32 0, i32 0, !dbg !1211
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0, !dbg !1212
  store i64 %15, i64* %17, align 8, !dbg !1213
  %18 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1214
  %19 = getelementptr inbounds %struct._data, %struct._data* %18, i32 0, i32 30, !dbg !1215
  %20 = load i32, i32* %19, align 8, !dbg !1215
  %21 = urem i32 %20, 1000000, !dbg !1216
  %22 = zext i32 %21 to i64, !dbg !1214
  %23 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %1, i32 0, i32 0, !dbg !1217
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %23, i32 0, i32 1, !dbg !1218
  store i64 %22, i64* %24, align 8, !dbg !1219
  %25 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %1, i32 0, i32 1, !dbg !1220
  store i8 1, i8* %25, align 8, !dbg !1221
  br label %26, !dbg !1222

; <label>:26:                                     ; preds = %10, %0
  %27 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1223
  %28 = getelementptr inbounds %struct._data, %struct._data* %27, i32 0, i32 31, !dbg !1225
  %29 = load i32, i32* %28, align 4, !dbg !1225
  %30 = icmp ne i32 %29, 0, !dbg !1223
  br i1 %30, label %31, label %47, !dbg !1226

; <label>:31:                                     ; preds = %26
  %32 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1227
  %33 = getelementptr inbounds %struct._data, %struct._data* %32, i32 0, i32 31, !dbg !1229
  %34 = load i32, i32* %33, align 4, !dbg !1229
  %35 = udiv i32 %34, 1000000, !dbg !1230
  %36 = zext i32 %35 to i64, !dbg !1227
  %37 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %1, i32 0, i32 2, !dbg !1231
  %38 = getelementptr inbounds %struct.timeval, %struct.timeval* %37, i32 0, i32 0, !dbg !1232
  store i64 %36, i64* %38, align 8, !dbg !1233
  %39 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1234
  %40 = getelementptr inbounds %struct._data, %struct._data* %39, i32 0, i32 31, !dbg !1235
  %41 = load i32, i32* %40, align 4, !dbg !1235
  %42 = urem i32 %41, 1000000, !dbg !1236
  %43 = zext i32 %42 to i64, !dbg !1234
  %44 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %1, i32 0, i32 2, !dbg !1237
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %44, i32 0, i32 1, !dbg !1238
  store i64 %43, i64* %45, align 8, !dbg !1239
  %46 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %1, i32 0, i32 3, !dbg !1240
  store i8 1, i8* %46, align 8, !dbg !1241
  br label %47, !dbg !1242

; <label>:47:                                     ; preds = %31, %26
  %48 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1243
  %49 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %48, i32 0, i32 5, !dbg !1245
  %50 = load %struct._list*, %struct._list** %49, align 8, !dbg !1245
  %51 = icmp ne %struct._list* %50, null, !dbg !1246
  br i1 %51, label %52, label %66, !dbg !1246

; <label>:52:                                     ; preds = %47
  %53 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1247
  %54 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %53, i32 0, i32 5, !dbg !1249
  %55 = load %struct._list*, %struct._list** %54, align 8, !dbg !1249
  %56 = icmp ne %struct._list* %55, null, !dbg !1250
  br i1 %56, label %58, label %57, !dbg !1251

; <label>:57:                                     ; preds = %52
  br label %64, !dbg !1252

; <label>:58:                                     ; preds = %52
  %59 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1254
  %60 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %59, i32 0, i32 5, !dbg !1256
  %61 = load %struct._list*, %struct._list** %60, align 8, !dbg !1256
  %62 = getelementptr inbounds %struct._list, %struct._list* %61, i32 0, i32 0, !dbg !1257
  %63 = load %struct._element*, %struct._element** %62, align 8, !dbg !1257
  br label %64, !dbg !1258

; <label>:64:                                     ; preds = %58, %57
  %65 = phi %struct._element* [ null, %57 ], [ %63, %58 ], !dbg !1259
  br label %67, !dbg !1261

; <label>:66:                                     ; preds = %47
  br label %67, !dbg !1262

; <label>:67:                                     ; preds = %66, %64
  %68 = phi %struct._element* [ %65, %64 ], [ null, %66 ], !dbg !1264
  store %struct._element* %68, %struct._element** %2, align 8, !dbg !1266
  br label %69, !dbg !1267

; <label>:69:                                     ; preds = %103, %67
  %70 = load %struct._element*, %struct._element** %2, align 8, !dbg !1268
  %71 = icmp ne %struct._element* %70, null, !dbg !1271
  br i1 %71, label %72, label %77, !dbg !1272

; <label>:72:                                     ; preds = %69
  %73 = load %struct._element*, %struct._element** %2, align 8, !dbg !1273
  %74 = getelementptr inbounds %struct._element, %struct._element* %73, i32 0, i32 2, !dbg !1275
  %75 = load i8*, i8** %74, align 8, !dbg !1275
  %76 = bitcast i8* %75 to %struct._vrrp_t*, !dbg !1276
  store %struct._vrrp_t* %76, %struct._vrrp_t** %5, align 8, !dbg !1277
  br label %77

; <label>:77:                                     ; preds = %72, %69
  %78 = phi i1 [ false, %69 ], [ true, %72 ]
  br i1 %78, label %79, label %107, !dbg !1278

; <label>:79:                                     ; preds = %77
  %80 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !1280
  %81 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %80, i32 0, i32 4, !dbg !1282
  %82 = load %struct._interface*, %struct._interface** %81, align 8, !dbg !1282
  %83 = getelementptr inbounds %struct._interface, %struct._interface* %82, i32 0, i32 14, !dbg !1283
  %84 = load %struct._interface*, %struct._interface** %83, align 8, !dbg !1283
  store %struct._interface* %84, %struct._interface** %3, align 8, !dbg !1284
  %85 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !1285
  %86 = getelementptr inbounds %struct._interface, %struct._interface* %85, i32 0, i32 18, !dbg !1287
  %87 = load %struct._garp_delay*, %struct._garp_delay** %86, align 8, !dbg !1287
  %88 = icmp ne %struct._garp_delay* %87, null, !dbg !1285
  br i1 %88, label %102, label %89, !dbg !1288

; <label>:89:                                     ; preds = %79
  call void @alloc_garp_delay(), !dbg !1289
  %90 = load %struct._list*, %struct._list** @garp_delay, align 8, !dbg !1291
  %91 = getelementptr inbounds %struct._list, %struct._list* %90, i32 0, i32 1, !dbg !1292
  %92 = load %struct._element*, %struct._element** %91, align 8, !dbg !1292
  %93 = getelementptr inbounds %struct._element, %struct._element* %92, i32 0, i32 2, !dbg !1293
  %94 = load i8*, i8** %93, align 8, !dbg !1293
  %95 = bitcast i8* %94 to %struct._garp_delay*, !dbg !1294
  store %struct._garp_delay* %95, %struct._garp_delay** %4, align 8, !dbg !1295
  %96 = load %struct._garp_delay*, %struct._garp_delay** %4, align 8, !dbg !1296
  %97 = bitcast %struct._garp_delay* %96 to i8*, !dbg !1297
  %98 = bitcast %struct._garp_delay* %1 to i8*, !dbg !1297
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* %98, i64 88, i32 8, i1 false), !dbg !1297
  %99 = load %struct._garp_delay*, %struct._garp_delay** %4, align 8, !dbg !1298
  %100 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !1299
  %101 = getelementptr inbounds %struct._interface, %struct._interface* %100, i32 0, i32 18, !dbg !1300
  store %struct._garp_delay* %99, %struct._garp_delay** %101, align 8, !dbg !1301
  br label %102, !dbg !1302

; <label>:102:                                    ; preds = %89, %79
  br label %103, !dbg !1303

; <label>:103:                                    ; preds = %102
  %104 = load %struct._element*, %struct._element** %2, align 8, !dbg !1304
  %105 = getelementptr inbounds %struct._element, %struct._element* %104, i32 0, i32 0, !dbg !1306
  %106 = load %struct._element*, %struct._element** %105, align 8, !dbg !1306
  store %struct._element* %106, %struct._element** %2, align 8, !dbg !1307
  br label %69, !dbg !1308, !llvm.loop !1309

; <label>:107:                                    ; preds = %77
  ret void, !dbg !1311
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define void @init_interface_linkbeat() #0 !dbg !1312 {
  %1 = alloca %struct._interface*, align 8
  %2 = alloca %struct._element*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata %struct._interface** %1, metadata !1313, metadata !361), !dbg !1314
  call void @llvm.dbg.declare(metadata %struct._element** %2, metadata !1315, metadata !361), !dbg !1316
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1317, metadata !361), !dbg !1318
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1319, metadata !361), !dbg !1320
  store i8 0, i8* %4, align 1, !dbg !1320
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1321, metadata !361), !dbg !1322
  %6 = load %struct._list*, %struct._list** @if_queue, align 8, !dbg !1323
  %7 = icmp ne %struct._list* %6, null, !dbg !1325
  br i1 %7, label %9, label %8, !dbg !1326

; <label>:8:                                      ; preds = %0
  br label %13, !dbg !1327

; <label>:9:                                      ; preds = %0
  %10 = load %struct._list*, %struct._list** @if_queue, align 8, !dbg !1329
  %11 = getelementptr inbounds %struct._list, %struct._list* %10, i32 0, i32 0, !dbg !1331
  %12 = load %struct._element*, %struct._element** %11, align 8, !dbg !1331
  br label %13, !dbg !1332

; <label>:13:                                     ; preds = %9, %8
  %14 = phi %struct._element* [ null, %8 ], [ %12, %9 ], !dbg !1333
  store %struct._element* %14, %struct._element** %2, align 8, !dbg !1335
  br label %15, !dbg !1336

; <label>:15:                                     ; preds = %92, %13
  %16 = load %struct._element*, %struct._element** %2, align 8, !dbg !1337
  %17 = icmp ne %struct._element* %16, null, !dbg !1340
  br i1 %17, label %18, label %96, !dbg !1340

; <label>:18:                                     ; preds = %15
  %19 = load %struct._element*, %struct._element** %2, align 8, !dbg !1341
  %20 = getelementptr inbounds %struct._element, %struct._element* %19, i32 0, i32 2, !dbg !1343
  %21 = load i8*, i8** %20, align 8, !dbg !1343
  %22 = bitcast i8* %21 to %struct._interface*, !dbg !1344
  store %struct._interface* %22, %struct._interface** %1, align 8, !dbg !1345
  %23 = load %struct._interface*, %struct._interface** %1, align 8, !dbg !1346
  %24 = getelementptr inbounds %struct._interface, %struct._interface* %23, i32 0, i32 5, !dbg !1348
  %25 = load i8, i8* %24, align 4, !dbg !1348
  %26 = trunc i8 %25 to i1, !dbg !1348
  br i1 %26, label %28, label %27, !dbg !1349

; <label>:27:                                     ; preds = %18
  br label %92, !dbg !1350

; <label>:28:                                     ; preds = %18
  %29 = load %struct._interface*, %struct._interface** %1, align 8, !dbg !1351
  %30 = getelementptr inbounds %struct._interface, %struct._interface* %29, i32 0, i32 26, !dbg !1353
  %31 = load %struct._list*, %struct._list** %30, align 8, !dbg !1353
  %32 = icmp ne %struct._list* %31, null, !dbg !1351
  br i1 %32, label %34, label %33, !dbg !1354

; <label>:33:                                     ; preds = %28
  br label %92, !dbg !1355

; <label>:34:                                     ; preds = %28
  %35 = load %struct._interface*, %struct._interface** %1, align 8, !dbg !1356
  %36 = getelementptr inbounds %struct._interface, %struct._interface* %35, i32 0, i32 12, !dbg !1358
  %37 = load i8, i8* %36, align 4, !dbg !1358
  %38 = trunc i8 %37 to i1, !dbg !1358
  br i1 %38, label %39, label %40, !dbg !1359

; <label>:39:                                     ; preds = %34
  br label %92, !dbg !1360

; <label>:40:                                     ; preds = %34
  store i8 1, i8* %4, align 1, !dbg !1361
  %41 = load %struct._interface*, %struct._interface** %1, align 8, !dbg !1362
  %42 = getelementptr inbounds %struct._interface, %struct._interface* %41, i32 0, i32 4, !dbg !1363
  store i32 65, i32* %42, align 8, !dbg !1364
  %43 = load %struct._interface*, %struct._interface** %1, align 8, !dbg !1365
  %44 = getelementptr inbounds %struct._interface, %struct._interface* %43, i32 0, i32 11, !dbg !1366
  store i32 1, i32* %44, align 8, !dbg !1367
  %45 = load %struct._interface*, %struct._interface** %1, align 8, !dbg !1368
  %46 = getelementptr inbounds %struct._interface, %struct._interface* %45, i32 0, i32 0, !dbg !1369
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %46, i32 0, i32 0, !dbg !1368
  %48 = call i32 @if_mii_probe(i8* %47), !dbg !1370
  store i32 %48, i32* %3, align 4, !dbg !1371
  %49 = load i32, i32* %3, align 4, !dbg !1372
  %50 = icmp sge i32 %49, 0, !dbg !1374
  br i1 %50, label %51, label %59, !dbg !1375

; <label>:51:                                     ; preds = %40
  %52 = load %struct._interface*, %struct._interface** %1, align 8, !dbg !1376
  %53 = getelementptr inbounds %struct._interface, %struct._interface* %52, i32 0, i32 11, !dbg !1378
  store i32 2, i32* %53, align 8, !dbg !1379
  %54 = load i32, i32* %3, align 4, !dbg !1380
  %55 = icmp ne i32 %54, 0, !dbg !1381
  %56 = xor i1 %55, true, !dbg !1381
  %57 = xor i1 %56, true, !dbg !1382
  %58 = zext i1 %57 to i8, !dbg !1383
  store i8 %58, i8* %5, align 1, !dbg !1383
  br label %75, !dbg !1384

; <label>:59:                                     ; preds = %40
  %60 = load %struct._interface*, %struct._interface** %1, align 8, !dbg !1385
  %61 = getelementptr inbounds %struct._interface, %struct._interface* %60, i32 0, i32 0, !dbg !1388
  %62 = getelementptr inbounds [16 x i8], [16 x i8]* %61, i32 0, i32 0, !dbg !1385
  %63 = call i32 @if_ethtool_probe(i8* %62), !dbg !1389
  store i32 %63, i32* %3, align 4, !dbg !1390
  %64 = icmp sge i32 %63, 0, !dbg !1391
  br i1 %64, label %65, label %73, !dbg !1392

; <label>:65:                                     ; preds = %59
  %66 = load %struct._interface*, %struct._interface** %1, align 8, !dbg !1393
  %67 = getelementptr inbounds %struct._interface, %struct._interface* %66, i32 0, i32 11, !dbg !1395
  store i32 4, i32* %67, align 8, !dbg !1396
  %68 = load i32, i32* %3, align 4, !dbg !1397
  %69 = icmp ne i32 %68, 0, !dbg !1398
  %70 = xor i1 %69, true, !dbg !1398
  %71 = xor i1 %70, true, !dbg !1399
  %72 = zext i1 %71 to i8, !dbg !1400
  store i8 %72, i8* %5, align 1, !dbg !1400
  br label %74, !dbg !1401

; <label>:73:                                     ; preds = %59
  store i8 1, i8* %5, align 1, !dbg !1402
  br label %74

; <label>:74:                                     ; preds = %73, %65
  br label %75

; <label>:75:                                     ; preds = %74, %51
  %76 = load i8, i8* %5, align 1, !dbg !1403
  %77 = trunc i8 %76 to i1, !dbg !1403
  br i1 %77, label %78, label %82, !dbg !1405

; <label>:78:                                     ; preds = %75
  %79 = load %struct._interface*, %struct._interface** %1, align 8, !dbg !1406
  %80 = call zeroext i1 @if_ioctl_flags(%struct._interface* %79), !dbg !1407
  %81 = zext i1 %80 to i8, !dbg !1408
  store i8 %81, i8* %5, align 1, !dbg !1408
  br label %82, !dbg !1409

; <label>:82:                                     ; preds = %78, %75
  %83 = load i8, i8* %5, align 1, !dbg !1410
  %84 = trunc i8 %83 to i1, !dbg !1410
  %85 = select i1 %84, i32 65, i32 0, !dbg !1410
  %86 = load %struct._interface*, %struct._interface** %1, align 8, !dbg !1411
  %87 = getelementptr inbounds %struct._interface, %struct._interface* %86, i32 0, i32 4, !dbg !1412
  store i32 %85, i32* %87, align 8, !dbg !1413
  %88 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !1414
  %89 = load %struct._interface*, %struct._interface** %1, align 8, !dbg !1415
  %90 = bitcast %struct._interface* %89 to i8*, !dbg !1415
  %91 = call %struct._thread* @thread_add_timer(%struct._thread_master* %88, i32 (%struct._thread*)* @if_linkbeat_refresh_thread, i8* %90, i64 1000000), !dbg !1416
  br label %92, !dbg !1417

; <label>:92:                                     ; preds = %82, %39, %33, %27
  %93 = load %struct._element*, %struct._element** %2, align 8, !dbg !1418
  %94 = getelementptr inbounds %struct._element, %struct._element* %93, i32 0, i32 0, !dbg !1420
  %95 = load %struct._element*, %struct._element** %94, align 8, !dbg !1420
  store %struct._element* %95, %struct._element** %2, align 8, !dbg !1421
  br label %15, !dbg !1422, !llvm.loop !1423

; <label>:96:                                     ; preds = %15
  %97 = load i8, i8* %4, align 1, !dbg !1425
  %98 = trunc i8 %97 to i1, !dbg !1425
  br i1 %98, label %99, label %100, !dbg !1427

; <label>:99:                                     ; preds = %96
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0)), !dbg !1428
  br label %100, !dbg !1428

; <label>:100:                                    ; preds = %99, %96
  ret void, !dbg !1429
}

; Function Attrs: nounwind uwtable
define internal i32 @if_mii_probe(i8*) #0 !dbg !1430 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mii_ioctl_data*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1433, metadata !361), !dbg !1434
  call void @llvm.dbg.declare(metadata %struct.mii_ioctl_data** %4, metadata !1435, metadata !361), !dbg !1436
  store %struct.mii_ioctl_data* bitcast (%union.anon.7* getelementptr inbounds (%struct.ifreq, %struct.ifreq* @ifr, i32 0, i32 1) to %struct.mii_ioctl_data*), %struct.mii_ioctl_data** %4, align 8, !dbg !1436
  call void @llvm.dbg.declare(metadata i16* %5, metadata !1437, metadata !361), !dbg !1438
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1439, metadata !361), !dbg !1440
  %8 = call i32 @socket(i32 2, i32 524290, i32 0) #9, !dbg !1441
  store i32 %8, i32* %6, align 4, !dbg !1440
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1442, metadata !361), !dbg !1443
  %9 = load i32, i32* %6, align 4, !dbg !1444
  %10 = icmp slt i32 %9, 0, !dbg !1446
  br i1 %10, label %11, label %12, !dbg !1447

; <label>:11:                                     ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !1448
  br label %42, !dbg !1448

; <label>:12:                                     ; preds = %1
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds (%struct.ifreq, %struct.ifreq* @ifr, i32 0, i32 0, i32 0, i32 0), i8 0, i64 40, i32 8, i1 false), !dbg !1449
  %13 = load i8*, i8** %3, align 8, !dbg !1450
  %14 = call i8* @strcpy(i8* getelementptr inbounds (%struct.ifreq, %struct.ifreq* @ifr, i32 0, i32 0, i32 0, i32 0), i8* %13) #9, !dbg !1451
  %15 = load i32, i32* %6, align 4, !dbg !1452
  %16 = call i32 (i32, i64, ...) @ioctl(i32 %15, i64 35143, %struct.ifreq* @ifr) #9, !dbg !1454
  %17 = icmp slt i32 %16, 0, !dbg !1455
  br i1 %17, label %18, label %21, !dbg !1456

; <label>:18:                                     ; preds = %12
  %19 = load i32, i32* %6, align 4, !dbg !1457
  %20 = call i32 @close(i32 %19), !dbg !1459
  store i32 -1, i32* %2, align 4, !dbg !1460
  br label %42, !dbg !1460

; <label>:21:                                     ; preds = %12
  %22 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %4, align 8, !dbg !1461
  %23 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %22, i32 0, i32 0, !dbg !1462
  %24 = load i16, i16* %23, align 2, !dbg !1462
  store i16 %24, i16* %5, align 2, !dbg !1463
  %25 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %4, align 8, !dbg !1464
  %26 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %25, i32 0, i32 1, !dbg !1465
  store i16 1, i16* %26, align 2, !dbg !1466
  %27 = load i32, i32* %6, align 4, !dbg !1467
  %28 = call i32 (i32, i64, ...) @ioctl(i32 %27, i64 35144, %struct.ifreq* @ifr) #9, !dbg !1469
  %29 = icmp slt i32 %28, 0, !dbg !1470
  br i1 %29, label %30, label %33, !dbg !1471

; <label>:30:                                     ; preds = %21
  %31 = load i32, i32* %6, align 4, !dbg !1472
  %32 = call i32 @close(i32 %31), !dbg !1474
  store i32 -1, i32* %2, align 4, !dbg !1475
  br label %42, !dbg !1475

; <label>:33:                                     ; preds = %21
  %34 = load i16, i16* %5, align 2, !dbg !1476
  %35 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %4, align 8, !dbg !1477
  %36 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %35, i32 0, i32 0, !dbg !1478
  store i16 %34, i16* %36, align 2, !dbg !1479
  %37 = load i32, i32* %6, align 4, !dbg !1480
  %38 = call i32 @if_mii_status(i32 %37), !dbg !1481
  store i32 %38, i32* %7, align 4, !dbg !1482
  %39 = load i32, i32* %6, align 4, !dbg !1483
  %40 = call i32 @close(i32 %39), !dbg !1484
  %41 = load i32, i32* %7, align 4, !dbg !1485
  store i32 %41, i32* %2, align 4, !dbg !1486
  br label %42, !dbg !1486

; <label>:42:                                     ; preds = %33, %30, %18, %11
  %43 = load i32, i32* %2, align 4, !dbg !1487
  ret i32 %43, !dbg !1487
}

; Function Attrs: nounwind uwtable
define internal i32 @if_ethtool_probe(i8*) #0 !dbg !1488 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1489, metadata !361), !dbg !1490
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1491, metadata !361), !dbg !1492
  %6 = call i32 @socket(i32 2, i32 524290, i32 0) #9, !dbg !1493
  store i32 %6, i32* %4, align 4, !dbg !1492
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1494, metadata !361), !dbg !1495
  %7 = load i32, i32* %4, align 4, !dbg !1496
  %8 = icmp slt i32 %7, 0, !dbg !1498
  br i1 %8, label %9, label %10, !dbg !1499

; <label>:9:                                      ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !1500
  br label %18, !dbg !1500

; <label>:10:                                     ; preds = %1
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds (%struct.ifreq, %struct.ifreq* @ifr, i32 0, i32 0, i32 0, i32 0), i8 0, i64 40, i32 8, i1 false), !dbg !1501
  %11 = load i8*, i8** %3, align 8, !dbg !1502
  %12 = call i8* @strcpy(i8* getelementptr inbounds (%struct.ifreq, %struct.ifreq* @ifr, i32 0, i32 0, i32 0, i32 0), i8* %11) #9, !dbg !1503
  %13 = load i32, i32* %4, align 4, !dbg !1504
  %14 = call i32 @if_ethtool_status(i32 %13), !dbg !1505
  store i32 %14, i32* %5, align 4, !dbg !1506
  %15 = load i32, i32* %4, align 4, !dbg !1507
  %16 = call i32 @close(i32 %15), !dbg !1508
  %17 = load i32, i32* %5, align 4, !dbg !1509
  store i32 %17, i32* %2, align 4, !dbg !1510
  br label %18, !dbg !1510

; <label>:18:                                     ; preds = %10, %9
  %19 = load i32, i32* %2, align 4, !dbg !1511
  ret i32 %19, !dbg !1511
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @if_ioctl_flags(%struct._interface*) #0 !dbg !1512 {
  %2 = alloca i1, align 1
  %3 = alloca %struct._interface*, align 8
  %4 = alloca i32, align 4
  store %struct._interface* %0, %struct._interface** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %3, metadata !1515, metadata !361), !dbg !1516
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1517, metadata !361), !dbg !1518
  %5 = call i32 @socket(i32 2, i32 524290, i32 0) #9, !dbg !1519
  store i32 %5, i32* %4, align 4, !dbg !1518
  %6 = load i32, i32* %4, align 4, !dbg !1520
  %7 = icmp slt i32 %6, 0, !dbg !1522
  br i1 %7, label %8, label %9, !dbg !1523

; <label>:8:                                      ; preds = %1
  store i1 true, i1* %2, align 1, !dbg !1524
  br label %27, !dbg !1524

; <label>:9:                                      ; preds = %1
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds (%struct.ifreq, %struct.ifreq* @ifr, i32 0, i32 0, i32 0, i32 0), i8 0, i64 40, i32 8, i1 false), !dbg !1525
  %10 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !1526
  %11 = getelementptr inbounds %struct._interface, %struct._interface* %10, i32 0, i32 0, !dbg !1527
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i32 0, i32 0, !dbg !1526
  %13 = call i8* @strcpy(i8* getelementptr inbounds (%struct.ifreq, %struct.ifreq* @ifr, i32 0, i32 0, i32 0, i32 0), i8* %12) #9, !dbg !1528
  %14 = load i32, i32* %4, align 4, !dbg !1529
  %15 = call i32 (i32, i64, ...) @ioctl(i32 %14, i64 35091, %struct.ifreq* @ifr) #9, !dbg !1531
  %16 = icmp slt i32 %15, 0, !dbg !1532
  br i1 %16, label %17, label %20, !dbg !1533

; <label>:17:                                     ; preds = %9
  %18 = load i32, i32* %4, align 4, !dbg !1534
  %19 = call i32 @close(i32 %18), !dbg !1536
  store i1 true, i1* %2, align 1, !dbg !1537
  br label %27, !dbg !1537

; <label>:20:                                     ; preds = %9
  %21 = load i32, i32* %4, align 4, !dbg !1538
  %22 = call i32 @close(i32 %21), !dbg !1539
  %23 = load i16, i16* bitcast (%union.anon.7* getelementptr inbounds (%struct.ifreq, %struct.ifreq* @ifr, i32 0, i32 1) to i16*), align 8, !dbg !1540
  %24 = sext i16 %23 to i32, !dbg !1541
  %25 = and i32 %24, 65, !dbg !1542
  %26 = icmp eq i32 %25, 65, !dbg !1541
  store i1 %26, i1* %2, align 1, !dbg !1543
  br label %27, !dbg !1543

; <label>:27:                                     ; preds = %20, %17, %8
  %28 = load i1, i1* %2, align 1, !dbg !1544
  ret i1 %28, !dbg !1544
}

declare %struct._thread* @thread_add_timer(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @if_linkbeat_refresh_thread(%struct._thread*) #0 !dbg !1545 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca %struct._interface*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !1548, metadata !361), !dbg !1549
  call void @llvm.dbg.declare(metadata %struct._interface** %3, metadata !1550, metadata !361), !dbg !1551
  %6 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1552
  %7 = getelementptr inbounds %struct._thread, %struct._thread* %6, i32 0, i32 4, !dbg !1553
  %8 = load i8*, i8** %7, align 8, !dbg !1553
  %9 = bitcast i8* %8 to %struct._interface*, !dbg !1554
  store %struct._interface* %9, %struct._interface** %3, align 8, !dbg !1551
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1555, metadata !361), !dbg !1556
  store i8 1, i8* %4, align 1, !dbg !1556
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1557, metadata !361), !dbg !1558
  %10 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !1559
  %11 = getelementptr inbounds %struct._interface, %struct._interface* %10, i32 0, i32 4, !dbg !1560
  %12 = load i32, i32* %11, align 8, !dbg !1560
  %13 = and i32 %12, 65, !dbg !1561
  %14 = icmp eq i32 %13, 65, !dbg !1562
  %15 = zext i1 %14 to i8, !dbg !1563
  store i8 %15, i8* %5, align 1, !dbg !1563
  %16 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !1564
  %17 = getelementptr inbounds %struct._interface, %struct._interface* %16, i32 0, i32 11, !dbg !1566
  %18 = load i32, i32* %17, align 8, !dbg !1566
  %19 = and i32 %18, 2, !dbg !1567
  %20 = icmp ne i32 %19, 0, !dbg !1567
  br i1 %20, label %21, label %28, !dbg !1568

; <label>:21:                                     ; preds = %1
  %22 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !1569
  %23 = getelementptr inbounds %struct._interface, %struct._interface* %22, i32 0, i32 0, !dbg !1570
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i32 0, i32 0, !dbg !1569
  %25 = call i32 @if_mii_probe(i8* %24), !dbg !1571
  %26 = icmp ne i32 %25, 0, !dbg !1571
  %27 = zext i1 %26 to i8, !dbg !1572
  store i8 %27, i8* %4, align 1, !dbg !1572
  br label %42, !dbg !1573

; <label>:28:                                     ; preds = %1
  %29 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !1574
  %30 = getelementptr inbounds %struct._interface, %struct._interface* %29, i32 0, i32 11, !dbg !1576
  %31 = load i32, i32* %30, align 8, !dbg !1576
  %32 = and i32 %31, 4, !dbg !1577
  %33 = icmp ne i32 %32, 0, !dbg !1577
  br i1 %33, label %34, label %41, !dbg !1578

; <label>:34:                                     ; preds = %28
  %35 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !1579
  %36 = getelementptr inbounds %struct._interface, %struct._interface* %35, i32 0, i32 0, !dbg !1580
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %36, i32 0, i32 0, !dbg !1579
  %38 = call i32 @if_ethtool_probe(i8* %37), !dbg !1581
  %39 = icmp ne i32 %38, 0, !dbg !1581
  %40 = zext i1 %39 to i8, !dbg !1582
  store i8 %40, i8* %4, align 1, !dbg !1582
  br label %41, !dbg !1583

; <label>:41:                                     ; preds = %34, %28
  br label %42

; <label>:42:                                     ; preds = %41, %21
  %43 = load i8, i8* %4, align 1, !dbg !1584
  %44 = trunc i8 %43 to i1, !dbg !1584
  br i1 %44, label %45, label %49, !dbg !1586

; <label>:45:                                     ; preds = %42
  %46 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !1587
  %47 = call zeroext i1 @if_ioctl_flags(%struct._interface* %46), !dbg !1588
  %48 = zext i1 %47 to i8, !dbg !1589
  store i8 %48, i8* %4, align 1, !dbg !1589
  br label %49, !dbg !1590

; <label>:49:                                     ; preds = %45, %42
  %50 = load i8, i8* %4, align 1, !dbg !1591
  %51 = trunc i8 %50 to i1, !dbg !1591
  %52 = select i1 %51, i32 65, i32 0, !dbg !1591
  %53 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !1592
  %54 = getelementptr inbounds %struct._interface, %struct._interface* %53, i32 0, i32 4, !dbg !1593
  store i32 %52, i32* %54, align 8, !dbg !1594
  %55 = load i8, i8* %4, align 1, !dbg !1595
  %56 = trunc i8 %55 to i1, !dbg !1595
  %57 = zext i1 %56 to i32, !dbg !1595
  %58 = load i8, i8* %5, align 1, !dbg !1597
  %59 = trunc i8 %58 to i1, !dbg !1597
  %60 = zext i1 %59 to i32, !dbg !1597
  %61 = icmp ne i32 %57, %60, !dbg !1598
  br i1 %61, label %62, label %70, !dbg !1599

; <label>:62:                                     ; preds = %49
  %63 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !1600
  %64 = getelementptr inbounds %struct._interface, %struct._interface* %63, i32 0, i32 0, !dbg !1602
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %64, i32 0, i32 0, !dbg !1600
  %66 = load i8, i8* %4, align 1, !dbg !1603
  %67 = trunc i8 %66 to i1, !dbg !1603
  %68 = select i1 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), !dbg !1603
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i32 0, i32 0), i8* %65, i8* %68), !dbg !1604
  %69 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !1605
  call void @process_if_status_change(%struct._interface* %69), !dbg !1606
  br label %70, !dbg !1607

; <label>:70:                                     ; preds = %62, %49
  %71 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !1608
  %72 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !1609
  %73 = bitcast %struct._interface* %72 to i8*, !dbg !1609
  %74 = call %struct._thread* @thread_add_timer(%struct._thread_master* %71, i32 (%struct._thread*)* @if_linkbeat_refresh_thread, i8* %73, i64 1000000), !dbg !1610
  ret i32 0, !dbg !1611
}

; Function Attrs: nounwind uwtable
define void @free_interface_queue() #0 !dbg !1612 {
  call void @free_list(%struct._list** @if_queue), !dbg !1613
  call void @free_list(%struct._list** @garp_delay), !dbg !1614
  ret void, !dbg !1615
}

; Function Attrs: nounwind uwtable
define void @free_old_interface_queue() #0 !dbg !1616 {
  call void @free_list(%struct._list** @old_garp_delay), !dbg !1617
  ret void, !dbg !1618
}

; Function Attrs: nounwind uwtable
define void @init_interface_queue() #0 !dbg !1619 {
  call void @init_if_queue(), !dbg !1620
  %1 = call i32 @netlink_interface_lookup(i8* null), !dbg !1621
  call void @set_base_ifp(), !dbg !1622
  ret void, !dbg !1623
}

; Function Attrs: nounwind uwtable
define internal void @init_if_queue() #0 !dbg !1624 {
  %1 = call %struct._list* @alloc_list(void (i8*)* @free_if, void (%struct._IO_FILE*, i8*)* @dump_if), !dbg !1625
  store %struct._list* %1, %struct._list** @if_queue, align 8, !dbg !1626
  ret void, !dbg !1627
}

declare i32 @netlink_interface_lookup(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @if_join_vrrp_group(i16 zeroext, i32*, %struct._interface*) #0 !dbg !1628 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i32*, align 8
  %7 = alloca %struct._interface*, align 8
  %8 = alloca %struct.ip_mreqn, align 4
  %9 = alloca %struct.ipv6_mreq, align 4
  %10 = alloca i32, align 4
  store i16 %0, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !1632, metadata !361), !dbg !1633
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1634, metadata !361), !dbg !1635
  store %struct._interface* %2, %struct._interface** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %7, metadata !1636, metadata !361), !dbg !1637
  call void @llvm.dbg.declare(metadata %struct.ip_mreqn* %8, metadata !1638, metadata !361), !dbg !1645
  call void @llvm.dbg.declare(metadata %struct.ipv6_mreq* %9, metadata !1646, metadata !361), !dbg !1651
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1652, metadata !361), !dbg !1653
  store i32 0, i32* %10, align 4, !dbg !1653
  %11 = load i32*, i32** %6, align 8, !dbg !1654
  %12 = load i32, i32* %11, align 4, !dbg !1656
  %13 = icmp slt i32 %12, 0, !dbg !1657
  br i1 %13, label %14, label %15, !dbg !1658

; <label>:14:                                     ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !1659
  br label %74, !dbg !1659

; <label>:15:                                     ; preds = %3
  %16 = load i16, i16* %5, align 2, !dbg !1660
  %17 = zext i16 %16 to i32, !dbg !1660
  %18 = icmp eq i32 %17, 2, !dbg !1662
  br i1 %18, label %19, label %35, !dbg !1663

; <label>:19:                                     ; preds = %15
  %20 = bitcast %struct.ip_mreqn* %8 to i8*, !dbg !1664
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 12, i32 4, i1 false), !dbg !1664
  %21 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %8, i32 0, i32 0, !dbg !1666
  %22 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1667
  %23 = getelementptr inbounds %struct._data, %struct._data* %22, i32 0, i32 22, !dbg !1668
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 2, !dbg !1669
  %25 = bitcast %struct.in_addr* %21 to i8*, !dbg !1669
  %26 = bitcast %struct.in_addr* %24 to i8*, !dbg !1669
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 4, i32 4, i1 false), !dbg !1669
  %27 = load %struct._interface*, %struct._interface** %7, align 8, !dbg !1670
  %28 = getelementptr inbounds %struct._interface, %struct._interface* %27, i32 0, i32 1, !dbg !1671
  %29 = load i32, i32* %28, align 8, !dbg !1671
  %30 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %8, i32 0, i32 2, !dbg !1672
  store i32 %29, i32* %30, align 4, !dbg !1673
  %31 = load i32*, i32** %6, align 8, !dbg !1674
  %32 = load i32, i32* %31, align 4, !dbg !1675
  %33 = bitcast %struct.ip_mreqn* %8 to i8*, !dbg !1676
  %34 = call i32 @setsockopt(i32 %32, i32 0, i32 35, i8* %33, i32 12) #9, !dbg !1677
  store i32 %34, i32* %10, align 4, !dbg !1678
  br label %51, !dbg !1679

; <label>:35:                                     ; preds = %15
  %36 = bitcast %struct.ipv6_mreq* %9 to i8*, !dbg !1680
  call void @llvm.memset.p0i8.i64(i8* %36, i8 0, i64 20, i32 4, i1 false), !dbg !1680
  %37 = getelementptr inbounds %struct.ipv6_mreq, %struct.ipv6_mreq* %9, i32 0, i32 0, !dbg !1682
  %38 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1683
  %39 = getelementptr inbounds %struct._data, %struct._data* %38, i32 0, i32 23, !dbg !1684
  %40 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %39, i32 0, i32 3, !dbg !1685
  %41 = bitcast %struct.in6_addr* %37 to i8*, !dbg !1685
  %42 = bitcast %struct.in6_addr* %40 to i8*, !dbg !1685
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 16, i32 4, i1 false), !dbg !1685
  %43 = load %struct._interface*, %struct._interface** %7, align 8, !dbg !1686
  %44 = getelementptr inbounds %struct._interface, %struct._interface* %43, i32 0, i32 1, !dbg !1687
  %45 = load i32, i32* %44, align 8, !dbg !1687
  %46 = getelementptr inbounds %struct.ipv6_mreq, %struct.ipv6_mreq* %9, i32 0, i32 1, !dbg !1688
  store i32 %45, i32* %46, align 4, !dbg !1689
  %47 = load i32*, i32** %6, align 8, !dbg !1690
  %48 = load i32, i32* %47, align 4, !dbg !1691
  %49 = bitcast %struct.ipv6_mreq* %9 to i8*, !dbg !1692
  %50 = call i32 @setsockopt(i32 %48, i32 41, i32 20, i8* %49, i32 20) #9, !dbg !1693
  store i32 %50, i32* %10, align 4, !dbg !1694
  br label %51

; <label>:51:                                     ; preds = %35, %19
  %52 = load i32, i32* %10, align 4, !dbg !1695
  %53 = icmp slt i32 %52, 0, !dbg !1697
  br i1 %53, label %54, label %71, !dbg !1698

; <label>:54:                                     ; preds = %51
  %55 = load %struct._interface*, %struct._interface** %7, align 8, !dbg !1699
  %56 = getelementptr inbounds %struct._interface, %struct._interface* %55, i32 0, i32 0, !dbg !1701
  %57 = getelementptr inbounds [16 x i8], [16 x i8]* %56, i32 0, i32 0, !dbg !1699
  %58 = load i16, i16* %5, align 2, !dbg !1702
  %59 = zext i16 %58 to i32, !dbg !1702
  %60 = icmp eq i32 %59, 2, !dbg !1703
  %61 = select i1 %60, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), !dbg !1704
  %62 = call i32* @__errno_location() #1, !dbg !1705
  %63 = load i32, i32* %62, align 4, !dbg !1706
  %64 = call i8* @strerror(i32 %63) #9, !dbg !1707
  %65 = call i32* @__errno_location() #1, !dbg !1709
  %66 = load i32, i32* %65, align 4, !dbg !1711
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i32 0, i32 0), i8* %57, i8* %61, i8* %64, i32 %66), !dbg !1712
  %67 = load i32*, i32** %6, align 8, !dbg !1713
  %68 = load i32, i32* %67, align 4, !dbg !1714
  %69 = call i32 @close(i32 %68), !dbg !1715
  %70 = load i32*, i32** %6, align 8, !dbg !1716
  store i32 -1, i32* %70, align 4, !dbg !1717
  br label %71, !dbg !1718

; <label>:71:                                     ; preds = %54, %51
  %72 = load i32*, i32** %6, align 8, !dbg !1719
  %73 = load i32, i32* %72, align 4, !dbg !1720
  store i32 %73, i32* %4, align 4, !dbg !1721
  br label %74, !dbg !1721

; <label>:74:                                     ; preds = %71, %14
  %75 = load i32, i32* %4, align 4, !dbg !1722
  ret i32 %75, !dbg !1722
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #4

; Function Attrs: nounwind
declare i8* @strerror(i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare i32 @close(i32) #3

; Function Attrs: nounwind uwtable
define i32 @if_leave_vrrp_group(i16 zeroext, i32, %struct._interface*) #0 !dbg !1723 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca %struct._interface*, align 8
  %8 = alloca %struct.ip_mreqn, align 4
  %9 = alloca %struct.ipv6_mreq, align 4
  %10 = alloca i32, align 4
  store i16 %0, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !1726, metadata !361), !dbg !1727
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1728, metadata !361), !dbg !1729
  store %struct._interface* %2, %struct._interface** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %7, metadata !1730, metadata !361), !dbg !1731
  call void @llvm.dbg.declare(metadata %struct.ip_mreqn* %8, metadata !1732, metadata !361), !dbg !1733
  call void @llvm.dbg.declare(metadata %struct.ipv6_mreq* %9, metadata !1734, metadata !361), !dbg !1735
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1736, metadata !361), !dbg !1737
  store i32 0, i32* %10, align 4, !dbg !1737
  %11 = load i32, i32* %6, align 4, !dbg !1738
  %12 = icmp slt i32 %11, 0, !dbg !1740
  br i1 %12, label %16, label %13, !dbg !1741

; <label>:13:                                     ; preds = %3
  %14 = load %struct._interface*, %struct._interface** %7, align 8, !dbg !1742
  %15 = icmp ne %struct._interface* %14, null, !dbg !1742
  br i1 %15, label %17, label %16, !dbg !1744

; <label>:16:                                     ; preds = %13, %3
  store i32 -1, i32* %4, align 4, !dbg !1745
  br label %68, !dbg !1745

; <label>:17:                                     ; preds = %13
  %18 = load i16, i16* %5, align 2, !dbg !1746
  %19 = zext i16 %18 to i32, !dbg !1746
  %20 = icmp eq i32 %19, 2, !dbg !1748
  br i1 %20, label %21, label %36, !dbg !1749

; <label>:21:                                     ; preds = %17
  %22 = bitcast %struct.ip_mreqn* %8 to i8*, !dbg !1750
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 12, i32 4, i1 false), !dbg !1750
  %23 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %8, i32 0, i32 0, !dbg !1752
  %24 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1753
  %25 = getelementptr inbounds %struct._data, %struct._data* %24, i32 0, i32 22, !dbg !1754
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %25, i32 0, i32 2, !dbg !1755
  %27 = bitcast %struct.in_addr* %23 to i8*, !dbg !1755
  %28 = bitcast %struct.in_addr* %26 to i8*, !dbg !1755
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 4, i32 4, i1 false), !dbg !1755
  %29 = load %struct._interface*, %struct._interface** %7, align 8, !dbg !1756
  %30 = getelementptr inbounds %struct._interface, %struct._interface* %29, i32 0, i32 1, !dbg !1757
  %31 = load i32, i32* %30, align 8, !dbg !1757
  %32 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %8, i32 0, i32 2, !dbg !1758
  store i32 %31, i32* %32, align 4, !dbg !1759
  %33 = load i32, i32* %6, align 4, !dbg !1760
  %34 = bitcast %struct.ip_mreqn* %8 to i8*, !dbg !1761
  %35 = call i32 @setsockopt(i32 %33, i32 0, i32 36, i8* %34, i32 12) #9, !dbg !1762
  store i32 %35, i32* %10, align 4, !dbg !1763
  br label %51, !dbg !1764

; <label>:36:                                     ; preds = %17
  %37 = bitcast %struct.ipv6_mreq* %9 to i8*, !dbg !1765
  call void @llvm.memset.p0i8.i64(i8* %37, i8 0, i64 20, i32 4, i1 false), !dbg !1765
  %38 = getelementptr inbounds %struct.ipv6_mreq, %struct.ipv6_mreq* %9, i32 0, i32 0, !dbg !1767
  %39 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1768
  %40 = getelementptr inbounds %struct._data, %struct._data* %39, i32 0, i32 23, !dbg !1769
  %41 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %40, i32 0, i32 3, !dbg !1770
  %42 = bitcast %struct.in6_addr* %38 to i8*, !dbg !1770
  %43 = bitcast %struct.in6_addr* %41 to i8*, !dbg !1770
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 16, i32 4, i1 false), !dbg !1770
  %44 = load %struct._interface*, %struct._interface** %7, align 8, !dbg !1771
  %45 = getelementptr inbounds %struct._interface, %struct._interface* %44, i32 0, i32 1, !dbg !1772
  %46 = load i32, i32* %45, align 8, !dbg !1772
  %47 = getelementptr inbounds %struct.ipv6_mreq, %struct.ipv6_mreq* %9, i32 0, i32 1, !dbg !1773
  store i32 %46, i32* %47, align 4, !dbg !1774
  %48 = load i32, i32* %6, align 4, !dbg !1775
  %49 = bitcast %struct.ipv6_mreq* %9 to i8*, !dbg !1776
  %50 = call i32 @setsockopt(i32 %48, i32 41, i32 21, i8* %49, i32 20) #9, !dbg !1777
  store i32 %50, i32* %10, align 4, !dbg !1778
  br label %51

; <label>:51:                                     ; preds = %36, %21
  %52 = load i32, i32* %10, align 4, !dbg !1779
  %53 = icmp slt i32 %52, 0, !dbg !1781
  br i1 %53, label %54, label %67, !dbg !1782

; <label>:54:                                     ; preds = %51
  %55 = load %struct._interface*, %struct._interface** %7, align 8, !dbg !1783
  %56 = getelementptr inbounds %struct._interface, %struct._interface* %55, i32 0, i32 0, !dbg !1785
  %57 = getelementptr inbounds [16 x i8], [16 x i8]* %56, i32 0, i32 0, !dbg !1783
  %58 = load i16, i16* %5, align 2, !dbg !1786
  %59 = zext i16 %58 to i32, !dbg !1786
  %60 = icmp eq i32 %59, 2, !dbg !1787
  %61 = select i1 %60, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), !dbg !1788
  %62 = call i32* @__errno_location() #1, !dbg !1789
  %63 = load i32, i32* %62, align 4, !dbg !1790
  %64 = call i8* @strerror(i32 %63) #9, !dbg !1791
  %65 = call i32* @__errno_location() #1, !dbg !1793
  %66 = load i32, i32* %65, align 4, !dbg !1795
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i32 0, i32 0), i8* %57, i8* %61, i8* %64, i32 %66), !dbg !1796
  store i32 -1, i32* %4, align 4, !dbg !1797
  br label %68, !dbg !1797

; <label>:67:                                     ; preds = %51
  store i32 0, i32* %4, align 4, !dbg !1798
  br label %68, !dbg !1798

; <label>:68:                                     ; preds = %67, %54, %16
  %69 = load i32, i32* %4, align 4, !dbg !1799
  ret i32 %69, !dbg !1799
}

; Function Attrs: nounwind uwtable
define i32 @if_setsockopt_bindtodevice(i32*, %struct._interface*) #0 !dbg !1800 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct._interface*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1803, metadata !361), !dbg !1804
  store %struct._interface* %1, %struct._interface** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %5, metadata !1805, metadata !361), !dbg !1806
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1807, metadata !361), !dbg !1808
  %7 = load i32*, i32** %4, align 8, !dbg !1809
  %8 = load i32, i32* %7, align 4, !dbg !1811
  %9 = icmp slt i32 %8, 0, !dbg !1812
  br i1 %9, label %10, label %11, !dbg !1813

; <label>:10:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !1814
  br label %39, !dbg !1814

; <label>:11:                                     ; preds = %2
  %12 = load i32*, i32** %4, align 8, !dbg !1815
  %13 = load i32, i32* %12, align 4, !dbg !1816
  %14 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !1817
  %15 = getelementptr inbounds %struct._interface, %struct._interface* %14, i32 0, i32 0, !dbg !1818
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i32 0, i32 0, !dbg !1819
  %17 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !1820
  %18 = getelementptr inbounds %struct._interface, %struct._interface* %17, i32 0, i32 0, !dbg !1821
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %18, i32 0, i32 0, !dbg !1822
  %20 = call i64 @strlen(i8* %19) #8, !dbg !1823
  %21 = trunc i64 %20 to i32, !dbg !1824
  %22 = add i32 %21, 1, !dbg !1825
  %23 = call i32 @setsockopt(i32 %13, i32 1, i32 25, i8* %16, i32 %22) #9, !dbg !1826
  store i32 %23, i32* %6, align 4, !dbg !1828
  %24 = load i32, i32* %6, align 4, !dbg !1829
  %25 = icmp slt i32 %24, 0, !dbg !1831
  br i1 %25, label %26, label %36, !dbg !1832

; <label>:26:                                     ; preds = %11
  %27 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !1833
  %28 = getelementptr inbounds %struct._interface, %struct._interface* %27, i32 0, i32 0, !dbg !1835
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %28, i32 0, i32 0, !dbg !1836
  %30 = call i32* @__errno_location() #1, !dbg !1837
  %31 = load i32, i32* %30, align 4, !dbg !1838
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i32 0, i32 0), i8* %29, i32 %31), !dbg !1839
  %32 = load i32*, i32** %4, align 8, !dbg !1840
  %33 = load i32, i32* %32, align 4, !dbg !1841
  %34 = call i32 @close(i32 %33), !dbg !1842
  %35 = load i32*, i32** %4, align 8, !dbg !1843
  store i32 -1, i32* %35, align 4, !dbg !1844
  br label %36, !dbg !1845

; <label>:36:                                     ; preds = %26, %11
  %37 = load i32*, i32** %4, align 8, !dbg !1846
  %38 = load i32, i32* %37, align 4, !dbg !1847
  store i32 %38, i32* %3, align 4, !dbg !1848
  br label %39, !dbg !1848

; <label>:39:                                     ; preds = %36, %10
  %40 = load i32, i32* %3, align 4, !dbg !1849
  ret i32 %40, !dbg !1849
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @if_setsockopt_hdrincl(i32*) #0 !dbg !1850 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !1853, metadata !361), !dbg !1854
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1855, metadata !361), !dbg !1856
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1857, metadata !361), !dbg !1858
  store i32 1, i32* %5, align 4, !dbg !1858
  %6 = load i32*, i32** %3, align 8, !dbg !1859
  %7 = load i32, i32* %6, align 4, !dbg !1861
  %8 = icmp slt i32 %7, 0, !dbg !1862
  br i1 %8, label %9, label %10, !dbg !1863

; <label>:9:                                      ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !1864
  br label %27, !dbg !1864

; <label>:10:                                     ; preds = %1
  %11 = load i32*, i32** %3, align 8, !dbg !1865
  %12 = load i32, i32* %11, align 4, !dbg !1866
  %13 = bitcast i32* %5 to i8*, !dbg !1867
  %14 = call i32 @setsockopt(i32 %12, i32 0, i32 3, i8* %13, i32 4) #9, !dbg !1868
  store i32 %14, i32* %4, align 4, !dbg !1869
  %15 = load i32, i32* %4, align 4, !dbg !1870
  %16 = icmp slt i32 %15, 0, !dbg !1872
  br i1 %16, label %17, label %24, !dbg !1873

; <label>:17:                                     ; preds = %10
  %18 = call i32* @__errno_location() #1, !dbg !1874
  %19 = load i32, i32* %18, align 4, !dbg !1876
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0), i32 %19), !dbg !1877
  %20 = load i32*, i32** %3, align 8, !dbg !1879
  %21 = load i32, i32* %20, align 4, !dbg !1880
  %22 = call i32 @close(i32 %21), !dbg !1881
  %23 = load i32*, i32** %3, align 8, !dbg !1882
  store i32 -1, i32* %23, align 4, !dbg !1883
  br label %24, !dbg !1884

; <label>:24:                                     ; preds = %17, %10
  %25 = load i32*, i32** %3, align 8, !dbg !1885
  %26 = load i32, i32* %25, align 4, !dbg !1886
  store i32 %26, i32* %2, align 4, !dbg !1887
  br label %27, !dbg !1887

; <label>:27:                                     ; preds = %24, %9
  %28 = load i32, i32* %2, align 4, !dbg !1888
  ret i32 %28, !dbg !1888
}

; Function Attrs: nounwind uwtable
define i32 @if_setsockopt_ipv6_checksum(i32*) #0 !dbg !1889 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !1890, metadata !361), !dbg !1891
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1892, metadata !361), !dbg !1893
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1894, metadata !361), !dbg !1895
  store i32 6, i32* %5, align 4, !dbg !1895
  %6 = load i32*, i32** %3, align 8, !dbg !1896
  %7 = icmp ne i32* %6, null, !dbg !1896
  br i1 %7, label %13, label %8, !dbg !1898

; <label>:8:                                      ; preds = %1
  %9 = load i32*, i32** %3, align 8, !dbg !1899
  %10 = load i32, i32* %9, align 4, !dbg !1901
  %11 = icmp slt i32 %10, 0, !dbg !1902
  br i1 %11, label %12, label %13, !dbg !1903

; <label>:12:                                     ; preds = %8
  store i32 -1, i32* %2, align 4, !dbg !1904
  br label %30, !dbg !1904

; <label>:13:                                     ; preds = %8, %1
  %14 = load i32*, i32** %3, align 8, !dbg !1905
  %15 = load i32, i32* %14, align 4, !dbg !1906
  %16 = bitcast i32* %5 to i8*, !dbg !1907
  %17 = call i32 @setsockopt(i32 %15, i32 41, i32 7, i8* %16, i32 4) #9, !dbg !1908
  store i32 %17, i32* %4, align 4, !dbg !1909
  %18 = load i32, i32* %4, align 4, !dbg !1910
  %19 = icmp slt i32 %18, 0, !dbg !1912
  br i1 %19, label %20, label %27, !dbg !1913

; <label>:20:                                     ; preds = %13
  %21 = call i32* @__errno_location() #1, !dbg !1914
  %22 = load i32, i32* %21, align 4, !dbg !1916
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i32 0, i32 0), i32 %22), !dbg !1917
  %23 = load i32*, i32** %3, align 8, !dbg !1919
  %24 = load i32, i32* %23, align 4, !dbg !1920
  %25 = call i32 @close(i32 %24), !dbg !1921
  %26 = load i32*, i32** %3, align 8, !dbg !1922
  store i32 -1, i32* %26, align 4, !dbg !1923
  br label %27, !dbg !1924

; <label>:27:                                     ; preds = %20, %13
  %28 = load i32*, i32** %3, align 8, !dbg !1925
  %29 = load i32, i32* %28, align 4, !dbg !1926
  store i32 %29, i32* %2, align 4, !dbg !1927
  br label %30, !dbg !1927

; <label>:30:                                     ; preds = %27, %12
  %31 = load i32, i32* %2, align 4, !dbg !1928
  ret i32 %31, !dbg !1928
}

; Function Attrs: nounwind uwtable
define i32 @if_setsockopt_mcast_all(i16 zeroext, i32*) #0 !dbg !1929 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i16 %0, i16* %4, align 2
  call void @llvm.dbg.declare(metadata i16* %4, metadata !1932, metadata !361), !dbg !1933
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1934, metadata !361), !dbg !1935
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1936, metadata !361), !dbg !1937
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1938, metadata !361), !dbg !1939
  store i8 0, i8* %7, align 1, !dbg !1939
  %8 = load i32*, i32** %5, align 8, !dbg !1940
  %9 = load i32, i32* %8, align 4, !dbg !1942
  %10 = icmp slt i32 %9, 0, !dbg !1943
  br i1 %10, label %11, label %12, !dbg !1944

; <label>:11:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !1945
  br label %35, !dbg !1945

; <label>:12:                                     ; preds = %2
  %13 = load i16, i16* %4, align 2, !dbg !1946
  %14 = zext i16 %13 to i32, !dbg !1946
  %15 = icmp eq i32 %14, 10, !dbg !1948
  br i1 %15, label %16, label %19, !dbg !1949

; <label>:16:                                     ; preds = %12
  %17 = load i32*, i32** %5, align 8, !dbg !1950
  %18 = load i32, i32* %17, align 4, !dbg !1951
  store i32 %18, i32* %3, align 4, !dbg !1952
  br label %35, !dbg !1952

; <label>:19:                                     ; preds = %12
  %20 = load i32*, i32** %5, align 8, !dbg !1953
  %21 = load i32, i32* %20, align 4, !dbg !1954
  %22 = call i32 @setsockopt(i32 %21, i32 0, i32 49, i8* %7, i32 1) #9, !dbg !1955
  store i32 %22, i32* %6, align 4, !dbg !1956
  %23 = load i32, i32* %6, align 4, !dbg !1957
  %24 = icmp slt i32 %23, 0, !dbg !1959
  br i1 %24, label %25, label %32, !dbg !1960

; <label>:25:                                     ; preds = %19
  %26 = call i32* @__errno_location() #1, !dbg !1961
  %27 = load i32, i32* %26, align 4, !dbg !1963
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i32 0, i32 0), i32 %27), !dbg !1964
  %28 = load i32*, i32** %5, align 8, !dbg !1965
  %29 = load i32, i32* %28, align 4, !dbg !1966
  %30 = call i32 @close(i32 %29), !dbg !1967
  %31 = load i32*, i32** %5, align 8, !dbg !1968
  store i32 -1, i32* %31, align 4, !dbg !1969
  br label %32, !dbg !1970

; <label>:32:                                     ; preds = %25, %19
  %33 = load i32*, i32** %5, align 8, !dbg !1971
  %34 = load i32, i32* %33, align 4, !dbg !1972
  store i32 %34, i32* %3, align 4, !dbg !1973
  br label %35, !dbg !1973

; <label>:35:                                     ; preds = %32, %16, %11
  %36 = load i32, i32* %3, align 4, !dbg !1974
  ret i32 %36, !dbg !1974
}

; Function Attrs: nounwind uwtable
define i32 @if_setsockopt_mcast_loop(i16 zeroext, i32*) #0 !dbg !1975 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i16 %0, i16* %4, align 2
  call void @llvm.dbg.declare(metadata i16* %4, metadata !1976, metadata !361), !dbg !1977
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1978, metadata !361), !dbg !1979
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1980, metadata !361), !dbg !1981
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1982, metadata !361), !dbg !1983
  store i8 0, i8* %7, align 1, !dbg !1983
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1984, metadata !361), !dbg !1985
  store i32 0, i32* %8, align 4, !dbg !1985
  %9 = load i32*, i32** %5, align 8, !dbg !1986
  %10 = load i32, i32* %9, align 4, !dbg !1988
  %11 = icmp slt i32 %10, 0, !dbg !1989
  br i1 %11, label %12, label %13, !dbg !1990

; <label>:12:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !1991
  br label %43, !dbg !1991

; <label>:13:                                     ; preds = %2
  %14 = load i16, i16* %4, align 2, !dbg !1992
  %15 = zext i16 %14 to i32, !dbg !1992
  %16 = icmp eq i32 %15, 2, !dbg !1994
  br i1 %16, label %17, label %21, !dbg !1995

; <label>:17:                                     ; preds = %13
  %18 = load i32*, i32** %5, align 8, !dbg !1996
  %19 = load i32, i32* %18, align 4, !dbg !1997
  %20 = call i32 @setsockopt(i32 %19, i32 0, i32 34, i8* %7, i32 1) #9, !dbg !1998
  store i32 %20, i32* %6, align 4, !dbg !1999
  br label %26, !dbg !2000

; <label>:21:                                     ; preds = %13
  %22 = load i32*, i32** %5, align 8, !dbg !2001
  %23 = load i32, i32* %22, align 4, !dbg !2002
  %24 = bitcast i32* %8 to i8*, !dbg !2003
  %25 = call i32 @setsockopt(i32 %23, i32 41, i32 19, i8* %24, i32 4) #9, !dbg !2004
  store i32 %25, i32* %6, align 4, !dbg !2005
  br label %26

; <label>:26:                                     ; preds = %21, %17
  %27 = load i32, i32* %6, align 4, !dbg !2006
  %28 = icmp slt i32 %27, 0, !dbg !2008
  br i1 %28, label %29, label %40, !dbg !2009

; <label>:29:                                     ; preds = %26
  %30 = load i16, i16* %4, align 2, !dbg !2010
  %31 = zext i16 %30 to i32, !dbg !2010
  %32 = icmp eq i32 %31, 2, !dbg !2012
  %33 = select i1 %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), !dbg !2013
  %34 = call i32* @__errno_location() #1, !dbg !2014
  %35 = load i32, i32* %34, align 4, !dbg !2015
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i32 0, i32 0), i8* %33, i32 %35), !dbg !2016
  %36 = load i32*, i32** %5, align 8, !dbg !2017
  %37 = load i32, i32* %36, align 4, !dbg !2018
  %38 = call i32 @close(i32 %37), !dbg !2019
  %39 = load i32*, i32** %5, align 8, !dbg !2020
  store i32 -1, i32* %39, align 4, !dbg !2021
  br label %40, !dbg !2022

; <label>:40:                                     ; preds = %29, %26
  %41 = load i32*, i32** %5, align 8, !dbg !2023
  %42 = load i32, i32* %41, align 4, !dbg !2024
  store i32 %42, i32* %3, align 4, !dbg !2025
  br label %43, !dbg !2025

; <label>:43:                                     ; preds = %40, %12
  %44 = load i32, i32* %3, align 4, !dbg !2026
  ret i32 %44, !dbg !2026
}

; Function Attrs: nounwind uwtable
define i32 @if_setsockopt_mcast_hops(i16 zeroext, i32*) #0 !dbg !2027 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i16 %0, i16* %4, align 2
  call void @llvm.dbg.declare(metadata i16* %4, metadata !2028, metadata !361), !dbg !2029
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !2030, metadata !361), !dbg !2031
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2032, metadata !361), !dbg !2033
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2034, metadata !361), !dbg !2035
  store i32 255, i32* %7, align 4, !dbg !2035
  %8 = load i32*, i32** %5, align 8, !dbg !2036
  %9 = load i32, i32* %8, align 4, !dbg !2038
  %10 = icmp slt i32 %9, 0, !dbg !2039
  br i1 %10, label %15, label %11, !dbg !2040

; <label>:11:                                     ; preds = %2
  %12 = load i16, i16* %4, align 2, !dbg !2041
  %13 = zext i16 %12 to i32, !dbg !2041
  %14 = icmp eq i32 %13, 2, !dbg !2043
  br i1 %14, label %15, label %16, !dbg !2044

; <label>:15:                                     ; preds = %11, %2
  store i32 -1, i32* %3, align 4, !dbg !2045
  br label %33, !dbg !2045

; <label>:16:                                     ; preds = %11
  %17 = load i32*, i32** %5, align 8, !dbg !2046
  %18 = load i32, i32* %17, align 4, !dbg !2047
  %19 = bitcast i32* %7 to i8*, !dbg !2048
  %20 = call i32 @setsockopt(i32 %18, i32 41, i32 18, i8* %19, i32 4) #9, !dbg !2049
  store i32 %20, i32* %6, align 4, !dbg !2050
  %21 = load i32, i32* %6, align 4, !dbg !2051
  %22 = icmp slt i32 %21, 0, !dbg !2053
  br i1 %22, label %23, label %30, !dbg !2054

; <label>:23:                                     ; preds = %16
  %24 = call i32* @__errno_location() #1, !dbg !2055
  %25 = load i32, i32* %24, align 4, !dbg !2057
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0), i32 %25), !dbg !2058
  %26 = load i32*, i32** %5, align 8, !dbg !2060
  %27 = load i32, i32* %26, align 4, !dbg !2061
  %28 = call i32 @close(i32 %27), !dbg !2062
  %29 = load i32*, i32** %5, align 8, !dbg !2063
  store i32 -1, i32* %29, align 4, !dbg !2064
  br label %30, !dbg !2065

; <label>:30:                                     ; preds = %23, %16
  %31 = load i32*, i32** %5, align 8, !dbg !2066
  %32 = load i32, i32* %31, align 4, !dbg !2067
  store i32 %32, i32* %3, align 4, !dbg !2068
  br label %33, !dbg !2068

; <label>:33:                                     ; preds = %30, %15
  %34 = load i32, i32* %3, align 4, !dbg !2069
  ret i32 %34, !dbg !2069
}

; Function Attrs: nounwind uwtable
define i32 @if_setsockopt_mcast_if(i16 zeroext, i32*, %struct._interface*) #0 !dbg !2070 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i32*, align 8
  %7 = alloca %struct._interface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ip_mreqn, align 4
  store i16 %0, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !2071, metadata !361), !dbg !2072
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !2073, metadata !361), !dbg !2074
  store %struct._interface* %2, %struct._interface** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %7, metadata !2075, metadata !361), !dbg !2076
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2077, metadata !361), !dbg !2078
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2079, metadata !361), !dbg !2080
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2081, metadata !361), !dbg !2082
  %12 = load i32*, i32** %6, align 8, !dbg !2083
  %13 = load i32, i32* %12, align 4, !dbg !2085
  %14 = icmp slt i32 %13, 0, !dbg !2086
  br i1 %14, label %15, label %16, !dbg !2087

; <label>:15:                                     ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !2088
  br label %56, !dbg !2088

; <label>:16:                                     ; preds = %3
  %17 = load %struct._interface*, %struct._interface** %7, align 8, !dbg !2089
  %18 = getelementptr inbounds %struct._interface, %struct._interface* %17, i32 0, i32 1, !dbg !2090
  %19 = load i32, i32* %18, align 8, !dbg !2090
  store i32 %19, i32* %9, align 4, !dbg !2091
  %20 = load i16, i16* %5, align 2, !dbg !2092
  %21 = zext i16 %20 to i32, !dbg !2092
  %22 = icmp eq i32 %21, 2, !dbg !2094
  br i1 %22, label %23, label %33, !dbg !2095

; <label>:23:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata %struct.ip_mreqn* %11, metadata !2096, metadata !361), !dbg !2098
  %24 = bitcast %struct.ip_mreqn* %11 to i8*, !dbg !2099
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 12, i32 4, i1 false), !dbg !2099
  %25 = load %struct._interface*, %struct._interface** %7, align 8, !dbg !2100
  %26 = getelementptr inbounds %struct._interface, %struct._interface* %25, i32 0, i32 1, !dbg !2101
  %27 = load i32, i32* %26, align 8, !dbg !2101
  %28 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %11, i32 0, i32 2, !dbg !2102
  store i32 %27, i32* %28, align 4, !dbg !2103
  %29 = load i32*, i32** %6, align 8, !dbg !2104
  %30 = load i32, i32* %29, align 4, !dbg !2105
  %31 = bitcast %struct.ip_mreqn* %11 to i8*, !dbg !2106
  %32 = call i32 @setsockopt(i32 %30, i32 0, i32 32, i8* %31, i32 12) #9, !dbg !2107
  store i32 %32, i32* %8, align 4, !dbg !2108
  br label %39, !dbg !2109

; <label>:33:                                     ; preds = %16
  %34 = load i32, i32* %9, align 4, !dbg !2110
  store i32 %34, i32* %10, align 4, !dbg !2112
  %35 = load i32*, i32** %6, align 8, !dbg !2113
  %36 = load i32, i32* %35, align 4, !dbg !2114
  %37 = bitcast i32* %10 to i8*, !dbg !2115
  %38 = call i32 @setsockopt(i32 %36, i32 41, i32 17, i8* %37, i32 4) #9, !dbg !2116
  store i32 %38, i32* %8, align 4, !dbg !2117
  br label %39

; <label>:39:                                     ; preds = %33, %23
  %40 = load i32, i32* %8, align 4, !dbg !2118
  %41 = icmp slt i32 %40, 0, !dbg !2120
  br i1 %41, label %42, label %53, !dbg !2121

; <label>:42:                                     ; preds = %39
  %43 = load i16, i16* %5, align 2, !dbg !2122
  %44 = zext i16 %43 to i32, !dbg !2122
  %45 = icmp eq i32 %44, 2, !dbg !2124
  %46 = select i1 %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), !dbg !2125
  %47 = call i32* @__errno_location() #1, !dbg !2126
  %48 = load i32, i32* %47, align 4, !dbg !2127
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i32 0, i32 0), i8* %46, i32 %48), !dbg !2128
  %49 = load i32*, i32** %6, align 8, !dbg !2130
  %50 = load i32, i32* %49, align 4, !dbg !2131
  %51 = call i32 @close(i32 %50), !dbg !2132
  %52 = load i32*, i32** %6, align 8, !dbg !2133
  store i32 -1, i32* %52, align 4, !dbg !2134
  br label %53, !dbg !2135

; <label>:53:                                     ; preds = %42, %39
  %54 = load i32*, i32** %6, align 8, !dbg !2136
  %55 = load i32, i32* %54, align 4, !dbg !2137
  store i32 %55, i32* %4, align 4, !dbg !2138
  br label %56, !dbg !2138

; <label>:56:                                     ; preds = %53, %15
  %57 = load i32, i32* %4, align 4, !dbg !2139
  ret i32 %57, !dbg !2139
}

; Function Attrs: nounwind uwtable
define i32 @if_setsockopt_priority(i32*, i32) #0 !dbg !2140 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !2143, metadata !361), !dbg !2144
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2145, metadata !361), !dbg !2146
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2147, metadata !361), !dbg !2148
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2149, metadata !361), !dbg !2150
  %8 = load i32*, i32** %4, align 8, !dbg !2151
  %9 = load i32, i32* %8, align 4, !dbg !2153
  %10 = icmp slt i32 %9, 0, !dbg !2154
  br i1 %10, label %11, label %12, !dbg !2155

; <label>:11:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !2156
  br label %41, !dbg !2156

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %5, align 4, !dbg !2157
  %14 = icmp eq i32 %13, 2, !dbg !2159
  br i1 %14, label %15, label %20, !dbg !2160

; <label>:15:                                     ; preds = %12
  store i32 192, i32* %7, align 4, !dbg !2161
  %16 = load i32*, i32** %4, align 8, !dbg !2163
  %17 = load i32, i32* %16, align 4, !dbg !2164
  %18 = bitcast i32* %7 to i8*, !dbg !2165
  %19 = call i32 @setsockopt(i32 %17, i32 0, i32 1, i8* %18, i32 4) #9, !dbg !2166
  store i32 %19, i32* %6, align 4, !dbg !2167
  br label %25, !dbg !2168

; <label>:20:                                     ; preds = %12
  store i32 192, i32* %7, align 4, !dbg !2169
  %21 = load i32*, i32** %4, align 8, !dbg !2171
  %22 = load i32, i32* %21, align 4, !dbg !2172
  %23 = bitcast i32* %7 to i8*, !dbg !2173
  %24 = call i32 @setsockopt(i32 %22, i32 41, i32 67, i8* %23, i32 4) #9, !dbg !2174
  store i32 %24, i32* %6, align 4, !dbg !2175
  br label %25

; <label>:25:                                     ; preds = %20, %15
  %26 = load i32, i32* %6, align 4, !dbg !2176
  %27 = icmp slt i32 %26, 0, !dbg !2178
  br i1 %27, label %28, label %38, !dbg !2179

; <label>:28:                                     ; preds = %25
  %29 = load i32, i32* %5, align 4, !dbg !2180
  %30 = icmp eq i32 %29, 2, !dbg !2182
  %31 = select i1 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), !dbg !2183
  %32 = call i32* @__errno_location() #1, !dbg !2184
  %33 = load i32, i32* %32, align 4, !dbg !2185
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0), i8* %31, i32 %33), !dbg !2186
  %34 = load i32*, i32** %4, align 8, !dbg !2188
  %35 = load i32, i32* %34, align 4, !dbg !2189
  %36 = call i32 @close(i32 %35), !dbg !2190
  %37 = load i32*, i32** %4, align 8, !dbg !2191
  store i32 -1, i32* %37, align 4, !dbg !2192
  br label %38, !dbg !2193

; <label>:38:                                     ; preds = %28, %25
  %39 = load i32*, i32** %4, align 8, !dbg !2194
  %40 = load i32, i32* %39, align 4, !dbg !2195
  store i32 %40, i32* %3, align 4, !dbg !2196
  br label %41, !dbg !2196

; <label>:41:                                     ; preds = %38, %11
  %42 = load i32, i32* %3, align 4, !dbg !2197
  ret i32 %42, !dbg !2197
}

; Function Attrs: nounwind uwtable
define i32 @if_setsockopt_rcvbuf(i32*, i32) #0 !dbg !2198 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !2199, metadata !361), !dbg !2200
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2201, metadata !361), !dbg !2202
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2203, metadata !361), !dbg !2204
  %7 = load i32*, i32** %4, align 8, !dbg !2205
  %8 = load i32, i32* %7, align 4, !dbg !2207
  %9 = icmp slt i32 %8, 0, !dbg !2208
  br i1 %9, label %10, label %11, !dbg !2209

; <label>:10:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !2210
  br label %28, !dbg !2210

; <label>:11:                                     ; preds = %2
  %12 = load i32*, i32** %4, align 8, !dbg !2211
  %13 = load i32, i32* %12, align 4, !dbg !2212
  %14 = bitcast i32* %5 to i8*, !dbg !2213
  %15 = call i32 @setsockopt(i32 %13, i32 1, i32 8, i8* %14, i32 4) #9, !dbg !2214
  store i32 %15, i32* %6, align 4, !dbg !2215
  %16 = load i32, i32* %6, align 4, !dbg !2216
  %17 = icmp slt i32 %16, 0, !dbg !2218
  br i1 %17, label %18, label %25, !dbg !2219

; <label>:18:                                     ; preds = %11
  %19 = call i32* @__errno_location() #1, !dbg !2220
  %20 = load i32, i32* %19, align 4, !dbg !2222
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i32 0, i32 0), i32 %20), !dbg !2223
  %21 = load i32*, i32** %4, align 8, !dbg !2225
  %22 = load i32, i32* %21, align 4, !dbg !2226
  %23 = call i32 @close(i32 %22), !dbg !2227
  %24 = load i32*, i32** %4, align 8, !dbg !2228
  store i32 -1, i32* %24, align 4, !dbg !2229
  br label %25, !dbg !2230

; <label>:25:                                     ; preds = %18, %11
  %26 = load i32*, i32** %4, align 8, !dbg !2231
  %27 = load i32, i32* %26, align 4, !dbg !2232
  store i32 %27, i32* %3, align 4, !dbg !2233
  br label %28, !dbg !2233

; <label>:28:                                     ; preds = %25, %10
  %29 = load i32, i32* %3, align 4, !dbg !2234
  ret i32 %29, !dbg !2234
}

; Function Attrs: nounwind uwtable
define i32 @if_setsockopt_no_receive(i32*) #0 !dbg !2235 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1 x %struct.sock_filter], align 4
  %6 = alloca %struct.sock_fprog, align 8
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !2236, metadata !361), !dbg !2237
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2238, metadata !361), !dbg !2239
  call void @llvm.dbg.declare(metadata [1 x %struct.sock_filter]* %5, metadata !2240, metadata !361), !dbg !2251
  %7 = bitcast [1 x %struct.sock_filter]* %5 to i8*, !dbg !2251
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([1 x %struct.sock_filter]* @if_setsockopt_no_receive.bpfcode to i8*), i64 8, i32 4, i1 false), !dbg !2251
  call void @llvm.dbg.declare(metadata %struct.sock_fprog* %6, metadata !2252, metadata !361), !dbg !2258
  %8 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %6, i32 0, i32 0, !dbg !2259
  store i16 1, i16* %8, align 8, !dbg !2259
  %9 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %6, i32 0, i32 1, !dbg !2259
  %10 = getelementptr inbounds [1 x %struct.sock_filter], [1 x %struct.sock_filter]* %5, i32 0, i32 0, !dbg !2260
  store %struct.sock_filter* %10, %struct.sock_filter** %9, align 8, !dbg !2259
  %11 = load i32*, i32** %3, align 8, !dbg !2261
  %12 = load i32, i32* %11, align 4, !dbg !2263
  %13 = icmp slt i32 %12, 0, !dbg !2264
  br i1 %13, label %14, label %15, !dbg !2265

; <label>:14:                                     ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !2266
  br label %32, !dbg !2266

; <label>:15:                                     ; preds = %1
  %16 = load i32*, i32** %3, align 8, !dbg !2267
  %17 = load i32, i32* %16, align 4, !dbg !2268
  %18 = bitcast %struct.sock_fprog* %6 to i8*, !dbg !2269
  %19 = call i32 @setsockopt(i32 %17, i32 1, i32 26, i8* %18, i32 16) #9, !dbg !2270
  store i32 %19, i32* %4, align 4, !dbg !2271
  %20 = load i32, i32* %4, align 4, !dbg !2272
  %21 = icmp slt i32 %20, 0, !dbg !2274
  br i1 %21, label %22, label %29, !dbg !2275

; <label>:22:                                     ; preds = %15
  %23 = call i32* @__errno_location() #1, !dbg !2276
  %24 = load i32, i32* %23, align 4, !dbg !2278
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i32 0, i32 0), i32 %24), !dbg !2279
  %25 = load i32*, i32** %3, align 8, !dbg !2281
  %26 = load i32, i32* %25, align 4, !dbg !2282
  %27 = call i32 @close(i32 %26), !dbg !2283
  %28 = load i32*, i32** %3, align 8, !dbg !2284
  store i32 -1, i32* %28, align 4, !dbg !2285
  br label %29, !dbg !2286

; <label>:29:                                     ; preds = %22, %15
  %30 = load i32*, i32** %3, align 8, !dbg !2287
  %31 = load i32, i32* %30, align 4, !dbg !2288
  store i32 %31, i32* %2, align 4, !dbg !2289
  br label %32, !dbg !2289

; <label>:32:                                     ; preds = %29, %14
  %33 = load i32, i32* %2, align 4, !dbg !2290
  ret i32 %33, !dbg !2290
}

; Function Attrs: nounwind uwtable
define void @interface_up(%struct._interface*) #0 !dbg !2291 {
  %2 = alloca %struct._interface*, align 8
  store %struct._interface* %0, %struct._interface** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %2, metadata !2292, metadata !361), !dbg !2293
  %3 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !2294
  call void @static_track_reinstate_config(%struct._interface* %3), !dbg !2295
  ret void, !dbg !2296
}

declare void @static_track_reinstate_config(%struct._interface*) #3

; Function Attrs: nounwind uwtable
define void @interface_down(%struct._interface*) #0 !dbg !2297 {
  %2 = alloca %struct._interface*, align 8
  %3 = alloca %struct._element*, align 8
  %4 = alloca %struct._element*, align 8
  %5 = alloca %struct._vrrp_t*, align 8
  %6 = alloca %struct._ip_route*, align 8
  %7 = alloca i8, align 1
  store %struct._interface* %0, %struct._interface** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %2, metadata !2298, metadata !361), !dbg !2299
  call void @llvm.dbg.declare(metadata %struct._element** %3, metadata !2300, metadata !361), !dbg !2301
  call void @llvm.dbg.declare(metadata %struct._element** %4, metadata !2302, metadata !361), !dbg !2303
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %5, metadata !2304, metadata !361), !dbg !2305
  call void @llvm.dbg.declare(metadata %struct._ip_route** %6, metadata !2306, metadata !361), !dbg !2445
  call void @llvm.dbg.declare(metadata i8* %7, metadata !2446, metadata !361), !dbg !2447
  %8 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2448
  %9 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %8, i32 0, i32 5, !dbg !2450
  %10 = load %struct._list*, %struct._list** %9, align 8, !dbg !2450
  %11 = icmp ne %struct._list* %10, null, !dbg !2451
  br i1 %11, label %12, label %26, !dbg !2451

; <label>:12:                                     ; preds = %1
  %13 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2452
  %14 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %13, i32 0, i32 5, !dbg !2454
  %15 = load %struct._list*, %struct._list** %14, align 8, !dbg !2454
  %16 = icmp ne %struct._list* %15, null, !dbg !2455
  br i1 %16, label %18, label %17, !dbg !2456

; <label>:17:                                     ; preds = %12
  br label %24, !dbg !2457

; <label>:18:                                     ; preds = %12
  %19 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2459
  %20 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %19, i32 0, i32 5, !dbg !2461
  %21 = load %struct._list*, %struct._list** %20, align 8, !dbg !2461
  %22 = getelementptr inbounds %struct._list, %struct._list* %21, i32 0, i32 0, !dbg !2462
  %23 = load %struct._element*, %struct._element** %22, align 8, !dbg !2462
  br label %24, !dbg !2463

; <label>:24:                                     ; preds = %18, %17
  %25 = phi %struct._element* [ null, %17 ], [ %23, %18 ], !dbg !2464
  br label %27, !dbg !2466

; <label>:26:                                     ; preds = %1
  br label %27, !dbg !2467

; <label>:27:                                     ; preds = %26, %24
  %28 = phi %struct._element* [ %25, %24 ], [ null, %26 ], !dbg !2469
  store %struct._element* %28, %struct._element** %3, align 8, !dbg !2471
  br label %29, !dbg !2472

; <label>:29:                                     ; preds = %116, %27
  %30 = load %struct._element*, %struct._element** %3, align 8, !dbg !2473
  %31 = icmp ne %struct._element* %30, null, !dbg !2476
  br i1 %31, label %32, label %37, !dbg !2477

; <label>:32:                                     ; preds = %29
  %33 = load %struct._element*, %struct._element** %3, align 8, !dbg !2478
  %34 = getelementptr inbounds %struct._element, %struct._element* %33, i32 0, i32 2, !dbg !2480
  %35 = load i8*, i8** %34, align 8, !dbg !2480
  %36 = bitcast i8* %35 to %struct._vrrp_t*, !dbg !2481
  store %struct._vrrp_t* %36, %struct._vrrp_t** %5, align 8, !dbg !2482
  br label %37

; <label>:37:                                     ; preds = %32, %29
  %38 = phi i1 [ false, %29 ], [ true, %32 ]
  br i1 %38, label %39, label %120, !dbg !2483

; <label>:39:                                     ; preds = %37
  %40 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2485
  %41 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %40, i32 0, i32 55, !dbg !2488
  %42 = load i32, i32* %41, align 8, !dbg !2488
  %43 = icmp ne i32 %42, 2, !dbg !2489
  br i1 %43, label %44, label %45, !dbg !2490

; <label>:44:                                     ; preds = %39
  br label %116, !dbg !2491

; <label>:45:                                     ; preds = %39
  store i8 0, i8* %7, align 1, !dbg !2492
  %46 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2493
  %47 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %46, i32 0, i32 45, !dbg !2495
  %48 = load %struct._list*, %struct._list** %47, align 8, !dbg !2495
  %49 = icmp ne %struct._list* %48, null, !dbg !2496
  br i1 %49, label %50, label %64, !dbg !2496

; <label>:50:                                     ; preds = %45
  %51 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2497
  %52 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %51, i32 0, i32 45, !dbg !2499
  %53 = load %struct._list*, %struct._list** %52, align 8, !dbg !2499
  %54 = icmp ne %struct._list* %53, null, !dbg !2500
  br i1 %54, label %56, label %55, !dbg !2501

; <label>:55:                                     ; preds = %50
  br label %62, !dbg !2502

; <label>:56:                                     ; preds = %50
  %57 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2504
  %58 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %57, i32 0, i32 45, !dbg !2506
  %59 = load %struct._list*, %struct._list** %58, align 8, !dbg !2506
  %60 = getelementptr inbounds %struct._list, %struct._list* %59, i32 0, i32 0, !dbg !2507
  %61 = load %struct._element*, %struct._element** %60, align 8, !dbg !2507
  br label %62, !dbg !2508

; <label>:62:                                     ; preds = %56, %55
  %63 = phi %struct._element* [ null, %55 ], [ %61, %56 ], !dbg !2509
  br label %65, !dbg !2511

; <label>:64:                                     ; preds = %45
  br label %65, !dbg !2512

; <label>:65:                                     ; preds = %64, %62
  %66 = phi %struct._element* [ %63, %62 ], [ null, %64 ], !dbg !2514
  store %struct._element* %66, %struct._element** %4, align 8, !dbg !2516
  br label %67, !dbg !2517

; <label>:67:                                     ; preds = %106, %65
  %68 = load %struct._element*, %struct._element** %4, align 8, !dbg !2518
  %69 = icmp ne %struct._element* %68, null, !dbg !2521
  br i1 %69, label %70, label %75, !dbg !2522

; <label>:70:                                     ; preds = %67
  %71 = load %struct._element*, %struct._element** %4, align 8, !dbg !2523
  %72 = getelementptr inbounds %struct._element, %struct._element* %71, i32 0, i32 2, !dbg !2525
  %73 = load i8*, i8** %72, align 8, !dbg !2525
  %74 = bitcast i8* %73 to %struct._ip_route*, !dbg !2526
  store %struct._ip_route* %74, %struct._ip_route** %6, align 8, !dbg !2527
  br label %75

; <label>:75:                                     ; preds = %70, %67
  %76 = phi i1 [ false, %67 ], [ true, %70 ]
  br i1 %76, label %77, label %110, !dbg !2528

; <label>:77:                                     ; preds = %75
  %78 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !2530
  %79 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %78, i32 0, i32 36, !dbg !2533
  %80 = load i8, i8* %79, align 8, !dbg !2533
  %81 = trunc i8 %80 to i1, !dbg !2533
  br i1 %81, label %83, label %82, !dbg !2534

; <label>:82:                                     ; preds = %77
  br label %106, !dbg !2535

; <label>:83:                                     ; preds = %77
  %84 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !2536
  %85 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %84, i32 0, i32 10, !dbg !2538
  %86 = load %struct._interface*, %struct._interface** %85, align 8, !dbg !2538
  %87 = icmp ne %struct._interface* %86, null, !dbg !2536
  br i1 %87, label %97, label %88, !dbg !2539

; <label>:88:                                     ; preds = %83
  %89 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !2540
  %90 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %89, i32 0, i32 37, !dbg !2542
  %91 = load i32, i32* %90, align 4, !dbg !2542
  %92 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !2543
  %93 = getelementptr inbounds %struct._interface, %struct._interface* %92, i32 0, i32 1, !dbg !2544
  %94 = load i32, i32* %93, align 8, !dbg !2544
  %95 = icmp ne i32 %91, %94, !dbg !2545
  br i1 %95, label %96, label %97, !dbg !2546

; <label>:96:                                     ; preds = %88
  br label %106, !dbg !2547

; <label>:97:                                     ; preds = %88, %83
  %98 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !2548
  %99 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %98, i32 0, i32 36, !dbg !2549
  store i8 0, i8* %99, align 8, !dbg !2550
  %100 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !2551
  %101 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %100, i32 0, i32 34, !dbg !2553
  %102 = load i8, i8* %101, align 4, !dbg !2553
  %103 = trunc i8 %102 to i1, !dbg !2553
  br i1 %103, label %104, label %105, !dbg !2554

; <label>:104:                                    ; preds = %97
  br label %106, !dbg !2555

; <label>:105:                                    ; preds = %97
  store i8 1, i8* %7, align 1, !dbg !2556
  br label %106, !dbg !2557

; <label>:106:                                    ; preds = %105, %104, %96, %82
  %107 = load %struct._element*, %struct._element** %4, align 8, !dbg !2558
  %108 = getelementptr inbounds %struct._element, %struct._element* %107, i32 0, i32 0, !dbg !2560
  %109 = load %struct._element*, %struct._element** %108, align 8, !dbg !2560
  store %struct._element* %109, %struct._element** %4, align 8, !dbg !2561
  br label %67, !dbg !2562, !llvm.loop !2563

; <label>:110:                                    ; preds = %75
  %111 = load i8, i8* %7, align 1, !dbg !2565
  %112 = trunc i8 %111 to i1, !dbg !2565
  br i1 %112, label %113, label %115, !dbg !2567

; <label>:113:                                    ; preds = %110
  %114 = load %struct._vrrp_t*, %struct._vrrp_t** %5, align 8, !dbg !2568
  call void @down_instance(%struct._vrrp_t* %114), !dbg !2570
  br label %115, !dbg !2571

; <label>:115:                                    ; preds = %113, %110
  br label %116, !dbg !2572

; <label>:116:                                    ; preds = %115, %44
  %117 = load %struct._element*, %struct._element** %3, align 8, !dbg !2573
  %118 = getelementptr inbounds %struct._element, %struct._element* %117, i32 0, i32 0, !dbg !2575
  %119 = load %struct._element*, %struct._element** %118, align 8, !dbg !2575
  store %struct._element* %119, %struct._element** %3, align 8, !dbg !2576
  br label %29, !dbg !2577, !llvm.loop !2578

; <label>:120:                                    ; preds = %37
  %121 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2580
  %122 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %121, i32 0, i32 2, !dbg !2582
  %123 = load %struct._list*, %struct._list** %122, align 8, !dbg !2582
  %124 = icmp ne %struct._list* %123, null, !dbg !2583
  br i1 %124, label %125, label %139, !dbg !2583

; <label>:125:                                    ; preds = %120
  %126 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2584
  %127 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %126, i32 0, i32 2, !dbg !2586
  %128 = load %struct._list*, %struct._list** %127, align 8, !dbg !2586
  %129 = icmp ne %struct._list* %128, null, !dbg !2587
  br i1 %129, label %131, label %130, !dbg !2588

; <label>:130:                                    ; preds = %125
  br label %137, !dbg !2589

; <label>:131:                                    ; preds = %125
  %132 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2591
  %133 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %132, i32 0, i32 2, !dbg !2593
  %134 = load %struct._list*, %struct._list** %133, align 8, !dbg !2593
  %135 = getelementptr inbounds %struct._list, %struct._list* %134, i32 0, i32 0, !dbg !2594
  %136 = load %struct._element*, %struct._element** %135, align 8, !dbg !2594
  br label %137, !dbg !2595

; <label>:137:                                    ; preds = %131, %130
  %138 = phi %struct._element* [ null, %130 ], [ %136, %131 ], !dbg !2596
  br label %140, !dbg !2598

; <label>:139:                                    ; preds = %120
  br label %140, !dbg !2599

; <label>:140:                                    ; preds = %139, %137
  %141 = phi %struct._element* [ %138, %137 ], [ null, %139 ], !dbg !2601
  store %struct._element* %141, %struct._element** %3, align 8, !dbg !2603
  br label %142, !dbg !2604

; <label>:142:                                    ; preds = %167, %140
  %143 = load %struct._element*, %struct._element** %3, align 8, !dbg !2605
  %144 = icmp ne %struct._element* %143, null, !dbg !2608
  br i1 %144, label %145, label %150, !dbg !2609

; <label>:145:                                    ; preds = %142
  %146 = load %struct._element*, %struct._element** %3, align 8, !dbg !2610
  %147 = getelementptr inbounds %struct._element, %struct._element* %146, i32 0, i32 2, !dbg !2612
  %148 = load i8*, i8** %147, align 8, !dbg !2612
  %149 = bitcast i8* %148 to %struct._ip_route*, !dbg !2613
  store %struct._ip_route* %149, %struct._ip_route** %6, align 8, !dbg !2614
  br label %150

; <label>:150:                                    ; preds = %145, %142
  %151 = phi i1 [ false, %142 ], [ true, %145 ]
  br i1 %151, label %152, label %171, !dbg !2615

; <label>:152:                                    ; preds = %150
  %153 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !2617
  %154 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %153, i32 0, i32 36, !dbg !2620
  %155 = load i8, i8* %154, align 8, !dbg !2620
  %156 = trunc i8 %155 to i1, !dbg !2620
  br i1 %156, label %157, label %166, !dbg !2621

; <label>:157:                                    ; preds = %152
  %158 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !2622
  %159 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %158, i32 0, i32 10, !dbg !2624
  %160 = load %struct._interface*, %struct._interface** %159, align 8, !dbg !2624
  %161 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !2625
  %162 = icmp eq %struct._interface* %160, %161, !dbg !2626
  br i1 %162, label %163, label %166, !dbg !2627

; <label>:163:                                    ; preds = %157
  %164 = load %struct._ip_route*, %struct._ip_route** %6, align 8, !dbg !2628
  %165 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %164, i32 0, i32 36, !dbg !2630
  store i8 0, i8* %165, align 8, !dbg !2631
  br label %166, !dbg !2632

; <label>:166:                                    ; preds = %163, %157, %152
  br label %167, !dbg !2633

; <label>:167:                                    ; preds = %166
  %168 = load %struct._element*, %struct._element** %3, align 8, !dbg !2634
  %169 = getelementptr inbounds %struct._element, %struct._element* %168, i32 0, i32 0, !dbg !2636
  %170 = load %struct._element*, %struct._element** %169, align 8, !dbg !2636
  store %struct._element* %170, %struct._element** %3, align 8, !dbg !2637
  br label %142, !dbg !2638, !llvm.loop !2639

; <label>:171:                                    ; preds = %150
  ret void, !dbg !2641
}

declare void @down_instance(%struct._vrrp_t*) #3

; Function Attrs: nounwind uwtable
define void @cleanup_lost_interface(%struct._interface*) #0 !dbg !2642 {
  %2 = alloca %struct._interface*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca %struct._tracking_vrrp*, align 8
  %5 = alloca %struct._element*, align 8
  store %struct._interface* %0, %struct._interface** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %2, metadata !2643, metadata !361), !dbg !2644
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2645, metadata !361), !dbg !2646
  call void @llvm.dbg.declare(metadata %struct._tracking_vrrp** %4, metadata !2647, metadata !361), !dbg !2657
  call void @llvm.dbg.declare(metadata %struct._element** %5, metadata !2658, metadata !361), !dbg !2659
  %6 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !2660
  %7 = getelementptr inbounds %struct._interface, %struct._interface* %6, i32 0, i32 26, !dbg !2662
  %8 = load %struct._list*, %struct._list** %7, align 8, !dbg !2662
  %9 = icmp ne %struct._list* %8, null, !dbg !2663
  br i1 %9, label %10, label %24, !dbg !2663

; <label>:10:                                     ; preds = %1
  %11 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !2664
  %12 = getelementptr inbounds %struct._interface, %struct._interface* %11, i32 0, i32 26, !dbg !2666
  %13 = load %struct._list*, %struct._list** %12, align 8, !dbg !2666
  %14 = icmp ne %struct._list* %13, null, !dbg !2667
  br i1 %14, label %16, label %15, !dbg !2668

; <label>:15:                                     ; preds = %10
  br label %22, !dbg !2669

; <label>:16:                                     ; preds = %10
  %17 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !2671
  %18 = getelementptr inbounds %struct._interface, %struct._interface* %17, i32 0, i32 26, !dbg !2673
  %19 = load %struct._list*, %struct._list** %18, align 8, !dbg !2673
  %20 = getelementptr inbounds %struct._list, %struct._list* %19, i32 0, i32 0, !dbg !2674
  %21 = load %struct._element*, %struct._element** %20, align 8, !dbg !2674
  br label %22, !dbg !2675

; <label>:22:                                     ; preds = %16, %15
  %23 = phi %struct._element* [ null, %15 ], [ %21, %16 ], !dbg !2676
  br label %25, !dbg !2678

; <label>:24:                                     ; preds = %1
  br label %25, !dbg !2679

; <label>:25:                                     ; preds = %24, %22
  %26 = phi %struct._element* [ %23, %22 ], [ null, %24 ], !dbg !2681
  store %struct._element* %26, %struct._element** %5, align 8, !dbg !2683
  br label %27, !dbg !2684

; <label>:27:                                     ; preds = %117, %25
  %28 = load %struct._element*, %struct._element** %5, align 8, !dbg !2685
  %29 = icmp ne %struct._element* %28, null, !dbg !2688
  br i1 %29, label %30, label %35, !dbg !2689

; <label>:30:                                     ; preds = %27
  %31 = load %struct._element*, %struct._element** %5, align 8, !dbg !2690
  %32 = getelementptr inbounds %struct._element, %struct._element* %31, i32 0, i32 2, !dbg !2692
  %33 = load i8*, i8** %32, align 8, !dbg !2692
  %34 = bitcast i8* %33 to %struct._tracking_vrrp*, !dbg !2693
  store %struct._tracking_vrrp* %34, %struct._tracking_vrrp** %4, align 8, !dbg !2694
  br label %35

; <label>:35:                                     ; preds = %30, %27
  %36 = phi i1 [ false, %27 ], [ true, %30 ]
  br i1 %36, label %37, label %121, !dbg !2695

; <label>:37:                                     ; preds = %35
  %38 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %4, align 8, !dbg !2697
  %39 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %38, i32 0, i32 1, !dbg !2699
  %40 = load %struct._vrrp_t*, %struct._vrrp_t** %39, align 8, !dbg !2699
  store %struct._vrrp_t* %40, %struct._vrrp_t** %3, align 8, !dbg !2700
  %41 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2701
  %42 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %41, i32 0, i32 4, !dbg !2703
  %43 = load %struct._interface*, %struct._interface** %42, align 8, !dbg !2703
  %44 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !2704
  %45 = icmp ne %struct._interface* %43, %44, !dbg !2705
  br i1 %45, label %46, label %55, !dbg !2706

; <label>:46:                                     ; preds = %37
  %47 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2707
  %48 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %47, i32 0, i32 4, !dbg !2709
  %49 = load %struct._interface*, %struct._interface** %48, align 8, !dbg !2709
  %50 = getelementptr inbounds %struct._interface, %struct._interface* %49, i32 0, i32 14, !dbg !2710
  %51 = load %struct._interface*, %struct._interface** %50, align 8, !dbg !2710
  %52 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !2711
  %53 = icmp ne %struct._interface* %51, %52, !dbg !2712
  br i1 %53, label %54, label %55, !dbg !2713

; <label>:54:                                     ; preds = %46
  br label %117, !dbg !2714

; <label>:55:                                     ; preds = %46, %37
  %56 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2715
  %57 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %56, i32 0, i32 4, !dbg !2717
  %58 = load %struct._interface*, %struct._interface** %57, align 8, !dbg !2717
  %59 = getelementptr inbounds %struct._interface, %struct._interface* %58, i32 0, i32 12, !dbg !2718
  %60 = load i8, i8* %59, align 4, !dbg !2718
  %61 = trunc i8 %60 to i1, !dbg !2718
  br i1 %61, label %62, label %65, !dbg !2719

; <label>:62:                                     ; preds = %55
  %63 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2720
  %64 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %63, i32 0, i32 9, !dbg !2722
  call void @__clear_bit(i32 1, i64* %64), !dbg !2723
  br label %65, !dbg !2724

; <label>:65:                                     ; preds = %62, %55
  %66 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2725
  %67 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %66, i32 0, i32 58, !dbg !2727
  %68 = load %struct._sock*, %struct._sock** %67, align 8, !dbg !2727
  %69 = getelementptr inbounds %struct._sock, %struct._sock* %68, i32 0, i32 5, !dbg !2728
  %70 = load i32, i32* %69, align 4, !dbg !2728
  %71 = icmp ne i32 %70, -1, !dbg !2729
  br i1 %71, label %72, label %94, !dbg !2730

; <label>:72:                                     ; preds = %65
  %73 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2731
  %74 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %73, i32 0, i32 58, !dbg !2733
  %75 = load %struct._sock*, %struct._sock** %74, align 8, !dbg !2733
  %76 = getelementptr inbounds %struct._sock, %struct._sock* %75, i32 0, i32 5, !dbg !2734
  %77 = load i32, i32* %76, align 4, !dbg !2734
  call void @remove_vrrp_fd_bucket(i32 %77), !dbg !2735
  %78 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !2736
  %79 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2737
  %80 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %79, i32 0, i32 58, !dbg !2738
  %81 = load %struct._sock*, %struct._sock** %80, align 8, !dbg !2738
  %82 = getelementptr inbounds %struct._sock, %struct._sock* %81, i32 0, i32 5, !dbg !2739
  %83 = load i32, i32* %82, align 4, !dbg !2739
  call void @thread_cancel_read(%struct._thread_master* %78, i32 %83), !dbg !2740
  %84 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2741
  %85 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %84, i32 0, i32 58, !dbg !2742
  %86 = load %struct._sock*, %struct._sock** %85, align 8, !dbg !2742
  %87 = getelementptr inbounds %struct._sock, %struct._sock* %86, i32 0, i32 5, !dbg !2743
  %88 = load i32, i32* %87, align 4, !dbg !2743
  %89 = call i32 @close(i32 %88), !dbg !2744
  %90 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2745
  %91 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %90, i32 0, i32 58, !dbg !2746
  %92 = load %struct._sock*, %struct._sock** %91, align 8, !dbg !2746
  %93 = getelementptr inbounds %struct._sock, %struct._sock* %92, i32 0, i32 5, !dbg !2747
  store i32 -1, i32* %93, align 4, !dbg !2748
  br label %94, !dbg !2749

; <label>:94:                                     ; preds = %72, %65
  %95 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2750
  %96 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %95, i32 0, i32 58, !dbg !2752
  %97 = load %struct._sock*, %struct._sock** %96, align 8, !dbg !2752
  %98 = getelementptr inbounds %struct._sock, %struct._sock* %97, i32 0, i32 6, !dbg !2753
  %99 = load i32, i32* %98, align 8, !dbg !2753
  %100 = icmp ne i32 %99, -1, !dbg !2754
  br i1 %100, label %101, label %112, !dbg !2755

; <label>:101:                                    ; preds = %94
  %102 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2756
  %103 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %102, i32 0, i32 58, !dbg !2758
  %104 = load %struct._sock*, %struct._sock** %103, align 8, !dbg !2758
  %105 = getelementptr inbounds %struct._sock, %struct._sock* %104, i32 0, i32 6, !dbg !2759
  %106 = load i32, i32* %105, align 8, !dbg !2759
  %107 = call i32 @close(i32 %106), !dbg !2760
  %108 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2761
  %109 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %108, i32 0, i32 58, !dbg !2762
  %110 = load %struct._sock*, %struct._sock** %109, align 8, !dbg !2762
  %111 = getelementptr inbounds %struct._sock, %struct._sock* %110, i32 0, i32 6, !dbg !2763
  store i32 -1, i32* %111, align 8, !dbg !2764
  br label %112, !dbg !2765

; <label>:112:                                    ; preds = %101, %94
  %113 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2766
  %114 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %113, i32 0, i32 58, !dbg !2767
  %115 = load %struct._sock*, %struct._sock** %114, align 8, !dbg !2767
  %116 = getelementptr inbounds %struct._sock, %struct._sock* %115, i32 0, i32 3, !dbg !2768
  store i32 0, i32* %116, align 4, !dbg !2769
  br label %117, !dbg !2770

; <label>:117:                                    ; preds = %112, %54
  %118 = load %struct._element*, %struct._element** %5, align 8, !dbg !2771
  %119 = getelementptr inbounds %struct._element, %struct._element* %118, i32 0, i32 0, !dbg !2773
  %120 = load %struct._element*, %struct._element** %119, align 8, !dbg !2773
  store %struct._element* %120, %struct._element** %5, align 8, !dbg !2774
  br label %27, !dbg !2775, !llvm.loop !2776

; <label>:121:                                    ; preds = %35
  %122 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !2778
  call void @interface_down(%struct._interface* %122), !dbg !2779
  %123 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !2780
  %124 = getelementptr inbounds %struct._interface, %struct._interface* %123, i32 0, i32 1, !dbg !2781
  store i32 0, i32* %124, align 8, !dbg !2782
  %125 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !2783
  %126 = getelementptr inbounds %struct._interface, %struct._interface* %125, i32 0, i32 4, !dbg !2784
  store i32 0, i32* %126, align 8, !dbg !2785
  ret void, !dbg !2786
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @__clear_bit(i32, i64*) #7 !dbg !2787 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2792, metadata !361), !dbg !2793
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !2794, metadata !361), !dbg !2795
  %5 = load i32, i32* %3, align 4, !dbg !2796
  %6 = zext i32 %5 to i64, !dbg !2797
  %7 = urem i64 %6, 64, !dbg !2798
  %8 = shl i64 1, %7, !dbg !2799
  %9 = xor i64 %8, -1, !dbg !2800
  %10 = load i32, i32* %3, align 4, !dbg !2801
  %11 = zext i32 %10 to i64, !dbg !2802
  %12 = udiv i64 %11, 64, !dbg !2803
  %13 = load i64*, i64** %4, align 8, !dbg !2804
  %14 = getelementptr inbounds i64, i64* %13, i64 %12, !dbg !2804
  %15 = load i64, i64* %14, align 8, !dbg !2805
  %16 = and i64 %15, %9, !dbg !2805
  store i64 %16, i64* %14, align 8, !dbg !2805
  ret void, !dbg !2806
}

declare void @remove_vrrp_fd_bucket(i32) #3

declare void @thread_cancel_read(%struct._thread_master*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @recreate_vmac_thread(%struct._thread*) #0 !dbg !2807 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._thread*, align 8
  %4 = alloca %struct._vrrp_t*, align 8
  %5 = alloca %struct._tracking_vrrp*, align 8
  %6 = alloca %struct._element*, align 8
  %7 = alloca %struct._interface*, align 8
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !2808, metadata !361), !dbg !2809
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %4, metadata !2810, metadata !361), !dbg !2811
  call void @llvm.dbg.declare(metadata %struct._tracking_vrrp** %5, metadata !2812, metadata !361), !dbg !2813
  call void @llvm.dbg.declare(metadata %struct._element** %6, metadata !2814, metadata !361), !dbg !2815
  call void @llvm.dbg.declare(metadata %struct._interface** %7, metadata !2816, metadata !361), !dbg !2817
  %8 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2818
  %9 = getelementptr inbounds %struct._thread, %struct._thread* %8, i32 0, i32 4, !dbg !2819
  %10 = load i8*, i8** %9, align 8, !dbg !2819
  %11 = bitcast i8* %10 to %struct._interface*, !dbg !2820
  store %struct._interface* %11, %struct._interface** %7, align 8, !dbg !2817
  %12 = load %struct._interface*, %struct._interface** %7, align 8, !dbg !2821
  %13 = getelementptr inbounds %struct._interface, %struct._interface* %12, i32 0, i32 26, !dbg !2823
  %14 = load %struct._list*, %struct._list** %13, align 8, !dbg !2823
  %15 = icmp eq %struct._list* %14, null, !dbg !2824
  br i1 %15, label %35, label %16, !dbg !2825

; <label>:16:                                     ; preds = %1
  %17 = load %struct._interface*, %struct._interface** %7, align 8, !dbg !2826
  %18 = getelementptr inbounds %struct._interface, %struct._interface* %17, i32 0, i32 26, !dbg !2828
  %19 = load %struct._list*, %struct._list** %18, align 8, !dbg !2828
  %20 = getelementptr inbounds %struct._list, %struct._list* %19, i32 0, i32 0, !dbg !2829
  %21 = load %struct._element*, %struct._element** %20, align 8, !dbg !2829
  %22 = icmp eq %struct._element* %21, null, !dbg !2830
  br i1 %22, label %23, label %30, !dbg !2831

; <label>:23:                                     ; preds = %16
  %24 = load %struct._interface*, %struct._interface** %7, align 8, !dbg !2832
  %25 = getelementptr inbounds %struct._interface, %struct._interface* %24, i32 0, i32 26, !dbg !2834
  %26 = load %struct._list*, %struct._list** %25, align 8, !dbg !2834
  %27 = getelementptr inbounds %struct._list, %struct._list* %26, i32 0, i32 1, !dbg !2835
  %28 = load %struct._element*, %struct._element** %27, align 8, !dbg !2835
  %29 = icmp eq %struct._element* %28, null, !dbg !2836
  br i1 %29, label %35, label %30, !dbg !2837

; <label>:30:                                     ; preds = %23, %16
  %31 = load %struct._interface*, %struct._interface** %7, align 8, !dbg !2838
  %32 = getelementptr inbounds %struct._interface, %struct._interface* %31, i32 0, i32 12, !dbg !2840
  %33 = load i8, i8* %32, align 4, !dbg !2840
  %34 = trunc i8 %33 to i1, !dbg !2840
  br i1 %34, label %36, label %35, !dbg !2841

; <label>:35:                                     ; preds = %30, %23, %1
  store i32 0, i32* %2, align 4, !dbg !2842
  br label %86, !dbg !2842

; <label>:36:                                     ; preds = %30
  %37 = load %struct._interface*, %struct._interface** %7, align 8, !dbg !2843
  %38 = getelementptr inbounds %struct._interface, %struct._interface* %37, i32 0, i32 26, !dbg !2845
  %39 = load %struct._list*, %struct._list** %38, align 8, !dbg !2845
  %40 = icmp ne %struct._list* %39, null, !dbg !2846
  br i1 %40, label %41, label %55, !dbg !2846

; <label>:41:                                     ; preds = %36
  %42 = load %struct._interface*, %struct._interface** %7, align 8, !dbg !2847
  %43 = getelementptr inbounds %struct._interface, %struct._interface* %42, i32 0, i32 26, !dbg !2849
  %44 = load %struct._list*, %struct._list** %43, align 8, !dbg !2849
  %45 = icmp ne %struct._list* %44, null, !dbg !2850
  br i1 %45, label %47, label %46, !dbg !2851

; <label>:46:                                     ; preds = %41
  br label %53, !dbg !2852

; <label>:47:                                     ; preds = %41
  %48 = load %struct._interface*, %struct._interface** %7, align 8, !dbg !2854
  %49 = getelementptr inbounds %struct._interface, %struct._interface* %48, i32 0, i32 26, !dbg !2856
  %50 = load %struct._list*, %struct._list** %49, align 8, !dbg !2856
  %51 = getelementptr inbounds %struct._list, %struct._list* %50, i32 0, i32 0, !dbg !2857
  %52 = load %struct._element*, %struct._element** %51, align 8, !dbg !2857
  br label %53, !dbg !2858

; <label>:53:                                     ; preds = %47, %46
  %54 = phi %struct._element* [ null, %46 ], [ %52, %47 ], !dbg !2859
  br label %56, !dbg !2861

; <label>:55:                                     ; preds = %36
  br label %56, !dbg !2862

; <label>:56:                                     ; preds = %55, %53
  %57 = phi %struct._element* [ %54, %53 ], [ null, %55 ], !dbg !2864
  store %struct._element* %57, %struct._element** %6, align 8, !dbg !2866
  br label %58, !dbg !2867

; <label>:58:                                     ; preds = %81, %56
  %59 = load %struct._element*, %struct._element** %6, align 8, !dbg !2868
  %60 = icmp ne %struct._element* %59, null, !dbg !2871
  br i1 %60, label %61, label %66, !dbg !2872

; <label>:61:                                     ; preds = %58
  %62 = load %struct._element*, %struct._element** %6, align 8, !dbg !2873
  %63 = getelementptr inbounds %struct._element, %struct._element* %62, i32 0, i32 2, !dbg !2875
  %64 = load i8*, i8** %63, align 8, !dbg !2875
  %65 = bitcast i8* %64 to %struct._tracking_vrrp*, !dbg !2876
  store %struct._tracking_vrrp* %65, %struct._tracking_vrrp** %5, align 8, !dbg !2877
  br label %66

; <label>:66:                                     ; preds = %61, %58
  %67 = phi i1 [ false, %58 ], [ true, %61 ]
  br i1 %67, label %68, label %85, !dbg !2878

; <label>:68:                                     ; preds = %66
  %69 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %5, align 8, !dbg !2880
  %70 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %69, i32 0, i32 1, !dbg !2882
  %71 = load %struct._vrrp_t*, %struct._vrrp_t** %70, align 8, !dbg !2882
  store %struct._vrrp_t* %71, %struct._vrrp_t** %4, align 8, !dbg !2883
  %72 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !2884
  %73 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %72, i32 0, i32 4, !dbg !2886
  %74 = load %struct._interface*, %struct._interface** %73, align 8, !dbg !2886
  %75 = load %struct._interface*, %struct._interface** %7, align 8, !dbg !2887
  %76 = icmp ne %struct._interface* %74, %75, !dbg !2888
  br i1 %76, label %77, label %78, !dbg !2889

; <label>:77:                                     ; preds = %68
  br label %81, !dbg !2890

; <label>:78:                                     ; preds = %68
  store i32 19, i32* @netlink_error_ignore, align 4, !dbg !2891
  %79 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !2892
  %80 = call zeroext i1 @setup_interface(%struct._vrrp_t* %79), !dbg !2893
  store i32 0, i32* @netlink_error_ignore, align 4, !dbg !2894
  br label %85, !dbg !2895

; <label>:81:                                     ; preds = %77
  %82 = load %struct._element*, %struct._element** %6, align 8, !dbg !2896
  %83 = getelementptr inbounds %struct._element, %struct._element* %82, i32 0, i32 0, !dbg !2898
  %84 = load %struct._element*, %struct._element** %83, align 8, !dbg !2898
  store %struct._element* %84, %struct._element** %6, align 8, !dbg !2899
  br label %58, !dbg !2900, !llvm.loop !2901

; <label>:85:                                     ; preds = %78, %66
  store i32 0, i32* %2, align 4, !dbg !2903
  br label %86, !dbg !2903

; <label>:86:                                     ; preds = %85, %35
  %87 = load i32, i32* %2, align 4, !dbg !2904
  ret i32 %87, !dbg !2904
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @setup_interface(%struct._vrrp_t*) #0 !dbg !2905 {
  %2 = alloca i1, align 1
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca %struct._interface*, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2908, metadata !361), !dbg !2909
  call void @llvm.dbg.declare(metadata %struct._interface** %4, metadata !2910, metadata !361), !dbg !2911
  %5 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2912
  %6 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %5, i32 0, i32 9, !dbg !2914
  %7 = call zeroext i1 @__test_bit(i32 0, i64* %6), !dbg !2915
  br i1 %7, label %8, label %20, !dbg !2916

; <label>:8:                                      ; preds = %1
  %9 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2917
  %10 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %9, i32 0, i32 4, !dbg !2918
  %11 = load %struct._interface*, %struct._interface** %10, align 8, !dbg !2918
  %12 = getelementptr inbounds %struct._interface, %struct._interface* %11, i32 0, i32 1, !dbg !2919
  %13 = load i32, i32* %12, align 8, !dbg !2919
  %14 = icmp ne i32 %13, 0, !dbg !2917
  br i1 %14, label %20, label %15, !dbg !2920

; <label>:15:                                     ; preds = %8
  %16 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2922
  %17 = call zeroext i1 @netlink_link_add_vmac(%struct._vrrp_t* %16), !dbg !2925
  br i1 %17, label %19, label %18, !dbg !2926

; <label>:18:                                     ; preds = %15
  store i1 false, i1* %2, align 1, !dbg !2927
  br label %130, !dbg !2927

; <label>:19:                                     ; preds = %15
  br label %20, !dbg !2928

; <label>:20:                                     ; preds = %19, %8, %1
  %21 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2929
  %22 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %21, i32 0, i32 9, !dbg !2931
  %23 = call zeroext i1 @__test_bit(i32 2, i64* %22), !dbg !2932
  br i1 %23, label %24, label %30, !dbg !2933

; <label>:24:                                     ; preds = %20
  %25 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2934
  %26 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %25, i32 0, i32 4, !dbg !2935
  %27 = load %struct._interface*, %struct._interface** %26, align 8, !dbg !2935
  %28 = getelementptr inbounds %struct._interface, %struct._interface* %27, i32 0, i32 14, !dbg !2936
  %29 = load %struct._interface*, %struct._interface** %28, align 8, !dbg !2936
  store %struct._interface* %29, %struct._interface** %4, align 8, !dbg !2937
  br label %34, !dbg !2938

; <label>:30:                                     ; preds = %20
  %31 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2939
  %32 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %31, i32 0, i32 4, !dbg !2940
  %33 = load %struct._interface*, %struct._interface** %32, align 8, !dbg !2940
  store %struct._interface* %33, %struct._interface** %4, align 8, !dbg !2941
  br label %34

; <label>:34:                                     ; preds = %30, %24
  %35 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2942
  %36 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %35, i32 0, i32 58, !dbg !2944
  %37 = load %struct._sock*, %struct._sock** %36, align 8, !dbg !2944
  %38 = getelementptr inbounds %struct._sock, %struct._sock* %37, i32 0, i32 5, !dbg !2945
  %39 = load i32, i32* %38, align 4, !dbg !2945
  %40 = icmp eq i32 %39, -1, !dbg !2946
  br i1 %40, label %41, label %127, !dbg !2947

; <label>:41:                                     ; preds = %34
  %42 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2948
  %43 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %42, i32 0, i32 58, !dbg !2950
  %44 = load %struct._sock*, %struct._sock** %43, align 8, !dbg !2950
  %45 = getelementptr inbounds %struct._sock, %struct._sock* %44, i32 0, i32 0, !dbg !2951
  %46 = load i16, i16* %45, align 8, !dbg !2951
  %47 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2952
  %48 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %47, i32 0, i32 58, !dbg !2953
  %49 = load %struct._sock*, %struct._sock** %48, align 8, !dbg !2953
  %50 = getelementptr inbounds %struct._sock, %struct._sock* %49, i32 0, i32 2, !dbg !2954
  %51 = load i32, i32* %50, align 8, !dbg !2954
  %52 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !2955
  %53 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2956
  %54 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %53, i32 0, i32 58, !dbg !2957
  %55 = load %struct._sock*, %struct._sock** %54, align 8, !dbg !2957
  %56 = getelementptr inbounds %struct._sock, %struct._sock* %55, i32 0, i32 4, !dbg !2958
  %57 = load i8, i8* %56, align 8, !dbg !2958
  %58 = trunc i8 %57 to i1, !dbg !2958
  %59 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2959
  %60 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %59, i32 0, i32 58, !dbg !2960
  %61 = load %struct._sock*, %struct._sock** %60, align 8, !dbg !2960
  %62 = getelementptr inbounds %struct._sock, %struct._sock* %61, i32 0, i32 7, !dbg !2961
  %63 = load i32, i32* %62, align 4, !dbg !2961
  %64 = call i32 @open_vrrp_read_socket(i16 zeroext %46, i32 %51, %struct._interface* %52, i1 zeroext %58, i32 %63), !dbg !2962
  %65 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2963
  %66 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %65, i32 0, i32 58, !dbg !2964
  %67 = load %struct._sock*, %struct._sock** %66, align 8, !dbg !2964
  %68 = getelementptr inbounds %struct._sock, %struct._sock* %67, i32 0, i32 5, !dbg !2965
  store i32 %64, i32* %68, align 4, !dbg !2966
  %69 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2967
  %70 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %69, i32 0, i32 58, !dbg !2969
  %71 = load %struct._sock*, %struct._sock** %70, align 8, !dbg !2969
  %72 = getelementptr inbounds %struct._sock, %struct._sock* %71, i32 0, i32 5, !dbg !2970
  %73 = load i32, i32* %72, align 4, !dbg !2970
  %74 = icmp eq i32 %73, -1, !dbg !2971
  br i1 %74, label %75, label %80, !dbg !2972

; <label>:75:                                     ; preds = %41
  %76 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2973
  %77 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %76, i32 0, i32 58, !dbg !2974
  %78 = load %struct._sock*, %struct._sock** %77, align 8, !dbg !2974
  %79 = getelementptr inbounds %struct._sock, %struct._sock* %78, i32 0, i32 6, !dbg !2975
  store i32 -1, i32* %79, align 8, !dbg !2976
  br label %103, !dbg !2973

; <label>:80:                                     ; preds = %41
  %81 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2977
  %82 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %81, i32 0, i32 58, !dbg !2978
  %83 = load %struct._sock*, %struct._sock** %82, align 8, !dbg !2978
  %84 = getelementptr inbounds %struct._sock, %struct._sock* %83, i32 0, i32 0, !dbg !2979
  %85 = load i16, i16* %84, align 8, !dbg !2979
  %86 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2980
  %87 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %86, i32 0, i32 58, !dbg !2981
  %88 = load %struct._sock*, %struct._sock** %87, align 8, !dbg !2981
  %89 = getelementptr inbounds %struct._sock, %struct._sock* %88, i32 0, i32 2, !dbg !2982
  %90 = load i32, i32* %89, align 8, !dbg !2982
  %91 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !2983
  %92 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2984
  %93 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %92, i32 0, i32 58, !dbg !2985
  %94 = load %struct._sock*, %struct._sock** %93, align 8, !dbg !2985
  %95 = getelementptr inbounds %struct._sock, %struct._sock* %94, i32 0, i32 4, !dbg !2986
  %96 = load i8, i8* %95, align 8, !dbg !2986
  %97 = trunc i8 %96 to i1, !dbg !2986
  %98 = call i32 @open_vrrp_send_socket(i16 zeroext %85, i32 %90, %struct._interface* %91, i1 zeroext %97), !dbg !2987
  %99 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2988
  %100 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %99, i32 0, i32 58, !dbg !2989
  %101 = load %struct._sock*, %struct._sock** %100, align 8, !dbg !2989
  %102 = getelementptr inbounds %struct._sock, %struct._sock* %101, i32 0, i32 6, !dbg !2990
  store i32 %98, i32* %102, align 8, !dbg !2991
  br label %103

; <label>:103:                                    ; preds = %80, %75
  %104 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2992
  %105 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %104, i32 0, i32 4, !dbg !2993
  %106 = load %struct._interface*, %struct._interface** %105, align 8, !dbg !2993
  %107 = getelementptr inbounds %struct._interface, %struct._interface* %106, i32 0, i32 1, !dbg !2994
  %108 = load i32, i32* %107, align 8, !dbg !2994
  %109 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2995
  %110 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %109, i32 0, i32 58, !dbg !2996
  %111 = load %struct._sock*, %struct._sock** %110, align 8, !dbg !2996
  %112 = getelementptr inbounds %struct._sock, %struct._sock* %111, i32 0, i32 3, !dbg !2997
  store i32 %108, i32* %112, align 4, !dbg !2998
  %113 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2999
  call void @alloc_vrrp_fd_bucket(%struct._vrrp_t* %113), !dbg !3000
  %114 = load i8, i8* @vrrp_initialised, align 1, !dbg !3001
  %115 = trunc i8 %114 to i1, !dbg !3001
  br i1 %115, label %116, label %126, !dbg !3003

; <label>:116:                                    ; preds = %103
  %117 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3004
  %118 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %117, i32 0, i32 14, !dbg !3006
  %119 = load i32, i32* %118, align 8, !dbg !3006
  %120 = icmp ne i32 %119, 0, !dbg !3004
  %121 = select i1 %120, i32 3, i32 1, !dbg !3004
  %122 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3007
  %123 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %122, i32 0, i32 55, !dbg !3008
  store i32 %121, i32* %123, align 8, !dbg !3009
  %124 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3010
  call void @vrrp_init_instance_sands(%struct._vrrp_t* %124), !dbg !3011
  %125 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3012
  call void @vrrp_thread_add_read(%struct._vrrp_t* %125), !dbg !3013
  br label %126, !dbg !3014

; <label>:126:                                    ; preds = %116, %103
  br label %129, !dbg !3015

; <label>:127:                                    ; preds = %34
  %128 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3016
  call void @alloc_vrrp_fd_bucket(%struct._vrrp_t* %128), !dbg !3017
  br label %129

; <label>:129:                                    ; preds = %127, %126
  store i1 true, i1* %2, align 1, !dbg !3018
  br label %130, !dbg !3018

; <label>:130:                                    ; preds = %129, %18
  %131 = load i1, i1* %2, align 1, !dbg !3019
  ret i1 %131, !dbg !3019
}

; Function Attrs: nounwind uwtable
define void @update_added_interface(%struct._interface*) #0 !dbg !3020 {
  %2 = alloca %struct._interface*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca %struct._tracking_vrrp*, align 8
  %5 = alloca %struct._element*, align 8
  store %struct._interface* %0, %struct._interface** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %2, metadata !3021, metadata !361), !dbg !3022
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !3023, metadata !361), !dbg !3024
  call void @llvm.dbg.declare(metadata %struct._tracking_vrrp** %4, metadata !3025, metadata !361), !dbg !3026
  call void @llvm.dbg.declare(metadata %struct._element** %5, metadata !3027, metadata !361), !dbg !3028
  %6 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !3029
  %7 = getelementptr inbounds %struct._interface, %struct._interface* %6, i32 0, i32 26, !dbg !3031
  %8 = load %struct._list*, %struct._list** %7, align 8, !dbg !3031
  %9 = icmp eq %struct._list* %8, null, !dbg !3032
  br i1 %9, label %24, label %10, !dbg !3033

; <label>:10:                                     ; preds = %1
  %11 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !3034
  %12 = getelementptr inbounds %struct._interface, %struct._interface* %11, i32 0, i32 26, !dbg !3036
  %13 = load %struct._list*, %struct._list** %12, align 8, !dbg !3036
  %14 = getelementptr inbounds %struct._list, %struct._list* %13, i32 0, i32 0, !dbg !3037
  %15 = load %struct._element*, %struct._element** %14, align 8, !dbg !3037
  %16 = icmp eq %struct._element* %15, null, !dbg !3038
  br i1 %16, label %17, label %25, !dbg !3039

; <label>:17:                                     ; preds = %10
  %18 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !3040
  %19 = getelementptr inbounds %struct._interface, %struct._interface* %18, i32 0, i32 26, !dbg !3042
  %20 = load %struct._list*, %struct._list** %19, align 8, !dbg !3042
  %21 = getelementptr inbounds %struct._list, %struct._list* %20, i32 0, i32 1, !dbg !3043
  %22 = load %struct._element*, %struct._element** %21, align 8, !dbg !3043
  %23 = icmp eq %struct._element* %22, null, !dbg !3044
  br i1 %23, label %24, label %25, !dbg !3045

; <label>:24:                                     ; preds = %17, %1
  br label %108, !dbg !3046

; <label>:25:                                     ; preds = %17, %10
  %26 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !3047
  %27 = getelementptr inbounds %struct._interface, %struct._interface* %26, i32 0, i32 26, !dbg !3049
  %28 = load %struct._list*, %struct._list** %27, align 8, !dbg !3049
  %29 = icmp ne %struct._list* %28, null, !dbg !3050
  br i1 %29, label %30, label %44, !dbg !3050

; <label>:30:                                     ; preds = %25
  %31 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !3051
  %32 = getelementptr inbounds %struct._interface, %struct._interface* %31, i32 0, i32 26, !dbg !3053
  %33 = load %struct._list*, %struct._list** %32, align 8, !dbg !3053
  %34 = icmp ne %struct._list* %33, null, !dbg !3054
  br i1 %34, label %36, label %35, !dbg !3055

; <label>:35:                                     ; preds = %30
  br label %42, !dbg !3056

; <label>:36:                                     ; preds = %30
  %37 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !3058
  %38 = getelementptr inbounds %struct._interface, %struct._interface* %37, i32 0, i32 26, !dbg !3060
  %39 = load %struct._list*, %struct._list** %38, align 8, !dbg !3060
  %40 = getelementptr inbounds %struct._list, %struct._list* %39, i32 0, i32 0, !dbg !3061
  %41 = load %struct._element*, %struct._element** %40, align 8, !dbg !3061
  br label %42, !dbg !3062

; <label>:42:                                     ; preds = %36, %35
  %43 = phi %struct._element* [ null, %35 ], [ %41, %36 ], !dbg !3063
  br label %45, !dbg !3065

; <label>:44:                                     ; preds = %25
  br label %45, !dbg !3066

; <label>:45:                                     ; preds = %44, %42
  %46 = phi %struct._element* [ %43, %42 ], [ null, %44 ], !dbg !3068
  store %struct._element* %46, %struct._element** %5, align 8, !dbg !3070
  br label %47, !dbg !3071

; <label>:47:                                     ; preds = %104, %45
  %48 = load %struct._element*, %struct._element** %5, align 8, !dbg !3072
  %49 = icmp ne %struct._element* %48, null, !dbg !3075
  br i1 %49, label %50, label %55, !dbg !3076

; <label>:50:                                     ; preds = %47
  %51 = load %struct._element*, %struct._element** %5, align 8, !dbg !3077
  %52 = getelementptr inbounds %struct._element, %struct._element* %51, i32 0, i32 2, !dbg !3079
  %53 = load i8*, i8** %52, align 8, !dbg !3079
  %54 = bitcast i8* %53 to %struct._tracking_vrrp*, !dbg !3080
  store %struct._tracking_vrrp* %54, %struct._tracking_vrrp** %4, align 8, !dbg !3081
  br label %55

; <label>:55:                                     ; preds = %50, %47
  %56 = phi i1 [ false, %47 ], [ true, %50 ]
  br i1 %56, label %57, label %108, !dbg !3082

; <label>:57:                                     ; preds = %55
  %58 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %4, align 8, !dbg !3084
  %59 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %58, i32 0, i32 1, !dbg !3086
  %60 = load %struct._vrrp_t*, %struct._vrrp_t** %59, align 8, !dbg !3086
  store %struct._vrrp_t* %60, %struct._vrrp_t** %3, align 8, !dbg !3087
  %61 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3088
  %62 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %61, i32 0, i32 4, !dbg !3090
  %63 = load %struct._interface*, %struct._interface** %62, align 8, !dbg !3090
  %64 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !3091
  %65 = icmp ne %struct._interface* %63, %64, !dbg !3092
  br i1 %65, label %66, label %75, !dbg !3093

; <label>:66:                                     ; preds = %57
  %67 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3094
  %68 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %67, i32 0, i32 4, !dbg !3096
  %69 = load %struct._interface*, %struct._interface** %68, align 8, !dbg !3096
  %70 = getelementptr inbounds %struct._interface, %struct._interface* %69, i32 0, i32 14, !dbg !3097
  %71 = load %struct._interface*, %struct._interface** %70, align 8, !dbg !3097
  %72 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !3098
  %73 = icmp ne %struct._interface* %71, %72, !dbg !3099
  br i1 %73, label %74, label %75, !dbg !3100

; <label>:74:                                     ; preds = %66
  br label %104, !dbg !3101

; <label>:75:                                     ; preds = %66, %57
  %76 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3102
  %77 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %76, i32 0, i32 9, !dbg !3104
  %78 = call zeroext i1 @__test_bit(i32 0, i64* %77), !dbg !3105
  br i1 %78, label %79, label %101, !dbg !3106

; <label>:79:                                     ; preds = %75
  %80 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !3107
  %81 = getelementptr inbounds %struct._interface, %struct._interface* %80, i32 0, i32 12, !dbg !3109
  %82 = load i8, i8* %81, align 4, !dbg !3109
  %83 = trunc i8 %82 to i1, !dbg !3109
  br i1 %83, label %84, label %101, !dbg !3110

; <label>:84:                                     ; preds = %79
  %85 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3111
  %86 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %85, i32 0, i32 1, !dbg !3113
  %87 = load i8*, i8** %86, align 8, !dbg !3113
  %88 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3114
  %89 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %88, i32 0, i32 4, !dbg !3115
  %90 = load %struct._interface*, %struct._interface** %89, align 8, !dbg !3115
  %91 = getelementptr inbounds %struct._interface, %struct._interface* %90, i32 0, i32 0, !dbg !3116
  %92 = getelementptr inbounds [16 x i8], [16 x i8]* %91, i32 0, i32 0, !dbg !3114
  %93 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !3117
  %94 = getelementptr inbounds %struct._interface, %struct._interface* %93, i32 0, i32 0, !dbg !3118
  %95 = getelementptr inbounds [16 x i8], [16 x i8]* %94, i32 0, i32 0, !dbg !3117
  %96 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !3119
  %97 = getelementptr inbounds %struct._interface, %struct._interface* %96, i32 0, i32 14, !dbg !3120
  %98 = load %struct._interface*, %struct._interface** %97, align 8, !dbg !3120
  %99 = getelementptr inbounds %struct._interface, %struct._interface* %98, i32 0, i32 0, !dbg !3121
  %100 = getelementptr inbounds [16 x i8], [16 x i8]* %99, i32 0, i32 0, !dbg !3119
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.19, i32 0, i32 0), i8* %87, i8* %92, i8* %95, i8* %100), !dbg !3122
  br label %104, !dbg !3123

; <label>:101:                                    ; preds = %79, %75
  %102 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3124
  %103 = call zeroext i1 @setup_interface(%struct._vrrp_t* %102), !dbg !3125
  br label %104, !dbg !3126

; <label>:104:                                    ; preds = %101, %84, %74
  %105 = load %struct._element*, %struct._element** %5, align 8, !dbg !3127
  %106 = getelementptr inbounds %struct._element, %struct._element* %105, i32 0, i32 0, !dbg !3129
  %107 = load %struct._element*, %struct._element** %106, align 8, !dbg !3129
  store %struct._element* %107, %struct._element** %5, align 8, !dbg !3130
  br label %47, !dbg !3131, !llvm.loop !3132

; <label>:108:                                    ; preds = %24, %55
  ret void, !dbg !3134
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @__test_bit(i32, i64*) #7 !dbg !3135 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3140, metadata !361), !dbg !3141
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3142, metadata !361), !dbg !3143
  %5 = load i32, i32* %3, align 4, !dbg !3144
  %6 = zext i32 %5 to i64, !dbg !3145
  %7 = udiv i64 %6, 64, !dbg !3146
  %8 = load i64*, i64** %4, align 8, !dbg !3147
  %9 = getelementptr inbounds i64, i64* %8, i64 %7, !dbg !3147
  %10 = load i64, i64* %9, align 8, !dbg !3147
  %11 = load i32, i32* %3, align 4, !dbg !3148
  %12 = zext i32 %11 to i64, !dbg !3149
  %13 = urem i64 %12, 64, !dbg !3150
  %14 = shl i64 1, %13, !dbg !3151
  %15 = and i64 %10, %14, !dbg !3152
  %16 = icmp ne i64 %15, 0, !dbg !3153
  %17 = xor i1 %16, true, !dbg !3153
  %18 = xor i1 %17, true, !dbg !3154
  ret i1 %18, !dbg !3155
}

; Function Attrs: nounwind
declare void @free(i8*) #4

declare void @conf_write(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @ctime_r(i64*, i8*) #4

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #4

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #4

; Function Attrs: nounwind uwtable
define internal i32 @if_mii_status(i32) #0 !dbg !3156 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mii_ioctl_data*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3160, metadata !361), !dbg !3161
  call void @llvm.dbg.declare(metadata %struct.mii_ioctl_data** %4, metadata !3162, metadata !361), !dbg !3163
  store %struct.mii_ioctl_data* bitcast (%union.anon.7* getelementptr inbounds (%struct.ifreq, %struct.ifreq* @ifr, i32 0, i32 1) to %struct.mii_ioctl_data*), %struct.mii_ioctl_data** %4, align 8, !dbg !3163
  call void @llvm.dbg.declare(metadata i16* %5, metadata !3164, metadata !361), !dbg !3165
  %8 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %4, align 8, !dbg !3166
  %9 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %8, i32 0, i32 0, !dbg !3167
  %10 = load i16, i16* %9, align 2, !dbg !3167
  store i16 %10, i16* %5, align 2, !dbg !3165
  call void @llvm.dbg.declare(metadata i16* %6, metadata !3168, metadata !361), !dbg !3169
  call void @llvm.dbg.declare(metadata i16* %7, metadata !3170, metadata !361), !dbg !3171
  %11 = load i32, i32* %3, align 4, !dbg !3172
  %12 = load i16, i16* %5, align 2, !dbg !3174
  %13 = call zeroext i16 @if_mii_read(i32 %11, i16 zeroext %12, i16 zeroext 0), !dbg !3175
  %14 = zext i16 %13 to i32, !dbg !3175
  %15 = icmp eq i32 %14, 65535, !dbg !3176
  br i1 %15, label %22, label %16, !dbg !3177

; <label>:16:                                     ; preds = %1
  %17 = load i32, i32* %3, align 4, !dbg !3178
  %18 = load i16, i16* %5, align 2, !dbg !3179
  %19 = call zeroext i16 @if_mii_read(i32 %17, i16 zeroext %18, i16 zeroext 1), !dbg !3180
  store i16 %19, i16* %6, align 2, !dbg !3181
  %20 = zext i16 %19 to i32, !dbg !3182
  %21 = icmp eq i32 %20, 0, !dbg !3183
  br i1 %21, label %22, label %23, !dbg !3184

; <label>:22:                                     ; preds = %16, %1
  call void (i32, i8*, ...) @log_message(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds (%struct.ifreq, %struct.ifreq* @ifr, i32 0, i32 0, i32 0, i32 0)), !dbg !3186
  store i32 -1, i32* %2, align 4, !dbg !3188
  br label %39, !dbg !3188

; <label>:23:                                     ; preds = %16
  %24 = load i32, i32* %3, align 4, !dbg !3189
  %25 = load i16, i16* %5, align 2, !dbg !3190
  %26 = call zeroext i16 @if_mii_read(i32 %24, i16 zeroext %25, i16 zeroext 1), !dbg !3191
  store i16 %26, i16* %7, align 2, !dbg !3192
  %27 = load i16, i16* %6, align 2, !dbg !3193
  %28 = zext i16 %27 to i32, !dbg !3193
  %29 = and i32 %28, 4, !dbg !3195
  %30 = icmp ne i32 %29, 0, !dbg !3195
  br i1 %30, label %31, label %32, !dbg !3196

; <label>:31:                                     ; preds = %23
  store i32 1, i32* %2, align 4, !dbg !3197
  br label %39, !dbg !3197

; <label>:32:                                     ; preds = %23
  %33 = load i16, i16* %7, align 2, !dbg !3198
  %34 = zext i16 %33 to i32, !dbg !3198
  %35 = and i32 %34, 4, !dbg !3200
  %36 = icmp ne i32 %35, 0, !dbg !3200
  br i1 %36, label %37, label %38, !dbg !3201

; <label>:37:                                     ; preds = %32
  store i32 1, i32* %2, align 4, !dbg !3202
  br label %39, !dbg !3202

; <label>:38:                                     ; preds = %32
  store i32 0, i32* %2, align 4, !dbg !3203
  br label %39, !dbg !3203

; <label>:39:                                     ; preds = %38, %37, %31, %22
  %40 = load i32, i32* %2, align 4, !dbg !3204
  ret i32 %40, !dbg !3204
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @if_mii_read(i32, i16 zeroext, i16 zeroext) #0 !dbg !3205 {
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca %struct.mii_ioctl_data*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3208, metadata !361), !dbg !3209
  store i16 %1, i16* %6, align 2
  call void @llvm.dbg.declare(metadata i16* %6, metadata !3210, metadata !361), !dbg !3211
  store i16 %2, i16* %7, align 2
  call void @llvm.dbg.declare(metadata i16* %7, metadata !3212, metadata !361), !dbg !3213
  call void @llvm.dbg.declare(metadata %struct.mii_ioctl_data** %8, metadata !3214, metadata !361), !dbg !3215
  store %struct.mii_ioctl_data* bitcast (%union.anon.7* getelementptr inbounds (%struct.ifreq, %struct.ifreq* @ifr, i32 0, i32 1) to %struct.mii_ioctl_data*), %struct.mii_ioctl_data** %8, align 8, !dbg !3215
  %9 = load i16, i16* %6, align 2, !dbg !3216
  %10 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8, !dbg !3217
  %11 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %10, i32 0, i32 0, !dbg !3218
  store i16 %9, i16* %11, align 2, !dbg !3219
  %12 = load i16, i16* %7, align 2, !dbg !3220
  %13 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8, !dbg !3221
  %14 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %13, i32 0, i32 1, !dbg !3222
  store i16 %12, i16* %14, align 2, !dbg !3223
  %15 = load i32, i32* %5, align 4, !dbg !3224
  %16 = call i32 (i32, i64, ...) @ioctl(i32 %15, i64 35144, %struct.ifreq* @ifr) #9, !dbg !3226
  %17 = icmp slt i32 %16, 0, !dbg !3227
  br i1 %17, label %18, label %22, !dbg !3228

; <label>:18:                                     ; preds = %3
  %19 = call i32* @__errno_location() #1, !dbg !3229
  %20 = load i32, i32* %19, align 4, !dbg !3231
  %21 = call i8* @strerror(i32 %20) #9, !dbg !3232
  call void (i32, i8*, ...) @log_message(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds (%struct.ifreq, %struct.ifreq* @ifr, i32 0, i32 0, i32 0, i32 0), i8* %21), !dbg !3234
  store i16 -1, i16* %4, align 2, !dbg !3236
  br label %26, !dbg !3236

; <label>:22:                                     ; preds = %3
  %23 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8, !dbg !3237
  %24 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %23, i32 0, i32 3, !dbg !3238
  %25 = load i16, i16* %24, align 2, !dbg !3238
  store i16 %25, i16* %4, align 2, !dbg !3239
  br label %26, !dbg !3239

; <label>:26:                                     ; preds = %22, %18
  %27 = load i16, i16* %4, align 2, !dbg !3240
  ret i16 %27, !dbg !3240
}

; Function Attrs: nounwind uwtable
define internal i32 @if_ethtool_status(i32) #0 !dbg !3241 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ethtool_value, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3242, metadata !361), !dbg !3243
  call void @llvm.dbg.declare(metadata %struct.ethtool_value* %4, metadata !3244, metadata !361), !dbg !3250
  %5 = getelementptr inbounds %struct.ethtool_value, %struct.ethtool_value* %4, i32 0, i32 0, !dbg !3251
  store i32 10, i32* %5, align 4, !dbg !3252
  %6 = bitcast %struct.ethtool_value* %4 to i8*, !dbg !3253
  store i8* %6, i8** bitcast (%union.anon.7* getelementptr inbounds (%struct.ifreq, %struct.ifreq* @ifr, i32 0, i32 1) to i8**), align 8, !dbg !3254
  %7 = load i32, i32* %3, align 4, !dbg !3255
  %8 = call i32 (i32, i64, ...) @ioctl(i32 %7, i64 35142, %struct.ifreq* @ifr) #9, !dbg !3257
  %9 = icmp ne i32 %8, 0, !dbg !3257
  br i1 %9, label %15, label %10, !dbg !3258

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.ethtool_value, %struct.ethtool_value* %4, i32 0, i32 1, !dbg !3259
  %12 = load i32, i32* %11, align 4, !dbg !3259
  %13 = icmp ne i32 %12, 0, !dbg !3260
  %14 = select i1 %13, i32 1, i32 0, !dbg !3260
  store i32 %14, i32* %2, align 4, !dbg !3261
  br label %16, !dbg !3261

; <label>:15:                                     ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !3262
  br label %16, !dbg !3262

; <label>:16:                                     ; preds = %15, %10
  %17 = load i32, i32* %2, align 4, !dbg !3263
  ret i32 %17, !dbg !3263
}

declare void @process_if_status_change(%struct._interface*) #3

; Function Attrs: nounwind uwtable
define internal void @free_if(i8*) #0 !dbg !3264 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._interface*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3265, metadata !361), !dbg !3266
  call void @llvm.dbg.declare(metadata %struct._interface** %3, metadata !3267, metadata !361), !dbg !3268
  %4 = load i8*, i8** %2, align 8, !dbg !3269
  %5 = bitcast i8* %4 to %struct._interface*, !dbg !3269
  store %struct._interface* %5, %struct._interface** %3, align 8, !dbg !3268
  %6 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !3270
  %7 = getelementptr inbounds %struct._interface, %struct._interface* %6, i32 0, i32 26, !dbg !3271
  call void @free_list(%struct._list** %7), !dbg !3272
  %8 = load i8*, i8** %2, align 8, !dbg !3273
  call void @free(i8* %8) #9, !dbg !3274
  store i8* null, i8** %2, align 8, !dbg !3275
  ret void, !dbg !3276
}

; Function Attrs: nounwind uwtable
define internal void @dump_if(%struct._IO_FILE*, i8*) #0 !dbg !3277 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._interface*, align 8
  %6 = alloca [46 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3278, metadata !361), !dbg !3279
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3280, metadata !361), !dbg !3281
  call void @llvm.dbg.declare(metadata %struct._interface** %5, metadata !3282, metadata !361), !dbg !3283
  %11 = load i8*, i8** %4, align 8, !dbg !3284
  %12 = bitcast i8* %11 to %struct._interface*, !dbg !3284
  store %struct._interface* %12, %struct._interface** %5, align 8, !dbg !3283
  call void @llvm.dbg.declare(metadata [46 x i8]* %6, metadata !3285, metadata !361), !dbg !3289
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3290, metadata !361), !dbg !3291
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3292, metadata !361), !dbg !3293
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3294, metadata !361), !dbg !3295
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3296, metadata !361), !dbg !3297
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3298
  %14 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3299
  %15 = getelementptr inbounds %struct._interface, %struct._interface* %14, i32 0, i32 0, !dbg !3300
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i32 0, i32 0, !dbg !3299
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i8* %16), !dbg !3301
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3302
  %18 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3303
  %19 = getelementptr inbounds %struct._interface, %struct._interface* %18, i32 0, i32 1, !dbg !3304
  %20 = load i32, i32* %19, align 8, !dbg !3304
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i32 %20), !dbg !3305
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3306
  %22 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3307
  %23 = getelementptr inbounds %struct._interface, %struct._interface* %22, i32 0, i32 2, !dbg !3308
  %24 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %23, i32 0, i32 0, !dbg !3309
  %25 = load i32, i32* %24, align 4, !dbg !3309
  %26 = icmp ne i32 %25, 0, !dbg !3307
  br i1 %26, label %27, label %33, !dbg !3307

; <label>:27:                                     ; preds = %2
  %28 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3310
  %29 = getelementptr inbounds %struct._interface, %struct._interface* %28, i32 0, i32 2, !dbg !3312
  %30 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %29, i32 0, i32 0, !dbg !3313
  %31 = load i32, i32* %30, align 4, !dbg !3313
  %32 = call i8* @inet_ntop2(i32 %31), !dbg !3314
  br label %34, !dbg !3315

; <label>:33:                                     ; preds = %2
  br label %34, !dbg !3316

; <label>:34:                                     ; preds = %33, %27
  %35 = phi i8* [ %32, %27 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), %33 ], !dbg !3318
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i32 0, i32 0), i8* %35), !dbg !3320
  %36 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3321
  %37 = getelementptr inbounds %struct._interface, %struct._interface* %36, i32 0, i32 3, !dbg !3322
  %38 = bitcast %struct.in6_addr* %37 to i8*, !dbg !3323
  %39 = getelementptr inbounds [46 x i8], [46 x i8]* %6, i32 0, i32 0, !dbg !3324
  %40 = call i8* @inet_ntop(i32 10, i8* %38, i8* %39, i32 46) #9, !dbg !3325
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3326
  %42 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3327
  %43 = getelementptr inbounds %struct._interface, %struct._interface* %42, i32 0, i32 3, !dbg !3328
  %44 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %43, i32 0, i32 0, !dbg !3329
  %45 = bitcast %union.anon* %44 to [4 x i32]*, !dbg !3330
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i64 0, i64 0, !dbg !3327
  %47 = load i32, i32* %46, align 8, !dbg !3327
  %48 = icmp ne i32 %47, 0, !dbg !3327
  br i1 %48, label %49, label %51, !dbg !3327

; <label>:49:                                     ; preds = %34
  %50 = getelementptr inbounds [46 x i8], [46 x i8]* %6, i32 0, i32 0, !dbg !3331
  br label %52, !dbg !3332

; <label>:51:                                     ; preds = %34
  br label %52, !dbg !3333

; <label>:52:                                     ; preds = %51, %49
  %53 = phi i8* [ %50, %49 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), %51 ], !dbg !3334
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i32 0, i32 0), i8* %53), !dbg !3335
  %54 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3336
  %55 = getelementptr inbounds %struct._interface, %struct._interface* %54, i32 0, i32 10, !dbg !3338
  %56 = load i64, i64* %55, align 8, !dbg !3338
  %57 = icmp ne i64 %56, 0, !dbg !3336
  br i1 %57, label %58, label %144, !dbg !3339

; <label>:58:                                     ; preds = %52
  %59 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3340
  %60 = getelementptr inbounds %struct._interface, %struct._interface* %59, i32 0, i32 10, !dbg !3342
  %61 = load i64, i64* %60, align 8, !dbg !3342
  %62 = mul i64 3, %61, !dbg !3343
  store i64 %62, i64* %8, align 8, !dbg !3344
  %63 = load i64, i64* %8, align 8, !dbg !3345
  %64 = call i8* @zalloc(i64 %63), !dbg !3346
  store i8* %64, i8** %7, align 8, !dbg !3347
  store i64 0, i64* %10, align 8, !dbg !3348
  %65 = load i8*, i8** %7, align 8, !dbg !3350
  store i8* %65, i8** %9, align 8, !dbg !3351
  br label %66, !dbg !3352

; <label>:66:                                     ; preds = %98, %58
  %67 = load i64, i64* %10, align 8, !dbg !3353
  %68 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3356
  %69 = getelementptr inbounds %struct._interface, %struct._interface* %68, i32 0, i32 10, !dbg !3357
  %70 = load i64, i64* %69, align 8, !dbg !3357
  %71 = icmp ult i64 %67, %70, !dbg !3358
  br i1 %71, label %72, label %101, !dbg !3359

; <label>:72:                                     ; preds = %66
  %73 = load i8*, i8** %9, align 8, !dbg !3360
  %74 = load i64, i64* %8, align 8, !dbg !3361
  %75 = load i8*, i8** %9, align 8, !dbg !3362
  %76 = load i8*, i8** %7, align 8, !dbg !3363
  %77 = ptrtoint i8* %75 to i64, !dbg !3364
  %78 = ptrtoint i8* %76 to i64, !dbg !3364
  %79 = sub i64 %77, %78, !dbg !3364
  %80 = sub i64 %74, %79, !dbg !3365
  %81 = load i64, i64* %10, align 8, !dbg !3366
  %82 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3367
  %83 = getelementptr inbounds %struct._interface, %struct._interface* %82, i32 0, i32 8, !dbg !3368
  %84 = getelementptr inbounds [32 x i8], [32 x i8]* %83, i64 0, i64 %81, !dbg !3367
  %85 = load i8, i8* %84, align 1, !dbg !3367
  %86 = zext i8 %85 to i32, !dbg !3367
  %87 = load i64, i64* %10, align 8, !dbg !3369
  %88 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3370
  %89 = getelementptr inbounds %struct._interface, %struct._interface* %88, i32 0, i32 10, !dbg !3371
  %90 = load i64, i64* %89, align 8, !dbg !3371
  %91 = sub i64 %90, 1, !dbg !3372
  %92 = icmp ult i64 %87, %91, !dbg !3373
  %93 = select i1 %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), !dbg !3369
  %94 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %73, i64 %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %86, i8* %93) #9, !dbg !3374
  %95 = load i8*, i8** %9, align 8, !dbg !3375
  %96 = sext i32 %94 to i64, !dbg !3375
  %97 = getelementptr inbounds i8, i8* %95, i64 %96, !dbg !3375
  store i8* %97, i8** %9, align 8, !dbg !3375
  br label %98, !dbg !3376

; <label>:98:                                     ; preds = %72
  %99 = load i64, i64* %10, align 8, !dbg !3377
  %100 = add i64 %99, 1, !dbg !3377
  store i64 %100, i64* %10, align 8, !dbg !3377
  br label %66, !dbg !3379, !llvm.loop !3380

; <label>:101:                                    ; preds = %66
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3382
  %103 = load i8*, i8** %7, align 8, !dbg !3383
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* %103), !dbg !3384
  store i64 0, i64* %10, align 8, !dbg !3385
  %104 = load i8*, i8** %7, align 8, !dbg !3387
  store i8* %104, i8** %9, align 8, !dbg !3388
  br label %105, !dbg !3389

; <label>:105:                                    ; preds = %137, %101
  %106 = load i64, i64* %10, align 8, !dbg !3390
  %107 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3393
  %108 = getelementptr inbounds %struct._interface, %struct._interface* %107, i32 0, i32 10, !dbg !3394
  %109 = load i64, i64* %108, align 8, !dbg !3394
  %110 = icmp ult i64 %106, %109, !dbg !3395
  br i1 %110, label %111, label %140, !dbg !3396

; <label>:111:                                    ; preds = %105
  %112 = load i8*, i8** %9, align 8, !dbg !3397
  %113 = load i64, i64* %8, align 8, !dbg !3398
  %114 = load i8*, i8** %9, align 8, !dbg !3399
  %115 = load i8*, i8** %7, align 8, !dbg !3400
  %116 = ptrtoint i8* %114 to i64, !dbg !3401
  %117 = ptrtoint i8* %115 to i64, !dbg !3401
  %118 = sub i64 %116, %117, !dbg !3401
  %119 = sub i64 %113, %118, !dbg !3402
  %120 = load i64, i64* %10, align 8, !dbg !3403
  %121 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3404
  %122 = getelementptr inbounds %struct._interface, %struct._interface* %121, i32 0, i32 9, !dbg !3405
  %123 = getelementptr inbounds [32 x i8], [32 x i8]* %122, i64 0, i64 %120, !dbg !3404
  %124 = load i8, i8* %123, align 1, !dbg !3404
  %125 = zext i8 %124 to i32, !dbg !3404
  %126 = load i64, i64* %10, align 8, !dbg !3406
  %127 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3407
  %128 = getelementptr inbounds %struct._interface, %struct._interface* %127, i32 0, i32 10, !dbg !3408
  %129 = load i64, i64* %128, align 8, !dbg !3408
  %130 = sub i64 %129, 1, !dbg !3409
  %131 = icmp ult i64 %126, %130, !dbg !3410
  %132 = select i1 %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), !dbg !3406
  %133 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %112, i64 %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %125, i8* %132) #9, !dbg !3411
  %134 = load i8*, i8** %9, align 8, !dbg !3412
  %135 = sext i32 %133 to i64, !dbg !3412
  %136 = getelementptr inbounds i8, i8* %134, i64 %135, !dbg !3412
  store i8* %136, i8** %9, align 8, !dbg !3412
  br label %137, !dbg !3413

; <label>:137:                                    ; preds = %111
  %138 = load i64, i64* %10, align 8, !dbg !3414
  %139 = add i64 %138, 1, !dbg !3414
  store i64 %139, i64* %10, align 8, !dbg !3414
  br label %105, !dbg !3416, !llvm.loop !3417

; <label>:140:                                    ; preds = %105
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3419
  %142 = load i8*, i8** %7, align 8, !dbg !3420
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %141, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0), i8* %142), !dbg !3421
  %143 = load i8*, i8** %7, align 8, !dbg !3422
  call void @free(i8* %143) #9, !dbg !3423
  store i8* null, i8** %7, align 8, !dbg !3424
  br label %144, !dbg !3425

; <label>:144:                                    ; preds = %140, %52
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3426
  %146 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3427
  %147 = getelementptr inbounds %struct._interface, %struct._interface* %146, i32 0, i32 4, !dbg !3428
  %148 = load i32, i32* %147, align 8, !dbg !3428
  %149 = and i32 %148, 1, !dbg !3429
  %150 = icmp ne i32 %149, 0, !dbg !3427
  %151 = select i1 %150, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), !dbg !3427
  %152 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3430
  %153 = getelementptr inbounds %struct._interface, %struct._interface* %152, i32 0, i32 4, !dbg !3431
  %154 = load i32, i32* %153, align 8, !dbg !3431
  %155 = and i32 %154, 64, !dbg !3432
  %156 = icmp ne i32 %155, 0, !dbg !3430
  %157 = select i1 %156, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), !dbg !3430
  %158 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3433
  %159 = getelementptr inbounds %struct._interface, %struct._interface* %158, i32 0, i32 4, !dbg !3434
  %160 = load i32, i32* %159, align 8, !dbg !3434
  %161 = and i32 %160, 2, !dbg !3435
  %162 = icmp ne i32 %161, 0, !dbg !3436
  %163 = xor i1 %162, true, !dbg !3436
  %164 = select i1 %163, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), !dbg !3436
  %165 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3437
  %166 = getelementptr inbounds %struct._interface, %struct._interface* %165, i32 0, i32 4, !dbg !3438
  %167 = load i32, i32* %166, align 8, !dbg !3438
  %168 = and i32 %167, 8, !dbg !3439
  %169 = icmp ne i32 %168, 0, !dbg !3437
  %170 = select i1 %169, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), !dbg !3437
  %171 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3440
  %172 = getelementptr inbounds %struct._interface, %struct._interface* %171, i32 0, i32 4, !dbg !3441
  %173 = load i32, i32* %172, align 8, !dbg !3441
  %174 = and i32 %173, 16, !dbg !3442
  %175 = icmp ne i32 %174, 0, !dbg !3440
  %176 = select i1 %175, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), !dbg !3440
  %177 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3443
  %178 = getelementptr inbounds %struct._interface, %struct._interface* %177, i32 0, i32 4, !dbg !3444
  %179 = load i32, i32* %178, align 8, !dbg !3444
  %180 = and i32 %179, 128, !dbg !3445
  %181 = icmp ne i32 %180, 0, !dbg !3443
  %182 = select i1 %181, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), !dbg !3443
  %183 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3446
  %184 = getelementptr inbounds %struct._interface, %struct._interface* %183, i32 0, i32 4, !dbg !3447
  %185 = load i32, i32* %184, align 8, !dbg !3447
  %186 = and i32 %185, 4096, !dbg !3448
  %187 = icmp ne i32 %186, 0, !dbg !3449
  %188 = xor i1 %187, true, !dbg !3449
  %189 = select i1 %188, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), !dbg !3449
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %145, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.43, i32 0, i32 0), i8* %151, i8* %157, i8* %164, i8* %170, i8* %176, i8* %182, i8* %189), !dbg !3450
  %190 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3451
  %191 = getelementptr inbounds %struct._interface, %struct._interface* %190, i32 0, i32 12, !dbg !3453
  %192 = load i8, i8* %191, align 4, !dbg !3453
  %193 = trunc i8 %192 to i1, !dbg !3453
  br i1 %193, label %194, label %222, !dbg !3454

; <label>:194:                                    ; preds = %144
  %195 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3455
  %196 = getelementptr inbounds %struct._interface, %struct._interface* %195, i32 0, i32 14, !dbg !3457
  %197 = load %struct._interface*, %struct._interface** %196, align 8, !dbg !3457
  %198 = icmp ne %struct._interface* %197, null, !dbg !3455
  br i1 %198, label %199, label %222, !dbg !3458

; <label>:199:                                    ; preds = %194
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3459
  %201 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3460
  %202 = getelementptr inbounds %struct._interface, %struct._interface* %201, i32 0, i32 14, !dbg !3461
  %203 = load %struct._interface*, %struct._interface** %202, align 8, !dbg !3461
  %204 = getelementptr inbounds %struct._interface, %struct._interface* %203, i32 0, i32 0, !dbg !3462
  %205 = getelementptr inbounds [16 x i8], [16 x i8]* %204, i32 0, i32 0, !dbg !3460
  %206 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3463
  %207 = getelementptr inbounds %struct._interface, %struct._interface* %206, i32 0, i32 14, !dbg !3464
  %208 = load %struct._interface*, %struct._interface** %207, align 8, !dbg !3464
  %209 = getelementptr inbounds %struct._interface, %struct._interface* %208, i32 0, i32 4, !dbg !3465
  %210 = load i32, i32* %209, align 8, !dbg !3465
  %211 = and i32 %210, 1, !dbg !3466
  %212 = icmp ne i32 %211, 0, !dbg !3463
  %213 = select i1 %212, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), !dbg !3463
  %214 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3467
  %215 = getelementptr inbounds %struct._interface, %struct._interface* %214, i32 0, i32 14, !dbg !3468
  %216 = load %struct._interface*, %struct._interface** %215, align 8, !dbg !3468
  %217 = getelementptr inbounds %struct._interface, %struct._interface* %216, i32 0, i32 4, !dbg !3469
  %218 = load i32, i32* %217, align 8, !dbg !3469
  %219 = and i32 %218, 64, !dbg !3470
  %220 = icmp ne i32 %219, 0, !dbg !3467
  %221 = select i1 %220, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), !dbg !3467
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %200, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.50, i32 0, i32 0), i8* %205, i8* %213, i8* %221), !dbg !3471
  br label %222, !dbg !3471

; <label>:222:                                    ; preds = %199, %194, %144
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3472
  %224 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3473
  %225 = getelementptr inbounds %struct._interface, %struct._interface* %224, i32 0, i32 6, !dbg !3474
  %226 = load i32, i32* %225, align 8, !dbg !3474
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %223, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0), i32 %226), !dbg !3475
  %227 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3476
  %228 = getelementptr inbounds %struct._interface, %struct._interface* %227, i32 0, i32 7, !dbg !3477
  %229 = load i16, i16* %228, align 4, !dbg !3477
  %230 = zext i16 %229 to i32, !dbg !3476
  switch i32 %230, label %236 [
    i32 772, label %231
    i32 1, label %233
    i32 32, label %235
  ], !dbg !3478

; <label>:231:                                    ; preds = %222
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3479
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %232, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i32 0, i32 0)), !dbg !3481
  br label %242, !dbg !3482

; <label>:233:                                    ; preds = %222
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3483
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %234, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i32 0, i32 0)), !dbg !3484
  br label %242, !dbg !3485

; <label>:235:                                    ; preds = %222
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i32 0, i32 0)), !dbg !3486
  br label %242, !dbg !3487

; <label>:236:                                    ; preds = %222
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3488
  %238 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3489
  %239 = getelementptr inbounds %struct._interface, %struct._interface* %238, i32 0, i32 7, !dbg !3490
  %240 = load i16, i16* %239, align 4, !dbg !3490
  %241 = zext i16 %240 to i32, !dbg !3489
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %237, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.55, i32 0, i32 0), i32 %241), !dbg !3491
  br label %242, !dbg !3492

; <label>:242:                                    ; preds = %236, %235, %233, %231
  %243 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3493
  %244 = getelementptr inbounds %struct._interface, %struct._interface* %243, i32 0, i32 5, !dbg !3495
  %245 = load i8, i8* %244, align 4, !dbg !3495
  %246 = trunc i8 %245 to i1, !dbg !3495
  br i1 %246, label %249, label %247, !dbg !3496

; <label>:247:                                    ; preds = %242
  %248 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3497
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %248, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i32 0, i32 0)), !dbg !3498
  br label %269, !dbg !3498

; <label>:249:                                    ; preds = %242
  %250 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3499
  %251 = getelementptr inbounds %struct._interface, %struct._interface* %250, i32 0, i32 11, !dbg !3501
  %252 = load i32, i32* %251, align 8, !dbg !3501
  %253 = and i32 %252, 2, !dbg !3502
  %254 = icmp ne i32 %253, 0, !dbg !3502
  br i1 %254, label %255, label %257, !dbg !3503

; <label>:255:                                    ; preds = %249
  %256 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3504
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %256, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i32 0, i32 0)), !dbg !3505
  br label %268, !dbg !3505

; <label>:257:                                    ; preds = %249
  %258 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3506
  %259 = getelementptr inbounds %struct._interface, %struct._interface* %258, i32 0, i32 11, !dbg !3508
  %260 = load i32, i32* %259, align 8, !dbg !3508
  %261 = and i32 %260, 4, !dbg !3509
  %262 = icmp ne i32 %261, 0, !dbg !3509
  br i1 %262, label %263, label %265, !dbg !3510

; <label>:263:                                    ; preds = %257
  %264 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3511
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %264, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.58, i32 0, i32 0)), !dbg !3512
  br label %267, !dbg !3512

; <label>:265:                                    ; preds = %257
  %266 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3513
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %266, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.59, i32 0, i32 0)), !dbg !3514
  br label %267

; <label>:267:                                    ; preds = %265, %263
  br label %268

; <label>:268:                                    ; preds = %267, %255
  br label %269

; <label>:269:                                    ; preds = %268, %247
  %270 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3515
  %271 = getelementptr inbounds %struct._interface, %struct._interface* %270, i32 0, i32 17, !dbg !3517
  %272 = load i8, i8* %271, align 8, !dbg !3517
  %273 = trunc i8 %272 to i1, !dbg !3517
  br i1 %273, label %274, label %276, !dbg !3518

; <label>:274:                                    ; preds = %269
  %275 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3519
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %275, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i32 0, i32 0)), !dbg !3520
  br label %276, !dbg !3520

; <label>:276:                                    ; preds = %274, %269
  %277 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3521
  %278 = getelementptr inbounds %struct._interface, %struct._interface* %277, i32 0, i32 16, !dbg !3523
  %279 = load %struct._interface*, %struct._interface** %278, align 8, !dbg !3523
  %280 = icmp ne %struct._interface* %279, null, !dbg !3521
  br i1 %280, label %281, label %288, !dbg !3524

; <label>:281:                                    ; preds = %276
  %282 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3525
  %283 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3526
  %284 = getelementptr inbounds %struct._interface, %struct._interface* %283, i32 0, i32 16, !dbg !3527
  %285 = load %struct._interface*, %struct._interface** %284, align 8, !dbg !3527
  %286 = getelementptr inbounds %struct._interface, %struct._interface* %285, i32 0, i32 0, !dbg !3528
  %287 = getelementptr inbounds [16 x i8], [16 x i8]* %286, i32 0, i32 0, !dbg !3526
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %282, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.61, i32 0, i32 0), i8* %287), !dbg !3529
  br label %288, !dbg !3529

; <label>:288:                                    ; preds = %281, %276
  %289 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3530
  %290 = getelementptr inbounds %struct._interface, %struct._interface* %289, i32 0, i32 18, !dbg !3532
  %291 = load %struct._garp_delay*, %struct._garp_delay** %290, align 8, !dbg !3532
  %292 = icmp ne %struct._garp_delay* %291, null, !dbg !3530
  br i1 %292, label %293, label %356, !dbg !3533

; <label>:293:                                    ; preds = %288
  %294 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3534
  %295 = getelementptr inbounds %struct._interface, %struct._interface* %294, i32 0, i32 18, !dbg !3537
  %296 = load %struct._garp_delay*, %struct._garp_delay** %295, align 8, !dbg !3537
  %297 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %296, i32 0, i32 1, !dbg !3538
  %298 = load i8, i8* %297, align 8, !dbg !3538
  %299 = trunc i8 %298 to i1, !dbg !3538
  br i1 %299, label %300, label %317, !dbg !3539

; <label>:300:                                    ; preds = %293
  %301 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3540
  %302 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3541
  %303 = getelementptr inbounds %struct._interface, %struct._interface* %302, i32 0, i32 18, !dbg !3542
  %304 = load %struct._garp_delay*, %struct._garp_delay** %303, align 8, !dbg !3542
  %305 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %304, i32 0, i32 0, !dbg !3543
  %306 = getelementptr inbounds %struct.timeval, %struct.timeval* %305, i32 0, i32 0, !dbg !3544
  %307 = load i64, i64* %306, align 8, !dbg !3544
  %308 = mul nsw i64 %307, 100, !dbg !3545
  %309 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3546
  %310 = getelementptr inbounds %struct._interface, %struct._interface* %309, i32 0, i32 18, !dbg !3547
  %311 = load %struct._garp_delay*, %struct._garp_delay** %310, align 8, !dbg !3547
  %312 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %311, i32 0, i32 0, !dbg !3548
  %313 = getelementptr inbounds %struct.timeval, %struct.timeval* %312, i32 0, i32 1, !dbg !3549
  %314 = load i64, i64* %313, align 8, !dbg !3549
  %315 = sdiv i64 %314, 10000, !dbg !3550
  %316 = add nsw i64 %308, %315, !dbg !3551
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %301, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.62, i32 0, i32 0), i64 %316), !dbg !3552
  br label %317, !dbg !3552

; <label>:317:                                    ; preds = %300, %293
  %318 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3553
  %319 = getelementptr inbounds %struct._interface, %struct._interface* %318, i32 0, i32 18, !dbg !3555
  %320 = load %struct._garp_delay*, %struct._garp_delay** %319, align 8, !dbg !3555
  %321 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %320, i32 0, i32 3, !dbg !3556
  %322 = load i8, i8* %321, align 8, !dbg !3556
  %323 = trunc i8 %322 to i1, !dbg !3556
  br i1 %323, label %324, label %341, !dbg !3557

; <label>:324:                                    ; preds = %317
  %325 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3558
  %326 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3559
  %327 = getelementptr inbounds %struct._interface, %struct._interface* %326, i32 0, i32 18, !dbg !3560
  %328 = load %struct._garp_delay*, %struct._garp_delay** %327, align 8, !dbg !3560
  %329 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %328, i32 0, i32 2, !dbg !3561
  %330 = getelementptr inbounds %struct.timeval, %struct.timeval* %329, i32 0, i32 0, !dbg !3562
  %331 = load i64, i64* %330, align 8, !dbg !3562
  %332 = mul nsw i64 %331, 100, !dbg !3563
  %333 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3564
  %334 = getelementptr inbounds %struct._interface, %struct._interface* %333, i32 0, i32 18, !dbg !3565
  %335 = load %struct._garp_delay*, %struct._garp_delay** %334, align 8, !dbg !3565
  %336 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %335, i32 0, i32 2, !dbg !3566
  %337 = getelementptr inbounds %struct.timeval, %struct.timeval* %336, i32 0, i32 1, !dbg !3567
  %338 = load i64, i64* %337, align 8, !dbg !3567
  %339 = sdiv i64 %338, 10000, !dbg !3568
  %340 = add nsw i64 %332, %339, !dbg !3569
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %325, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.63, i32 0, i32 0), i64 %340), !dbg !3570
  br label %341, !dbg !3570

; <label>:341:                                    ; preds = %324, %317
  %342 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3571
  %343 = getelementptr inbounds %struct._interface, %struct._interface* %342, i32 0, i32 18, !dbg !3573
  %344 = load %struct._garp_delay*, %struct._garp_delay** %343, align 8, !dbg !3573
  %345 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %344, i32 0, i32 6, !dbg !3574
  %346 = load i32, i32* %345, align 8, !dbg !3574
  %347 = icmp ne i32 %346, 0, !dbg !3571
  br i1 %347, label %348, label %355, !dbg !3575

; <label>:348:                                    ; preds = %341
  %349 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3576
  %350 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3577
  %351 = getelementptr inbounds %struct._interface, %struct._interface* %350, i32 0, i32 18, !dbg !3578
  %352 = load %struct._garp_delay*, %struct._garp_delay** %351, align 8, !dbg !3578
  %353 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %352, i32 0, i32 6, !dbg !3579
  %354 = load i32, i32* %353, align 8, !dbg !3579
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %349, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.64, i32 0, i32 0), i32 %354), !dbg !3580
  br label %355, !dbg !3580

; <label>:355:                                    ; preds = %348, %341
  br label %356, !dbg !3581

; <label>:356:                                    ; preds = %355, %288
  %357 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3582
  %358 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3583
  %359 = getelementptr inbounds %struct._interface, %struct._interface* %358, i32 0, i32 26, !dbg !3584
  %360 = load %struct._list*, %struct._list** %359, align 8, !dbg !3584
  %361 = icmp eq %struct._list* %360, null, !dbg !3585
  br i1 %361, label %382, label %362, !dbg !3586

; <label>:362:                                    ; preds = %356
  %363 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3587
  %364 = getelementptr inbounds %struct._interface, %struct._interface* %363, i32 0, i32 26, !dbg !3588
  %365 = load %struct._list*, %struct._list** %364, align 8, !dbg !3588
  %366 = getelementptr inbounds %struct._list, %struct._list* %365, i32 0, i32 0, !dbg !3589
  %367 = load %struct._element*, %struct._element** %366, align 8, !dbg !3589
  %368 = icmp eq %struct._element* %367, null, !dbg !3590
  br i1 %368, label %369, label %376, !dbg !3591

; <label>:369:                                    ; preds = %362
  %370 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3592
  %371 = getelementptr inbounds %struct._interface, %struct._interface* %370, i32 0, i32 26, !dbg !3593
  %372 = load %struct._list*, %struct._list** %371, align 8, !dbg !3593
  %373 = getelementptr inbounds %struct._list, %struct._list* %372, i32 0, i32 1, !dbg !3594
  %374 = load %struct._element*, %struct._element** %373, align 8, !dbg !3594
  %375 = icmp eq %struct._element* %374, null, !dbg !3595
  br i1 %375, label %382, label %376, !dbg !3596

; <label>:376:                                    ; preds = %369, %362
  %377 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3597
  %378 = getelementptr inbounds %struct._interface, %struct._interface* %377, i32 0, i32 26, !dbg !3598
  %379 = load %struct._list*, %struct._list** %378, align 8, !dbg !3598
  %380 = getelementptr inbounds %struct._list, %struct._list* %379, i32 0, i32 2, !dbg !3599
  %381 = load i32, i32* %380, align 8, !dbg !3599
  br label %383, !dbg !3600

; <label>:382:                                    ; preds = %369, %356
  br label %383, !dbg !3601

; <label>:383:                                    ; preds = %382, %376
  %384 = phi i32 [ %381, %376 ], [ 0, %382 ], !dbg !3603
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %357, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.65, i32 0, i32 0), i32 %384), !dbg !3605
  %385 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3606
  %386 = getelementptr inbounds %struct._interface, %struct._interface* %385, i32 0, i32 26, !dbg !3608
  %387 = load %struct._list*, %struct._list** %386, align 8, !dbg !3608
  %388 = icmp eq %struct._list* %387, null, !dbg !3609
  br i1 %388, label %408, label %389, !dbg !3610

; <label>:389:                                    ; preds = %383
  %390 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3611
  %391 = getelementptr inbounds %struct._interface, %struct._interface* %390, i32 0, i32 26, !dbg !3613
  %392 = load %struct._list*, %struct._list** %391, align 8, !dbg !3613
  %393 = getelementptr inbounds %struct._list, %struct._list* %392, i32 0, i32 0, !dbg !3614
  %394 = load %struct._element*, %struct._element** %393, align 8, !dbg !3614
  %395 = icmp eq %struct._element* %394, null, !dbg !3615
  br i1 %395, label %396, label %403, !dbg !3616

; <label>:396:                                    ; preds = %389
  %397 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3617
  %398 = getelementptr inbounds %struct._interface, %struct._interface* %397, i32 0, i32 26, !dbg !3619
  %399 = load %struct._list*, %struct._list** %398, align 8, !dbg !3619
  %400 = getelementptr inbounds %struct._list, %struct._list* %399, i32 0, i32 1, !dbg !3620
  %401 = load %struct._element*, %struct._element** %400, align 8, !dbg !3620
  %402 = icmp eq %struct._element* %401, null, !dbg !3621
  br i1 %402, label %408, label %403, !dbg !3622

; <label>:403:                                    ; preds = %396, %389
  %404 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3623
  %405 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !3624
  %406 = getelementptr inbounds %struct._interface, %struct._interface* %405, i32 0, i32 26, !dbg !3625
  %407 = load %struct._list*, %struct._list** %406, align 8, !dbg !3625
  call void @dump_list(%struct._IO_FILE* %404, %struct._list* %407), !dbg !3626
  br label %408, !dbg !3626

; <label>:408:                                    ; preds = %403, %396, %383
  ret void, !dbg !3627
}

declare i8* @inet_ntop2(i32) #3

; Function Attrs: nounwind
declare i8* @inet_ntop(i32, i8*, i8*, i32) #4

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #4

declare void @dump_list(%struct._IO_FILE*, %struct._list*) #3

declare zeroext i1 @netlink_link_add_vmac(%struct._vrrp_t*) #3

declare i32 @open_vrrp_read_socket(i16 zeroext, i32, %struct._interface*, i1 zeroext, i32) #3

declare i32 @open_vrrp_send_socket(i16 zeroext, i32, %struct._interface*, i1 zeroext) #3

declare void @alloc_vrrp_fd_bucket(%struct._vrrp_t*) #3

declare void @vrrp_init_instance_sands(%struct._vrrp_t*) #3

declare void @vrrp_thread_add_read(%struct._vrrp_t*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!271, !272}
!llvm.ident = !{!273}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !117, globals: !142)
!1 = !DIFile(filename: "[inter]keepalived--vrrp--vrrp_if.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2 = !{!3, !10, !18, !39, !58, !87, !99, !105}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "if_lookup", file: !4, line: 142, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "IF_NO_CREATE", value: 0)
!7 = !DIEnumerator(name: "IF_CREATE_IF_DYNAMIC", value: 1)
!8 = !DIEnumerator(name: "IF_CREATE_ALWAYS", value: 2)
!9 = !DIEnumerator(name: "IF_CREATE_NETLINK", value: 3)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "chksum_compatibility", file: !11, line: 173, size: 32, align: 32, elements: !12)
!11 = !DIFile(filename: "./../include/vrrp.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!12 = !{!13, !14, !15, !16, !17}
!13 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_NONE", value: 0)
!14 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_NEVER", value: 1)
!15 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_MIN_COMPAT", value: 2)
!16 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_CONFIG", value: 3)
!17 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_AUTO", value: 4)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 41, size: 32, align: 32, elements: !20)
!19 = !DIFile(filename: "../../lib/scheduler.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!21 = !DIEnumerator(name: "THREAD_READ", value: 0)
!22 = !DIEnumerator(name: "THREAD_WRITE", value: 1)
!23 = !DIEnumerator(name: "THREAD_TIMER", value: 2)
!24 = !DIEnumerator(name: "THREAD_TIMER_SHUTDOWN", value: 3)
!25 = !DIEnumerator(name: "THREAD_EVENT", value: 4)
!26 = !DIEnumerator(name: "THREAD_CHILD", value: 5)
!27 = !DIEnumerator(name: "THREAD_READY", value: 6)
!28 = !DIEnumerator(name: "THREAD_UNUSED", value: 7)
!29 = !DIEnumerator(name: "THREAD_WRITE_TIMEOUT", value: 8)
!30 = !DIEnumerator(name: "THREAD_READ_TIMEOUT", value: 9)
!31 = !DIEnumerator(name: "THREAD_CHILD_TIMEOUT", value: 10)
!32 = !DIEnumerator(name: "THREAD_TERMINATE_START", value: 11)
!33 = !DIEnumerator(name: "THREAD_TERMINATE", value: 12)
!34 = !DIEnumerator(name: "THREAD_READY_FD", value: 13)
!35 = !DIEnumerator(name: "THREAD_READ_ERROR", value: 14)
!36 = !DIEnumerator(name: "THREAD_WRITE_ERROR", value: 15)
!37 = !DIEnumerator(name: "THREAD_IF_UP", value: 16)
!38 = !DIEnumerator(name: "THREAD_IF_DOWN", value: 17)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !40, line: 42, size: 32, align: 32, elements: !41)
!40 = !DIFile(filename: "/usr/include/net/if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!42 = !DIEnumerator(name: "IFF_UP", value: 1)
!43 = !DIEnumerator(name: "IFF_BROADCAST", value: 2)
!44 = !DIEnumerator(name: "IFF_DEBUG", value: 4)
!45 = !DIEnumerator(name: "IFF_LOOPBACK", value: 8)
!46 = !DIEnumerator(name: "IFF_POINTOPOINT", value: 16)
!47 = !DIEnumerator(name: "IFF_NOTRAILERS", value: 32)
!48 = !DIEnumerator(name: "IFF_RUNNING", value: 64)
!49 = !DIEnumerator(name: "IFF_NOARP", value: 128)
!50 = !DIEnumerator(name: "IFF_PROMISC", value: 256)
!51 = !DIEnumerator(name: "IFF_ALLMULTI", value: 512)
!52 = !DIEnumerator(name: "IFF_MASTER", value: 1024)
!53 = !DIEnumerator(name: "IFF_SLAVE", value: 2048)
!54 = !DIEnumerator(name: "IFF_MULTICAST", value: 4096)
!55 = !DIEnumerator(name: "IFF_PORTSEL", value: 8192)
!56 = !DIEnumerator(name: "IFF_AUTOMEDIA", value: 16384)
!57 = !DIEnumerator(name: "IFF_DYNAMIC", value: 32768)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !59, line: 40, size: 32, align: 32, elements: !60)
!59 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!61 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!62 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!63 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!64 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!65 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!66 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!67 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!68 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!69 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!70 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!71 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!72 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!73 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!74 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!75 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!76 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!77 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!78 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!79 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!80 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!81 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!82 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!83 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!84 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!85 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!86 = !DIEnumerator(name: "IPPROTO_MAX", value: 256)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 119, size: 32, align: 32, elements: !89)
!88 = !DIFile(filename: "./../include/vrrp_track.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97, !98}
!90 = !DIEnumerator(name: "TRACK_VRRP", value: 1)
!91 = !DIEnumerator(name: "TRACK_IF", value: 2)
!92 = !DIEnumerator(name: "TRACK_SG", value: 4)
!93 = !DIEnumerator(name: "TRACK_ADDR", value: 4)
!94 = !DIEnumerator(name: "TRACK_ROUTE", value: 8)
!95 = !DIEnumerator(name: "TRACK_RULE", value: 16)
!96 = !DIEnumerator(name: "TRACK_SADDR", value: 32)
!97 = !DIEnumerator(name: "TRACK_SROUTE", value: 64)
!98 = !DIEnumerator(name: "TRACK_SRULE", value: 128)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vrrp_vmac_bits", file: !100, line: 40, size: 32, align: 32, elements: !101)
!100 = !DIFile(filename: "./../include/vrrp_vmac.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!101 = !{!102, !103, !104}
!102 = !DIEnumerator(name: "VRRP_VMAC_BIT", value: 0)
!103 = !DIEnumerator(name: "VRRP_VMAC_UP_BIT", value: 1)
!104 = !DIEnumerator(name: "VRRP_VMAC_XMITBASE_BIT", value: 2)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !106, line: 24, size: 32, align: 32, elements: !107)
!106 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116}
!108 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!109 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!110 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!111 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!112 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!113 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!114 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!115 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!116 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!117 = !{!118, !119, !120, !122, !127, !128, !139}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!119 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !123, line: 277, baseType: !124)
!123 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !125, line: 189, baseType: !126)
!125 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!126 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!127 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mii_ioctl_data", file: !130, line: 154, size: 64, align: 16, elements: !131)
!130 = !DIFile(filename: "/usr/include/linux/mii.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!131 = !{!132, !136, !137, !138}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "phy_id", scope: !129, file: !130, line: 155, baseType: !133, size: 16, align: 16)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !134, line: 23, baseType: !135)
!134 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!135 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "reg_num", scope: !129, file: !130, line: 156, baseType: !133, size: 16, align: 16, offset: 16)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "val_in", scope: !129, file: !130, line: 157, baseType: !133, size: 16, align: 16, offset: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "val_out", scope: !129, file: !130, line: 158, baseType: !133, size: 16, align: 16, offset: 48)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !140, line: 116, baseType: !141)
!140 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__caddr_t", file: !125, line: 183, baseType: !120)
!142 = !{!143, !224, !225, !226}
!143 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !144, line: 80, type: !145, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!144 = !DIFile(filename: "vrrp_if.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !146, line: 31, baseType: !147)
!146 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !146, line: 39, size: 320, align: 64, elements: !149)
!149 = !{!150, !157, !158, !159, !163}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !148, file: !146, line: 40, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !146, line: 33, size: 192, align: 64, elements: !153)
!153 = !{!154, !155, !156}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !152, file: !146, line: 34, baseType: !151, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !152, file: !146, line: 35, baseType: !151, size: 64, align: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !152, file: !146, line: 36, baseType: !118, size: 64, align: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !148, file: !146, line: 41, baseType: !151, size: 64, align: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !148, file: !146, line: 42, baseType: !126, size: 32, align: 32, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !148, file: !146, line: 43, baseType: !160, size: 64, align: 64, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !118}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !148, file: !146, line: 44, baseType: !164, size: 64, align: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !167, !118}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 48, baseType: !170)
!169 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 241, size: 1728, align: 64, elements: !172)
!171 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !193, !194, !195, !196, !199, !200, !202, !206, !209, !211, !212, !213, !214, !215, !219, !220}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !170, file: !171, line: 242, baseType: !119, size: 32, align: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !170, file: !171, line: 247, baseType: !120, size: 64, align: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !170, file: !171, line: 248, baseType: !120, size: 64, align: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !170, file: !171, line: 249, baseType: !120, size: 64, align: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !170, file: !171, line: 250, baseType: !120, size: 64, align: 64, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !170, file: !171, line: 251, baseType: !120, size: 64, align: 64, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !170, file: !171, line: 252, baseType: !120, size: 64, align: 64, offset: 384)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !170, file: !171, line: 253, baseType: !120, size: 64, align: 64, offset: 448)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !170, file: !171, line: 254, baseType: !120, size: 64, align: 64, offset: 512)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !170, file: !171, line: 256, baseType: !120, size: 64, align: 64, offset: 576)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !170, file: !171, line: 257, baseType: !120, size: 64, align: 64, offset: 640)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !170, file: !171, line: 258, baseType: !120, size: 64, align: 64, offset: 704)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !170, file: !171, line: 260, baseType: !186, size: 64, align: 64, offset: 768)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !171, line: 156, size: 192, align: 64, elements: !188)
!188 = !{!189, !190, !192}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !187, file: !171, line: 157, baseType: !186, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !187, file: !171, line: 158, baseType: !191, size: 64, align: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !187, file: !171, line: 162, baseType: !119, size: 32, align: 32, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !170, file: !171, line: 262, baseType: !191, size: 64, align: 64, offset: 832)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !170, file: !171, line: 264, baseType: !119, size: 32, align: 32, offset: 896)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !170, file: !171, line: 268, baseType: !119, size: 32, align: 32, offset: 928)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !170, file: !171, line: 270, baseType: !197, size: 64, align: 64, offset: 960)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !125, line: 131, baseType: !198)
!198 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !170, file: !171, line: 274, baseType: !135, size: 16, align: 16, offset: 1024)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !170, file: !171, line: 275, baseType: !201, size: 8, align: 8, offset: 1040)
!201 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !170, file: !171, line: 276, baseType: !203, size: 8, align: 8, offset: 1048)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 8, align: 8, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 1)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !170, file: !171, line: 280, baseType: !207, size: 64, align: 64, offset: 1088)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !171, line: 150, baseType: null)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !170, file: !171, line: 289, baseType: !210, size: 64, align: 64, offset: 1152)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !125, line: 132, baseType: !198)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !170, file: !171, line: 297, baseType: !118, size: 64, align: 64, offset: 1216)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !170, file: !171, line: 298, baseType: !118, size: 64, align: 64, offset: 1280)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !170, file: !171, line: 299, baseType: !118, size: 64, align: 64, offset: 1344)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !170, file: !171, line: 300, baseType: !118, size: 64, align: 64, offset: 1408)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !170, file: !171, line: 302, baseType: !216, size: 64, align: 64, offset: 1472)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !217, line: 216, baseType: !218)
!217 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!218 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !170, file: !171, line: 303, baseType: !119, size: 32, align: 32, offset: 1536)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !170, file: !171, line: 305, baseType: !221, size: 160, align: 8, offset: 1568)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 160, align: 8, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 20)
!224 = distinct !DIGlobalVariable(name: "if_queue", scope: !0, file: !144, line: 74, type: !145, isLocal: true, isDefinition: true, variable: %struct._list** @if_queue)
!225 = distinct !DIGlobalVariable(name: "old_garp_delay", scope: !0, file: !144, line: 77, type: !145, isLocal: true, isDefinition: true, variable: %struct._list** @old_garp_delay)
!226 = distinct !DIGlobalVariable(name: "ifr", scope: !0, file: !144, line: 75, type: !227, isLocal: true, isDefinition: true, variable: %struct.ifreq* @ifr)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifreq", file: !40, line: 126, size: 320, align: 64, elements: !228)
!228 = !{!229, !236}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "ifr_ifrn", scope: !227, file: !40, line: 133, baseType: !230, size: 128, align: 8)
!230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !227, file: !40, line: 130, size: 128, align: 8, elements: !231)
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "ifrn_name", scope: !230, file: !40, line: 132, baseType: !233, size: 128, align: 8)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 128, align: 8, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 16)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "ifr_ifru", scope: !227, file: !40, line: 149, baseType: !237, size: 192, align: 64, offset: 128)
!237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !227, file: !40, line: 135, size: 192, align: 64, elements: !238)
!238 = !{!239, !250, !251, !252, !253, !254, !256, !257, !258, !268, !269, !270}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_addr", scope: !237, file: !40, line: 137, baseType: !240, size: 128, align: 16)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !241, line: 153, size: 128, align: 16, elements: !242)
!241 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!242 = !{!243, !246}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !240, file: !241, line: 155, baseType: !244, size: 16, align: 16)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !245, line: 28, baseType: !135)
!245 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!246 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !240, file: !241, line: 156, baseType: !247, size: 112, align: 8, offset: 16)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 112, align: 8, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 14)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_dstaddr", scope: !237, file: !40, line: 138, baseType: !240, size: 128, align: 16)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_broadaddr", scope: !237, file: !40, line: 139, baseType: !240, size: 128, align: 16)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_netmask", scope: !237, file: !40, line: 140, baseType: !240, size: 128, align: 16)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_hwaddr", scope: !237, file: !40, line: 141, baseType: !240, size: 128, align: 16)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_flags", scope: !237, file: !40, line: 142, baseType: !255, size: 16, align: 16)
!255 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_ivalue", scope: !237, file: !40, line: 143, baseType: !119, size: 32, align: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_mtu", scope: !237, file: !40, line: 144, baseType: !119, size: 32, align: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_map", scope: !237, file: !40, line: 145, baseType: !259, size: 192, align: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifmap", file: !40, line: 111, size: 192, align: 64, elements: !260)
!260 = !{!261, !262, !263, !264, !266, !267}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "mem_start", scope: !259, file: !40, line: 113, baseType: !218, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "mem_end", scope: !259, file: !40, line: 114, baseType: !218, size: 64, align: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "base_addr", scope: !259, file: !40, line: 115, baseType: !135, size: 16, align: 16, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !259, file: !40, line: 116, baseType: !265, size: 8, align: 8, offset: 144)
!265 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !259, file: !40, line: 117, baseType: !265, size: 8, align: 8, offset: 152)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !259, file: !40, line: 118, baseType: !265, size: 8, align: 8, offset: 160)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_slave", scope: !237, file: !40, line: 146, baseType: !233, size: 128, align: 8)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_newname", scope: !237, file: !40, line: 147, baseType: !233, size: 128, align: 8)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_data", scope: !237, file: !40, line: 148, baseType: !141, size: 64, align: 64)
!271 = !{i32 2, !"Dwarf Version", i32 4}
!272 = !{i32 2, !"Debug Info Version", i32 3}
!273 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!274 = distinct !DISubprogram(name: "if_get_by_ifindex", scope: !144, file: !144, line: 85, type: !275, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!275 = !DISubroutineType(types: !276)
!276 = !{!277, !283}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "interface_t", file: !4, line: 111, baseType: !279)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interface", file: !4, line: 76, size: 1792, align: 64, elements: !280)
!280 = !{!281, !282, !286, !291, !309, !310, !312, !313, !314, !320, !321, !322, !323, !324, !325, !327, !328, !329, !330, !351, !352, !353, !354, !355, !356, !357, !358}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !279, file: !4, line: 77, baseType: !233, size: 128, align: 8)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !279, file: !4, line: 78, baseType: !283, size: 32, align: 32, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "ifindex_t", file: !4, line: 62, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !285, line: 51, baseType: !126)
!285 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!286 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !279, file: !4, line: 79, baseType: !287, size: 32, align: 32, offset: 160)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !59, line: 31, size: 32, align: 32, elements: !288)
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !287, file: !59, line: 33, baseType: !290, size: 32, align: 32)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !59, line: 30, baseType: !284)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !279, file: !4, line: 80, baseType: !292, size: 128, align: 32, offset: 192)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !59, line: 211, size: 128, align: 32, elements: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !292, file: !59, line: 220, baseType: !295, size: 128, align: 32)
!295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !59, line: 213, size: 128, align: 32, elements: !296)
!296 = !{!297, !300, !305}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !295, file: !59, line: 215, baseType: !298, size: 128, align: 8)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 128, align: 8, elements: !234)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !285, line: 48, baseType: !265)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !295, file: !59, line: 217, baseType: !301, size: 128, align: 16)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 128, align: 16, elements: !303)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !285, line: 49, baseType: !135)
!303 = !{!304}
!304 = !DISubrange(count: 8)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !295, file: !59, line: 218, baseType: !306, size: 128, align: 32)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 128, align: 32, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 4)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_flags", scope: !279, file: !4, line: 81, baseType: !126, size: 32, align: 32, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !279, file: !4, line: 82, baseType: !311, size: 8, align: 8, offset: 352)
!311 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !279, file: !4, line: 83, baseType: !284, size: 32, align: 32, offset: 384)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "hw_type", scope: !279, file: !4, line: 84, baseType: !135, size: 16, align: 16, offset: 416)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr", scope: !279, file: !4, line: 85, baseType: !315, size: 256, align: 8, offset: 432)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 256, align: 8, elements: !318)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !140, line: 33, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !125, line: 30, baseType: !265)
!318 = !{!319}
!319 = !DISubrange(count: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_bcast", scope: !279, file: !4, line: 86, baseType: !315, size: 256, align: 8, offset: 688)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_len", scope: !279, file: !4, line: 87, baseType: !216, size: 64, align: 64, offset: 960)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !279, file: !4, line: 88, baseType: !119, size: 32, align: 32, offset: 1024)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "vmac", scope: !279, file: !4, line: 90, baseType: !311, size: 8, align: 8, offset: 1056)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifindex", scope: !279, file: !4, line: 91, baseType: !283, size: 32, align: 32, offset: 1088)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifp", scope: !279, file: !4, line: 92, baseType: !326, size: 64, align: 64, offset: 1152)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifindex", scope: !279, file: !4, line: 94, baseType: !283, size: 32, align: 32, offset: 1216)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifp", scope: !279, file: !4, line: 96, baseType: !326, size: 64, align: 64, offset: 1280)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master", scope: !279, file: !4, line: 97, baseType: !311, size: 8, align: 8, offset: 1344)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !279, file: !4, line: 100, baseType: !331, size: 64, align: 64, offset: 1408)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "garp_delay_t", file: !4, line: 73, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_garp_delay", file: !4, line: 65, size: 704, align: 64, elements: !334)
!334 = !{!335, !345, !346, !347, !348, !349, !350}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "garp_interval", scope: !333, file: !4, line: 66, baseType: !336, size: 128, align: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !337, line: 31, baseType: !338)
!337 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !339, line: 30, size: 128, align: 64, elements: !340)
!339 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!340 = !{!341, !343}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !338, file: !339, line: 32, baseType: !342, size: 64, align: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !125, line: 139, baseType: !198)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !338, file: !339, line: 33, baseType: !344, size: 64, align: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !125, line: 141, baseType: !198)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "have_garp_interval", scope: !333, file: !4, line: 67, baseType: !311, size: 8, align: 8, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "gna_interval", scope: !333, file: !4, line: 68, baseType: !336, size: 128, align: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "have_gna_interval", scope: !333, file: !4, line: 69, baseType: !311, size: 8, align: 8, offset: 320)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "garp_next_time", scope: !333, file: !4, line: 70, baseType: !336, size: 128, align: 64, offset: 384)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "gna_next_time", scope: !333, file: !4, line: 71, baseType: !336, size: 128, align: 64, offset: 512)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "aggregation_group", scope: !333, file: !4, line: 72, baseType: !119, size: 32, align: 32, offset: 640)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "gna_router", scope: !279, file: !4, line: 101, baseType: !311, size: 8, align: 8, offset: 1472)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_config", scope: !279, file: !4, line: 102, baseType: !119, size: 32, align: 32, offset: 1504)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_ignore_value", scope: !279, file: !4, line: 103, baseType: !284, size: 32, align: 32, offset: 1536)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_filter_value", scope: !279, file: !4, line: 104, baseType: !284, size: 32, align: 32, offset: 1568)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "reset_promote_secondaries", scope: !279, file: !4, line: 105, baseType: !284, size: 32, align: 32, offset: 1600)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "rp_filter", scope: !279, file: !4, line: 107, baseType: !126, size: 32, align: 32, offset: 1632)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries_already_set", scope: !279, file: !4, line: 109, baseType: !311, size: 8, align: 8, offset: 1664)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !279, file: !4, line: 110, baseType: !145, size: 64, align: 64, offset: 1728)
!359 = !{}
!360 = !DILocalVariable(name: "ifindex", arg: 1, scope: !274, file: !144, line: 85, type: !283)
!361 = !DIExpression()
!362 = !DILocation(line: 85, column: 29, scope: !274)
!363 = !DILocalVariable(name: "ifp", scope: !274, file: !144, line: 87, type: !277)
!364 = !DILocation(line: 87, column: 15, scope: !274)
!365 = !DILocalVariable(name: "e", scope: !274, file: !144, line: 88, type: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "element", file: !146, line: 30, baseType: !151)
!367 = !DILocation(line: 88, column: 10, scope: !274)
!368 = !DILocation(line: 90, column: 8, scope: !369)
!369 = distinct !DILexicalBlock(scope: !274, file: !144, line: 90, column: 6)
!370 = !DILocation(line: 90, column: 18, scope: !369)
!371 = !DILocation(line: 90, column: 5, scope: !369)
!372 = !DILocation(line: 90, column: 10, scope: !373)
!373 = !DILexicalBlockFile(scope: !369, file: !144, discriminator: 1)
!374 = !DILocation(line: 90, column: 21, scope: !373)
!375 = !DILocation(line: 90, column: 26, scope: !373)
!376 = !DILocation(line: 90, column: 5, scope: !373)
!377 = !DILocation(line: 90, column: 9, scope: !378)
!378 = !DILexicalBlockFile(scope: !369, file: !144, discriminator: 2)
!379 = !DILocation(line: 90, column: 20, scope: !378)
!380 = !DILocation(line: 90, column: 25, scope: !378)
!381 = !DILocation(line: 90, column: 6, scope: !378)
!382 = !DILocation(line: 91, column: 3, scope: !369)
!383 = !DILocation(line: 93, column: 14, scope: !384)
!384 = distinct !DILexicalBlock(scope: !274, file: !144, line: 93, column: 2)
!385 = !DILocation(line: 93, column: 13, scope: !384)
!386 = !DILocation(line: 93, column: 12, scope: !384)
!387 = !DILocation(line: 93, column: 12, scope: !388)
!388 = !DILexicalBlockFile(scope: !384, file: !144, discriminator: 1)
!389 = !DILocation(line: 93, column: 13, scope: !390)
!390 = !DILexicalBlockFile(scope: !384, file: !144, discriminator: 2)
!391 = !DILocation(line: 93, column: 24, scope: !390)
!392 = !DILocation(line: 93, column: 12, scope: !390)
!393 = !DILocation(line: 93, column: 12, scope: !394)
!394 = !DILexicalBlockFile(scope: !384, file: !144, discriminator: 3)
!395 = !DILocation(line: 93, column: 9, scope: !394)
!396 = !DILocation(line: 93, column: 7, scope: !394)
!397 = !DILocation(line: 93, column: 31, scope: !398)
!398 = !DILexicalBlockFile(scope: !399, file: !144, discriminator: 4)
!399 = distinct !DILexicalBlock(scope: !384, file: !144, line: 93, column: 2)
!400 = !DILocation(line: 93, column: 2, scope: !398)
!401 = !DILocation(line: 94, column: 11, scope: !402)
!402 = distinct !DILexicalBlock(scope: !399, file: !144, line: 93, column: 53)
!403 = !DILocation(line: 94, column: 15, scope: !402)
!404 = !DILocation(line: 94, column: 9, scope: !402)
!405 = !DILocation(line: 94, column: 7, scope: !402)
!406 = !DILocation(line: 95, column: 7, scope: !407)
!407 = distinct !DILexicalBlock(scope: !402, file: !144, line: 95, column: 7)
!408 = !DILocation(line: 95, column: 12, scope: !407)
!409 = !DILocation(line: 95, column: 23, scope: !407)
!410 = !DILocation(line: 95, column: 20, scope: !407)
!411 = !DILocation(line: 95, column: 7, scope: !402)
!412 = !DILocation(line: 96, column: 11, scope: !407)
!413 = !DILocation(line: 96, column: 4, scope: !407)
!414 = !DILocation(line: 97, column: 2, scope: !402)
!415 = !DILocation(line: 93, column: 42, scope: !416)
!416 = !DILexicalBlockFile(scope: !399, file: !144, discriminator: 5)
!417 = !DILocation(line: 93, column: 46, scope: !416)
!418 = !DILocation(line: 93, column: 39, scope: !416)
!419 = !DILocation(line: 93, column: 2, scope: !416)
!420 = distinct !{!420, !421}
!421 = !DILocation(line: 93, column: 2, scope: !274)
!422 = !DILocation(line: 98, column: 2, scope: !274)
!423 = !DILocation(line: 99, column: 1, scope: !274)
!424 = distinct !DISubprogram(name: "base_if_get_by_ifp", scope: !144, file: !144, line: 103, type: !425, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!425 = !DISubroutineType(types: !426)
!426 = !{!277, !277}
!427 = !DILocalVariable(name: "ifp", arg: 1, scope: !424, file: !144, line: 103, type: !277)
!428 = !DILocation(line: 103, column: 33, scope: !424)
!429 = !DILocation(line: 106, column: 10, scope: !424)
!430 = !DILocation(line: 106, column: 14, scope: !424)
!431 = !DILocation(line: 106, column: 17, scope: !432)
!432 = !DILexicalBlockFile(scope: !424, file: !144, discriminator: 1)
!433 = !DILocation(line: 106, column: 22, scope: !432)
!434 = !DILocation(line: 106, column: 9, scope: !432)
!435 = !DILocation(line: 106, column: 30, scope: !436)
!436 = !DILexicalBlockFile(scope: !424, file: !144, discriminator: 2)
!437 = !DILocation(line: 106, column: 35, scope: !436)
!438 = !DILocation(line: 106, column: 9, scope: !436)
!439 = !DILocation(line: 106, column: 46, scope: !440)
!440 = !DILexicalBlockFile(scope: !424, file: !144, discriminator: 3)
!441 = !DILocation(line: 106, column: 9, scope: !440)
!442 = !DILocation(line: 106, column: 9, scope: !443)
!443 = !DILexicalBlockFile(scope: !424, file: !144, discriminator: 4)
!444 = !DILocation(line: 106, column: 2, scope: !443)
!445 = distinct !DISubprogram(name: "if_get_by_ifname", scope: !144, file: !144, line: 113, type: !446, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!446 = !DISubroutineType(types: !447)
!447 = !{!277, !448, !450}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64, align: 64)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "if_lookup_t", file: !4, line: 147, baseType: !3)
!451 = !DILocalVariable(name: "ifname", arg: 1, scope: !445, file: !144, line: 113, type: !448)
!452 = !DILocation(line: 113, column: 30, scope: !445)
!453 = !DILocalVariable(name: "create", arg: 2, scope: !445, file: !144, line: 113, type: !450)
!454 = !DILocation(line: 113, column: 50, scope: !445)
!455 = !DILocalVariable(name: "ifp", scope: !445, file: !144, line: 115, type: !277)
!456 = !DILocation(line: 115, column: 15, scope: !445)
!457 = !DILocalVariable(name: "e", scope: !445, file: !144, line: 116, type: !366)
!458 = !DILocation(line: 116, column: 10, scope: !445)
!459 = !DILocation(line: 118, column: 9, scope: !460)
!460 = distinct !DILexicalBlock(scope: !445, file: !144, line: 118, column: 6)
!461 = !DILocation(line: 118, column: 19, scope: !460)
!462 = !DILocation(line: 118, column: 6, scope: !460)
!463 = !DILocation(line: 118, column: 11, scope: !464)
!464 = !DILexicalBlockFile(scope: !460, file: !144, discriminator: 1)
!465 = !DILocation(line: 118, column: 22, scope: !464)
!466 = !DILocation(line: 118, column: 27, scope: !464)
!467 = !DILocation(line: 118, column: 6, scope: !464)
!468 = !DILocation(line: 118, column: 10, scope: !469)
!469 = !DILexicalBlockFile(scope: !460, file: !144, discriminator: 2)
!470 = !DILocation(line: 118, column: 21, scope: !469)
!471 = !DILocation(line: 118, column: 26, scope: !469)
!472 = !DILocation(line: 118, column: 6, scope: !469)
!473 = !DILocation(line: 119, column: 15, scope: !474)
!474 = distinct !DILexicalBlock(scope: !475, file: !144, line: 119, column: 3)
!475 = distinct !DILexicalBlock(scope: !460, file: !144, line: 118, column: 10)
!476 = !DILocation(line: 119, column: 14, scope: !474)
!477 = !DILocation(line: 119, column: 13, scope: !474)
!478 = !DILocation(line: 119, column: 13, scope: !479)
!479 = !DILexicalBlockFile(scope: !474, file: !144, discriminator: 1)
!480 = !DILocation(line: 119, column: 14, scope: !481)
!481 = !DILexicalBlockFile(scope: !474, file: !144, discriminator: 2)
!482 = !DILocation(line: 119, column: 25, scope: !481)
!483 = !DILocation(line: 119, column: 13, scope: !481)
!484 = !DILocation(line: 119, column: 13, scope: !485)
!485 = !DILexicalBlockFile(scope: !474, file: !144, discriminator: 3)
!486 = !DILocation(line: 119, column: 10, scope: !485)
!487 = !DILocation(line: 119, column: 8, scope: !485)
!488 = !DILocation(line: 119, column: 32, scope: !489)
!489 = !DILexicalBlockFile(scope: !490, file: !144, discriminator: 4)
!490 = distinct !DILexicalBlock(scope: !474, file: !144, line: 119, column: 3)
!491 = !DILocation(line: 119, column: 3, scope: !489)
!492 = !DILocation(line: 120, column: 12, scope: !493)
!493 = distinct !DILexicalBlock(scope: !490, file: !144, line: 119, column: 54)
!494 = !DILocation(line: 120, column: 16, scope: !493)
!495 = !DILocation(line: 120, column: 10, scope: !493)
!496 = !DILocation(line: 120, column: 8, scope: !493)
!497 = !DILocation(line: 121, column: 16, scope: !498)
!498 = distinct !DILexicalBlock(scope: !493, file: !144, line: 121, column: 8)
!499 = !DILocation(line: 121, column: 21, scope: !498)
!500 = !DILocation(line: 121, column: 29, scope: !498)
!501 = !DILocation(line: 121, column: 9, scope: !498)
!502 = !DILocation(line: 121, column: 8, scope: !493)
!503 = !DILocation(line: 122, column: 12, scope: !498)
!504 = !DILocation(line: 122, column: 5, scope: !498)
!505 = !DILocation(line: 123, column: 3, scope: !493)
!506 = !DILocation(line: 119, column: 43, scope: !507)
!507 = !DILexicalBlockFile(scope: !490, file: !144, discriminator: 5)
!508 = !DILocation(line: 119, column: 47, scope: !507)
!509 = !DILocation(line: 119, column: 40, scope: !507)
!510 = !DILocation(line: 119, column: 3, scope: !507)
!511 = distinct !{!511, !512}
!512 = !DILocation(line: 119, column: 3, scope: !475)
!513 = !DILocation(line: 124, column: 2, scope: !475)
!514 = !DILocation(line: 126, column: 6, scope: !515)
!515 = distinct !DILexicalBlock(scope: !445, file: !144, line: 126, column: 6)
!516 = !DILocation(line: 126, column: 13, scope: !515)
!517 = !DILocation(line: 126, column: 29, scope: !515)
!518 = !DILocation(line: 127, column: 7, scope: !515)
!519 = !DILocation(line: 127, column: 14, scope: !515)
!520 = !DILocation(line: 127, column: 38, scope: !515)
!521 = !DILocation(line: 127, column: 43, scope: !522)
!522 = !DILexicalBlockFile(scope: !515, file: !144, discriminator: 1)
!523 = !DILocation(line: 127, column: 55, scope: !522)
!524 = !DILocation(line: 127, column: 59, scope: !525)
!525 = !DILexicalBlockFile(scope: !515, file: !144, discriminator: 2)
!526 = !DILocation(line: 127, column: 72, scope: !525)
!527 = !DILocation(line: 126, column: 6, scope: !528)
!528 = !DILexicalBlockFile(scope: !445, file: !144, discriminator: 1)
!529 = !DILocation(line: 128, column: 7, scope: !530)
!530 = distinct !DILexicalBlock(scope: !531, file: !144, line: 128, column: 7)
!531 = distinct !DILexicalBlock(scope: !515, file: !144, line: 127, column: 94)
!532 = !DILocation(line: 128, column: 14, scope: !530)
!533 = !DILocation(line: 128, column: 7, scope: !531)
!534 = !DILocation(line: 129, column: 37, scope: !530)
!535 = !DILocation(line: 129, column: 4, scope: !530)
!536 = !DILocation(line: 130, column: 3, scope: !531)
!537 = !DILocation(line: 133, column: 15, scope: !538)
!538 = distinct !DILexicalBlock(scope: !445, file: !144, line: 133, column: 6)
!539 = !DILocation(line: 133, column: 14, scope: !538)
!540 = !DILocation(line: 133, column: 12, scope: !538)
!541 = !DILocation(line: 133, column: 6, scope: !445)
!542 = !DILocation(line: 134, column: 3, scope: !538)
!543 = !DILocation(line: 136, column: 9, scope: !445)
!544 = !DILocation(line: 136, column: 14, scope: !445)
!545 = !DILocation(line: 136, column: 22, scope: !445)
!546 = !DILocation(line: 136, column: 2, scope: !445)
!547 = !DILocation(line: 138, column: 18, scope: !445)
!548 = !DILocation(line: 138, column: 2, scope: !445)
!549 = !DILocation(line: 138, column: 7, scope: !445)
!550 = !DILocation(line: 138, column: 16, scope: !445)
!551 = !DILocation(line: 140, column: 15, scope: !445)
!552 = !DILocation(line: 140, column: 2, scope: !445)
!553 = !DILocation(line: 142, column: 6, scope: !554)
!554 = distinct !DILexicalBlock(scope: !445, file: !144, line: 142, column: 6)
!555 = !DILocation(line: 142, column: 13, scope: !554)
!556 = !DILocation(line: 142, column: 6, scope: !445)
!557 = !DILocation(line: 143, column: 116, scope: !554)
!558 = !DILocation(line: 143, column: 3, scope: !554)
!559 = !DILocation(line: 145, column: 9, scope: !445)
!560 = !DILocation(line: 145, column: 2, scope: !445)
!561 = !DILocation(line: 146, column: 1, scope: !445)
!562 = distinct !DISubprogram(name: "if_add_queue", scope: !144, file: !144, line: 562, type: !563, isLocal: false, isDefinition: true, scopeLine: 563, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !277}
!565 = !DILocalVariable(name: "ifp", arg: 1, scope: !562, file: !144, line: 562, type: !277)
!566 = !DILocation(line: 562, column: 28, scope: !562)
!567 = !DILocation(line: 564, column: 11, scope: !562)
!568 = !DILocation(line: 564, column: 21, scope: !562)
!569 = !DILocation(line: 564, column: 2, scope: !562)
!570 = !DILocation(line: 565, column: 1, scope: !562)
!571 = distinct !DISubprogram(name: "set_base_ifp", scope: !144, file: !144, line: 151, type: !572, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!572 = !DISubroutineType(types: !573)
!573 = !{null}
!574 = !DILocalVariable(name: "ifp", scope: !571, file: !144, line: 153, type: !277)
!575 = !DILocation(line: 153, column: 15, scope: !571)
!576 = !DILocalVariable(name: "master_ifp", scope: !571, file: !144, line: 155, type: !277)
!577 = !DILocation(line: 155, column: 15, scope: !571)
!578 = !DILocalVariable(name: "e", scope: !571, file: !144, line: 157, type: !366)
!579 = !DILocation(line: 157, column: 10, scope: !571)
!580 = !DILocation(line: 159, column: 8, scope: !581)
!581 = distinct !DILexicalBlock(scope: !571, file: !144, line: 159, column: 6)
!582 = !DILocation(line: 159, column: 18, scope: !581)
!583 = !DILocation(line: 159, column: 5, scope: !581)
!584 = !DILocation(line: 159, column: 10, scope: !585)
!585 = !DILexicalBlockFile(scope: !581, file: !144, discriminator: 1)
!586 = !DILocation(line: 159, column: 21, scope: !585)
!587 = !DILocation(line: 159, column: 26, scope: !585)
!588 = !DILocation(line: 159, column: 5, scope: !585)
!589 = !DILocation(line: 159, column: 9, scope: !590)
!590 = !DILexicalBlockFile(scope: !581, file: !144, discriminator: 2)
!591 = !DILocation(line: 159, column: 20, scope: !590)
!592 = !DILocation(line: 159, column: 25, scope: !590)
!593 = !DILocation(line: 159, column: 6, scope: !590)
!594 = !DILocation(line: 160, column: 3, scope: !581)
!595 = !DILocation(line: 162, column: 15, scope: !596)
!596 = distinct !DILexicalBlock(scope: !571, file: !144, line: 162, column: 2)
!597 = !DILocation(line: 162, column: 14, scope: !596)
!598 = !DILocation(line: 162, column: 30, scope: !599)
!599 = !DILexicalBlockFile(scope: !596, file: !144, discriminator: 1)
!600 = !DILocation(line: 162, column: 29, scope: !599)
!601 = !DILocation(line: 162, column: 28, scope: !599)
!602 = !DILocation(line: 162, column: 28, scope: !603)
!603 = !DILexicalBlockFile(scope: !596, file: !144, discriminator: 2)
!604 = !DILocation(line: 162, column: 4, scope: !605)
!605 = !DILexicalBlockFile(scope: !596, file: !144, discriminator: 3)
!606 = !DILocation(line: 162, column: 15, scope: !605)
!607 = !DILocation(line: 162, column: 28, scope: !605)
!608 = !DILocation(line: 162, column: 28, scope: !609)
!609 = !DILexicalBlockFile(scope: !596, file: !144, discriminator: 4)
!610 = !DILocation(line: 162, column: 14, scope: !609)
!611 = !DILocation(line: 162, column: 14, scope: !612)
!612 = !DILexicalBlockFile(scope: !596, file: !144, discriminator: 5)
!613 = !DILocation(line: 162, column: 14, scope: !614)
!614 = !DILexicalBlockFile(scope: !596, file: !144, discriminator: 6)
!615 = !DILocation(line: 162, column: 11, scope: !614)
!616 = !DILocation(line: 162, column: 7, scope: !614)
!617 = !DILocation(line: 162, column: 5, scope: !618)
!618 = !DILexicalBlockFile(scope: !619, file: !144, discriminator: 7)
!619 = distinct !DILexicalBlock(scope: !596, file: !144, line: 162, column: 2)
!620 = !DILocation(line: 162, column: 4, scope: !618)
!621 = !DILocation(line: 162, column: 8, scope: !618)
!622 = !DILocation(line: 162, column: 22, scope: !623)
!623 = !DILexicalBlockFile(scope: !619, file: !144, discriminator: 8)
!624 = !DILocation(line: 162, column: 26, scope: !623)
!625 = !DILocation(line: 162, column: 20, scope: !623)
!626 = !DILocation(line: 162, column: 18, scope: !623)
!627 = !DILocation(line: 162, column: 2, scope: !628)
!628 = !DILexicalBlockFile(scope: !596, file: !144, discriminator: 9)
!629 = !DILocation(line: 163, column: 8, scope: !630)
!630 = distinct !DILexicalBlock(scope: !631, file: !144, line: 163, column: 7)
!631 = distinct !DILexicalBlock(scope: !619, file: !144, line: 162, column: 56)
!632 = !DILocation(line: 163, column: 13, scope: !630)
!633 = !DILocation(line: 163, column: 22, scope: !630)
!634 = !DILocation(line: 164, column: 7, scope: !630)
!635 = !DILocation(line: 164, column: 12, scope: !630)
!636 = !DILocation(line: 163, column: 7, scope: !637)
!637 = !DILexicalBlockFile(scope: !631, file: !144, discriminator: 1)
!638 = !DILocation(line: 165, column: 38, scope: !639)
!639 = distinct !DILexicalBlock(scope: !630, file: !144, line: 164, column: 26)
!640 = !DILocation(line: 165, column: 43, scope: !639)
!641 = !DILocation(line: 165, column: 20, scope: !639)
!642 = !DILocation(line: 165, column: 4, scope: !639)
!643 = !DILocation(line: 165, column: 9, scope: !639)
!644 = !DILocation(line: 165, column: 18, scope: !639)
!645 = !DILocation(line: 166, column: 4, scope: !639)
!646 = !DILocation(line: 166, column: 9, scope: !639)
!647 = !DILocation(line: 166, column: 22, scope: !639)
!648 = !DILocation(line: 167, column: 3, scope: !639)
!649 = !DILocation(line: 171, column: 7, scope: !650)
!650 = distinct !DILexicalBlock(scope: !631, file: !144, line: 171, column: 7)
!651 = !DILocation(line: 171, column: 12, scope: !650)
!652 = !DILocation(line: 171, column: 7, scope: !631)
!653 = !DILocation(line: 172, column: 35, scope: !654)
!654 = distinct !DILexicalBlock(scope: !650, file: !144, line: 171, column: 32)
!655 = !DILocation(line: 172, column: 40, scope: !654)
!656 = !DILocation(line: 172, column: 17, scope: !654)
!657 = !DILocation(line: 172, column: 15, scope: !654)
!658 = !DILocation(line: 173, column: 8, scope: !659)
!659 = distinct !DILexicalBlock(scope: !654, file: !144, line: 173, column: 8)
!660 = !DILocation(line: 173, column: 19, scope: !659)
!661 = !DILocation(line: 173, column: 22, scope: !662)
!662 = !DILexicalBlockFile(scope: !659, file: !144, discriminator: 1)
!663 = !DILocation(line: 173, column: 34, scope: !662)
!664 = !DILocation(line: 173, column: 8, scope: !662)
!665 = !DILocation(line: 174, column: 27, scope: !659)
!666 = !DILocation(line: 174, column: 5, scope: !659)
!667 = !DILocation(line: 174, column: 10, scope: !659)
!668 = !DILocation(line: 174, column: 25, scope: !659)
!669 = !DILocation(line: 175, column: 4, scope: !654)
!670 = !DILocation(line: 175, column: 9, scope: !654)
!671 = !DILocation(line: 175, column: 28, scope: !654)
!672 = !DILocation(line: 176, column: 3, scope: !654)
!673 = !DILocation(line: 178, column: 2, scope: !631)
!674 = !DILocation(line: 162, column: 45, scope: !675)
!675 = !DILexicalBlockFile(scope: !619, file: !144, discriminator: 10)
!676 = !DILocation(line: 162, column: 49, scope: !675)
!677 = !DILocation(line: 162, column: 42, scope: !675)
!678 = !DILocation(line: 162, column: 2, scope: !675)
!679 = distinct !{!679, !680}
!680 = !DILocation(line: 162, column: 2, scope: !571)
!681 = !DILocation(line: 179, column: 1, scope: !571)
!682 = distinct !DISubprogram(name: "get_if_list", scope: !144, file: !144, line: 184, type: !683, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!683 = !DISubroutineType(types: !684)
!684 = !{!145}
!685 = !DILocation(line: 186, column: 9, scope: !682)
!686 = !DILocation(line: 186, column: 2, scope: !682)
!687 = distinct !DISubprogram(name: "reset_interface_queue", scope: !144, file: !144, line: 190, type: !572, isLocal: false, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!688 = !DILocation(line: 192, column: 19, scope: !687)
!689 = !DILocation(line: 192, column: 17, scope: !687)
!690 = !DILocalVariable(name: "ifp", scope: !687, file: !144, line: 193, type: !277)
!691 = !DILocation(line: 193, column: 15, scope: !687)
!692 = !DILocalVariable(name: "e", scope: !687, file: !144, line: 194, type: !366)
!693 = !DILocation(line: 194, column: 10, scope: !687)
!694 = !DILocation(line: 196, column: 13, scope: !687)
!695 = !DILocation(line: 198, column: 15, scope: !696)
!696 = distinct !DILexicalBlock(scope: !687, file: !144, line: 198, column: 2)
!697 = !DILocation(line: 198, column: 14, scope: !696)
!698 = !DILocation(line: 198, column: 30, scope: !699)
!699 = !DILexicalBlockFile(scope: !696, file: !144, discriminator: 1)
!700 = !DILocation(line: 198, column: 29, scope: !699)
!701 = !DILocation(line: 198, column: 28, scope: !699)
!702 = !DILocation(line: 198, column: 28, scope: !703)
!703 = !DILexicalBlockFile(scope: !696, file: !144, discriminator: 2)
!704 = !DILocation(line: 198, column: 4, scope: !705)
!705 = !DILexicalBlockFile(scope: !696, file: !144, discriminator: 3)
!706 = !DILocation(line: 198, column: 15, scope: !705)
!707 = !DILocation(line: 198, column: 28, scope: !705)
!708 = !DILocation(line: 198, column: 28, scope: !709)
!709 = !DILexicalBlockFile(scope: !696, file: !144, discriminator: 4)
!710 = !DILocation(line: 198, column: 14, scope: !709)
!711 = !DILocation(line: 198, column: 14, scope: !712)
!712 = !DILexicalBlockFile(scope: !696, file: !144, discriminator: 5)
!713 = !DILocation(line: 198, column: 14, scope: !714)
!714 = !DILexicalBlockFile(scope: !696, file: !144, discriminator: 6)
!715 = !DILocation(line: 198, column: 11, scope: !714)
!716 = !DILocation(line: 198, column: 7, scope: !714)
!717 = !DILocation(line: 198, column: 5, scope: !718)
!718 = !DILexicalBlockFile(scope: !719, file: !144, discriminator: 7)
!719 = distinct !DILexicalBlock(scope: !696, file: !144, line: 198, column: 2)
!720 = !DILocation(line: 198, column: 4, scope: !718)
!721 = !DILocation(line: 198, column: 8, scope: !718)
!722 = !DILocation(line: 198, column: 22, scope: !723)
!723 = !DILexicalBlockFile(scope: !719, file: !144, discriminator: 8)
!724 = !DILocation(line: 198, column: 26, scope: !723)
!725 = !DILocation(line: 198, column: 20, scope: !723)
!726 = !DILocation(line: 198, column: 18, scope: !723)
!727 = !DILocation(line: 198, column: 2, scope: !728)
!728 = !DILexicalBlockFile(scope: !696, file: !144, discriminator: 9)
!729 = !DILocation(line: 199, column: 3, scope: !730)
!730 = distinct !DILexicalBlock(scope: !719, file: !144, line: 198, column: 56)
!731 = !DILocation(line: 199, column: 8, scope: !730)
!732 = !DILocation(line: 199, column: 29, scope: !730)
!733 = !DILocation(line: 200, column: 3, scope: !730)
!734 = !DILocation(line: 200, column: 8, scope: !730)
!735 = !DILocation(line: 200, column: 19, scope: !730)
!736 = !DILocation(line: 201, column: 14, scope: !730)
!737 = !DILocation(line: 201, column: 19, scope: !730)
!738 = !DILocation(line: 201, column: 3, scope: !730)
!739 = !DILocation(line: 202, column: 2, scope: !730)
!740 = !DILocation(line: 198, column: 45, scope: !741)
!741 = !DILexicalBlockFile(scope: !719, file: !144, discriminator: 10)
!742 = !DILocation(line: 198, column: 49, scope: !741)
!743 = !DILocation(line: 198, column: 42, scope: !741)
!744 = !DILocation(line: 198, column: 2, scope: !741)
!745 = distinct !{!745, !746}
!746 = !DILocation(line: 198, column: 2, scope: !687)
!747 = !DILocation(line: 203, column: 1, scope: !687)
!748 = distinct !DISubprogram(name: "alloc_garp_delay", scope: !144, file: !144, line: 416, type: !572, isLocal: false, isDefinition: true, scopeLine: 417, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!749 = !DILocation(line: 418, column: 9, scope: !750)
!750 = distinct !DILexicalBlock(scope: !748, file: !144, line: 418, column: 6)
!751 = !DILocation(line: 418, column: 21, scope: !750)
!752 = !DILocation(line: 418, column: 6, scope: !748)
!753 = !DILocation(line: 419, column: 16, scope: !750)
!754 = !DILocation(line: 419, column: 14, scope: !750)
!755 = !DILocation(line: 419, column: 3, scope: !750)
!756 = !DILocation(line: 421, column: 11, scope: !748)
!757 = !DILocation(line: 421, column: 24, scope: !748)
!758 = !DILocation(line: 421, column: 2, scope: !759)
!759 = !DILexicalBlockFile(scope: !748, file: !144, discriminator: 1)
!760 = !DILocation(line: 422, column: 1, scope: !748)
!761 = distinct !DISubprogram(name: "free_garp_delay", scope: !144, file: !144, line: 377, type: !161, isLocal: true, isDefinition: true, scopeLine: 378, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!762 = !DILocalVariable(name: "data", arg: 1, scope: !761, file: !144, line: 377, type: !118)
!763 = !DILocation(line: 377, column: 23, scope: !761)
!764 = !DILocation(line: 379, column: 8, scope: !761)
!765 = !DILocation(line: 379, column: 3, scope: !761)
!766 = !DILocation(line: 379, column: 22, scope: !761)
!767 = !DILocation(line: 380, column: 1, scope: !761)
!768 = distinct !DISubprogram(name: "dump_garp_delay", scope: !144, file: !144, line: 383, type: !165, isLocal: true, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!769 = !DILocalVariable(name: "fp", arg: 1, scope: !768, file: !144, line: 383, type: !167)
!770 = !DILocation(line: 383, column: 23, scope: !768)
!771 = !DILocalVariable(name: "data", arg: 2, scope: !768, file: !144, line: 383, type: !118)
!772 = !DILocation(line: 383, column: 33, scope: !768)
!773 = !DILocalVariable(name: "gd", scope: !768, file: !144, line: 385, type: !331)
!774 = !DILocation(line: 385, column: 16, scope: !768)
!775 = !DILocation(line: 385, column: 21, scope: !768)
!776 = !DILocalVariable(name: "time_str", scope: !768, file: !144, line: 386, type: !777)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 208, align: 8, elements: !778)
!778 = !{!779}
!779 = !DISubrange(count: 26)
!780 = !DILocation(line: 386, column: 7, scope: !768)
!781 = !DILocalVariable(name: "ifp", scope: !768, file: !144, line: 387, type: !277)
!782 = !DILocation(line: 387, column: 15, scope: !768)
!783 = !DILocalVariable(name: "e", scope: !768, file: !144, line: 388, type: !366)
!784 = !DILocation(line: 388, column: 10, scope: !768)
!785 = !DILocation(line: 390, column: 13, scope: !768)
!786 = !DILocation(line: 390, column: 56, scope: !768)
!787 = !DILocation(line: 390, column: 60, scope: !768)
!788 = !DILocation(line: 390, column: 2, scope: !768)
!789 = !DILocation(line: 392, column: 6, scope: !790)
!790 = distinct !DILexicalBlock(scope: !768, file: !144, line: 392, column: 6)
!791 = !DILocation(line: 392, column: 10, scope: !790)
!792 = !DILocation(line: 392, column: 6, scope: !768)
!793 = !DILocation(line: 393, column: 14, scope: !794)
!794 = distinct !DILexicalBlock(scope: !790, file: !144, line: 392, column: 30)
!795 = !DILocation(line: 393, column: 41, scope: !794)
!796 = !DILocation(line: 393, column: 45, scope: !794)
!797 = !DILocation(line: 393, column: 59, scope: !794)
!798 = !DILocation(line: 393, column: 77, scope: !794)
!799 = !DILocation(line: 393, column: 81, scope: !794)
!800 = !DILocation(line: 393, column: 95, scope: !794)
!801 = !DILocation(line: 393, column: 69, scope: !794)
!802 = !DILocation(line: 393, column: 104, scope: !794)
!803 = !DILocation(line: 393, column: 66, scope: !794)
!804 = !DILocation(line: 393, column: 3, scope: !794)
!805 = !DILocation(line: 394, column: 17, scope: !806)
!806 = distinct !DILexicalBlock(scope: !794, file: !144, line: 394, column: 7)
!807 = !DILocation(line: 394, column: 21, scope: !806)
!808 = !DILocation(line: 394, column: 36, scope: !806)
!809 = !DILocation(line: 394, column: 44, scope: !806)
!810 = !DILocation(line: 394, column: 8, scope: !806)
!811 = !DILocation(line: 394, column: 7, scope: !794)
!812 = !DILocation(line: 395, column: 32, scope: !806)
!813 = !DILocation(line: 395, column: 25, scope: !806)
!814 = !DILocation(line: 396, column: 14, scope: !794)
!815 = !DILocation(line: 396, column: 63, scope: !794)
!816 = !DILocation(line: 396, column: 67, scope: !794)
!817 = !DILocation(line: 396, column: 82, scope: !794)
!818 = !DILocation(line: 396, column: 90, scope: !794)
!819 = !DILocation(line: 396, column: 94, scope: !794)
!820 = !DILocation(line: 396, column: 109, scope: !794)
!821 = !DILocation(line: 396, column: 118, scope: !794)
!822 = !DILocation(line: 396, column: 128, scope: !794)
!823 = !DILocation(line: 396, column: 132, scope: !794)
!824 = !DILocation(line: 396, column: 147, scope: !794)
!825 = !DILocation(line: 396, column: 3, scope: !794)
!826 = !DILocation(line: 397, column: 2, scope: !794)
!827 = !DILocation(line: 399, column: 6, scope: !828)
!828 = distinct !DILexicalBlock(scope: !768, file: !144, line: 399, column: 6)
!829 = !DILocation(line: 399, column: 10, scope: !828)
!830 = !DILocation(line: 399, column: 6, scope: !768)
!831 = !DILocation(line: 400, column: 14, scope: !832)
!832 = distinct !DILexicalBlock(scope: !828, file: !144, line: 399, column: 29)
!833 = !DILocation(line: 400, column: 40, scope: !832)
!834 = !DILocation(line: 400, column: 44, scope: !832)
!835 = !DILocation(line: 400, column: 57, scope: !832)
!836 = !DILocation(line: 400, column: 75, scope: !832)
!837 = !DILocation(line: 400, column: 79, scope: !832)
!838 = !DILocation(line: 400, column: 92, scope: !832)
!839 = !DILocation(line: 400, column: 67, scope: !832)
!840 = !DILocation(line: 400, column: 101, scope: !832)
!841 = !DILocation(line: 400, column: 64, scope: !832)
!842 = !DILocation(line: 400, column: 3, scope: !832)
!843 = !DILocation(line: 401, column: 17, scope: !844)
!844 = distinct !DILexicalBlock(scope: !832, file: !144, line: 401, column: 7)
!845 = !DILocation(line: 401, column: 21, scope: !844)
!846 = !DILocation(line: 401, column: 35, scope: !844)
!847 = !DILocation(line: 401, column: 43, scope: !844)
!848 = !DILocation(line: 401, column: 8, scope: !844)
!849 = !DILocation(line: 401, column: 7, scope: !832)
!850 = !DILocation(line: 402, column: 32, scope: !844)
!851 = !DILocation(line: 402, column: 25, scope: !844)
!852 = !DILocation(line: 403, column: 14, scope: !832)
!853 = !DILocation(line: 403, column: 62, scope: !832)
!854 = !DILocation(line: 403, column: 66, scope: !832)
!855 = !DILocation(line: 403, column: 80, scope: !832)
!856 = !DILocation(line: 403, column: 88, scope: !832)
!857 = !DILocation(line: 403, column: 92, scope: !832)
!858 = !DILocation(line: 403, column: 106, scope: !832)
!859 = !DILocation(line: 403, column: 115, scope: !832)
!860 = !DILocation(line: 403, column: 125, scope: !832)
!861 = !DILocation(line: 403, column: 129, scope: !832)
!862 = !DILocation(line: 403, column: 143, scope: !832)
!863 = !DILocation(line: 403, column: 3, scope: !832)
!864 = !DILocation(line: 404, column: 2, scope: !832)
!865 = !DILocation(line: 405, column: 12, scope: !866)
!866 = distinct !DILexicalBlock(scope: !828, file: !144, line: 405, column: 11)
!867 = !DILocation(line: 405, column: 16, scope: !866)
!868 = !DILocation(line: 405, column: 11, scope: !828)
!869 = !DILocation(line: 406, column: 14, scope: !866)
!870 = !DILocation(line: 406, column: 3, scope: !866)
!871 = !DILocation(line: 408, column: 13, scope: !768)
!872 = !DILocation(line: 408, column: 2, scope: !768)
!873 = !DILocation(line: 409, column: 15, scope: !874)
!874 = distinct !DILexicalBlock(scope: !768, file: !144, line: 409, column: 2)
!875 = !DILocation(line: 409, column: 14, scope: !874)
!876 = !DILocation(line: 409, column: 30, scope: !877)
!877 = !DILexicalBlockFile(scope: !874, file: !144, discriminator: 1)
!878 = !DILocation(line: 409, column: 29, scope: !877)
!879 = !DILocation(line: 409, column: 28, scope: !877)
!880 = !DILocation(line: 409, column: 28, scope: !881)
!881 = !DILexicalBlockFile(scope: !874, file: !144, discriminator: 2)
!882 = !DILocation(line: 409, column: 4, scope: !883)
!883 = !DILexicalBlockFile(scope: !874, file: !144, discriminator: 3)
!884 = !DILocation(line: 409, column: 15, scope: !883)
!885 = !DILocation(line: 409, column: 28, scope: !883)
!886 = !DILocation(line: 409, column: 28, scope: !887)
!887 = !DILexicalBlockFile(scope: !874, file: !144, discriminator: 4)
!888 = !DILocation(line: 409, column: 14, scope: !887)
!889 = !DILocation(line: 409, column: 14, scope: !890)
!890 = !DILexicalBlockFile(scope: !874, file: !144, discriminator: 5)
!891 = !DILocation(line: 409, column: 14, scope: !892)
!892 = !DILexicalBlockFile(scope: !874, file: !144, discriminator: 6)
!893 = !DILocation(line: 409, column: 11, scope: !892)
!894 = !DILocation(line: 409, column: 7, scope: !892)
!895 = !DILocation(line: 409, column: 5, scope: !896)
!896 = !DILexicalBlockFile(scope: !897, file: !144, discriminator: 7)
!897 = distinct !DILexicalBlock(scope: !874, file: !144, line: 409, column: 2)
!898 = !DILocation(line: 409, column: 4, scope: !896)
!899 = !DILocation(line: 409, column: 8, scope: !896)
!900 = !DILocation(line: 409, column: 22, scope: !901)
!901 = !DILexicalBlockFile(scope: !897, file: !144, discriminator: 8)
!902 = !DILocation(line: 409, column: 26, scope: !901)
!903 = !DILocation(line: 409, column: 20, scope: !901)
!904 = !DILocation(line: 409, column: 18, scope: !901)
!905 = !DILocation(line: 409, column: 2, scope: !906)
!906 = !DILexicalBlockFile(scope: !874, file: !144, discriminator: 9)
!907 = !DILocation(line: 410, column: 7, scope: !908)
!908 = distinct !DILexicalBlock(scope: !909, file: !144, line: 410, column: 7)
!909 = distinct !DILexicalBlock(scope: !897, file: !144, line: 409, column: 56)
!910 = !DILocation(line: 410, column: 12, scope: !908)
!911 = !DILocation(line: 410, column: 26, scope: !908)
!912 = !DILocation(line: 410, column: 23, scope: !908)
!913 = !DILocation(line: 410, column: 7, scope: !909)
!914 = !DILocation(line: 411, column: 15, scope: !908)
!915 = !DILocation(line: 411, column: 27, scope: !908)
!916 = !DILocation(line: 411, column: 32, scope: !908)
!917 = !DILocation(line: 411, column: 4, scope: !908)
!918 = !DILocation(line: 412, column: 2, scope: !909)
!919 = !DILocation(line: 409, column: 45, scope: !920)
!920 = !DILexicalBlockFile(scope: !897, file: !144, discriminator: 10)
!921 = !DILocation(line: 409, column: 49, scope: !920)
!922 = !DILocation(line: 409, column: 42, scope: !920)
!923 = !DILocation(line: 409, column: 2, scope: !920)
!924 = distinct !{!924, !925}
!925 = !DILocation(line: 409, column: 2, scope: !768)
!926 = !DILocation(line: 413, column: 1, scope: !768)
!927 = distinct !DISubprogram(name: "set_default_garp_delay", scope: !144, file: !144, line: 425, type: !572, isLocal: false, isDefinition: true, scopeLine: 426, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!928 = !DILocalVariable(name: "default_delay", scope: !927, file: !144, line: 427, type: !332)
!929 = !DILocation(line: 427, column: 15, scope: !927)
!930 = !DILocalVariable(name: "e", scope: !927, file: !144, line: 428, type: !366)
!931 = !DILocation(line: 428, column: 10, scope: !927)
!932 = !DILocalVariable(name: "ifp", scope: !927, file: !144, line: 429, type: !277)
!933 = !DILocation(line: 429, column: 15, scope: !927)
!934 = !DILocalVariable(name: "delay", scope: !927, file: !144, line: 430, type: !331)
!935 = !DILocation(line: 430, column: 16, scope: !927)
!936 = !DILocalVariable(name: "vrrp", scope: !927, file: !144, line: 431, type: !937)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64, align: 64)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_t", file: !11, line: 310, baseType: !939)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_t", file: !11, line: 183, size: 7040, align: 64, elements: !940)
!940 = !{!941, !942, !943, !991, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1032, !1033, !1034, !1035, !1036, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1194, !1201}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !939, file: !11, line: 184, baseType: !244, size: 16, align: 16)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !939, file: !11, line: 185, baseType: !120, size: 64, align: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !939, file: !11, line: 186, baseType: !944, size: 64, align: 64, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64, align: 64)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_sgroup_t", file: !11, line: 133, baseType: !946)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_sgroup", file: !11, line: 109, size: 1024, align: 64, elements: !947)
!947 = !{!948, !949, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !985, !986, !987, !988, !989, !990}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !946, file: !11, line: 110, baseType: !120, size: 64, align: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !946, file: !11, line: 111, baseType: !950, size: 64, align: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64, align: 64)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !952, line: 34, baseType: !953)
!952 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !952, line: 30, size: 128, align: 64, elements: !954)
!954 = !{!955, !956, !957}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !953, file: !952, line: 31, baseType: !126, size: 32, align: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !953, file: !952, line: 32, baseType: !126, size: 32, align: 32, offset: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !953, file: !952, line: 33, baseType: !958, size: 64, align: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !946, file: !11, line: 112, baseType: !145, size: 64, align: 64, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_fault", scope: !946, file: !11, line: 113, baseType: !126, size: 32, align: 32, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_init", scope: !946, file: !11, line: 114, baseType: !126, size: 32, align: 32, offset: 224)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !946, file: !11, line: 115, baseType: !119, size: 32, align: 32, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "sgroup_tracking_weight", scope: !946, file: !11, line: 116, baseType: !311, size: 8, align: 8, offset: 288)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !946, file: !11, line: 119, baseType: !145, size: 64, align: 64, offset: 320)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !946, file: !11, line: 120, baseType: !145, size: 64, align: 64, offset: 384)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !946, file: !11, line: 121, baseType: !145, size: 64, align: 64, offset: 448)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "track_bfd", scope: !946, file: !11, line: 122, baseType: !145, size: 64, align: 64, offset: 512)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !946, file: !11, line: 125, baseType: !311, size: 8, align: 8, offset: 576)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !946, file: !11, line: 126, baseType: !970, size: 64, align: 64, offset: 640)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64, align: 64)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "notify_script_t", file: !972, line: 65, baseType: !973)
!972 = !DIFile(filename: "../../lib/notify.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_notify_script", file: !972, line: 59, size: 192, align: 64, elements: !974)
!974 = !{!975, !977, !978, !979, !982}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !973, file: !972, line: 60, baseType: !976, size: 64, align: 64)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !973, file: !972, line: 61, baseType: !119, size: 32, align: 32, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !973, file: !972, line: 62, baseType: !119, size: 32, align: 32, offset: 96)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !973, file: !972, line: 63, baseType: !980, size: 32, align: 32, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !123, line: 240, baseType: !981)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !125, line: 125, baseType: !126)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !973, file: !972, line: 64, baseType: !983, size: 32, align: 32, offset: 160)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !123, line: 235, baseType: !984)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !125, line: 126, baseType: !126)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !946, file: !11, line: 127, baseType: !970, size: 64, align: 64, offset: 704)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !946, file: !11, line: 128, baseType: !970, size: 64, align: 64, offset: 768)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !946, file: !11, line: 129, baseType: !970, size: 64, align: 64, offset: 832)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !946, file: !11, line: 130, baseType: !970, size: 64, align: 64, offset: 896)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !946, file: !11, line: 131, baseType: !119, size: 32, align: 32, offset: 960)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !946, file: !11, line: 132, baseType: !119, size: 32, align: 32, offset: 992)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !939, file: !11, line: 187, baseType: !992, size: 64, align: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64, align: 64)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_stats", file: !11, line: 169, baseType: !994)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_stats", file: !11, line: 136, size: 768, align: 64, elements: !995)
!995 = !{!996, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "advert_rcvd", scope: !994, file: !11, line: 137, baseType: !997, size: 64, align: 64)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !285, line: 55, baseType: !218)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "advert_sent", scope: !994, file: !11, line: 138, baseType: !284, size: 32, align: 32, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "become_master", scope: !994, file: !11, line: 140, baseType: !284, size: 32, align: 32, offset: 96)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "release_master", scope: !994, file: !11, line: 141, baseType: !284, size: 32, align: 32, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "packet_len_err", scope: !994, file: !11, line: 143, baseType: !997, size: 64, align: 64, offset: 192)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "advert_interval_err", scope: !994, file: !11, line: 144, baseType: !997, size: 64, align: 64, offset: 256)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ip_ttl_err", scope: !994, file: !11, line: 145, baseType: !997, size: 64, align: 64, offset: 320)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_type_rcvd", scope: !994, file: !11, line: 146, baseType: !997, size: 64, align: 64, offset: 384)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "addr_list_err", scope: !994, file: !11, line: 147, baseType: !997, size: 64, align: 64, offset: 448)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_authtype", scope: !994, file: !11, line: 149, baseType: !284, size: 32, align: 32, offset: 512)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "authtype_mismatch", scope: !994, file: !11, line: 151, baseType: !284, size: 32, align: 32, offset: 544)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "auth_failure", scope: !994, file: !11, line: 152, baseType: !284, size: 32, align: 32, offset: 576)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_rcvd", scope: !994, file: !11, line: 155, baseType: !997, size: 64, align: 64, offset: 640)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_sent", scope: !994, file: !11, line: 156, baseType: !997, size: 64, align: 64, offset: 704)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !939, file: !11, line: 188, baseType: !277, size: 64, align: 64, offset: 256)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track_primary", scope: !939, file: !11, line: 189, baseType: !311, size: 8, align: 8, offset: 320)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !939, file: !11, line: 190, baseType: !311, size: 8, align: 8, offset: 328)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "skip_check_adv_addr", scope: !939, file: !11, line: 191, baseType: !311, size: 8, align: 8, offset: 336)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "strict_mode", scope: !939, file: !11, line: 193, baseType: !126, size: 32, align: 32, offset: 352)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_flags", scope: !939, file: !11, line: 195, baseType: !218, size: 64, align: 64, offset: 384)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_ifname", scope: !939, file: !11, line: 196, baseType: !233, size: 128, align: 8, offset: 448)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !939, file: !11, line: 198, baseType: !145, size: 64, align: 64, offset: 576)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !939, file: !11, line: 199, baseType: !145, size: 64, align: 64, offset: 640)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !939, file: !11, line: 200, baseType: !145, size: 64, align: 64, offset: 704)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_if_fault", scope: !939, file: !11, line: 204, baseType: !126, size: 32, align: 32, offset: 768)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_init", scope: !939, file: !11, line: 205, baseType: !126, size: 32, align: 32, offset: 800)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !939, file: !11, line: 206, baseType: !1024, size: 1024, align: 64, offset: 832)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !241, line: 166, size: 1024, align: 64, elements: !1025)
!1025 = !{!1026, !1027, !1031}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !1024, file: !241, line: 168, baseType: !244, size: 16, align: 16)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !1024, file: !241, line: 169, baseType: !1028, size: 944, align: 8, offset: 16)
!1028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 944, align: 8, elements: !1029)
!1029 = !{!1030}
!1030 = !DISubrange(count: 118)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !1024, file: !241, line: 170, baseType: !218, size: 64, align: 64, offset: 960)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "saddr_from_config", scope: !939, file: !11, line: 207, baseType: !311, size: 8, align: 8, offset: 1856)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "track_saddr", scope: !939, file: !11, line: 208, baseType: !311, size: 8, align: 8, offset: 1864)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_saddr", scope: !939, file: !11, line: 209, baseType: !1024, size: 1024, align: 64, offset: 1920)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_peer", scope: !939, file: !11, line: 210, baseType: !145, size: 64, align: 64, offset: 2944)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_chksum_compat", scope: !939, file: !11, line: 212, baseType: !1037, size: 32, align: 32, offset: 3008)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "chksum_compatibility_t", file: !11, line: 179, baseType: !10)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "master_saddr", scope: !939, file: !11, line: 214, baseType: !1024, size: 1024, align: 64, offset: 3072)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "master_priority", scope: !939, file: !11, line: 215, baseType: !299, size: 8, align: 8, offset: 4096)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "last_transition", scope: !939, file: !11, line: 216, baseType: !336, size: 128, align: 64, offset: 4160)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !939, file: !11, line: 217, baseType: !126, size: 32, align: 32, offset: 4288)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh", scope: !939, file: !11, line: 218, baseType: !336, size: 128, align: 64, offset: 4352)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_timer", scope: !939, file: !11, line: 219, baseType: !336, size: 128, align: 64, offset: 4480)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "garp_rep", scope: !939, file: !11, line: 220, baseType: !126, size: 32, align: 32, offset: 4608)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_rep", scope: !939, file: !11, line: 221, baseType: !126, size: 32, align: 32, offset: 4640)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_delay", scope: !939, file: !11, line: 222, baseType: !126, size: 32, align: 32, offset: 4672)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "garp_pending", scope: !939, file: !11, line: 223, baseType: !311, size: 8, align: 8, offset: 4704)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "gna_pending", scope: !939, file: !11, line: 224, baseType: !311, size: 8, align: 8, offset: 4712)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_rep", scope: !939, file: !11, line: 225, baseType: !126, size: 32, align: 32, offset: 4736)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "lower_prio_no_advert", scope: !939, file: !11, line: 226, baseType: !126, size: 32, align: 32, offset: 4768)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "higher_prio_send_advert", scope: !939, file: !11, line: 227, baseType: !126, size: 32, align: 32, offset: 4800)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "vrid", scope: !939, file: !11, line: 228, baseType: !299, size: 8, align: 8, offset: 4832)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "base_priority", scope: !939, file: !11, line: 229, baseType: !299, size: 8, align: 8, offset: 4840)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "effective_priority", scope: !939, file: !11, line: 230, baseType: !299, size: 8, align: 8, offset: 4848)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "total_priority", scope: !939, file: !11, line: 231, baseType: !119, size: 32, align: 32, offset: 4864)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "vipset", scope: !939, file: !11, line: 233, baseType: !311, size: 8, align: 8, offset: 4896)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "vip", scope: !939, file: !11, line: 234, baseType: !145, size: 64, align: 64, offset: 4928)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "evip", scope: !939, file: !11, line: 235, baseType: !145, size: 64, align: 64, offset: 4992)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries", scope: !939, file: !11, line: 239, baseType: !311, size: 8, align: 8, offset: 5056)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "evip_add_ipv6", scope: !939, file: !11, line: 240, baseType: !311, size: 8, align: 8, offset: 5064)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "vroutes", scope: !939, file: !11, line: 241, baseType: !145, size: 64, align: 64, offset: 5120)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "vrules", scope: !939, file: !11, line: 242, baseType: !145, size: 64, align: 64, offset: 5184)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "adver_int", scope: !939, file: !11, line: 243, baseType: !126, size: 32, align: 32, offset: 5248)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "master_adver_int", scope: !939, file: !11, line: 244, baseType: !126, size: 32, align: 32, offset: 5280)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !939, file: !11, line: 249, baseType: !126, size: 32, align: 32, offset: 5312)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_rx_buf_size", scope: !939, file: !11, line: 252, baseType: !216, size: 64, align: 64, offset: 5376)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rules_set", scope: !939, file: !11, line: 254, baseType: !311, size: 8, align: 8, offset: 5440)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "nopreempt", scope: !939, file: !11, line: 255, baseType: !311, size: 8, align: 8, offset: 5448)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_delay", scope: !939, file: !11, line: 256, baseType: !218, size: 64, align: 64, offset: 5504)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_time", scope: !939, file: !11, line: 260, baseType: !336, size: 128, align: 64, offset: 5568)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !939, file: !11, line: 261, baseType: !119, size: 32, align: 32, offset: 5696)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "wantstate", scope: !939, file: !11, line: 265, baseType: !119, size: 32, align: 32, offset: 5728)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "reload_master", scope: !939, file: !11, line: 266, baseType: !311, size: 8, align: 8, offset: 5760)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "sockets", scope: !939, file: !11, line: 267, baseType: !1075, size: 64, align: 64, offset: 5824)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64, align: 64)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "sock_t", file: !1077, line: 50, baseType: !1078)
!1077 = !DIFile(filename: "./../include/vrrp_sock.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sock", file: !1077, line: 40, size: 1344, align: 64, elements: !1079)
!1079 = !{!1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !1078, file: !1077, line: 41, baseType: !244, size: 16, align: 16)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !1078, file: !1077, line: 42, baseType: !1024, size: 1024, align: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !1078, file: !1077, line: 43, baseType: !119, size: 32, align: 32, offset: 1088)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !1078, file: !1077, line: 44, baseType: !283, size: 32, align: 32, offset: 1120)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "unicast", scope: !1078, file: !1077, line: 45, baseType: !311, size: 8, align: 8, offset: 1152)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "fd_in", scope: !1078, file: !1077, line: 46, baseType: !119, size: 32, align: 32, offset: 1184)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "fd_out", scope: !1078, file: !1077, line: 47, baseType: !119, size: 32, align: 32, offset: 1216)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf_size", scope: !1078, file: !1077, line: 48, baseType: !119, size: 32, align: 32, offset: 1248)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1078, file: !1077, line: 49, baseType: !1089, size: 64, align: 64, offset: 1280)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64, align: 64)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !19, line: 99, baseType: !1091)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !19, line: 78, size: 768, align: 64, elements: !1092)
!1092 = !{!1093, !1094, !1096, !1149, !1154, !1155, !1156, !1168, !1170}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1091, file: !19, line: 79, baseType: !218, size: 64, align: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1091, file: !19, line: 80, baseType: !1095, size: 32, align: 32, offset: 64)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !19, line: 63, baseType: !18)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !1091, file: !19, line: 81, baseType: !1097, size: 64, align: 64, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64, align: 64)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !19, line: 112, size: 1280, align: 64, elements: !1099)
!1099 = !{!1100, !1112, !1113, !1114, !1115, !1123, !1124, !1125, !1126, !1127, !1130, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1098, file: !19, line: 113, baseType: !1101, size: 64, align: 64)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !1102, line: 109, baseType: !1103)
!1102 = !DIFile(filename: "../../lib/rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1102, line: 106, size: 64, align: 64, elements: !1104)
!1104 = !{!1105}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1103, file: !1102, line: 108, baseType: !1106, size: 64, align: 64)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64, align: 64)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1102, line: 97, size: 192, align: 64, elements: !1108)
!1108 = !{!1109, !1110, !1111}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !1107, file: !1102, line: 99, baseType: !218, size: 64, align: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1107, file: !1102, line: 102, baseType: !1106, size: 64, align: 64, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1107, file: !1102, line: 103, baseType: !1106, size: 64, align: 64, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1098, file: !19, line: 114, baseType: !1101, size: 64, align: 64, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1098, file: !19, line: 115, baseType: !1101, size: 64, align: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1098, file: !19, line: 116, baseType: !1101, size: 64, align: 64, offset: 192)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1098, file: !19, line: 117, baseType: !1116, size: 128, align: 64, offset: 256)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !1117, line: 62, baseType: !1118)
!1117 = !DIFile(filename: "../../lib/list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !1117, line: 60, size: 128, align: 64, elements: !1119)
!1119 = !{!1120, !1122}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1118, file: !1117, line: 61, baseType: !1121, size: 64, align: 64)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64, align: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1118, file: !1117, line: 61, baseType: !1121, size: 64, align: 64, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !1098, file: !19, line: 121, baseType: !1116, size: 128, align: 64, offset: 384)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !1098, file: !19, line: 122, baseType: !1116, size: 128, align: 64, offset: 512)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !1098, file: !19, line: 124, baseType: !145, size: 64, align: 64, offset: 640)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !1098, file: !19, line: 127, baseType: !1101, size: 64, align: 64, offset: 704)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !1098, file: !19, line: 128, baseType: !1128, size: 64, align: 64, offset: 768)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64, align: 64)
!1129 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !19, line: 128, flags: DIFlagFwdDecl)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !1098, file: !19, line: 129, baseType: !1131, size: 64, align: 64, offset: 832)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64, align: 64)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !19, line: 109, baseType: !1133)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !19, line: 102, size: 448, align: 64, elements: !1134)
!1134 = !{!1135, !1136, !1137, !1138, !1139}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1133, file: !19, line: 103, baseType: !1089, size: 64, align: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1133, file: !19, line: 104, baseType: !1089, size: 64, align: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1133, file: !19, line: 105, baseType: !218, size: 64, align: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1133, file: !19, line: 106, baseType: !119, size: 32, align: 32, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !1133, file: !19, line: 108, baseType: !1140, size: 192, align: 64, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !1102, line: 104, baseType: !1107)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !1098, file: !19, line: 130, baseType: !126, size: 32, align: 32, offset: 896)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !1098, file: !19, line: 131, baseType: !126, size: 32, align: 32, offset: 928)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !1098, file: !19, line: 132, baseType: !119, size: 32, align: 32, offset: 960)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !1098, file: !19, line: 135, baseType: !119, size: 32, align: 32, offset: 992)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !1098, file: !19, line: 136, baseType: !1089, size: 64, align: 64, offset: 1024)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1098, file: !19, line: 146, baseType: !218, size: 64, align: 64, offset: 1088)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1098, file: !19, line: 147, baseType: !218, size: 64, align: 64, offset: 1152)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !1098, file: !19, line: 148, baseType: !311, size: 8, align: 8, offset: 1216)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1091, file: !19, line: 82, baseType: !1150, size: 64, align: 64, offset: 192)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64, align: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!119, !1153}
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64, align: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1091, file: !19, line: 83, baseType: !118, size: 64, align: 64, offset: 256)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !1091, file: !19, line: 84, baseType: !336, size: 128, align: 64, offset: 320)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1091, file: !19, line: 92, baseType: !1157, size: 64, align: 32, offset: 448)
!1157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1091, file: !19, line: 85, size: 64, align: 32, elements: !1158)
!1158 = !{!1159, !1160, !1161}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1157, file: !19, line: 86, baseType: !119, size: 32, align: 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1157, file: !19, line: 87, baseType: !119, size: 32, align: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !1157, file: !19, line: 91, baseType: !1162, size: 64, align: 32)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1157, file: !19, line: 88, size: 64, align: 32, elements: !1163)
!1163 = !{!1164, !1167}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1162, file: !19, line: 89, baseType: !1165, size: 32, align: 32)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !123, line: 263, baseType: !1166)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !125, line: 133, baseType: !119)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1162, file: !19, line: 90, baseType: !119, size: 32, align: 32, offset: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1091, file: !19, line: 93, baseType: !1169, size: 64, align: 64, offset: 512)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64, align: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, scope: !1091, file: !19, line: 95, baseType: !1171, size: 192, align: 64, offset: 576)
!1171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1091, file: !19, line: 95, size: 192, align: 64, elements: !1172)
!1172 = !{!1173, !1174}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !1171, file: !19, line: 96, baseType: !1140, size: 192, align: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1171, file: !19, line: 97, baseType: !1116, size: 128, align: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !939, file: !11, line: 269, baseType: !119, size: 32, align: 32, offset: 5888)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !939, file: !11, line: 271, baseType: !119, size: 32, align: 32, offset: 5920)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !939, file: !11, line: 274, baseType: !119, size: 32, align: 32, offset: 5952)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !939, file: !11, line: 275, baseType: !119, size: 32, align: 32, offset: 5984)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !939, file: !11, line: 276, baseType: !311, size: 8, align: 8, offset: 6016)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !939, file: !11, line: 277, baseType: !970, size: 64, align: 64, offset: 6080)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !939, file: !11, line: 278, baseType: !970, size: 64, align: 64, offset: 6144)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !939, file: !11, line: 279, baseType: !970, size: 64, align: 64, offset: 6208)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !939, file: !11, line: 280, baseType: !970, size: 64, align: 64, offset: 6272)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "script_master_rx_lower_pri", scope: !939, file: !11, line: 281, baseType: !970, size: 64, align: 64, offset: 6336)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !939, file: !11, line: 282, baseType: !970, size: 64, align: 64, offset: 6400)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "ms_down_timer", scope: !939, file: !11, line: 285, baseType: !284, size: 32, align: 32, offset: 6464)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !939, file: !11, line: 286, baseType: !336, size: 128, align: 64, offset: 6528)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer", scope: !939, file: !11, line: 289, baseType: !120, size: 64, align: 64, offset: 6656)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer_size", scope: !939, file: !11, line: 290, baseType: !216, size: 64, align: 64, offset: 6720)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_csum", scope: !939, file: !11, line: 291, baseType: !284, size: 32, align: 32, offset: 6784)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "auth_type", scope: !939, file: !11, line: 295, baseType: !299, size: 8, align: 8, offset: 6816)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "auth_data", scope: !939, file: !11, line: 296, baseType: !1193, size: 64, align: 8, offset: 6824)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 64, align: 8, elements: !303)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "ipsecah_counter", scope: !939, file: !11, line: 299, baseType: !1195, size: 64, align: 32, offset: 6912)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_counter_t", file: !1196, line: 58, baseType: !1197)
!1196 = !DIFile(filename: "./../include/vrrp_ipsecah.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seq_counter", file: !1196, line: 55, size: 64, align: 32, elements: !1198)
!1198 = !{!1199, !1200}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !1197, file: !1196, line: 56, baseType: !311, size: 8, align: 8)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "seq_number", scope: !1197, file: !1196, line: 57, baseType: !284, size: 32, align: 32, offset: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id", scope: !939, file: !11, line: 309, baseType: !119, size: 32, align: 32, offset: 6976)
!1202 = !DILocation(line: 431, column: 10, scope: !927)
!1203 = !DILocation(line: 433, column: 6, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !927, file: !144, line: 433, column: 6)
!1205 = !DILocation(line: 433, column: 19, scope: !1204)
!1206 = !DILocation(line: 433, column: 6, scope: !927)
!1207 = !DILocation(line: 434, column: 40, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !144, line: 433, column: 39)
!1209 = !DILocation(line: 434, column: 53, scope: !1208)
!1210 = !DILocation(line: 434, column: 72, scope: !1208)
!1211 = !DILocation(line: 434, column: 17, scope: !1208)
!1212 = !DILocation(line: 434, column: 31, scope: !1208)
!1213 = !DILocation(line: 434, column: 38, scope: !1208)
!1214 = !DILocation(line: 435, column: 41, scope: !1208)
!1215 = !DILocation(line: 435, column: 54, scope: !1208)
!1216 = !DILocation(line: 435, column: 73, scope: !1208)
!1217 = !DILocation(line: 435, column: 17, scope: !1208)
!1218 = !DILocation(line: 435, column: 31, scope: !1208)
!1219 = !DILocation(line: 435, column: 39, scope: !1208)
!1220 = !DILocation(line: 436, column: 17, scope: !1208)
!1221 = !DILocation(line: 436, column: 36, scope: !1208)
!1222 = !DILocation(line: 437, column: 2, scope: !1208)
!1223 = !DILocation(line: 438, column: 6, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !927, file: !144, line: 438, column: 6)
!1225 = !DILocation(line: 438, column: 19, scope: !1224)
!1226 = !DILocation(line: 438, column: 6, scope: !927)
!1227 = !DILocation(line: 439, column: 39, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1224, file: !144, line: 438, column: 38)
!1229 = !DILocation(line: 439, column: 52, scope: !1228)
!1230 = !DILocation(line: 439, column: 70, scope: !1228)
!1231 = !DILocation(line: 439, column: 17, scope: !1228)
!1232 = !DILocation(line: 439, column: 30, scope: !1228)
!1233 = !DILocation(line: 439, column: 37, scope: !1228)
!1234 = !DILocation(line: 440, column: 40, scope: !1228)
!1235 = !DILocation(line: 440, column: 53, scope: !1228)
!1236 = !DILocation(line: 440, column: 71, scope: !1228)
!1237 = !DILocation(line: 440, column: 17, scope: !1228)
!1238 = !DILocation(line: 440, column: 30, scope: !1228)
!1239 = !DILocation(line: 440, column: 38, scope: !1228)
!1240 = !DILocation(line: 441, column: 17, scope: !1228)
!1241 = !DILocation(line: 441, column: 35, scope: !1228)
!1242 = !DILocation(line: 442, column: 2, scope: !1228)
!1243 = !DILocation(line: 446, column: 15, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !927, file: !144, line: 446, column: 2)
!1245 = !DILocation(line: 446, column: 26, scope: !1244)
!1246 = !DILocation(line: 446, column: 14, scope: !1244)
!1247 = !DILocation(line: 446, column: 37, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1244, file: !144, discriminator: 1)
!1249 = !DILocation(line: 446, column: 48, scope: !1248)
!1250 = !DILocation(line: 446, column: 36, scope: !1248)
!1251 = !DILocation(line: 446, column: 35, scope: !1248)
!1252 = !DILocation(line: 446, column: 35, scope: !1253)
!1253 = !DILexicalBlockFile(scope: !1244, file: !144, discriminator: 2)
!1254 = !DILocation(line: 446, column: 4, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1244, file: !144, discriminator: 3)
!1256 = !DILocation(line: 446, column: 15, scope: !1255)
!1257 = !DILocation(line: 446, column: 22, scope: !1255)
!1258 = !DILocation(line: 446, column: 35, scope: !1255)
!1259 = !DILocation(line: 446, column: 35, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1244, file: !144, discriminator: 4)
!1261 = !DILocation(line: 446, column: 14, scope: !1260)
!1262 = !DILocation(line: 446, column: 14, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1244, file: !144, discriminator: 5)
!1264 = !DILocation(line: 446, column: 14, scope: !1265)
!1265 = !DILexicalBlockFile(scope: !1244, file: !144, discriminator: 6)
!1266 = !DILocation(line: 446, column: 11, scope: !1265)
!1267 = !DILocation(line: 446, column: 7, scope: !1265)
!1268 = !DILocation(line: 446, column: 5, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !1270, file: !144, discriminator: 7)
!1270 = distinct !DILexicalBlock(scope: !1244, file: !144, line: 446, column: 2)
!1271 = !DILocation(line: 446, column: 4, scope: !1269)
!1272 = !DILocation(line: 446, column: 8, scope: !1269)
!1273 = !DILocation(line: 446, column: 23, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1270, file: !144, discriminator: 8)
!1275 = !DILocation(line: 446, column: 27, scope: !1274)
!1276 = !DILocation(line: 446, column: 21, scope: !1274)
!1277 = !DILocation(line: 446, column: 19, scope: !1274)
!1278 = !DILocation(line: 446, column: 2, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !1244, file: !144, discriminator: 9)
!1280 = !DILocation(line: 447, column: 11, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1270, file: !144, line: 446, column: 57)
!1282 = !DILocation(line: 447, column: 17, scope: !1281)
!1283 = !DILocation(line: 447, column: 23, scope: !1281)
!1284 = !DILocation(line: 447, column: 7, scope: !1281)
!1285 = !DILocation(line: 448, column: 8, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1281, file: !144, line: 448, column: 7)
!1287 = !DILocation(line: 448, column: 13, scope: !1286)
!1288 = !DILocation(line: 448, column: 7, scope: !1281)
!1289 = !DILocation(line: 449, column: 4, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1286, file: !144, line: 448, column: 25)
!1291 = !DILocation(line: 450, column: 14, scope: !1290)
!1292 = !DILocation(line: 450, column: 27, scope: !1290)
!1293 = !DILocation(line: 450, column: 33, scope: !1290)
!1294 = !DILocation(line: 450, column: 12, scope: !1290)
!1295 = !DILocation(line: 450, column: 10, scope: !1290)
!1296 = !DILocation(line: 451, column: 5, scope: !1290)
!1297 = !DILocation(line: 451, column: 13, scope: !1290)
!1298 = !DILocation(line: 452, column: 22, scope: !1290)
!1299 = !DILocation(line: 452, column: 4, scope: !1290)
!1300 = !DILocation(line: 452, column: 9, scope: !1290)
!1301 = !DILocation(line: 452, column: 20, scope: !1290)
!1302 = !DILocation(line: 453, column: 3, scope: !1290)
!1303 = !DILocation(line: 454, column: 2, scope: !1281)
!1304 = !DILocation(line: 446, column: 46, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !1270, file: !144, discriminator: 10)
!1306 = !DILocation(line: 446, column: 50, scope: !1305)
!1307 = !DILocation(line: 446, column: 43, scope: !1305)
!1308 = !DILocation(line: 446, column: 2, scope: !1305)
!1309 = distinct !{!1309, !1310}
!1310 = !DILocation(line: 446, column: 2, scope: !927)
!1311 = !DILocation(line: 455, column: 1, scope: !927)
!1312 = distinct !DISubprogram(name: "init_interface_linkbeat", scope: !144, file: !144, line: 601, type: !572, isLocal: false, isDefinition: true, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!1313 = !DILocalVariable(name: "ifp", scope: !1312, file: !144, line: 603, type: !277)
!1314 = !DILocation(line: 603, column: 15, scope: !1312)
!1315 = !DILocalVariable(name: "e", scope: !1312, file: !144, line: 604, type: !366)
!1316 = !DILocation(line: 604, column: 10, scope: !1312)
!1317 = !DILocalVariable(name: "status", scope: !1312, file: !144, line: 605, type: !119)
!1318 = !DILocation(line: 605, column: 6, scope: !1312)
!1319 = !DILocalVariable(name: "linkbeat_in_use", scope: !1312, file: !144, line: 606, type: !311)
!1320 = !DILocation(line: 606, column: 6, scope: !1312)
!1321 = !DILocalVariable(name: "if_up", scope: !1312, file: !144, line: 607, type: !311)
!1322 = !DILocation(line: 607, column: 6, scope: !1312)
!1323 = !DILocation(line: 609, column: 14, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1312, file: !144, line: 609, column: 2)
!1325 = !DILocation(line: 609, column: 13, scope: !1324)
!1326 = !DILocation(line: 609, column: 12, scope: !1324)
!1327 = !DILocation(line: 609, column: 12, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !1324, file: !144, discriminator: 1)
!1329 = !DILocation(line: 609, column: 13, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !1324, file: !144, discriminator: 2)
!1331 = !DILocation(line: 609, column: 24, scope: !1330)
!1332 = !DILocation(line: 609, column: 12, scope: !1330)
!1333 = !DILocation(line: 609, column: 12, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !1324, file: !144, discriminator: 3)
!1335 = !DILocation(line: 609, column: 9, scope: !1334)
!1336 = !DILocation(line: 609, column: 7, scope: !1334)
!1337 = !DILocation(line: 609, column: 31, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1339, file: !144, discriminator: 4)
!1339 = distinct !DILexicalBlock(scope: !1324, file: !144, line: 609, column: 2)
!1340 = !DILocation(line: 609, column: 2, scope: !1338)
!1341 = !DILocation(line: 610, column: 11, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1339, file: !144, line: 609, column: 53)
!1343 = !DILocation(line: 610, column: 15, scope: !1342)
!1344 = !DILocation(line: 610, column: 9, scope: !1342)
!1345 = !DILocation(line: 610, column: 7, scope: !1342)
!1346 = !DILocation(line: 612, column: 8, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1342, file: !144, line: 612, column: 7)
!1348 = !DILocation(line: 612, column: 13, scope: !1347)
!1349 = !DILocation(line: 612, column: 7, scope: !1342)
!1350 = !DILocation(line: 613, column: 4, scope: !1347)
!1351 = !DILocation(line: 616, column: 8, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1342, file: !144, line: 616, column: 7)
!1353 = !DILocation(line: 616, column: 13, scope: !1352)
!1354 = !DILocation(line: 616, column: 7, scope: !1342)
!1355 = !DILocation(line: 617, column: 4, scope: !1352)
!1356 = !DILocation(line: 621, column: 7, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1342, file: !144, line: 621, column: 7)
!1358 = !DILocation(line: 621, column: 12, scope: !1357)
!1359 = !DILocation(line: 621, column: 7, scope: !1342)
!1360 = !DILocation(line: 622, column: 4, scope: !1357)
!1361 = !DILocation(line: 625, column: 19, scope: !1342)
!1362 = !DILocation(line: 626, column: 3, scope: !1342)
!1363 = !DILocation(line: 626, column: 8, scope: !1342)
!1364 = !DILocation(line: 626, column: 18, scope: !1342)
!1365 = !DILocation(line: 628, column: 3, scope: !1342)
!1366 = !DILocation(line: 628, column: 8, scope: !1342)
!1367 = !DILocation(line: 628, column: 16, scope: !1342)
!1368 = !DILocation(line: 629, column: 25, scope: !1342)
!1369 = !DILocation(line: 629, column: 30, scope: !1342)
!1370 = !DILocation(line: 629, column: 12, scope: !1342)
!1371 = !DILocation(line: 629, column: 10, scope: !1342)
!1372 = !DILocation(line: 630, column: 7, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1342, file: !144, line: 630, column: 7)
!1374 = !DILocation(line: 630, column: 14, scope: !1373)
!1375 = !DILocation(line: 630, column: 7, scope: !1342)
!1376 = !DILocation(line: 631, column: 4, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1373, file: !144, line: 630, column: 20)
!1378 = !DILocation(line: 631, column: 9, scope: !1377)
!1379 = !DILocation(line: 631, column: 17, scope: !1377)
!1380 = !DILocation(line: 632, column: 14, scope: !1377)
!1381 = !DILocation(line: 632, column: 13, scope: !1377)
!1382 = !DILocation(line: 632, column: 12, scope: !1377)
!1383 = !DILocation(line: 632, column: 10, scope: !1377)
!1384 = !DILocation(line: 633, column: 3, scope: !1377)
!1385 = !DILocation(line: 633, column: 41, scope: !1386)
!1386 = !DILexicalBlockFile(scope: !1387, file: !144, discriminator: 1)
!1387 = distinct !DILexicalBlock(scope: !1373, file: !144, line: 633, column: 14)
!1388 = !DILocation(line: 633, column: 46, scope: !1386)
!1389 = !DILocation(line: 633, column: 24, scope: !1386)
!1390 = !DILocation(line: 633, column: 22, scope: !1386)
!1391 = !DILocation(line: 633, column: 55, scope: !1386)
!1392 = !DILocation(line: 633, column: 14, scope: !1386)
!1393 = !DILocation(line: 634, column: 4, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1387, file: !144, line: 633, column: 61)
!1395 = !DILocation(line: 634, column: 9, scope: !1394)
!1396 = !DILocation(line: 634, column: 17, scope: !1394)
!1397 = !DILocation(line: 635, column: 14, scope: !1394)
!1398 = !DILocation(line: 635, column: 13, scope: !1394)
!1399 = !DILocation(line: 635, column: 12, scope: !1394)
!1400 = !DILocation(line: 635, column: 10, scope: !1394)
!1401 = !DILocation(line: 636, column: 3, scope: !1394)
!1402 = !DILocation(line: 638, column: 10, scope: !1387)
!1403 = !DILocation(line: 639, column: 7, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1342, file: !144, line: 639, column: 7)
!1405 = !DILocation(line: 639, column: 7, scope: !1342)
!1406 = !DILocation(line: 640, column: 27, scope: !1404)
!1407 = !DILocation(line: 640, column: 12, scope: !1404)
!1408 = !DILocation(line: 640, column: 10, scope: !1404)
!1409 = !DILocation(line: 640, column: 4, scope: !1404)
!1410 = !DILocation(line: 642, column: 20, scope: !1342)
!1411 = !DILocation(line: 642, column: 3, scope: !1342)
!1412 = !DILocation(line: 642, column: 8, scope: !1342)
!1413 = !DILocation(line: 642, column: 18, scope: !1342)
!1414 = !DILocation(line: 645, column: 20, scope: !1342)
!1415 = !DILocation(line: 645, column: 56, scope: !1342)
!1416 = !DILocation(line: 645, column: 3, scope: !1342)
!1417 = !DILocation(line: 646, column: 2, scope: !1342)
!1418 = !DILocation(line: 609, column: 42, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !1339, file: !144, discriminator: 5)
!1420 = !DILocation(line: 609, column: 46, scope: !1419)
!1421 = !DILocation(line: 609, column: 39, scope: !1419)
!1422 = !DILocation(line: 609, column: 2, scope: !1419)
!1423 = distinct !{!1423, !1424}
!1424 = !DILocation(line: 609, column: 2, scope: !1312)
!1425 = !DILocation(line: 648, column: 6, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1312, file: !144, line: 648, column: 6)
!1427 = !DILocation(line: 648, column: 6, scope: !1312)
!1428 = !DILocation(line: 649, column: 3, scope: !1426)
!1429 = !DILocation(line: 650, column: 1, scope: !1312)
!1430 = distinct !DISubprogram(name: "if_mii_probe", scope: !144, file: !144, line: 266, type: !1431, isLocal: true, isDefinition: true, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!119, !448}
!1433 = !DILocalVariable(name: "ifname", arg: 1, scope: !1430, file: !144, line: 266, type: !448)
!1434 = !DILocation(line: 266, column: 26, scope: !1430)
!1435 = !DILocalVariable(name: "data", scope: !1430, file: !144, line: 268, type: !128)
!1436 = !DILocation(line: 268, column: 25, scope: !1430)
!1437 = !DILocalVariable(name: "phy_id", scope: !1430, file: !144, line: 269, type: !302)
!1438 = !DILocation(line: 269, column: 11, scope: !1430)
!1439 = !DILocalVariable(name: "fd", scope: !1430, file: !144, line: 270, type: !119)
!1440 = !DILocation(line: 270, column: 6, scope: !1430)
!1441 = !DILocation(line: 270, column: 11, scope: !1430)
!1442 = !DILocalVariable(name: "status", scope: !1430, file: !144, line: 271, type: !119)
!1443 = !DILocation(line: 271, column: 6, scope: !1430)
!1444 = !DILocation(line: 273, column: 6, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1430, file: !144, line: 273, column: 6)
!1446 = !DILocation(line: 273, column: 9, scope: !1445)
!1447 = !DILocation(line: 273, column: 6, scope: !1430)
!1448 = !DILocation(line: 274, column: 3, scope: !1445)
!1449 = !DILocation(line: 281, column: 2, scope: !1430)
!1450 = !DILocation(line: 282, column: 22, scope: !1430)
!1451 = !DILocation(line: 282, column: 2, scope: !1430)
!1452 = !DILocation(line: 283, column: 12, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1430, file: !144, line: 283, column: 6)
!1454 = !DILocation(line: 283, column: 6, scope: !1453)
!1455 = !DILocation(line: 283, column: 34, scope: !1453)
!1456 = !DILocation(line: 283, column: 6, scope: !1430)
!1457 = !DILocation(line: 284, column: 9, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1453, file: !144, line: 283, column: 39)
!1459 = !DILocation(line: 284, column: 3, scope: !1458)
!1460 = !DILocation(line: 285, column: 3, scope: !1458)
!1461 = !DILocation(line: 291, column: 11, scope: !1430)
!1462 = !DILocation(line: 291, column: 17, scope: !1430)
!1463 = !DILocation(line: 291, column: 9, scope: !1430)
!1464 = !DILocation(line: 292, column: 2, scope: !1430)
!1465 = !DILocation(line: 292, column: 8, scope: !1430)
!1466 = !DILocation(line: 292, column: 16, scope: !1430)
!1467 = !DILocation(line: 293, column: 12, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1430, file: !144, line: 293, column: 6)
!1469 = !DILocation(line: 293, column: 6, scope: !1468)
!1470 = !DILocation(line: 293, column: 34, scope: !1468)
!1471 = !DILocation(line: 293, column: 6, scope: !1430)
!1472 = !DILocation(line: 294, column: 9, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1468, file: !144, line: 293, column: 39)
!1474 = !DILocation(line: 294, column: 3, scope: !1473)
!1475 = !DILocation(line: 295, column: 3, scope: !1473)
!1476 = !DILocation(line: 297, column: 17, scope: !1430)
!1477 = !DILocation(line: 297, column: 2, scope: !1430)
!1478 = !DILocation(line: 297, column: 8, scope: !1430)
!1479 = !DILocation(line: 297, column: 15, scope: !1430)
!1480 = !DILocation(line: 300, column: 25, scope: !1430)
!1481 = !DILocation(line: 300, column: 11, scope: !1430)
!1482 = !DILocation(line: 300, column: 9, scope: !1430)
!1483 = !DILocation(line: 301, column: 8, scope: !1430)
!1484 = !DILocation(line: 301, column: 2, scope: !1430)
!1485 = !DILocation(line: 302, column: 9, scope: !1430)
!1486 = !DILocation(line: 302, column: 2, scope: !1430)
!1487 = !DILocation(line: 303, column: 1, scope: !1430)
!1488 = distinct !DISubprogram(name: "if_ethtool_probe", scope: !144, file: !144, line: 318, type: !1431, isLocal: true, isDefinition: true, scopeLine: 319, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!1489 = !DILocalVariable(name: "ifname", arg: 1, scope: !1488, file: !144, line: 318, type: !448)
!1490 = !DILocation(line: 318, column: 30, scope: !1488)
!1491 = !DILocalVariable(name: "fd", scope: !1488, file: !144, line: 320, type: !119)
!1492 = !DILocation(line: 320, column: 6, scope: !1488)
!1493 = !DILocation(line: 320, column: 11, scope: !1488)
!1494 = !DILocalVariable(name: "status", scope: !1488, file: !144, line: 321, type: !119)
!1495 = !DILocation(line: 321, column: 6, scope: !1488)
!1496 = !DILocation(line: 323, column: 6, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1488, file: !144, line: 323, column: 6)
!1498 = !DILocation(line: 323, column: 9, scope: !1497)
!1499 = !DILocation(line: 323, column: 6, scope: !1488)
!1500 = !DILocation(line: 324, column: 3, scope: !1497)
!1501 = !DILocation(line: 331, column: 2, scope: !1488)
!1502 = !DILocation(line: 332, column: 22, scope: !1488)
!1503 = !DILocation(line: 332, column: 2, scope: !1488)
!1504 = !DILocation(line: 334, column: 29, scope: !1488)
!1505 = !DILocation(line: 334, column: 11, scope: !1488)
!1506 = !DILocation(line: 334, column: 9, scope: !1488)
!1507 = !DILocation(line: 335, column: 8, scope: !1488)
!1508 = !DILocation(line: 335, column: 2, scope: !1488)
!1509 = !DILocation(line: 336, column: 9, scope: !1488)
!1510 = !DILocation(line: 336, column: 2, scope: !1488)
!1511 = !DILocation(line: 337, column: 1, scope: !1488)
!1512 = distinct !DISubprogram(name: "if_ioctl_flags", scope: !144, file: !144, line: 341, type: !1513, isLocal: true, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!311, !277}
!1515 = !DILocalVariable(name: "ifp", arg: 1, scope: !1512, file: !144, line: 341, type: !277)
!1516 = !DILocation(line: 341, column: 29, scope: !1512)
!1517 = !DILocalVariable(name: "fd", scope: !1512, file: !144, line: 343, type: !119)
!1518 = !DILocation(line: 343, column: 6, scope: !1512)
!1519 = !DILocation(line: 343, column: 11, scope: !1512)
!1520 = !DILocation(line: 345, column: 6, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1512, file: !144, line: 345, column: 6)
!1522 = !DILocation(line: 345, column: 9, scope: !1521)
!1523 = !DILocation(line: 345, column: 6, scope: !1512)
!1524 = !DILocation(line: 346, column: 3, scope: !1521)
!1525 = !DILocation(line: 353, column: 2, scope: !1512)
!1526 = !DILocation(line: 354, column: 22, scope: !1512)
!1527 = !DILocation(line: 354, column: 27, scope: !1512)
!1528 = !DILocation(line: 354, column: 2, scope: !1512)
!1529 = !DILocation(line: 355, column: 12, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1512, file: !144, line: 355, column: 6)
!1531 = !DILocation(line: 355, column: 6, scope: !1530)
!1532 = !DILocation(line: 355, column: 35, scope: !1530)
!1533 = !DILocation(line: 355, column: 6, scope: !1512)
!1534 = !DILocation(line: 356, column: 9, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1530, file: !144, line: 355, column: 40)
!1536 = !DILocation(line: 356, column: 3, scope: !1535)
!1537 = !DILocation(line: 357, column: 3, scope: !1535)
!1538 = !DILocation(line: 360, column: 8, scope: !1512)
!1539 = !DILocation(line: 360, column: 2, scope: !1512)
!1540 = !DILocation(line: 362, column: 17, scope: !1512)
!1541 = !DILocation(line: 362, column: 11, scope: !1512)
!1542 = !DILocation(line: 362, column: 10, scope: !1512)
!1543 = !DILocation(line: 362, column: 2, scope: !1512)
!1544 = !DILocation(line: 363, column: 1, scope: !1512)
!1545 = distinct !DISubprogram(name: "if_linkbeat_refresh_thread", scope: !144, file: !144, line: 568, type: !1546, isLocal: true, isDefinition: true, scopeLine: 569, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!119, !1089}
!1548 = !DILocalVariable(name: "thread", arg: 1, scope: !1545, file: !144, line: 568, type: !1089)
!1549 = !DILocation(line: 568, column: 39, scope: !1545)
!1550 = !DILocalVariable(name: "ifp", scope: !1545, file: !144, line: 570, type: !277)
!1551 = !DILocation(line: 570, column: 15, scope: !1545)
!1552 = !DILocation(line: 570, column: 23, scope: !1545)
!1553 = !DILocation(line: 570, column: 32, scope: !1545)
!1554 = !DILocation(line: 570, column: 21, scope: !1545)
!1555 = !DILocalVariable(name: "if_up", scope: !1545, file: !144, line: 571, type: !311)
!1556 = !DILocation(line: 571, column: 6, scope: !1545)
!1557 = !DILocalVariable(name: "was_up", scope: !1545, file: !144, line: 571, type: !311)
!1558 = !DILocation(line: 571, column: 20, scope: !1545)
!1559 = !DILocation(line: 573, column: 16, scope: !1545)
!1560 = !DILocation(line: 573, column: 22, scope: !1545)
!1561 = !DILocation(line: 573, column: 33, scope: !1545)
!1562 = !DILocation(line: 573, column: 13, scope: !1545)
!1563 = !DILocation(line: 573, column: 9, scope: !1545)
!1564 = !DILocation(line: 575, column: 8, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1545, file: !144, line: 575, column: 6)
!1566 = !DILocation(line: 575, column: 14, scope: !1565)
!1567 = !DILocation(line: 575, column: 22, scope: !1565)
!1568 = !DILocation(line: 575, column: 6, scope: !1545)
!1569 = !DILocation(line: 576, column: 24, scope: !1565)
!1570 = !DILocation(line: 576, column: 29, scope: !1565)
!1571 = !DILocation(line: 576, column: 11, scope: !1565)
!1572 = !DILocation(line: 576, column: 9, scope: !1565)
!1573 = !DILocation(line: 576, column: 3, scope: !1565)
!1574 = !DILocation(line: 577, column: 13, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1565, file: !144, line: 577, column: 11)
!1576 = !DILocation(line: 577, column: 19, scope: !1575)
!1577 = !DILocation(line: 577, column: 27, scope: !1575)
!1578 = !DILocation(line: 577, column: 11, scope: !1565)
!1579 = !DILocation(line: 578, column: 28, scope: !1575)
!1580 = !DILocation(line: 578, column: 33, scope: !1575)
!1581 = !DILocation(line: 578, column: 11, scope: !1575)
!1582 = !DILocation(line: 578, column: 9, scope: !1575)
!1583 = !DILocation(line: 578, column: 3, scope: !1575)
!1584 = !DILocation(line: 584, column: 6, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1545, file: !144, line: 584, column: 6)
!1586 = !DILocation(line: 584, column: 6, scope: !1545)
!1587 = !DILocation(line: 585, column: 26, scope: !1585)
!1588 = !DILocation(line: 585, column: 11, scope: !1585)
!1589 = !DILocation(line: 585, column: 9, scope: !1585)
!1590 = !DILocation(line: 585, column: 3, scope: !1585)
!1591 = !DILocation(line: 587, column: 19, scope: !1545)
!1592 = !DILocation(line: 587, column: 2, scope: !1545)
!1593 = !DILocation(line: 587, column: 7, scope: !1545)
!1594 = !DILocation(line: 587, column: 17, scope: !1545)
!1595 = !DILocation(line: 589, column: 6, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1545, file: !144, line: 589, column: 6)
!1597 = !DILocation(line: 589, column: 15, scope: !1596)
!1598 = !DILocation(line: 589, column: 12, scope: !1596)
!1599 = !DILocation(line: 589, column: 6, scope: !1545)
!1600 = !DILocation(line: 590, column: 50, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1596, file: !144, line: 589, column: 23)
!1602 = !DILocation(line: 590, column: 55, scope: !1601)
!1603 = !DILocation(line: 590, column: 63, scope: !1601)
!1604 = !DILocation(line: 590, column: 3, scope: !1601)
!1605 = !DILocation(line: 592, column: 28, scope: !1601)
!1606 = !DILocation(line: 592, column: 3, scope: !1601)
!1607 = !DILocation(line: 593, column: 2, scope: !1601)
!1608 = !DILocation(line: 596, column: 19, scope: !1545)
!1609 = !DILocation(line: 596, column: 55, scope: !1545)
!1610 = !DILocation(line: 596, column: 2, scope: !1545)
!1611 = !DILocation(line: 597, column: 2, scope: !1545)
!1612 = distinct !DISubprogram(name: "free_interface_queue", scope: !144, file: !144, line: 654, type: !572, isLocal: false, isDefinition: true, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!1613 = !DILocation(line: 656, column: 2, scope: !1612)
!1614 = !DILocation(line: 657, column: 2, scope: !1612)
!1615 = !DILocation(line: 658, column: 1, scope: !1612)
!1616 = distinct !DISubprogram(name: "free_old_interface_queue", scope: !144, file: !144, line: 661, type: !572, isLocal: false, isDefinition: true, scopeLine: 662, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!1617 = !DILocation(line: 663, column: 2, scope: !1616)
!1618 = !DILocation(line: 664, column: 1, scope: !1616)
!1619 = distinct !DISubprogram(name: "init_interface_queue", scope: !144, file: !144, line: 667, type: !572, isLocal: false, isDefinition: true, scopeLine: 668, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!1620 = !DILocation(line: 669, column: 2, scope: !1619)
!1621 = !DILocation(line: 670, column: 2, scope: !1619)
!1622 = !DILocation(line: 675, column: 2, scope: !1619)
!1623 = !DILocation(line: 678, column: 1, scope: !1619)
!1624 = distinct !DISubprogram(name: "init_if_queue", scope: !144, file: !144, line: 556, type: !572, isLocal: true, isDefinition: true, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!1625 = !DILocation(line: 558, column: 13, scope: !1624)
!1626 = !DILocation(line: 558, column: 11, scope: !1624)
!1627 = !DILocation(line: 559, column: 1, scope: !1624)
!1628 = distinct !DISubprogram(name: "if_join_vrrp_group", scope: !144, file: !144, line: 681, type: !1629, isLocal: false, isDefinition: true, scopeLine: 682, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!119, !244, !1631, !277}
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!1632 = !DILocalVariable(name: "family", arg: 1, scope: !1628, file: !144, line: 681, type: !244)
!1633 = !DILocation(line: 681, column: 32, scope: !1628)
!1634 = !DILocalVariable(name: "sd", arg: 2, scope: !1628, file: !144, line: 681, type: !1631)
!1635 = !DILocation(line: 681, column: 45, scope: !1628)
!1636 = !DILocalVariable(name: "ifp", arg: 3, scope: !1628, file: !144, line: 681, type: !277)
!1637 = !DILocation(line: 681, column: 62, scope: !1628)
!1638 = !DILocalVariable(name: "imr", scope: !1628, file: !144, line: 683, type: !1639)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_mreqn", file: !1640, line: 140, size: 96, align: 32, elements: !1641)
!1640 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1641 = !{!1642, !1643, !1644}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "imr_multiaddr", scope: !1639, file: !1640, line: 142, baseType: !287, size: 32, align: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "imr_address", scope: !1639, file: !1640, line: 143, baseType: !287, size: 32, align: 32, offset: 32)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "imr_ifindex", scope: !1639, file: !1640, line: 144, baseType: !119, size: 32, align: 32, offset: 64)
!1645 = !DILocation(line: 683, column: 18, scope: !1628)
!1646 = !DILocalVariable(name: "imr6", scope: !1628, file: !144, line: 684, type: !1647)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipv6_mreq", file: !59, line: 290, size: 160, align: 32, elements: !1648)
!1648 = !{!1649, !1650}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6mr_multiaddr", scope: !1647, file: !59, line: 293, baseType: !292, size: 128, align: 32)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6mr_interface", scope: !1647, file: !59, line: 296, baseType: !126, size: 32, align: 32, offset: 128)
!1651 = !DILocation(line: 684, column: 19, scope: !1628)
!1652 = !DILocalVariable(name: "ret", scope: !1628, file: !144, line: 685, type: !119)
!1653 = !DILocation(line: 685, column: 6, scope: !1628)
!1654 = !DILocation(line: 687, column: 7, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1628, file: !144, line: 687, column: 6)
!1656 = !DILocation(line: 687, column: 6, scope: !1655)
!1657 = !DILocation(line: 687, column: 10, scope: !1655)
!1658 = !DILocation(line: 687, column: 6, scope: !1628)
!1659 = !DILocation(line: 688, column: 3, scope: !1655)
!1660 = !DILocation(line: 696, column: 6, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1628, file: !144, line: 696, column: 6)
!1662 = !DILocation(line: 696, column: 13, scope: !1661)
!1663 = !DILocation(line: 696, column: 6, scope: !1628)
!1664 = !DILocation(line: 697, column: 3, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1661, file: !144, line: 696, column: 24)
!1666 = !DILocation(line: 698, column: 7, scope: !1665)
!1667 = !DILocation(line: 698, column: 23, scope: !1665)
!1668 = !DILocation(line: 698, column: 36, scope: !1665)
!1669 = !DILocation(line: 698, column: 54, scope: !1665)
!1670 = !DILocation(line: 699, column: 28, scope: !1665)
!1671 = !DILocation(line: 699, column: 34, scope: !1665)
!1672 = !DILocation(line: 699, column: 7, scope: !1665)
!1673 = !DILocation(line: 699, column: 19, scope: !1665)
!1674 = !DILocation(line: 704, column: 21, scope: !1665)
!1675 = !DILocation(line: 704, column: 20, scope: !1665)
!1676 = !DILocation(line: 705, column: 6, scope: !1665)
!1677 = !DILocation(line: 704, column: 9, scope: !1665)
!1678 = !DILocation(line: 704, column: 7, scope: !1665)
!1679 = !DILocation(line: 706, column: 2, scope: !1665)
!1680 = !DILocation(line: 707, column: 3, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1661, file: !144, line: 706, column: 9)
!1682 = !DILocation(line: 708, column: 8, scope: !1681)
!1683 = !DILocation(line: 708, column: 27, scope: !1681)
!1684 = !DILocation(line: 708, column: 40, scope: !1681)
!1685 = !DILocation(line: 708, column: 58, scope: !1681)
!1686 = !DILocation(line: 709, column: 29, scope: !1681)
!1687 = !DILocation(line: 709, column: 35, scope: !1681)
!1688 = !DILocation(line: 709, column: 8, scope: !1681)
!1689 = !DILocation(line: 709, column: 25, scope: !1681)
!1690 = !DILocation(line: 710, column: 21, scope: !1681)
!1691 = !DILocation(line: 710, column: 20, scope: !1681)
!1692 = !DILocation(line: 711, column: 6, scope: !1681)
!1693 = !DILocation(line: 710, column: 9, scope: !1681)
!1694 = !DILocation(line: 710, column: 7, scope: !1681)
!1695 = !DILocation(line: 714, column: 6, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1628, file: !144, line: 714, column: 6)
!1697 = !DILocation(line: 714, column: 10, scope: !1696)
!1698 = !DILocation(line: 714, column: 6, scope: !1628)
!1699 = !DILocation(line: 716, column: 8, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1696, file: !144, line: 714, column: 15)
!1701 = !DILocation(line: 716, column: 13, scope: !1700)
!1702 = !DILocation(line: 716, column: 22, scope: !1700)
!1703 = !DILocation(line: 716, column: 29, scope: !1700)
!1704 = !DILocation(line: 716, column: 21, scope: !1700)
!1705 = !DILocation(line: 716, column: 64, scope: !1700)
!1706 = !DILocation(line: 716, column: 63, scope: !1700)
!1707 = !DILocation(line: 716, column: 53, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1700, file: !144, discriminator: 1)
!1709 = !DILocation(line: 716, column: 72, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1700, file: !144, discriminator: 2)
!1711 = !DILocation(line: 716, column: 71, scope: !1700)
!1712 = !DILocation(line: 715, column: 3, scope: !1700)
!1713 = !DILocation(line: 717, column: 10, scope: !1700)
!1714 = !DILocation(line: 717, column: 9, scope: !1700)
!1715 = !DILocation(line: 717, column: 3, scope: !1700)
!1716 = !DILocation(line: 718, column: 4, scope: !1700)
!1717 = !DILocation(line: 718, column: 7, scope: !1700)
!1718 = !DILocation(line: 719, column: 2, scope: !1700)
!1719 = !DILocation(line: 721, column: 10, scope: !1628)
!1720 = !DILocation(line: 721, column: 9, scope: !1628)
!1721 = !DILocation(line: 721, column: 2, scope: !1628)
!1722 = !DILocation(line: 722, column: 1, scope: !1628)
!1723 = distinct !DISubprogram(name: "if_leave_vrrp_group", scope: !144, file: !144, line: 725, type: !1724, isLocal: false, isDefinition: true, scopeLine: 726, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!119, !244, !119, !277}
!1726 = !DILocalVariable(name: "family", arg: 1, scope: !1723, file: !144, line: 725, type: !244)
!1727 = !DILocation(line: 725, column: 33, scope: !1723)
!1728 = !DILocalVariable(name: "sd", arg: 2, scope: !1723, file: !144, line: 725, type: !119)
!1729 = !DILocation(line: 725, column: 45, scope: !1723)
!1730 = !DILocalVariable(name: "ifp", arg: 3, scope: !1723, file: !144, line: 725, type: !277)
!1731 = !DILocation(line: 725, column: 62, scope: !1723)
!1732 = !DILocalVariable(name: "imr", scope: !1723, file: !144, line: 727, type: !1639)
!1733 = !DILocation(line: 727, column: 18, scope: !1723)
!1734 = !DILocalVariable(name: "imr6", scope: !1723, file: !144, line: 728, type: !1647)
!1735 = !DILocation(line: 728, column: 19, scope: !1723)
!1736 = !DILocalVariable(name: "ret", scope: !1723, file: !144, line: 729, type: !119)
!1737 = !DILocation(line: 729, column: 6, scope: !1723)
!1738 = !DILocation(line: 732, column: 6, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1723, file: !144, line: 732, column: 6)
!1740 = !DILocation(line: 732, column: 9, scope: !1739)
!1741 = !DILocation(line: 732, column: 13, scope: !1739)
!1742 = !DILocation(line: 732, column: 17, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !1739, file: !144, discriminator: 1)
!1744 = !DILocation(line: 732, column: 6, scope: !1743)
!1745 = !DILocation(line: 733, column: 3, scope: !1739)
!1746 = !DILocation(line: 736, column: 6, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1723, file: !144, line: 736, column: 6)
!1748 = !DILocation(line: 736, column: 13, scope: !1747)
!1749 = !DILocation(line: 736, column: 6, scope: !1723)
!1750 = !DILocation(line: 737, column: 3, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1747, file: !144, line: 736, column: 24)
!1752 = !DILocation(line: 738, column: 7, scope: !1751)
!1753 = !DILocation(line: 738, column: 23, scope: !1751)
!1754 = !DILocation(line: 738, column: 36, scope: !1751)
!1755 = !DILocation(line: 738, column: 54, scope: !1751)
!1756 = !DILocation(line: 739, column: 28, scope: !1751)
!1757 = !DILocation(line: 739, column: 34, scope: !1751)
!1758 = !DILocation(line: 739, column: 7, scope: !1751)
!1759 = !DILocation(line: 739, column: 19, scope: !1751)
!1760 = !DILocation(line: 740, column: 20, scope: !1751)
!1761 = !DILocation(line: 741, column: 6, scope: !1751)
!1762 = !DILocation(line: 740, column: 9, scope: !1751)
!1763 = !DILocation(line: 740, column: 7, scope: !1751)
!1764 = !DILocation(line: 742, column: 2, scope: !1751)
!1765 = !DILocation(line: 743, column: 3, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1747, file: !144, line: 742, column: 9)
!1767 = !DILocation(line: 744, column: 8, scope: !1766)
!1768 = !DILocation(line: 744, column: 27, scope: !1766)
!1769 = !DILocation(line: 744, column: 40, scope: !1766)
!1770 = !DILocation(line: 744, column: 58, scope: !1766)
!1771 = !DILocation(line: 745, column: 29, scope: !1766)
!1772 = !DILocation(line: 745, column: 35, scope: !1766)
!1773 = !DILocation(line: 745, column: 8, scope: !1766)
!1774 = !DILocation(line: 745, column: 25, scope: !1766)
!1775 = !DILocation(line: 746, column: 20, scope: !1766)
!1776 = !DILocation(line: 747, column: 6, scope: !1766)
!1777 = !DILocation(line: 746, column: 9, scope: !1766)
!1778 = !DILocation(line: 746, column: 7, scope: !1766)
!1779 = !DILocation(line: 750, column: 6, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1723, file: !144, line: 750, column: 6)
!1781 = !DILocation(line: 750, column: 10, scope: !1780)
!1782 = !DILocation(line: 750, column: 6, scope: !1723)
!1783 = !DILocation(line: 752, column: 8, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !144, line: 750, column: 15)
!1785 = !DILocation(line: 752, column: 13, scope: !1784)
!1786 = !DILocation(line: 752, column: 22, scope: !1784)
!1787 = !DILocation(line: 752, column: 29, scope: !1784)
!1788 = !DILocation(line: 752, column: 21, scope: !1784)
!1789 = !DILocation(line: 752, column: 64, scope: !1784)
!1790 = !DILocation(line: 752, column: 63, scope: !1784)
!1791 = !DILocation(line: 752, column: 53, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !1784, file: !144, discriminator: 1)
!1793 = !DILocation(line: 752, column: 72, scope: !1794)
!1794 = !DILexicalBlockFile(scope: !1784, file: !144, discriminator: 2)
!1795 = !DILocation(line: 752, column: 71, scope: !1784)
!1796 = !DILocation(line: 751, column: 3, scope: !1784)
!1797 = !DILocation(line: 753, column: 3, scope: !1784)
!1798 = !DILocation(line: 756, column: 2, scope: !1723)
!1799 = !DILocation(line: 757, column: 1, scope: !1723)
!1800 = distinct !DISubprogram(name: "if_setsockopt_bindtodevice", scope: !144, file: !144, line: 760, type: !1801, isLocal: false, isDefinition: true, scopeLine: 761, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!119, !1631, !277}
!1803 = !DILocalVariable(name: "sd", arg: 1, scope: !1800, file: !144, line: 760, type: !1631)
!1804 = !DILocation(line: 760, column: 33, scope: !1800)
!1805 = !DILocalVariable(name: "ifp", arg: 2, scope: !1800, file: !144, line: 760, type: !277)
!1806 = !DILocation(line: 760, column: 50, scope: !1800)
!1807 = !DILocalVariable(name: "ret", scope: !1800, file: !144, line: 762, type: !119)
!1808 = !DILocation(line: 762, column: 6, scope: !1800)
!1809 = !DILocation(line: 764, column: 7, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1800, file: !144, line: 764, column: 6)
!1811 = !DILocation(line: 764, column: 6, scope: !1810)
!1812 = !DILocation(line: 764, column: 10, scope: !1810)
!1813 = !DILocation(line: 764, column: 6, scope: !1800)
!1814 = !DILocation(line: 765, column: 3, scope: !1810)
!1815 = !DILocation(line: 776, column: 20, scope: !1800)
!1816 = !DILocation(line: 776, column: 19, scope: !1800)
!1817 = !DILocation(line: 776, column: 54, scope: !1800)
!1818 = !DILocation(line: 776, column: 60, scope: !1800)
!1819 = !DILocation(line: 776, column: 52, scope: !1800)
!1820 = !DILocation(line: 776, column: 89, scope: !1800)
!1821 = !DILocation(line: 776, column: 95, scope: !1800)
!1822 = !DILocation(line: 776, column: 87, scope: !1800)
!1823 = !DILocation(line: 776, column: 80, scope: !1800)
!1824 = !DILocation(line: 776, column: 69, scope: !1800)
!1825 = !DILocation(line: 776, column: 104, scope: !1800)
!1826 = !DILocation(line: 776, column: 8, scope: !1827)
!1827 = !DILexicalBlockFile(scope: !1800, file: !144, discriminator: 1)
!1828 = !DILocation(line: 776, column: 6, scope: !1800)
!1829 = !DILocation(line: 777, column: 6, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1800, file: !144, line: 777, column: 6)
!1831 = !DILocation(line: 777, column: 10, scope: !1830)
!1832 = !DILocation(line: 777, column: 6, scope: !1800)
!1833 = !DILocation(line: 779, column: 10, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1830, file: !144, line: 777, column: 15)
!1835 = !DILocation(line: 779, column: 16, scope: !1834)
!1836 = !DILocation(line: 779, column: 8, scope: !1834)
!1837 = !DILocation(line: 779, column: 23, scope: !1834)
!1838 = !DILocation(line: 779, column: 22, scope: !1834)
!1839 = !DILocation(line: 778, column: 3, scope: !1834)
!1840 = !DILocation(line: 780, column: 10, scope: !1834)
!1841 = !DILocation(line: 780, column: 9, scope: !1834)
!1842 = !DILocation(line: 780, column: 3, scope: !1834)
!1843 = !DILocation(line: 781, column: 4, scope: !1834)
!1844 = !DILocation(line: 781, column: 7, scope: !1834)
!1845 = !DILocation(line: 782, column: 2, scope: !1834)
!1846 = !DILocation(line: 784, column: 10, scope: !1800)
!1847 = !DILocation(line: 784, column: 9, scope: !1800)
!1848 = !DILocation(line: 784, column: 2, scope: !1800)
!1849 = !DILocation(line: 785, column: 1, scope: !1800)
!1850 = distinct !DISubprogram(name: "if_setsockopt_hdrincl", scope: !144, file: !144, line: 788, type: !1851, isLocal: false, isDefinition: true, scopeLine: 789, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!119, !1631}
!1853 = !DILocalVariable(name: "sd", arg: 1, scope: !1850, file: !144, line: 788, type: !1631)
!1854 = !DILocation(line: 788, column: 28, scope: !1850)
!1855 = !DILocalVariable(name: "ret", scope: !1850, file: !144, line: 790, type: !119)
!1856 = !DILocation(line: 790, column: 6, scope: !1850)
!1857 = !DILocalVariable(name: "on", scope: !1850, file: !144, line: 791, type: !119)
!1858 = !DILocation(line: 791, column: 6, scope: !1850)
!1859 = !DILocation(line: 793, column: 7, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1850, file: !144, line: 793, column: 6)
!1861 = !DILocation(line: 793, column: 6, scope: !1860)
!1862 = !DILocation(line: 793, column: 10, scope: !1860)
!1863 = !DILocation(line: 793, column: 6, scope: !1850)
!1864 = !DILocation(line: 794, column: 3, scope: !1860)
!1865 = !DILocation(line: 797, column: 20, scope: !1850)
!1866 = !DILocation(line: 797, column: 19, scope: !1850)
!1867 = !DILocation(line: 797, column: 47, scope: !1850)
!1868 = !DILocation(line: 797, column: 8, scope: !1850)
!1869 = !DILocation(line: 797, column: 6, scope: !1850)
!1870 = !DILocation(line: 798, column: 6, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1850, file: !144, line: 798, column: 6)
!1872 = !DILocation(line: 798, column: 10, scope: !1871)
!1873 = !DILocation(line: 798, column: 6, scope: !1850)
!1874 = !DILocation(line: 799, column: 71, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1871, file: !144, line: 798, column: 15)
!1876 = !DILocation(line: 799, column: 70, scope: !1875)
!1877 = !DILocation(line: 799, column: 3, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !1875, file: !144, discriminator: 1)
!1879 = !DILocation(line: 800, column: 10, scope: !1875)
!1880 = !DILocation(line: 800, column: 9, scope: !1875)
!1881 = !DILocation(line: 800, column: 3, scope: !1875)
!1882 = !DILocation(line: 801, column: 4, scope: !1875)
!1883 = !DILocation(line: 801, column: 7, scope: !1875)
!1884 = !DILocation(line: 802, column: 2, scope: !1875)
!1885 = !DILocation(line: 804, column: 10, scope: !1850)
!1886 = !DILocation(line: 804, column: 9, scope: !1850)
!1887 = !DILocation(line: 804, column: 2, scope: !1850)
!1888 = !DILocation(line: 805, column: 1, scope: !1850)
!1889 = distinct !DISubprogram(name: "if_setsockopt_ipv6_checksum", scope: !144, file: !144, line: 808, type: !1851, isLocal: false, isDefinition: true, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!1890 = !DILocalVariable(name: "sd", arg: 1, scope: !1889, file: !144, line: 808, type: !1631)
!1891 = !DILocation(line: 808, column: 34, scope: !1889)
!1892 = !DILocalVariable(name: "ret", scope: !1889, file: !144, line: 810, type: !119)
!1893 = !DILocation(line: 810, column: 6, scope: !1889)
!1894 = !DILocalVariable(name: "offset", scope: !1889, file: !144, line: 811, type: !119)
!1895 = !DILocation(line: 811, column: 6, scope: !1889)
!1896 = !DILocation(line: 813, column: 7, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1889, file: !144, line: 813, column: 6)
!1898 = !DILocation(line: 813, column: 10, scope: !1897)
!1899 = !DILocation(line: 813, column: 14, scope: !1900)
!1900 = !DILexicalBlockFile(scope: !1897, file: !144, discriminator: 1)
!1901 = !DILocation(line: 813, column: 13, scope: !1900)
!1902 = !DILocation(line: 813, column: 17, scope: !1900)
!1903 = !DILocation(line: 813, column: 6, scope: !1900)
!1904 = !DILocation(line: 814, column: 3, scope: !1897)
!1905 = !DILocation(line: 816, column: 20, scope: !1889)
!1906 = !DILocation(line: 816, column: 19, scope: !1889)
!1907 = !DILocation(line: 816, column: 52, scope: !1889)
!1908 = !DILocation(line: 816, column: 8, scope: !1889)
!1909 = !DILocation(line: 816, column: 6, scope: !1889)
!1910 = !DILocation(line: 817, column: 6, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1889, file: !144, line: 817, column: 6)
!1912 = !DILocation(line: 817, column: 10, scope: !1911)
!1913 = !DILocation(line: 817, column: 6, scope: !1889)
!1914 = !DILocation(line: 818, column: 77, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1911, file: !144, line: 817, column: 15)
!1916 = !DILocation(line: 818, column: 76, scope: !1915)
!1917 = !DILocation(line: 818, column: 3, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !1915, file: !144, discriminator: 1)
!1919 = !DILocation(line: 819, column: 10, scope: !1915)
!1920 = !DILocation(line: 819, column: 9, scope: !1915)
!1921 = !DILocation(line: 819, column: 3, scope: !1915)
!1922 = !DILocation(line: 820, column: 4, scope: !1915)
!1923 = !DILocation(line: 820, column: 7, scope: !1915)
!1924 = !DILocation(line: 821, column: 2, scope: !1915)
!1925 = !DILocation(line: 823, column: 10, scope: !1889)
!1926 = !DILocation(line: 823, column: 9, scope: !1889)
!1927 = !DILocation(line: 823, column: 2, scope: !1889)
!1928 = !DILocation(line: 824, column: 1, scope: !1889)
!1929 = distinct !DISubprogram(name: "if_setsockopt_mcast_all", scope: !144, file: !144, line: 828, type: !1930, isLocal: false, isDefinition: true, scopeLine: 829, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!119, !244, !1631}
!1932 = !DILocalVariable(name: "family", arg: 1, scope: !1929, file: !144, line: 828, type: !244)
!1933 = !DILocation(line: 828, column: 37, scope: !1929)
!1934 = !DILocalVariable(name: "sd", arg: 2, scope: !1929, file: !144, line: 828, type: !1631)
!1935 = !DILocation(line: 828, column: 50, scope: !1929)
!1936 = !DILocalVariable(name: "ret", scope: !1929, file: !144, line: 830, type: !119)
!1937 = !DILocation(line: 830, column: 6, scope: !1929)
!1938 = !DILocalVariable(name: "no", scope: !1929, file: !144, line: 831, type: !265)
!1939 = !DILocation(line: 831, column: 16, scope: !1929)
!1940 = !DILocation(line: 833, column: 7, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1929, file: !144, line: 833, column: 6)
!1942 = !DILocation(line: 833, column: 6, scope: !1941)
!1943 = !DILocation(line: 833, column: 10, scope: !1941)
!1944 = !DILocation(line: 833, column: 6, scope: !1929)
!1945 = !DILocation(line: 834, column: 3, scope: !1941)
!1946 = !DILocation(line: 836, column: 6, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1929, file: !144, line: 836, column: 6)
!1948 = !DILocation(line: 836, column: 13, scope: !1947)
!1949 = !DILocation(line: 836, column: 6, scope: !1929)
!1950 = !DILocation(line: 837, column: 11, scope: !1947)
!1951 = !DILocation(line: 837, column: 10, scope: !1947)
!1952 = !DILocation(line: 837, column: 3, scope: !1947)
!1953 = !DILocation(line: 840, column: 20, scope: !1929)
!1954 = !DILocation(line: 840, column: 19, scope: !1929)
!1955 = !DILocation(line: 840, column: 8, scope: !1929)
!1956 = !DILocation(line: 840, column: 6, scope: !1929)
!1957 = !DILocation(line: 842, column: 6, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1929, file: !144, line: 842, column: 6)
!1959 = !DILocation(line: 842, column: 10, scope: !1958)
!1960 = !DILocation(line: 842, column: 6, scope: !1929)
!1961 = !DILocation(line: 844, column: 9, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1958, file: !144, line: 842, column: 15)
!1963 = !DILocation(line: 844, column: 8, scope: !1962)
!1964 = !DILocation(line: 843, column: 3, scope: !1962)
!1965 = !DILocation(line: 845, column: 10, scope: !1962)
!1966 = !DILocation(line: 845, column: 9, scope: !1962)
!1967 = !DILocation(line: 845, column: 3, scope: !1962)
!1968 = !DILocation(line: 846, column: 4, scope: !1962)
!1969 = !DILocation(line: 846, column: 7, scope: !1962)
!1970 = !DILocation(line: 847, column: 2, scope: !1962)
!1971 = !DILocation(line: 849, column: 10, scope: !1929)
!1972 = !DILocation(line: 849, column: 9, scope: !1929)
!1973 = !DILocation(line: 849, column: 2, scope: !1929)
!1974 = !DILocation(line: 850, column: 1, scope: !1929)
!1975 = distinct !DISubprogram(name: "if_setsockopt_mcast_loop", scope: !144, file: !144, line: 854, type: !1930, isLocal: false, isDefinition: true, scopeLine: 855, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!1976 = !DILocalVariable(name: "family", arg: 1, scope: !1975, file: !144, line: 854, type: !244)
!1977 = !DILocation(line: 854, column: 38, scope: !1975)
!1978 = !DILocalVariable(name: "sd", arg: 2, scope: !1975, file: !144, line: 854, type: !1631)
!1979 = !DILocation(line: 854, column: 51, scope: !1975)
!1980 = !DILocalVariable(name: "ret", scope: !1975, file: !144, line: 856, type: !119)
!1981 = !DILocation(line: 856, column: 6, scope: !1975)
!1982 = !DILocalVariable(name: "loop", scope: !1975, file: !144, line: 857, type: !265)
!1983 = !DILocation(line: 857, column: 16, scope: !1975)
!1984 = !DILocalVariable(name: "loopv6", scope: !1975, file: !144, line: 858, type: !119)
!1985 = !DILocation(line: 858, column: 6, scope: !1975)
!1986 = !DILocation(line: 860, column: 7, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1975, file: !144, line: 860, column: 6)
!1988 = !DILocation(line: 860, column: 6, scope: !1987)
!1989 = !DILocation(line: 860, column: 10, scope: !1987)
!1990 = !DILocation(line: 860, column: 6, scope: !1975)
!1991 = !DILocation(line: 861, column: 3, scope: !1987)
!1992 = !DILocation(line: 864, column: 6, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1975, file: !144, line: 864, column: 6)
!1994 = !DILocation(line: 864, column: 13, scope: !1993)
!1995 = !DILocation(line: 864, column: 6, scope: !1975)
!1996 = !DILocation(line: 865, column: 21, scope: !1993)
!1997 = !DILocation(line: 865, column: 20, scope: !1993)
!1998 = !DILocation(line: 865, column: 9, scope: !1993)
!1999 = !DILocation(line: 865, column: 7, scope: !1993)
!2000 = !DILocation(line: 865, column: 3, scope: !1993)
!2001 = !DILocation(line: 867, column: 21, scope: !1993)
!2002 = !DILocation(line: 867, column: 20, scope: !1993)
!2003 = !DILocation(line: 867, column: 59, scope: !1993)
!2004 = !DILocation(line: 867, column: 9, scope: !1993)
!2005 = !DILocation(line: 867, column: 7, scope: !1993)
!2006 = !DILocation(line: 869, column: 6, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1975, file: !144, line: 869, column: 6)
!2008 = !DILocation(line: 869, column: 10, scope: !2007)
!2009 = !DILocation(line: 869, column: 6, scope: !1975)
!2010 = !DILocation(line: 871, column: 9, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2007, file: !144, line: 869, column: 15)
!2012 = !DILocation(line: 871, column: 16, scope: !2011)
!2013 = !DILocation(line: 871, column: 8, scope: !2011)
!2014 = !DILocation(line: 871, column: 42, scope: !2011)
!2015 = !DILocation(line: 871, column: 41, scope: !2011)
!2016 = !DILocation(line: 870, column: 3, scope: !2011)
!2017 = !DILocation(line: 872, column: 10, scope: !2011)
!2018 = !DILocation(line: 872, column: 9, scope: !2011)
!2019 = !DILocation(line: 872, column: 3, scope: !2011)
!2020 = !DILocation(line: 873, column: 4, scope: !2011)
!2021 = !DILocation(line: 873, column: 7, scope: !2011)
!2022 = !DILocation(line: 874, column: 2, scope: !2011)
!2023 = !DILocation(line: 876, column: 10, scope: !1975)
!2024 = !DILocation(line: 876, column: 9, scope: !1975)
!2025 = !DILocation(line: 876, column: 2, scope: !1975)
!2026 = !DILocation(line: 877, column: 1, scope: !1975)
!2027 = distinct !DISubprogram(name: "if_setsockopt_mcast_hops", scope: !144, file: !144, line: 880, type: !1930, isLocal: false, isDefinition: true, scopeLine: 881, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!2028 = !DILocalVariable(name: "family", arg: 1, scope: !2027, file: !144, line: 880, type: !244)
!2029 = !DILocation(line: 880, column: 38, scope: !2027)
!2030 = !DILocalVariable(name: "sd", arg: 2, scope: !2027, file: !144, line: 880, type: !1631)
!2031 = !DILocation(line: 880, column: 51, scope: !2027)
!2032 = !DILocalVariable(name: "ret", scope: !2027, file: !144, line: 882, type: !119)
!2033 = !DILocation(line: 882, column: 6, scope: !2027)
!2034 = !DILocalVariable(name: "hops", scope: !2027, file: !144, line: 883, type: !119)
!2035 = !DILocation(line: 883, column: 6, scope: !2027)
!2036 = !DILocation(line: 886, column: 7, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2027, file: !144, line: 886, column: 6)
!2038 = !DILocation(line: 886, column: 6, scope: !2037)
!2039 = !DILocation(line: 886, column: 10, scope: !2037)
!2040 = !DILocation(line: 886, column: 14, scope: !2037)
!2041 = !DILocation(line: 886, column: 17, scope: !2042)
!2042 = !DILexicalBlockFile(scope: !2037, file: !144, discriminator: 1)
!2043 = !DILocation(line: 886, column: 24, scope: !2042)
!2044 = !DILocation(line: 886, column: 6, scope: !2042)
!2045 = !DILocation(line: 887, column: 3, scope: !2037)
!2046 = !DILocation(line: 890, column: 20, scope: !2027)
!2047 = !DILocation(line: 890, column: 19, scope: !2027)
!2048 = !DILocation(line: 890, column: 58, scope: !2027)
!2049 = !DILocation(line: 890, column: 8, scope: !2027)
!2050 = !DILocation(line: 890, column: 6, scope: !2027)
!2051 = !DILocation(line: 891, column: 6, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2027, file: !144, line: 891, column: 6)
!2053 = !DILocation(line: 891, column: 10, scope: !2052)
!2054 = !DILocation(line: 891, column: 6, scope: !2027)
!2055 = !DILocation(line: 892, column: 83, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2052, file: !144, line: 891, column: 15)
!2057 = !DILocation(line: 892, column: 82, scope: !2056)
!2058 = !DILocation(line: 892, column: 3, scope: !2059)
!2059 = !DILexicalBlockFile(scope: !2056, file: !144, discriminator: 1)
!2060 = !DILocation(line: 893, column: 10, scope: !2056)
!2061 = !DILocation(line: 893, column: 9, scope: !2056)
!2062 = !DILocation(line: 893, column: 3, scope: !2056)
!2063 = !DILocation(line: 894, column: 4, scope: !2056)
!2064 = !DILocation(line: 894, column: 7, scope: !2056)
!2065 = !DILocation(line: 895, column: 2, scope: !2056)
!2066 = !DILocation(line: 897, column: 10, scope: !2027)
!2067 = !DILocation(line: 897, column: 9, scope: !2027)
!2068 = !DILocation(line: 897, column: 2, scope: !2027)
!2069 = !DILocation(line: 898, column: 1, scope: !2027)
!2070 = distinct !DISubprogram(name: "if_setsockopt_mcast_if", scope: !144, file: !144, line: 901, type: !1629, isLocal: false, isDefinition: true, scopeLine: 902, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!2071 = !DILocalVariable(name: "family", arg: 1, scope: !2070, file: !144, line: 901, type: !244)
!2072 = !DILocation(line: 901, column: 36, scope: !2070)
!2073 = !DILocalVariable(name: "sd", arg: 2, scope: !2070, file: !144, line: 901, type: !1631)
!2074 = !DILocation(line: 901, column: 49, scope: !2070)
!2075 = !DILocalVariable(name: "ifp", arg: 3, scope: !2070, file: !144, line: 901, type: !277)
!2076 = !DILocation(line: 901, column: 66, scope: !2070)
!2077 = !DILocalVariable(name: "ret", scope: !2070, file: !144, line: 903, type: !119)
!2078 = !DILocation(line: 903, column: 6, scope: !2070)
!2079 = !DILocalVariable(name: "ifindex", scope: !2070, file: !144, line: 904, type: !283)
!2080 = !DILocation(line: 904, column: 12, scope: !2070)
!2081 = !DILocalVariable(name: "int_ifindex", scope: !2070, file: !144, line: 905, type: !119)
!2082 = !DILocation(line: 905, column: 6, scope: !2070)
!2083 = !DILocation(line: 907, column: 7, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2070, file: !144, line: 907, column: 6)
!2085 = !DILocation(line: 907, column: 6, scope: !2084)
!2086 = !DILocation(line: 907, column: 10, scope: !2084)
!2087 = !DILocation(line: 907, column: 6, scope: !2070)
!2088 = !DILocation(line: 908, column: 3, scope: !2084)
!2089 = !DILocation(line: 911, column: 14, scope: !2070)
!2090 = !DILocation(line: 911, column: 20, scope: !2070)
!2091 = !DILocation(line: 911, column: 10, scope: !2070)
!2092 = !DILocation(line: 912, column: 7, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2070, file: !144, line: 912, column: 7)
!2094 = !DILocation(line: 912, column: 14, scope: !2093)
!2095 = !DILocation(line: 912, column: 7, scope: !2070)
!2096 = !DILocalVariable(name: "imr", scope: !2097, file: !144, line: 914, type: !1639)
!2097 = distinct !DILexicalBlock(scope: !2093, file: !144, line: 913, column: 2)
!2098 = !DILocation(line: 914, column: 19, scope: !2097)
!2099 = !DILocation(line: 916, column: 3, scope: !2097)
!2100 = !DILocation(line: 917, column: 28, scope: !2097)
!2101 = !DILocation(line: 917, column: 34, scope: !2097)
!2102 = !DILocation(line: 917, column: 7, scope: !2097)
!2103 = !DILocation(line: 917, column: 19, scope: !2097)
!2104 = !DILocation(line: 918, column: 21, scope: !2097)
!2105 = !DILocation(line: 918, column: 20, scope: !2097)
!2106 = !DILocation(line: 918, column: 53, scope: !2097)
!2107 = !DILocation(line: 918, column: 9, scope: !2097)
!2108 = !DILocation(line: 918, column: 7, scope: !2097)
!2109 = !DILocation(line: 919, column: 2, scope: !2097)
!2110 = !DILocation(line: 921, column: 22, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2093, file: !144, line: 920, column: 7)
!2112 = !DILocation(line: 921, column: 15, scope: !2111)
!2113 = !DILocation(line: 922, column: 21, scope: !2111)
!2114 = !DILocation(line: 922, column: 20, scope: !2111)
!2115 = !DILocation(line: 922, column: 57, scope: !2111)
!2116 = !DILocation(line: 922, column: 9, scope: !2111)
!2117 = !DILocation(line: 922, column: 7, scope: !2111)
!2118 = !DILocation(line: 925, column: 6, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2070, file: !144, line: 925, column: 6)
!2120 = !DILocation(line: 925, column: 10, scope: !2119)
!2121 = !DILocation(line: 925, column: 6, scope: !2070)
!2122 = !DILocation(line: 926, column: 80, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2119, file: !144, line: 925, column: 15)
!2124 = !DILocation(line: 926, column: 87, scope: !2123)
!2125 = !DILocation(line: 926, column: 79, scope: !2123)
!2126 = !DILocation(line: 926, column: 114, scope: !2123)
!2127 = !DILocation(line: 926, column: 113, scope: !2123)
!2128 = !DILocation(line: 926, column: 3, scope: !2129)
!2129 = !DILexicalBlockFile(scope: !2123, file: !144, discriminator: 1)
!2130 = !DILocation(line: 927, column: 10, scope: !2123)
!2131 = !DILocation(line: 927, column: 9, scope: !2123)
!2132 = !DILocation(line: 927, column: 3, scope: !2123)
!2133 = !DILocation(line: 928, column: 4, scope: !2123)
!2134 = !DILocation(line: 928, column: 7, scope: !2123)
!2135 = !DILocation(line: 929, column: 2, scope: !2123)
!2136 = !DILocation(line: 931, column: 10, scope: !2070)
!2137 = !DILocation(line: 931, column: 9, scope: !2070)
!2138 = !DILocation(line: 931, column: 2, scope: !2070)
!2139 = !DILocation(line: 932, column: 1, scope: !2070)
!2140 = distinct !DISubprogram(name: "if_setsockopt_priority", scope: !144, file: !144, line: 935, type: !2141, isLocal: false, isDefinition: true, scopeLine: 936, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!119, !1631, !119}
!2143 = !DILocalVariable(name: "sd", arg: 1, scope: !2140, file: !144, line: 935, type: !1631)
!2144 = !DILocation(line: 935, column: 29, scope: !2140)
!2145 = !DILocalVariable(name: "family", arg: 2, scope: !2140, file: !144, line: 935, type: !119)
!2146 = !DILocation(line: 935, column: 37, scope: !2140)
!2147 = !DILocalVariable(name: "ret", scope: !2140, file: !144, line: 937, type: !119)
!2148 = !DILocation(line: 937, column: 6, scope: !2140)
!2149 = !DILocalVariable(name: "val", scope: !2140, file: !144, line: 938, type: !119)
!2150 = !DILocation(line: 938, column: 6, scope: !2140)
!2151 = !DILocation(line: 940, column: 7, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2140, file: !144, line: 940, column: 6)
!2153 = !DILocation(line: 940, column: 6, scope: !2152)
!2154 = !DILocation(line: 940, column: 10, scope: !2152)
!2155 = !DILocation(line: 940, column: 6, scope: !2140)
!2156 = !DILocation(line: 941, column: 3, scope: !2152)
!2157 = !DILocation(line: 944, column: 6, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2140, file: !144, line: 944, column: 6)
!2159 = !DILocation(line: 944, column: 13, scope: !2158)
!2160 = !DILocation(line: 944, column: 6, scope: !2140)
!2161 = !DILocation(line: 945, column: 7, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2158, file: !144, line: 944, column: 24)
!2163 = !DILocation(line: 946, column: 21, scope: !2162)
!2164 = !DILocation(line: 946, column: 20, scope: !2162)
!2165 = !DILocation(line: 946, column: 44, scope: !2162)
!2166 = !DILocation(line: 946, column: 9, scope: !2162)
!2167 = !DILocation(line: 946, column: 7, scope: !2162)
!2168 = !DILocation(line: 947, column: 2, scope: !2162)
!2169 = !DILocation(line: 950, column: 7, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2158, file: !144, line: 948, column: 7)
!2171 = !DILocation(line: 951, column: 21, scope: !2170)
!2172 = !DILocation(line: 951, column: 20, scope: !2170)
!2173 = !DILocation(line: 951, column: 51, scope: !2170)
!2174 = !DILocation(line: 951, column: 9, scope: !2170)
!2175 = !DILocation(line: 951, column: 7, scope: !2170)
!2176 = !DILocation(line: 954, column: 6, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2140, file: !144, line: 954, column: 6)
!2178 = !DILocation(line: 954, column: 10, scope: !2177)
!2179 = !DILocation(line: 954, column: 6, scope: !2140)
!2180 = !DILocation(line: 955, column: 63, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2177, file: !144, line: 954, column: 15)
!2182 = !DILocation(line: 955, column: 70, scope: !2181)
!2183 = !DILocation(line: 955, column: 62, scope: !2181)
!2184 = !DILocation(line: 955, column: 113, scope: !2181)
!2185 = !DILocation(line: 955, column: 112, scope: !2181)
!2186 = !DILocation(line: 955, column: 3, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2181, file: !144, discriminator: 1)
!2188 = !DILocation(line: 956, column: 10, scope: !2181)
!2189 = !DILocation(line: 956, column: 9, scope: !2181)
!2190 = !DILocation(line: 956, column: 3, scope: !2181)
!2191 = !DILocation(line: 957, column: 4, scope: !2181)
!2192 = !DILocation(line: 957, column: 7, scope: !2181)
!2193 = !DILocation(line: 958, column: 2, scope: !2181)
!2194 = !DILocation(line: 960, column: 10, scope: !2140)
!2195 = !DILocation(line: 960, column: 9, scope: !2140)
!2196 = !DILocation(line: 960, column: 2, scope: !2140)
!2197 = !DILocation(line: 961, column: 1, scope: !2140)
!2198 = distinct !DISubprogram(name: "if_setsockopt_rcvbuf", scope: !144, file: !144, line: 964, type: !2141, isLocal: false, isDefinition: true, scopeLine: 965, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!2199 = !DILocalVariable(name: "sd", arg: 1, scope: !2198, file: !144, line: 964, type: !1631)
!2200 = !DILocation(line: 964, column: 27, scope: !2198)
!2201 = !DILocalVariable(name: "val", arg: 2, scope: !2198, file: !144, line: 964, type: !119)
!2202 = !DILocation(line: 964, column: 35, scope: !2198)
!2203 = !DILocalVariable(name: "ret", scope: !2198, file: !144, line: 966, type: !119)
!2204 = !DILocation(line: 966, column: 6, scope: !2198)
!2205 = !DILocation(line: 968, column: 7, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2198, file: !144, line: 968, column: 6)
!2207 = !DILocation(line: 968, column: 6, scope: !2206)
!2208 = !DILocation(line: 968, column: 10, scope: !2206)
!2209 = !DILocation(line: 968, column: 6, scope: !2198)
!2210 = !DILocation(line: 969, column: 3, scope: !2206)
!2211 = !DILocation(line: 972, column: 20, scope: !2198)
!2212 = !DILocation(line: 972, column: 19, scope: !2198)
!2213 = !DILocation(line: 972, column: 46, scope: !2198)
!2214 = !DILocation(line: 972, column: 8, scope: !2198)
!2215 = !DILocation(line: 972, column: 6, scope: !2198)
!2216 = !DILocation(line: 973, column: 6, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2198, file: !144, line: 973, column: 6)
!2218 = !DILocation(line: 973, column: 10, scope: !2217)
!2219 = !DILocation(line: 973, column: 6, scope: !2198)
!2220 = !DILocation(line: 974, column: 73, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2217, file: !144, line: 973, column: 15)
!2222 = !DILocation(line: 974, column: 72, scope: !2221)
!2223 = !DILocation(line: 974, column: 3, scope: !2224)
!2224 = !DILexicalBlockFile(scope: !2221, file: !144, discriminator: 1)
!2225 = !DILocation(line: 975, column: 10, scope: !2221)
!2226 = !DILocation(line: 975, column: 9, scope: !2221)
!2227 = !DILocation(line: 975, column: 3, scope: !2221)
!2228 = !DILocation(line: 976, column: 4, scope: !2221)
!2229 = !DILocation(line: 976, column: 7, scope: !2221)
!2230 = !DILocation(line: 977, column: 2, scope: !2221)
!2231 = !DILocation(line: 979, column: 10, scope: !2198)
!2232 = !DILocation(line: 979, column: 9, scope: !2198)
!2233 = !DILocation(line: 979, column: 2, scope: !2198)
!2234 = !DILocation(line: 980, column: 1, scope: !2198)
!2235 = distinct !DISubprogram(name: "if_setsockopt_no_receive", scope: !144, file: !144, line: 983, type: !1851, isLocal: false, isDefinition: true, scopeLine: 984, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!2236 = !DILocalVariable(name: "sd", arg: 1, scope: !2235, file: !144, line: 983, type: !1631)
!2237 = !DILocation(line: 983, column: 31, scope: !2235)
!2238 = !DILocalVariable(name: "ret", scope: !2235, file: !144, line: 985, type: !119)
!2239 = !DILocation(line: 985, column: 6, scope: !2235)
!2240 = !DILocalVariable(name: "bpfcode", scope: !2235, file: !144, line: 986, type: !2241)
!2241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2242, size: 64, align: 32, elements: !204)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sock_filter", file: !2243, line: 23, size: 64, align: 32, elements: !2244)
!2243 = !DIFile(filename: "/usr/include/linux/filter.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2244 = !{!2245, !2246, !2248, !2249}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2242, file: !2243, line: 24, baseType: !133, size: 16, align: 16)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "jt", scope: !2242, file: !2243, line: 25, baseType: !2247, size: 8, align: 8, offset: 16)
!2247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !134, line: 20, baseType: !265)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "jf", scope: !2242, file: !2243, line: 26, baseType: !2247, size: 8, align: 8, offset: 24)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !2242, file: !2243, line: 27, baseType: !2250, size: 32, align: 32, offset: 32)
!2250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !134, line: 26, baseType: !126)
!2251 = !DILocation(line: 986, column: 21, scope: !2235)
!2252 = !DILocalVariable(name: "bpf", scope: !2235, file: !144, line: 989, type: !2253)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sock_fprog", file: !2243, line: 30, size: 128, align: 64, elements: !2254)
!2254 = !{!2255, !2256}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2253, file: !2243, line: 31, baseType: !135, size: 16, align: 16)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2253, file: !2243, line: 32, baseType: !2257, size: 64, align: 64, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64, align: 64)
!2258 = !DILocation(line: 989, column: 20, scope: !2235)
!2259 = !DILocation(line: 989, column: 26, scope: !2235)
!2260 = !DILocation(line: 989, column: 30, scope: !2235)
!2261 = !DILocation(line: 991, column: 7, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2235, file: !144, line: 991, column: 6)
!2263 = !DILocation(line: 991, column: 6, scope: !2262)
!2264 = !DILocation(line: 991, column: 10, scope: !2262)
!2265 = !DILocation(line: 991, column: 6, scope: !2235)
!2266 = !DILocation(line: 992, column: 3, scope: !2262)
!2267 = !DILocation(line: 994, column: 20, scope: !2235)
!2268 = !DILocation(line: 994, column: 19, scope: !2235)
!2269 = !DILocation(line: 994, column: 53, scope: !2235)
!2270 = !DILocation(line: 994, column: 8, scope: !2235)
!2271 = !DILocation(line: 994, column: 6, scope: !2235)
!2272 = !DILocation(line: 995, column: 6, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2235, file: !144, line: 995, column: 6)
!2274 = !DILocation(line: 995, column: 10, scope: !2273)
!2275 = !DILocation(line: 995, column: 6, scope: !2235)
!2276 = !DILocation(line: 996, column: 78, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2273, file: !144, line: 995, column: 15)
!2278 = !DILocation(line: 996, column: 77, scope: !2277)
!2279 = !DILocation(line: 996, column: 3, scope: !2280)
!2280 = !DILexicalBlockFile(scope: !2277, file: !144, discriminator: 1)
!2281 = !DILocation(line: 997, column: 10, scope: !2277)
!2282 = !DILocation(line: 997, column: 9, scope: !2277)
!2283 = !DILocation(line: 997, column: 3, scope: !2277)
!2284 = !DILocation(line: 998, column: 4, scope: !2277)
!2285 = !DILocation(line: 998, column: 7, scope: !2277)
!2286 = !DILocation(line: 999, column: 2, scope: !2277)
!2287 = !DILocation(line: 1001, column: 10, scope: !2235)
!2288 = !DILocation(line: 1001, column: 9, scope: !2235)
!2289 = !DILocation(line: 1001, column: 2, scope: !2235)
!2290 = !DILocation(line: 1002, column: 1, scope: !2235)
!2291 = distinct !DISubprogram(name: "interface_up", scope: !144, file: !144, line: 1005, type: !563, isLocal: false, isDefinition: true, scopeLine: 1006, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!2292 = !DILocalVariable(name: "ifp", arg: 1, scope: !2291, file: !144, line: 1005, type: !277)
!2293 = !DILocation(line: 1005, column: 27, scope: !2291)
!2294 = !DILocation(line: 1008, column: 32, scope: !2291)
!2295 = !DILocation(line: 1008, column: 2, scope: !2291)
!2296 = !DILocation(line: 1009, column: 1, scope: !2291)
!2297 = distinct !DISubprogram(name: "interface_down", scope: !144, file: !144, line: 1012, type: !563, isLocal: false, isDefinition: true, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!2298 = !DILocalVariable(name: "ifp", arg: 1, scope: !2297, file: !144, line: 1012, type: !277)
!2299 = !DILocation(line: 1012, column: 29, scope: !2297)
!2300 = !DILocalVariable(name: "e", scope: !2297, file: !144, line: 1014, type: !366)
!2301 = !DILocation(line: 1014, column: 10, scope: !2297)
!2302 = !DILocalVariable(name: "e1", scope: !2297, file: !144, line: 1014, type: !366)
!2303 = !DILocation(line: 1014, column: 13, scope: !2297)
!2304 = !DILocalVariable(name: "vrrp", scope: !2297, file: !144, line: 1015, type: !937)
!2305 = !DILocation(line: 1015, column: 10, scope: !2297)
!2306 = !DILocalVariable(name: "route", scope: !2297, file: !144, line: 1016, type: !2307)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64, align: 64)
!2308 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_route_t", file: !2309, line: 239, baseType: !2310)
!2309 = !DIFile(filename: "./../include/vrrp_iproute.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_route", file: !2309, line: 182, size: 1664, align: 64, elements: !2311)
!2311 = !{!2312, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2439, !2440, !2441, !2442, !2443, !2444}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2310, file: !2309, line: 183, baseType: !2313, size: 64, align: 64)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64, align: 64)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_address_t", file: !2315, line: 73, baseType: !2316)
!2315 = !DIFile(filename: "./../include/vrrp_ipaddress.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_address", file: !2315, line: 41, size: 704, align: 64, elements: !2317)
!2317 = !{!2318, !2327, !2336, !2337, !2338, !2339, !2340, !2341, !2346, !2347, !2356, !2357, !2358}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "ifa", scope: !2316, file: !2315, line: 42, baseType: !2319, size: 64, align: 32)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifaddrmsg", file: !2320, line: 7, size: 64, align: 32, elements: !2321)
!2320 = !DIFile(filename: "/usr/include/linux/if_addr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2321 = !{!2322, !2323, !2324, !2325, !2326}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_family", scope: !2319, file: !2320, line: 8, baseType: !2247, size: 8, align: 8)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_prefixlen", scope: !2319, file: !2320, line: 9, baseType: !2247, size: 8, align: 8, offset: 8)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_flags", scope: !2319, file: !2320, line: 10, baseType: !2247, size: 8, align: 8, offset: 16)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_scope", scope: !2319, file: !2320, line: 11, baseType: !2247, size: 8, align: 8, offset: 24)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_index", scope: !2319, file: !2320, line: 12, baseType: !2250, size: 32, align: 32, offset: 32)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !2316, file: !2315, line: 50, baseType: !2328, size: 128, align: 32, offset: 64)
!2328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2316, file: !2315, line: 44, size: 128, align: 32, elements: !2329)
!2329 = !{!2330, !2335}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !2328, file: !2315, line: 48, baseType: !2331, size: 64, align: 32)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2328, file: !2315, line: 45, size: 64, align: 32, elements: !2332)
!2332 = !{!2333, !2334}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !2331, file: !2315, line: 46, baseType: !287, size: 32, align: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "sin_brd", scope: !2331, file: !2315, line: 47, baseType: !287, size: 32, align: 32, offset: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !2328, file: !2315, line: 49, baseType: !292, size: 128, align: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !2316, file: !2315, line: 52, baseType: !277, size: 64, align: 64, offset: 192)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !2316, file: !2315, line: 53, baseType: !120, size: 64, align: 64, offset: 256)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2316, file: !2315, line: 55, baseType: !284, size: 32, align: 32, offset: 320)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "flagmask", scope: !2316, file: !2315, line: 56, baseType: !284, size: 32, align: 32, offset: 352)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "have_peer", scope: !2316, file: !2315, line: 61, baseType: !311, size: 8, align: 8, offset: 384)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !2316, file: !2315, line: 65, baseType: !2342, size: 128, align: 32, offset: 416)
!2342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2316, file: !2315, line: 62, size: 128, align: 32, elements: !2343)
!2343 = !{!2344, !2345}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !2342, file: !2315, line: 63, baseType: !287, size: 32, align: 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !2342, file: !2315, line: 64, baseType: !292, size: 128, align: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track", scope: !2316, file: !2315, line: 66, baseType: !311, size: 8, align: 8, offset: 544)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "track_group", scope: !2316, file: !2315, line: 67, baseType: !2348, size: 64, align: 64, offset: 576)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64, align: 64)
!2349 = !DIDerivedType(tag: DW_TAG_typedef, name: "static_track_group_t", file: !2350, line: 39, baseType: !2351)
!2350 = !DIFile(filename: "./../include/vrrp_static_track.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_static_track_group", file: !2350, line: 35, size: 192, align: 64, elements: !2352)
!2352 = !{!2353, !2354, !2355}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !2351, file: !2350, line: 36, baseType: !120, size: 64, align: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !2351, file: !2350, line: 37, baseType: !950, size: 64, align: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !2351, file: !2350, line: 38, baseType: !145, size: 64, align: 64, offset: 128)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2316, file: !2315, line: 69, baseType: !311, size: 8, align: 8, offset: 640)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rule_set", scope: !2316, file: !2315, line: 70, baseType: !311, size: 8, align: 8, offset: 648)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "garp_gna_pending", scope: !2316, file: !2315, line: 72, baseType: !311, size: 8, align: 8, offset: 656)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2310, file: !2309, line: 184, baseType: !2313, size: 64, align: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "pref_src", scope: !2310, file: !2309, line: 185, baseType: !2313, size: 64, align: 64, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !2310, file: !2309, line: 186, baseType: !299, size: 8, align: 8, offset: 192)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !2310, file: !2309, line: 187, baseType: !299, size: 8, align: 8, offset: 200)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !2310, file: !2309, line: 188, baseType: !284, size: 32, align: 32, offset: 224)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !2310, file: !2309, line: 189, baseType: !299, size: 8, align: 8, offset: 256)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !2310, file: !2309, line: 190, baseType: !299, size: 8, align: 8, offset: 264)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "metric", scope: !2310, file: !2309, line: 191, baseType: !284, size: 32, align: 32, offset: 288)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "via", scope: !2310, file: !2309, line: 192, baseType: !2313, size: 64, align: 64, offset: 320)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "oif", scope: !2310, file: !2309, line: 193, baseType: !277, size: 64, align: 64, offset: 384)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2310, file: !2309, line: 194, baseType: !284, size: 32, align: 32, offset: 448)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !2310, file: !2309, line: 195, baseType: !284, size: 32, align: 32, offset: 480)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "quickack", scope: !2310, file: !2309, line: 197, baseType: !311, size: 8, align: 8, offset: 512)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2310, file: !2309, line: 202, baseType: !284, size: 32, align: 32, offset: 544)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !2310, file: !2309, line: 203, baseType: !284, size: 32, align: 32, offset: 576)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "hoplimit", scope: !2310, file: !2309, line: 204, baseType: !299, size: 8, align: 8, offset: 608)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "advmss", scope: !2310, file: !2309, line: 205, baseType: !284, size: 32, align: 32, offset: 640)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "rtt", scope: !2310, file: !2309, line: 209, baseType: !284, size: 32, align: 32, offset: 672)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "rttvar", scope: !2310, file: !2309, line: 210, baseType: !284, size: 32, align: 32, offset: 704)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "reordering", scope: !2310, file: !2309, line: 211, baseType: !284, size: 32, align: 32, offset: 736)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !2310, file: !2309, line: 212, baseType: !284, size: 32, align: 32, offset: 768)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "cwnd", scope: !2310, file: !2309, line: 213, baseType: !284, size: 32, align: 32, offset: 800)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "ssthresh", scope: !2310, file: !2309, line: 214, baseType: !284, size: 32, align: 32, offset: 832)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "rto_min", scope: !2310, file: !2309, line: 215, baseType: !284, size: 32, align: 32, offset: 864)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "initcwnd", scope: !2310, file: !2309, line: 216, baseType: !284, size: 32, align: 32, offset: 896)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "initrwnd", scope: !2310, file: !2309, line: 217, baseType: !284, size: 32, align: 32, offset: 928)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "congctl", scope: !2310, file: !2309, line: 219, baseType: !120, size: 64, align: 64, offset: 960)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "pref", scope: !2310, file: !2309, line: 222, baseType: !299, size: 8, align: 8, offset: 1024)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2310, file: !2309, line: 227, baseType: !299, size: 8, align: 8, offset: 1032)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "realms", scope: !2310, file: !2309, line: 229, baseType: !284, size: 32, align: 32, offset: 1056)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "encap", scope: !2310, file: !2309, line: 231, baseType: !2390, size: 320, align: 64, offset: 1088)
!2390 = !DIDerivedType(tag: DW_TAG_typedef, name: "encap_t", file: !2309, line: 116, baseType: !2391)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_encap", file: !2309, line: 103, size: 320, align: 64, elements: !2392)
!2392 = !{!2393, !2394, !2395}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2391, file: !2309, line: 104, baseType: !302, size: 16, align: 16)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2391, file: !2309, line: 105, baseType: !284, size: 32, align: 32, offset: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, scope: !2391, file: !2309, line: 106, baseType: !2396, size: 256, align: 64, offset: 64)
!2396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2391, file: !2309, line: 106, size: 256, align: 64, elements: !2397)
!2397 = !{!2398, !2414, !2424, !2429}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "mpls", scope: !2396, file: !2309, line: 108, baseType: !2399, size: 128, align: 64)
!2399 = !DIDerivedType(tag: DW_TAG_typedef, name: "encap_mpls_t", file: !2309, line: 76, baseType: !2400)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_encap_mpls", file: !2309, line: 73, size: 128, align: 64, elements: !2401)
!2401 = !{!2402, !2413}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2400, file: !2309, line: 74, baseType: !2403, size: 64, align: 32)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpls_labels", file: !2309, line: 71, baseType: !2404)
!2404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2405, size: 64, align: 32, elements: !2411)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mpls_label", file: !2406, line: 21, size: 32, align: 32, elements: !2407)
!2406 = !DIFile(filename: "/usr/include/linux/mpls.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2407 = !{!2408}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2405, file: !2406, line: 22, baseType: !2409, size: 32, align: 32)
!2409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !2410, line: 30, baseType: !2250)
!2410 = !DIFile(filename: "/usr/include/linux/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2411 = !{!2412}
!2412 = !DISubrange(count: 2)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "num_labels", scope: !2400, file: !2309, line: 75, baseType: !216, size: 64, align: 64, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2396, file: !2309, line: 110, baseType: !2415, size: 256, align: 64)
!2415 = !DIDerivedType(tag: DW_TAG_typedef, name: "encap_ip_t", file: !2309, line: 86, baseType: !2416)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_encap_ip", file: !2309, line: 79, size: 256, align: 64, elements: !2417)
!2417 = !{!2418, !2419, !2420, !2421, !2422, !2423}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2416, file: !2309, line: 80, baseType: !997, size: 64, align: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2416, file: !2309, line: 81, baseType: !2313, size: 64, align: 64, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2416, file: !2309, line: 82, baseType: !2313, size: 64, align: 64, offset: 128)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !2416, file: !2309, line: 83, baseType: !299, size: 8, align: 8, offset: 192)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2416, file: !2309, line: 84, baseType: !302, size: 16, align: 16, offset: 208)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !2416, file: !2309, line: 85, baseType: !299, size: 8, align: 8, offset: 224)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "ila", scope: !2396, file: !2309, line: 112, baseType: !2425, size: 64, align: 64)
!2425 = !DIDerivedType(tag: DW_TAG_typedef, name: "encap_ila_t", file: !2309, line: 91, baseType: !2426)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_encap_ila", file: !2309, line: 89, size: 64, align: 64, elements: !2427)
!2427 = !{!2428}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "locator", scope: !2426, file: !2309, line: 90, baseType: !997, size: 64, align: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !2396, file: !2309, line: 114, baseType: !2430, size: 256, align: 64)
!2430 = !DIDerivedType(tag: DW_TAG_typedef, name: "encap_ip6_t", file: !2309, line: 101, baseType: !2431)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_encap_ip6", file: !2309, line: 94, size: 256, align: 64, elements: !2432)
!2432 = !{!2433, !2434, !2435, !2436, !2437, !2438}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2431, file: !2309, line: 95, baseType: !997, size: 64, align: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2431, file: !2309, line: 96, baseType: !2313, size: 64, align: 64, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2431, file: !2309, line: 97, baseType: !2313, size: 64, align: 64, offset: 128)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "tc", scope: !2431, file: !2309, line: 98, baseType: !299, size: 8, align: 8, offset: 192)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2431, file: !2309, line: 99, baseType: !302, size: 16, align: 16, offset: 208)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "hoplimit", scope: !2431, file: !2309, line: 100, baseType: !299, size: 8, align: 8, offset: 224)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "nhs", scope: !2310, file: !2309, line: 233, baseType: !145, size: 64, align: 64, offset: 1408)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !2310, file: !2309, line: 234, baseType: !284, size: 32, align: 32, offset: 1472)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track", scope: !2310, file: !2309, line: 235, baseType: !311, size: 8, align: 8, offset: 1504)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "track_group", scope: !2310, file: !2309, line: 236, baseType: !2348, size: 64, align: 64, offset: 1536)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2310, file: !2309, line: 237, baseType: !311, size: 8, align: 8, offset: 1600)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "configured_ifindex", scope: !2310, file: !2309, line: 238, baseType: !284, size: 32, align: 32, offset: 1632)
!2445 = !DILocation(line: 1016, column: 14, scope: !2297)
!2446 = !DILocalVariable(name: "route_found", scope: !2297, file: !144, line: 1017, type: !311)
!2447 = !DILocation(line: 1017, column: 6, scope: !2297)
!2448 = !DILocation(line: 1022, column: 15, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2297, file: !144, line: 1022, column: 2)
!2450 = !DILocation(line: 1022, column: 26, scope: !2449)
!2451 = !DILocation(line: 1022, column: 14, scope: !2449)
!2452 = !DILocation(line: 1022, column: 37, scope: !2453)
!2453 = !DILexicalBlockFile(scope: !2449, file: !144, discriminator: 1)
!2454 = !DILocation(line: 1022, column: 48, scope: !2453)
!2455 = !DILocation(line: 1022, column: 36, scope: !2453)
!2456 = !DILocation(line: 1022, column: 35, scope: !2453)
!2457 = !DILocation(line: 1022, column: 35, scope: !2458)
!2458 = !DILexicalBlockFile(scope: !2449, file: !144, discriminator: 2)
!2459 = !DILocation(line: 1022, column: 4, scope: !2460)
!2460 = !DILexicalBlockFile(scope: !2449, file: !144, discriminator: 3)
!2461 = !DILocation(line: 1022, column: 15, scope: !2460)
!2462 = !DILocation(line: 1022, column: 22, scope: !2460)
!2463 = !DILocation(line: 1022, column: 35, scope: !2460)
!2464 = !DILocation(line: 1022, column: 35, scope: !2465)
!2465 = !DILexicalBlockFile(scope: !2449, file: !144, discriminator: 4)
!2466 = !DILocation(line: 1022, column: 14, scope: !2465)
!2467 = !DILocation(line: 1022, column: 14, scope: !2468)
!2468 = !DILexicalBlockFile(scope: !2449, file: !144, discriminator: 5)
!2469 = !DILocation(line: 1022, column: 14, scope: !2470)
!2470 = !DILexicalBlockFile(scope: !2449, file: !144, discriminator: 6)
!2471 = !DILocation(line: 1022, column: 11, scope: !2470)
!2472 = !DILocation(line: 1022, column: 7, scope: !2470)
!2473 = !DILocation(line: 1022, column: 5, scope: !2474)
!2474 = !DILexicalBlockFile(scope: !2475, file: !144, discriminator: 7)
!2475 = distinct !DILexicalBlock(scope: !2449, file: !144, line: 1022, column: 2)
!2476 = !DILocation(line: 1022, column: 4, scope: !2474)
!2477 = !DILocation(line: 1022, column: 8, scope: !2474)
!2478 = !DILocation(line: 1022, column: 23, scope: !2479)
!2479 = !DILexicalBlockFile(scope: !2475, file: !144, discriminator: 8)
!2480 = !DILocation(line: 1022, column: 27, scope: !2479)
!2481 = !DILocation(line: 1022, column: 21, scope: !2479)
!2482 = !DILocation(line: 1022, column: 19, scope: !2479)
!2483 = !DILocation(line: 1022, column: 2, scope: !2484)
!2484 = !DILexicalBlockFile(scope: !2449, file: !144, discriminator: 9)
!2485 = !DILocation(line: 1023, column: 7, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !144, line: 1023, column: 7)
!2487 = distinct !DILexicalBlock(scope: !2475, file: !144, line: 1022, column: 57)
!2488 = !DILocation(line: 1023, column: 13, scope: !2486)
!2489 = !DILocation(line: 1023, column: 19, scope: !2486)
!2490 = !DILocation(line: 1023, column: 7, scope: !2487)
!2491 = !DILocation(line: 1024, column: 4, scope: !2486)
!2492 = !DILocation(line: 1026, column: 15, scope: !2487)
!2493 = !DILocation(line: 1028, column: 17, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2487, file: !144, line: 1028, column: 3)
!2495 = !DILocation(line: 1028, column: 23, scope: !2494)
!2496 = !DILocation(line: 1028, column: 16, scope: !2494)
!2497 = !DILocation(line: 1028, column: 37, scope: !2498)
!2498 = !DILexicalBlockFile(scope: !2494, file: !144, discriminator: 1)
!2499 = !DILocation(line: 1028, column: 43, scope: !2498)
!2500 = !DILocation(line: 1028, column: 36, scope: !2498)
!2501 = !DILocation(line: 1028, column: 35, scope: !2498)
!2502 = !DILocation(line: 1028, column: 35, scope: !2503)
!2503 = !DILexicalBlockFile(scope: !2494, file: !144, discriminator: 2)
!2504 = !DILocation(line: 1028, column: 5, scope: !2505)
!2505 = !DILexicalBlockFile(scope: !2494, file: !144, discriminator: 3)
!2506 = !DILocation(line: 1028, column: 11, scope: !2505)
!2507 = !DILocation(line: 1028, column: 21, scope: !2505)
!2508 = !DILocation(line: 1028, column: 35, scope: !2505)
!2509 = !DILocation(line: 1028, column: 35, scope: !2510)
!2510 = !DILexicalBlockFile(scope: !2494, file: !144, discriminator: 4)
!2511 = !DILocation(line: 1028, column: 16, scope: !2510)
!2512 = !DILocation(line: 1028, column: 16, scope: !2513)
!2513 = !DILexicalBlockFile(scope: !2494, file: !144, discriminator: 5)
!2514 = !DILocation(line: 1028, column: 16, scope: !2515)
!2515 = !DILexicalBlockFile(scope: !2494, file: !144, discriminator: 6)
!2516 = !DILocation(line: 1028, column: 13, scope: !2515)
!2517 = !DILocation(line: 1028, column: 8, scope: !2515)
!2518 = !DILocation(line: 1028, column: 6, scope: !2519)
!2519 = !DILexicalBlockFile(scope: !2520, file: !144, discriminator: 7)
!2520 = distinct !DILexicalBlock(scope: !2494, file: !144, line: 1028, column: 3)
!2521 = !DILocation(line: 1028, column: 5, scope: !2519)
!2522 = !DILocation(line: 1028, column: 10, scope: !2519)
!2523 = !DILocation(line: 1028, column: 26, scope: !2524)
!2524 = !DILexicalBlockFile(scope: !2520, file: !144, discriminator: 8)
!2525 = !DILocation(line: 1028, column: 31, scope: !2524)
!2526 = !DILocation(line: 1028, column: 24, scope: !2524)
!2527 = !DILocation(line: 1028, column: 22, scope: !2524)
!2528 = !DILocation(line: 1028, column: 3, scope: !2529)
!2529 = !DILexicalBlockFile(scope: !2494, file: !144, discriminator: 9)
!2530 = !DILocation(line: 1029, column: 9, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !144, line: 1029, column: 8)
!2532 = distinct !DILexicalBlock(scope: !2520, file: !144, line: 1028, column: 63)
!2533 = !DILocation(line: 1029, column: 16, scope: !2531)
!2534 = !DILocation(line: 1029, column: 8, scope: !2532)
!2535 = !DILocation(line: 1030, column: 5, scope: !2531)
!2536 = !DILocation(line: 1035, column: 9, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2532, file: !144, line: 1035, column: 8)
!2538 = !DILocation(line: 1035, column: 16, scope: !2537)
!2539 = !DILocation(line: 1035, column: 20, scope: !2537)
!2540 = !DILocation(line: 1035, column: 23, scope: !2541)
!2541 = !DILexicalBlockFile(scope: !2537, file: !144, discriminator: 1)
!2542 = !DILocation(line: 1035, column: 30, scope: !2541)
!2543 = !DILocation(line: 1035, column: 52, scope: !2541)
!2544 = !DILocation(line: 1035, column: 57, scope: !2541)
!2545 = !DILocation(line: 1035, column: 49, scope: !2541)
!2546 = !DILocation(line: 1035, column: 8, scope: !2541)
!2547 = !DILocation(line: 1036, column: 5, scope: !2537)
!2548 = !DILocation(line: 1038, column: 4, scope: !2532)
!2549 = !DILocation(line: 1038, column: 11, scope: !2532)
!2550 = !DILocation(line: 1038, column: 15, scope: !2532)
!2551 = !DILocation(line: 1040, column: 8, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2532, file: !144, line: 1040, column: 8)
!2553 = !DILocation(line: 1040, column: 15, scope: !2552)
!2554 = !DILocation(line: 1040, column: 8, scope: !2532)
!2555 = !DILocation(line: 1041, column: 5, scope: !2552)
!2556 = !DILocation(line: 1043, column: 16, scope: !2532)
!2557 = !DILocation(line: 1044, column: 3, scope: !2532)
!2558 = !DILocation(line: 1028, column: 51, scope: !2559)
!2559 = !DILexicalBlockFile(scope: !2520, file: !144, discriminator: 10)
!2560 = !DILocation(line: 1028, column: 56, scope: !2559)
!2561 = !DILocation(line: 1028, column: 48, scope: !2559)
!2562 = !DILocation(line: 1028, column: 3, scope: !2559)
!2563 = distinct !{!2563, !2564}
!2564 = !DILocation(line: 1028, column: 3, scope: !2487)
!2565 = !DILocation(line: 1046, column: 7, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2487, file: !144, line: 1046, column: 7)
!2567 = !DILocation(line: 1046, column: 7, scope: !2487)
!2568 = !DILocation(line: 1048, column: 18, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2566, file: !144, line: 1046, column: 20)
!2570 = !DILocation(line: 1048, column: 4, scope: !2569)
!2571 = !DILocation(line: 1049, column: 3, scope: !2569)
!2572 = !DILocation(line: 1050, column: 2, scope: !2487)
!2573 = !DILocation(line: 1022, column: 46, scope: !2574)
!2574 = !DILexicalBlockFile(scope: !2475, file: !144, discriminator: 10)
!2575 = !DILocation(line: 1022, column: 50, scope: !2574)
!2576 = !DILocation(line: 1022, column: 43, scope: !2574)
!2577 = !DILocation(line: 1022, column: 2, scope: !2574)
!2578 = distinct !{!2578, !2579}
!2579 = !DILocation(line: 1022, column: 2, scope: !2297)
!2580 = !DILocation(line: 1054, column: 15, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2297, file: !144, line: 1054, column: 2)
!2582 = !DILocation(line: 1054, column: 26, scope: !2581)
!2583 = !DILocation(line: 1054, column: 14, scope: !2581)
!2584 = !DILocation(line: 1054, column: 46, scope: !2585)
!2585 = !DILexicalBlockFile(scope: !2581, file: !144, discriminator: 1)
!2586 = !DILocation(line: 1054, column: 57, scope: !2585)
!2587 = !DILocation(line: 1054, column: 45, scope: !2585)
!2588 = !DILocation(line: 1054, column: 44, scope: !2585)
!2589 = !DILocation(line: 1054, column: 44, scope: !2590)
!2590 = !DILexicalBlockFile(scope: !2581, file: !144, discriminator: 2)
!2591 = !DILocation(line: 1054, column: 4, scope: !2592)
!2592 = !DILexicalBlockFile(scope: !2581, file: !144, discriminator: 3)
!2593 = !DILocation(line: 1054, column: 15, scope: !2592)
!2594 = !DILocation(line: 1054, column: 31, scope: !2592)
!2595 = !DILocation(line: 1054, column: 44, scope: !2592)
!2596 = !DILocation(line: 1054, column: 44, scope: !2597)
!2597 = !DILexicalBlockFile(scope: !2581, file: !144, discriminator: 4)
!2598 = !DILocation(line: 1054, column: 14, scope: !2597)
!2599 = !DILocation(line: 1054, column: 14, scope: !2600)
!2600 = !DILexicalBlockFile(scope: !2581, file: !144, discriminator: 5)
!2601 = !DILocation(line: 1054, column: 14, scope: !2602)
!2602 = !DILexicalBlockFile(scope: !2581, file: !144, discriminator: 6)
!2603 = !DILocation(line: 1054, column: 11, scope: !2602)
!2604 = !DILocation(line: 1054, column: 7, scope: !2602)
!2605 = !DILocation(line: 1054, column: 5, scope: !2606)
!2606 = !DILexicalBlockFile(scope: !2607, file: !144, discriminator: 7)
!2607 = distinct !DILexicalBlock(scope: !2581, file: !144, line: 1054, column: 2)
!2608 = !DILocation(line: 1054, column: 4, scope: !2606)
!2609 = !DILocation(line: 1054, column: 8, scope: !2606)
!2610 = !DILocation(line: 1054, column: 24, scope: !2611)
!2611 = !DILexicalBlockFile(scope: !2607, file: !144, discriminator: 8)
!2612 = !DILocation(line: 1054, column: 28, scope: !2611)
!2613 = !DILocation(line: 1054, column: 22, scope: !2611)
!2614 = !DILocation(line: 1054, column: 20, scope: !2611)
!2615 = !DILocation(line: 1054, column: 2, scope: !2616)
!2616 = !DILexicalBlockFile(scope: !2581, file: !144, discriminator: 9)
!2617 = !DILocation(line: 1055, column: 7, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !144, line: 1055, column: 7)
!2619 = distinct !DILexicalBlock(scope: !2607, file: !144, line: 1054, column: 58)
!2620 = !DILocation(line: 1055, column: 14, scope: !2618)
!2621 = !DILocation(line: 1055, column: 18, scope: !2618)
!2622 = !DILocation(line: 1055, column: 21, scope: !2623)
!2623 = !DILexicalBlockFile(scope: !2618, file: !144, discriminator: 1)
!2624 = !DILocation(line: 1055, column: 28, scope: !2623)
!2625 = !DILocation(line: 1055, column: 35, scope: !2623)
!2626 = !DILocation(line: 1055, column: 32, scope: !2623)
!2627 = !DILocation(line: 1055, column: 7, scope: !2623)
!2628 = !DILocation(line: 1057, column: 4, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2618, file: !144, line: 1055, column: 40)
!2630 = !DILocation(line: 1057, column: 11, scope: !2629)
!2631 = !DILocation(line: 1057, column: 15, scope: !2629)
!2632 = !DILocation(line: 1058, column: 3, scope: !2629)
!2633 = !DILocation(line: 1059, column: 2, scope: !2619)
!2634 = !DILocation(line: 1054, column: 47, scope: !2635)
!2635 = !DILexicalBlockFile(scope: !2607, file: !144, discriminator: 10)
!2636 = !DILocation(line: 1054, column: 51, scope: !2635)
!2637 = !DILocation(line: 1054, column: 44, scope: !2635)
!2638 = !DILocation(line: 1054, column: 2, scope: !2635)
!2639 = distinct !{!2639, !2640}
!2640 = !DILocation(line: 1054, column: 2, scope: !2297)
!2641 = !DILocation(line: 1061, column: 1, scope: !2297)
!2642 = distinct !DISubprogram(name: "cleanup_lost_interface", scope: !144, file: !144, line: 1064, type: !563, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!2643 = !DILocalVariable(name: "ifp", arg: 1, scope: !2642, file: !144, line: 1064, type: !277)
!2644 = !DILocation(line: 1064, column: 37, scope: !2642)
!2645 = !DILocalVariable(name: "vrrp", scope: !2642, file: !144, line: 1066, type: !937)
!2646 = !DILocation(line: 1066, column: 10, scope: !2642)
!2647 = !DILocalVariable(name: "tvp", scope: !2642, file: !144, line: 1067, type: !2648)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64, align: 64)
!2649 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracking_vrrp_t", file: !88, line: 136, baseType: !2650)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_tracking_vrrp", file: !88, line: 132, size: 192, align: 64, elements: !2651)
!2651 = !{!2652, !2653, !2655}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2650, file: !88, line: 133, baseType: !119, size: 32, align: 32)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp", scope: !2650, file: !88, line: 134, baseType: !2654, size: 64, align: 64, offset: 64)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64, align: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2650, file: !88, line: 135, baseType: !2656, size: 32, align: 32, offset: 128)
!2656 = !DIDerivedType(tag: DW_TAG_typedef, name: "track_t", file: !88, line: 129, baseType: !87)
!2657 = !DILocation(line: 1067, column: 19, scope: !2642)
!2658 = !DILocalVariable(name: "e", scope: !2642, file: !144, line: 1068, type: !366)
!2659 = !DILocation(line: 1068, column: 10, scope: !2642)
!2660 = !DILocation(line: 1070, column: 15, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2642, file: !144, line: 1070, column: 2)
!2662 = !DILocation(line: 1070, column: 20, scope: !2661)
!2663 = !DILocation(line: 1070, column: 14, scope: !2661)
!2664 = !DILocation(line: 1070, column: 40, scope: !2665)
!2665 = !DILexicalBlockFile(scope: !2661, file: !144, discriminator: 1)
!2666 = !DILocation(line: 1070, column: 45, scope: !2665)
!2667 = !DILocation(line: 1070, column: 39, scope: !2665)
!2668 = !DILocation(line: 1070, column: 38, scope: !2665)
!2669 = !DILocation(line: 1070, column: 38, scope: !2670)
!2670 = !DILexicalBlockFile(scope: !2661, file: !144, discriminator: 2)
!2671 = !DILocation(line: 1070, column: 4, scope: !2672)
!2672 = !DILexicalBlockFile(scope: !2661, file: !144, discriminator: 3)
!2673 = !DILocation(line: 1070, column: 9, scope: !2672)
!2674 = !DILocation(line: 1070, column: 25, scope: !2672)
!2675 = !DILocation(line: 1070, column: 38, scope: !2672)
!2676 = !DILocation(line: 1070, column: 38, scope: !2677)
!2677 = !DILexicalBlockFile(scope: !2661, file: !144, discriminator: 4)
!2678 = !DILocation(line: 1070, column: 14, scope: !2677)
!2679 = !DILocation(line: 1070, column: 14, scope: !2680)
!2680 = !DILexicalBlockFile(scope: !2661, file: !144, discriminator: 5)
!2681 = !DILocation(line: 1070, column: 14, scope: !2682)
!2682 = !DILexicalBlockFile(scope: !2661, file: !144, discriminator: 6)
!2683 = !DILocation(line: 1070, column: 11, scope: !2682)
!2684 = !DILocation(line: 1070, column: 7, scope: !2682)
!2685 = !DILocation(line: 1070, column: 5, scope: !2686)
!2686 = !DILexicalBlockFile(scope: !2687, file: !144, discriminator: 7)
!2687 = distinct !DILexicalBlock(scope: !2661, file: !144, line: 1070, column: 2)
!2688 = !DILocation(line: 1070, column: 4, scope: !2686)
!2689 = !DILocation(line: 1070, column: 8, scope: !2686)
!2690 = !DILocation(line: 1070, column: 22, scope: !2691)
!2691 = !DILexicalBlockFile(scope: !2687, file: !144, discriminator: 8)
!2692 = !DILocation(line: 1070, column: 26, scope: !2691)
!2693 = !DILocation(line: 1070, column: 20, scope: !2691)
!2694 = !DILocation(line: 1070, column: 18, scope: !2691)
!2695 = !DILocation(line: 1070, column: 2, scope: !2696)
!2696 = !DILexicalBlockFile(scope: !2661, file: !144, discriminator: 9)
!2697 = !DILocation(line: 1071, column: 10, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2687, file: !144, line: 1070, column: 56)
!2699 = !DILocation(line: 1071, column: 15, scope: !2698)
!2700 = !DILocation(line: 1071, column: 8, scope: !2698)
!2701 = !DILocation(line: 1074, column: 7, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2698, file: !144, line: 1074, column: 7)
!2703 = !DILocation(line: 1074, column: 13, scope: !2702)
!2704 = !DILocation(line: 1074, column: 20, scope: !2702)
!2705 = !DILocation(line: 1074, column: 17, scope: !2702)
!2706 = !DILocation(line: 1074, column: 24, scope: !2702)
!2707 = !DILocation(line: 1074, column: 29, scope: !2708)
!2708 = !DILexicalBlockFile(scope: !2702, file: !144, discriminator: 1)
!2709 = !DILocation(line: 1074, column: 35, scope: !2708)
!2710 = !DILocation(line: 1074, column: 41, scope: !2708)
!2711 = !DILocation(line: 1074, column: 54, scope: !2708)
!2712 = !DILocation(line: 1074, column: 51, scope: !2708)
!2713 = !DILocation(line: 1074, column: 7, scope: !2708)
!2714 = !DILocation(line: 1075, column: 4, scope: !2702)
!2715 = !DILocation(line: 1079, column: 7, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2698, file: !144, line: 1079, column: 7)
!2717 = !DILocation(line: 1079, column: 13, scope: !2716)
!2718 = !DILocation(line: 1079, column: 18, scope: !2716)
!2719 = !DILocation(line: 1079, column: 7, scope: !2698)
!2720 = !DILocation(line: 1080, column: 35, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2716, file: !144, line: 1079, column: 24)
!2722 = !DILocation(line: 1080, column: 41, scope: !2721)
!2723 = !DILocation(line: 1080, column: 4, scope: !2721)
!2724 = !DILocation(line: 1082, column: 3, scope: !2721)
!2725 = !DILocation(line: 1086, column: 7, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2698, file: !144, line: 1086, column: 7)
!2727 = !DILocation(line: 1086, column: 13, scope: !2726)
!2728 = !DILocation(line: 1086, column: 22, scope: !2726)
!2729 = !DILocation(line: 1086, column: 28, scope: !2726)
!2730 = !DILocation(line: 1086, column: 7, scope: !2698)
!2731 = !DILocation(line: 1087, column: 26, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2726, file: !144, line: 1086, column: 35)
!2733 = !DILocation(line: 1087, column: 32, scope: !2732)
!2734 = !DILocation(line: 1087, column: 41, scope: !2732)
!2735 = !DILocation(line: 1087, column: 4, scope: !2732)
!2736 = !DILocation(line: 1088, column: 23, scope: !2732)
!2737 = !DILocation(line: 1088, column: 31, scope: !2732)
!2738 = !DILocation(line: 1088, column: 37, scope: !2732)
!2739 = !DILocation(line: 1088, column: 46, scope: !2732)
!2740 = !DILocation(line: 1088, column: 4, scope: !2732)
!2741 = !DILocation(line: 1089, column: 10, scope: !2732)
!2742 = !DILocation(line: 1089, column: 16, scope: !2732)
!2743 = !DILocation(line: 1089, column: 25, scope: !2732)
!2744 = !DILocation(line: 1089, column: 4, scope: !2732)
!2745 = !DILocation(line: 1090, column: 4, scope: !2732)
!2746 = !DILocation(line: 1090, column: 10, scope: !2732)
!2747 = !DILocation(line: 1090, column: 19, scope: !2732)
!2748 = !DILocation(line: 1090, column: 25, scope: !2732)
!2749 = !DILocation(line: 1091, column: 3, scope: !2732)
!2750 = !DILocation(line: 1092, column: 7, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2698, file: !144, line: 1092, column: 7)
!2752 = !DILocation(line: 1092, column: 13, scope: !2751)
!2753 = !DILocation(line: 1092, column: 22, scope: !2751)
!2754 = !DILocation(line: 1092, column: 29, scope: !2751)
!2755 = !DILocation(line: 1092, column: 7, scope: !2698)
!2756 = !DILocation(line: 1093, column: 10, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2751, file: !144, line: 1092, column: 36)
!2758 = !DILocation(line: 1093, column: 16, scope: !2757)
!2759 = !DILocation(line: 1093, column: 25, scope: !2757)
!2760 = !DILocation(line: 1093, column: 4, scope: !2757)
!2761 = !DILocation(line: 1094, column: 4, scope: !2757)
!2762 = !DILocation(line: 1094, column: 10, scope: !2757)
!2763 = !DILocation(line: 1094, column: 19, scope: !2757)
!2764 = !DILocation(line: 1094, column: 26, scope: !2757)
!2765 = !DILocation(line: 1095, column: 3, scope: !2757)
!2766 = !DILocation(line: 1096, column: 3, scope: !2698)
!2767 = !DILocation(line: 1096, column: 9, scope: !2698)
!2768 = !DILocation(line: 1096, column: 18, scope: !2698)
!2769 = !DILocation(line: 1096, column: 26, scope: !2698)
!2770 = !DILocation(line: 1097, column: 2, scope: !2698)
!2771 = !DILocation(line: 1070, column: 45, scope: !2772)
!2772 = !DILexicalBlockFile(scope: !2687, file: !144, discriminator: 10)
!2773 = !DILocation(line: 1070, column: 49, scope: !2772)
!2774 = !DILocation(line: 1070, column: 42, scope: !2772)
!2775 = !DILocation(line: 1070, column: 2, scope: !2772)
!2776 = distinct !{!2776, !2777}
!2777 = !DILocation(line: 1070, column: 2, scope: !2642)
!2778 = !DILocation(line: 1099, column: 17, scope: !2642)
!2779 = !DILocation(line: 1099, column: 2, scope: !2642)
!2780 = !DILocation(line: 1101, column: 2, scope: !2642)
!2781 = !DILocation(line: 1101, column: 7, scope: !2642)
!2782 = !DILocation(line: 1101, column: 15, scope: !2642)
!2783 = !DILocation(line: 1102, column: 2, scope: !2642)
!2784 = !DILocation(line: 1102, column: 7, scope: !2642)
!2785 = !DILocation(line: 1102, column: 17, scope: !2642)
!2786 = !DILocation(line: 1103, column: 1, scope: !2642)
!2787 = distinct !DISubprogram(name: "__clear_bit", scope: !2788, file: !2788, line: 42, type: !2789, isLocal: true, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!2788 = !DIFile(filename: "../../lib/bitops.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2789 = !DISubroutineType(types: !2790)
!2790 = !{null, !126, !2791}
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!2792 = !DILocalVariable(name: "idx", arg: 1, scope: !2787, file: !2788, line: 42, type: !126)
!2793 = !DILocation(line: 42, column: 41, scope: !2787)
!2794 = !DILocalVariable(name: "bmap", arg: 2, scope: !2787, file: !2788, line: 42, type: !2791)
!2795 = !DILocation(line: 42, column: 61, scope: !2787)
!2796 = !DILocation(line: 44, column: 60, scope: !2787)
!2797 = !DILocation(line: 44, column: 59, scope: !2787)
!2798 = !DILocation(line: 44, column: 65, scope: !2787)
!2799 = !DILocation(line: 44, column: 55, scope: !2787)
!2800 = !DILocation(line: 44, column: 49, scope: !2787)
!2801 = !DILocation(line: 44, column: 9, scope: !2787)
!2802 = !DILocation(line: 44, column: 8, scope: !2787)
!2803 = !DILocation(line: 44, column: 14, scope: !2787)
!2804 = !DILocation(line: 44, column: 2, scope: !2787)
!2805 = !DILocation(line: 44, column: 46, scope: !2787)
!2806 = !DILocation(line: 45, column: 1, scope: !2787)
!2807 = distinct !DISubprogram(name: "recreate_vmac_thread", scope: !144, file: !144, line: 1154, type: !1546, isLocal: false, isDefinition: true, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!2808 = !DILocalVariable(name: "thread", arg: 1, scope: !2807, file: !144, line: 1154, type: !1089)
!2809 = !DILocation(line: 1154, column: 32, scope: !2807)
!2810 = !DILocalVariable(name: "vrrp", scope: !2807, file: !144, line: 1156, type: !937)
!2811 = !DILocation(line: 1156, column: 10, scope: !2807)
!2812 = !DILocalVariable(name: "tvp", scope: !2807, file: !144, line: 1157, type: !2648)
!2813 = !DILocation(line: 1157, column: 19, scope: !2807)
!2814 = !DILocalVariable(name: "e", scope: !2807, file: !144, line: 1158, type: !366)
!2815 = !DILocation(line: 1158, column: 10, scope: !2807)
!2816 = !DILocalVariable(name: "ifp", scope: !2807, file: !144, line: 1159, type: !277)
!2817 = !DILocation(line: 1159, column: 15, scope: !2807)
!2818 = !DILocation(line: 1159, column: 23, scope: !2807)
!2819 = !DILocation(line: 1159, column: 32, scope: !2807)
!2820 = !DILocation(line: 1159, column: 21, scope: !2807)
!2821 = !DILocation(line: 1161, column: 8, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2807, file: !144, line: 1161, column: 6)
!2823 = !DILocation(line: 1161, column: 13, scope: !2822)
!2824 = !DILocation(line: 1161, column: 28, scope: !2822)
!2825 = !DILocation(line: 1161, column: 5, scope: !2822)
!2826 = !DILocation(line: 1161, column: 10, scope: !2827)
!2827 = !DILexicalBlockFile(scope: !2822, file: !144, discriminator: 1)
!2828 = !DILocation(line: 1161, column: 15, scope: !2827)
!2829 = !DILocation(line: 1161, column: 31, scope: !2827)
!2830 = !DILocation(line: 1161, column: 36, scope: !2827)
!2831 = !DILocation(line: 1161, column: 5, scope: !2827)
!2832 = !DILocation(line: 1161, column: 9, scope: !2833)
!2833 = !DILexicalBlockFile(scope: !2822, file: !144, discriminator: 2)
!2834 = !DILocation(line: 1161, column: 14, scope: !2833)
!2835 = !DILocation(line: 1161, column: 30, scope: !2833)
!2836 = !DILocation(line: 1161, column: 35, scope: !2833)
!2837 = !DILocation(line: 1161, column: 8, scope: !2833)
!2838 = !DILocation(line: 1161, column: 12, scope: !2839)
!2839 = !DILexicalBlockFile(scope: !2822, file: !144, discriminator: 3)
!2840 = !DILocation(line: 1161, column: 17, scope: !2839)
!2841 = !DILocation(line: 1161, column: 6, scope: !2839)
!2842 = !DILocation(line: 1162, column: 3, scope: !2822)
!2843 = !DILocation(line: 1164, column: 15, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2807, file: !144, line: 1164, column: 2)
!2845 = !DILocation(line: 1164, column: 20, scope: !2844)
!2846 = !DILocation(line: 1164, column: 14, scope: !2844)
!2847 = !DILocation(line: 1164, column: 40, scope: !2848)
!2848 = !DILexicalBlockFile(scope: !2844, file: !144, discriminator: 1)
!2849 = !DILocation(line: 1164, column: 45, scope: !2848)
!2850 = !DILocation(line: 1164, column: 39, scope: !2848)
!2851 = !DILocation(line: 1164, column: 38, scope: !2848)
!2852 = !DILocation(line: 1164, column: 38, scope: !2853)
!2853 = !DILexicalBlockFile(scope: !2844, file: !144, discriminator: 2)
!2854 = !DILocation(line: 1164, column: 4, scope: !2855)
!2855 = !DILexicalBlockFile(scope: !2844, file: !144, discriminator: 3)
!2856 = !DILocation(line: 1164, column: 9, scope: !2855)
!2857 = !DILocation(line: 1164, column: 25, scope: !2855)
!2858 = !DILocation(line: 1164, column: 38, scope: !2855)
!2859 = !DILocation(line: 1164, column: 38, scope: !2860)
!2860 = !DILexicalBlockFile(scope: !2844, file: !144, discriminator: 4)
!2861 = !DILocation(line: 1164, column: 14, scope: !2860)
!2862 = !DILocation(line: 1164, column: 14, scope: !2863)
!2863 = !DILexicalBlockFile(scope: !2844, file: !144, discriminator: 5)
!2864 = !DILocation(line: 1164, column: 14, scope: !2865)
!2865 = !DILexicalBlockFile(scope: !2844, file: !144, discriminator: 6)
!2866 = !DILocation(line: 1164, column: 11, scope: !2865)
!2867 = !DILocation(line: 1164, column: 7, scope: !2865)
!2868 = !DILocation(line: 1164, column: 5, scope: !2869)
!2869 = !DILexicalBlockFile(scope: !2870, file: !144, discriminator: 7)
!2870 = distinct !DILexicalBlock(scope: !2844, file: !144, line: 1164, column: 2)
!2871 = !DILocation(line: 1164, column: 4, scope: !2869)
!2872 = !DILocation(line: 1164, column: 8, scope: !2869)
!2873 = !DILocation(line: 1164, column: 22, scope: !2874)
!2874 = !DILexicalBlockFile(scope: !2870, file: !144, discriminator: 8)
!2875 = !DILocation(line: 1164, column: 26, scope: !2874)
!2876 = !DILocation(line: 1164, column: 20, scope: !2874)
!2877 = !DILocation(line: 1164, column: 18, scope: !2874)
!2878 = !DILocation(line: 1164, column: 2, scope: !2879)
!2879 = !DILexicalBlockFile(scope: !2844, file: !144, discriminator: 9)
!2880 = !DILocation(line: 1165, column: 10, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2870, file: !144, line: 1164, column: 56)
!2882 = !DILocation(line: 1165, column: 15, scope: !2881)
!2883 = !DILocation(line: 1165, column: 8, scope: !2881)
!2884 = !DILocation(line: 1168, column: 7, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2881, file: !144, line: 1168, column: 7)
!2886 = !DILocation(line: 1168, column: 13, scope: !2885)
!2887 = !DILocation(line: 1168, column: 20, scope: !2885)
!2888 = !DILocation(line: 1168, column: 17, scope: !2885)
!2889 = !DILocation(line: 1168, column: 7, scope: !2881)
!2890 = !DILocation(line: 1169, column: 4, scope: !2885)
!2891 = !DILocation(line: 1171, column: 24, scope: !2881)
!2892 = !DILocation(line: 1172, column: 19, scope: !2881)
!2893 = !DILocation(line: 1172, column: 3, scope: !2881)
!2894 = !DILocation(line: 1173, column: 24, scope: !2881)
!2895 = !DILocation(line: 1174, column: 3, scope: !2881)
!2896 = !DILocation(line: 1164, column: 45, scope: !2897)
!2897 = !DILexicalBlockFile(scope: !2870, file: !144, discriminator: 10)
!2898 = !DILocation(line: 1164, column: 49, scope: !2897)
!2899 = !DILocation(line: 1164, column: 42, scope: !2897)
!2900 = !DILocation(line: 1164, column: 2, scope: !2897)
!2901 = distinct !{!2901, !2902}
!2902 = !DILocation(line: 1164, column: 2, scope: !2807)
!2903 = !DILocation(line: 1177, column: 2, scope: !2807)
!2904 = !DILocation(line: 1178, column: 1, scope: !2807)
!2905 = distinct !DISubprogram(name: "setup_interface", scope: !144, file: !144, line: 1106, type: !2906, isLocal: true, isDefinition: true, scopeLine: 1107, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!311, !937}
!2908 = !DILocalVariable(name: "vrrp", arg: 1, scope: !2905, file: !144, line: 1106, type: !937)
!2909 = !DILocation(line: 1106, column: 25, scope: !2905)
!2910 = !DILocalVariable(name: "ifp", scope: !2905, file: !144, line: 1108, type: !277)
!2911 = !DILocation(line: 1108, column: 15, scope: !2905)
!2912 = !DILocation(line: 1113, column: 33, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2905, file: !144, line: 1113, column: 6)
!2914 = !DILocation(line: 1113, column: 39, scope: !2913)
!2915 = !DILocation(line: 1113, column: 6, scope: !2913)
!2916 = !DILocation(line: 1113, column: 51, scope: !2913)
!2917 = !DILocation(line: 1114, column: 7, scope: !2913)
!2918 = !DILocation(line: 1114, column: 13, scope: !2913)
!2919 = !DILocation(line: 1114, column: 18, scope: !2913)
!2920 = !DILocation(line: 1113, column: 6, scope: !2921)
!2921 = !DILexicalBlockFile(scope: !2905, file: !144, discriminator: 1)
!2922 = !DILocation(line: 1115, column: 30, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !144, line: 1115, column: 7)
!2924 = distinct !DILexicalBlock(scope: !2913, file: !144, line: 1114, column: 27)
!2925 = !DILocation(line: 1115, column: 8, scope: !2923)
!2926 = !DILocation(line: 1115, column: 7, scope: !2924)
!2927 = !DILocation(line: 1116, column: 4, scope: !2923)
!2928 = !DILocation(line: 1117, column: 2, scope: !2924)
!2929 = !DILocation(line: 1121, column: 42, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2905, file: !144, line: 1121, column: 6)
!2931 = !DILocation(line: 1121, column: 48, scope: !2930)
!2932 = !DILocation(line: 1121, column: 6, scope: !2930)
!2933 = !DILocation(line: 1121, column: 6, scope: !2905)
!2934 = !DILocation(line: 1122, column: 9, scope: !2930)
!2935 = !DILocation(line: 1122, column: 15, scope: !2930)
!2936 = !DILocation(line: 1122, column: 20, scope: !2930)
!2937 = !DILocation(line: 1122, column: 7, scope: !2930)
!2938 = !DILocation(line: 1122, column: 3, scope: !2930)
!2939 = !DILocation(line: 1125, column: 9, scope: !2930)
!2940 = !DILocation(line: 1125, column: 15, scope: !2930)
!2941 = !DILocation(line: 1125, column: 7, scope: !2930)
!2942 = !DILocation(line: 1128, column: 6, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2905, file: !144, line: 1128, column: 6)
!2944 = !DILocation(line: 1128, column: 12, scope: !2943)
!2945 = !DILocation(line: 1128, column: 21, scope: !2943)
!2946 = !DILocation(line: 1128, column: 27, scope: !2943)
!2947 = !DILocation(line: 1128, column: 6, scope: !2905)
!2948 = !DILocation(line: 1129, column: 48, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2943, file: !144, line: 1128, column: 34)
!2950 = !DILocation(line: 1129, column: 54, scope: !2949)
!2951 = !DILocation(line: 1129, column: 63, scope: !2949)
!2952 = !DILocation(line: 1129, column: 71, scope: !2949)
!2953 = !DILocation(line: 1129, column: 77, scope: !2949)
!2954 = !DILocation(line: 1129, column: 86, scope: !2949)
!2955 = !DILocation(line: 1130, column: 8, scope: !2949)
!2956 = !DILocation(line: 1130, column: 13, scope: !2949)
!2957 = !DILocation(line: 1130, column: 19, scope: !2949)
!2958 = !DILocation(line: 1130, column: 28, scope: !2949)
!2959 = !DILocation(line: 1130, column: 37, scope: !2949)
!2960 = !DILocation(line: 1130, column: 43, scope: !2949)
!2961 = !DILocation(line: 1130, column: 52, scope: !2949)
!2962 = !DILocation(line: 1129, column: 26, scope: !2949)
!2963 = !DILocation(line: 1129, column: 3, scope: !2949)
!2964 = !DILocation(line: 1129, column: 9, scope: !2949)
!2965 = !DILocation(line: 1129, column: 18, scope: !2949)
!2966 = !DILocation(line: 1129, column: 24, scope: !2949)
!2967 = !DILocation(line: 1131, column: 7, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2949, file: !144, line: 1131, column: 7)
!2969 = !DILocation(line: 1131, column: 13, scope: !2968)
!2970 = !DILocation(line: 1131, column: 22, scope: !2968)
!2971 = !DILocation(line: 1131, column: 28, scope: !2968)
!2972 = !DILocation(line: 1131, column: 7, scope: !2949)
!2973 = !DILocation(line: 1132, column: 4, scope: !2968)
!2974 = !DILocation(line: 1132, column: 10, scope: !2968)
!2975 = !DILocation(line: 1132, column: 19, scope: !2968)
!2976 = !DILocation(line: 1132, column: 26, scope: !2968)
!2977 = !DILocation(line: 1134, column: 50, scope: !2968)
!2978 = !DILocation(line: 1134, column: 56, scope: !2968)
!2979 = !DILocation(line: 1134, column: 65, scope: !2968)
!2980 = !DILocation(line: 1134, column: 73, scope: !2968)
!2981 = !DILocation(line: 1134, column: 79, scope: !2968)
!2982 = !DILocation(line: 1134, column: 88, scope: !2968)
!2983 = !DILocation(line: 1135, column: 8, scope: !2968)
!2984 = !DILocation(line: 1135, column: 13, scope: !2968)
!2985 = !DILocation(line: 1135, column: 19, scope: !2968)
!2986 = !DILocation(line: 1135, column: 28, scope: !2968)
!2987 = !DILocation(line: 1134, column: 28, scope: !2968)
!2988 = !DILocation(line: 1134, column: 4, scope: !2968)
!2989 = !DILocation(line: 1134, column: 10, scope: !2968)
!2990 = !DILocation(line: 1134, column: 19, scope: !2968)
!2991 = !DILocation(line: 1134, column: 26, scope: !2968)
!2992 = !DILocation(line: 1137, column: 28, scope: !2949)
!2993 = !DILocation(line: 1137, column: 34, scope: !2949)
!2994 = !DILocation(line: 1137, column: 39, scope: !2949)
!2995 = !DILocation(line: 1137, column: 3, scope: !2949)
!2996 = !DILocation(line: 1137, column: 9, scope: !2949)
!2997 = !DILocation(line: 1137, column: 18, scope: !2949)
!2998 = !DILocation(line: 1137, column: 26, scope: !2949)
!2999 = !DILocation(line: 1139, column: 24, scope: !2949)
!3000 = !DILocation(line: 1139, column: 3, scope: !2949)
!3001 = !DILocation(line: 1141, column: 7, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2949, file: !144, line: 1141, column: 7)
!3003 = !DILocation(line: 1141, column: 7, scope: !2949)
!3004 = !DILocation(line: 1142, column: 18, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !3002, file: !144, line: 1141, column: 25)
!3006 = !DILocation(line: 1142, column: 24, scope: !3005)
!3007 = !DILocation(line: 1142, column: 4, scope: !3005)
!3008 = !DILocation(line: 1142, column: 10, scope: !3005)
!3009 = !DILocation(line: 1142, column: 16, scope: !3005)
!3010 = !DILocation(line: 1143, column: 29, scope: !3005)
!3011 = !DILocation(line: 1143, column: 4, scope: !3005)
!3012 = !DILocation(line: 1144, column: 25, scope: !3005)
!3013 = !DILocation(line: 1144, column: 4, scope: !3005)
!3014 = !DILocation(line: 1145, column: 3, scope: !3005)
!3015 = !DILocation(line: 1146, column: 2, scope: !2949)
!3016 = !DILocation(line: 1148, column: 24, scope: !2943)
!3017 = !DILocation(line: 1148, column: 3, scope: !2943)
!3018 = !DILocation(line: 1150, column: 2, scope: !2905)
!3019 = !DILocation(line: 1151, column: 1, scope: !2905)
!3020 = distinct !DISubprogram(name: "update_added_interface", scope: !144, file: !144, line: 1181, type: !563, isLocal: false, isDefinition: true, scopeLine: 1182, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!3021 = !DILocalVariable(name: "ifp", arg: 1, scope: !3020, file: !144, line: 1181, type: !277)
!3022 = !DILocation(line: 1181, column: 37, scope: !3020)
!3023 = !DILocalVariable(name: "vrrp", scope: !3020, file: !144, line: 1183, type: !937)
!3024 = !DILocation(line: 1183, column: 10, scope: !3020)
!3025 = !DILocalVariable(name: "tvp", scope: !3020, file: !144, line: 1184, type: !2648)
!3026 = !DILocation(line: 1184, column: 19, scope: !3020)
!3027 = !DILocalVariable(name: "e", scope: !3020, file: !144, line: 1185, type: !366)
!3028 = !DILocation(line: 1185, column: 10, scope: !3020)
!3029 = !DILocation(line: 1187, column: 8, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3020, file: !144, line: 1187, column: 6)
!3031 = !DILocation(line: 1187, column: 13, scope: !3030)
!3032 = !DILocation(line: 1187, column: 28, scope: !3030)
!3033 = !DILocation(line: 1187, column: 5, scope: !3030)
!3034 = !DILocation(line: 1187, column: 10, scope: !3035)
!3035 = !DILexicalBlockFile(scope: !3030, file: !144, discriminator: 1)
!3036 = !DILocation(line: 1187, column: 15, scope: !3035)
!3037 = !DILocation(line: 1187, column: 31, scope: !3035)
!3038 = !DILocation(line: 1187, column: 36, scope: !3035)
!3039 = !DILocation(line: 1187, column: 5, scope: !3035)
!3040 = !DILocation(line: 1187, column: 9, scope: !3041)
!3041 = !DILexicalBlockFile(scope: !3030, file: !144, discriminator: 2)
!3042 = !DILocation(line: 1187, column: 14, scope: !3041)
!3043 = !DILocation(line: 1187, column: 30, scope: !3041)
!3044 = !DILocation(line: 1187, column: 35, scope: !3041)
!3045 = !DILocation(line: 1187, column: 6, scope: !3041)
!3046 = !DILocation(line: 1188, column: 3, scope: !3030)
!3047 = !DILocation(line: 1190, column: 15, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3020, file: !144, line: 1190, column: 2)
!3049 = !DILocation(line: 1190, column: 20, scope: !3048)
!3050 = !DILocation(line: 1190, column: 14, scope: !3048)
!3051 = !DILocation(line: 1190, column: 40, scope: !3052)
!3052 = !DILexicalBlockFile(scope: !3048, file: !144, discriminator: 1)
!3053 = !DILocation(line: 1190, column: 45, scope: !3052)
!3054 = !DILocation(line: 1190, column: 39, scope: !3052)
!3055 = !DILocation(line: 1190, column: 38, scope: !3052)
!3056 = !DILocation(line: 1190, column: 38, scope: !3057)
!3057 = !DILexicalBlockFile(scope: !3048, file: !144, discriminator: 2)
!3058 = !DILocation(line: 1190, column: 4, scope: !3059)
!3059 = !DILexicalBlockFile(scope: !3048, file: !144, discriminator: 3)
!3060 = !DILocation(line: 1190, column: 9, scope: !3059)
!3061 = !DILocation(line: 1190, column: 25, scope: !3059)
!3062 = !DILocation(line: 1190, column: 38, scope: !3059)
!3063 = !DILocation(line: 1190, column: 38, scope: !3064)
!3064 = !DILexicalBlockFile(scope: !3048, file: !144, discriminator: 4)
!3065 = !DILocation(line: 1190, column: 14, scope: !3064)
!3066 = !DILocation(line: 1190, column: 14, scope: !3067)
!3067 = !DILexicalBlockFile(scope: !3048, file: !144, discriminator: 5)
!3068 = !DILocation(line: 1190, column: 14, scope: !3069)
!3069 = !DILexicalBlockFile(scope: !3048, file: !144, discriminator: 6)
!3070 = !DILocation(line: 1190, column: 11, scope: !3069)
!3071 = !DILocation(line: 1190, column: 7, scope: !3069)
!3072 = !DILocation(line: 1190, column: 5, scope: !3073)
!3073 = !DILexicalBlockFile(scope: !3074, file: !144, discriminator: 7)
!3074 = distinct !DILexicalBlock(scope: !3048, file: !144, line: 1190, column: 2)
!3075 = !DILocation(line: 1190, column: 4, scope: !3073)
!3076 = !DILocation(line: 1190, column: 8, scope: !3073)
!3077 = !DILocation(line: 1190, column: 22, scope: !3078)
!3078 = !DILexicalBlockFile(scope: !3074, file: !144, discriminator: 8)
!3079 = !DILocation(line: 1190, column: 26, scope: !3078)
!3080 = !DILocation(line: 1190, column: 20, scope: !3078)
!3081 = !DILocation(line: 1190, column: 18, scope: !3078)
!3082 = !DILocation(line: 1190, column: 2, scope: !3083)
!3083 = !DILexicalBlockFile(scope: !3048, file: !144, discriminator: 9)
!3084 = !DILocation(line: 1191, column: 10, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3074, file: !144, line: 1190, column: 56)
!3086 = !DILocation(line: 1191, column: 15, scope: !3085)
!3087 = !DILocation(line: 1191, column: 8, scope: !3085)
!3088 = !DILocation(line: 1194, column: 7, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3085, file: !144, line: 1194, column: 7)
!3090 = !DILocation(line: 1194, column: 13, scope: !3089)
!3091 = !DILocation(line: 1194, column: 20, scope: !3089)
!3092 = !DILocation(line: 1194, column: 17, scope: !3089)
!3093 = !DILocation(line: 1194, column: 24, scope: !3089)
!3094 = !DILocation(line: 1194, column: 29, scope: !3095)
!3095 = !DILexicalBlockFile(scope: !3089, file: !144, discriminator: 1)
!3096 = !DILocation(line: 1194, column: 35, scope: !3095)
!3097 = !DILocation(line: 1194, column: 41, scope: !3095)
!3098 = !DILocation(line: 1194, column: 54, scope: !3095)
!3099 = !DILocation(line: 1194, column: 51, scope: !3095)
!3100 = !DILocation(line: 1194, column: 7, scope: !3095)
!3101 = !DILocation(line: 1195, column: 4, scope: !3089)
!3102 = !DILocation(line: 1197, column: 34, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3085, file: !144, line: 1197, column: 7)
!3104 = !DILocation(line: 1197, column: 40, scope: !3103)
!3105 = !DILocation(line: 1197, column: 7, scope: !3103)
!3106 = !DILocation(line: 1197, column: 52, scope: !3103)
!3107 = !DILocation(line: 1197, column: 55, scope: !3108)
!3108 = !DILexicalBlockFile(scope: !3103, file: !144, discriminator: 1)
!3109 = !DILocation(line: 1197, column: 60, scope: !3108)
!3110 = !DILocation(line: 1197, column: 7, scope: !3108)
!3111 = !DILocation(line: 1198, column: 107, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3103, file: !144, line: 1197, column: 66)
!3113 = !DILocation(line: 1198, column: 113, scope: !3112)
!3114 = !DILocation(line: 1198, column: 120, scope: !3112)
!3115 = !DILocation(line: 1198, column: 126, scope: !3112)
!3116 = !DILocation(line: 1198, column: 131, scope: !3112)
!3117 = !DILocation(line: 1198, column: 139, scope: !3112)
!3118 = !DILocation(line: 1198, column: 144, scope: !3112)
!3119 = !DILocation(line: 1198, column: 152, scope: !3112)
!3120 = !DILocation(line: 1198, column: 157, scope: !3112)
!3121 = !DILocation(line: 1198, column: 167, scope: !3112)
!3122 = !DILocation(line: 1198, column: 4, scope: !3112)
!3123 = !DILocation(line: 1199, column: 4, scope: !3112)
!3124 = !DILocation(line: 1202, column: 19, scope: !3085)
!3125 = !DILocation(line: 1202, column: 3, scope: !3085)
!3126 = !DILocation(line: 1203, column: 2, scope: !3085)
!3127 = !DILocation(line: 1190, column: 45, scope: !3128)
!3128 = !DILexicalBlockFile(scope: !3074, file: !144, discriminator: 10)
!3129 = !DILocation(line: 1190, column: 49, scope: !3128)
!3130 = !DILocation(line: 1190, column: 42, scope: !3128)
!3131 = !DILocation(line: 1190, column: 2, scope: !3128)
!3132 = distinct !{!3132, !3133}
!3133 = !DILocation(line: 1190, column: 2, scope: !3020)
!3134 = !DILocation(line: 1204, column: 1, scope: !3020)
!3135 = distinct !DISubprogram(name: "__test_bit", scope: !2788, file: !2788, line: 47, type: !3136, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!311, !126, !3138}
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64, align: 64)
!3139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!3140 = !DILocalVariable(name: "idx", arg: 1, scope: !3135, file: !2788, line: 47, type: !126)
!3141 = !DILocation(line: 47, column: 39, scope: !3135)
!3142 = !DILocalVariable(name: "bmap", arg: 2, scope: !3135, file: !2788, line: 47, type: !3138)
!3143 = !DILocation(line: 47, column: 65, scope: !3135)
!3144 = !DILocation(line: 49, column: 19, scope: !3135)
!3145 = !DILocation(line: 49, column: 18, scope: !3135)
!3146 = !DILocation(line: 49, column: 24, scope: !3135)
!3147 = !DILocation(line: 49, column: 12, scope: !3135)
!3148 = !DILocation(line: 49, column: 68, scope: !3135)
!3149 = !DILocation(line: 49, column: 67, scope: !3135)
!3150 = !DILocation(line: 49, column: 73, scope: !3135)
!3151 = !DILocation(line: 49, column: 63, scope: !3135)
!3152 = !DILocation(line: 49, column: 56, scope: !3135)
!3153 = !DILocation(line: 49, column: 10, scope: !3135)
!3154 = !DILocation(line: 49, column: 9, scope: !3135)
!3155 = !DILocation(line: 49, column: 2, scope: !3135)
!3156 = distinct !DISubprogram(name: "if_mii_status", scope: !144, file: !144, line: 234, type: !3157, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!119, !3159}
!3159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!3160 = !DILocalVariable(name: "fd", arg: 1, scope: !3156, file: !144, line: 234, type: !3159)
!3161 = !DILocation(line: 234, column: 25, scope: !3156)
!3162 = !DILocalVariable(name: "data", scope: !3156, file: !144, line: 236, type: !128)
!3163 = !DILocation(line: 236, column: 25, scope: !3156)
!3164 = !DILocalVariable(name: "phy_id", scope: !3156, file: !144, line: 237, type: !302)
!3165 = !DILocation(line: 237, column: 11, scope: !3156)
!3166 = !DILocation(line: 237, column: 20, scope: !3156)
!3167 = !DILocation(line: 237, column: 26, scope: !3156)
!3168 = !DILocalVariable(name: "bmsr", scope: !3156, file: !144, line: 238, type: !302)
!3169 = !DILocation(line: 238, column: 11, scope: !3156)
!3170 = !DILocalVariable(name: "new_bmsr", scope: !3156, file: !144, line: 238, type: !302)
!3171 = !DILocation(line: 238, column: 17, scope: !3156)
!3172 = !DILocation(line: 240, column: 18, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3156, file: !144, line: 240, column: 6)
!3174 = !DILocation(line: 240, column: 22, scope: !3173)
!3175 = !DILocation(line: 240, column: 6, scope: !3173)
!3176 = !DILocation(line: 240, column: 39, scope: !3173)
!3177 = !DILocation(line: 240, column: 49, scope: !3173)
!3178 = !DILocation(line: 241, column: 26, scope: !3173)
!3179 = !DILocation(line: 241, column: 30, scope: !3173)
!3180 = !DILocation(line: 241, column: 14, scope: !3173)
!3181 = !DILocation(line: 241, column: 12, scope: !3173)
!3182 = !DILocation(line: 241, column: 6, scope: !3173)
!3183 = !DILocation(line: 241, column: 48, scope: !3173)
!3184 = !DILocation(line: 240, column: 6, scope: !3185)
!3185 = !DILexicalBlockFile(scope: !3156, file: !144, discriminator: 1)
!3186 = !DILocation(line: 242, column: 3, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3173, file: !144, line: 241, column: 54)
!3188 = !DILocation(line: 243, column: 3, scope: !3187)
!3189 = !DILocation(line: 253, column: 25, scope: !3156)
!3190 = !DILocation(line: 253, column: 29, scope: !3156)
!3191 = !DILocation(line: 253, column: 13, scope: !3156)
!3192 = !DILocation(line: 253, column: 11, scope: !3156)
!3193 = !DILocation(line: 257, column: 6, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3156, file: !144, line: 257, column: 6)
!3195 = !DILocation(line: 257, column: 11, scope: !3194)
!3196 = !DILocation(line: 257, column: 6, scope: !3156)
!3197 = !DILocation(line: 258, column: 3, scope: !3194)
!3198 = !DILocation(line: 259, column: 11, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3194, file: !144, line: 259, column: 11)
!3200 = !DILocation(line: 259, column: 20, scope: !3199)
!3201 = !DILocation(line: 259, column: 11, scope: !3194)
!3202 = !DILocation(line: 260, column: 3, scope: !3199)
!3203 = !DILocation(line: 262, column: 3, scope: !3199)
!3204 = !DILocation(line: 263, column: 1, scope: !3156)
!3205 = distinct !DISubprogram(name: "if_mii_read", scope: !144, file: !144, line: 207, type: !3206, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!302, !119, !302, !302}
!3208 = !DILocalVariable(name: "fd", arg: 1, scope: !3205, file: !144, line: 207, type: !119)
!3209 = !DILocation(line: 207, column: 17, scope: !3205)
!3210 = !DILocalVariable(name: "phy_id", arg: 2, scope: !3205, file: !144, line: 207, type: !302)
!3211 = !DILocation(line: 207, column: 30, scope: !3205)
!3212 = !DILocalVariable(name: "reg_num", arg: 3, scope: !3205, file: !144, line: 207, type: !302)
!3213 = !DILocation(line: 207, column: 47, scope: !3205)
!3214 = !DILocalVariable(name: "data", scope: !3205, file: !144, line: 209, type: !128)
!3215 = !DILocation(line: 209, column: 25, scope: !3205)
!3216 = !DILocation(line: 211, column: 17, scope: !3205)
!3217 = !DILocation(line: 211, column: 2, scope: !3205)
!3218 = !DILocation(line: 211, column: 8, scope: !3205)
!3219 = !DILocation(line: 211, column: 15, scope: !3205)
!3220 = !DILocation(line: 212, column: 18, scope: !3205)
!3221 = !DILocation(line: 212, column: 2, scope: !3205)
!3222 = !DILocation(line: 212, column: 8, scope: !3205)
!3223 = !DILocation(line: 212, column: 16, scope: !3205)
!3224 = !DILocation(line: 214, column: 12, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3205, file: !144, line: 214, column: 6)
!3226 = !DILocation(line: 214, column: 6, scope: !3225)
!3227 = !DILocation(line: 214, column: 34, scope: !3225)
!3228 = !DILocation(line: 214, column: 6, scope: !3205)
!3229 = !DILocation(line: 215, column: 80, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3225, file: !144, line: 214, column: 39)
!3231 = !DILocation(line: 215, column: 79, scope: !3230)
!3232 = !DILocation(line: 215, column: 69, scope: !3233)
!3233 = !DILexicalBlockFile(scope: !3230, file: !144, discriminator: 1)
!3234 = !DILocation(line: 215, column: 3, scope: !3235)
!3235 = !DILexicalBlockFile(scope: !3230, file: !144, discriminator: 2)
!3236 = !DILocation(line: 216, column: 3, scope: !3230)
!3237 = !DILocation(line: 218, column: 9, scope: !3205)
!3238 = !DILocation(line: 218, column: 15, scope: !3205)
!3239 = !DILocation(line: 218, column: 2, scope: !3205)
!3240 = !DILocation(line: 219, column: 1, scope: !3205)
!3241 = distinct !DISubprogram(name: "if_ethtool_status", scope: !144, file: !144, line: 306, type: !3157, isLocal: true, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!3242 = !DILocalVariable(name: "fd", arg: 1, scope: !3241, file: !144, line: 306, type: !3159)
!3243 = !DILocation(line: 306, column: 29, scope: !3241)
!3244 = !DILocalVariable(name: "edata", scope: !3241, file: !144, line: 308, type: !3245)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ethtool_value", file: !3246, line: 212, size: 64, align: 32, elements: !3247)
!3246 = !DIFile(filename: "/usr/include/linux/ethtool.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!3247 = !{!3248, !3249}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !3245, file: !3246, line: 213, baseType: !2250, size: 32, align: 32)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3245, file: !3246, line: 214, baseType: !2250, size: 32, align: 32, offset: 32)
!3250 = !DILocation(line: 308, column: 23, scope: !3241)
!3251 = !DILocation(line: 310, column: 8, scope: !3241)
!3252 = !DILocation(line: 310, column: 12, scope: !3241)
!3253 = !DILocation(line: 311, column: 16, scope: !3241)
!3254 = !DILocation(line: 311, column: 14, scope: !3241)
!3255 = !DILocation(line: 312, column: 13, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3241, file: !144, line: 312, column: 6)
!3257 = !DILocation(line: 312, column: 7, scope: !3256)
!3258 = !DILocation(line: 312, column: 6, scope: !3241)
!3259 = !DILocation(line: 313, column: 17, scope: !3256)
!3260 = !DILocation(line: 313, column: 10, scope: !3256)
!3261 = !DILocation(line: 313, column: 3, scope: !3256)
!3262 = !DILocation(line: 314, column: 2, scope: !3241)
!3263 = !DILocation(line: 315, column: 1, scope: !3241)
!3264 = distinct !DISubprogram(name: "free_if", scope: !144, file: !144, line: 367, type: !161, isLocal: true, isDefinition: true, scopeLine: 368, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!3265 = !DILocalVariable(name: "data", arg: 1, scope: !3264, file: !144, line: 367, type: !118)
!3266 = !DILocation(line: 367, column: 15, scope: !3264)
!3267 = !DILocalVariable(name: "ifp", scope: !3264, file: !144, line: 369, type: !277)
!3268 = !DILocation(line: 369, column: 15, scope: !3264)
!3269 = !DILocation(line: 369, column: 21, scope: !3264)
!3270 = !DILocation(line: 371, column: 13, scope: !3264)
!3271 = !DILocation(line: 371, column: 18, scope: !3264)
!3272 = !DILocation(line: 371, column: 2, scope: !3264)
!3273 = !DILocation(line: 372, column: 8, scope: !3264)
!3274 = !DILocation(line: 372, column: 3, scope: !3264)
!3275 = !DILocation(line: 372, column: 22, scope: !3264)
!3276 = !DILocation(line: 373, column: 1, scope: !3264)
!3277 = distinct !DISubprogram(name: "dump_if", scope: !144, file: !144, line: 458, type: !165, isLocal: true, isDefinition: true, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !359)
!3278 = !DILocalVariable(name: "fp", arg: 1, scope: !3277, file: !144, line: 458, type: !167)
!3279 = !DILocation(line: 458, column: 15, scope: !3277)
!3280 = !DILocalVariable(name: "data", arg: 2, scope: !3277, file: !144, line: 458, type: !118)
!3281 = !DILocation(line: 458, column: 25, scope: !3277)
!3282 = !DILocalVariable(name: "ifp", scope: !3277, file: !144, line: 460, type: !277)
!3283 = !DILocation(line: 460, column: 15, scope: !3277)
!3284 = !DILocation(line: 460, column: 21, scope: !3277)
!3285 = !DILocalVariable(name: "addr_str", scope: !3277, file: !144, line: 461, type: !3286)
!3286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 368, align: 8, elements: !3287)
!3287 = !{!3288}
!3288 = !DISubrange(count: 46)
!3289 = !DILocation(line: 461, column: 7, scope: !3277)
!3290 = !DILocalVariable(name: "mac_buf", scope: !3277, file: !144, line: 462, type: !120)
!3291 = !DILocation(line: 462, column: 8, scope: !3277)
!3292 = !DILocalVariable(name: "mac_buf_len", scope: !3277, file: !144, line: 463, type: !216)
!3293 = !DILocation(line: 463, column: 9, scope: !3277)
!3294 = !DILocalVariable(name: "p", scope: !3277, file: !144, line: 464, type: !120)
!3295 = !DILocation(line: 464, column: 8, scope: !3277)
!3296 = !DILocalVariable(name: "i", scope: !3277, file: !144, line: 465, type: !216)
!3297 = !DILocation(line: 465, column: 9, scope: !3277)
!3298 = !DILocation(line: 467, column: 13, scope: !3277)
!3299 = !DILocation(line: 467, column: 31, scope: !3277)
!3300 = !DILocation(line: 467, column: 36, scope: !3277)
!3301 = !DILocation(line: 467, column: 2, scope: !3277)
!3302 = !DILocation(line: 468, column: 13, scope: !3277)
!3303 = !DILocation(line: 468, column: 34, scope: !3277)
!3304 = !DILocation(line: 468, column: 39, scope: !3277)
!3305 = !DILocation(line: 468, column: 2, scope: !3277)
!3306 = !DILocation(line: 469, column: 13, scope: !3277)
!3307 = !DILocation(line: 470, column: 4, scope: !3277)
!3308 = !DILocation(line: 470, column: 9, scope: !3277)
!3309 = !DILocation(line: 470, column: 18, scope: !3277)
!3310 = !DILocation(line: 470, column: 38, scope: !3311)
!3311 = !DILexicalBlockFile(scope: !3277, file: !144, discriminator: 1)
!3312 = !DILocation(line: 470, column: 43, scope: !3311)
!3313 = !DILocation(line: 470, column: 52, scope: !3311)
!3314 = !DILocation(line: 470, column: 27, scope: !3311)
!3315 = !DILocation(line: 470, column: 4, scope: !3311)
!3316 = !DILocation(line: 470, column: 4, scope: !3317)
!3317 = !DILexicalBlockFile(scope: !3277, file: !144, discriminator: 2)
!3318 = !DILocation(line: 470, column: 4, scope: !3319)
!3319 = !DILexicalBlockFile(scope: !3277, file: !144, discriminator: 3)
!3320 = !DILocation(line: 469, column: 2, scope: !3311)
!3321 = !DILocation(line: 471, column: 22, scope: !3277)
!3322 = !DILocation(line: 471, column: 27, scope: !3277)
!3323 = !DILocation(line: 471, column: 21, scope: !3277)
!3324 = !DILocation(line: 471, column: 38, scope: !3277)
!3325 = !DILocation(line: 471, column: 2, scope: !3277)
!3326 = !DILocation(line: 472, column: 13, scope: !3277)
!3327 = !DILocation(line: 472, column: 41, scope: !3277)
!3328 = !DILocation(line: 472, column: 46, scope: !3277)
!3329 = !DILocation(line: 472, column: 55, scope: !3277)
!3330 = !DILocation(line: 472, column: 63, scope: !3277)
!3331 = !DILocation(line: 472, column: 70, scope: !3311)
!3332 = !DILocation(line: 472, column: 41, scope: !3311)
!3333 = !DILocation(line: 472, column: 41, scope: !3317)
!3334 = !DILocation(line: 472, column: 41, scope: !3319)
!3335 = !DILocation(line: 472, column: 2, scope: !3319)
!3336 = !DILocation(line: 474, column: 6, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3277, file: !144, line: 474, column: 6)
!3338 = !DILocation(line: 474, column: 11, scope: !3337)
!3339 = !DILocation(line: 474, column: 6, scope: !3277)
!3340 = !DILocation(line: 475, column: 21, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3337, file: !144, line: 474, column: 24)
!3342 = !DILocation(line: 475, column: 26, scope: !3341)
!3343 = !DILocation(line: 475, column: 19, scope: !3341)
!3344 = !DILocation(line: 475, column: 15, scope: !3341)
!3345 = !DILocation(line: 476, column: 21, scope: !3341)
!3346 = !DILocation(line: 476, column: 14, scope: !3341)
!3347 = !DILocation(line: 476, column: 11, scope: !3341)
!3348 = !DILocation(line: 478, column: 10, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3341, file: !144, line: 478, column: 3)
!3350 = !DILocation(line: 478, column: 19, scope: !3349)
!3351 = !DILocation(line: 478, column: 17, scope: !3349)
!3352 = !DILocation(line: 478, column: 8, scope: !3349)
!3353 = !DILocation(line: 478, column: 28, scope: !3354)
!3354 = !DILexicalBlockFile(scope: !3355, file: !144, discriminator: 1)
!3355 = distinct !DILexicalBlock(scope: !3349, file: !144, line: 478, column: 3)
!3356 = !DILocation(line: 478, column: 32, scope: !3354)
!3357 = !DILocation(line: 478, column: 37, scope: !3354)
!3358 = !DILocation(line: 478, column: 30, scope: !3354)
!3359 = !DILocation(line: 478, column: 3, scope: !3354)
!3360 = !DILocation(line: 479, column: 18, scope: !3355)
!3361 = !DILocation(line: 479, column: 21, scope: !3355)
!3362 = !DILocation(line: 479, column: 36, scope: !3355)
!3363 = !DILocation(line: 479, column: 40, scope: !3355)
!3364 = !DILocation(line: 479, column: 38, scope: !3355)
!3365 = !DILocation(line: 479, column: 33, scope: !3355)
!3366 = !DILocation(line: 480, column: 24, scope: !3355)
!3367 = !DILocation(line: 480, column: 11, scope: !3355)
!3368 = !DILocation(line: 480, column: 16, scope: !3355)
!3369 = !DILocation(line: 480, column: 28, scope: !3355)
!3370 = !DILocation(line: 480, column: 32, scope: !3355)
!3371 = !DILocation(line: 480, column: 37, scope: !3355)
!3372 = !DILocation(line: 480, column: 49, scope: !3355)
!3373 = !DILocation(line: 480, column: 30, scope: !3355)
!3374 = !DILocation(line: 479, column: 9, scope: !3355)
!3375 = !DILocation(line: 479, column: 6, scope: !3355)
!3376 = !DILocation(line: 479, column: 4, scope: !3355)
!3377 = !DILocation(line: 478, column: 51, scope: !3378)
!3378 = !DILexicalBlockFile(scope: !3355, file: !144, discriminator: 2)
!3379 = !DILocation(line: 478, column: 3, scope: !3378)
!3380 = distinct !{!3380, !3381}
!3381 = !DILocation(line: 478, column: 3, scope: !3341)
!3382 = !DILocation(line: 482, column: 14, scope: !3341)
!3383 = !DILocation(line: 482, column: 33, scope: !3341)
!3384 = !DILocation(line: 482, column: 3, scope: !3341)
!3385 = !DILocation(line: 484, column: 10, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3341, file: !144, line: 484, column: 3)
!3387 = !DILocation(line: 484, column: 19, scope: !3386)
!3388 = !DILocation(line: 484, column: 17, scope: !3386)
!3389 = !DILocation(line: 484, column: 8, scope: !3386)
!3390 = !DILocation(line: 484, column: 28, scope: !3391)
!3391 = !DILexicalBlockFile(scope: !3392, file: !144, discriminator: 1)
!3392 = distinct !DILexicalBlock(scope: !3386, file: !144, line: 484, column: 3)
!3393 = !DILocation(line: 484, column: 32, scope: !3391)
!3394 = !DILocation(line: 484, column: 37, scope: !3391)
!3395 = !DILocation(line: 484, column: 30, scope: !3391)
!3396 = !DILocation(line: 484, column: 3, scope: !3391)
!3397 = !DILocation(line: 485, column: 18, scope: !3392)
!3398 = !DILocation(line: 485, column: 21, scope: !3392)
!3399 = !DILocation(line: 485, column: 36, scope: !3392)
!3400 = !DILocation(line: 485, column: 40, scope: !3392)
!3401 = !DILocation(line: 485, column: 38, scope: !3392)
!3402 = !DILocation(line: 485, column: 33, scope: !3392)
!3403 = !DILocation(line: 486, column: 30, scope: !3392)
!3404 = !DILocation(line: 486, column: 11, scope: !3392)
!3405 = !DILocation(line: 486, column: 16, scope: !3392)
!3406 = !DILocation(line: 486, column: 34, scope: !3392)
!3407 = !DILocation(line: 486, column: 38, scope: !3392)
!3408 = !DILocation(line: 486, column: 43, scope: !3392)
!3409 = !DILocation(line: 486, column: 55, scope: !3392)
!3410 = !DILocation(line: 486, column: 36, scope: !3392)
!3411 = !DILocation(line: 485, column: 9, scope: !3392)
!3412 = !DILocation(line: 485, column: 6, scope: !3392)
!3413 = !DILocation(line: 485, column: 4, scope: !3392)
!3414 = !DILocation(line: 484, column: 51, scope: !3415)
!3415 = !DILexicalBlockFile(scope: !3392, file: !144, discriminator: 2)
!3416 = !DILocation(line: 484, column: 3, scope: !3415)
!3417 = distinct !{!3417, !3418}
!3418 = !DILocation(line: 484, column: 3, scope: !3341)
!3419 = !DILocation(line: 488, column: 14, scope: !3341)
!3420 = !DILocation(line: 488, column: 43, scope: !3341)
!3421 = !DILocation(line: 488, column: 3, scope: !3341)
!3422 = !DILocation(line: 490, column: 9, scope: !3341)
!3423 = !DILocation(line: 490, column: 4, scope: !3341)
!3424 = !DILocation(line: 490, column: 29, scope: !3341)
!3425 = !DILocation(line: 491, column: 2, scope: !3341)
!3426 = !DILocation(line: 493, column: 13, scope: !3277)
!3427 = !DILocation(line: 493, column: 57, scope: !3277)
!3428 = !DILocation(line: 493, column: 62, scope: !3277)
!3429 = !DILocation(line: 493, column: 72, scope: !3277)
!3430 = !DILocation(line: 493, column: 95, scope: !3277)
!3431 = !DILocation(line: 493, column: 100, scope: !3277)
!3432 = !DILocation(line: 493, column: 110, scope: !3277)
!3433 = !DILocation(line: 494, column: 6, scope: !3277)
!3434 = !DILocation(line: 494, column: 11, scope: !3277)
!3435 = !DILocation(line: 494, column: 21, scope: !3277)
!3436 = !DILocation(line: 494, column: 4, scope: !3277)
!3437 = !DILocation(line: 495, column: 4, scope: !3277)
!3438 = !DILocation(line: 495, column: 9, scope: !3277)
!3439 = !DILocation(line: 495, column: 19, scope: !3277)
!3440 = !DILocation(line: 496, column: 4, scope: !3277)
!3441 = !DILocation(line: 496, column: 9, scope: !3277)
!3442 = !DILocation(line: 496, column: 19, scope: !3277)
!3443 = !DILocation(line: 497, column: 4, scope: !3277)
!3444 = !DILocation(line: 497, column: 9, scope: !3277)
!3445 = !DILocation(line: 497, column: 19, scope: !3277)
!3446 = !DILocation(line: 498, column: 6, scope: !3277)
!3447 = !DILocation(line: 498, column: 11, scope: !3277)
!3448 = !DILocation(line: 498, column: 21, scope: !3277)
!3449 = !DILocation(line: 498, column: 4, scope: !3277)
!3450 = !DILocation(line: 493, column: 2, scope: !3277)
!3451 = !DILocation(line: 501, column: 6, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3277, file: !144, line: 501, column: 6)
!3453 = !DILocation(line: 501, column: 11, scope: !3452)
!3454 = !DILocation(line: 501, column: 16, scope: !3452)
!3455 = !DILocation(line: 501, column: 19, scope: !3456)
!3456 = !DILexicalBlockFile(scope: !3452, file: !144, discriminator: 1)
!3457 = !DILocation(line: 501, column: 24, scope: !3456)
!3458 = !DILocation(line: 501, column: 6, scope: !3456)
!3459 = !DILocation(line: 502, column: 14, scope: !3452)
!3460 = !DILocation(line: 502, column: 80, scope: !3452)
!3461 = !DILocation(line: 502, column: 85, scope: !3452)
!3462 = !DILocation(line: 502, column: 95, scope: !3452)
!3463 = !DILocation(line: 503, column: 5, scope: !3452)
!3464 = !DILocation(line: 503, column: 10, scope: !3452)
!3465 = !DILocation(line: 503, column: 20, scope: !3452)
!3466 = !DILocation(line: 503, column: 30, scope: !3452)
!3467 = !DILocation(line: 503, column: 53, scope: !3452)
!3468 = !DILocation(line: 503, column: 58, scope: !3452)
!3469 = !DILocation(line: 503, column: 68, scope: !3452)
!3470 = !DILocation(line: 503, column: 78, scope: !3452)
!3471 = !DILocation(line: 502, column: 3, scope: !3452)
!3472 = !DILocation(line: 505, column: 13, scope: !3277)
!3473 = !DILocation(line: 505, column: 32, scope: !3277)
!3474 = !DILocation(line: 505, column: 37, scope: !3277)
!3475 = !DILocation(line: 505, column: 2, scope: !3277)
!3476 = !DILocation(line: 507, column: 10, scope: !3277)
!3477 = !DILocation(line: 507, column: 15, scope: !3277)
!3478 = !DILocation(line: 507, column: 2, scope: !3277)
!3479 = !DILocation(line: 509, column: 14, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3277, file: !144, line: 507, column: 24)
!3481 = !DILocation(line: 509, column: 3, scope: !3480)
!3482 = !DILocation(line: 510, column: 3, scope: !3480)
!3483 = !DILocation(line: 512, column: 14, scope: !3480)
!3484 = !DILocation(line: 512, column: 3, scope: !3480)
!3485 = !DILocation(line: 513, column: 3, scope: !3480)
!3486 = !DILocation(line: 515, column: 3, scope: !3480)
!3487 = !DILocation(line: 516, column: 3, scope: !3480)
!3488 = !DILocation(line: 518, column: 14, scope: !3480)
!3489 = !DILocation(line: 518, column: 47, scope: !3480)
!3490 = !DILocation(line: 518, column: 52, scope: !3480)
!3491 = !DILocation(line: 518, column: 3, scope: !3480)
!3492 = !DILocation(line: 519, column: 3, scope: !3480)
!3493 = !DILocation(line: 522, column: 7, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3277, file: !144, line: 522, column: 6)
!3495 = !DILocation(line: 522, column: 12, scope: !3494)
!3496 = !DILocation(line: 522, column: 6, scope: !3277)
!3497 = !DILocation(line: 523, column: 14, scope: !3494)
!3498 = !DILocation(line: 523, column: 3, scope: !3494)
!3499 = !DILocation(line: 524, column: 13, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3494, file: !144, line: 524, column: 11)
!3501 = !DILocation(line: 524, column: 19, scope: !3500)
!3502 = !DILocation(line: 524, column: 27, scope: !3500)
!3503 = !DILocation(line: 524, column: 11, scope: !3494)
!3504 = !DILocation(line: 525, column: 14, scope: !3500)
!3505 = !DILocation(line: 525, column: 3, scope: !3500)
!3506 = !DILocation(line: 526, column: 13, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3500, file: !144, line: 526, column: 11)
!3508 = !DILocation(line: 526, column: 19, scope: !3507)
!3509 = !DILocation(line: 526, column: 27, scope: !3507)
!3510 = !DILocation(line: 526, column: 11, scope: !3500)
!3511 = !DILocation(line: 527, column: 14, scope: !3507)
!3512 = !DILocation(line: 527, column: 3, scope: !3507)
!3513 = !DILocation(line: 529, column: 14, scope: !3507)
!3514 = !DILocation(line: 529, column: 3, scope: !3507)
!3515 = !DILocation(line: 531, column: 6, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3277, file: !144, line: 531, column: 6)
!3517 = !DILocation(line: 531, column: 11, scope: !3516)
!3518 = !DILocation(line: 531, column: 6, scope: !3277)
!3519 = !DILocation(line: 532, column: 14, scope: !3516)
!3520 = !DILocation(line: 532, column: 3, scope: !3516)
!3521 = !DILocation(line: 533, column: 6, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3277, file: !144, line: 533, column: 6)
!3523 = !DILocation(line: 533, column: 11, scope: !3522)
!3524 = !DILocation(line: 533, column: 6, scope: !3277)
!3525 = !DILocation(line: 534, column: 14, scope: !3522)
!3526 = !DILocation(line: 534, column: 40, scope: !3522)
!3527 = !DILocation(line: 534, column: 45, scope: !3522)
!3528 = !DILocation(line: 534, column: 61, scope: !3522)
!3529 = !DILocation(line: 534, column: 3, scope: !3522)
!3530 = !DILocation(line: 537, column: 6, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3277, file: !144, line: 537, column: 6)
!3532 = !DILocation(line: 537, column: 11, scope: !3531)
!3533 = !DILocation(line: 537, column: 6, scope: !3277)
!3534 = !DILocation(line: 538, column: 7, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !144, line: 538, column: 7)
!3536 = distinct !DILexicalBlock(scope: !3531, file: !144, line: 537, column: 23)
!3537 = !DILocation(line: 538, column: 12, scope: !3535)
!3538 = !DILocation(line: 538, column: 24, scope: !3535)
!3539 = !DILocation(line: 538, column: 7, scope: !3536)
!3540 = !DILocation(line: 539, column: 15, scope: !3535)
!3541 = !DILocation(line: 540, column: 9, scope: !3535)
!3542 = !DILocation(line: 540, column: 14, scope: !3535)
!3543 = !DILocation(line: 540, column: 26, scope: !3535)
!3544 = !DILocation(line: 540, column: 40, scope: !3535)
!3545 = !DILocation(line: 540, column: 47, scope: !3535)
!3546 = !DILocation(line: 541, column: 10, scope: !3535)
!3547 = !DILocation(line: 541, column: 15, scope: !3535)
!3548 = !DILocation(line: 541, column: 27, scope: !3535)
!3549 = !DILocation(line: 541, column: 41, scope: !3535)
!3550 = !DILocation(line: 541, column: 49, scope: !3535)
!3551 = !DILocation(line: 540, column: 53, scope: !3535)
!3552 = !DILocation(line: 539, column: 4, scope: !3535)
!3553 = !DILocation(line: 543, column: 7, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3536, file: !144, line: 543, column: 7)
!3555 = !DILocation(line: 543, column: 12, scope: !3554)
!3556 = !DILocation(line: 543, column: 24, scope: !3554)
!3557 = !DILocation(line: 543, column: 7, scope: !3536)
!3558 = !DILocation(line: 544, column: 15, scope: !3554)
!3559 = !DILocation(line: 545, column: 9, scope: !3554)
!3560 = !DILocation(line: 545, column: 14, scope: !3554)
!3561 = !DILocation(line: 545, column: 26, scope: !3554)
!3562 = !DILocation(line: 545, column: 39, scope: !3554)
!3563 = !DILocation(line: 545, column: 46, scope: !3554)
!3564 = !DILocation(line: 546, column: 10, scope: !3554)
!3565 = !DILocation(line: 546, column: 15, scope: !3554)
!3566 = !DILocation(line: 546, column: 27, scope: !3554)
!3567 = !DILocation(line: 546, column: 40, scope: !3554)
!3568 = !DILocation(line: 546, column: 48, scope: !3554)
!3569 = !DILocation(line: 545, column: 52, scope: !3554)
!3570 = !DILocation(line: 544, column: 4, scope: !3554)
!3571 = !DILocation(line: 547, column: 7, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3536, file: !144, line: 547, column: 7)
!3573 = !DILocation(line: 547, column: 12, scope: !3572)
!3574 = !DILocation(line: 547, column: 24, scope: !3572)
!3575 = !DILocation(line: 547, column: 7, scope: !3536)
!3576 = !DILocation(line: 548, column: 15, scope: !3572)
!3577 = !DILocation(line: 548, column: 61, scope: !3572)
!3578 = !DILocation(line: 548, column: 66, scope: !3572)
!3579 = !DILocation(line: 548, column: 78, scope: !3572)
!3580 = !DILocation(line: 548, column: 4, scope: !3572)
!3581 = !DILocation(line: 549, column: 2, scope: !3536)
!3582 = !DILocation(line: 550, column: 13, scope: !3277)
!3583 = !DILocation(line: 550, column: 55, scope: !3277)
!3584 = !DILocation(line: 550, column: 60, scope: !3277)
!3585 = !DILocation(line: 550, column: 75, scope: !3277)
!3586 = !DILocation(line: 550, column: 52, scope: !3277)
!3587 = !DILocation(line: 550, column: 57, scope: !3311)
!3588 = !DILocation(line: 550, column: 62, scope: !3311)
!3589 = !DILocation(line: 550, column: 78, scope: !3311)
!3590 = !DILocation(line: 550, column: 83, scope: !3311)
!3591 = !DILocation(line: 550, column: 52, scope: !3311)
!3592 = !DILocation(line: 550, column: 56, scope: !3317)
!3593 = !DILocation(line: 550, column: 61, scope: !3317)
!3594 = !DILocation(line: 550, column: 77, scope: !3317)
!3595 = !DILocation(line: 550, column: 82, scope: !3317)
!3596 = !DILocation(line: 550, column: 52, scope: !3317)
!3597 = !DILocation(line: 550, column: 59, scope: !3319)
!3598 = !DILocation(line: 550, column: 64, scope: !3319)
!3599 = !DILocation(line: 550, column: 80, scope: !3319)
!3600 = !DILocation(line: 550, column: 52, scope: !3319)
!3601 = !DILocation(line: 550, column: 52, scope: !3602)
!3602 = !DILexicalBlockFile(scope: !3277, file: !144, discriminator: 4)
!3603 = !DILocation(line: 550, column: 52, scope: !3604)
!3604 = !DILexicalBlockFile(scope: !3277, file: !144, discriminator: 5)
!3605 = !DILocation(line: 550, column: 2, scope: !3604)
!3606 = !DILocation(line: 551, column: 9, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3277, file: !144, line: 551, column: 6)
!3608 = !DILocation(line: 551, column: 14, scope: !3607)
!3609 = !DILocation(line: 551, column: 29, scope: !3607)
!3610 = !DILocation(line: 551, column: 6, scope: !3607)
!3611 = !DILocation(line: 551, column: 11, scope: !3612)
!3612 = !DILexicalBlockFile(scope: !3607, file: !144, discriminator: 1)
!3613 = !DILocation(line: 551, column: 16, scope: !3612)
!3614 = !DILocation(line: 551, column: 32, scope: !3612)
!3615 = !DILocation(line: 551, column: 37, scope: !3612)
!3616 = !DILocation(line: 551, column: 6, scope: !3612)
!3617 = !DILocation(line: 551, column: 10, scope: !3618)
!3618 = !DILexicalBlockFile(scope: !3607, file: !144, discriminator: 2)
!3619 = !DILocation(line: 551, column: 15, scope: !3618)
!3620 = !DILocation(line: 551, column: 31, scope: !3618)
!3621 = !DILocation(line: 551, column: 36, scope: !3618)
!3622 = !DILocation(line: 551, column: 6, scope: !3618)
!3623 = !DILocation(line: 552, column: 13, scope: !3607)
!3624 = !DILocation(line: 552, column: 17, scope: !3607)
!3625 = !DILocation(line: 552, column: 22, scope: !3607)
!3626 = !DILocation(line: 552, column: 3, scope: !3607)
!3627 = !DILocation(line: 553, column: 1, scope: !3277)
